import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
part 'about_page_controller.g.dart';

class AboutPageController = AboutPageControllerBase with _$AboutPageController;

abstract class AboutPageControllerBase with Store {
  @action
  bool openApodWebsite() {
    try {
      launchUrl(Uri.parse('https://apod.nasa.gov/apod/'));
      return true;
    } catch (e) {
      debugPrint('Failed to launch URL: $e');
      return false;
    }
  }
}
