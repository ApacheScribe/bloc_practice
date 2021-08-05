import 'package:bloc/bloc.dart';

class StateClass {
  String? name;
  int? age;
  int? deptCode;

  StateClass();

  void setName(String name) {
    this.name = name;
  }

  String? getName() {
    return this.name;
  }

  void setAge(int age) {
    this.age = age;
  }

  int? getAge() {
    return this.age;
  }

  void setDeptCode(int deptCode) {
    this.deptCode = deptCode;
  }

  int? getDeptCode() {
    return this.deptCode;
  }

  @override
  String toString() {
    return super.toString();
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);
  void plus() => emit(state + 1);
  void minus() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    // print(change);
  }
}
