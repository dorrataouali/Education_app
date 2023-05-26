import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../profile_photo/profile_photo.dart';
import '../../settings/account.dart';
import '../../login/login_screen.dart';
import 'PasswordFormField.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override

  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
//  final _formKey = GlobalKey<FormState>();
  late TextEditingController _birthdayController;
  Color _maleButtonColor = Colors.white;
  int _maleTapCount = 0;
  Color _femaleButtonColor = Colors.white;
  int _femaleTapCount = 0;
  DateTime? _selectedDate;
// here i have intialized my birthday controller void
  void initState() {
    super.initState();
    _birthdayController = TextEditingController(); // initialize the controller
  }
  //here i initilized the counted of the male gender counter
  void _onMaleButtonTap() {
    setState(() {
      _maleTapCount++;
      if (_maleTapCount == 1) {
        _maleButtonColor = Colors.blue;
      } else if (_maleTapCount == 2) {
        _maleButtonColor = Colors.white;
        _maleTapCount = 0;
      }
    });
  }
//same here for the female gender
  void _onFemaleButtonTap() {
    setState(() {
      _femaleTapCount++;
      if (_femaleTapCount == 1) {
        _femaleButtonColor = Colors.blue;
      } else if (_femaleTapCount == 2) {
        _femaleButtonColor = Colors.white;
        _femaleTapCount = 0;
      }
    });
  }
  void _showDatePicker() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
  @override

  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //name
          TextFormField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (name) {},
            decoration: InputDecoration(
              hintText: "Your name",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Your Last Name",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
          ),
          //email
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.email),
              ),
            ),
          ),
          //gender title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Align(
              alignment: Alignment.centerLeft,
            child: Text(
              "Gender".toUpperCase(),
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          ),
          //gender buttons
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 30,
                      color: Color(0xFF666666).withOpacity(0.2),
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: _onMaleButtonTap,
                  onDoubleTap: _onMaleButtonTap,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/male (1).svg",
                      width: 42,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _maleButtonColor,
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: defaultPadding / 2),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 30,
                      color: Color(0xFF666666).withOpacity(0.2),
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: _onFemaleButtonTap,
                  onDoubleTap: _onFemaleButtonTap,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/femenine (1).svg",
                      width: 42,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: _femaleButtonColor,
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
            const SizedBox(height: defaultPadding *2),
           //birthday
          TextFormField(
            keyboardType: TextInputType.datetime,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Your birthday",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.cake),
              ),
            ),
            onTap: () async {
              // Show a date picker when the user taps on the birthday text field
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );

              if (picked != null) {
                // Set the selected date as the value of the text field
                setState(() {
                  _birthdayController.text = DateFormat('yyyy-MM-dd').format(picked!);
                });
              }
            },
            controller: _birthdayController,
          ),


          const SizedBox(height: defaultPadding ),
          PasswordFormField(
            hintText: "Your password",
            icon: Icons.lock,
          ),
          const SizedBox(height: defaultPadding ),

          PasswordFormField(
            hintText: "Validate password",
            icon: Icons.lock,
          ),

          const SizedBox(height: defaultPadding *2),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhotoPage();
                  },
                ),
              );},
              child: Text("Sign Up".toUpperCase()),
            ),
            const SizedBox(height: defaultPadding),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AccountPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
    );
  }
}