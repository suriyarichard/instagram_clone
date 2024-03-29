import 'package:flutter/material.dart';
import '/utils/dimensions.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({ Key? key,required this.webScreenLayout,required this.mobileScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context,constraint){
        if(constraint.maxWidth > webScreenSize){
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}