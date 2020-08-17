import 'Producto.dart';

abstract class Item {
  int cantidad;
  Producto producto;

  // ignore: non_constant_identifier_names
  double calcular_total();

  Item(Producto producto, int cantidad) {
    this.cantidad = cantidad;
    this.producto = producto;
  }
}

class ItemPeso extends Item {
  ItemPeso(Producto producto, int cantidad) : super(producto, cantidad);

  @override
  double calcular_total() {
    return producto.get_precio() *
        producto
            .unidades_disponibles; // teniendo en cuenta que en el caso de Producto peso , las unidades disponibles equivalen a el peso de dicho producto.
  }
}

class ItemDescuento extends Item {
  ItemDescuento(Producto producto, int cantidad) : super(producto, cantidad);

  @override
  double calcular_total() {
    if (cantidad % 3 == 1) {
      //aplica descuento

      var descuento = (cantidad * 20) / 3;
      // en caso que el dscuento sea mayor de 50 ,
      if (descuento >= 50) {
        return cantidad * (producto.get_precio() * (50 / 100));
      } else {
        return cantidad * (producto.get_precio() * (descuento / 100));
      }
    } else {
      //no aplica
      return producto.get_precio() * cantidad;
    }
  }
}

class ItemNormal extends Item {
  ItemNormal(Producto producto, int cantidad) : super(producto, cantidad);

  @override
  double calcular_total() {
    return producto.get_precio() * cantidad;
  }
}
