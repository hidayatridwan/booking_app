import '../../config/networking/networking.dart';

abstract class TripRepository {
  Future<BaseResponse> trips();

  Future<BaseResponse> trip(int id);
}
