import 'package:animated_drawer2/bloc/generic_bloc.dart';
import 'package:animated_drawer2/bloc/home_page_bloc.dart';
import 'package:animated_drawer2/bloc/shadow_bloc.dart';
import 'package:animated_drawer2/constants/constants.dart';
import 'package:animated_drawer2/constants/runtime_variables.dart';
import 'package:animated_drawer2/views/shadow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Widget? body;

  HomePage({@required this.body});

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: GenericBLOC.changeValues(
            HomePageBloc.xoffSet, HomePageBloc.yoffSet, HomePageBloc.angle),
        duration: GenericBLOC.setDuration(
            RuntimeVariables.homePageSpeedUserInput ??
                Constants.HOME_SCREEN_DURATION),
        child: ClipRRect(
          borderRadius: GenericBLOC.getBorderRadius(),
          child: Stack(
            children: [
              widget.body ?? Container(),
              SafeArea(
                child: HomePageBloc.isOpen ? _closeButton() : _openButton(),
              )
            ],
          ),
        ));
  }

  _openButton() {
    return SizedBox();
    /*return IconButton(
        icon: RuntimeVariables.openIconUserInput ?? Constants.DRAWER_OPEN_ICON,
        onPressed: () {
          HomePageBloc().openDrawer();


          setState(() {});
          shadowState?.setState(() {});
        });*/
  }

  _closeButton() {
    return SizedBox();
    /*return IconButton(
        icon:
            RuntimeVariables.closeIconUserInput ?? Constants.DRAWER_CLOSE_ICON,
        onPressed: () {
          HomePageBloc().closeDrawer();
          ShadowBLOC().closeDrawer();

          setState(() {});
          shadowState?.setState(() {});
        });*/
  }
}
