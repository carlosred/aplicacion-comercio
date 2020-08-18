import 'package:TareaChucho/Models/Cliente.dart';
import 'package:TareaChucho/Models/Producto.dart';

class Tienda {
  double _acumulado;
  List<Cliente> _clientes = List<Cliente>();
  List<Producto> _productos = List<Producto>();

  void agregarProductoACarrito(Producto prod, Cliente client, int cantidad) {
    client.agregarProductoACarrito(prod, cantidad);
  }
}
