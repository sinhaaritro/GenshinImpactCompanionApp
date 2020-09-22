import 'package:flutter/material.dart';

class KeyValuePairCard extends StatelessWidget {
  final String message;
  final String imageAsset;
  final String value;

  const KeyValuePairCard({Key key, this.message, this.imageAsset, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Tooltip(
          message: message,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  imageAsset,
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 3,
                child: Text(
                  value,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
