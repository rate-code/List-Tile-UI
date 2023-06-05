import 'package:flutter/material.dart';
import 'package:list_ui/constants.dart';
import 'package:list_ui/list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Recommended",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.lightGreen,
          ),
          body: SafeArea(
            child: SizedBox(
              height: 100.h,
              width: 100.w,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: Constants.listData.length,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            // SizedBox(height: 2.5.h),
                            ListTileUI(index: index),
                            SizedBox(height: 3.h),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
