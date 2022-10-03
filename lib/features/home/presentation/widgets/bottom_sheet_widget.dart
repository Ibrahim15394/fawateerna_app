import 'package:fawateerna_app/features/home/presentation/widgets/add_bill_sheet_widget.dart';
import 'package:fawateerna_app/features/home/presentation/widgets/add_client_sheet_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AddBillSheetWidget(),
          const SizedBox(
            height: 10.0,
          ),
          AddClientSheetWidget(),
        ],
      ),
    );
  }
}
