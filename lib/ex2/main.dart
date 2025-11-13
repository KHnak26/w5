import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

enum ButtonType { primary, secondary, disabled }
enum IconPosition { left, right }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EX2 - CustomButton Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Custom buttons'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                  label: 'Submit',
                  icon: Icons.check,
                  type: ButtonType.primary,
                  iconPosition: IconPosition.left,
                  onPressed: () => debugPrint('Submit pressed'),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  label: 'Time',
                  icon: Icons.access_time,
                  type: ButtonType.secondary,
                  iconPosition: IconPosition.right,
                  onPressed: () => debugPrint('Time pressed'),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  label: 'Account',
                  icon: Icons.account_box,
                  type: ButtonType.disabled,
                  iconPosition: IconPosition.right,
                  // onPressed omitted => disabled
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType type;
  final IconPosition iconPosition;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    required this.label,
    required this.icon,
    this.type = ButtonType.primary,
    this.iconPosition = IconPosition.left,
    this.onPressed,
  }) : super(key: key);

  bool get _isDisabled => type == ButtonType.disabled;

  Color get _bg {
    if (type == ButtonType.primary) return const Color(0xFF2196F3);
    if (type == ButtonType.secondary) return const Color(0xFF39A94A);
    return Colors.grey.shade300;
  }

  Color get _fg {
    return _isDisabled ? Colors.grey.shade500 : const Color(0xFF455A64);
  }

  @override
  Widget build(BuildContext context) {
    final effectiveOnPressed = _isDisabled ? null : onPressed;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: effectiveOnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isDisabled ? Colors.grey.shade300 : _bg,
          foregroundColor: _fg,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          elevation: 0,
          minimumSize: const Size.fromHeight(48),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: iconPosition == IconPosition.left
              ? [
                  Icon(icon, size: 20, color: _fg),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      label,
                      style: TextStyle(color: _fg, fontSize: 16, fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]
              : [
                  Flexible(
                    child: Text(
                      label,
                      style: TextStyle(color: _fg, fontSize: 16, fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(icon, size: 20, color: _fg),
                ],
        ),
      ),
    );
  }
}
// ...existing code...
```// filepath: /Users/macbookpro/Downloads/W5_Flutter/Stateless_Widget/lib/ex2/main.dart
// ...existing code...
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

enum ButtonType { primary, secondary, disabled }
enum IconPosition { left, right }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EX2 - CustomButton Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Custom buttons'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                  label: 'Submit',
                  icon: Icons.check,
                  type: ButtonType.primary,
                  iconPosition: IconPosition.left,
                  onPressed: () => debugPrint('Submit pressed'),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  label: 'Time',
                  icon: Icons.access_time,
                  type: ButtonType.secondary,
                  iconPosition: IconPosition.right,
                  onPressed: () => debugPrint('Time pressed'),
                ),
                const SizedBox(height: 16),
                CustomButton(
                  label: 'Account',
                  icon: Icons.account_box,
                  type: ButtonType.disabled,
                  iconPosition: IconPosition.right,
                  // onPressed omitted => disabled
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType type;
  final IconPosition iconPosition;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    required this.label,
    required this.icon,
    this.type = ButtonType.primary,
    this.iconPosition = IconPosition.left,
    this.onPressed,
  }) : super(key: key);

  bool get _isDisabled => type == ButtonType.disabled;

  Color get _bg {
    if (type == ButtonType.primary) return const Color(0xFF2196F3);
    if (type == ButtonType.secondary) return const Color(0xFF39A94A);
    return Colors.grey.shade300;
  }

  Color get _fg {
    return _isDisabled ? Colors.grey.shade500 : const Color(0xFF455A64);
  }

  @override
  Widget build(BuildContext context) {
    final effectiveOnPressed = _isDisabled ? null : onPressed;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: effectiveOnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _isDisabled ? Colors.grey.shade300 : _bg,
          foregroundColor: _fg,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          elevation: 0,
          minimumSize: const Size.fromHeight(48),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: iconPosition == IconPosition.left
              ? [
                  Icon(icon, size: 20, color: _fg),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      label,
                      style: TextStyle(color: _fg, fontSize: 16, fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]
              : [
                  Flexible(
                    child: Text(
                      label,
                      style: TextStyle(color: _fg, fontSize: 16, fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(icon, size: 20, color: _fg),
                ],
        ),
      ),
    );
  }
}