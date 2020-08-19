import 'package:TareaChucho/Models/CarritoDeCompras.dart';
import 'package:TareaChucho/Models/Producto.dart';

import 'CarritoDeCompras.dart';

class Cliente {
  CarritoDeCompras carrito = new CarritoDeCompras();
  String _nombre;

  Cliente(nombre) {
    this._nombre = nombre;
  }

  void agregarProductoACarrito(Producto producto, int cantidad) {
    if(producto.tieneUnidadesDisponibles()){
      carrito.agregarItem(producto, cantidad);
    }
  }
}
