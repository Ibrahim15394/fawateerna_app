import 'package:fawateerna_app/features/billing/presentation/widgets/icon_total_widget.dart';
import 'package:fawateerna_app/features/billing/presentation/widgets/name_number_widget.dart';
import 'package:flutter/material.dart';

class BuildItemBillingWidget extends StatelessWidget {
  const BuildItemBillingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     height: 120.0,
     padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color(0xFFF5F5F5),
      ),
      child: Row(
        children: const [
          NameNumberWidget(),
          IconTotalWidget(),
        ],
      ),
    );
  }
}
