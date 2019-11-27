import 'package:mobx/mobx.dart';

part 'bio.g.dart';

class Bio = _Bio with _$Bio;

abstract class _Bio with Store{

  @observable
  String urlImg = '';

}