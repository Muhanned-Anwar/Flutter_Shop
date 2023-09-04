import 'package:avatar_course2_5_shop/core/network/api/app_api.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/request/product_details_request.dart';
import '../response/product_details_response.dart';

abstract class ProductDetailsRemoteDataSource {
  Future<ProductDetailsResponse> getProductDetails(
    ProductDetailsRequest request,
  );
}

class ProductDetailsRemoteDataSourceImplementation
    implements ProductDetailsRemoteDataSource {
  final AppApi _appApi;

  ProductDetailsRemoteDataSourceImplementation(this._appApi);

  @override
  Future<ProductDetailsResponse> getProductDetails(
    ProductDetailsRequest request,
  ) async {
    return await _appApi.productDetails(request.id);
  }
}
