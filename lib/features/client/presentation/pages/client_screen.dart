import 'package:fawateerna_app/core/util/cubit/cubit.dart';
import 'package:fawateerna_app/features/client/presentation/widgets/build_item_client_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/cubit/states.dart';

class ClientScreen extends StatelessWidget {


  ClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state){
        if( state is AppDatabaseCreated)
        {
          Navigator.of(context).pop();
        }
      },
      builder:  (context, state){
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
            BuildItemClientWidget(),
            separatorBuilder: (context, index) =>
            const SizedBox(height: 10.0,),
            itemCount: 10,
          ),
        );
      },
    );
  }
}
