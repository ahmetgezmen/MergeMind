import 'package:chatgptapp/constant%20/constant.dart';
import 'package:chatgptapp/feature/dalee/widgets/custom_textfield_widget.dart';
import 'package:chatgptapp/feature/dalee/widgets/loading_widget.dart';
import 'package:chatgptapp/feature/dalee/widgets/row_half_seperate.dart';
import 'package:chatgptapp/feature/widgets/dropdown_button_widget.dart';
import 'package:chatgptapp/utils/helper/hepers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DHomePage extends StatefulWidget {
  static void go(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const DHomePage(),
      ),
      (route) => false,
    );
  }

  const DHomePage({Key? key}) : super(key: key);
  @override
  State<DHomePage> createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {
  bool isLoading = false;
  bool isComplexMode = false;
  int n = 2;
  int? height;
  int? width;
  final fomrKey = GlobalKey<FormState>();
  changeN(int? value) {
    n = value ?? n;
  }

  sendRequest() {
    setState(() {
      isLoading = true;
    });
    // todo actions here
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(DaleeHomePageConstant.title),
        actions: [if (isLoading) const LoadingWidget()],
      ),
      body: Form(
        key: fomrKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomTextFormFieldForDalee(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return BaseConstant.validatePromt;
                }else if(value.length<15 || value.length>500){
                  return BaseConstant.validatePromt;
                }
                return null;
              },
              text: DaleeHomePageConstant.enterPrompt,
              onPressed: (value) {
                if (fomrKey.currentState!.validate()) {
                  sendRequest();
                  print("ok");
                }
              },
              controller: TextEditingController(),
            ),
            ListTile(
              title: const Text(DaleeHomePageConstant.complexMode),
              trailing: Switch(
                value: isComplexMode,
                onChanged: (value) {
                  setState(() {
                    isComplexMode = value;
                  });
                },
              ),
            ),
            if (isComplexMode)
              Column(
                children: [
                  const Divider(),
                  RowHalfSeperate(
                      isCenter: true,
                      left: const Text(DaleeHomePageConstant.picturesNumber),
                      right: DropdownButtonWidget<int>(
                        value: n,
                        onChanged: (int? value) {
                          changeN(value);
                        },
                        items: [
                          for (int i = 1; i <= 10; i++)
                            DropdownMenuItem(
                              value: i,
                              child: Text(i.toString()),
                            )
                        ],
                      )).p8H,
                  const Divider(),
                  RowHalfSeperate(
                    isCenter: true,
                    left: const Text(DaleeHomePageConstant.size),
                    right: RowHalfSeperate(
                      left: CustomTextFormFieldForDalee(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return BaseConstant.enterWidth;
                          }else if(int.parse(value)>5000){
                            return BaseConstant.highValue;
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        text: BaseConstant.width,
                        isSendButtonVisible: false,
                        controller: TextEditingController(),
                        onPressed: (value) {},
                        onChanged: (value) {
                          width = int.tryParse(value);
                        },
                      ),
                      right: CustomTextFormFieldForDalee(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return BaseConstant.enterHeight;
                          }else if(int.parse(value)>5000){
                            return BaseConstant.highValue;
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        text: BaseConstant.height,
                        isSendButtonVisible: false,
                        controller: TextEditingController(),
                        onChanged: (value) {
                          height = int.tryParse(value);
                        },
                        onPressed: (value) {},
                      ),
                    ),
                  ).p8H,
                  const Divider(),
                ],
              )
          ],
        ),
      ),
    );
  }
}
