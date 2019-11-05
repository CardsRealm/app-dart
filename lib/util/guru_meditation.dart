import 'package:flutter/widgets.dart';

/// Shows an overlayed Aimga-style alert box at the top of the screen with
/// either an iconic guru meditation message containing [code], a Dart [error]
/// with up to 10 lines of stack trace or a generic [message]. To dismiss the
/// alert box, the user has to tap it.
void showAlert(
  BuildContext context, {
  int code,
  String message,
  Error error,
}) {
  if (code != null) {
    final hex = code.toRadixString(16).toUpperCase().padLeft(8, '0');
    showAlertBox(
      context,
      'Software Failure.  Tap to continue.'
      '\n\nGuru Meditation #48454C50.$hex',
    );
  } else if (error != null) {
    final st = '${error.stackTrace}'.split('\n').take(10).join('\n');
    showAlertBox(context, '$error\n\n$st');
  } else if (message != null) {
    showAlertBox(context, message);
  } else {
    showAlert(context, code: 42);
  }
}

void showAlertBox(BuildContext context, String message) {
  final black = Color(0xFF000000);
  final red = Color(0xFFFF0000);
  var blink = true;
  OverlayEntry overlay;
  overlay = OverlayEntry(builder: (context) {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        color: black,
        child: SafeArea(
          minimum: EdgeInsets.all(8),
          bottom: false,
          child: GestureDetector(
            onTap: () {
              blink = null;
              overlay.remove();
            },
            child: StatefulBuilder(
              builder: (context, setState) {
                Future.delayed(Duration(milliseconds: 700)).then((_) {
                  if (blink != null) setState(() => blink = !blink);
                });
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: black,
                    border: Border.all(color: blink ? red : black, width: 8),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: FractionallySizedBox(
                    widthFactor: 4 / 3,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity().scaled(3 / 4, 1),
                      child: Text(
                        message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: red,
                          fontFamily: 'Courier',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          inherit: false,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  });
  Overlay.of(context).insert(overlay);
}
