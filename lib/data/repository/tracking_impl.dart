import 'package:trackit_app/data/data_sources/mock_data.dart';
import 'package:trackit_app/domain/repository/tracking_repo.dart';

class TrackingRepoImpl implements TrackingRepository {
  @override
  Future<List<Map<String, dynamic>>> getTracking() async {
    return Future.delayed(const Duration(minutes: 2), (() {
      return trackingHistory;
    }));
  }
}
