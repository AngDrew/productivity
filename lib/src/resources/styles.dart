import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'r.dart';

class MyStyles {
  const MyStyles();

  double get small => ScreenUtil().setSp(12);
  double get regular => ScreenUtil().setSp(16);
  double get large => ScreenUtil().setSp(20);
  double get extraLarge => ScreenUtil().setSp(24);

  TextStyle get script => GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: ScreenUtil().setSp(12),
        ),
      ); // note size
  TextStyle get normal => GoogleFonts.josefinSans(
        textStyle: TextStyle(
          fontSize: ScreenUtil().setSp(16),
        ),
      ); // normal size
  TextStyle get subTitle => GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: ScreenUtil().setSp(18),
        ),
      ); // subtitle size
  TextStyle get title => GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: ScreenUtil().setSp(18),
          fontWeight: FontWeight.w500,
        ),
      ); // title size

  TextStyle get scriptXP => script.copyWith(color: xPrimary);
  TextStyle get normalXP => normal.copyWith(color: xPrimary);
  TextStyle get subTitleXP => subTitle.copyWith(color: xPrimary);
  TextStyle get titleXP => title.copyWith(color: xPrimary);

  TextStyle get scriptXS => script.copyWith(color: xSecondary);
  TextStyle get normalXS => normal.copyWith(color: xSecondary);
  TextStyle get subTitleXS => subTitle.copyWith(color: xSecondary);
  TextStyle get titleXS => title.copyWith(color: xSecondary);
}
