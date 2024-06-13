import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Utils/All_Colors/all_colors.dart';
import 'package:get/get.dart';
import '../../controller_class.dart';
import '../desktop/text_form_fild.dart';

class MessageSubmitFormMobile extends StatelessWidget {
  MessageSubmitFormMobile({super.key});


  final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: ColorManager.webBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormFildWidget(
                hintText: "Enter your name",
                labelText: "Name",
                controller: controller.nameController,
                validator: controller.validateName,
              ),
              const SizedBox(height: 20),

              TextFormFildWidget(
                hintText: "Enter your email",
                labelText: "Email",
                controller: controller.emailController,
                validator: controller.validateEmail,
              ),
              const SizedBox(height: 20),

              TextFormFildWidget(
                hintText: "Enter your subject",
                labelText: "Subject",
                controller: controller.subjectController,
                validator: controller.validateSubject,
              ),
              const SizedBox(height: 20),

              TextFormFildWidget(
                hintText: "Enter your message",
                labelText: "Message",
                controller: controller.messageController,
                maxLine: 10,
                validator: controller.validateMessage,
              ),
              const SizedBox(height: 20),

              InkWell(
                onTap: controller.submitForm,
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: ColorManager.blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      title: "Submit",
                      fontWeight: FontWeight.bold,
                      fontColor: ColorManager.whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
