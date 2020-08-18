import 'package:TareaChucho/Models/CarritoDeCompras.dart';
import 'package:TareaChucho/Models/Producto.dart';

import 'CarritoDeCompras.dart';

class Cliente {
  CarritoDeCompras _carrito;
  String _nombre;

  Cliente(carrito, nombre) {
    this._carrito = carrito;
    this._nombre = nombre;
  }

  void agregarProductoACarrito(Producto producto, int cantidad) {
    _carrito.agregarItem(producto, cantidad);
  }

  set carrito(CarritoDeCompras carrito) {
    this._carrito = carrito;
  }
}
