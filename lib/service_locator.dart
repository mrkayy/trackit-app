import 'package:get_it/get_it.dart';
import 'package:trackit_app/data/repository/order_impl.dart';
import 'package:trackit_app/data/repository/tracking_impl.dart';
import 'package:trackit_app/domain/repository/order_repo.dart';
import 'package:trackit_app/domain/repository/tracking_repo.dart';

GetIt getit = GetIt.instance;

void initializeServiceLocator() {
  getit.registerFactory<OrderRepository>(() => OrderRepoImpl());
  getit.registerFactory<TrackingRepository>(() => TrackingRepoImpl());
}
