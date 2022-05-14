<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# tbib_font_responsive

You can use the package to control your font easily.

you can control your font with google font package

## Features

You can use fonts dark or light like h1 - h1Dark


## Getting started

You need use flutter_screenutil library to use it
```yaml
dependencies:
  flutter:
    sdk: flutter
  # add flutter_screenutil
  flutter_screenutil: ^{latest version}
  tbib_font_responsive: ^{latest version}
```

## Usage


* lisenGoogleFont without choose h number
```dart

 TBIBFontStyle.lisenGoogleFont(GoogleFonts.roboto()); 
```

* lisenGoogleFont withchoose h number
```dart

   TBIBFontStyle.lisenGoogleFont(

      GoogleFonts.aBeeZee(textStyle: TBIBFontStyle.h2), 2);

      TBIBFontStyle.addCustomFont("BerthaMelanie", 3);
      
      you see ,2 ?? 2 meaning h2 in this library you have h1 to h6 only and b1 take style from h5 and b2 take style from h6
```
   * when use Pacakge google font use it in first code then edit your style

   ## handel screenUtil and tbib font responsive

  ```dart
      return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          builder: (context, child) {
            ScreenUtil.init(context); // init screen Util
            log("old ${TBIBFontStyle.h1.fontSize}"); // see old font size
            ResponiveFont(); // start this class to start responsive font
             log("new ${TBIBFontStyle.h1.fontSize}"); // see new font size
              child: child!,
            );
          },
          home: const MyHomePage(title: ""), // start app
        );
      },
    );
```