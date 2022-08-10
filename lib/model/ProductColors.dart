class ProductColors {
  ProductColors({
      this.hexValue,
      this.colourName,});

  ProductColors.fromJson(dynamic json) {
    hexValue = json['hex_value'];
    colourName = json['colour_name'];
  }
  String? hexValue;
  String? colourName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hex_value'] = hexValue;
    map['colour_name'] = colourName;
    return map;
  }

}