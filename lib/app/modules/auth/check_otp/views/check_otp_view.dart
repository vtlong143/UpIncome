import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:up_income/app/themes/colors.dart';
import 'package:up_income/app/utils/locale.dart';

import '../controllers/check_otp_controller.dart';

class CheckOtpView extends GetView<CheckOtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Text(
                  LocaleKeys.general_enterOTP.tr,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 64,
                    width: 40,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          controller.otp[0] = value;
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 40,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          controller.otp[1] = value;
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 40,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          controller.otp[2] = value;
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 40,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          controller.otp[3] = value;
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 40,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          controller.otp[4] = value;
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 40,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          controller.otp[5] = value;
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: colorBlue),
                        ),
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
              Obx(
                () => controller.wrongOTP.value
                    ? Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          LocaleKeys.general_wrongOTP.tr,
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      )
                    : Container(),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.general_notreceiveOTP.tr,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.resendOTP(controller.phoneNumber.value);
                    },
                    child: Text(
                      LocaleKeys.general_resendOTP.tr,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.confirmOTP(int.parse(controller.otp.join('')));
                  },
                  child: Text(
                    LocaleKeys.general_confirm.tr,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
