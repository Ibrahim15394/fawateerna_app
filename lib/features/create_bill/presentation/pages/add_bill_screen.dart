import 'package:fawateerna_app/core/util/cubit/cubit.dart';
import 'package:fawateerna_app/core/util/cubit/states.dart';
import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:fawateerna_app/features/create_bill/presentation/pages/create_bill_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/util/functions/navigate_and_finish.dart';
import '../../../../core/util/widgets/default_form_field.dart';
import '../../../../core/util/widgets/my_button.dart';

class AddBillScreen extends StatelessWidget {
  AddBillScreen({Key? key, this.valueChoose}) : super(key: key);

  final String? valueChoose ;

   final List listItem = ['ahmed','ali','salah','ibrahim','mostafa','younes'];
   var quantityController = TextEditingController();
   var priceController = TextEditingController();
   var saleController = TextEditingController();
   var taxController = TextEditingController();
   var noteController = TextEditingController();

   var formKey = GlobalKey<FormState>();

   @override
   Widget build(BuildContext context) {
     return BlocConsumer<AppCubit, AppStates>(
       listener: (context, state){},
       builder: (context, state){
         return Scaffold(
           appBar: AppBar(
             backgroundColor: Colors.white,
             elevation: 0.0,
             leading: IconButton(
               onPressed: () {
                 navigateAndFinish(context, const CreateBillScreen());
               },
               icon: const Icon(
                 Icons.arrow_back_ios_rounded,
                 color: defaultColor,
               ),
             ),
           ),
           body: SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.only(top: 0.0,left: 20.0,bottom: 20.0,right: 20.0),
               child: Form(
                 key: formKey,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text(
                       'Product Name',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w500,
                         color: defaultColor,
                       ),
                     ),
                     const SizedBox(height: 5.0,),
                     DropdownButtonFormField(
                       items: listItem.map((valueItem){
                         return DropdownMenuItem(
                           value: valueItem,
                           child: Text(valueItem),
                         );
                       }).toList(),
                       onChanged: (newValue){
                         //   setState((){
                         //   widget.valueChoose == newValue  ;
                         // });
                       },
                       decoration:  InputDecoration(
                           filled: true,
                           fillColor:const Color(0xFFF5F5F5),
                           hintText: 'choose',
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15.0),
                             borderSide: const BorderSide(
                               color: Color(0xFFF5F5F5),
                             ),
                           ),
                           suffixIcon: const InkWell(
                             child: Icon(
                               Icons.qr_code_scanner,
                               color: Color(0xFFccd3d3),
                             ),
                           ),
                           contentPadding: const EdgeInsets.all(15.0)
                       ),


                     ),
                     const SizedBox(height: 10.0,),
                     const Text(
                       'Quantity',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w500,
                         color: defaultColor,
                       ),
                     ),
                     const SizedBox(height: 5.0,),
                     DefaultFormField(
                       isPassword: false,
                       //LoginCubit.get(context).isPassword,
                       controller: quantityController,
                       hintText: 'quantity',
                       hintColor: const Color(0xFFccd3d3),
                       fillColor: const Color(0xFFF5F5F5),
                       colorSide: const Color(0xFFF5F5F5),
                       radius: 15.0,
                       type: TextInputType.number,
                       validate: 'please enter quantity',
                       suffixIcon: const Icon(
                         Icons.production_quantity_limits_outlined,
                         color: Color(0xFFccd3d3),
                       ),
                     ),
                     const SizedBox(height: 10.0,),
                     const Text(
                       'Price',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w500,
                         color: defaultColor,
                       ),
                     ),
                     const SizedBox(height: 5.0,),
                     DefaultFormField(
                       isPassword: false,
                       controller: priceController,
                       hintText: 'price',
                       hintColor: const Color(0xFFccd3d3),
                       fillColor: const Color(0xFFF5F5F5),
                       colorSide: const Color(0xFFF5F5F5),
                       radius: 15.0,
                       type: TextInputType.number,
                       validate: 'please enter price',
                       suffixIcon: const Icon(
                         Icons.price_change_outlined,
                         color: Color(0xFFccd3d3),
                       ),
                     ),
                     const SizedBox(height: 10.0,),
                     const Text(
                       'Sale',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w500,
                         color: defaultColor,
                       ),
                     ),
                     const SizedBox(height: 5.0,),
                     DefaultFormField(
                       isPassword: false,
                       controller: saleController,
                       hintText: 'sale',
                       hintColor: const Color(0xFFccd3d3),
                       fillColor: const Color(0xFFF5F5F5),
                       colorSide: const Color(0xFFF5F5F5),
                       radius: 15.0,
                       type: TextInputType.number,
                       validate: 'please enter Sale',
                       suffixIcon: const Icon(
                         Icons.discount,
                         color: Color(0xFFccd3d3),
                       ),
                     ),
                     const SizedBox(height: 10.0,),
                     const Text(
                       'Add Tax In %',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w500,
                         color: defaultColor,
                       ),
                     ),
                     const SizedBox(height: 5.0,),
                     DefaultFormField(
                       isPassword: false,
                       controller: taxController,
                       hintText: '15',
                       hintColor: const Color(0xFFccd3d3),
                       fillColor: const Color(0xFFF5F5F5),
                       colorSide: const Color(0xFFF5F5F5),
                       radius: 15.0,
                       type: TextInputType.number,
                       validate: 'please enter add tax in %',
                       suffixIcon: const Icon(
                         Icons.money,
                         color: Color(0xFFccd3d3),
                       ),
                     ),
                     const SizedBox(height: 10.0,),
                     const Text(
                       'Note',
                       style: TextStyle(
                         fontSize: 17.0,
                         fontWeight: FontWeight.w500,
                         color: defaultColor,
                       ),
                     ),
                     const SizedBox(height: 5.0,),
                     DefaultFormField(
                       isPassword: false,
                       controller: noteController,
                       hintText: 'note',
                       hintColor: const Color(0xFFccd3d3),
                       fillColor: const Color(0xFFF5F5F5),
                       colorSide: const Color(0xFFF5F5F5),
                       radius: 15.0,
                       type: TextInputType.text,
                       padding: const EdgeInsets.all(40.0),
                     ),
                     const SizedBox(height: 20.0,),
                     MyButton(
                       onClick: ()
                       {

                       },
                       text: 'Add To Table',
                       height: 50.0,
                       radius: 10.0,
                       background: defaultColor,
                       padding: 0.0,
                       color: Colors.white,
                     ),
                   ],
                 ),
               ),
             ),
           ),
         );
       },
     );
   }


}

