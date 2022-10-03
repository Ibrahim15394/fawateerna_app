import 'package:fawateerna_app/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/util/functions/navigate_and_finish.dart';
import '../../../../core/util/styles/colors.dart';
import '../../../../core/util/widgets/my_button.dart';
import '../../../../data/models/boarding_models.dart';
import 'build_board_item_widget.dart';


class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({Key? key}) : super(key: key);

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

var boardController = PageController();
bool isLast = false;

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index)
              {
                if(index == boarding.length - 1)
                {
                  print('last');
                  setState(() {
                    isLast = true;
                  });
                }else
                {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              controller: boardController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>buildBoardItemWidget(boarding[index]),
              itemCount: boarding.length,
            ),
          ),
           const SizedBox(height: 20.0,),
          SmoothPageIndicator(
              controller: boardController,
              effect: ExpandingDotsEffect(
                activeDotColor: defaultColor,
                dotColor:Colors.grey.shade400 ,
                dotHeight:8.0 ,
                dotWidth:10.0 ,
                spacing:5.0 ,
                expansionFactor:4 ,
              ),
              count: boarding.length,
          ),
           const SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 20.0,right: 20.0,top: 0.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: MyButton(
                    text: 'السابق',
                    onClick: ()
                    {
                      boardController.previousPage(
                        duration: const Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    },
                    background: const Color(0xFFF5F5F5),
                     padding: 12.0,
                    color: const Color(0xFF777777),
                    radius: 20,
                  ),
                ),
                const SizedBox(width:20.0,),
                Flexible(
                  child: MyButton(
                    text: 'التالي',
                    onClick: ()
                    {
                      if(isLast)
                      {
                        navigateAndFinish(context, LoginScreen());
                      }else
                      {
                        boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    background: defaultColor,
                    padding: 12.0,
                    color: Colors.white,
                    radius: 20,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
