import 'package:TareaChucho/Models/Cliente.dart';
import 'package:TareaChucho/Models/Producto.dart';

class Tienda {
  double acumulado;
  List<Cliente> clientes = List<Cliente>();
  List<Producto> productos = List<Producto>();
  void agregar_producto_a_carrito(Producto prod, Cliente client, int cantidad) {
    client.agregar_producto_a_carrito(prod, cantidad);
  }
}
