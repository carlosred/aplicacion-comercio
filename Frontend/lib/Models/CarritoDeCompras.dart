import 'package:TareaChucho/Models/Items.dart';

import 'Producto.dart';

class CarritoDeCompras {
  List<Item> items = List<Item>();

  // ignore: non_constant_identifier_names
  void agregar_item(Producto producto, int cantidad) {
    var sku = producto.sku.substring(0, 2);

    if (sku == "EA") {
      items.add(ItemNormal(producto, cantidad));
    } else if (sku == "WE") {
      items.add(ItemPeso(producto, cantidad));
    } else {
      items.add(ItemDescuento(producto, cantidad));
    }
  }

  double calcular_total() {
    double sum = 0;
    items.forEach((item) {
      sum += item.calcular_total();
    });
    return sum;
  }
}
