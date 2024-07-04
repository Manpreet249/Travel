import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

DateTime? getDateTimeAgo() {
  final now = DateTime.now();
  final tenYearsAgo = DateTime(now.year - 10, now.month, now.day);
  return tenYearsAgo;
}

List<dynamic> countryList(String? search) {
  final baseUrl = "https://flagpedia.net/data/flags/h80/";
  final countries = [
    {"countryName": "India", "flag": "${baseUrl}in.png", "dialCode": "+91"},
    {"countryName": "Australia", "flag": "${baseUrl}au.png", "dialCode": "+61"},
    {
      "countryName": "United States",
      "flag": "${baseUrl}us.png",
      "dialCode": "+1"
    },
    {
      "countryName": "United Kingdom",
      "flag": "${baseUrl}gb.png",
      "dialCode": "+44"
    },
    {"countryName": "Canada", "flag": "${baseUrl}ca.png", "dialCode": "+1"},
    {"countryName": "Germany", "flag": "${baseUrl}de.png", "dialCode": "+49"},
    {"countryName": "France", "flag": "${baseUrl}fr.png", "dialCode": "+33"},
    {"countryName": "Italy", "flag": "${baseUrl}it.png", "dialCode": "+39"},
    {"countryName": "Brazil", "flag": "${baseUrl}br.png", "dialCode": "+55"},
    {"countryName": "China", "flag": "${baseUrl}cn.png", "dialCode": "+86"},
    {"countryName": "Japan", "flag": "${baseUrl}jp.png", "dialCode": "+81"},
    {"countryName": "Mexico", "flag": "${baseUrl}mx.png", "dialCode": "+52"},
    {
      "countryName": "South Africa",
      "flag": "${baseUrl}za.png",
      "dialCode": "+27"
    },
    {"countryName": "Russia", "flag": "${baseUrl}ru.png", "dialCode": "+7"},
    {
      "countryName": "Saudi Arabia",
      "flag": "${baseUrl}sa.png",
      "dialCode": "+966"
    },
    {
      "countryName": "South Korea",
      "flag": "${baseUrl}kr.png",
      "dialCode": "+82"
    },
    {"countryName": "Spain", "flag": "${baseUrl}es.png", "dialCode": "+34"},
    {"countryName": "Turkey", "flag": "${baseUrl}tr.png", "dialCode": "+90"},
    {"countryName": "Argentina", "flag": "${baseUrl}ar.png", "dialCode": "+54"},
    {"countryName": "Egypt", "flag": "${baseUrl}eg.png", "dialCode": "+20"},
    {
      "countryName": "Netherlands",
      "flag": "${baseUrl}nl.png",
      "dialCode": "+31"
    },
    {"countryName": "Belgium", "flag": "${baseUrl}be.png", "dialCode": "+32"},
    {
      "countryName": "Switzerland",
      "flag": "${baseUrl}ch.png",
      "dialCode": "+41"
    },
    {"countryName": "Sweden", "flag": "${baseUrl}se.png", "dialCode": "+46"},
    {"countryName": "Norway", "flag": "${baseUrl}no.png", "dialCode": "+47"},
    {"countryName": "Denmark", "flag": "${baseUrl}dk.png", "dialCode": "+45"},
    {"countryName": "Finland", "flag": "${baseUrl}fi.png", "dialCode": "+358"},
    {"countryName": "Austria", "flag": "${baseUrl}at.png", "dialCode": "+43"},
    {"countryName": "Greece", "flag": "${baseUrl}gr.png", "dialCode": "+30"},
    {"countryName": "Portugal", "flag": "${baseUrl}pt.png", "dialCode": "+351"},
    {"countryName": "Poland", "flag": "${baseUrl}pl.png", "dialCode": "+48"},
    {"countryName": "Ireland", "flag": "${baseUrl}ie.png", "dialCode": "+353"},
    {
      "countryName": "New Zealand",
      "flag": "${baseUrl}nz.png",
      "dialCode": "+64"
    },
    {"countryName": "Singapore", "flag": "${baseUrl}sg.png", "dialCode": "+65"},
    {"countryName": "Malaysia", "flag": "${baseUrl}my.png", "dialCode": "+60"},
    {"countryName": "Indonesia", "flag": "${baseUrl}id.png", "dialCode": "+62"},
    {"countryName": "Thailand", "flag": "${baseUrl}th.png", "dialCode": "+66"},
    {"countryName": "Vietnam", "flag": "${baseUrl}vn.png", "dialCode": "+84"},
    {
      "countryName": "Philippines",
      "flag": "${baseUrl}ph.png",
      "dialCode": "+63"
    },
    {"countryName": "Pakistan", "flag": "${baseUrl}pk.png", "dialCode": "+92"},
    {
      "countryName": "Bangladesh",
      "flag": "${baseUrl}bd.png",
      "dialCode": "+880"
    },
    {"countryName": "Sri Lanka", "flag": "${baseUrl}lk.png", "dialCode": "+94"},
    {"countryName": "Nepal", "flag": "${baseUrl}np.png", "dialCode": "+977"},
    {
      "countryName": "Afghanistan",
      "flag": "${baseUrl}af.png",
      "dialCode": "+93"
    },
    {"countryName": "Iran", "flag": "${baseUrl}ir.png", "dialCode": "+98"},
    {"countryName": "Iraq", "flag": "${baseUrl}iq.png", "dialCode": "+964"},
    {"countryName": "Syria", "flag": "${baseUrl}sy.png", "dialCode": "+963"},
    {"countryName": "Lebanon", "flag": "${baseUrl}lb.png", "dialCode": "+961"},
    {"countryName": "Jordan", "flag": "${baseUrl}jo.png", "dialCode": "+962"},
    {"countryName": "Israel", "flag": "${baseUrl}il.png", "dialCode": "+972"},
    {
      "countryName": "Palestine",
      "flag": "${baseUrl}ps.png",
      "dialCode": "+970"
    },
    {"countryName": "Qatar", "flag": "${baseUrl}qa.png", "dialCode": "+974"},
    {"countryName": "Kuwait", "flag": "${baseUrl}kw.png", "dialCode": "+965"},
    {"countryName": "Oman", "flag": "${baseUrl}om.png", "dialCode": "+968"},
    {"countryName": "Bahrain", "flag": "${baseUrl}bh.png", "dialCode": "+973"},
    {"countryName": "Yemen", "flag": "${baseUrl}ye.png", "dialCode": "+967"},
    {"countryName": "UAE", "flag": "${baseUrl}ae.png", "dialCode": "+971"},
    {"countryName": "Algeria", "flag": "${baseUrl}dz.png", "dialCode": "+213"},
    {"countryName": "Morocco", "flag": "${baseUrl}ma.png", "dialCode": "+212"},
    {"countryName": "Tunisia", "flag": "${baseUrl}tn.png", "dialCode": "+216"},
    {"countryName": "Libya", "flag": "${baseUrl}ly.png", "dialCode": "+218"},
    {"countryName": "Sudan", "flag": "${baseUrl}sd.png", "dialCode": "+249"},
    {"countryName": "Ethiopia", "flag": "${baseUrl}et.png", "dialCode": "+251"},
    {"countryName": "Kenya", "flag": "${baseUrl}ke.png", "dialCode": "+254"},
    {"countryName": "Nigeria", "flag": "${baseUrl}ng.png", "dialCode": "+234"},
    {"countryName": "Ghana", "flag": "${baseUrl}gh.png", "dialCode": "+233"},
    {
      "countryName": "South Africa",
      "flag": "${baseUrl}za.png",
      "dialCode": "+27"
    },
    {"countryName": "Cameroon", "flag": "${baseUrl}cm.png", "dialCode": "+237"},
    {"countryName": "Senegal", "flag": "${baseUrl}sn.png", "dialCode": "+221"},
    {
      "countryName": "Ivory Coast",
      "flag": "${baseUrl}ci.png",
      "dialCode": "+225"
    },
    {"countryName": "Angola", "flag": "${baseUrl}ao.png", "dialCode": "+244"},
    {"countryName": "Zimbabwe", "flag": "${baseUrl}zw.png", "dialCode": "+263"},
    {"countryName": "Uganda", "flag": "${baseUrl}ug.png", "dialCode": "+256"},
    {"countryName": "Tanzania", "flag": "${baseUrl}tz.png", "dialCode": "+255"},
    {"countryName": "Zambia", "flag": "${baseUrl}zm.png", "dialCode": "+260"},
    {"countryName": "Rwanda", "flag": "${baseUrl}rw.png", "dialCode": "+250"},
    {"countryName": "Botswana", "flag": "${baseUrl}bw.png", "dialCode": "+267"},
    {"countryName": "Namibia", "flag": "${baseUrl}na.png", "dialCode": "+264"},
    {
      "countryName": "Mozambique",
      "flag": "${baseUrl}mz.png",
      "dialCode": "+258"
    },
    {
      "countryName": "Madagascar",
      "flag": "${baseUrl}mg.png",
      "dialCode": "+261"
    },
    {
      "countryName": "Mauritius",
      "flag": "${baseUrl}mu.png",
      "dialCode": "+230"
    },
    {"countryName": "Morocco", "flag": "${baseUrl}ma.png", "dialCode": "+212"},
    {
      "countryName": "Seychelles",
      "flag": "${baseUrl}sc.png",
      "dialCode": "+248"
    },
    {"countryName": "Fiji", "flag": "${baseUrl}fj.png", "dialCode": "+679"},
    {
      "countryName": "Papua New Guinea",
      "flag": "${baseUrl}pg.png",
      "dialCode": "+675"
    },
    {
      "countryName": "Solomon Islands",
      "flag": "${baseUrl}sb.png",
      "dialCode": "+677"
    },
    {"countryName": "Vanuatu", "flag": "${baseUrl}vu.png", "dialCode": "+678"},
    {"countryName": "Samoa", "flag": "${baseUrl}ws.png", "dialCode": "+685"},
    {"countryName": "Tonga", "flag": "${baseUrl}to.png", "dialCode": "+676"},
    {"countryName": "Kiribati", "flag": "${baseUrl}ki.png", "dialCode": "+686"},
    {"countryName": "Tuvalu", "flag": "${baseUrl}tv.png", "dialCode": "+688"},
    {
      "countryName": "Cook Islands",
      "flag": "${baseUrl}ck.png",
      "dialCode": "+682"
    },
    {"countryName": "Nauru", "flag": "${baseUrl}nr.png", "dialCode": "+674"},
    {
      "countryName": "Marshall Islands",
      "flag": "${baseUrl}mh.png",
      "dialCode": "+692"
    },
    {
      "countryName": "Micronesia",
      "flag": "${baseUrl}fm.png",
      "dialCode": "+691"
    },
    {"countryName": "Palau", "flag": "${baseUrl}pw.png", "dialCode": "+680"},
    {
      "countryName": "Grenada",
      "flag": "${baseUrl}gd.png",
      "dialCode": "+1-473"
    },
    {
      "countryName": "Jamaica",
      "flag": "${baseUrl}jm.png",
      "dialCode": "+1-876"
    },
    {
      "countryName": "Trinidad and Tobago",
      "flag": "${baseUrl}tt.png",
      "dialCode": "+1-868"
    },
    {
      "countryName": "Barbados",
      "flag": "${baseUrl}bb.png",
      "dialCode": "+1-246"
    },
    {
      "countryName": "Saint Lucia",
      "flag": "${baseUrl}lc.png",
      "dialCode": "+1-758"
    },
    {
      "countryName": "Antigua and Barbuda",
      "flag": "${baseUrl}ag.png",
      "dialCode": "+1-268"
    },
    {
      "countryName": "Dominica",
      "flag": "${baseUrl}dm.png",
      "dialCode": "+1-767"
    },
  ];

  if (search != null && search != "") {
    List<dynamic> filteredItems = countries.where((item) {
      final countryName = item["countryName"];
      return countryName != null &&
          countryName.toLowerCase().contains(search.toLowerCase());
    }).toList();

    return filteredItems;
  } else {
    return countries;
  }
}

String? signUpValidation(
  String? firstName,
  String? lastName,
  String? email,
  String? dob,
  String? address,
  String? password,
  bool? checkBoxValue,
) {
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  if (firstName == null || firstName.isEmpty) {
    return "Please enter firstName";
  } else if (firstName.length <= 2) {
    return "FirstName must be at least  3 characters long.";
  } else if (lastName == null || lastName.isEmpty) {
    return "Please enter firstName";
  } else if (lastName.length <= 2) {
    return "LastName must be at least  3 characters long.";
  } else if (email == null || email.isEmpty) {
    return "Please enter email address";
  } else if (!emailRegex.hasMatch(email)) {
    return "Please enter valid email address";
  } else if (dob == null || dob.isEmpty) {
    return "Please enter dob";
  } else if (address == null || address.isEmpty) {
    return "Please enter address";
  } else if (password == null || password.isEmpty) {
    return "Please enter password";
  } else if (password.length < 6) {
    return "Password must be at least 6 characters long";
  } else if (checkBoxValue == false) {
    return "Please select  Terms & Conditions";
  }
  return "Validation successful";
}

String? loginValidation(
  String? email,
  String? password,
) {
  if (email == null || email.isEmpty) {
    return "Please enter email address";
  } else if (password == null || password.isEmpty) {
    return "Please enter password";
  }
  return "Validation successful";
}

String? convertTimeStampToLocalTime(String? timeStamp) {
  if (timeStamp == null) {
    return 'Invalid timestamp';
  }

  try {
    // Convert the timestamp string to an integer
    int timeStampMillis = int.parse(timeStamp);

    // Create a DateTime object from the timestamp
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(timeStampMillis).toLocal();

    // Format the time
    String formattedTime =
        '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';

    return formattedTime;
  } catch (e) {
    return 'Invalid timestamp format';
  }
}

String? formatToOneDecimal(String rating) {
  double averageRating = double.parse(rating);
  return averageRating.toStringAsFixed(1);
}

String? getGender(int gender) {
  if (gender == 1) {
    return "Men";
  } else if (gender == 2) {
    return "Women";
  } else {
    return "Co-ed";
  }
}
