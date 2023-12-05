import 'package:trackit_app/data/data_sources/mock_data.dart';
import 'package:trackit_app/domain/repository/order_repo.dart';

class OrderRepoImpl implements OrderRepository {
  @override
  Future<List<Map<String, dynamic>>> getOrders() async {
    return await Future.delayed(const Duration(minutes: 2), (() {
      return orders;
    }));
  }

  @override
  Future<List<Map<String, dynamic>>> getProducts() async {
    return products;
  }
}
