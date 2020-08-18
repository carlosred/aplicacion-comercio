abstract class Producto {
  String _nombre;
  String _descripcion;
  String _sku;
  int _unidadesDisponibles;
  double _precio;

  Producto(nombre, descripcion, sku, unidadesDisponibles, precio) {
    this._nombre = nombre;
    this._descripcion = descripcion;
    this._sku = sku;
    this._unidadesDisponibles = unidadesDisponibles;
    this._precio = precio;
  }

  String get nombre {
    return _nombre;
  }

  String get descripcion {
    return _descripcion;
  }

  String get sku {
    return _sku;
  }

  int get unidadesDisponibles {
    return _unidadesDisponibles;
  }

  set unidadesDisponibles(int unidadesDisponibles) {
    this._unidadesDisponibles = unidadesDisponibles;
  }

  double getPrecio() {
    return _precio;
  }

  bool tieneUnidadesDisponibles() {
    return _unidadesDisponibles != 0 ? true : false;
  }
}
