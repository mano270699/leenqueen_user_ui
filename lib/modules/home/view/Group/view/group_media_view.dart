import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/widgets/custom_text.dart';

class GroupMediaView extends StatelessWidget {
  const GroupMediaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.BACK_GROUND,
      appBar: AppBar(
        backgroundColor: ColorsUtils.WHITE,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'Media',
          fontSize: 20.sp,
          fontColor: ColorsUtils.BLACK,
          customFontWeight: FontWeight.w500,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.keyboard_backspace,
            color: ColorsUtils.BLACK,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.only(
                  left: 18.w,
                  right: 18.w,
                  bottom: 20.h,
                ),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 105,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1),
                itemCount: 20,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: ColorsUtils.WHITE,
                        borderRadius: BorderRadius.circular(5)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkdxkA9vAlKiSj-KGccqfJF5mYs0H3oae8bg&usqp=CAU',
                          fit: BoxFit.cover),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
