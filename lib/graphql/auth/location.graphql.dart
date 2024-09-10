import 'package:gql/ast.dart';

class Query$AllBuilding {
  Query$AllBuilding({
    this.allBuilding,
    this.$__typename = 'Query',
  });

  factory Query$AllBuilding.fromJson(Map<String, dynamic> json) {
    final l$allBuilding = json['allBuilding'];
    final l$$__typename = json['__typename'];
    return Query$AllBuilding(
      allBuilding: l$allBuilding == null
          ? null
          : Query$AllBuilding$allBuilding.fromJson(
              (l$allBuilding as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllBuilding$allBuilding? allBuilding;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allBuilding = allBuilding;
    _resultData['allBuilding'] = l$allBuilding?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allBuilding = allBuilding;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$allBuilding,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllBuilding) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allBuilding = allBuilding;
    final lOther$allBuilding = other.allBuilding;
    if (l$allBuilding != lOther$allBuilding) {
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

extension UtilityExtension$Query$AllBuilding on Query$AllBuilding {
  CopyWith$Query$AllBuilding<Query$AllBuilding> get copyWith =>
      CopyWith$Query$AllBuilding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllBuilding<TRes> {
  factory CopyWith$Query$AllBuilding(
    Query$AllBuilding instance,
    TRes Function(Query$AllBuilding) then,
  ) = _CopyWithImpl$Query$AllBuilding;

  factory CopyWith$Query$AllBuilding.stub(TRes res) =
      _CopyWithStubImpl$Query$AllBuilding;

  TRes call({
    Query$AllBuilding$allBuilding? allBuilding,
    String? $__typename,
  });
  CopyWith$Query$AllBuilding$allBuilding<TRes> get allBuilding;
}

class _CopyWithImpl$Query$AllBuilding<TRes>
    implements CopyWith$Query$AllBuilding<TRes> {
  _CopyWithImpl$Query$AllBuilding(
    this._instance,
    this._then,
  );

  final Query$AllBuilding _instance;

  final TRes Function(Query$AllBuilding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allBuilding = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllBuilding(
        allBuilding: allBuilding == _undefined
            ? _instance.allBuilding
            : (allBuilding as Query$AllBuilding$allBuilding?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllBuilding$allBuilding<TRes> get allBuilding {
    final local$allBuilding = _instance.allBuilding;
    return local$allBuilding == null
        ? CopyWith$Query$AllBuilding$allBuilding.stub(_then(_instance))
        : CopyWith$Query$AllBuilding$allBuilding(
            local$allBuilding, (e) => call(allBuilding: e));
  }
}

class _CopyWithStubImpl$Query$AllBuilding<TRes>
    implements CopyWith$Query$AllBuilding<TRes> {
  _CopyWithStubImpl$Query$AllBuilding(this._res);

  TRes _res;

  call({
    Query$AllBuilding$allBuilding? allBuilding,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllBuilding$allBuilding<TRes> get allBuilding =>
      CopyWith$Query$AllBuilding$allBuilding.stub(_res);
}

const documentNodeQueryAllBuilding = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllBuilding'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allBuilding'),
        alias: null,
        arguments: [],
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
              name: NameNode(value: 'AllBuilding'),
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
                name: NameNode(value: 'items'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'buildingID'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'buildingName'),
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

class Query$AllBuilding$allBuilding {
  Query$AllBuilding$allBuilding({required this.$__typename});

  factory Query$AllBuilding$allBuilding.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AllBuilding":
        return Query$AllBuilding$allBuilding$$AllBuilding.fromJson(json);

      case "Error":
        return Query$AllBuilding$allBuilding$$Error.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$AllBuilding$allBuilding(
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
    if (!(other is Query$AllBuilding$allBuilding) ||
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

extension UtilityExtension$Query$AllBuilding$allBuilding
    on Query$AllBuilding$allBuilding {
  CopyWith$Query$AllBuilding$allBuilding<Query$AllBuilding$allBuilding>
      get copyWith => CopyWith$Query$AllBuilding$allBuilding(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$AllBuilding$allBuilding$$AllBuilding)
        allBuilding,
    required _T Function(Query$AllBuilding$allBuilding$$Error) error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AllBuilding":
        return allBuilding(this as Query$AllBuilding$allBuilding$$AllBuilding);

      case "Error":
        return error(this as Query$AllBuilding$allBuilding$$Error);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$AllBuilding$allBuilding$$AllBuilding)? allBuilding,
    _T Function(Query$AllBuilding$allBuilding$$Error)? error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AllBuilding":
        if (allBuilding != null) {
          return allBuilding(
              this as Query$AllBuilding$allBuilding$$AllBuilding);
        } else {
          return orElse();
        }

      case "Error":
        if (error != null) {
          return error(this as Query$AllBuilding$allBuilding$$Error);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$AllBuilding$allBuilding<TRes> {
  factory CopyWith$Query$AllBuilding$allBuilding(
    Query$AllBuilding$allBuilding instance,
    TRes Function(Query$AllBuilding$allBuilding) then,
  ) = _CopyWithImpl$Query$AllBuilding$allBuilding;

  factory CopyWith$Query$AllBuilding$allBuilding.stub(TRes res) =
      _CopyWithStubImpl$Query$AllBuilding$allBuilding;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$AllBuilding$allBuilding<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding<TRes> {
  _CopyWithImpl$Query$AllBuilding$allBuilding(
    this._instance,
    this._then,
  );

  final Query$AllBuilding$allBuilding _instance;

  final TRes Function(Query$AllBuilding$allBuilding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$AllBuilding$allBuilding(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$AllBuilding$allBuilding<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding<TRes> {
  _CopyWithStubImpl$Query$AllBuilding$allBuilding(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$AllBuilding$allBuilding$$AllBuilding
    implements Query$AllBuilding$allBuilding {
  Query$AllBuilding$allBuilding$$AllBuilding({
    required this.res_code,
    required this.res_desc,
    this.items,
    this.$__typename = 'AllBuilding',
  });

  factory Query$AllBuilding$allBuilding$$AllBuilding.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$AllBuilding$allBuilding$$AllBuilding(
      res_code: (l$res_code as String),
      res_desc: (l$res_desc as String),
      items: (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllBuilding$allBuilding$$AllBuilding$items.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String res_code;

  final String res_desc;

  final List<Query$AllBuilding$allBuilding$$AllBuilding$items?>? items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$res_code = res_code;
    _resultData['res_code'] = l$res_code;
    final l$res_desc = res_desc;
    _resultData['res_desc'] = l$res_desc;
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$res_code = res_code;
    final l$res_desc = res_desc;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$res_code,
      l$res_desc,
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllBuilding$allBuilding$$AllBuilding) ||
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
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
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

extension UtilityExtension$Query$AllBuilding$allBuilding$$AllBuilding
    on Query$AllBuilding$allBuilding$$AllBuilding {
  CopyWith$Query$AllBuilding$allBuilding$$AllBuilding<
          Query$AllBuilding$allBuilding$$AllBuilding>
      get copyWith => CopyWith$Query$AllBuilding$allBuilding$$AllBuilding(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllBuilding$allBuilding$$AllBuilding<TRes> {
  factory CopyWith$Query$AllBuilding$allBuilding$$AllBuilding(
    Query$AllBuilding$allBuilding$$AllBuilding instance,
    TRes Function(Query$AllBuilding$allBuilding$$AllBuilding) then,
  ) = _CopyWithImpl$Query$AllBuilding$allBuilding$$AllBuilding;

  factory CopyWith$Query$AllBuilding$allBuilding$$AllBuilding.stub(TRes res) =
      _CopyWithStubImpl$Query$AllBuilding$allBuilding$$AllBuilding;

  TRes call({
    String? res_code,
    String? res_desc,
    List<Query$AllBuilding$allBuilding$$AllBuilding$items?>? items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$AllBuilding$allBuilding$$AllBuilding$items?>? Function(
              Iterable<
                  CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items<
                      Query$AllBuilding$allBuilding$$AllBuilding$items>?>?)
          _fn);
}

class _CopyWithImpl$Query$AllBuilding$allBuilding$$AllBuilding<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding$$AllBuilding<TRes> {
  _CopyWithImpl$Query$AllBuilding$allBuilding$$AllBuilding(
    this._instance,
    this._then,
  );

  final Query$AllBuilding$allBuilding$$AllBuilding _instance;

  final TRes Function(Query$AllBuilding$allBuilding$$AllBuilding) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllBuilding$allBuilding$$AllBuilding(
        res_code: res_code == _undefined || res_code == null
            ? _instance.res_code
            : (res_code as String),
        res_desc: res_desc == _undefined || res_desc == null
            ? _instance.res_desc
            : (res_desc as String),
        items: items == _undefined
            ? _instance.items
            : (items
                as List<Query$AllBuilding$allBuilding$$AllBuilding$items?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Query$AllBuilding$allBuilding$$AllBuilding$items?>? Function(
                  Iterable<
                      CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items<
                          Query$AllBuilding$allBuilding$$AllBuilding$items>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$AllBuilding$allBuilding$$AllBuilding<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding$$AllBuilding<TRes> {
  _CopyWithStubImpl$Query$AllBuilding$allBuilding$$AllBuilding(this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    List<Query$AllBuilding$allBuilding$$AllBuilding$items?>? items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Query$AllBuilding$allBuilding$$AllBuilding$items {
  Query$AllBuilding$allBuilding$$AllBuilding$items({
    required this.buildingID,
    required this.buildingName,
    required this.isActive,
    required this.index,
    this.$__typename = 'AllBuildingItem',
  });

  factory Query$AllBuilding$allBuilding$$AllBuilding$items.fromJson(
      Map<String, dynamic> json) {
    final l$buildingID = json['buildingID'];
    final l$buildingName = json['buildingName'];
    final l$isActive = json['isActive'];
    final l$index = json['index'];
    final l$$__typename = json['__typename'];
    return Query$AllBuilding$allBuilding$$AllBuilding$items(
      buildingID: (l$buildingID as String),
      buildingName: (l$buildingName as String),
      isActive: (l$isActive as bool),
      index: (l$index as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String buildingID;

  final String buildingName;

  final bool isActive;

  final int index;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$buildingID = buildingID;
    _resultData['buildingID'] = l$buildingID;
    final l$buildingName = buildingName;
    _resultData['buildingName'] = l$buildingName;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$index = index;
    _resultData['index'] = l$index;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$buildingName = buildingName;
    final l$isActive = isActive;
    final l$index = index;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$buildingID,
      l$buildingName,
      l$isActive,
      l$index,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllBuilding$allBuilding$$AllBuilding$items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$buildingName = buildingName;
    final lOther$buildingName = other.buildingName;
    if (l$buildingName != lOther$buildingName) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllBuilding$allBuilding$$AllBuilding$items
    on Query$AllBuilding$allBuilding$$AllBuilding$items {
  CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items<
          Query$AllBuilding$allBuilding$$AllBuilding$items>
      get copyWith => CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items<TRes> {
  factory CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items(
    Query$AllBuilding$allBuilding$$AllBuilding$items instance,
    TRes Function(Query$AllBuilding$allBuilding$$AllBuilding$items) then,
  ) = _CopyWithImpl$Query$AllBuilding$allBuilding$$AllBuilding$items;

  factory CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllBuilding$allBuilding$$AllBuilding$items;

  TRes call({
    String? buildingID,
    String? buildingName,
    bool? isActive,
    int? index,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllBuilding$allBuilding$$AllBuilding$items<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items<TRes> {
  _CopyWithImpl$Query$AllBuilding$allBuilding$$AllBuilding$items(
    this._instance,
    this._then,
  );

  final Query$AllBuilding$allBuilding$$AllBuilding$items _instance;

  final TRes Function(Query$AllBuilding$allBuilding$$AllBuilding$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? buildingName = _undefined,
    Object? isActive = _undefined,
    Object? index = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllBuilding$allBuilding$$AllBuilding$items(
        buildingID: buildingID == _undefined || buildingID == null
            ? _instance.buildingID
            : (buildingID as String),
        buildingName: buildingName == _undefined || buildingName == null
            ? _instance.buildingName
            : (buildingName as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        index: index == _undefined || index == null
            ? _instance.index
            : (index as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllBuilding$allBuilding$$AllBuilding$items<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding$$AllBuilding$items<TRes> {
  _CopyWithStubImpl$Query$AllBuilding$allBuilding$$AllBuilding$items(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? buildingName,
    bool? isActive,
    int? index,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllBuilding$allBuilding$$Error
    implements Query$AllBuilding$allBuilding {
  Query$AllBuilding$allBuilding$$Error({
    required this.res_code,
    required this.res_desc,
    this.$__typename = 'Error',
  });

  factory Query$AllBuilding$allBuilding$$Error.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$$__typename = json['__typename'];
    return Query$AllBuilding$allBuilding$$Error(
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
    if (!(other is Query$AllBuilding$allBuilding$$Error) ||
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

extension UtilityExtension$Query$AllBuilding$allBuilding$$Error
    on Query$AllBuilding$allBuilding$$Error {
  CopyWith$Query$AllBuilding$allBuilding$$Error<
          Query$AllBuilding$allBuilding$$Error>
      get copyWith => CopyWith$Query$AllBuilding$allBuilding$$Error(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllBuilding$allBuilding$$Error<TRes> {
  factory CopyWith$Query$AllBuilding$allBuilding$$Error(
    Query$AllBuilding$allBuilding$$Error instance,
    TRes Function(Query$AllBuilding$allBuilding$$Error) then,
  ) = _CopyWithImpl$Query$AllBuilding$allBuilding$$Error;

  factory CopyWith$Query$AllBuilding$allBuilding$$Error.stub(TRes res) =
      _CopyWithStubImpl$Query$AllBuilding$allBuilding$$Error;

  TRes call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllBuilding$allBuilding$$Error<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding$$Error<TRes> {
  _CopyWithImpl$Query$AllBuilding$allBuilding$$Error(
    this._instance,
    this._then,
  );

  final Query$AllBuilding$allBuilding$$Error _instance;

  final TRes Function(Query$AllBuilding$allBuilding$$Error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllBuilding$allBuilding$$Error(
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

class _CopyWithStubImpl$Query$AllBuilding$allBuilding$$Error<TRes>
    implements CopyWith$Query$AllBuilding$allBuilding$$Error<TRes> {
  _CopyWithStubImpl$Query$AllBuilding$allBuilding$$Error(this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  }) =>
      _res;
}
