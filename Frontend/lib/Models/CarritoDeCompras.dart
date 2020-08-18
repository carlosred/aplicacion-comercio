import 'package:TareaChucho/Models/Items.dart';

import 'Producto.dart';

class CarritoDeCompras {
  List<Item> _items = List<Item>();

  void agregarItem(Producto producto, int cantidad) {
    var sku = producto.sku.substring(0, 2);

    if (sku == "EA") {
      _items.add(ItemNormal(producto, cantidad));
    } else if (sku == "WE") {
      _items.add(ItemPeso(producto, cantidad));
    } else {
      _items.add(ItemDescuento(producto, cantidad));
    }
  }

  double calcularTotal() {
    double sum = 0;
    _items.forEach((item) {
      sum += item.calcularTotal();
    });
    return sum;
  }
}
