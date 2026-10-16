/* Actividad: POO en Dart
1. Crea la clase Producto con los atributos: código, nombre, categoría, precio, cantidad.
2. Crea un método para mostrar la información completa del producto.
3. Crea una clase "CarritoCompra" con una lista de tipo Producto y dos métodos,
uno para agregar productos a comprar y el otro para imprimir el total de la compra.
*/

// 1. Creación de clase "Producto"

class Producto {
  int codigo;
  String nombre;
  String categoria;
  double precio;
  int cantidad;
 
  Producto(this.codigo, this.nombre, this.categoria, this.precio, this.cantidad);
 
  // Subtotal de este producto (precio x cantidad)
  double calcularSubtotal() {
    return precio * cantidad;
  }
 
  // 2. Mostrar la información completa del producto
  void mostrarInformacion() {
    print('--------------------------------');
    print('Código:    $codigo');
    print('Nombre:    $nombre');
    print('Categoría: $categoria');
    print('Precio:    \$${precio.toStringAsFixed(2)}');
    print('Cantidad:  $cantidad');
    print('Subtotal:  \$${calcularSubtotal().toStringAsFixed(2)}');
  }
}

// 3. Creación de la clase "CarritoCompra"

class CarritoCompra {
  List<Producto> productos = [];
 
  // Agregar productos al carrito
  void agregarProducto(Producto producto) {
    productos.add(producto);
    print('Producto agregado: ${producto.nombre}');
  }
 
  // Imprimir el total de la compra
  void imprimirTotal() {
    double total = 0;
 
    print('\n===== RESUMEN DE LA COMPRA =====');
    for (var producto in productos) {
      producto.mostrarInformacion();
      total += producto.calcularSubtotal();
    }
    print('================================');
    print('TOTAL A PAGAR: \$${total.toStringAsFixed(2)}');
  }
}
 
void main() {
  var p1 = Producto(101, 'Teclado', 'Periféricos', 85000, 2);
  var p2 = Producto(102, 'Mouse', 'Periféricos', 45000, 1);
  var p3 = Producto(103, 'Monitor', 'Pantallas', 650000, 1);
  var carrito = CarritoCompra();
  carrito.agregarProducto(p1);
  carrito.agregarProducto(p2);
  carrito.agregarProducto(p3);
  carrito.imprimirTotal();
}