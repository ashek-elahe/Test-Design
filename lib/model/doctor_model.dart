class DoctorModel {
  String _imagePath;
  String _name;
  String _designation;

  DoctorModel(this._imagePath, this._name, this._designation);

  String get designation => _designation;
  String get name => _name;
  String get imagePath => _imagePath;
}