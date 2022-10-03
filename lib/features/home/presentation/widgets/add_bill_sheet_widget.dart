import 'package:fawateerna_app/core/util/functions/navigate_to.dart';
import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:fawateerna_app/features/create_bill/presentation/pages/create_bill_screen.dart';
import 'package:flutter/material.dart';

class AddBillSheetWidget extends StatelessWidget {
  const AddBillSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        navigateTo(context, const CreateBillScreen());
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: defaultColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.add,
                  size: 30,
                  color: Color(0xFFF2F2F2),
                ),
                Icon(
                  Icons.money,
                  size: 30,
                  color: Color(0xFFF2F2F2),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'add bill',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xFFF2F2F2)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
