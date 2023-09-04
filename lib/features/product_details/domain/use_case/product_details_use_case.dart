import 'package:avatar_course2_5_shop/core/error_handler/error_handler.dart';
import 'package:avatar_course2_5_shop/core/use_case/base_use_case.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/request/product_details_request.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/model/product_details_model.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/repository/product_dertails_repository.dart';
import 'package:dartz/dartz.dart';

class ProductDetailsUseCaseInput {
  int id;

  ProductDetailsUseCaseInput({
    required this.id,
  });
}

class ProductDetailsUseCaseImplementation
    implements BaseUseCase<ProductDetailsUseCaseInput, ProductDetailsModel> {
  final ProductDetailsRepository _repository;

  ProductDetailsUseCaseImplementation(
    this._repository,
  );

  @override
  Future<Either<Failure, ProductDetailsModel>> execute(
      ProductDetailsUseCaseInput input) async {
    return await _repository.getProductDetails(
      ProductDetailsRequest(
        id: input.id,
      ),
    );
  }
}
