import 'package:dash_and_tag_web_site/Pages/contact_us_page/component/desktop/text_form_fild.dart';
import 'package:dash_and_tag_web_site/Universal_Widgets/custom_text.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageSubmitForm extends StatelessWidget {
  MessageSubmitForm({super.key});
  final MainController controller = Get.find<MainController>();
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: ColorManager.webBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey1,
          child: Column(
            children: [
              TextFormFildWidget(
                hintText: "Enter your name",
                labelText: "Name",
                controller: controller.nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormFildWidget(
                  hintText: "Enter your email",
                  labelText: "Email",
                  controller: controller.emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  }),
              const SizedBox(height: 20),
              TextFormFildWidget(
                hintText: "Enter your subject",
                labelText: "Subject",
                controller: controller.subjectController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a subject';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormFildWidget(
                hintText: "Enter your message",
                labelText: "Message",
                controller: controller.messageController,
                maxLine: 10,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  if (formKey1.currentState!.validate()) {
                    Get.snackbar(
                      "Message Sent",
                      "Your message has been sent successfully",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: ColorManager.blueColor,
                      colorText: ColorManager.whiteColor,
                    );
                  }
                },
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
