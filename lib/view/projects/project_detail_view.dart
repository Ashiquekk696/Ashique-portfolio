 
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/constants.dart';
import 'components/project_info.dart';

class ProjectDetailView extends StatelessWidget {
    ProjectDetailView({Key ,this.index}) ;
 final controller = Get.put(ProjectController());
 int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
 
      body:
       SingleChildScrollView(
       child: 
        Center(
          child: Container( 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin:   EdgeInsets.symmetric(
                  vertical: defaultPadding, horizontal: defaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.blue,
                  ]),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.pink,
                      offset: const Offset(-2, 0),
                      blurRadius: controller.hovers[index??0] ? 20 : 10,
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius: controller.hovers[index??0] ? 20 : 10,),
                  ]),
              child: ProjectStack(index: index??0,isDetailed: true,)
          )
               
          ),
        ))
      );
    // );
  }

}