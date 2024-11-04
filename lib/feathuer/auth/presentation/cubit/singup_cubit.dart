import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'singup_cubit_state.dart';

class SingupCubit extends Cubit<SingupState> {
  SingupCubit() : super(SingupCubitInitial());
}
