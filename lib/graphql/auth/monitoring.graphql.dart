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

class Variables$Query$MonitoringDevice {
  factory Variables$Query$MonitoringDevice(
          {required Input$MonitoringDeviceFilterInput filter}) =>
      Variables$Query$MonitoringDevice._({
        r'filter': filter,
      });

  Variables$Query$MonitoringDevice._(this._$data);

  factory Variables$Query$MonitoringDevice.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$MonitoringDeviceFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$MonitoringDevice._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$MonitoringDeviceFilterInput get filter =>
      (_$data['filter'] as Input$MonitoringDeviceFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$MonitoringDevice<Variables$Query$MonitoringDevice>
      get copyWith => CopyWith$Variables$Query$MonitoringDevice(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MonitoringDevice) ||
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

abstract class CopyWith$Variables$Query$MonitoringDevice<TRes> {
  factory CopyWith$Variables$Query$MonitoringDevice(
    Variables$Query$MonitoringDevice instance,
    TRes Function(Variables$Query$MonitoringDevice) then,
  ) = _CopyWithImpl$Variables$Query$MonitoringDevice;

  factory CopyWith$Variables$Query$MonitoringDevice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MonitoringDevice;

  TRes call({Input$MonitoringDeviceFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$MonitoringDevice<TRes>
    implements CopyWith$Variables$Query$MonitoringDevice<TRes> {
  _CopyWithImpl$Variables$Query$MonitoringDevice(
    this._instance,
    this._then,
  );

  final Variables$Query$MonitoringDevice _instance;

  final TRes Function(Variables$Query$MonitoringDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$MonitoringDevice._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$MonitoringDeviceFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$MonitoringDevice<TRes>
    implements CopyWith$Variables$Query$MonitoringDevice<TRes> {
  _CopyWithStubImpl$Variables$Query$MonitoringDevice(this._res);

  TRes _res;

  call({Input$MonitoringDeviceFilterInput? filter}) => _res;
}

class Query$MonitoringDevice {
  Query$MonitoringDevice({
    this.monitoringDevice,
    this.$__typename = 'Query',
  });

  factory Query$MonitoringDevice.fromJson(Map<String, dynamic> json) {
    final l$monitoringDevice = json['monitoringDevice'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice(
      monitoringDevice: l$monitoringDevice == null
          ? null
          : Query$MonitoringDevice$monitoringDevice.fromJson(
              (l$monitoringDevice as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MonitoringDevice$monitoringDevice? monitoringDevice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$monitoringDevice = monitoringDevice;
    _resultData['monitoringDevice'] = l$monitoringDevice?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$monitoringDevice = monitoringDevice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$monitoringDevice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MonitoringDevice) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$monitoringDevice = monitoringDevice;
    final lOther$monitoringDevice = other.monitoringDevice;
    if (l$monitoringDevice != lOther$monitoringDevice) {
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

extension UtilityExtension$Query$MonitoringDevice on Query$MonitoringDevice {
  CopyWith$Query$MonitoringDevice<Query$MonitoringDevice> get copyWith =>
      CopyWith$Query$MonitoringDevice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MonitoringDevice<TRes> {
  factory CopyWith$Query$MonitoringDevice(
    Query$MonitoringDevice instance,
    TRes Function(Query$MonitoringDevice) then,
  ) = _CopyWithImpl$Query$MonitoringDevice;

  factory CopyWith$Query$MonitoringDevice.stub(TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice;

  TRes call({
    Query$MonitoringDevice$monitoringDevice? monitoringDevice,
    String? $__typename,
  });
  CopyWith$Query$MonitoringDevice$monitoringDevice<TRes> get monitoringDevice;
}

class _CopyWithImpl$Query$MonitoringDevice<TRes>
    implements CopyWith$Query$MonitoringDevice<TRes> {
  _CopyWithImpl$Query$MonitoringDevice(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice _instance;

  final TRes Function(Query$MonitoringDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? monitoringDevice = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MonitoringDevice(
        monitoringDevice: monitoringDevice == _undefined
            ? _instance.monitoringDevice
            : (monitoringDevice as Query$MonitoringDevice$monitoringDevice?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MonitoringDevice$monitoringDevice<TRes> get monitoringDevice {
    final local$monitoringDevice = _instance.monitoringDevice;
    return local$monitoringDevice == null
        ? CopyWith$Query$MonitoringDevice$monitoringDevice.stub(
            _then(_instance))
        : CopyWith$Query$MonitoringDevice$monitoringDevice(
            local$monitoringDevice, (e) => call(monitoringDevice: e));
  }
}

class _CopyWithStubImpl$Query$MonitoringDevice<TRes>
    implements CopyWith$Query$MonitoringDevice<TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice(this._res);

  TRes _res;

  call({
    Query$MonitoringDevice$monitoringDevice? monitoringDevice,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MonitoringDevice$monitoringDevice<TRes> get monitoringDevice =>
      CopyWith$Query$MonitoringDevice$monitoringDevice.stub(_res);
}

const documentNodeQueryMonitoringDevice = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MonitoringDevice'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'MonitoringDeviceFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'monitoringDevice'),
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
              name: NameNode(value: 'MonitoringDevice'),
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
                name: NameNode(value: 'deviceID'),
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
                name: NameNode(value: 'imageURL'),
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
                name: NameNode(value: 'wardID'),
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
                name: NameNode(value: 'amountUser'),
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
                name: NameNode(value: 'totalMalePatient'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                name: NameNode(value: 'totalFemalePatient'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                name: NameNode(value: 'totalPatient'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'totalMedCart'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'totalActive'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'totalInActive'),
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
                name: NameNode(value: 'totalDispensingByQrCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'totalDispensingByManual'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'totalReasonDischarge'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                name: NameNode(value: 'totalReasonMovePatientToAnotherDrawer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                name: NameNode(value: 'totalReasonDischargeDeath'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                name: NameNode(value: 'totalReasonMovePatientToAnotherWard'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'percent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                name: NameNode(value: 'lockerList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'recordLockerID'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'patientName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'hn'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'roomNo'),
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

class Query$MonitoringDevice$monitoringDevice {
  Query$MonitoringDevice$monitoringDevice({required this.$__typename});

  factory Query$MonitoringDevice$monitoringDevice.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "MonitoringDevice":
        return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice
            .fromJson(json);

      case "Error":
        return Query$MonitoringDevice$monitoringDevice$$Error.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$MonitoringDevice$monitoringDevice(
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
    if (!(other is Query$MonitoringDevice$monitoringDevice) ||
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice
    on Query$MonitoringDevice$monitoringDevice {
  CopyWith$Query$MonitoringDevice$monitoringDevice<
          Query$MonitoringDevice$monitoringDevice>
      get copyWith => CopyWith$Query$MonitoringDevice$monitoringDevice(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice)
        monitoringDevice,
    required _T Function(Query$MonitoringDevice$monitoringDevice$$Error) error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MonitoringDevice":
        return monitoringDevice(
            this as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice);

      case "Error":
        return error(this as Query$MonitoringDevice$monitoringDevice$$Error);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$MonitoringDevice$monitoringDevice$$MonitoringDevice)?
        monitoringDevice,
    _T Function(Query$MonitoringDevice$monitoringDevice$$Error)? error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "MonitoringDevice":
        if (monitoringDevice != null) {
          return monitoringDevice(this
              as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice);
        } else {
          return orElse();
        }

      case "Error":
        if (error != null) {
          return error(this as Query$MonitoringDevice$monitoringDevice$$Error);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice<TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice(
    Query$MonitoringDevice$monitoringDevice instance,
    TRes Function(Query$MonitoringDevice$monitoringDevice) then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice.stub(TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice<TRes>
    implements CopyWith$Query$MonitoringDevice$monitoringDevice<TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice _instance;

  final TRes Function(Query$MonitoringDevice$monitoringDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$MonitoringDevice$monitoringDevice(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice<TRes>
    implements CopyWith$Query$MonitoringDevice$monitoringDevice<TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice
    implements Query$MonitoringDevice$monitoringDevice {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice({
    required this.res_code,
    required this.res_desc,
    required this.deviceID,
    this.deviceName,
    required this.isActive,
    required this.model,
    this.imageURL,
    required this.location,
    this.wardID,
    this.temperature,
    this.amountPatient,
    this.amountUser,
    this.updatedAt,
    required this.totalMalePatient,
    required this.totalFemalePatient,
    this.totalPatient,
    required this.totalMedCart,
    required this.totalDispensingByQrCode,
    required this.totalDispensingByManual,
    required this.totalReasonDischarge,
    required this.totalReasonMovePatientToAnotherDrawer,
    required this.totalReasonDischargeDeath,
    required this.totalReasonMovePatientToAnotherWard,
    this.lockerList,
    this.$__typename = 'MonitoringDevice',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$deviceID = json['deviceID'];
    final l$deviceName = json['deviceName'];
    final l$isActive = json['isActive'];
    final l$model = json['model'];
    final l$imageURL = json['imageURL'];
    final l$location = json['location'];
    final l$wardID = json['wardID'];
    final l$temperature = json['temperature'];
    final l$amountPatient = json['amountPatient'];
    final l$amountUser = json['amountUser'];
    final l$updatedAt = json['updatedAt'];
    final l$totalMalePatient = json['totalMalePatient'];
    final l$totalFemalePatient = json['totalFemalePatient'];
    final l$totalPatient = json['totalPatient'];
    final l$totalMedCart = json['totalMedCart'];
    final l$totalDispensingByQrCode = json['totalDispensingByQrCode'];
    final l$totalDispensingByManual = json['totalDispensingByManual'];
    final l$totalReasonDischarge = json['totalReasonDischarge'];
    final l$totalReasonMovePatientToAnotherDrawer =
        json['totalReasonMovePatientToAnotherDrawer'];
    final l$totalReasonDischargeDeath = json['totalReasonDischargeDeath'];
    final l$totalReasonMovePatientToAnotherWard =
        json['totalReasonMovePatientToAnotherWard'];
    final l$lockerList = json['lockerList'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice(
      res_code: (l$res_code as String),
      res_desc: (l$res_desc as String),
      deviceID: (l$deviceID as String),
      deviceName: (l$deviceName as String?),
      isActive: (l$isActive as bool),
      model: (l$model as String),
      imageURL: (l$imageURL as String?),
      location: (l$location as String),
      wardID: (l$wardID as String?),
      temperature: (l$temperature as num?)?.toDouble(),
      amountPatient: (l$amountPatient as int?),
      amountUser: (l$amountUser as int?),
      updatedAt: (l$updatedAt as String?),
      totalMalePatient:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient
              .fromJson((l$totalMalePatient as Map<String, dynamic>)),
      totalFemalePatient:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient
              .fromJson((l$totalFemalePatient as Map<String, dynamic>)),
      totalPatient: (l$totalPatient as int?),
      totalMedCart:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart
              .fromJson((l$totalMedCart as Map<String, dynamic>)),
      totalDispensingByQrCode:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode
              .fromJson((l$totalDispensingByQrCode as Map<String, dynamic>)),
      totalDispensingByManual:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual
              .fromJson((l$totalDispensingByManual as Map<String, dynamic>)),
      totalReasonDischarge:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge
              .fromJson((l$totalReasonDischarge as Map<String, dynamic>)),
      totalReasonMovePatientToAnotherDrawer:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer
              .fromJson((l$totalReasonMovePatientToAnotherDrawer
                  as Map<String, dynamic>)),
      totalReasonDischargeDeath:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath
              .fromJson((l$totalReasonDischargeDeath as Map<String, dynamic>)),
      totalReasonMovePatientToAnotherWard:
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard
              .fromJson((l$totalReasonMovePatientToAnotherWard
                  as Map<String, dynamic>)),
      lockerList: (l$lockerList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String res_code;

  final String res_desc;

  final String deviceID;

  final String? deviceName;

  final bool isActive;

  final String model;

  final String? imageURL;

  final String location;

  final String? wardID;

  final double? temperature;

  final int? amountPatient;

  final int? amountUser;

  final String? updatedAt;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient
      totalMalePatient;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient
      totalFemalePatient;

  final int? totalPatient;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart
      totalMedCart;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode
      totalDispensingByQrCode;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual
      totalDispensingByManual;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge
      totalReasonDischarge;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer
      totalReasonMovePatientToAnotherDrawer;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath
      totalReasonDischargeDeath;

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard
      totalReasonMovePatientToAnotherWard;

  final List<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList?>?
      lockerList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$res_code = res_code;
    _resultData['res_code'] = l$res_code;
    final l$res_desc = res_desc;
    _resultData['res_desc'] = l$res_desc;
    final l$deviceID = deviceID;
    _resultData['deviceID'] = l$deviceID;
    final l$deviceName = deviceName;
    _resultData['deviceName'] = l$deviceName;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$imageURL = imageURL;
    _resultData['imageURL'] = l$imageURL;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$wardID = wardID;
    _resultData['wardID'] = l$wardID;
    final l$temperature = temperature;
    _resultData['temperature'] = l$temperature;
    final l$amountPatient = amountPatient;
    _resultData['amountPatient'] = l$amountPatient;
    final l$amountUser = amountUser;
    _resultData['amountUser'] = l$amountUser;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$totalMalePatient = totalMalePatient;
    _resultData['totalMalePatient'] = l$totalMalePatient.toJson();
    final l$totalFemalePatient = totalFemalePatient;
    _resultData['totalFemalePatient'] = l$totalFemalePatient.toJson();
    final l$totalPatient = totalPatient;
    _resultData['totalPatient'] = l$totalPatient;
    final l$totalMedCart = totalMedCart;
    _resultData['totalMedCart'] = l$totalMedCart.toJson();
    final l$totalDispensingByQrCode = totalDispensingByQrCode;
    _resultData['totalDispensingByQrCode'] = l$totalDispensingByQrCode.toJson();
    final l$totalDispensingByManual = totalDispensingByManual;
    _resultData['totalDispensingByManual'] = l$totalDispensingByManual.toJson();
    final l$totalReasonDischarge = totalReasonDischarge;
    _resultData['totalReasonDischarge'] = l$totalReasonDischarge.toJson();
    final l$totalReasonMovePatientToAnotherDrawer =
        totalReasonMovePatientToAnotherDrawer;
    _resultData['totalReasonMovePatientToAnotherDrawer'] =
        l$totalReasonMovePatientToAnotherDrawer.toJson();
    final l$totalReasonDischargeDeath = totalReasonDischargeDeath;
    _resultData['totalReasonDischargeDeath'] =
        l$totalReasonDischargeDeath.toJson();
    final l$totalReasonMovePatientToAnotherWard =
        totalReasonMovePatientToAnotherWard;
    _resultData['totalReasonMovePatientToAnotherWard'] =
        l$totalReasonMovePatientToAnotherWard.toJson();
    final l$lockerList = lockerList;
    _resultData['lockerList'] = l$lockerList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$res_code = res_code;
    final l$res_desc = res_desc;
    final l$deviceID = deviceID;
    final l$deviceName = deviceName;
    final l$isActive = isActive;
    final l$model = model;
    final l$imageURL = imageURL;
    final l$location = location;
    final l$wardID = wardID;
    final l$temperature = temperature;
    final l$amountPatient = amountPatient;
    final l$amountUser = amountUser;
    final l$updatedAt = updatedAt;
    final l$totalMalePatient = totalMalePatient;
    final l$totalFemalePatient = totalFemalePatient;
    final l$totalPatient = totalPatient;
    final l$totalMedCart = totalMedCart;
    final l$totalDispensingByQrCode = totalDispensingByQrCode;
    final l$totalDispensingByManual = totalDispensingByManual;
    final l$totalReasonDischarge = totalReasonDischarge;
    final l$totalReasonMovePatientToAnotherDrawer =
        totalReasonMovePatientToAnotherDrawer;
    final l$totalReasonDischargeDeath = totalReasonDischargeDeath;
    final l$totalReasonMovePatientToAnotherWard =
        totalReasonMovePatientToAnotherWard;
    final l$lockerList = lockerList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$res_code,
      l$res_desc,
      l$deviceID,
      l$deviceName,
      l$isActive,
      l$model,
      l$imageURL,
      l$location,
      l$wardID,
      l$temperature,
      l$amountPatient,
      l$amountUser,
      l$updatedAt,
      l$totalMalePatient,
      l$totalFemalePatient,
      l$totalPatient,
      l$totalMedCart,
      l$totalDispensingByQrCode,
      l$totalDispensingByManual,
      l$totalReasonDischarge,
      l$totalReasonMovePatientToAnotherDrawer,
      l$totalReasonDischargeDeath,
      l$totalReasonMovePatientToAnotherWard,
      l$lockerList == null ? null : Object.hashAll(l$lockerList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice) ||
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
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$deviceName = deviceName;
    final lOther$deviceName = other.deviceName;
    if (l$deviceName != lOther$deviceName) {
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
    final l$imageURL = imageURL;
    final lOther$imageURL = other.imageURL;
    if (l$imageURL != lOther$imageURL) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (l$wardID != lOther$wardID) {
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
    final l$amountUser = amountUser;
    final lOther$amountUser = other.amountUser;
    if (l$amountUser != lOther$amountUser) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$totalMalePatient = totalMalePatient;
    final lOther$totalMalePatient = other.totalMalePatient;
    if (l$totalMalePatient != lOther$totalMalePatient) {
      return false;
    }
    final l$totalFemalePatient = totalFemalePatient;
    final lOther$totalFemalePatient = other.totalFemalePatient;
    if (l$totalFemalePatient != lOther$totalFemalePatient) {
      return false;
    }
    final l$totalPatient = totalPatient;
    final lOther$totalPatient = other.totalPatient;
    if (l$totalPatient != lOther$totalPatient) {
      return false;
    }
    final l$totalMedCart = totalMedCart;
    final lOther$totalMedCart = other.totalMedCart;
    if (l$totalMedCart != lOther$totalMedCart) {
      return false;
    }
    final l$totalDispensingByQrCode = totalDispensingByQrCode;
    final lOther$totalDispensingByQrCode = other.totalDispensingByQrCode;
    if (l$totalDispensingByQrCode != lOther$totalDispensingByQrCode) {
      return false;
    }
    final l$totalDispensingByManual = totalDispensingByManual;
    final lOther$totalDispensingByManual = other.totalDispensingByManual;
    if (l$totalDispensingByManual != lOther$totalDispensingByManual) {
      return false;
    }
    final l$totalReasonDischarge = totalReasonDischarge;
    final lOther$totalReasonDischarge = other.totalReasonDischarge;
    if (l$totalReasonDischarge != lOther$totalReasonDischarge) {
      return false;
    }
    final l$totalReasonMovePatientToAnotherDrawer =
        totalReasonMovePatientToAnotherDrawer;
    final lOther$totalReasonMovePatientToAnotherDrawer =
        other.totalReasonMovePatientToAnotherDrawer;
    if (l$totalReasonMovePatientToAnotherDrawer !=
        lOther$totalReasonMovePatientToAnotherDrawer) {
      return false;
    }
    final l$totalReasonDischargeDeath = totalReasonDischargeDeath;
    final lOther$totalReasonDischargeDeath = other.totalReasonDischargeDeath;
    if (l$totalReasonDischargeDeath != lOther$totalReasonDischargeDeath) {
      return false;
    }
    final l$totalReasonMovePatientToAnotherWard =
        totalReasonMovePatientToAnotherWard;
    final lOther$totalReasonMovePatientToAnotherWard =
        other.totalReasonMovePatientToAnotherWard;
    if (l$totalReasonMovePatientToAnotherWard !=
        lOther$totalReasonMovePatientToAnotherWard) {
      return false;
    }
    final l$lockerList = lockerList;
    final lOther$lockerList = other.lockerList;
    if (l$lockerList != null && lOther$lockerList != null) {
      if (l$lockerList.length != lOther$lockerList.length) {
        return false;
      }
      for (int i = 0; i < l$lockerList.length; i++) {
        final l$lockerList$entry = l$lockerList[i];
        final lOther$lockerList$entry = lOther$lockerList[i];
        if (l$lockerList$entry != lOther$lockerList$entry) {
          return false;
        }
      }
    } else if (l$lockerList != lOther$lockerList) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice instance,
    TRes Function(Query$MonitoringDevice$monitoringDevice$$MonitoringDevice)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice;

  TRes call({
    String? res_code,
    String? res_desc,
    String? deviceID,
    String? deviceName,
    bool? isActive,
    String? model,
    String? imageURL,
    String? location,
    String? wardID,
    double? temperature,
    int? amountPatient,
    int? amountUser,
    String? updatedAt,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient?
        totalMalePatient,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient?
        totalFemalePatient,
    int? totalPatient,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart?
        totalMedCart,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode?
        totalDispensingByQrCode,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual?
        totalDispensingByManual,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge?
        totalReasonDischarge,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer?
        totalReasonMovePatientToAnotherDrawer,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath?
        totalReasonDischargeDeath,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard?
        totalReasonMovePatientToAnotherWard,
    List<Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList?>?
        lockerList,
    String? $__typename,
  });
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
      TRes> get totalMalePatient;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
      TRes> get totalFemalePatient;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
      TRes> get totalMedCart;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
      TRes> get totalDispensingByQrCode;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
      TRes> get totalDispensingByManual;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
      TRes> get totalReasonDischarge;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
      TRes> get totalReasonMovePatientToAnotherDrawer;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
      TRes> get totalReasonDischargeDeath;
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
      TRes> get totalReasonMovePatientToAnotherWard;
  TRes lockerList(
      Iterable<Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList?>? Function(
              Iterable<
                  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
                      Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList>?>?)
          _fn);
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice _instance;

  final TRes Function(Query$MonitoringDevice$monitoringDevice$$MonitoringDevice)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? deviceID = _undefined,
    Object? deviceName = _undefined,
    Object? isActive = _undefined,
    Object? model = _undefined,
    Object? imageURL = _undefined,
    Object? location = _undefined,
    Object? wardID = _undefined,
    Object? temperature = _undefined,
    Object? amountPatient = _undefined,
    Object? amountUser = _undefined,
    Object? updatedAt = _undefined,
    Object? totalMalePatient = _undefined,
    Object? totalFemalePatient = _undefined,
    Object? totalPatient = _undefined,
    Object? totalMedCart = _undefined,
    Object? totalDispensingByQrCode = _undefined,
    Object? totalDispensingByManual = _undefined,
    Object? totalReasonDischarge = _undefined,
    Object? totalReasonMovePatientToAnotherDrawer = _undefined,
    Object? totalReasonDischargeDeath = _undefined,
    Object? totalReasonMovePatientToAnotherWard = _undefined,
    Object? lockerList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MonitoringDevice$monitoringDevice$$MonitoringDevice(
        res_code: res_code == _undefined || res_code == null
            ? _instance.res_code
            : (res_code as String),
        res_desc: res_desc == _undefined || res_desc == null
            ? _instance.res_desc
            : (res_desc as String),
        deviceID: deviceID == _undefined || deviceID == null
            ? _instance.deviceID
            : (deviceID as String),
        deviceName: deviceName == _undefined
            ? _instance.deviceName
            : (deviceName as String?),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        model: model == _undefined || model == null
            ? _instance.model
            : (model as String),
        imageURL:
            imageURL == _undefined ? _instance.imageURL : (imageURL as String?),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as String),
        wardID: wardID == _undefined ? _instance.wardID : (wardID as String?),
        temperature: temperature == _undefined
            ? _instance.temperature
            : (temperature as double?),
        amountPatient: amountPatient == _undefined
            ? _instance.amountPatient
            : (amountPatient as int?),
        amountUser: amountUser == _undefined
            ? _instance.amountUser
            : (amountUser as int?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        totalMalePatient: totalMalePatient == _undefined ||
                totalMalePatient == null
            ? _instance.totalMalePatient
            : (totalMalePatient
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient),
        totalFemalePatient: totalFemalePatient == _undefined ||
                totalFemalePatient == null
            ? _instance.totalFemalePatient
            : (totalFemalePatient
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient),
        totalPatient: totalPatient == _undefined
            ? _instance.totalPatient
            : (totalPatient as int?),
        totalMedCart: totalMedCart == _undefined || totalMedCart == null
            ? _instance.totalMedCart
            : (totalMedCart
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart),
        totalDispensingByQrCode: totalDispensingByQrCode == _undefined ||
                totalDispensingByQrCode == null
            ? _instance.totalDispensingByQrCode
            : (totalDispensingByQrCode
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode),
        totalDispensingByManual: totalDispensingByManual == _undefined ||
                totalDispensingByManual == null
            ? _instance.totalDispensingByManual
            : (totalDispensingByManual
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual),
        totalReasonDischarge: totalReasonDischarge == _undefined ||
                totalReasonDischarge == null
            ? _instance.totalReasonDischarge
            : (totalReasonDischarge
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge),
        totalReasonMovePatientToAnotherDrawer:
            totalReasonMovePatientToAnotherDrawer == _undefined ||
                    totalReasonMovePatientToAnotherDrawer == null
                ? _instance.totalReasonMovePatientToAnotherDrawer
                : (totalReasonMovePatientToAnotherDrawer
                    as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer),
        totalReasonDischargeDeath: totalReasonDischargeDeath == _undefined ||
                totalReasonDischargeDeath == null
            ? _instance.totalReasonDischargeDeath
            : (totalReasonDischargeDeath
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath),
        totalReasonMovePatientToAnotherWard: totalReasonMovePatientToAnotherWard ==
                    _undefined ||
                totalReasonMovePatientToAnotherWard == null
            ? _instance.totalReasonMovePatientToAnotherWard
            : (totalReasonMovePatientToAnotherWard
                as Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard),
        lockerList: lockerList == _undefined
            ? _instance.lockerList
            : (lockerList as List<
                Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
      TRes> get totalMalePatient {
    final local$totalMalePatient = _instance.totalMalePatient;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
        local$totalMalePatient, (e) => call(totalMalePatient: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
      TRes> get totalFemalePatient {
    final local$totalFemalePatient = _instance.totalFemalePatient;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
        local$totalFemalePatient, (e) => call(totalFemalePatient: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
      TRes> get totalMedCart {
    final local$totalMedCart = _instance.totalMedCart;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
        local$totalMedCart, (e) => call(totalMedCart: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
      TRes> get totalDispensingByQrCode {
    final local$totalDispensingByQrCode = _instance.totalDispensingByQrCode;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
        local$totalDispensingByQrCode, (e) => call(totalDispensingByQrCode: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
      TRes> get totalDispensingByManual {
    final local$totalDispensingByManual = _instance.totalDispensingByManual;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
        local$totalDispensingByManual, (e) => call(totalDispensingByManual: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
      TRes> get totalReasonDischarge {
    final local$totalReasonDischarge = _instance.totalReasonDischarge;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
        local$totalReasonDischarge, (e) => call(totalReasonDischarge: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
      TRes> get totalReasonMovePatientToAnotherDrawer {
    final local$totalReasonMovePatientToAnotherDrawer =
        _instance.totalReasonMovePatientToAnotherDrawer;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
        local$totalReasonMovePatientToAnotherDrawer,
        (e) => call(totalReasonMovePatientToAnotherDrawer: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
      TRes> get totalReasonDischargeDeath {
    final local$totalReasonDischargeDeath = _instance.totalReasonDischargeDeath;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
        local$totalReasonDischargeDeath,
        (e) => call(totalReasonDischargeDeath: e));
  }

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
      TRes> get totalReasonMovePatientToAnotherWard {
    final local$totalReasonMovePatientToAnotherWard =
        _instance.totalReasonMovePatientToAnotherWard;
    return CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
        local$totalReasonMovePatientToAnotherWard,
        (e) => call(totalReasonMovePatientToAnotherWard: e));
  }

  TRes lockerList(
          Iterable<Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList?>? Function(
                  Iterable<
                      CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
                          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList>?>?)
              _fn) =>
      call(
          lockerList: _fn(_instance.lockerList?.map((e) => e == null
              ? null
              : CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice(
      this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? deviceID,
    String? deviceName,
    bool? isActive,
    String? model,
    String? imageURL,
    String? location,
    String? wardID,
    double? temperature,
    int? amountPatient,
    int? amountUser,
    String? updatedAt,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient?
        totalMalePatient,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient?
        totalFemalePatient,
    int? totalPatient,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart?
        totalMedCart,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode?
        totalDispensingByQrCode,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual?
        totalDispensingByManual,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge?
        totalReasonDischarge,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer?
        totalReasonMovePatientToAnotherDrawer,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath?
        totalReasonDischargeDeath,
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard?
        totalReasonMovePatientToAnotherWard,
    List<Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList?>?
        lockerList,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
          TRes>
      get totalMalePatient =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
          TRes>
      get totalFemalePatient =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
          TRes>
      get totalMedCart =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
          TRes>
      get totalDispensingByQrCode =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
          TRes>
      get totalDispensingByManual =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
          TRes>
      get totalReasonDischarge =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
          TRes>
      get totalReasonMovePatientToAnotherDrawer =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
          TRes>
      get totalReasonDischargeDeath =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath
              .stub(_res);

  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
          TRes>
      get totalReasonMovePatientToAnotherWard =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard
              .stub(_res);

  lockerList(_fn) => _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient({
    this.percent,
    this.amount,
    this.$__typename = 'PercentAmount',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient;

  TRes call({
    double? percent,
    int? amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMalePatient(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient({
    this.percent,
    this.amount,
    this.$__typename = 'PercentAmount',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient;

  TRes call({
    double? percent,
    int? amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalFemalePatient(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart({
    this.total,
    this.totalActive,
    this.totalInActive,
    this.$__typename = 'TotalMedCart',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$totalActive = json['totalActive'];
    final l$totalInActive = json['totalInActive'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
      total: (l$total as int?),
      totalActive: (l$totalActive as int?),
      totalInActive: (l$totalInActive as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? totalActive;

  final int? totalInActive;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$totalActive = totalActive;
    _resultData['totalActive'] = l$totalActive;
    final l$totalInActive = totalInActive;
    _resultData['totalInActive'] = l$totalInActive;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$totalActive = totalActive;
    final l$totalInActive = totalInActive;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$totalActive,
      l$totalInActive,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$totalActive = totalActive;
    final lOther$totalActive = other.totalActive;
    if (l$totalActive != lOther$totalActive) {
      return false;
    }
    final l$totalInActive = totalInActive;
    final lOther$totalInActive = other.totalInActive;
    if (l$totalInActive != lOther$totalInActive) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart;

  TRes call({
    int? total,
    int? totalActive,
    int? totalInActive,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? totalActive = _undefined,
    Object? totalInActive = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
        total: total == _undefined ? _instance.total : (total as int?),
        totalActive: totalActive == _undefined
            ? _instance.totalActive
            : (totalActive as int?),
        totalInActive: totalInActive == _undefined
            ? _instance.totalInActive
            : (totalInActive as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalMedCart(
      this._res);

  TRes _res;

  call({
    int? total,
    int? totalActive,
    int? totalInActive,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode({
    this.percent,
    this.amount,
    this.amountPatient,
    this.$__typename = 'TotalDispensingBy',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$amountPatient = json['amountPatient'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      amountPatient: (l$amountPatient as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final int? amountPatient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$amountPatient = amountPatient;
    _resultData['amountPatient'] = l$amountPatient;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$amountPatient = amountPatient;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$amountPatient,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$amountPatient = amountPatient;
    final lOther$amountPatient = other.amountPatient;
    if (l$amountPatient != lOther$amountPatient) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode;

  TRes call({
    double? percent,
    int? amount,
    int? amountPatient,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? amountPatient = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        amountPatient: amountPatient == _undefined
            ? _instance.amountPatient
            : (amountPatient as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByQrCode(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    int? amountPatient,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual({
    this.percent,
    this.amount,
    this.amountPatient,
    this.$__typename = 'TotalDispensingBy',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$amountPatient = json['amountPatient'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      amountPatient: (l$amountPatient as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final int? amountPatient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$amountPatient = amountPatient;
    _resultData['amountPatient'] = l$amountPatient;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$amountPatient = amountPatient;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$amountPatient,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$amountPatient = amountPatient;
    final lOther$amountPatient = other.amountPatient;
    if (l$amountPatient != lOther$amountPatient) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual;

  TRes call({
    double? percent,
    int? amount,
    int? amountPatient,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? amountPatient = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        amountPatient: amountPatient == _undefined
            ? _instance.amountPatient
            : (amountPatient as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalDispensingByManual(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    int? amountPatient,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge({
    this.percent,
    this.amount,
    this.$__typename = 'PercentAmount',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge;

  TRes call({
    double? percent,
    int? amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischarge(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer({
    this.percent,
    this.amount,
    this.$__typename = 'PercentAmount',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer;

  TRes call({
    double? percent,
    int? amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherDrawer(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath({
    this.percent,
    this.amount,
    this.$__typename = 'PercentAmount',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath;

  TRes call({
    double? percent,
    int? amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonDischargeDeath(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard({
    this.percent,
    this.amount,
    this.$__typename = 'PercentAmount',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard.fromJson(
      Map<String, dynamic> json) {
    final l$percent = json['percent'];
    final l$amount = json['amount'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
      percent: (l$percent as num?)?.toDouble(),
      amount: (l$amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? percent;

  final int? amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$percent = percent;
    _resultData['percent'] = l$percent;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$percent = percent;
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$percent,
      l$amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$percent = percent;
    final lOther$percent = other.percent;
    if (l$percent != lOther$percent) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard;

  TRes call({
    double? percent,
    int? amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? percent = _undefined,
    Object? amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
        percent:
            percent == _undefined ? _instance.percent : (percent as double?),
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$totalReasonMovePatientToAnotherWard(
      this._res);

  TRes _res;

  call({
    double? percent,
    int? amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList {
  Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList({
    this.recordLockerID,
    this.patientName,
    this.hn,
    this.roomNo,
    this.$__typename = 'MDIBLocker',
  });

  factory Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList.fromJson(
      Map<String, dynamic> json) {
    final l$recordLockerID = json['recordLockerID'];
    final l$patientName = json['patientName'];
    final l$hn = json['hn'];
    final l$roomNo = json['roomNo'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
      recordLockerID: (l$recordLockerID as int?),
      patientName: (l$patientName as String?),
      hn: (l$hn as String?),
      roomNo: (l$roomNo as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? recordLockerID;

  final String? patientName;

  final String? hn;

  final String? roomNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordLockerID = recordLockerID;
    _resultData['recordLockerID'] = l$recordLockerID;
    final l$patientName = patientName;
    _resultData['patientName'] = l$patientName;
    final l$hn = hn;
    _resultData['hn'] = l$hn;
    final l$roomNo = roomNo;
    _resultData['roomNo'] = l$roomNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordLockerID = recordLockerID;
    final l$patientName = patientName;
    final l$hn = hn;
    final l$roomNo = roomNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$recordLockerID,
      l$patientName,
      l$hn,
      l$roomNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordLockerID = recordLockerID;
    final lOther$recordLockerID = other.recordLockerID;
    if (l$recordLockerID != lOther$recordLockerID) {
      return false;
    }
    final l$patientName = patientName;
    final lOther$patientName = other.patientName;
    if (l$patientName != lOther$patientName) {
      return false;
    }
    final l$hn = hn;
    final lOther$hn = other.hn;
    if (l$hn != lOther$hn) {
      return false;
    }
    final l$roomNo = roomNo;
    final lOther$roomNo = other.roomNo;
    if (l$roomNo != lOther$roomNo) {
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList
    on Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList>
      get copyWith =>
          CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
    TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
    Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList
        instance,
    TRes Function(
            Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList)
        then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList;

  TRes call({
    int? recordLockerID,
    String? patientName,
    String? hn,
    String? roomNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
            TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList
      _instance;

  final TRes Function(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordLockerID = _undefined,
    Object? patientName = _undefined,
    Object? hn = _undefined,
    Object? roomNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
        recordLockerID: recordLockerID == _undefined
            ? _instance.recordLockerID
            : (recordLockerID as int?),
        patientName: patientName == _undefined
            ? _instance.patientName
            : (patientName as String?),
        hn: hn == _undefined ? _instance.hn : (hn as String?),
        roomNo: roomNo == _undefined ? _instance.roomNo : (roomNo as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
        TRes>
    implements
        CopyWith$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList<
            TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$MonitoringDevice$lockerList(
      this._res);

  TRes _res;

  call({
    int? recordLockerID,
    String? patientName,
    String? hn,
    String? roomNo,
    String? $__typename,
  }) =>
      _res;
}

class Query$MonitoringDevice$monitoringDevice$$Error
    implements Query$MonitoringDevice$monitoringDevice {
  Query$MonitoringDevice$monitoringDevice$$Error({
    required this.res_code,
    required this.res_desc,
    this.$__typename = 'Error',
  });

  factory Query$MonitoringDevice$monitoringDevice$$Error.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$$__typename = json['__typename'];
    return Query$MonitoringDevice$monitoringDevice$$Error(
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
    if (!(other is Query$MonitoringDevice$monitoringDevice$$Error) ||
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

extension UtilityExtension$Query$MonitoringDevice$monitoringDevice$$Error
    on Query$MonitoringDevice$monitoringDevice$$Error {
  CopyWith$Query$MonitoringDevice$monitoringDevice$$Error<
          Query$MonitoringDevice$monitoringDevice$$Error>
      get copyWith => CopyWith$Query$MonitoringDevice$monitoringDevice$$Error(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MonitoringDevice$monitoringDevice$$Error<TRes> {
  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$Error(
    Query$MonitoringDevice$monitoringDevice$$Error instance,
    TRes Function(Query$MonitoringDevice$monitoringDevice$$Error) then,
  ) = _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$Error;

  factory CopyWith$Query$MonitoringDevice$monitoringDevice$$Error.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$Error;

  TRes call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$Error<TRes>
    implements CopyWith$Query$MonitoringDevice$monitoringDevice$$Error<TRes> {
  _CopyWithImpl$Query$MonitoringDevice$monitoringDevice$$Error(
    this._instance,
    this._then,
  );

  final Query$MonitoringDevice$monitoringDevice$$Error _instance;

  final TRes Function(Query$MonitoringDevice$monitoringDevice$$Error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MonitoringDevice$monitoringDevice$$Error(
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

class _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$Error<TRes>
    implements CopyWith$Query$MonitoringDevice$monitoringDevice$$Error<TRes> {
  _CopyWithStubImpl$Query$MonitoringDevice$monitoringDevice$$Error(this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  }) =>
      _res;
}
