import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

enum CdsSize {
  xSmall,
  small,
  medium,
  large,
  xLarge,
}

enum CdsType {
  fill,
  outlined,
}

enum CdsClickableChipType {
  fill,
  outline,
  transparent,
}

enum CdsChipColor {
  blue,
  grey,
  green,
  red,
  orange;

  Color get contentsColor {
    switch (this) {
      case CdsChipColor.blue:
        return CdsColors.blue600;
      case CdsChipColor.grey:
        return CdsColors.grey700;
      case CdsChipColor.green:
        return CdsColors.green600;
      case CdsChipColor.red:
        return CdsColors.red600;
      case CdsChipColor.orange:
        return CdsColors.orange600;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case CdsChipColor.blue:
        return CdsColors.blue050;
      case CdsChipColor.grey:
        return CdsColors.grey100;
      case CdsChipColor.green:
        return CdsColors.green050;
      case CdsChipColor.red:
        return CdsColors.red050;
      case CdsChipColor.orange:
        return CdsColors.orange050;
    }
  }

  Color get transparentBackgroundColor {
    switch (this) {
      case CdsChipColor.blue:
        return CdsColors.blue600.withOpacity(0.06);
      case CdsChipColor.grey:
        return CdsColors.grey600.withOpacity(0.06);
      case CdsChipColor.green:
        return CdsColors.green600.withOpacity(0.06);
      case CdsChipColor.red:
        return CdsColors.red600.withOpacity(0.06);
      case CdsChipColor.orange:
        return CdsColors.orange600.withOpacity(0.06);
    }
  }

  Color get informativeBorderColor {
    switch (this) {
      case CdsChipColor.blue:
        return CdsColors.blue400;
      case CdsChipColor.grey:
        return CdsColors.grey400;
      case CdsChipColor.green:
        return CdsColors.green400;
      case CdsChipColor.red:
        return CdsColors.red400;
      case CdsChipColor.orange:
        return CdsColors.orange400;
    }
  }

  Color get clickableBorderColor {
    switch (this) {
      case CdsChipColor.blue:
        return CdsColors.blue400;
      case CdsChipColor.grey:
        return CdsColors.grey300;
      case CdsChipColor.green:
        return CdsColors.green400;
      case CdsChipColor.red:
        return CdsColors.red400;
      case CdsChipColor.orange:
        return CdsColors.orange400;
    }
  }
}

enum CdsChipSize {
  small,
  medium,
  large,
  xLarge;

  double get height {
    switch (this) {
      case CdsChipSize.small:
        return 18;
      case CdsChipSize.medium:
        return 23;
      case CdsChipSize.large:
        return 32;
      case CdsChipSize.xLarge:
        return 36;
    }
  }

  double get clickableHeight {
    switch (this) {
      case CdsChipSize.small:
      case CdsChipSize.medium:
        return 26;
      case CdsChipSize.large:
        return 32;
      case CdsChipSize.xLarge:
        return 36;
    }
  }

  double get textHeight {
    switch (this) {
      case CdsChipSize.small:
        return 1;
      case CdsChipSize.medium:
        return 1.2;
      case CdsChipSize.large:
        return 1.4;
      case CdsChipSize.xLarge:
        return 1.54;
    }
  }

  double get fontSize {
    switch (this) {
      case CdsChipSize.small:
        return 10;
      case CdsChipSize.medium:
        return 12;
      case CdsChipSize.large:
        return 14;
      case CdsChipSize.xLarge:
        return 16;
    }
  }

  FontWeight get fontWeigt {
    switch (this) {
      case CdsChipSize.small:
      case CdsChipSize.medium:
        return FontWeight.w600;
      case CdsChipSize.large:
      case CdsChipSize.xLarge:
        return FontWeight.w500;
    }
  }

  EdgeInsets get padding {
    switch (this) {
      case CdsChipSize.small:
        return EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 2.5,
        );
      case CdsChipSize.medium:
        return EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        );
      case CdsChipSize.large:
        return EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        );
      case CdsChipSize.xLarge:
        return EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 5.5,
        );
    }
  }

  EdgeInsets get informativeHorizontalPadding {
    switch (this) {
      case CdsChipSize.small:
        return EdgeInsets.symmetric(
          horizontal: 4,
        );
      case CdsChipSize.medium:
        return EdgeInsets.symmetric(
          horizontal: 8,
        );
      case CdsChipSize.large:
        return EdgeInsets.symmetric(
          horizontal: 10,
        );
      case CdsChipSize.xLarge:
        return EdgeInsets.symmetric(
          horizontal: 12,
        );
    }
  }

  EdgeInsets get clickableHorizontalPadding {
    switch (this) {
      case CdsChipSize.small:
      case CdsChipSize.medium:
        return EdgeInsets.symmetric(
          horizontal: 10,
        );
      case CdsChipSize.large:
        return EdgeInsets.symmetric(
          horizontal: 12,
        );
      case CdsChipSize.xLarge:
        return EdgeInsets.symmetric(
          horizontal: 14,
        );
    }
  }

  BorderRadius get borderRadius {
    switch (this) {
      case CdsChipSize.small:
        return BorderRadius.circular(4);
      case CdsChipSize.medium:
        return BorderRadius.circular(6);
      case CdsChipSize.large:
        return BorderRadius.circular(6);
      case CdsChipSize.xLarge:
        return BorderRadius.circular(8);
    }
  }

  BorderRadius get roundedBorderRadius {
    switch (this) {
      case CdsChipSize.small:
      case CdsChipSize.medium:
        return BorderRadius.circular(14);
      case CdsChipSize.large:
        return BorderRadius.circular(16);
      case CdsChipSize.xLarge:
        return BorderRadius.circular(18);
    }
  }

  double get iconMargin {
    switch (this) {
      case CdsChipSize.small:
      case CdsChipSize.medium:
        return 2;
      case CdsChipSize.large:
      case CdsChipSize.xLarge:
        return 4;
    }
  }

  double get iconSize {
    switch (this) {
      case CdsChipSize.small:
        return 0;
      case CdsChipSize.medium:
        return 12;
      case CdsChipSize.large:
      case CdsChipSize.xLarge:
        return 16;
    }
  }
}
