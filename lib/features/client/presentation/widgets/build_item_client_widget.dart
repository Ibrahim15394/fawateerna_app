import 'package:fawateerna_app/core/util/cubit/cubit.dart';
import 'package:fawateerna_app/core/util/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildItemClientWidget extends StatelessWidget {
   BuildItemClientWidget({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state){},
       builder: (context, state){
        return Container(
          width: double.infinity,
          height:195.0,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: const Color(0xFFF5F5F5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'Client Code :',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey,
                              )
                          ),
                          TextSpan(
                              text: '130  ',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              )
                          ),
                        ]
                    ),
                  ),
                  const Spacer(),
                  const InkWell(
                    child: Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ),
                  const InkWell(
                    child: Icon(
                      Icons.remove,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0,),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Client Name in Arabic :  ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          )
                      ),
                      TextSpan(
                          text:'client',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 5.0,),
              RichText(
                text:  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Client Name in English :  ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          )
                      ),
                      TextSpan(
                          text:' client',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 5.0,),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Phone : ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          )
                      ),
                      TextSpan(
                          text:'client',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          )
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 5.0,),
              RichText(
                text:TextSpan(
                    children: [
                      TextSpan(
                          text: 'Email : ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          )
                      ),
                      TextSpan(
                          text: 'client',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          )
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 5.0,),
              RichText(
                text:  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Tax Registration Number : ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          )
                      ),
                      TextSpan(
                          text:'client',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          )
                      ),
                    ]
                ),
              ),
            ],
          ),
        );
       },

    );
  }
}
