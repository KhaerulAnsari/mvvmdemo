import 'package:bloc/bloc.dart';
import 'package:mvvmdemo/model/user.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState => UnitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    try{
      User user = await User.getUserFromApi(event);
      yield user;
    }catch(_){}

  }

}