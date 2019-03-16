// This program display the Dialog

// Import Flutter Darts
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// Import Self Darts
import 'GlobalVariables.dart';
import 'LangStrings.dart';
import 'ScreenVariables.dart';
import 'Utilities.dart';

// Import Pages
import 'PagePersonalInformation.dart';

// Show Dialog Class sd
class sd {
  // The original widget calls the following showAlert method in async mode
  // Which means that, after calling showAlert, the codes after showAlert will be run immediately
  // i.e. Anything showAlert should be done, must be done inside showAlert.
  // In other words, the original widget must be using Redux for State Management.  (CANNOT use setState)
  // inside showDialog, can use either:
  // 1. AlertDialog (To show 1 row of buttons at the bottom)
  // 2. SimpleDialog (To show rows of buttons)
  // See Below examples for AlertDialog (case 'Logout') and SimpleDialog (case 'Logout2')
  static void showAlert(BuildContext context, strTitle, strContent, strAction,
      [int intValue1]) {
    switch (strAction) {
      case 'Logout':
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
                  title: Text(strTitle),
                  content: Text(strContent),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text(ls.gs('Yes')),
                      onPressed: () {
                        Navigator.of(context).pop();
                        gv.bolSelectFilesAllowMMS = false;

                        gv.gstrCurPage = 'SettingsMain';

                        // Do Logout
                        gv.strLoginID = '';
                        gv.strLoginPW = '';
                        gv.strLoginStatus = '';
                        gv.setString('strLoginID', gv.strLoginID);
                        gv.setString('strLoginPW', gv.strLoginPW);

                        // Call Server to Logout
                        gv.socket.emit('LogoutFromServer', []);

                        // Increment storeSettingsMain to refresh page
                        gv.storeSettingsMain.dispatch(Actions.Increment);
                      },
                    ),
                    new FlatButton(
                      child: new Text(ls.gs('No')),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ));
        break;
      case 'Logout2':
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => SimpleDialog(
                  title: Center(
                    child: Text(strTitle + ': ' + strContent),
                  ),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                        gv.bolSelectFilesAllowMMS = false;

                        gv.gstrCurPage = 'SettingsMain';

                        // Do Logout
                        gv.strLoginID = '';
                        gv.strLoginPW = '';
                        gv.strLoginStatus = '';
                        gv.setString('strLoginID', gv.strLoginID);
                        gv.setString('strLoginPW', gv.strLoginPW);

                        // Call Server to Logout
                        gv.socket.emit('LogoutFromServer', []);

                        // Increment storeSettingsMain to refresh page
                        gv.storeSettingsMain.dispatch(Actions.Increment);
                      },
                      child: Center(
                        child: Text(
                          ls.gs('Yes'),
                          style: TextStyle(
                              fontSize: sv.dblDefaultFontSize * 1.2,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text(
                          ls.gs('No'),
                          style: TextStyle(
                              fontSize: sv.dblDefaultFontSize * 1.2,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ));
        break;
      case 'CheckPasswordMMS':
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
                  title: Text(strTitle),
                  content: Row(
                    children: <Widget>[
                      Text(' '),
                      Expanded(
                        child: TextField(
                          controller: gv.ctlSelectFilesCheckPassword,
                          autofocus: false,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: ls.gs('UserPW'),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                        ),
                      ),
                      Text(' '),
                    ],
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text(ls.gs('Confirm')),
                      onPressed: () async {
                        Navigator.of(context).pop();

                        // Without this code, Full Screen is disabled by virtual keyboard
                        await SystemChrome.setEnabledSystemUIOverlays([]);

                        if (gv.strLoginPW == gv.ctlSelectFilesCheckPassword.text) {

                          // Check Network Connection
                          if (!gv.gbolSIOConnected) {
                            ut.showToast(ls.gs('NetworkDisconnectedTryLater'), true);
                            return;
                          }

                          gv.bolPerInfoFirstCall = true;
                          Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(
                                builder: (context) => StoreProvider(
                                  store: gv.storePerInfo,
                                  child: StoreConnector<int, int>(
                                    builder: (BuildContext context, int intTemp) {
                                      return ClsPersonalInformation(intTemp);
                                    },
                                    converter: (Store<int> sintTemp) {
                                      return sintTemp.state;
                                    },
                                  ),
                                )),
                                (_) => false,

                          );

                        } else {
                          ut.showToast(ls.gs('PasswordIsNotCorrect'), true);
                        }
                      },
                    ),
                    new FlatButton(
                      child: new Text(ls.gs('Cancel')),
                      onPressed: () async {
                        Navigator.of(context).pop();

                        // Without this code, Full Screen is disabled by showDialog
                        await SystemChrome.setEnabledSystemUIOverlays([]);
                      },
                    ),
                  ],
                ));
        break;
      default:
        break;
    }
  }
}
