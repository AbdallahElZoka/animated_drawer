import 'package:animated_drawer2/bloc/generic_bloc.dart';
import 'package:animated_drawer2/bloc/shadow_bloc.dart';
import 'package:animated_drawer2/constants/constants.dart';
import 'package:animated_drawer2/constants/runtime_variables.dart';
import 'package:flutter/material.dart';

ShadowState? shadowState;

class Shadow extends StatefulWidget {
  final Color? bgColor;

  Shadow({@required this.bgColor});

  @override
  ShadowState createState() => ShadowState();
}

class ShadowState extends State<Shadow> {
  @override
  Widget build(BuildContext context) {
    shadowState = this;
    return AnimatedContainer(
        transform: GenericBLOC.changeValues(
            ShadowBLOC.xoffSet, ShadowBLOC.yoffSet, ShadowBLOC.angle),
        duration: GenericBLOC.setDuration(
            RuntimeVariables.shadowSpeedUserInput ?? Constants.SHADOW_DURATION),
        decoration:
            GenericBLOC.getDecoraton(widget.bgColor ?? Constants.SHADOW_COLOR),
        child: SafeArea(
            child:
                Container(width: Constants.width, height: Constants.height)));
  }
}
