import os
import re

def replace_in_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    # import 문 추가
    content = content.replace(
        "import 'package:flutter/widgets.dart';",
        "import 'package:flutter/widgets.dart';\nimport 'package:comento_design_system/src/strings.dart';"
    )

    # packageName 설정
    content = content.replace(
        "static const String? _kFontPkg = null;",
        "static const String? _kFontPkg = packageName;"
    )

    with open(file_path, 'w', encoding='utf-8') as file:
        file.write(content)

if __name__ == "__main__":
    file_path = "./lib/src/components/icons/custom_icons.dart"
    if os.path.exists(file_path):
        replace_in_file(file_path)
    else:
        print(f"File {file_path} does not exist.")
