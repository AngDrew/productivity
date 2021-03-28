import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'r.dart';

class MyStyles {
  const MyStyles();

  double get _small => ScreenUtil().setSp(12);
  double get _regular => ScreenUtil().setSp(16);
  double get _medium => ScreenUtil().setSp(18);
  double get _large => ScreenUtil().setSp(20);
  double get _extraLarge => ScreenUtil().setSp(24);

  TextStyle get _script => GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: _small,
        ),
      ); // note size
  TextStyle get _normal => GoogleFonts.josefinSans(
        textStyle: TextStyle(
          fontSize: _regular,
        ),
      ); // _normal size
  TextStyle get _subTitle => GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: _medium,
        ),
      ); // subtitle size
  TextStyle get _title => GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: _medium,
          fontWeight: FontWeight.w500,
        ),
      ); // _title size

  TextStyle get scriptFont => _script.copyWith(color: xPrimary);
  TextStyle get normalFont => _normal.copyWith(color: xPrimary);
  TextStyle get subTitleFont => _subTitle.copyWith(color: xPrimary);
  TextStyle get titleFont => _title.copyWith(color: xPrimary);
}
