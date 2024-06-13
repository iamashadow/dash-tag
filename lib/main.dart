
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pages/contact_us_page/contact_us_root.dart';
import 'Utils/routes.dart';
import 'controller/main_controller.dart';
import 'utils/all_colors/all_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // builder: (context, child) => ResponsiveBreakpoints.builder(
      //   child: child!,
      //   breakpoints: [
      //     const Breakpoint(start: 0, end: 450, name: MOBILE),
      //     const Breakpoint(start: 451, end: 900, name: TABLET),
      //     const Breakpoint(start: 901, end: 1920, name: DESKTOP),
      //     const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      //   ],
      // ),
      debugShowCheckedModeBanner: false,
      title: 'Dash&Tag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorManager.webBackgroundColor,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
        },
      ),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => MainController());
      }),
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.home,

      // home: ContactUsRoot(),

    );
  }
}


