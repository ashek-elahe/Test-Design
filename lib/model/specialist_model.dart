import 'package:flutter/material.dart';

class SpecialistModel {
  String _title;
  IconData _icon;
  Color _color;

  SpecialistModel(this._title, this._icon, this._color);

  Color get color => _color;
  IconData get icon => _icon;
  String get title => _title;
}