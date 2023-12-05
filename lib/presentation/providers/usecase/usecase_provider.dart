import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trackit_app/domain/entity/order.dart';
import 'package:trackit_app/domain/repository/order_repo.dart';
import 'package:trackit_app/domain/usecases/getProducts.usecase.dart';
import 'package:trackit_app/service_locator.dart';

final getOrdersUsecaseRef =
    FutureProvider.autoDispose<List<Order>?>((ref) async {
  //
  return await GetOrderUsecase(getit<OrderRepository>()).call();
});
