import 'package:flutter/material.dart';

// Navigation bar widget
class Destination {
  const Destination(this.icon, this.label);
  final IconData icon;
  final String label;
}

const List<Destination> destinations = <Destination>[
  Destination(Icons.inbox_rounded, 'Inbox'),
  Destination(Icons.article_outlined, 'Articles'),
  Destination(Icons.messenger_outline_rounded, 'Messages'),
  Destination(Icons.group_outlined, 'Groups'),
];

// Bottom Navigation Bar widget
class Items {
  const Items(this.icon, this.label);
  final IconData icon;
  final String label;
}

List<Items> items = <Items>[
  const Items(Icons.inbox_rounded, 'Inbox'),
  const Items(Icons.article_outlined, 'Articles'),
  const Items(Icons.messenger_outline_rounded, 'Messages'),
  const Items(Icons.group_outlined, 'Groups'),
];
