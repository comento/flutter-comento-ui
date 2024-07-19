import 'dart:io';

void main() {
  final svgDirectoryPath = './assets/icons/svg'; // SVG 파일들이 위치한 디렉토리 경로
  final outputFilePath =
      './lib/src/components/icons/custom_icons_helper.dart'; // 생성할 파일 경로
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
    final fileName =
        file.path.split(Platform.pathSeparator).last.replaceAll('.svg', '');
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
