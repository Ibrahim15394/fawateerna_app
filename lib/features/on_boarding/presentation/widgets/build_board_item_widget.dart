import 'package:flutter/material.dart';

import '../../../../data/models/boarding_models.dart';

Widget buildBoardItemWidget(BoardingModel model) => Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Image(
        image: AssetImage(model.image,),
        fit: BoxFit.cover,
        width: double.infinity,

      ),
    ),
    const SizedBox(height: 10.0,),
    Text(
      model.title,
      style: const TextStyle(
        color: Color(0xFF616161),
        fontSize: 45.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    const SizedBox(height: 10.0,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        model.body,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF616161),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  ],
);
