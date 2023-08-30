import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:scapia_assignment/common/constants/string_constants.dart';

class RefundKeys {
  static Map<String, GlobalKey> cancellationTextKeys = {};
  static Map<String, GlobalKey> chargesTextKeys = {};

  static void setCancellationTextKey(int index) {
    cancellationTextKeys["${StringConstants.cancellationTextKey}$index"] =
        GlobalKey();
  }

  static GlobalKey getCancellationTextKey(int index) {
    if (cancellationTextKeys
        .containsKey("${StringConstants.cancellationTextKey}$index")) {
      return cancellationTextKeys[
          "${StringConstants.cancellationTextKey}$index"]!;
    } else {
      setCancellationTextKey(index);
      return cancellationTextKeys[
          "${StringConstants.cancellationTextKey}$index"]!;
    }
  }

  static void setChargesTextKey(int index) {
    chargesTextKeys["${StringConstants.chargesTextKey}$index"] = GlobalKey();
  }

  static GlobalKey getChargesTextKey(int index) {
    if (chargesTextKeys
        .containsKey("${StringConstants.chargesTextKey}$index")) {
      return chargesTextKeys["${StringConstants.chargesTextKey}$index"]!;
    } else {
      setChargesTextKey(index);
      return chargesTextKeys["${StringConstants.chargesTextKey}$index"]!;
    }
  }

  static double cancellationTextHeight(int index, String source) {
    if (cancellationTextKeys
        .containsKey("${StringConstants.cancellationTextKey}$index")) {
      RenderBox? renderBox = getCancellationTextKey(index)
          .currentContext
          ?.findRenderObject() as RenderBox?;
      print("DESI 1: ${renderBox?.size.height}$index$source");
      return renderBox?.size.height ?? 80;
    }
    return 80;
  }

  static double chargesTextHeight(int index) {
    if (chargesTextKeys
        .containsKey("${StringConstants.chargesTextKey}$index")) {
      RenderBox? renderBox = getChargesTextKey(index)
          .currentContext
          ?.findRenderObject() as RenderBox?;
      print("DESI 2: ${renderBox?.size.height}$index");
      return renderBox?.size.height ?? 80;
    }
    return 80;
  }

  static double maxTextHeight(int index) {
    double maximum = max(
      cancellationTextHeight(index, "self"),
      chargesTextHeight(index),
    );

    return maximum;
  }
}
