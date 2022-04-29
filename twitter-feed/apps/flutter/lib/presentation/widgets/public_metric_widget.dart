import 'package:clash_of_techs_twitter_feed/domain/entities/public_metrics/public_metrics.dart';
import 'package:flutter/material.dart';

extension PublicMetricTypeExtention on PublicMetricType {
  IconData get icon {
    switch (this) {
      case PublicMetricType.like:
        return Icons.favorite_outline;
      case PublicMetricType.retweet:
        return Icons.repeat;
      case PublicMetricType.reply:
        return Icons.comment_outlined;
      case PublicMetricType.quote:
        return Icons.format_quote;
    }
  }
}

class PublicMetricWidget extends StatelessWidget {
  final PublicMetricType type;
  final int value;
  final Color _color = Colors.grey.shade600;

  PublicMetricWidget({Key? key, required this.type, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 3.0),
          child: Icon(type.icon, color: _color),
        ),
        Text(value.toString(), style: TextStyle(color: _color)),
      ],
    );
  }
}
