import 'package:flutter/material.dart';

class FunnyButton extends StatelessWidget {
  const FunnyButton({required this.cor, this.playSoundCallBack});

  final Color cor;
  final VoidCallback? playSoundCallBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: InkWell(
          onTap: playSoundCallBack,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Ink(
                color: cor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
