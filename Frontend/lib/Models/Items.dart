import 'Producto.dart';

abstract class Item {
  Producto producto;
  int _cantidad;

  double calcularTotal();

  Item(Producto producto, int cantidad) {
    this._cantidad = cantidad;
    this.producto = producto;
  }
}

class ItemPeso extends Item {
  ItemPeso(Producto producto, int cantidad) : super(producto, cantidad);

  @override
  double calcularTotal() {
    return producto.getPrecio() * (_cantidad / 1000);
    // teniendo en cuenta que en el caso de Producto peso, la cantidad se da en kilogramos y el precio en precio  por gramo se convierte la cantidad de kilos a gramos para tener la misma relación.
  }
}

class ItemDescuento extends Item {
  ItemDescuento(Producto producto, int cantidad) : super(producto, cantidad);

  @override
  double calcularTotal() {
    if (_cantidad % 3 == 0) {
      //aplica descuento

      var descuento = (_cantidad * 20) / 3;
      // en caso que el descuento sea mayor de 50 ,
      if (descuento >= 50) {
        return _cantidad * (producto.getPrecio() * (50 / 100));
      } else {
        return _cantidad * (producto.getPrecio() * (descuento / 100));
      }
    } else {
      //no aplica
      return producto.getPrecio() * _cantidad;
    }
  }
}

class ItemNormal extends Item {
  ItemNormal(Producto producto, int cantidad) : super(producto, cantidad);

  @override
  double calcularTotal() {
    return producto.getPrecio() * _cantidad;
  }
}
