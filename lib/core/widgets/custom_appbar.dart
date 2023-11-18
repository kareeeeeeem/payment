import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

  AppBar buildAppBar ({ final String? title}) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title?? '  ',
        textAlign: TextAlign.center,
        style: Styles.style25,
      ),
    );
  }

