import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$MonitoringDeviceInBuilding {
  factory Variables$Query$MonitoringDeviceInBuilding(
          {required Input$MonitoringDeviceInBuildingFilterInput filter}) =>
      Variables$Query$MonitoringDeviceInBuilding._({
        r'filter': filter,
      });

  Variables$Query$MonitoringDeviceInBuilding._(this._$data);

  factory Variables$Query$MonitoringDeviceInBuilding.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$MonitoringDeviceInBuildingFilterInput.fromJson(
            (l$filter as Map<String, dynamic>));
    return Variables$Query$MonitoringDeviceInBuilding._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MonitoringDeviceInBuildingFilterInput get filter =>
      (_$data['filter'] as Input$MonitoringDeviceInBuildingFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$MonitoringDeviceInBuilding<
          Variables$Query$MonitoringDeviceInBuilding>
      get copyWith => CopyWith$Variables$Query$MonitoringDeviceInBuilding(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MonitoringDeviceInBuilding) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$MonitoringDeviceInBuilding<TRes> {
  factory CopyWith$Variables$Query$MonitoringDeviceInBuilding(
    Variables$Query$MonitoringDeviceInBuilding instance,
    TRes Function(Variables$Query$MonitoringDeviceInBuilding) then,
  ) = _CopyWithImpl$Variables$Query$MonitoringDeviceInBuilding;

  factory CopyWith$Variables$Query$MonitoringDeviceInBuilding.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MonitoringDeviceInBuilding;

  TRes call({Input$MonitoringDeviceInBuildingFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$MonitoringDeviceInBuilding<TRes>
    implements CopyWith$Variables$Query$MonitoringDeviceInBuilding<TRes> {
  _CopyWithImpl$Variables$Query$MonitoringDeviceInBuilding(
    this._instance,
    this._then,
  );

  final Variables$Query$MonitoringDeviceInBuilding _instance;

  final TRes Function(Variables$Query$MonitoringDeviceInBuilding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$MonitoringDeviceInBuilding._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$MonitoringDeviceInBuildingFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$MonitoringDeviceInBuilding<TRes>
    implements CopyWith$Variables$Query$MonitoringDeviceInBuilding<TRes> {
  _CopyWithStubImpl$Variables$Query$MonitoringDeviceInBuilding(this._res);

  TRes _res;

  call({Input$MonitoringDeviceInBuildingFilterInput? filter}) => _res;
}

class Query$MonitoringDeviceInBuilding {
  Query$MonitoringDeviceInBuilding({
    this.monitoringDeviceInBuilding,
    this.$__typename = 'Query',
  });

  factory Query$MonitoringDeviceInBuilding.fromJson(Map<String, dynamic> json) {
    final l$monitoringDeviceInBuilding = json['monitoringDeviceInBuilding'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDeviceInBuilding(
      monitoringDeviceInBuilding: l$monitoringDeviceInBuilding == null
          ? null
          : Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding
              .fromJson((l$monitoringDeviceInBuilding as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding?
      monitoringDeviceInBuilding;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$monitoringDeviceInBuilding = monitoringDeviceInBuilding;
    _resultData['monitoringDeviceInBuilding'] =
        l$monitoringDeviceInBuilding?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$monitoringDeviceInBuilding = monitoringDeviceInBuilding;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$monitoringDeviceInBuilding,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MonitoringDeviceInBuilding) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$monitoringDeviceInBuilding = monitoringDeviceInBuilding;
    final lOther$monitoringDeviceInBuilding = other.monitoringDeviceInBuilding;
    if (l$monitoringDeviceInBuilding != lOther$monitoringDeviceInBuilding) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding
    on Query$MonitoringDeviceInBuilding {
  CopyWith$Query$MonitoringDeviceInBuilding<Query$MonitoringDeviceInBuilding>
      get copyWith => CopyWith$Query$MonitoringDeviceInBuilding(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding<TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding(
    Query$MonitoringDeviceInBuilding instance,
    TRes Function(Query$MonitoringDeviceInBuilding) then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding;

  factory CopyWith$Query$MonitoringDeviceInBuilding.stub(TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding;

  TRes call({
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding?
        monitoringDeviceInBuilding,
    String? $__typename,
  });
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<TRes>
      get monitoringDeviceInBuilding;
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding<TRes>
    implements CopyWith$Query$MonitoringDeviceInBuilding<TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding _instance;

  final TRes Function(Query$MonitoringDeviceInBuilding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? monitoringDeviceInBuilding = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MonitoringDeviceInBuilding(
        monitoringDeviceInBuilding: monitoringDeviceInBuilding == _undefined
            ? _instance.monitoringDeviceInBuilding
            : (monitoringDeviceInBuilding
                as Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<TRes>
      get monitoringDeviceInBuilding {
    final local$monitoringDeviceInBuilding =
        _instance.monitoringDeviceInBuilding;
    return local$monitoringDeviceInBuilding == null
        ? CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding
            .stub(_then(_instance))
        : CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
            local$monitoringDeviceInBuilding,
            (e) => call(monitoringDeviceInBuilding: e));
  }
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding<TRes>
    implements CopyWith$Query$MonitoringDeviceInBuilding<TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding(this._res);

  TRes _res;

  call({
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding?
        monitoringDeviceInBuilding,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<TRes>
      get monitoringDeviceInBuilding =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding
              .stub(_res);
}

const documentNodeQueryMonitoringDeviceInBuilding = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MonitoringDeviceInBuilding'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'MonitoringDeviceInBuildingFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'monitoringDeviceInBuilding'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MonitoringDeviceInBuilding'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'res_code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'res_desc'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'floorList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'floorID'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'floorName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isActive'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'index'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'wardList'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'wardID'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'wardName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isActive'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'index'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deviceList'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'deviceID'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'isActive'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'model'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'deviceName'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'location'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'temperature'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'amountPatient'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'updatedAt'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Error'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'res_code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'res_desc'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
      {required this.$__typename});

  factory Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MonitoringDeviceInBuilding":
        return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding
            .fromJson(json);

      case "Error":
        return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding
    on Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding {
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding>
      get copyWith =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding)
        monitoringDeviceInBuilding,
    required _T Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error)
        error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MonitoringDeviceInBuilding":
        return monitoringDeviceInBuilding(this
            as Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding);

      case "Error":
        return error(this
            as Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding)?
        monitoringDeviceInBuilding,
    _T Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error)?
        error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MonitoringDeviceInBuilding":
        if (monitoringDeviceInBuilding != null) {
          return monitoringDeviceInBuilding(this
              as Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding);
        } else {
          return orElse();
        }

      case "Error":
        if (error != null) {
          return error(this
              as Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<
    TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding instance,
    TRes Function(Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding)
        then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding;

  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<
            TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding _instance;

  final TRes Function(
      Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding
    implements Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding({
    required this.res_code,
    required this.res_desc,
    this.floorList,
    this.$__typename = 'MonitoringDeviceInBuilding',
  });

  factory Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$floorList = json['floorList'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding(
      res_code: (l$res_code as String),
      res_desc: (l$res_desc as String),
      floorList: (l$floorList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String res_code;

  final String res_desc;

  final List<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>?
      floorList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$res_code = res_code;
    _resultData['res_code'] = l$res_code;
    final l$res_desc = res_desc;
    _resultData['res_desc'] = l$res_desc;
    final l$floorList = floorList;
    _resultData['floorList'] = l$floorList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$res_code = res_code;
    final l$res_desc = res_desc;
    final l$floorList = floorList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$res_code,
      l$res_desc,
      l$floorList == null ? null : Object.hashAll(l$floorList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$res_code = res_code;
    final lOther$res_code = other.res_code;
    if (l$res_code != lOther$res_code) {
      return false;
    }
    final l$res_desc = res_desc;
    final lOther$res_desc = other.res_desc;
    if (l$res_desc != lOther$res_desc) {
      return false;
    }
    final l$floorList = floorList;
    final lOther$floorList = other.floorList;
    if (l$floorList != null && lOther$floorList != null) {
      if (l$floorList.length != lOther$floorList.length) {
        return false;
      }
      for (int i = 0; i < l$floorList.length; i++) {
        final l$floorList$entry = l$floorList[i];
        final lOther$floorList$entry = lOther$floorList[i];
        if (l$floorList$entry != lOther$floorList$entry) {
          return false;
        }
      }
    } else if (l$floorList != lOther$floorList) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding
    on Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding {
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding>
      get copyWith =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding<
    TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding(
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding
        instance,
    TRes Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding)
        then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding;

  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding;

  TRes call({
    String? res_code,
    String? res_desc,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>?
        floorList,
    String? $__typename,
  });
  TRes floorList(
      Iterable<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>? Function(
              Iterable<
                  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
                      Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList>?>?)
          _fn);
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding<
            TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding
      _instance;

  final TRes Function(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? floorList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding(
        res_code: res_code == _undefined || res_code == null
            ? _instance.res_code
            : (res_code as String),
        res_desc: res_desc == _undefined || res_desc == null
            ? _instance.res_desc
            : (res_desc as String),
        floorList: floorList == _undefined
            ? _instance.floorList
            : (floorList as List<
                Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes floorList(
          Iterable<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>? Function(
                  Iterable<
                      CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
                          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList>?>?)
              _fn) =>
      call(
          floorList: _fn(_instance.floorList?.map((e) => e == null
              ? null
              : CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding(
      this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList?>?
        floorList,
    String? $__typename,
  }) =>
      _res;

  floorList(_fn) => _res;
}

class Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList({
    required this.floorID,
    required this.floorName,
    required this.isActive,
    required this.index,
    this.wardList,
    this.$__typename = 'MDIBFloor',
  });

  factory Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList.fromJson(
      Map<String, dynamic> json) {
    final l$floorID = json['floorID'];
    final l$floorName = json['floorName'];
    final l$isActive = json['isActive'];
    final l$index = json['index'];
    final l$wardList = json['wardList'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
      floorID: (l$floorID as String),
      floorName: (l$floorName as String),
      isActive: (l$isActive as bool),
      index: (l$index as int),
      wardList: (l$wardList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String floorID;

  final String floorName;

  final bool isActive;

  final int index;

  final List<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>?
      wardList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$floorID = floorID;
    _resultData['floorID'] = l$floorID;
    final l$floorName = floorName;
    _resultData['floorName'] = l$floorName;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$index = index;
    _resultData['index'] = l$index;
    final l$wardList = wardList;
    _resultData['wardList'] = l$wardList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$floorID = floorID;
    final l$floorName = floorName;
    final l$isActive = isActive;
    final l$index = index;
    final l$wardList = wardList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$floorID,
      l$floorName,
      l$isActive,
      l$index,
      l$wardList == null ? null : Object.hashAll(l$wardList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    final l$floorName = floorName;
    final lOther$floorName = other.floorName;
    if (l$floorName != lOther$floorName) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    final l$wardList = wardList;
    final lOther$wardList = other.wardList;
    if (l$wardList != null && lOther$wardList != null) {
      if (l$wardList.length != lOther$wardList.length) {
        return false;
      }
      for (int i = 0; i < l$wardList.length; i++) {
        final l$wardList$entry = l$wardList[i];
        final lOther$wardList$entry = lOther$wardList[i];
        if (l$wardList$entry != lOther$wardList$entry) {
          return false;
        }
      }
    } else if (l$wardList != lOther$wardList) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList
    on Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList {
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList>
      get copyWith =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
    TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList
        instance,
    TRes Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList)
        then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList;

  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList;

  TRes call({
    String? floorID,
    String? floorName,
    bool? isActive,
    int? index,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>?
        wardList,
    String? $__typename,
  });
  TRes wardList(
      Iterable<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>? Function(
              Iterable<
                  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
                      Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList>?>?)
          _fn);
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
            TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList
      _instance;

  final TRes Function(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? floorID = _undefined,
    Object? floorName = _undefined,
    Object? isActive = _undefined,
    Object? index = _undefined,
    Object? wardList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
        floorID: floorID == _undefined || floorID == null
            ? _instance.floorID
            : (floorID as String),
        floorName: floorName == _undefined || floorName == null
            ? _instance.floorName
            : (floorName as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        index: index == _undefined || index == null
            ? _instance.index
            : (index as int),
        wardList: wardList == _undefined
            ? _instance.wardList
            : (wardList as List<
                Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes wardList(
          Iterable<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>? Function(
                  Iterable<
                      CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
                          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList>?>?)
              _fn) =>
      call(
          wardList: _fn(_instance.wardList?.map((e) => e == null
              ? null
              : CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList(
      this._res);

  TRes _res;

  call({
    String? floorID,
    String? floorName,
    bool? isActive,
    int? index,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList?>?
        wardList,
    String? $__typename,
  }) =>
      _res;

  wardList(_fn) => _res;
}

class Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList({
    required this.wardID,
    required this.wardName,
    required this.isActive,
    required this.index,
    this.deviceList,
    this.$__typename = 'MDIBWard',
  });

  factory Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList.fromJson(
      Map<String, dynamic> json) {
    final l$wardID = json['wardID'];
    final l$wardName = json['wardName'];
    final l$isActive = json['isActive'];
    final l$index = json['index'];
    final l$deviceList = json['deviceList'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
      wardID: (l$wardID as String),
      wardName: (l$wardName as String),
      isActive: (l$isActive as bool),
      index: (l$index as int),
      deviceList: (l$deviceList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String wardID;

  final String wardName;

  final bool isActive;

  final int index;

  final List<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>?
      deviceList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wardID = wardID;
    _resultData['wardID'] = l$wardID;
    final l$wardName = wardName;
    _resultData['wardName'] = l$wardName;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$index = index;
    _resultData['index'] = l$index;
    final l$deviceList = deviceList;
    _resultData['deviceList'] = l$deviceList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wardID = wardID;
    final l$wardName = wardName;
    final l$isActive = isActive;
    final l$index = index;
    final l$deviceList = deviceList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wardID,
      l$wardName,
      l$isActive,
      l$index,
      l$deviceList == null ? null : Object.hashAll(l$deviceList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (l$wardID != lOther$wardID) {
      return false;
    }
    final l$wardName = wardName;
    final lOther$wardName = other.wardName;
    if (l$wardName != lOther$wardName) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    final l$deviceList = deviceList;
    final lOther$deviceList = other.deviceList;
    if (l$deviceList != null && lOther$deviceList != null) {
      if (l$deviceList.length != lOther$deviceList.length) {
        return false;
      }
      for (int i = 0; i < l$deviceList.length; i++) {
        final l$deviceList$entry = l$deviceList[i];
        final lOther$deviceList$entry = lOther$deviceList[i];
        if (l$deviceList$entry != lOther$deviceList$entry) {
          return false;
        }
      }
    } else if (l$deviceList != lOther$deviceList) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList
    on Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList {
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList>
      get copyWith =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
    TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList
        instance,
    TRes Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList)
        then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList;

  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList;

  TRes call({
    String? wardID,
    String? wardName,
    bool? isActive,
    int? index,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>?
        deviceList,
    String? $__typename,
  });
  TRes deviceList(
      Iterable<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>? Function(
              Iterable<
                  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
                      Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList>?>?)
          _fn);
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
            TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList
      _instance;

  final TRes Function(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wardID = _undefined,
    Object? wardName = _undefined,
    Object? isActive = _undefined,
    Object? index = _undefined,
    Object? deviceList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
        wardID: wardID == _undefined || wardID == null
            ? _instance.wardID
            : (wardID as String),
        wardName: wardName == _undefined || wardName == null
            ? _instance.wardName
            : (wardName as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        index: index == _undefined || index == null
            ? _instance.index
            : (index as int),
        deviceList: deviceList == _undefined
            ? _instance.deviceList
            : (deviceList as List<
                Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deviceList(
          Iterable<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>? Function(
                  Iterable<
                      CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
                          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList>?>?)
              _fn) =>
      call(
          deviceList: _fn(_instance.deviceList?.map((e) => e == null
              ? null
              : CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList(
      this._res);

  TRes _res;

  call({
    String? wardID,
    String? wardName,
    bool? isActive,
    int? index,
    List<Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList?>?
        deviceList,
    String? $__typename,
  }) =>
      _res;

  deviceList(_fn) => _res;
}

class Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList({
    required this.deviceID,
    required this.isActive,
    required this.model,
    this.deviceName,
    this.location,
    this.temperature,
    this.amountPatient,
    this.updatedAt,
    this.$__typename = 'MDIBDevice',
  });

  factory Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList.fromJson(
      Map<String, dynamic> json) {
    final l$deviceID = json['deviceID'];
    final l$isActive = json['isActive'];
    final l$model = json['model'];
    final l$deviceName = json['deviceName'];
    final l$location = json['location'];
    final l$temperature = json['temperature'];
    final l$amountPatient = json['amountPatient'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
      deviceID: (l$deviceID as String),
      isActive: (l$isActive as bool),
      model: (l$model as String),
      deviceName: (l$deviceName as String?),
      location: (l$location as String?),
      temperature: (l$temperature as num?)?.toDouble(),
      amountPatient: (l$amountPatient as int?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String deviceID;

  final bool isActive;

  final String model;

  final String? deviceName;

  final String? location;

  final double? temperature;

  final int? amountPatient;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deviceID = deviceID;
    _resultData['deviceID'] = l$deviceID;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$deviceName = deviceName;
    _resultData['deviceName'] = l$deviceName;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$temperature = temperature;
    _resultData['temperature'] = l$temperature;
    final l$amountPatient = amountPatient;
    _resultData['amountPatient'] = l$amountPatient;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$isActive = isActive;
    final l$model = model;
    final l$deviceName = deviceName;
    final l$location = location;
    final l$temperature = temperature;
    final l$amountPatient = amountPatient;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deviceID,
      l$isActive,
      l$model,
      l$deviceName,
      l$location,
      l$temperature,
      l$amountPatient,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$deviceName = deviceName;
    final lOther$deviceName = other.deviceName;
    if (l$deviceName != lOther$deviceName) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$temperature = temperature;
    final lOther$temperature = other.temperature;
    if (l$temperature != lOther$temperature) {
      return false;
    }
    final l$amountPatient = amountPatient;
    final lOther$amountPatient = other.amountPatient;
    if (l$amountPatient != lOther$amountPatient) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList
    on Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList {
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList>
      get copyWith =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
    TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList
        instance,
    TRes Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList)
        then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList;

  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList;

  TRes call({
    String? deviceID,
    bool? isActive,
    String? model,
    String? deviceName,
    String? location,
    double? temperature,
    int? amountPatient,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
            TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList
      _instance;

  final TRes Function(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? isActive = _undefined,
    Object? model = _undefined,
    Object? deviceName = _undefined,
    Object? location = _undefined,
    Object? temperature = _undefined,
    Object? amountPatient = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
        deviceID: deviceID == _undefined || deviceID == null
            ? _instance.deviceID
            : (deviceID as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        model: model == _undefined || model == null
            ? _instance.model
            : (model as String),
        deviceName: deviceName == _undefined
            ? _instance.deviceName
            : (deviceName as String?),
        location:
            location == _undefined ? _instance.location : (location as String?),
        temperature: temperature == _undefined
            ? _instance.temperature
            : (temperature as double?),
        amountPatient: amountPatient == _undefined
            ? _instance.amountPatient
            : (amountPatient as int?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$MonitoringDeviceInBuilding$floorList$wardList$deviceList(
      this._res);

  TRes _res;

  call({
    String? deviceID,
    bool? isActive,
    String? model,
    String? deviceName,
    String? location,
    double? temperature,
    int? amountPatient,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error
    implements Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding {
  Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error({
    required this.res_code,
    required this.res_desc,
    this.$__typename = 'Error',
  });

  factory Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error(
      res_code: (l$res_code as String),
      res_desc: (l$res_desc as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String res_code;

  final String res_desc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$res_code = res_code;
    _resultData['res_code'] = l$res_code;
    final l$res_desc = res_desc;
    _resultData['res_desc'] = l$res_desc;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$res_code = res_code;
    final l$res_desc = res_desc;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$res_code,
      l$res_desc,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$res_code = res_code;
    final lOther$res_code = other.res_code;
    if (l$res_code != lOther$res_code) {
      return false;
    }
    final l$res_desc = res_desc;
    final lOther$res_desc = other.res_desc;
    if (l$res_desc != lOther$res_desc) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error
    on Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error {
  CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error<
          Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error>
      get copyWith =>
          CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error<
    TRes> {
  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error(
    Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error instance,
    TRes Function(
            Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error)
        then,
  ) = _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error;

  factory CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error;

  TRes call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error<
            TRes> {
  _CopyWithImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error(
    this._instance,
    this._then,
  );

  final Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error
      _instance;

  final TRes Function(
      Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error(
        res_code: res_code == _undefined || res_code == null
            ? _instance.res_code
            : (res_code as String),
        res_desc: res_desc == _undefined || res_desc == null
            ? _instance.res_desc
            : (res_desc as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error<
        TRes>
    implements
        CopyWith$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDeviceInBuilding$monitoringDeviceInBuilding$$Error(
      this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  }) =>
      _res;
}
