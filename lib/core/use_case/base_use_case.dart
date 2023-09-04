import 'package:avatar_course2_5_shop/core/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}