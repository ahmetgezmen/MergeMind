import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/api/api_key_services.dart';
import 'package:chatgptapp/middleware/splash_screen.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';

class EnterApiKey extends StatelessWidget {
  const EnterApiKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController apiKeyController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(BaseConstant.enterApiKey),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(BaseConstant.enterApiKey),
          const Divider(),
          TextField(
            controller: apiKeyController,
            decoration: InputDecoration(
              hintText: BaseConstant.enterApiKey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext dialogContext) {
                  ApiKeyServices.testOpenAIKey(apiKeyController.text).then((bool value) async {
                    if(value){
                      await ApiKeyServices.setApiKey(apiKeyController.text);
                      if(context.mounted){
                        SplashScreen.go(context);
                      }
                    }else {
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext dialogContext2) {
                          Future.delayed(Durations.long.duration, () {
                            SplashScreen.go(context);
                          },);
                          return const AlertDialog(
                            title: Text(BaseConstant.testFaild),
                          );
                        },
                      );
                    }

                  });
                  return const AlertDialog(
                    title:  Text(BaseConstant.testing),
                    content: CircularProgressIndicator(),
                  );
                },
              );
            },
            child: const Text(BaseConstant.send),
          ).p8T.wInf
        ],
      ).p8H,
    );
  }
}
