import 'package:flutter/material.dart';

class BuildItemAllNoticeWidget extends StatelessWidget {
  const BuildItemAllNoticeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:200.0,
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
                          text: 'Bill Number : ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          )
                      ),
                      TextSpan(
                          text: '130522511 ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          )
                      ),
                    ]
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (){},
                child: const Icon(
                  Icons.remove,
                  color: Colors.grey,
                ),
              ),
              InkWell(
                onTap: (){},
                child: const Icon(
                  Icons.ac_unit_outlined,
                  color: Colors.grey,
                ),
              ),
              InkWell(
                onTap: (){},
                child: const Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
              InkWell(
                onTap: (){},
                child: const Icon(
                  Icons.print,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0,),
          Text(
            'Notice Debitor',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 5.0,),
          RichText(
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Client Name in Arabic :  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      )
                  ),
                  TextSpan(
                      text: 'ابراهيم مرسي  ',
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
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Taxable Total :  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      )
                  ),
                  TextSpan(
                      text: '125  ',
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
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Tax : ',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                      )
                  ),
                  TextSpan(
                      text: ' 15',
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
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Total With Tax : ',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                      )
                  ),
                  TextSpan(
                      text: ' 258',
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
  }
}
