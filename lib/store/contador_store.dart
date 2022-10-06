import 'package:mobx/mobx.dart';

part 'contador_store.g.dart';

//junta a classe + o código gerado
class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  @observable
  int contador = 0;

  @action // local na qual estou mudando
  void incrementar() {
    contador++;
  }
}
