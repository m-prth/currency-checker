import 'dart:io';

import 'package:currency_checker/team_page.dart';
import 'package:currency_checker/utils/currency_check.dart';
import 'package:currency_checker/utils/rect_button.dart';
import 'package:currency_checker/utils/square_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variables
  bool _loading = true;
  File _image;
  List _output;
  final picker = ImagePicker();

  //methods
  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {
        print('Model Loaded!');
      });
    });
  }

  _launchURL() async {
    if (await canLaunch(CurrencyCheck.guidelines_URL)) {
      await launch(CurrencyCheck.guidelines_URL);
    } else {
      throw 'Could not launch URL';
    }
  }

  pickCameraImage() async {
    var image = await picker.getImage(source: ImageSource.camera);
    if (image = null) return null;
    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  classifyImage(File image) async {
    print("!!!!!!");
    print(_output);
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.5,
        imageMean: 127.6,
        imageStd: 127.5);
    setState(() {
      _output = output;
      _loading = false;
    });
    print(_loading);
  }

  pickGalleryImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/model.tflite', labels: 'assets/labels.txt');
  }

  @override
  // ignore: must_call_super
  void dispose() {
    Tflite.close();
  }

  _reset() {
    setState(() {
      _loading = true;
      _output = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CurrencyCheck.bgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  CurrencyCheck.app_title,
                  style: CurrencyCheck.headingStyle,
                ),
              ),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(5, 9), // changes position of shadow
                    ),
                  ],
                ),
                child: _loading
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image.asset(
                          CurrencyCheck.bannerPath2,
                        ),
                      )
                    : Container(
                        child: Column(
                          children: [
                            Container(
                              height: 250,
                              child: Image.file(_image),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            _output != null
                                ? Text(
                                    '${_output[0]['label']}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                : Container(),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                padding: const EdgeInsets.all(45.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SquareButton(
                          myIcon: CurrencyCheck.camera_icon,
                          text: CurrencyCheck.camera_button_text,
                          onPressed: pickCameraImage,
                        ),
                        SquareButton(
                          myIcon: CurrencyCheck.gallery_icon,
                          text: CurrencyCheck.gallery_button_text,
                          onPressed: pickGalleryImage,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RectButton(
                      color: CurrencyCheck.resetButtonColor,
                      text: CurrencyCheck.reset_button_text,
                      icon: CurrencyCheck.reset_icon,
                      onPressed: _reset,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RectButton(
                      color: CurrencyCheck.rbiButtonColor,
                      text: CurrencyCheck.rbi_button,
                      icon: CurrencyCheck.right_arrow,
                      onPressed: _launchURL,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RectButton(
                      text: CurrencyCheck.team_button,
                      color: CurrencyCheck.teamButtonColor,
                      icon: CurrencyCheck.team_info_icon,
                      onPressed: () =>
                          Navigator.pushNamed(context, TeamPage.routeName),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
