import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvrowser/Constants/AppColors.dart';
import 'package:tvrowser/MainFucntions/main_utils.dart';
import 'package:tvrowser/Providers/url_display_provider.dart';
import 'package:tvrowser/Widgets/top_bar_buttons.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../url_input_field.dart';

class WebViewWindow extends StatefulWidget {
  final int index;

  const WebViewWindow({Key? key, required this.index}) : super(key: key);

  @override
  State<WebViewWindow> createState() => _WebViewWindowState();
}

class _WebViewWindowState extends State<WebViewWindow> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        TopBar(
          controller: _controller,
          index: widget.index,
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
            child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          backgroundColor: AppColors.mainColor,
          onPageStarted: (url) {
            Provider.of<URLDisplayProvider>(context, listen: false)
                .setUrl(widget.index, url);
            print("URL ->>>> " + url);
          },
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          initialUrl: Provider.of<URLDisplayProvider>(context, listen: false)
              .initailUrl,
        ))
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  Completer<WebViewController> controller;
  int index;
  TopBar({Key? key, required this.controller, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder(
        future: controller.future,
        builder:
            (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopBarBackButton(
                  onBackPress: () {
                    snapshot.data!.goBack();
                  },
                  isEnabled: true),
              TopBarForwardButton(
                  onForwardPress: () {
                    snapshot.data!.goForward();
                  },
                  isEnabled: true),
              TopBarHomeButton(
                  onHomePress: () {
                
                    snapshot.data!.loadUrl("https://www.google.com");
                  },
                  isEnabled: true),
              TopBarRelodeButton(
                  onRelodePress: () {
                    snapshot.data!.reload();
                  },
                  isEnabled: true),
              Expanded(
                  child: Container(
                child: URLInputField(
                  currentUrl: Provider.of<URLDisplayProvider>(context)
                              .displayUrl[index] ==
                          null
                      ? ""
                      : Provider.of<URLDisplayProvider>(context)
                          .displayUrl[index]!,
                  webViewController: snapshot.data!,
                ),
              ))
            ],
          );
        },
      ),
    );
  }
}
