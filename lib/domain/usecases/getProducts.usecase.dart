import 'dart:async';

import 'package:trackit_app/data/models/order_model.dart';
import 'package:trackit_app/domain/entity/order.dart';
import 'package:trackit_app/domain/repository/order_repo.dart';
import 'package:trackit_app/service_locator.dart';

class GetOrderUsecase {
  GetOrderUsecase(this.repo) {
    repo = this.repo ?? getit<OrderRepository>();
  }
  //
  late OrderRepository? repo;
  FutureOr<List<Order>?> call() async {
    var res = await repo!.getOrders();

    return List.from((res).map((e) => OrderModel.fromJson(e)));
  }
}
