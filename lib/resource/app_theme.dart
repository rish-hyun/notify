import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AppTheme {
  AppTheme._();

  static final String appName = 'Basic';

  static final String fontBillabong = 'Billabong';
  static final String fontRoboto = 'Roboto';
  static final String fontWorkSans = 'WorkSans';
  static final String fontSFPro = 'SFPro';
  static final String fontCodec = 'Codec';
  static final String fontPoppins = 'Poppins';

  static final Color amber = Colors.amber;
  static final Color amberAccent = Colors.amberAccent;
  static final Color black = Colors.black;
  static final Color black12 = Colors.black12;
  static final Color black26 = Colors.black26;
  static final Color black38 = Colors.black38;
  static final Color black45 = Colors.black45;
  static final Color black54 = Colors.black54;
  static final Color black87 = Colors.black87;
  static final Color blue = Colors.blue;
  static final Color blue50 = Colors.blue[50];
  static final Color blue200 = Colors.blue[200];
  static final Color blue500 = Colors.blue[500];
  static final Color blue600 = Colors.blue[600];
  static final Color blue700 = Colors.blue[700];
  static final Color blueAccent = Colors.blueAccent;
  static final Color blueGrey = Colors.blueGrey;
  static final Color brown = Colors.brown;
  static final Color cyan = Colors.cyan;
  static final Color cyanAccent = Colors.cyanAccent;
  static final Color deepOrange = Colors.deepOrange;
  static final Color deepOrangeAccent = Colors.deepOrangeAccent;
  static final Color green = Colors.green;
  static final Color greenAccent = Colors.greenAccent;
  static final Color grey = Colors.grey;
  static final Color grey50 = Colors.grey[50];
  static final Color grey100 = Colors.grey[100];
  static final Color grey300 = Colors.grey[300];
  static final Color grey800 = Colors.grey[800];
  static final Color indigo = Colors.indigo;
  static final Color indigoAccent = Colors.indigoAccent;
  static final Color lightBlue = Colors.lightBlue;
  static final Color lightBlueAccent = Colors.lightBlueAccent;
  static final Color lightGreen = Colors.lightGreen;
  static final Color lightGreenAccent = Colors.lightGreenAccent;
  static final Color lime = Colors.lime;
  static final Color limeAccent = Colors.limeAccent;
  static final Color orange = Colors.orange;
  static final Color orangeAccent = Colors.orangeAccent;
  static final Color pink = Colors.pink;
  static final Color pinkAccent = Colors.pinkAccent;
  static final Color purple = Colors.purple;
  static final Color purpleAccent = Colors.purpleAccent;
  static final Color red = Colors.red;
  static final Color red700 = Colors.red[700];
  static final Color redAccent = Colors.redAccent;
  static final Color teal = Colors.teal;
  static final Color tealAccent = Colors.tealAccent;
  static final Color white = Colors.white;
  static final Color white10 = Colors.white10;
  static final Color white12 = Colors.white12;
  static final Color white24 = Colors.white24;
  static final Color white30 = Colors.white30;
  static final Color white38 = Colors.white38;
  static final Color white54 = Colors.white54;
  static final Color white60 = Colors.white60;
  static final Color white70 = Colors.white70;
  static final Color yellow = Colors.yellow;
  static final Color yellowAccent = Colors.yellowAccent;

  static final Color transparent = Colors.transparent;
  static final Color highlightColorL = Color(0x66C8C8C8);
  static final Color highlightColorD = Color(0x40CCCCCC);

  static final ThemeData themeLight = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: Colors.blue,
    primaryColor: grey50,
    //grey[900],
    primaryColorBrightness: Brightness.light,
    primaryColorLight: white,
    //grey[500]
    primaryColorDark: blue700,
    //black
    accentColor: blue500,
    //tealAccent[200]
    accentColorBrightness: Brightness.light,
    canvasColor: grey50,
    //grey[850]
    scaffoldBackgroundColor: white,
    //black,
    bottomAppBarColor: white,
    //grey[800]
    cardColor: white,
    //grey[800]
    dividerColor: Color(0x1F000000),
    //Color(0x1FFFFFFF)
    selectedRowColor: grey100,
    unselectedWidgetColor: black54,
    //white70
    disabledColor: black38,
    //white38
    buttonColor: white,
    //blue[600]
    buttonTheme: ButtonThemeData(buttonColor: white),
    //
    toggleButtonsTheme: ToggleButtonsThemeData(),
    //
    secondaryHeaderColor: blue50,
    //grey[700]
    backgroundColor: blue200,
    //grey[700]
    dialogBackgroundColor: white,
    //grey[800]
    indicatorColor: white,
    hintColor: Color(0x8A000000),
    //Color(0x80FFFFFF)
    errorColor: red700,
    toggleableActiveColor: blue600,
    //tealAccent[200]
    textTheme: textTheme,
    //
    primaryTextTheme: textTheme,
    //
    accentTextTheme: textTheme,
    //
    inputDecorationTheme: InputDecorationTheme(),
    //
    iconTheme: IconThemeData(color: black87),
    //IconThemeData(color: white)
    primaryIconTheme: IconThemeData(color: black),
    //IconThemeData(color: white)
    accentIconTheme: IconThemeData(color: white),
    //IconThemeData(color: black)
    sliderTheme: SliderThemeData(),
    //
    tabBarTheme: TabBarTheme(),
    //
    tooltipTheme: TooltipThemeData(),
    //
    cardTheme: CardTheme(),
    //
    //chipTheme: ChipThemeData(),//
    platform: defaultTargetPlatform,
    //materialTapTargetSize: ,
    applyElevationOverlayColor: false,
    pageTransitionsTheme: PageTransitionsTheme(),
    //
    appBarTheme: AppBarTheme(
      color: white,
      elevation: 0,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 0,
      color: white,
    ),
    //
    dialogTheme: DialogTheme(),
    //
    floatingActionButtonTheme: FloatingActionButtonThemeData(),
    //
    navigationRailTheme: NavigationRailThemeData(),
    //
    cupertinoOverrideTheme: CupertinoThemeData(),
    //
    snackBarTheme: SnackBarThemeData(),
    //
    bottomSheetTheme: BottomSheetThemeData(),
    //
    popupMenuTheme: PopupMenuThemeData(),
    //
    bannerTheme: MaterialBannerThemeData(),
    //
    dividerTheme: DividerThemeData(),
    //
    buttonBarTheme: ButtonBarThemeData(),
    //
    bottomNavigationBarTheme: BottomNavigationBarThemeData(),
    //
    timePickerTheme: TimePickerThemeData(),
    //
    fixTextFieldOutlineLabel: false,
  );

  static final ThemeData themeDark = ThemeData.dark();

  static final TextTheme textTheme = TextTheme(
    headline1: headline1,
    //
    headline2: headline2,
    //
    headline3: headline3,
    //
    headline4: headline4,
    //
    headline5: headline5,
    //
    headline6: headline6,
    //
    subtitle1: subtitle1,
    subtitle2: subtitle2,
    //
    bodyText1: bodyText1,
    bodyText2: bodyText2,
    caption: caption,
    button: button,
    overline: overline,
    //
  );

  //To use particular text theme
  //Theme.of(context).textTheme.headline2

  /// headline1  96.0  light   -1.5
  /// headline2  60.0  light   -0.5
  /// headline3  48.0  regular  0.0
  /// headline4  34.0  regular  0.25
  /// headline5  24.0  regular  0.0
  /// headline6  20.0  medium   0.15
  /// subtitle2  14.0  medium   0.1
  /// overline  10.0  regular  1.5

  static final TextStyle headline1 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle headline2 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle headline3 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle headline4 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle headline5 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle headline6 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle subtitle1 = TextStyle(
    /// subtitle1  16.0  regular  0.15
    fontSize: 14,
    letterSpacing: 0.15,
    color: black,
  );

  static final TextStyle subtitle2 = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  static final TextStyle bodyText1 = TextStyle(
    /// bodyText1  16.0  regular  0.5
    fontSize: 14,
    letterSpacing: 0.5,
    color: black,
  );

  static final TextStyle bodyText2 = TextStyle(
    /// bodyText2  14.0  regular  0.25
    fontSize: 14,
    letterSpacing: 0.25,
    color: black,
  );

  static final TextStyle caption = TextStyle(
    /// caption  12.0  regular  0.4
    fontWeight: FontWeight.w600,
    fontSize: 12,
    letterSpacing: 0.4,
    color: black,
  );

  static final TextStyle button = TextStyle(
    /// button  14.0  medium   1.25
    fontFamily: fontPoppins,
    fontSize: 14,
    //fontWeight: FontWeight.w800,
    letterSpacing: 0.25,
    color: black,
  );

  static final TextStyle overline = TextStyle(
    //
    fontWeight: FontWeight.w600,
    fontSize: 22,
    letterSpacing: 0.27,
    color: black,
  );

  /*<----------------------------Extra TextStyle---------------------------->*/
  static final TextStyle appTextStyle = TextStyle(
    fontFamily: fontBillabong,
    fontSize: 60,
  );

  static final textBorder = OutlineInputBorder(
    borderSide: BorderSide(color: black12),
  );
  static final errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: red700 ?? red),
  );
}
