abstract class OrderRepository {
  Future<List<Map<String, dynamic>>> getOrders();
  Future<List<Map<String, dynamic>>> getProducts();
}
