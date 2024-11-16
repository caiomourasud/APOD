// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_root_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppRootController on AppRootControllerBase, Store {
  Computed<int>? _$selectedIndexComputed;

  @override
  int get selectedIndex =>
      (_$selectedIndexComputed ??= Computed<int>(() => super.selectedIndex,
              name: 'AppRootControllerBase.selectedIndex'))
          .value;

  late final _$_selectedIndexAtom =
      Atom(name: 'AppRootControllerBase._selectedIndex', context: context);

  @override
  int get _selectedIndex {
    _$_selectedIndexAtom.reportRead();
    return super._selectedIndex;
  }

  @override
  set _selectedIndex(int value) {
    _$_selectedIndexAtom.reportWrite(value, super._selectedIndex, () {
      super._selectedIndex = value;
    });
  }

  late final _$AppRootControllerBaseActionController =
      ActionController(name: 'AppRootControllerBase', context: context);

  @override
  void setSelectedIndex(int index) {
    final _$actionInfo = _$AppRootControllerBaseActionController.startAction(
        name: 'AppRootControllerBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$AppRootControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
