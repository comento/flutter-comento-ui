import 'dart:io';

void main() {
  final svgDirectoryPath = './assets/icons/svg';
  final outputFilePath = './lib/src/components/icons/custom_icons_helper.dart';
  final directory = Directory(svgDirectoryPath);

  if (!directory.existsSync()) {
    print('SVG directory does not exist.');
    return;
  }

  final buffer = StringBuffer();

  buffer.write("""
import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

class CustomIconsHelper {
  CustomIconsHelper._();

  ///
  /// IconAlarmLargeLine 형식의 string을 받아서
  /// CustomIconData를 돌려주는 method
  ///
  static IconData getIcon(String icon) {
    final lowerCaseIcon = icon.toLowerCase();
    switch (lowerCaseIcon) {
""");

  final files = directory
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.svg'));

  for (var file in files) {
    final oldName = file.path.split(Platform.pathSeparator).last;
    if (isCamelCase(oldName.replaceAll('.svg', ''))) {
      continue;
    }
    final fileName = convertToDartNaming(oldName);
    final lowerCaseName = fileName.toLowerCase();

    buffer.writeln("      case '$lowerCaseName':");
    buffer.writeln('        return CustomIcons.$fileName;');
  }

  buffer.write("""
      default:
        return Icons.error;
    }
  }
}
""");

  File(outputFilePath).writeAsStringSync(buffer.toString());
  stdout.writeln('\x1b[34m ✅ CustomIconsHelper generated at $outputFilePath');
}

bool isCamelCase(String fileName) {
  final camelCasePattern = RegExp(r'^[a-z]+([A-Z][a-z0-9]*)*$');
  return camelCasePattern.hasMatch(fileName);
}

String convertToDartNaming(String fileName) {
  fileName = fileName.replaceAll('.svg', '');
  fileName =
      fileName.replaceAll(RegExp(r'[^a-zA-Z0-9]'), ' '); // 모든 특수 문자를 공백으로 대체
  List<String> parts = fileName.split(RegExp(r'\s+')); // 하나 이상의 공백을 기준으로 나누기

  // 각 단어의 첫 글자를 대문자로 변환 (첫 단어 제외)
  for (int i = 0; i < parts.length; i++) {
    if (parts[i].isNotEmpty) {
      if (i == 0) {
        parts[i] = parts[i][0].toLowerCase() + parts[i].substring(1);
      } else {
        parts[i] = parts[i][0].toUpperCase() + parts[i].substring(1);
      }
    }
  }

  // 첫 단어는 소문자로 변환
  if (parts.isNotEmpty) {
    parts[0] = parts[0][0].toLowerCase() + parts[0].substring(1);
  }

  String camelCaseName = parts.join('');

  return camelCaseName;
}
