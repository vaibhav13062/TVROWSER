import 'package:flutter/material.dart';
import 'package:tvrowser/Constants/AppColors.dart';

class TopBarBackButton extends StatelessWidget {
  VoidCallback onBackPress;
  bool isEnabled;

  TopBarBackButton(
      {Key? key, required this.onBackPress, required this.isEnabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        child: Center(
          child: Icon(
            Icons.arrow_back_rounded,
            color: AppColors.opositeMainColor,
            size: 40,
          ),
        ),
        onTap: onBackPress,
      ),
    );
  }
}

class TopBarForwardButton extends StatelessWidget {
  VoidCallback onForwardPress;
  bool isEnabled;

  TopBarForwardButton(
      {Key? key, required this.onForwardPress, required this.isEnabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        child: Center(
          child: Icon(
            Icons.arrow_forward_rounded,
            size: 40,
            color: AppColors.opositeMainColor,
          ),
        ),
        onTap: onForwardPress,
      ),
    );
  }
}

class TopBarRelodeButton extends StatelessWidget {
  VoidCallback onRelodePress;
  bool isEnabled;

  TopBarRelodeButton(
      {Key? key, required this.onRelodePress, required this.isEnabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        child: Center(
          child: Icon(
            Icons.refresh_rounded,
            size: 40,
            color: AppColors.opositeMainColor,
          ),
        ),
        onTap: onRelodePress,
      ),
    );
  }
}

class TopBarHomeButton extends StatelessWidget {
  VoidCallback onHomePress;
  bool isEnabled;

  TopBarHomeButton(
      {Key? key, required this.onHomePress, required this.isEnabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        child: Center(
          child: Icon(
            Icons.home_outlined,
            size: 40,
            color: AppColors.opositeMainColor,
          ),
        ),
        onTap: onHomePress,
      ),
    );
  }
}
