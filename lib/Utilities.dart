// This class contains utilities functions for all darts, this class keep constant for all projects

// Import Flutter Darts
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Import Self Darts
import 'ScreenVariables.dart';

// Class Utilities
class ut {
  // Function to return no. of space
  static String Space(int intSpace) {
    var strResult = '';
    for (var i = 1; i <= intSpace; i++) {
      strResult += ' ';
    }
    return strResult;
  }

  // The following function shows a message on the Top Area of the screen, by the Flutter Plugin fluttertoast
  // This message will be displayed for a few seconds (and Longer if the 2nd parm is true)
  // The message will not affect other widgets!  So it is called a toast message.
  static void showToast(String strMsg, [bool bolLongToast = false]) {
    Fluttertoast.showToast(
      msg: strMsg,
      toastLength: bolLongToast ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.transparent,
      textColor: Colors.lightBlue,
      fontSize: sv.dblDefaultFontSize * 0.8,
    );
  }

  static int stringBytes(String c) {
    var n = c.length, s;
    var len = 0;
    for (var i = 0; i < n; i++) {
      s = c.codeUnitAt(i);
      if (s > 255) {
        len += 2;
      } else {
        len += 1;
      }
    }
    return len;
  }

  static bool isEmail(String em) {
    String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

  static var aryUserIDAllowedChars = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '_',
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];

  static bool isAllowedChars(String strTemp) {
    bool bolReturn = false;
    bool bolOK = true;
    for (var i = 0; i < strTemp.length; i++) {
      bool bolFound = false;
      for (var j = 0; j < aryUserIDAllowedChars.length; j++) {
        if (strTemp.substring(i,i+1) == aryUserIDAllowedChars[j]) {
            bolFound = true;
            break;
        }
      }
      if (!bolFound) {
        // Not Allowed
        bolOK = false;
        break;
      }
    }
    if (bolOK) {
      bolReturn = true;
    }
    return bolReturn;
  }

  static void funDebug(strDebug) {
    print(DateTime.now().toString() + ' ******************** ' + strDebug);
  }
}
