import 'package:admin_panel/constants.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';

class ProfileCardController extends ChangeNotifier {
  final GlobalKey _actionKey = LabeledGlobalKey('ProfileCardGlobalKey');
  bool _isDropdownOpen = false;
  bool get isDropdownOpen => _isDropdownOpen;
  double? _height, _width, _xPosition, _yPosition;
  OverlayEntry? _floatingDropdown;

  GlobalKey get actionKey => _actionKey;

  double? get height => _height;
  double? get width => _width;
  double? get xPosition => _xPosition;
  double? get yPosition => _yPosition;

  void toggleDropdown(BuildContext context) {
    if (_isDropdownOpen) {
      _floatingDropdown!.remove();
    } else {
      final RenderBox renderBox = _actionKey.currentContext!.findRenderObject() as RenderBox;
      _height = renderBox.size.height;
      _width = renderBox.size.width;
      Offset offset = renderBox.localToGlobal(Offset.zero);
      _xPosition = offset.dx;
      _yPosition = offset.dy;
/*       print(_height);
      print(_width);
      print(_xPosition);
      print(_yPosition);
      print(MediaQuery.of(context).size.width);
      print(MediaQuery.of(context).size.width - width!); */
      _floatingDropdown = _createFloatingDropdown(context);
      Overlay.of(context)!.insert(_floatingDropdown!);
    }
    _isDropdownOpen = !_isDropdownOpen;
    notifyListeners();
  }

  OverlayEntry _createFloatingDropdown(BuildContext context) {
    return OverlayEntry(builder: (context) {
      double? _boxWidth;
      double? _boxLeft;

      _boxLeft = (xPosition! + width! + defaultPadding * 3) - MediaQuery.of(context).size.width;

      if (Responsive.isMobile(context)) {
        _boxWidth = width! * 4;
      }
      if (Responsive.isDesktop(context)) {
        _boxWidth = width! * 2;
      }
      if (Responsive.isTablet(context)) {
        _boxWidth = width! * 2;
      }

      return Positioned(
        right: _boxLeft,
        width: _boxWidth,
        top: yPosition! + height! + 8,
        height: 4 * height! + 40,
        child: Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0.0, 10))
            ],
            border: Border.all(color: Colors.white10),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      );
    });
  }
}
