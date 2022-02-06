class Burc {
  final String _burcName;
  final String _burcDate;
  final String _burcDetails;
  final String _burcSmallImage;
  final String _burcLargeImage;

  Burc(this._burcName, this._burcDate, this._burcDetails, this._burcSmallImage,
      this._burcLargeImage);

  get burcName => this._burcName;
  get burcDate => this._burcDate;
  get burcDetails => this._burcDetails;
  get burcSmallImage => this._burcSmallImage;
  get burcLargeImage => this._burcLargeImage;
}
