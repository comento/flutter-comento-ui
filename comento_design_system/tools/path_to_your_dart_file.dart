import 'dart:io';

void main() {
  final directoryPath = './assets/icons/svg'; // SVG 파일들이 위치한 디렉토리 경로
  final directory = Directory(directoryPath);

  if (!directory.existsSync()) {
    print('Directory does not exist.');
    return;
  }

  final files = directory.listSync();
  for (var file in files) {
    if (file is File && file.path.endsWith('.svg')) {
      final oldName = file.path.split(Platform.pathSeparator).last;
      if (isCamelCase(oldName.replaceAll('.svg', ''))) {
        continue;
      }
      final newName = convertToDartNaming(oldName);

      final newPath = '${directory.path}${Platform.pathSeparator}$newName';
      file.renameSync(newPath);
      stdout.writeln('\x1b[34m ✅ 🤟Renamed: $oldName -> $newName');
    }
  }
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

  // lowerCamelCase로 변환
  String camelCaseName = parts.join('');

  return camelCaseName + '.svg';
}
