import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_provider.g.dart';

@riverpod
class TabNotifier extends _$TabNotifier {
  @override
  int build() => 0; // initial value

  @override
  set state(int newState) => super.state = newState;
  int update(int Function(int state) cb) => state = cb(state);
}
