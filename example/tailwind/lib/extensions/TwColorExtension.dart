import 'package:flutter/material.dart';
 
/// Extension Methods for colors
extension TwColorExtension on Color {
  Color o(double value) => this.withOpacity(value);
  Color get o10 => this.withOpacity(0.1);
	Color get o15 => this.withOpacity(0.15);
	Color get o20 => this.withOpacity(0.2);
	Color get o25 => this.withOpacity(0.25);
	Color get o30 => this.withOpacity(0.3);
	Color get o35 => this.withOpacity(0.35);
	Color get o40 => this.withOpacity(0.4);
	Color get o45 => this.withOpacity(0.45);
	Color get o50 => this.withOpacity(0.5);
	Color get o55 => this.withOpacity(0.55);
	Color get o60 => this.withOpacity(0.6);
	Color get o65 => this.withOpacity(0.65);
	Color get o70 => this.withOpacity(0.7);
	Color get o75 => this.withOpacity(0.75);
	Color get o80 => this.withOpacity(0.8);
	Color get o85 => this.withOpacity(0.85);
	Color get o90 => this.withOpacity(0.9);
	Color get o95 => this.withOpacity(0.95);
	
}

