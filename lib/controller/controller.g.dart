// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$temperaturaAtom = Atom(name: 'ControllerBase.temperatura');

  @override
  double get temperatura {
    _$temperaturaAtom.context.enforceReadPolicy(_$temperaturaAtom);
    _$temperaturaAtom.reportObserved();
    return super.temperatura;
  }

  @override
  set temperatura(double value) {
    _$temperaturaAtom.context.conditionallyRunInAction(() {
      super.temperatura = value;
      _$temperaturaAtom.reportChanged();
    }, _$temperaturaAtom, name: '${_$temperaturaAtom.name}_set');
  }

  final _$estadoLampadaAtom = Atom(name: 'ControllerBase.estadoLampada');

  @override
  bool get estadoLampada {
    _$estadoLampadaAtom.context.enforceReadPolicy(_$estadoLampadaAtom);
    _$estadoLampadaAtom.reportObserved();
    return super.estadoLampada;
  }

  @override
  set estadoLampada(bool value) {
    _$estadoLampadaAtom.context.conditionallyRunInAction(() {
      super.estadoLampada = value;
      _$estadoLampadaAtom.reportChanged();
    }, _$estadoLampadaAtom, name: '${_$estadoLampadaAtom.name}_set');
  }

  final _$umidadeSoloAtom = Atom(name: 'ControllerBase.umidadeSolo');

  @override
  double get umidadeSolo {
    _$umidadeSoloAtom.context.enforceReadPolicy(_$umidadeSoloAtom);
    _$umidadeSoloAtom.reportObserved();
    return super.umidadeSolo;
  }

  @override
  set umidadeSolo(double value) {
    _$umidadeSoloAtom.context.conditionallyRunInAction(() {
      super.umidadeSolo = value;
      _$umidadeSoloAtom.reportChanged();
    }, _$umidadeSoloAtom, name: '${_$umidadeSoloAtom.name}_set');
  }

  final _$umidadeArAtom = Atom(name: 'ControllerBase.umidadeAr');

  @override
  int get umidadeAr {
    _$umidadeArAtom.context.enforceReadPolicy(_$umidadeArAtom);
    _$umidadeArAtom.reportObserved();
    return super.umidadeAr;
  }

  @override
  set umidadeAr(int value) {
    _$umidadeArAtom.context.conditionallyRunInAction(() {
      super.umidadeAr = value;
      _$umidadeArAtom.reportChanged();
    }, _$umidadeArAtom, name: '${_$umidadeArAtom.name}_set');
  }

  final _$luminosidadeAtom = Atom(name: 'ControllerBase.luminosidade');

  @override
  int get luminosidade {
    _$luminosidadeAtom.context.enforceReadPolicy(_$luminosidadeAtom);
    _$luminosidadeAtom.reportObserved();
    return super.luminosidade;
  }

  @override
  set luminosidade(int value) {
    _$luminosidadeAtom.context.conditionallyRunInAction(() {
      super.luminosidade = value;
      _$luminosidadeAtom.reportChanged();
    }, _$luminosidadeAtom, name: '${_$luminosidadeAtom.name}_set');
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic atualizarDados(int umi, double umiS, double temp, int luz) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.atualizarDados(umi, umiS, temp, luz);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarEstadoLampada() {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.mudarEstadoLampada();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
