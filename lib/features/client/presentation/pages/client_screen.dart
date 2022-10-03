import 'package:fawateerna_app/features/client/presentation/widgets/build_item_client_widget.dart';
import 'package:flutter/material.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
        const BuildItemClientWidget(),
        separatorBuilder: (context, index) =>
        const SizedBox(height: 10.0,),
        itemCount: 10,
      ),
    );
  }
}
