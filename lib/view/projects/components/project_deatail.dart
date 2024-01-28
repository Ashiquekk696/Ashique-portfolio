import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_link.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectCard extends StatelessWidget {
  final int index;
    ProjectCard({super.key, required this.index,this.isDetailed});
   bool? isDetailed =false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.topCenter,child: Text(
          projectList[index].name,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),),
    
        Responsive.isMobile(context) ?  const SizedBox(height: defaultPadding/2,) : const SizedBox(height: defaultPadding,),
        Text(projectList[index].description,style:   TextStyle(color:isDetailed==true?Colors.white: Colors.grey,height: 1.5),maxLines:
         isDetailed==false&&size.width>700 && size.width< 750 ? 3: 
         isDetailed==false&& size.width<470  ? 3  : isDetailed==false&&size.width>600 && size.width<700 ?   
            6: isDetailed==false&& size.width>900 && size.width <1060 ? 6:isDetailed==true?50:4 ,
            overflow: TextOverflow.ellipsis,),
    //    const Spacer(),

      // const SizedBox(height: defaultPadding/4,),
        Visibility(
          visible: isDetailed==false,
          child: ProjectLinks(index: index,)),
       const SizedBox(height:3,),
      ],
    );
  }
}
