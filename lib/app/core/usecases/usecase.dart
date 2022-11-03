import 'package:clean_getx/app/core/usecases/failure.dart';
import 'package:dartz/dartz.dart';

/// [Type] 은 유즈케이스의 출력 형식입니다.
/// [Params] 는 유즈케이스의 입력 형식입니다.
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
