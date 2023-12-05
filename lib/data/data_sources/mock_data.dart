
List<Map<String, dynamic>> orders = [
  ...List.generate(
      6,
      (i) => {
            'image': "",
            'postFee': "",
            'lastMile': "",
            'weight': "",
            'receiptNum': "",
            'postFrom': "",
            'eta': DateTime.now().toIso8601String(),
          }).toList()
];
List<Map<String, dynamic>> trackingHistory = [
  ...List.generate(
      6,
      (index) => {
            'order': {
              'image': "",
              'postFee': "",
              'lastMile': "",
              'weight': "",
              'receiptNum': "",
              'postFrom': "",
              'eta': DateTime.now().toIso8601String(),
            },
            'fromLang': "",
            'fromLat': "",
            'status': "",
            'toLang': "",
            'toLat': "",
          }).toList()
];

List<Map<String, dynamic>> products = [...List.generate(6, (index) => {"image":"asset/image/"})];
