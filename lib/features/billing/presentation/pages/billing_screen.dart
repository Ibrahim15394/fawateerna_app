import 'package:fawateerna_app/features/billing/presentation/widgets/build_Item_billing_Widget.dart';
import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
          const BuildItemBillingWidget(),
          separatorBuilder: (context, index) =>
          const SizedBox(height: 10.0,),
          itemCount: 10,
      ),
    );
  }
}
