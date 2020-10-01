class IssuesModel {
  String _title;
  String _description;
  double _price;

  IssuesModel(this._title, this._description, this._price);

  double get price => _price;
  String get description => _description;
  String get title => _title;
}