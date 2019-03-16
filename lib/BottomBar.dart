// This program contains the Class for the Bottom Navigator Bar

// Import Flutter Darts
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:redux/redux.dart';

// Import Self Darts
import 'GlobalVariables.dart';
import 'LangStrings.dart';
import 'Utilities.dart';

// Import Pages
import 'PageHome.dart';
import 'PageSelectLanguage.dart';
import 'PageSettingsMain.dart';

// Class Bottom
class ClsBottom extends StatefulWidget {
  @override
  _ClsBottomState createState() => _ClsBottomState();
}

class _ClsBottomState extends State<ClsBottom> {
  @override
  initState() {
    super.initState();
    // Add listeners to this class, if any
  }

  void _onItemTapped(int index) async {
    await SystemChrome.setEnabledSystemUIOverlays([]);
    print('gstrCurPage: ' + gv.gstrCurPage);
    print('gstrLang: ' + gv.gstrLang);
    print('bolLoading: ' + gv.bolLoading.toString());
    if (gv.gstrLang != '' && gv.bolLoading == false) {
      switch (index) {
        case gv.intHomeBottomIndex:
          // Check Permission

          // Check ExternalStorage Permission for Android Only
          if (Platform.isAndroid) {
            PermissionStatus perStorage = await PermissionHandler()
                .checkPermissionStatus(PermissionGroup.storage);
            if (perStorage.value != 2) {
              Map<PermissionGroup, PermissionStatus> rqperStorage =
                  await PermissionHandler()
                      .requestPermissions([PermissionGroup.storage]);
              if (rqperStorage[PermissionGroup.storage].value != 2) {
                ut.showToast(ls.gs('PermissionExternal'));
                return;
              }
            }
          }

          // Check Audio Permission
          PermissionStatus perAudio = await PermissionHandler()
              .checkPermissionStatus(PermissionGroup.microphone);
          if (perAudio.value != 2) {
            Map<PermissionGroup, PermissionStatus> rqperAudio =
                await PermissionHandler()
                    .requestPermissions([PermissionGroup.microphone]);
            if (rqperAudio[PermissionGroup.microphone].value != 2) {
              ut.showToast(ls.gs('PermissionAudio'));
              return;
            }
          }

          // Check Camera Permission
          PermissionStatus perCamera = await PermissionHandler()
              .checkPermissionStatus(PermissionGroup.camera);
          if (perCamera.value != 2) {
            Map<PermissionGroup, PermissionStatus> rqperCamera =
                await PermissionHandler()
                    .requestPermissions([PermissionGroup.camera]);
            if (rqperCamera[PermissionGroup.camera].value != 2) {
              ut.showToast(ls.gs('PermissionCamera'));
              return;
            }
          }

//          gv.bolHomeFirstInit = true;
//          gv.bolHomeFirstDispose = true;

          // Check Login
          if (gv.strLoginID == '') {
            ut.showToast(ls.gs('PlsLoginFirst'), true);
            return;
          }

          // Check Status
          if (gv.strLoginStatus == 'D') {
            ut.showToast(ls.gs('YourAccountHasBeenDisabled'), true);
            return;
          }

          // Page Home Clicked
          gv.gintBottomIndex = index;

          gv.gstrLastPage = gv.gstrCurPage;
          gv.gstrCurPage = 'Home';

          // Goto Home
          gv.gintBottomIndex = gv.intSettingsMainBottomIndex;
          setState(() {});
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StoreProvider(
                      store: gv.storeHome,
                      child: StoreConnector<int, int>(
                        builder: (BuildContext context, int intTemp) {
                          return ClsHomeBase(intTemp);
                        },
                        converter: (Store<int> sintTemp) {
                          return sintTemp.state;
                        },
                      ),
                    )),
          );
          break;
        case gv.intSettingsMainBottomIndex:
          gv.gintBottomIndex = index;

//          try {
//            gv.ctlVideo[gv.ctlVideo.length-1].pause();
//            print('Video Paused in Bottom Bar');
//          } catch (err) {
//            print("Play Video Pause Error: " + err.toString());
//          }

          // Page Settings Clicked
          gv.gstrLastPage = gv.gstrCurPage;
          gv.gstrCurPage = 'SettingsMain';

          // Goto SettingsMain
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => StoreProvider(
                      store: gv.storeSettingsMain,
                      child: StoreConnector<int, int>(
                        builder: (BuildContext context, int intTemp) {
                          return ClsSettingsMain(intTemp);
                        },
                        converter: (Store<int> sintTemp) {
                          return sintTemp.state;
                        },
                      ),
                    )),
            (_) => false,
          );
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => StoreProvider(
//                        store: gv.storeSettingsMain,
//                        child: StoreConnector<int, int>(
//                          builder: (BuildContext context, int intTemp) {
//                            return ClsSettingsMain(intTemp);
//                          },
//                          converter: (Store<int> sintTemp) {
//                            return sintTemp.state;
//                          },
//                        ),
//                      )));
//          Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
          break;
        default:
          break;
      }
    } else if (gv.gstrLang == '') {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => ClsSelectLanguage()),
        (_) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    gv.gintBottomIndex = gv.intSettingsMainBottomIndex;
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            title: Text(ls.gs('Player'))),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text(ls.gs('Settings'))),
      ],
      currentIndex: gv.gintBottomIndex,
      fixedColor: Colors.deepPurple,
      onTap: _onItemTapped,
    );
  }
}
