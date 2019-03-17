// Import Flutter Darts
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as ImagePlugin;
import 'package:intl/intl.dart';
import "package:threading/threading.dart";
import 'package:video_player/video_player.dart';

// Import Self Darts
import 'GlobalVariables.dart';
import 'LangStrings.dart';
import 'ScreenVariables.dart';
import 'Utilities.dart';

// Import Pages


// In order to let the Video Controller can be disposed everytime leaving this page, e.g. Select video file by filePicker
// Need to wrap this page by a stateless widget and use Redux to 'Refresh' this page
class ClsHomeBase extends StatelessWidget {
  final intState;

  ClsHomeBase(this.intState);

  @override
  Widget build(BuildContext context) {
    return ClsHome();
  }
}

// Home Page
class ClsHome extends StatefulWidget {
  @override
  _ClsHomeState createState() => _ClsHomeState();
}

class _ClsHomeState extends State<ClsHome> with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  // Declare Video
  VideoPlayerController ctlVideo;
  VoidCallback vcbVideo;

  // Declare Camera
  CameraController ctlCamera;

  // Var for Video
  bool bolVideoPaused = true;

  int intCountState = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    gv.bolHomeVideoTimerStart = false;

    intCountState += 1;
    ut.funDebug('***************************************** intCountState: ' +
        intCountState.toString());
  }

  @override
  void dispose() async {
    super.dispose();
    ut.funDebug("Dispose Started");

    gv.bolHomeVideoTimerStart = false;

    try {
      // ctlCamera?.dispose();
      funCameraStop();
    } catch (err) {
      ut.funDebug('Camera Dispose Error in dispose(): ' + err.toString());
    }

    try {
      ctlVideo.removeListener(vcbVideo);
      ut.funDebug('Video Remove Listener in dispose()');
    } catch (err) {
      ut.funDebug(
          'Video Remove Listener Error in dispose(): ' + err.toString());
    }

    try {
      ctlVideo?.dispose();
      ut.funDebug('Video Disposed in dispose()');
    } catch (err) {
      ut.funDebug('Video Dispose Error in dispose(): ' + err.toString());
    }

    WidgetsBinding.instance.removeObserver(this);

    ut.funDebug("Dispose Ended");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _lastLifecycleState = state;
    ut.funDebug('*****   Life Cycle State: ' +
        _lastLifecycleState.toString() +
        '   *****');
    if (_lastLifecycleState.toString() == 'AppLifecycleState.paused') {
      try {
        if (ctlVideo.value.isPlaying) {
          bolVideoPaused = true;
          ctlVideo.pause();
          gv.bolHomeVideoTimerStart = false;
          setState(() {});
          ut.funDebug('Video Paused in didChange paused');
        }
      } catch (err) {
        ut.funDebug('Video Pause Error in didChange paused: ' + err.toString());
      }
      try {
        funCameraStop();
      } catch (err) {
        ut.funDebug('Stop Camera Error in Pause: ' + err.toString());
      }
    } else if (_lastLifecycleState.toString() == 'AppLifecycleState.resumed') {
      try {
        if (ctlVideo.value.isPlaying) {
          bolVideoPaused = true;
          ctlVideo.pause();
          gv.bolHomeVideoTimerStart = false;
          ut.funDebug('Video Paused in didChange resumed');
        }
        setState(() {});
        ut.funDebug(
            'After setState in didChange resumed with bolVideoPaused: ' +
                bolVideoPaused.toString());
      } catch (err) {
        ut.funDebug(
            'Video Pause Error in didChange resumed: ' + err.toString());
      }
    }
  }

  // Timer to setState Video Play Position
  // And restart funCameraStart if needed
  void funTimerVideo() async {
    try {
      if (ctlVideo.value.isPlaying) {
        gv.dblHomeVDSliderValueMS =
            ctlVideo.value.position.inMilliseconds.toDouble();
        setState(() {});
      }
      if (gv.bolHomeRecording) {
        int timTemp = DateTime.now().millisecondsSinceEpoch;
        int intSeconds = ((timTemp - gv.timHomeCameraStart) / 1000).toInt();
        if (intSeconds < 0) {
          // Don't cheat ME !!!
          intSeconds = 7200;
        }
      }
    } catch (err) {
      // Video Not Yet Ready, Do Nothing
    }
    if (gv.bolHomeVideoTimerStart) {
      Future.delayed(Duration(milliseconds: 1000), () async {
        funTimerVideo();
      });
    }
  }

  // Function Start Camera
  void funCameraStart() async {
    if (MediaQuery.of(context).orientation.toString() == Orientation.portrait) {
      ut.funDebug('Camera Orientation: Portrait');
    } else {
      ut.funDebug('Camera Orientation: Landscape');
    }

    // Declare File Name
    await Directory(gv.strMoviePath + '/' + gv.strLoginID)
        .create(recursive: true);
    await Directory(gv.strImagePath + '/' + gv.strLoginID)
        .create(recursive: true);

    DateTime dtTimeStamp() => DateTime.now();
    String strTimeStamp = DateFormat('yyyyMMdd_kkmmss').format(dtTimeStamp());
    String strMovieFile =
        gv.strMoviePath + '/' + gv.strLoginID + '/' + strTimeStamp + '.mp4';
    gv.strHomeImageFileWithPath =
        gv.strImagePath + '/' + gv.strLoginID + '/' + strTimeStamp;
    gv.strHomeMovieFileNoPath = strTimeStamp + '.mp4';
    ut.funDebug('File Path: ' + strMovieFile);

    try {
      try {
        // Declare New Camera Control
        ut.funDebug('funCameraStart 1');
        ctlCamera = CameraController(gv.cameras[1], ResolutionPreset.high);
        ut.funDebug('funCameraStart 2');
        await ctlCamera.initialize();
        // Sleep 500 milliseconds otherwise captured image is dark
        ut.funDebug('funCameraStart 3');
        try {
          await Thread.sleep(500);
        } catch (err) {
          ut.funDebug(
              'Thread Sleep Error in funCamera Start: ' + err.toString());
        }
        ;
        if (!mounted) {
          ut.showToast('1:' + ls.gs('SystemErrorOpenAgain'), true);
          return;
        }
        // Take Picture
        await ctlCamera.takePicture(
          gv.strHomeImageFileWithPath + '_01.jpg',
        );

        // Resize Picture
        ut.funDebug('Before Resize Picture in Camera Start');

        ImagePlugin.Image imageTemp;
        List<int> bytesTemp;
        bytesTemp =
            File(gv.strHomeImageFileWithPath + '_01.jpg').readAsBytesSync();
        imageTemp = ImagePlugin.decodeImage(bytesTemp);

        // Resize the image to a 120x? thumbnail (maintaining the aspect ratio).
        ImagePlugin.Image imageThumb = ImagePlugin.copyResize(imageTemp, 240);

        // Save the thumbnail as a JPG
        await File(gv.strHomeImageFileWithPath + '_01.jpg')
          ..writeAsBytesSync(ImagePlugin.encodeJpg(imageThumb));
        ut.funDebug('After Resize Picture in Camera Start');

        ctlCamera.startVideoRecording(strMovieFile);
        gv.timHomeCameraStart = DateTime.now().millisecondsSinceEpoch;
        gv.bolHomeRecording = true;
      } catch (err) {
        ut.showToast('2:' + ls.gs('SystemErrorOpenAgain'), true);
        ut.funDebug("Camera Init Error in funCameraStart: " + err.toString());
      }
    } catch (err) {
      ut.funDebug('funCamera Start Error 1: ' + err.toString());
    }
  }

  // Function Stop Camera
  void funCameraStop() async {
    ut.funDebug('funCamera Stop Begin');
    if (gv.bolHomeRecording) {
      gv.bolHomeRecording = false;
      int timHomeVideoEnd = DateTime.now().millisecondsSinceEpoch;
      int intVideoDuration =
          ((timHomeVideoEnd - gv.timHomeCameraStart) / 1000).toInt();
      if (intVideoDuration < 0) {
        // Don't cheat ME!!!
        intVideoDuration = 7200;
      }
      try {
        await ctlCamera.stopVideoRecording();
      } catch (err) {
        // ut.showToast('5:' + ls.gs('SystemErrorOpenAgain'), true);
      }
      try {
        await ctlCamera.takePicture(gv.strHomeImageFileWithPath + '_02.jpg');

        // Resize Picture
        ut.funDebug('Before Resize Picture in Camera Stop');

        ImagePlugin.Image imageTemp;
        List<int> bytesTemp;
        bytesTemp =
            File(gv.strHomeImageFileWithPath + '_02.jpg').readAsBytesSync();
        imageTemp = ImagePlugin.decodeImage(bytesTemp);

        // Resize the image to a 120x? thumbnail (maintaining the aspect ratio).
        ImagePlugin.Image imageThumb = ImagePlugin.copyResize(imageTemp, 240);

        // Save the thumbnail as a JPG
        await File(gv.strHomeImageFileWithPath + '_02.jpg')
          ..writeAsBytesSync(ImagePlugin.encodeJpg(imageThumb));
        ut.funDebug('After Resize Picture in Camera Stop');
      } catch (err) {
        // ut.showToast('5:' + ls.gs('SystemErrorOpenAgain'), true);
      }
      try {
        ctlCamera?.dispose();
      } catch (err) {}
    }
    ut.funDebug('funCameraStop End');
  }

  void funInitFirstTime() async {
    setState(() {});
  }

  Widget Body() {
    switch (gv.strHomeAction) {
      case 'ShowImage':
        Future.delayed(Duration(milliseconds: 10000), () async {
          gv.strHomeAction = 'Default';
          gv.storeHome.dispatch(Actions.Increment);
        });
        return Container(
          padding: EdgeInsets.all(0.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.network(gv.strHomeImageUrl, fit:BoxFit.cover),
                ),
              ],
            ),
          ),
        );
      case 'TTS':
        return Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(' '),
                Expanded(
                  child: Text(gv.strHomeTTS,
                      style:
                      TextStyle(fontSize: sv.dblDefaultFontSize * 2)),
                ),
                Text(' '),
              ],
            ),
          ),
        );
        break;
      default:
        return Container(
          padding: EdgeInsets.all(0.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/eye01.gif', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        );
        break;
    }
  }

  // Main Widget
  @override
  Widget build(BuildContext context) {
    try {
      if (intCountState == 1) {
        intCountState += 1;
        funInitFirstTime();
      }

      return Scaffold(
        body: Body(),
      );
    } catch (err) {
      ut.funDebug('PageHome Error build: ' + err.toString());
      return Container();
    }
  }
}
