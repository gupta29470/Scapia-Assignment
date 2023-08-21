import 'dart:math';

class RefundData {
  static List<String> cancellationTexts = [
    "Till 05th Jun'23, 02:00 PM",
    "From 05th Jun'23, 02:00 PM, till 08th Jun'23, 08:00 PM",
    "Till 05th Jun'23, 02:00 PM",
    "From 05th Jun'23, 02:00 PM, till 08th Jun'23, 08:00 PM",
  ];
  static List<String> chargesTexts = [
    "₹ 0",
    "100% of the book amount will be charged",
    "₹ 0",
    "100% of the book amount will be charged",
  ];

  static int get refundDataMaxLength => max(
        cancellationTexts.length,
        chargesTexts.length,
      );
}
