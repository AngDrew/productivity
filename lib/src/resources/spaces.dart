import 'package:flutter/material.dart';

// //default settings
// /// vertical 16
// EdgeInsets defaultVerticalMargin =
//     const EdgeInsets.symmetric(vertical: 16);

// /// horizontal 16
// EdgeInsets defaultHorizontalMargin =
//     const EdgeInsets.symmetric(horizontal: 16);

// /// all 16
// EdgeInsets defaultSpaceAroundMargin = EdgeInsets.all(16);

/// all 0
const EdgeInsets noSpaceAround = EdgeInsets.all(0);

//only vertical
/// vertical 8
const EdgeInsets littleVertical = EdgeInsets.symmetric(vertical: 8);

/// vertical 16
const EdgeInsets betterVertical = EdgeInsets.symmetric(vertical: 16);

/// vertical 32
const EdgeInsets hugeVertical = EdgeInsets.symmetric(vertical: 32);

//only horizontal
/// horizontal 8
const EdgeInsets littleHorizontal = EdgeInsets.symmetric(horizontal: 8);

/// horizontal 16
const EdgeInsets betterHorizontal = EdgeInsets.symmetric(horizontal: 16);

/// horizontal 32
const EdgeInsets hugeHorizontal = EdgeInsets.symmetric(horizontal: 32);

//insets all
/// all 4
const EdgeInsets littleSpaceAround = EdgeInsets.all(4);

/// all 8
const EdgeInsets betterSpaceAround = EdgeInsets.all(8);

/// all 16
const EdgeInsets hugeSpaceAround = EdgeInsets.all(16);

/// all 32
const EdgeInsets tinySpaceAround = EdgeInsets.all(32);

//only top
/// only top 8
const EdgeInsets littleSpaceTop = EdgeInsets.only(top: 8);

/// only top 16
const EdgeInsets betterSpaceTop = EdgeInsets.only(top: 16);

/// only top 32
const EdgeInsets hugeSpaceTop = EdgeInsets.only(top: 32);

//only bottom
/// only bottom 8
const EdgeInsets littleSpaceBottom = EdgeInsets.only(bottom: 8);

/// only bottom 16
const EdgeInsets betterSpaceBottom = EdgeInsets.only(bottom: 16);

/// only bottom 32
const EdgeInsets hugeSpaceBottom = EdgeInsets.only(bottom: 32);

//only left
/// only left 8
const EdgeInsets littleSpaceLeft = EdgeInsets.only(left: 8);

/// only left 16
const EdgeInsets betterSpaceLeft = EdgeInsets.only(left: 16);

/// only left 32
const EdgeInsets hugeSpaceLeft = EdgeInsets.only(left: 32);

//only right
/// only right 8
const EdgeInsets littleSpaceRight = EdgeInsets.only(right: 8);

/// only right 16
const EdgeInsets betterSpaceRight = EdgeInsets.only(right: 16);

/// only right 32
const EdgeInsets hugeSpaceRight = EdgeInsets.only(right: 32);

/// SizedBox `width` & `height` = 4
const SizedBox tinySpaceWidget = SizedBox(height: 4, width: 4);

/// SizedBox `width` & `height` = 8
const SizedBox littleSpaceWidget = SizedBox(height: 8, width: 8);

/// SizedBox `width` & `height` = 16
const SizedBox betterSpaceWidget = SizedBox(height: 16, width: 16);

/// SizedBox `width` & `height` = 32
const SizedBox hugeSpaceWidget = SizedBox(height: 32, width: 32);

const Divider divider =
    Divider(color: Color(0xFF191919), height: 0.5, thickness: 0.5);
