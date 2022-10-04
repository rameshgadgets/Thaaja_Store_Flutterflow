import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _Cart = prefs.getStringList('ff_Cart')?.map((path) => path.ref).toList() ??
        _Cart;
  }

  late SharedPreferences prefs;

  List<DocumentReference> _Cart = [];
  List<DocumentReference> get Cart => _Cart;
  set Cart(List<DocumentReference> _value) {
    _Cart = _value;
    prefs.setStringList('ff_Cart', _value.map((x) => x.path).toList());
  }

  void addToCart(DocumentReference _value) {
    _Cart.add(_value);
    prefs.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference _value) {
    _Cart.remove(_value);
    prefs.setStringList('ff_Cart', _Cart.map((x) => x.path).toList());
  }

  bool isEditBtnTapped = false;

  int quantity = 0;
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
