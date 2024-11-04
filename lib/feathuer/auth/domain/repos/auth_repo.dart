import 'package:dartz/dartz.dart';
import 'package:fruitshub/errors/faluires.dart';
import 'package:fruitshub/feathuer/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Faluires, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
}
