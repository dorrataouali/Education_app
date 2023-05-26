
import 'package:school_app/Screens/option_pages/FadeAnimation.dart';
import 'package:school_app/Screens/option_pages/service.dart';
import 'package:school_app/Screens/option_pages/cleaning.dart';
import 'package:flutter/material.dart';

class SelectService extends StatefulWidget {
  const SelectService({ Key? key }) : super(key: key);

  @override
  _SelectServiceState createState() => _SelectServiceState();
}

class _SelectServiceState extends State<SelectService> {
  List<Service> services = [
    Service('Coding', 'https://img.icons8.com/wired/64/null/code.png'),

    Service('Language', 'https://img.icons8.com/cute-clipart/64/null/language.png'),
    Service('Maths', 'https://img.icons8.com/clouds/100/null/calculator.png'),
    Service('Physics', 'https://img.icons8.com/fluency/48/null/student-center.png'),
    Service('Data Science', 'https://img.icons8.com/dusk/64/null/data-backup.png'),
    Service('Countability', 'https://img.icons8.com/arcade/64/null/money-bag-euro.png'),
    Service('Chemist', 'https://img.icons8.com/color/48/null/chemical-test.png'),
    Service('Design', 'https://img.icons8.com/3d-fluency/94/null/design.png'),
   ];

  int selectedService = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: selectedService >= 0 ? FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CleaningPage(),
              ),
            );
          },
          child: Icon(Icons.arrow_forward_ios, size: 20,),
          backgroundColor: Colors.blue,
        ) : null,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                  child: FadeAnimation(1.2, Padding(
                    padding: EdgeInsets.only(top: 120.0, right: 20.0, left: 20.0),
                    child: Text(
                      'Which course \ndo you need?',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ))
            ];
          },
          body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 20.0,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: services.length,
                        itemBuilder: (BuildContext context, int index) {
                          return FadeAnimation((1.0 + index) / 4, serviceContainer(services[index].imageURL, services[index].name, index));
                        }
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedService == index)
            selectedService = -1;
          else
            selectedService = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedService == index ? Colors.blue.shade50 : Colors.grey.shade100,
          border: Border.all(
            color: selectedService == index ? Colors.blue : Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(image, height: 80),
              SizedBox(height: 20,),
              Text(name, style: TextStyle(fontSize: 20),)
            ]
        ),
      ),
    );
  }
}