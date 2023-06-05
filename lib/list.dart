import 'package:flutter/material.dart';
import 'package:list_ui/constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListTileUI extends StatefulWidget {
  final int index;
  const ListTileUI({super.key, required this.index});

  @override
  State<ListTileUI> createState() => _ListTileUIState();
}

class _ListTileUIState extends State<ListTileUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 2.5.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.09),
            blurRadius: 26,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/13/12/22/woman-1820868_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Constants.listData[widget.index]["title"],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      Constants.listData[widget.index]["time"],
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightGreen,
                ),
                child: const Center(
                  child: Icon(
                    Icons.play_arrow_sharp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          // Positioned(
          //   top: -6.w,
          //   left: 20.w,
          //   child: Container(
          //     width: 50.w,
          //     height: 30,
          //     decoration: BoxDecoration(
          //       color: Colors.orange,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: Center(
          //       child: Text(
          //         "Scholarship",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 15.sp,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
