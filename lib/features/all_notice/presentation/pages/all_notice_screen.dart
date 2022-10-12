import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:fawateerna_app/features/all_notice/presentation/widgets/build_item_all_notice_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/util/functions/navigate_and_finish.dart';

import '../../../home/presentation/pages/home_screen.dart';

class AllNoticeScreen extends StatelessWidget {
  const AllNoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            navigateAndFinish(context, const HomeScreen());
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: defaultColor,
          ),
        ),
        title: const Text(
          'All Notice',
          style: TextStyle(
            fontSize:22.0,
            color: defaultColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
          const BuildItemAllNoticeWidget(),
          separatorBuilder: (context, index) =>
          const SizedBox(height: 10.0,),
          itemCount: 10,
        ),
      ),
    );
  }
}
