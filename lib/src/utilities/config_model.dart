class ConfigModel {
  bool? darkMode;
  Map<String, dynamic>? colors;
  Map<String, dynamic>? spacers;
  Map<String, dynamic>? fontSizes;
  Map<String, dynamic>? opacity;

  ConfigModel({
    this.darkMode,
    this.colors,
    this.spacers,
    this.fontSizes,
    this.opacity,
  });

  factory ConfigModel.fromJson(Map<String, dynamic> json) => ConfigModel(
        darkMode: json['darkMode'] == null ? false : json['darkMode'] == true,
        colors: json['colors'] == null ? null : json['colors'],
        spacers: json['spacers'] == null ? null : json['spacers'],
        fontSizes: json['fontSizes'] == null ? null : json['fontSizes'],
        opacity: json['opacity'] == null ? null : json['opacity'],
      );

  Map<String, dynamic> toJson() => {
        "darkMode": darkMode == null ? false : darkMode,
        "colors": colors == null ? {} : colors,
        "spacers": spacers == null ? {} : spacers,
        "fontSizes": fontSizes == null ? {} : fontSizes,
        "opacity": opacity == null ? {} : opacity,
      };
}
