abstract class Producto {
  String nombre;
  String descripcion;
  String sku;
  int unidades_disponibles;
  double precio;
  double get_precio() {
    return precio;
  }

  bool tiene_unidades_disponibles() {
    return unidades_disponibles != 0 ? true : false;
  }
}
