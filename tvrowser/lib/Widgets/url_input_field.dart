import 'package:flutter/material.dart';
import 'package:tvrowser/Constants/AppColors.dart';
import 'package:tvrowser/MainFucntions/main_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

class URLInputField extends StatelessWidget {
  String currentUrl;
  WebViewController webViewController;
  final TextEditingController _textEditingController = TextEditingController();

  URLInputField(
      {Key? key, required this.currentUrl, required this.webViewController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    _textEditingController.text = currentUrl;

    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColors.secondaryColor),
        child: TextField(
      
          onSubmitted: (value) {
            webViewController.loadUrl(MainUtils().checkUrl(value));
          },
          controller: _textEditingController,
          maxLines: 1,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: AppColors.textColorDark,
              fontSize: 23,
              overflow: TextOverflow.ellipsis),
          decoration:  InputDecoration(
              hintMaxLines: 1,
              hintStyle: TextStyle(color: AppColors.textColorLight ),
              hintText: "Enter a URL or Search Google",
            prefixIcon:  Icon(Icons.lock_rounded,color: AppColors.opositeSecondaryColor,),
              disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.transparent)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.blue)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}
