import 'package:comento_design_system/comento_design_system.dart';
import 'package:flutter/material.dart';

/// close icon이 존재하는 경우 [onCloseTap] 함수를 넣어주면 됩니다.
/// 코멘토 앱 디자인 시스템 정책상 informativeChip의 rightIcon은 오직 close icon만 가능합니다.
/// https://www.figma.com/design/9KXDsREDRTQKTbUlrkhb2y/%F0%9F%8D%8EApp-design-system_comento?node-id=503-1289&t=88Um1zPKn9WUD3Nf-1
class CdsInformativeChip extends StatelessWidget {
  final String text;
  final CdsType type;
  final CdsChipColor color;
  final CdsChipSize size;
  final IconData? leftIcon;
  final void Function()? onCloseTap;

  const CdsInformativeChip(
    this.text, {
    required this.type,
    required this.color,
    required this.size,
    this.leftIcon,
    this.onCloseTap,
  }) : assert(onCloseTap != null && leftIcon == null ||
            leftIcon != null && onCloseTap == null ||
            onCloseTap == null && leftIcon == null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCloseTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: size.informativeHorizontalPadding,
        height: size.height,
        decoration: getDecorationByType(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leftIcon != null) ...[
              Icon(
                leftIcon,
                size: size.iconSize,
                color: color.contentsColor,
              ),
              SizedBox(
                width: size.iconMargin,
              ),
            ],
            Text(
              text,
              style: TextStyle(
                color: color.contentsColor,
                fontSize: size.fontSize,
                fontWeight: size.fontWeigt,
                height: 1.2,
              ),
            ),
            if (onCloseTap != null) ...[
              SizedBox(
                width: size.iconMargin,
              ),
              GestureDetector(
                onTap: onCloseTap,
                child: Icon(
                  size == CdsChipSize.medium
                      ? CustomIcons.icon_close_small_line
                      : CustomIcons.icon_close_medium_line,
                  size: size.iconSize,
                  color: color.contentsColor,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  BoxDecoration getDecorationByType() {
    switch (type) {
      case CdsType.fill:
        return BoxDecoration(
          color: color.backgroundColor,
          borderRadius: size.borderRadius,
        );
      case CdsType.outlined:
        return BoxDecoration(
          color: Colors.transparent,
          borderRadius: size.borderRadius,
          border: Border.all(
            color: color.informativeBorderColor,
            width: 1,
          ),
        );
    }
  }
}
