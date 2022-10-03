import 'package:fawateerna_app/core/util/functions/navigate_and_finish.dart';
import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:fawateerna_app/core/util/widgets/my_button.dart';
import 'package:fawateerna_app/features/create_bill/presentation/pages/add_bill_screen.dart';
import 'package:fawateerna_app/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';


class CreateBillScreen extends StatefulWidget {
  const CreateBillScreen({Key? key}) : super(key: key);


  @override
  State<CreateBillScreen> createState() => _CreateBillScreenState();
}

class _CreateBillScreenState extends State<CreateBillScreen> {

  List listItem = ['ahmed','ali','salah','ibrahim','mostafa','younes'];

  String? valueChoose ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              navigateAndFinish(context, const HomeScreen());
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
        ),
        title: const Text(
          'Bill',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButtonFormField(
              items: listItem.map((valueItem){
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
                onChanged: (newValue){setState((){
                  valueChoose == newValue  ;
                });},
               decoration:  InputDecoration(
                 filled: true,
                fillColor:const Color(0xFFF5F5F5),
                hintText: 'choose',
                hintStyle: const TextStyle(
                  color: Color(0xFFccd3d3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Color(0xFFF5F5F5),
                  ),
                ),
                 icon: TextButton(
                   onPressed: (){},
                   style:  TextButton.styleFrom(
                     backgroundColor: defaultColor,
                     primary: Colors.white,
                     minimumSize: const Size(60.0, 47.0),
                   ),
                   child: const Text(
                     'save',
                   ),
                 ),
              ),


            ),
            const SizedBox(height: 30.0,),
            Center(
              child: MyButton(
                onClick: ()
                {
                  navigateAndFinish(context,  AddBillScreen(),);
                },
                text: '+Add',
                height: 50.0,
                radius: 10.0,
                background: defaultColor,
                padding: 0.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
