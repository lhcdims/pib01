// This program display the Settings Main Page

// Import Flutter Darts
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// Import Self Darts
import 'GlobalVariables.dart';
import 'LangStrings.dart';
import 'ScreenVariables.dart';
import 'ShowDialog.dart';

// Import Pages
import 'PageActivate.dart';
import 'PageChangePassword.dart';
import 'BottomBar.dart';
import 'PageLogin.dart';
import 'PageSelectLanguage.dart';


// SettingsMain Page
class ClsSettingsMain extends StatelessWidget {
  final intState;

  ClsSettingsMain(this.intState);

  // Vars for SettingsMain
  static var listSettingsMain = [
    // list of Buttons in this page
    {'Prog': 'SelectLanguage'},
    {'Prog': 'Login'},
  ];

  // Choose which page when button pressed
  void funSettingsMain(strProg, context) {
    if (strProg != 'Logout') {
      // Set LastPage
      gv.gstrLastPage = gv.gstrCurPage;

      // Go to Next Page
      gv.gstrCurPage = strProg;

      // Code to Goto Next Page
      switch (strProg) {
        case 'ActivateAccount':
          gv.resetVars();
          Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) => ClsActivateAccount()),
                (_) => false,

          );
          break;
        case 'ChangePassword':
          gv.resetVars();
          Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) => ClsChangePassword()),
                (_) => false,

          );
          break;
        case 'PersonalInformation':
          if (!gv.bolLoading) {
            gv.ctlSelectFilesCheckPassword.text = '';
            // Check Password Again
            sd.showAlert(context, ls.gs('CheckPassword'),ls.gs( 'CheckPassword')+'?','CheckPasswordMMS');
          };
          break;
        case 'SelectLanguage':
          Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) => ClsSelectLanguage()),
                (_) => false,

          );
          break;
        case 'Login':
          gv.resetVars();
          Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) => ClsLogin()),
                (_) => false,

          );
          break;
        default:
          break;
      }
    } else {
      sd.showAlert(context, ls.gs('Logout'),ls.gs( 'AreYouSure')+'?','Logout');
    }
  }

  Widget funGetIcon(strProg) {
    switch (strProg) {
      case 'ActivateAccount':
        return Icon(Icons.confirmation_number,
            color: Colors.blue);
        break;
      case 'ChangePassword':
        return Icon(Icons.security,
            color: Colors.blue);
        break;
      case 'Login':
        return Icon(Icons.input,
            color: Colors.green);
        break;
      case 'Logout':
        return Icon(Icons.call_missed_outgoing,
            color: Colors.red);
        break;
      case 'PersonalInformation':
        return Icon(Icons.info_outline,
            color: Colors.blue);
        break;
      case 'SelectLanguage':
        return Icon(Icons.language,
            color: Colors.orange);
        break;
      default:
        return Icon(Icons.settings);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Set listSettingsMain according to gv.strLogin
    if (gv.strLoginID == '') {
      listSettingsMain = [
        // list of Buttons in this page
        {'Prog': 'SelectLanguage'},
        {'Prog': 'Login'},
      ];
    } else {
      if (gv.strLoginStatus == 'A') {
        listSettingsMain = [
          // list of Buttons in this page
          {'Prog': 'SelectLanguage'},
          {'Prog': 'PersonalInformation'},
          {'Prog': 'ChangePassword'},
          {'Prog': 'ActivateAccount'},
          {'Prog': 'Logout'},
        ];
      } else {
        if (gv.strLoginID == 'admin') {
          listSettingsMain = [
            // list of Buttons in this page
            {'Prog': 'SelectLanguage'},
            {'Prog': 'PersonalInformation'},
            {'Prog': 'ChangePassword'},
            {'Prog': 'Logout'},
          ];
        } else {
          listSettingsMain = [
            // list of Buttons in this page
            {'Prog': 'SelectLanguage'},
            {'Prog': 'PersonalInformation'},
            {'Prog': 'ChangePassword'},
            {'Prog': 'Logout'},
          ];
        }
      }
    }
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text(
            ls.gs('Settings'),
            style: TextStyle(fontSize: sv.dblDefaultFontSize),
          ),
        ),
        preferredSize: new Size.fromHeight(sv.dblTopHeight),
      ),
      body:
    Container(
      child: Column(children: <Widget>[
        Text(' '),
        Text(' '),
        Expanded(child:         Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: listSettingsMain.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Text(' '),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => funSettingsMain(
                          listSettingsMain[index]['Prog'], context),
                      child:
                      Row(children: <Widget>[
                        Text('     '),
                        funGetIcon(listSettingsMain[index]['Prog']),
                        Text('     '),
                        Expanded(
                          child:Text(
                              '${ls.gs(listSettingsMain[index]['Prog'])}',
                              style: TextStyle(
                                  fontSize:
                                  sv.dblDefaultFontSize * 1,
                              ),
                          ),
                        ),
                        Icon(Icons.arrow_forward, color:Colors.grey),
                        Text('     '),
                      ]),),
                    Text(' '),
                    (index == listSettingsMain.length - 1) ? Text('') : Divider(height: 1, color:Colors.black12),
                  ],
                );
              }),
        ),
        ),
      ],)
    ),
      bottomNavigationBar: ClsBottom(),
    );
  }
}