import 'dart:io';

void main() {
  final iconsFilePath =
      './lib/src/components/icons/custom_icons.dart'; // custom_icons.dart 파일 경로

  final file = File(iconsFilePath);

  if (!file.existsSync()) {
    print('custom_icons.dart does not exist.');
    return;
  }

  String content = file.readAsStringSync();

  if (content.contains("import 'package:flutter/material.dart';")) {
    content = content.replaceFirst("import 'package:flutter/material.dart';",
        "import 'package:flutter/widgets.dart';");
  }

  // import 문 추가
  if (!content
      .contains("import 'package:comento_design_system/src/strings.dart';\n")) {
    content =
        "import 'package:comento_design_system/src/strings.dart';\n" + content;
  }

  // _kFontPkg 추가
  if (!content.contains('static const String? _kFontPkg = packageName;')) {
    content = content.replaceFirst('CustomIcons._();',
        'CustomIcons._();\n\n  static const String? _kFontPkg = packageName;');
  }

  // IconData 정의 수정: fontFamily 뒤에 fontPackage 추가
  content = content.replaceAll(
    RegExp(r'fontFamily: fontFamily\)'),
    'fontFamily: fontFamily, fontPackage: _kFontPkg)',
  );

  file.writeAsStringSync(content);
  print('custom_icons.dart updated at $iconsFilePath');
}
