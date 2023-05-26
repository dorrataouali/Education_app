/*import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class GenderButton extends StatefulWidget {
  final String label;
  final String imagePath;

  const GenderButton({
    Key? key,
    required this.label,
    required this.imagePath,
  }) : super(key: key);

  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isSelected ? kPrimaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kPrimaryColor),
        ),
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        child: Row(
          children: [
            SizedBox(width: defaultPadding),
            SvgPicture.asset(
              widget.imagePath,
              height: 24,
              color: _isSelected ? Colors.white : kPrimaryColor,
            ),
            SizedBox(width: defaultPadding),
            Text(
              widget.label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _isSelected ? Colors.white : kPrimaryColor,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
*/