import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
    
  void showEOLAlert(BuildContext context) {
    Alert(
      context: context,
      title: 'Completed',
      desc: 'You have seen All Countries',
    ).show();
  }
