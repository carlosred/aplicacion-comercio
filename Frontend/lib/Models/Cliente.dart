import 'package:TareaChucho/Models/CarritoDeCompras.dart';
import 'package:TareaChucho/Models/Producto.dart';

class Cliente {
  CarritoDeCompras carrito;
  String nombre;
  void agregar_producto_a_carrito(Producto product, int cantidad) {
    carrito.agregar_item(product, cantidad);
  }
}
