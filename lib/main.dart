import 'package:flutter/material.dart';
import 'package:islami/homescree.dart';
import 'package:islami/provider/themeset.dart';
import 'package:islami/screens/ayat_widget.dart';
import 'package:islami/screens/hadethconten.dart';
import 'package:islami/seteeings/setteings_tab.dart';
import 'package:islami/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return Themeprovider();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Themeprovider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      // locale:Locale('ar') ,
      theme: Themesd.lighttheme,
      darkTheme: Themesd.darktheme,
      themeMode: provider.thememode,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        AyaatWidget.routename: (context) => AyaatWidget(),
        Hadtehconten.routename: (context) => Hadtehconten(),
         SeteeingsTab.routename:(context) => SeteeingsTab(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
