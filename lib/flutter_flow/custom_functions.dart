import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double prodTotal(
  double price,
  int quantity,
) {
  return price * quantity;
}

int counterAdd(int minValue) {
  return minValue++;
}

int counterMinus(int number) {
  return number--;
}

double totalAmt(List<double> cartList) {
  double sum = 0;

  for (var i in cartList) {
    sum = sum + i;
  }
  return sum;
}
