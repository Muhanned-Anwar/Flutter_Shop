import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/product_details/data/response/product_details_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiRequest.baseUrl)
abstract class AppApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;
  
  @GET(ApiRequest.productDetails)
  Future<ProductDetailsResponse> productDetails();
}