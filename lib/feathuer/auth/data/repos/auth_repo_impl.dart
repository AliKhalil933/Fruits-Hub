import 'package:dartz/dartz.dart';
import 'package:fruitshub/core/services/firebase_auth_servess.dart';
import 'package:fruitshub/errors/Excaptions.dart';
import 'package:fruitshub/errors/faluires.dart';
import 'package:fruitshub/feathuer/auth/data/models/user_model.dart';
import 'package:fruitshub/feathuer/auth/domain/entites/user_entity.dart';
import 'package:fruitshub/feathuer/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServess firebaseAuthServess;

  AuthRepoImpl(this.firebaseAuthServess);

  @override
  Future<Either<Faluires, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthServess.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseuser(user));
    } on CustomException catch (e) {
      return Left(ServerFaluires(e.message));
    }
  }
}
