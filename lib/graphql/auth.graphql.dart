import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Mutation$login {
  factory Variables$Mutation$login({required Input$LoginInput input}) =>
      Variables$Mutation$login._({
        r'input': input,
      });

  Variables$Mutation$login._(this._$data);

  factory Variables$Mutation$login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$LoginInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$login._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginInput get input => (_$data['input'] as Input$LoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$login<Variables$Mutation$login> get copyWith =>
      CopyWith$Variables$Mutation$login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$login) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$login<TRes> {
  factory CopyWith$Variables$Mutation$login(
    Variables$Mutation$login instance,
    TRes Function(Variables$Mutation$login) then,
  ) = _CopyWithImpl$Variables$Mutation$login;

  factory CopyWith$Variables$Mutation$login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$login;

  TRes call({Input$LoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$login<TRes>
    implements CopyWith$Variables$Mutation$login<TRes> {
  _CopyWithImpl$Variables$Mutation$login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$login _instance;

  final TRes Function(Variables$Mutation$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(Variables$Mutation$login._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$LoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$login<TRes>
    implements CopyWith$Variables$Mutation$login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$login(this._res);

  TRes _res;

  call({Input$LoginInput? input}) => _res;
}

class Mutation$login {
  Mutation$login({
    this.login,
    this.$__typename = 'Mutation',
  });

  factory Mutation$login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$login(
      login: l$login == null
          ? null
          : Mutation$login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$login$login? login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Mutation$login on Mutation$login {
  CopyWith$Mutation$login<Mutation$login> get copyWith =>
      CopyWith$Mutation$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$login<TRes> {
  factory CopyWith$Mutation$login(
    Mutation$login instance,
    TRes Function(Mutation$login) then,
  ) = _CopyWithImpl$Mutation$login;

  factory CopyWith$Mutation$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login;

  TRes call({
    Mutation$login$login? login,
    String? $__typename,
  });
  CopyWith$Mutation$login$login<TRes> get login;
}

class _CopyWithImpl$Mutation$login<TRes>
    implements CopyWith$Mutation$login<TRes> {
  _CopyWithImpl$Mutation$login(
    this._instance,
    this._then,
  );

  final Mutation$login _instance;

  final TRes Function(Mutation$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$login(
        login: login == _undefined
            ? _instance.login
            : (login as Mutation$login$login?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$login$login<TRes> get login {
    final local$login = _instance.login;
    return local$login == null
        ? CopyWith$Mutation$login$login.stub(_then(_instance))
        : CopyWith$Mutation$login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$login<TRes>
    implements CopyWith$Mutation$login<TRes> {
  _CopyWithStubImpl$Mutation$login(this._res);

  TRes _res;

  call({
    Mutation$login$login? login,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$login$login<TRes> get login =>
      CopyWith$Mutation$login$login.stub(_res);
}

const documentNodeMutationlogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
              name: NameNode(value: 'Login'),
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
                name: NameNode(value: 'accessToken'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refreshToken'),
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

class Mutation$login$login {
  Mutation$login$login({required this.$__typename});

  factory Mutation$login$login.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Login":
        return Mutation$login$login$$Login.fromJson(json);

      case "Error":
        return Mutation$login$login$$Error.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$login$login($__typename: (l$$__typename as String));
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
    if (!(other is Mutation$login$login) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$login$login on Mutation$login$login {
  CopyWith$Mutation$login$login<Mutation$login$login> get copyWith =>
      CopyWith$Mutation$login$login(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Mutation$login$login$$Login) login,
    required _T Function(Mutation$login$login$$Error) error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Login":
        return login(this as Mutation$login$login$$Login);

      case "Error":
        return error(this as Mutation$login$login$$Error);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$login$login$$Login)? login,
    _T Function(Mutation$login$login$$Error)? error,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Login":
        if (login != null) {
          return login(this as Mutation$login$login$$Login);
        } else {
          return orElse();
        }

      case "Error":
        if (error != null) {
          return error(this as Mutation$login$login$$Error);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$login$login<TRes> {
  factory CopyWith$Mutation$login$login(
    Mutation$login$login instance,
    TRes Function(Mutation$login$login) then,
  ) = _CopyWithImpl$Mutation$login$login;

  factory CopyWith$Mutation$login$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login$login;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$login$login<TRes>
    implements CopyWith$Mutation$login$login<TRes> {
  _CopyWithImpl$Mutation$login$login(
    this._instance,
    this._then,
  );

  final Mutation$login$login _instance;

  final TRes Function(Mutation$login$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Mutation$login$login(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$login$login<TRes>
    implements CopyWith$Mutation$login$login<TRes> {
  _CopyWithStubImpl$Mutation$login$login(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$login$login$$Login implements Mutation$login$login {
  Mutation$login$login$$Login({
    required this.res_code,
    required this.res_desc,
    required this.accessToken,
    required this.refreshToken,
    this.$__typename = 'Login',
  });

  factory Mutation$login$login$$Login.fromJson(Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$login$login$$Login(
      res_code: (l$res_code as String),
      res_desc: (l$res_desc as String),
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String res_code;

  final String res_desc;

  final String accessToken;

  final String refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$res_code = res_code;
    _resultData['res_code'] = l$res_code;
    final l$res_desc = res_desc;
    _resultData['res_desc'] = l$res_desc;
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$res_code = res_code;
    final l$res_desc = res_desc;
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$res_code,
      l$res_desc,
      l$accessToken,
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$login$login$$Login) ||
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
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
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

extension UtilityExtension$Mutation$login$login$$Login
    on Mutation$login$login$$Login {
  CopyWith$Mutation$login$login$$Login<Mutation$login$login$$Login>
      get copyWith => CopyWith$Mutation$login$login$$Login(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$login$login$$Login<TRes> {
  factory CopyWith$Mutation$login$login$$Login(
    Mutation$login$login$$Login instance,
    TRes Function(Mutation$login$login$$Login) then,
  ) = _CopyWithImpl$Mutation$login$login$$Login;

  factory CopyWith$Mutation$login$login$$Login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login$login$$Login;

  TRes call({
    String? res_code,
    String? res_desc,
    String? accessToken,
    String? refreshToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$login$login$$Login<TRes>
    implements CopyWith$Mutation$login$login$$Login<TRes> {
  _CopyWithImpl$Mutation$login$login$$Login(
    this._instance,
    this._then,
  );

  final Mutation$login$login$$Login _instance;

  final TRes Function(Mutation$login$login$$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$login$login$$Login(
        res_code: res_code == _undefined || res_code == null
            ? _instance.res_code
            : (res_code as String),
        res_desc: res_desc == _undefined || res_desc == null
            ? _instance.res_desc
            : (res_desc as String),
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$login$login$$Login<TRes>
    implements CopyWith$Mutation$login$login$$Login<TRes> {
  _CopyWithStubImpl$Mutation$login$login$$Login(this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? accessToken,
    String? refreshToken,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$login$login$$Error implements Mutation$login$login {
  Mutation$login$login$$Error({
    required this.res_code,
    required this.res_desc,
    this.$__typename = 'Error',
  });

  factory Mutation$login$login$$Error.fromJson(Map<String, dynamic> json) {
    final l$res_code = json['res_code'];
    final l$res_desc = json['res_desc'];
    final l$$__typename = json['__typename'];
    return Mutation$login$login$$Error(
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
    if (!(other is Mutation$login$login$$Error) ||
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

extension UtilityExtension$Mutation$login$login$$Error
    on Mutation$login$login$$Error {
  CopyWith$Mutation$login$login$$Error<Mutation$login$login$$Error>
      get copyWith => CopyWith$Mutation$login$login$$Error(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$login$login$$Error<TRes> {
  factory CopyWith$Mutation$login$login$$Error(
    Mutation$login$login$$Error instance,
    TRes Function(Mutation$login$login$$Error) then,
  ) = _CopyWithImpl$Mutation$login$login$$Error;

  factory CopyWith$Mutation$login$login$$Error.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login$login$$Error;

  TRes call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$login$login$$Error<TRes>
    implements CopyWith$Mutation$login$login$$Error<TRes> {
  _CopyWithImpl$Mutation$login$login$$Error(
    this._instance,
    this._then,
  );

  final Mutation$login$login$$Error _instance;

  final TRes Function(Mutation$login$login$$Error) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? res_code = _undefined,
    Object? res_desc = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$login$login$$Error(
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

class _CopyWithStubImpl$Mutation$login$login$$Error<TRes>
    implements CopyWith$Mutation$login$login$$Error<TRes> {
  _CopyWithStubImpl$Mutation$login$login$$Error(this._res);

  TRes _res;

  call({
    String? res_code,
    String? res_desc,
    String? $__typename,
  }) =>
      _res;
}
