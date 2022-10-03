import 'package:fawateerna_app/core/util/functions/navigate_to.dart';
import 'package:fawateerna_app/features/all_notice/presentation/pages/all_notice_screen.dart';
import 'package:fawateerna_app/features/billing/presentation/pages/billing_screen.dart';
import 'package:fawateerna_app/features/client/presentation/pages/client_screen.dart';
import 'package:fawateerna_app/features/home/presentation/widgets/bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import '../../../drawer_setting/presentation/widgets/drawer_widget.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
 with SingleTickerProviderStateMixin{
   late TabController controller;

   @override
   void initState(){
     super.initState();

     controller = TabController(vsync: this, length: 2);

     controller.addListener(() {
       setState((){});
     });
   }

   @override
   void dispose(){
     controller.dispose();
     super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return BottomSheetWidget();
                });
          },
          child: const Icon(Icons.add),
        ),
        drawer: const DrawerWidget(),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search_outlined,
                color: Color(0xFFF2F2F2),
                size: 27.0,
              ),
            ),
            IconButton(
              onPressed: ()
              {
                navigateTo(context, AllNoticeScreen());
              },
              icon: const Icon(
                Icons.notifications_active_rounded,
                color: Color(0xFFF2F2F2),
                size: 27.0,
              ),
            ),
          ],
          bottom:  TabBar(
            controller: controller,
            unselectedLabelColor:Color(0xFF001858),
            indicatorWeight:3.5,
            indicatorColor: Color(0xFFF2F2F2),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                  icon:Icon(
                    Icons.money,
                size: 28.0,
                  ),
                  child: Text(
                    'Billing',
                    style: TextStyle(
                       fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                    ),),),
              Tab(
                  icon: Icon(
                    Icons.person,
                    size: 28.0,
                  ),
                  child: Text(
                    'Client',
                    style:
                        TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                        ),
                  )),
            ],),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            BillingScreen(),
            ClientScreen(),
          ],
        ),
      ),
    );
  }
}
