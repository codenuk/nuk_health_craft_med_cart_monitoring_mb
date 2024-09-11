import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$ReportPatientHistory {
  factory Variables$Query$ReportPatientHistory(
          {required Input$ReportPatientHistoryFilterInput filter}) =>
      Variables$Query$ReportPatientHistory._({
        r'filter': filter,
      });

  Variables$Query$ReportPatientHistory._(this._$data);

  factory Variables$Query$ReportPatientHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = Input$ReportPatientHistoryFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$ReportPatientHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ReportPatientHistoryFilterInput get filter =>
      (_$data['filter'] as Input$ReportPatientHistoryFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ReportPatientHistory<
          Variables$Query$ReportPatientHistory>
      get copyWith => CopyWith$Variables$Query$ReportPatientHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ReportPatientHistory) ||
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

abstract class CopyWith$Variables$Query$ReportPatientHistory<TRes> {
  factory CopyWith$Variables$Query$ReportPatientHistory(
    Variables$Query$ReportPatientHistory instance,
    TRes Function(Variables$Query$ReportPatientHistory) then,
  ) = _CopyWithImpl$Variables$Query$ReportPatientHistory;

  factory CopyWith$Variables$Query$ReportPatientHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ReportPatientHistory;

  TRes call({Input$ReportPatientHistoryFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$ReportPatientHistory<TRes>
    implements CopyWith$Variables$Query$ReportPatientHistory<TRes> {
  _CopyWithImpl$Variables$Query$ReportPatientHistory(
    this._instance,
    this._then,
  );

  final Variables$Query$ReportPatientHistory _instance;

  final TRes Function(Variables$Query$ReportPatientHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$ReportPatientHistory._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$ReportPatientHistoryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ReportPatientHistory<TRes>
    implements CopyWith$Variables$Query$ReportPatientHistory<TRes> {
  _CopyWithStubImpl$Variables$Query$ReportPatientHistory(this._res);

  TRes _res;

  call({Input$ReportPatientHistoryFilterInput? filter}) => _res;
}

class Query$ReportPatientHistory {
  Query$ReportPatientHistory({
    this.reportPatientHistory,
    this.$__typename = 'Query',
  });

  factory Query$ReportPatientHistory.fromJson(Map<String, dynamic> json) {
    final l$reportPatientHistory = json['reportPatientHistory'];
    final l$$__typename = json['__typename'];
    return Query$ReportPatientHistory(
      reportPatientHistory: l$reportPatientHistory == null
          ? null
          : Query$ReportPatientHistory$reportPatientHistory.fromJson(
              (l$reportPatientHistory as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReportPatientHistory$reportPatientHistory? reportPatientHistory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reportPatientHistory = reportPatientHistory;
    _resultData['reportPatientHistory'] = l$reportPatientHistory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reportPatientHistory = reportPatientHistory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$reportPatientHistory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReportPatientHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reportPatientHistory = reportPatientHistory;
    final lOther$reportPatientHistory = other.reportPatientHistory;
    if (l$reportPatientHistory != lOther$reportPatientHistory) {
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

extension UtilityExtension$Query$ReportPatientHistory
    on Query$ReportPatientHistory {
  CopyWith$Query$ReportPatientHistory<Query$ReportPatientHistory>
      get copyWith => CopyWith$Query$ReportPatientHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReportPatientHistory<TRes> {
  factory CopyWith$Query$ReportPatientHistory(
    Query$ReportPatientHistory instance,
    TRes Function(Query$ReportPatientHistory) then,
  ) = _CopyWithImpl$Query$ReportPatientHistory;

  factory CopyWith$Query$ReportPatientHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$ReportPatientHistory;

  TRes call({
    Query$ReportPatientHistory$reportPatientHistory? reportPatientHistory,
    String? $__typename,
  });
  CopyWith$Query$ReportPatientHistory$reportPatientHistory<TRes>
      get reportPatientHistory;
}

class _CopyWithImpl$Query$ReportPatientHistory<TRes>
    implements CopyWith$Query$ReportPatientHistory<TRes> {
  _CopyWithImpl$Query$ReportPatientHistory(
    this._instance,
    this._then,
  );

  final Query$ReportPatientHistory _instance;

  final TRes Function(Query$ReportPatientHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reportPatientHistory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReportPatientHistory(
        reportPatientHistory: reportPatientHistory == _undefined
            ? _instance.reportPatientHistory
            : (reportPatientHistory
                as Query$ReportPatientHistory$reportPatientHistory?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReportPatientHistory$reportPatientHistory<TRes>
      get reportPatientHistory {
    final local$reportPatientHistory = _instance.reportPatientHistory;
    return local$reportPatientHistory == null
        ? CopyWith$Query$ReportPatientHistory$reportPatientHistory.stub(
            _then(_instance))
        : CopyWith$Query$ReportPatientHistory$reportPatientHistory(
            local$reportPatientHistory, (e) => call(reportPatientHistory: e));
  }
}

class _CopyWithStubImpl$Query$ReportPatientHistory<TRes>
    implements CopyWith$Query$ReportPatientHistory<TRes> {
  _CopyWithStubImpl$Query$ReportPatientHistory(this._res);

  TRes _res;

  call({
    Query$ReportPatientHistory$reportPatientHistory? reportPatientHistory,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReportPatientHistory$reportPatientHistory<TRes>
      get reportPatientHistory =>
          CopyWith$Query$ReportPatientHistory$reportPatientHistory.stub(_res);
}

const documentNodeQueryReportPatientHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReportPatientHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ReportPatientHistoryFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'reportPatientHistory'),
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
              name: NameNode(value: 'ReportPatientHistory'),
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
                    name: NameNode(value: 'checkInDate'),
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
                    name: NameNode(value: 'patientName'),
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
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'checkOutDate'),
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
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isHaveDocument'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'UUID'),
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

class Query$ReportPatientHistory$reportPatientHistory {
  Query$ReportPatientHistory$reportPatientHistory({required this.$__typename});

  factory Query$ReportPatientHistory$reportPatientHistory.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReportPatientHistory":
        return Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory
            .fromJson(json);

      case "Error":
        return Query$ReportPatientHistory$reportPatientHistory$$Error.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Query$ReportPatientHistory$reportPatientHistory(
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
    if (!(other is Query$ReportPatientHistory$reportPatientHistory) ||
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

extension UtilityExtension$Query$ReportPatientHistory$reportPatientHistory
    on Query$ReportPatientHistory$reportPatientHistory {
  CopyWith$Query$ReportPatientHistory$reportPatientHistory<
          Query$ReportPatientHistory$reportPatientHistory>
      get copyWith => CopyWith$Query$ReportPatientHistory$reportPatientHistory(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory)
        reportPatientHistory,
    required _T Function(Query$ReportPatientHistory$reportPatientHistory$$Error)
        error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReportPatientHistory":
        return reportPatientHistory(this
            as Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory);

      case "Error":
        return error(
            this as Query$ReportPatientHistory$reportPatientHistory$$Error);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory)?
        reportPatientHistory,
    _T Function(Query$ReportPatientHistory$reportPatientHistory$$Error)? error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReportPatientHistory":
        if (reportPatientHistory != null) {
          return reportPatientHistory(this
              as Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory);
        } else {
          return orElse();
        }

      case "Error":
        if (error != null) {
          return error(
              this as Query$ReportPatientHistory$reportPatientHistory$$Error);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$ReportPatientHistory$reportPatientHistory<TRes> {
  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory(
    Query$ReportPatientHistory$reportPatientHistory instance,
    TRes Function(Query$ReportPatientHistory$reportPatientHistory) then,
  ) = _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory;

  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory<TRes>
    implements CopyWith$Query$ReportPatientHistory$reportPatientHistory<TRes> {
  _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory(
    this._instance,
    this._then,
  );

  final Query$ReportPatientHistory$reportPatientHistory _instance;

  final TRes Function(Query$ReportPatientHistory$reportPatientHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReportPatientHistory$reportPatientHistory(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory<TRes>
    implements CopyWith$Query$ReportPatientHistory$reportPatientHistory<TRes> {
  _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory
    implements Query$ReportPatientHistory$reportPatientHistory {
  Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory({
    required this.res_code,
    required this.res_desc,
    this.items,
    this.$__typename = 'ReportPatientHistory',
  });

  factory Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory(
      res_code: (l$res_code as String),
      res_desc: (l$res_desc as String),
      items: (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String res_code;

  final String res_desc;

  final List<
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items?>?
      items;

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
    if (!(other
            is Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory) ||
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

extension UtilityExtension$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory
    on Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory {
  CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory<
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory>
      get copyWith =>
          CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory<
    TRes> {
  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory(
    Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory
        instance,
    TRes Function(
            Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory)
        then,
  ) = _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory;

  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory;

  TRes call({
    String? res_code,
    String? res_desc,
    List<Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items?>?
        items,
    String? $__typename,
  });
  TRes items(
      Iterable<Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items?>? Function(
              Iterable<
                  CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
                      Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items>?>?)
          _fn);
}

class _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory<
        TRes>
    implements
        CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory<
            TRes> {
  _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory(
    this._instance,
    this._then,
  );

  final Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory
      _instance;

  final TRes Function(
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory(
        res_code: res_code == _undefined || res_code == null
            ? _instance.res_code
            : (res_code as String),
        res_desc: res_desc == _undefined || res_desc == null
            ? _instance.res_desc
            : (res_desc as String),
        items: items == _undefined
            ? _instance.items
            : (items as List<
                Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items?>? Function(
                  Iterable<
                      CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
                          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory<
        TRes>
    implements
        CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory<
            TRes> {
  _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory(
      this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    List<Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items?>?
        items,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;
}

class Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items {
  Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items({
    required this.checkInDate,
    this.roomNo,
    this.patientName,
    required this.wardName,
    required this.username,
    this.checkOutDate,
    required this.deviceID,
    this.reason,
    required this.isHaveDocument,
    required this.UUID,
    this.$__typename = 'ReportPatientHistoryItem',
  });

  factory Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items.fromJson(
      Map<String, dynamic> json) {
    final l$checkInDate = json['checkInDate'];
    final l$roomNo = json['roomNo'];
    final l$patientName = json['patientName'];
    final l$wardName = json['wardName'];
    final l$username = json['username'];
    final l$checkOutDate = json['checkOutDate'];
    final l$deviceID = json['deviceID'];
    final l$reason = json['reason'];
    final l$isHaveDocument = json['isHaveDocument'];
    final l$UUID = json['UUID'];
    final l$$__typename = json['__typename'];
    return Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
      checkInDate: (l$checkInDate as String),
      roomNo: (l$roomNo as String?),
      patientName: (l$patientName as String?),
      wardName: (l$wardName as String),
      username: (l$username as String),
      checkOutDate: (l$checkOutDate as String?),
      deviceID: (l$deviceID as String),
      reason: (l$reason as String?),
      isHaveDocument: (l$isHaveDocument as bool),
      UUID: (l$UUID as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String checkInDate;

  final String? roomNo;

  final String? patientName;

  final String wardName;

  final String username;

  final String? checkOutDate;

  final String deviceID;

  final String? reason;

  final bool isHaveDocument;

  final String UUID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$checkInDate = checkInDate;
    _resultData['checkInDate'] = l$checkInDate;
    final l$roomNo = roomNo;
    _resultData['roomNo'] = l$roomNo;
    final l$patientName = patientName;
    _resultData['patientName'] = l$patientName;
    final l$wardName = wardName;
    _resultData['wardName'] = l$wardName;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$checkOutDate = checkOutDate;
    _resultData['checkOutDate'] = l$checkOutDate;
    final l$deviceID = deviceID;
    _resultData['deviceID'] = l$deviceID;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$isHaveDocument = isHaveDocument;
    _resultData['isHaveDocument'] = l$isHaveDocument;
    final l$UUID = UUID;
    _resultData['UUID'] = l$UUID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$checkInDate = checkInDate;
    final l$roomNo = roomNo;
    final l$patientName = patientName;
    final l$wardName = wardName;
    final l$username = username;
    final l$checkOutDate = checkOutDate;
    final l$deviceID = deviceID;
    final l$reason = reason;
    final l$isHaveDocument = isHaveDocument;
    final l$UUID = UUID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$checkInDate,
      l$roomNo,
      l$patientName,
      l$wardName,
      l$username,
      l$checkOutDate,
      l$deviceID,
      l$reason,
      l$isHaveDocument,
      l$UUID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$checkInDate = checkInDate;
    final lOther$checkInDate = other.checkInDate;
    if (l$checkInDate != lOther$checkInDate) {
      return false;
    }
    final l$roomNo = roomNo;
    final lOther$roomNo = other.roomNo;
    if (l$roomNo != lOther$roomNo) {
      return false;
    }
    final l$patientName = patientName;
    final lOther$patientName = other.patientName;
    if (l$patientName != lOther$patientName) {
      return false;
    }
    final l$wardName = wardName;
    final lOther$wardName = other.wardName;
    if (l$wardName != lOther$wardName) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$checkOutDate = checkOutDate;
    final lOther$checkOutDate = other.checkOutDate;
    if (l$checkOutDate != lOther$checkOutDate) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$isHaveDocument = isHaveDocument;
    final lOther$isHaveDocument = other.isHaveDocument;
    if (l$isHaveDocument != lOther$isHaveDocument) {
      return false;
    }
    final l$UUID = UUID;
    final lOther$UUID = other.UUID;
    if (l$UUID != lOther$UUID) {
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

extension UtilityExtension$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items
    on Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items {
  CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items>
      get copyWith =>
          CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
    TRes> {
  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
    Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items
        instance,
    TRes Function(
            Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items)
        then,
  ) = _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items;

  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items;

  TRes call({
    String? checkInDate,
    String? roomNo,
    String? patientName,
    String? wardName,
    String? username,
    String? checkOutDate,
    String? deviceID,
    String? reason,
    bool? isHaveDocument,
    String? UUID,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
        TRes>
    implements
        CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
            TRes> {
  _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
    this._instance,
    this._then,
  );

  final Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items
      _instance;

  final TRes Function(
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? checkInDate = _undefined,
    Object? roomNo = _undefined,
    Object? patientName = _undefined,
    Object? wardName = _undefined,
    Object? username = _undefined,
    Object? checkOutDate = _undefined,
    Object? deviceID = _undefined,
    Object? reason = _undefined,
    Object? isHaveDocument = _undefined,
    Object? UUID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
        checkInDate: checkInDate == _undefined || checkInDate == null
            ? _instance.checkInDate
            : (checkInDate as String),
        roomNo: roomNo == _undefined ? _instance.roomNo : (roomNo as String?),
        patientName: patientName == _undefined
            ? _instance.patientName
            : (patientName as String?),
        wardName: wardName == _undefined || wardName == null
            ? _instance.wardName
            : (wardName as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        checkOutDate: checkOutDate == _undefined
            ? _instance.checkOutDate
            : (checkOutDate as String?),
        deviceID: deviceID == _undefined || deviceID == null
            ? _instance.deviceID
            : (deviceID as String),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        isHaveDocument: isHaveDocument == _undefined || isHaveDocument == null
            ? _instance.isHaveDocument
            : (isHaveDocument as bool),
        UUID: UUID == _undefined || UUID == null
            ? _instance.UUID
            : (UUID as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
        TRes>
    implements
        CopyWith$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items<
            TRes> {
  _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$ReportPatientHistory$items(
      this._res);

  TRes _res;

  call({
    String? checkInDate,
    String? roomNo,
    String? patientName,
    String? wardName,
    String? username,
    String? checkOutDate,
    String? deviceID,
    String? reason,
    bool? isHaveDocument,
    String? UUID,
    String? $__typename,
  }) =>
      _res;
}

class Query$ReportPatientHistory$reportPatientHistory$$Error
    implements Query$ReportPatientHistory$reportPatientHistory {
  Query$ReportPatientHistory$reportPatientHistory$$Error({
    required this.res_code,
    required this.res_desc,
    this.$__typename = 'Error',
  });

  factory Query$ReportPatientHistory$reportPatientHistory$$Error.fromJson(
      Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$$__typename = json['__typename'];
    return Query$ReportPatientHistory$reportPatientHistory$$Error(
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
    if (!(other is Query$ReportPatientHistory$reportPatientHistory$$Error) ||
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

extension UtilityExtension$Query$ReportPatientHistory$reportPatientHistory$$Error
    on Query$ReportPatientHistory$reportPatientHistory$$Error {
  CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error<
          Query$ReportPatientHistory$reportPatientHistory$$Error>
      get copyWith =>
          CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error<
    TRes> {
  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error(
    Query$ReportPatientHistory$reportPatientHistory$$Error instance,
    TRes Function(Query$ReportPatientHistory$reportPatientHistory$$Error) then,
  ) = _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$Error;

  factory CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$Error;

  TRes call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$Error<TRes>
    implements
        CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error<TRes> {
  _CopyWithImpl$Query$ReportPatientHistory$reportPatientHistory$$Error(
    this._instance,
    this._then,
  );

  final Query$ReportPatientHistory$reportPatientHistory$$Error _instance;

  final TRes Function(Query$ReportPatientHistory$reportPatientHistory$$Error)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReportPatientHistory$reportPatientHistory$$Error(
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

class _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$Error<
        TRes>
    implements
        CopyWith$Query$ReportPatientHistory$reportPatientHistory$$Error<TRes> {
  _CopyWithStubImpl$Query$ReportPatientHistory$reportPatientHistory$$Error(
      this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  }) =>
      _res;
}
