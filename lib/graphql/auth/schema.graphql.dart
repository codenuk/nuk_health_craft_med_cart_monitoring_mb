class Input$ActivityLogListFilterInput {
  factory Input$ActivityLogListFilterInput({
    required int month,
    required int year,
    Enum$EActivityLogsActionType? actionType,
  }) =>
      Input$ActivityLogListFilterInput._({
        r'month': month,
        r'year': year,
        if (actionType != null) r'actionType': actionType,
      });

  Input$ActivityLogListFilterInput._(this._$data);

  factory Input$ActivityLogListFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$month = data['month'];
    result$data['month'] = (l$month as int);
    final l$year = data['year'];
    result$data['year'] = (l$year as int);
    if (data.containsKey('actionType')) {
      final l$actionType = data['actionType'];
      result$data['actionType'] = l$actionType == null
          ? null
          : fromJson$Enum$EActivityLogsActionType((l$actionType as String));
    }
    return Input$ActivityLogListFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get month => (_$data['month'] as int);

  int get year => (_$data['year'] as int);

  Enum$EActivityLogsActionType? get actionType =>
      (_$data['actionType'] as Enum$EActivityLogsActionType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$month = month;
    result$data['month'] = l$month;
    final l$year = year;
    result$data['year'] = l$year;
    if (_$data.containsKey('actionType')) {
      final l$actionType = actionType;
      result$data['actionType'] = l$actionType == null
          ? null
          : toJson$Enum$EActivityLogsActionType(l$actionType);
    }
    return result$data;
  }

  CopyWith$Input$ActivityLogListFilterInput<Input$ActivityLogListFilterInput>
      get copyWith => CopyWith$Input$ActivityLogListFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ActivityLogListFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$actionType = actionType;
    final lOther$actionType = other.actionType;
    if (_$data.containsKey('actionType') !=
        other._$data.containsKey('actionType')) {
      return false;
    }
    if (l$actionType != lOther$actionType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$month = month;
    final l$year = year;
    final l$actionType = actionType;
    return Object.hashAll([
      l$month,
      l$year,
      _$data.containsKey('actionType') ? l$actionType : const {},
    ]);
  }
}

abstract class CopyWith$Input$ActivityLogListFilterInput<TRes> {
  factory CopyWith$Input$ActivityLogListFilterInput(
    Input$ActivityLogListFilterInput instance,
    TRes Function(Input$ActivityLogListFilterInput) then,
  ) = _CopyWithImpl$Input$ActivityLogListFilterInput;

  factory CopyWith$Input$ActivityLogListFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ActivityLogListFilterInput;

  TRes call({
    int? month,
    int? year,
    Enum$EActivityLogsActionType? actionType,
  });
}

class _CopyWithImpl$Input$ActivityLogListFilterInput<TRes>
    implements CopyWith$Input$ActivityLogListFilterInput<TRes> {
  _CopyWithImpl$Input$ActivityLogListFilterInput(
    this._instance,
    this._then,
  );

  final Input$ActivityLogListFilterInput _instance;

  final TRes Function(Input$ActivityLogListFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? month = _undefined,
    Object? year = _undefined,
    Object? actionType = _undefined,
  }) =>
      _then(Input$ActivityLogListFilterInput._({
        ..._instance._$data,
        if (month != _undefined && month != null) 'month': (month as int),
        if (year != _undefined && year != null) 'year': (year as int),
        if (actionType != _undefined)
          'actionType': (actionType as Enum$EActivityLogsActionType?),
      }));
}

class _CopyWithStubImpl$Input$ActivityLogListFilterInput<TRes>
    implements CopyWith$Input$ActivityLogListFilterInput<TRes> {
  _CopyWithStubImpl$Input$ActivityLogListFilterInput(this._res);

  TRes _res;

  call({
    int? month,
    int? year,
    Enum$EActivityLogsActionType? actionType,
  }) =>
      _res;
}

class Input$ActivityLogListSortInput {
  factory Input$ActivityLogListSortInput({Enum$EOrderBy? createdAt}) =>
      Input$ActivityLogListSortInput._({
        if (createdAt != null) r'createdAt': createdAt,
      });

  Input$ActivityLogListSortInput._(this._$data);

  factory Input$ActivityLogListSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$createdAt as String));
    }
    return Input$ActivityLogListSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$EOrderBy? get createdAt => (_$data['createdAt'] as Enum$EOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$EOrderBy(l$createdAt);
    }
    return result$data;
  }

  CopyWith$Input$ActivityLogListSortInput<Input$ActivityLogListSortInput>
      get copyWith => CopyWith$Input$ActivityLogListSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ActivityLogListSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    return Object.hashAll(
        [_$data.containsKey('createdAt') ? l$createdAt : const {}]);
  }
}

abstract class CopyWith$Input$ActivityLogListSortInput<TRes> {
  factory CopyWith$Input$ActivityLogListSortInput(
    Input$ActivityLogListSortInput instance,
    TRes Function(Input$ActivityLogListSortInput) then,
  ) = _CopyWithImpl$Input$ActivityLogListSortInput;

  factory CopyWith$Input$ActivityLogListSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ActivityLogListSortInput;

  TRes call({Enum$EOrderBy? createdAt});
}

class _CopyWithImpl$Input$ActivityLogListSortInput<TRes>
    implements CopyWith$Input$ActivityLogListSortInput<TRes> {
  _CopyWithImpl$Input$ActivityLogListSortInput(
    this._instance,
    this._then,
  );

  final Input$ActivityLogListSortInput _instance;

  final TRes Function(Input$ActivityLogListSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createdAt = _undefined}) =>
      _then(Input$ActivityLogListSortInput._({
        ..._instance._$data,
        if (createdAt != _undefined) 'createdAt': (createdAt as Enum$EOrderBy?),
      }));
}

class _CopyWithStubImpl$Input$ActivityLogListSortInput<TRes>
    implements CopyWith$Input$ActivityLogListSortInput<TRes> {
  _CopyWithStubImpl$Input$ActivityLogListSortInput(this._res);

  TRes _res;

  call({Enum$EOrderBy? createdAt}) => _res;
}

class Input$AllFloorInBuildingFilterInput {
  factory Input$AllFloorInBuildingFilterInput({required String buildingID}) =>
      Input$AllFloorInBuildingFilterInput._({
        r'buildingID': buildingID,
      });

  Input$AllFloorInBuildingFilterInput._(this._$data);

  factory Input$AllFloorInBuildingFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    return Input$AllFloorInBuildingFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    return result$data;
  }

  CopyWith$Input$AllFloorInBuildingFilterInput<
          Input$AllFloorInBuildingFilterInput>
      get copyWith => CopyWith$Input$AllFloorInBuildingFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AllFloorInBuildingFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    return Object.hashAll([l$buildingID]);
  }
}

abstract class CopyWith$Input$AllFloorInBuildingFilterInput<TRes> {
  factory CopyWith$Input$AllFloorInBuildingFilterInput(
    Input$AllFloorInBuildingFilterInput instance,
    TRes Function(Input$AllFloorInBuildingFilterInput) then,
  ) = _CopyWithImpl$Input$AllFloorInBuildingFilterInput;

  factory CopyWith$Input$AllFloorInBuildingFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AllFloorInBuildingFilterInput;

  TRes call({String? buildingID});
}

class _CopyWithImpl$Input$AllFloorInBuildingFilterInput<TRes>
    implements CopyWith$Input$AllFloorInBuildingFilterInput<TRes> {
  _CopyWithImpl$Input$AllFloorInBuildingFilterInput(
    this._instance,
    this._then,
  );

  final Input$AllFloorInBuildingFilterInput _instance;

  final TRes Function(Input$AllFloorInBuildingFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? buildingID = _undefined}) =>
      _then(Input$AllFloorInBuildingFilterInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
      }));
}

class _CopyWithStubImpl$Input$AllFloorInBuildingFilterInput<TRes>
    implements CopyWith$Input$AllFloorInBuildingFilterInput<TRes> {
  _CopyWithStubImpl$Input$AllFloorInBuildingFilterInput(this._res);

  TRes _res;

  call({String? buildingID}) => _res;
}

class Input$AllWardInFloorFilterInput {
  factory Input$AllWardInFloorFilterInput({
    required String buildingID,
    required String floorID,
  }) =>
      Input$AllWardInFloorFilterInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
      });

  Input$AllWardInFloorFilterInput._(this._$data);

  factory Input$AllWardInFloorFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    return Input$AllWardInFloorFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    return result$data;
  }

  CopyWith$Input$AllWardInFloorFilterInput<Input$AllWardInFloorFilterInput>
      get copyWith => CopyWith$Input$AllWardInFloorFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$AllWardInFloorFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
    ]);
  }
}

abstract class CopyWith$Input$AllWardInFloorFilterInput<TRes> {
  factory CopyWith$Input$AllWardInFloorFilterInput(
    Input$AllWardInFloorFilterInput instance,
    TRes Function(Input$AllWardInFloorFilterInput) then,
  ) = _CopyWithImpl$Input$AllWardInFloorFilterInput;

  factory CopyWith$Input$AllWardInFloorFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AllWardInFloorFilterInput;

  TRes call({
    String? buildingID,
    String? floorID,
  });
}

class _CopyWithImpl$Input$AllWardInFloorFilterInput<TRes>
    implements CopyWith$Input$AllWardInFloorFilterInput<TRes> {
  _CopyWithImpl$Input$AllWardInFloorFilterInput(
    this._instance,
    this._then,
  );

  final Input$AllWardInFloorFilterInput _instance;

  final TRes Function(Input$AllWardInFloorFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
  }) =>
      _then(Input$AllWardInFloorFilterInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
      }));
}

class _CopyWithStubImpl$Input$AllWardInFloorFilterInput<TRes>
    implements CopyWith$Input$AllWardInFloorFilterInput<TRes> {
  _CopyWithStubImpl$Input$AllWardInFloorFilterInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
  }) =>
      _res;
}

class Input$ChangePasswordInput {
  factory Input$ChangePasswordInput({
    required String userID,
    required String passwordOld,
    required String passwordNew,
  }) =>
      Input$ChangePasswordInput._({
        r'userID': userID,
        r'passwordOld': passwordOld,
        r'passwordNew': passwordNew,
      });

  Input$ChangePasswordInput._(this._$data);

  factory Input$ChangePasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$passwordOld = data['passwordOld'];
    result$data['passwordOld'] = (l$passwordOld as String);
    final l$passwordNew = data['passwordNew'];
    result$data['passwordNew'] = (l$passwordNew as String);
    return Input$ChangePasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);

  String get passwordOld => (_$data['passwordOld'] as String);

  String get passwordNew => (_$data['passwordNew'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$passwordOld = passwordOld;
    result$data['passwordOld'] = l$passwordOld;
    final l$passwordNew = passwordNew;
    result$data['passwordNew'] = l$passwordNew;
    return result$data;
  }

  CopyWith$Input$ChangePasswordInput<Input$ChangePasswordInput> get copyWith =>
      CopyWith$Input$ChangePasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChangePasswordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$passwordOld = passwordOld;
    final lOther$passwordOld = other.passwordOld;
    if (l$passwordOld != lOther$passwordOld) {
      return false;
    }
    final l$passwordNew = passwordNew;
    final lOther$passwordNew = other.passwordNew;
    if (l$passwordNew != lOther$passwordNew) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    final l$passwordOld = passwordOld;
    final l$passwordNew = passwordNew;
    return Object.hashAll([
      l$userID,
      l$passwordOld,
      l$passwordNew,
    ]);
  }
}

abstract class CopyWith$Input$ChangePasswordInput<TRes> {
  factory CopyWith$Input$ChangePasswordInput(
    Input$ChangePasswordInput instance,
    TRes Function(Input$ChangePasswordInput) then,
  ) = _CopyWithImpl$Input$ChangePasswordInput;

  factory CopyWith$Input$ChangePasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChangePasswordInput;

  TRes call({
    String? userID,
    String? passwordOld,
    String? passwordNew,
  });
}

class _CopyWithImpl$Input$ChangePasswordInput<TRes>
    implements CopyWith$Input$ChangePasswordInput<TRes> {
  _CopyWithImpl$Input$ChangePasswordInput(
    this._instance,
    this._then,
  );

  final Input$ChangePasswordInput _instance;

  final TRes Function(Input$ChangePasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userID = _undefined,
    Object? passwordOld = _undefined,
    Object? passwordNew = _undefined,
  }) =>
      _then(Input$ChangePasswordInput._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (passwordOld != _undefined && passwordOld != null)
          'passwordOld': (passwordOld as String),
        if (passwordNew != _undefined && passwordNew != null)
          'passwordNew': (passwordNew as String),
      }));
}

class _CopyWithStubImpl$Input$ChangePasswordInput<TRes>
    implements CopyWith$Input$ChangePasswordInput<TRes> {
  _CopyWithStubImpl$Input$ChangePasswordInput(this._res);

  TRes _res;

  call({
    String? userID,
    String? passwordOld,
    String? passwordNew,
  }) =>
      _res;
}

class Input$CreateBuildingInput {
  factory Input$CreateBuildingInput({
    required String buildingName,
    required int index,
  }) =>
      Input$CreateBuildingInput._({
        r'buildingName': buildingName,
        r'index': index,
      });

  Input$CreateBuildingInput._(this._$data);

  factory Input$CreateBuildingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingName = data['buildingName'];
    result$data['buildingName'] = (l$buildingName as String);
    final l$index = data['index'];
    result$data['index'] = (l$index as int);
    return Input$CreateBuildingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingName => (_$data['buildingName'] as String);

  int get index => (_$data['index'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingName = buildingName;
    result$data['buildingName'] = l$buildingName;
    final l$index = index;
    result$data['index'] = l$index;
    return result$data;
  }

  CopyWith$Input$CreateBuildingInput<Input$CreateBuildingInput> get copyWith =>
      CopyWith$Input$CreateBuildingInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateBuildingInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingName = buildingName;
    final lOther$buildingName = other.buildingName;
    if (l$buildingName != lOther$buildingName) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingName = buildingName;
    final l$index = index;
    return Object.hashAll([
      l$buildingName,
      l$index,
    ]);
  }
}

abstract class CopyWith$Input$CreateBuildingInput<TRes> {
  factory CopyWith$Input$CreateBuildingInput(
    Input$CreateBuildingInput instance,
    TRes Function(Input$CreateBuildingInput) then,
  ) = _CopyWithImpl$Input$CreateBuildingInput;

  factory CopyWith$Input$CreateBuildingInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateBuildingInput;

  TRes call({
    String? buildingName,
    int? index,
  });
}

class _CopyWithImpl$Input$CreateBuildingInput<TRes>
    implements CopyWith$Input$CreateBuildingInput<TRes> {
  _CopyWithImpl$Input$CreateBuildingInput(
    this._instance,
    this._then,
  );

  final Input$CreateBuildingInput _instance;

  final TRes Function(Input$CreateBuildingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingName = _undefined,
    Object? index = _undefined,
  }) =>
      _then(Input$CreateBuildingInput._({
        ..._instance._$data,
        if (buildingName != _undefined && buildingName != null)
          'buildingName': (buildingName as String),
        if (index != _undefined && index != null) 'index': (index as int),
      }));
}

class _CopyWithStubImpl$Input$CreateBuildingInput<TRes>
    implements CopyWith$Input$CreateBuildingInput<TRes> {
  _CopyWithStubImpl$Input$CreateBuildingInput(this._res);

  TRes _res;

  call({
    String? buildingName,
    int? index,
  }) =>
      _res;
}

class Input$CreateDeviceInput {
  factory Input$CreateDeviceInput({
    required String deviceID,
    required bool isActive,
    String? customAttibute,
    String? imageURL,
    required String model,
    String? nurseHead,
    String? deviceName,
  }) =>
      Input$CreateDeviceInput._({
        r'deviceID': deviceID,
        r'isActive': isActive,
        if (customAttibute != null) r'customAttibute': customAttibute,
        if (imageURL != null) r'imageURL': imageURL,
        r'model': model,
        if (nurseHead != null) r'nurseHead': nurseHead,
        if (deviceName != null) r'deviceName': deviceName,
      });

  Input$CreateDeviceInput._(this._$data);

  factory Input$CreateDeviceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    if (data.containsKey('imageURL')) {
      final l$imageURL = data['imageURL'];
      result$data['imageURL'] = (l$imageURL as String?);
    }
    final l$model = data['model'];
    result$data['model'] = (l$model as String);
    if (data.containsKey('nurseHead')) {
      final l$nurseHead = data['nurseHead'];
      result$data['nurseHead'] = (l$nurseHead as String?);
    }
    if (data.containsKey('deviceName')) {
      final l$deviceName = data['deviceName'];
      result$data['deviceName'] = (l$deviceName as String?);
    }
    return Input$CreateDeviceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  bool get isActive => (_$data['isActive'] as bool);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  String? get imageURL => (_$data['imageURL'] as String?);

  String get model => (_$data['model'] as String);

  String? get nurseHead => (_$data['nurseHead'] as String?);

  String? get deviceName => (_$data['deviceName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    if (_$data.containsKey('imageURL')) {
      final l$imageURL = imageURL;
      result$data['imageURL'] = l$imageURL;
    }
    final l$model = model;
    result$data['model'] = l$model;
    if (_$data.containsKey('nurseHead')) {
      final l$nurseHead = nurseHead;
      result$data['nurseHead'] = l$nurseHead;
    }
    if (_$data.containsKey('deviceName')) {
      final l$deviceName = deviceName;
      result$data['deviceName'] = l$deviceName;
    }
    return result$data;
  }

  CopyWith$Input$CreateDeviceInput<Input$CreateDeviceInput> get copyWith =>
      CopyWith$Input$CreateDeviceInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateDeviceInput) ||
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
    final l$customAttibute = customAttibute;
    final lOther$customAttibute = other.customAttibute;
    if (_$data.containsKey('customAttibute') !=
        other._$data.containsKey('customAttibute')) {
      return false;
    }
    if (l$customAttibute != lOther$customAttibute) {
      return false;
    }
    final l$imageURL = imageURL;
    final lOther$imageURL = other.imageURL;
    if (_$data.containsKey('imageURL') !=
        other._$data.containsKey('imageURL')) {
      return false;
    }
    if (l$imageURL != lOther$imageURL) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$nurseHead = nurseHead;
    final lOther$nurseHead = other.nurseHead;
    if (_$data.containsKey('nurseHead') !=
        other._$data.containsKey('nurseHead')) {
      return false;
    }
    if (l$nurseHead != lOther$nurseHead) {
      return false;
    }
    final l$deviceName = deviceName;
    final lOther$deviceName = other.deviceName;
    if (_$data.containsKey('deviceName') !=
        other._$data.containsKey('deviceName')) {
      return false;
    }
    if (l$deviceName != lOther$deviceName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$isActive = isActive;
    final l$customAttibute = customAttibute;
    final l$imageURL = imageURL;
    final l$model = model;
    final l$nurseHead = nurseHead;
    final l$deviceName = deviceName;
    return Object.hashAll([
      l$deviceID,
      l$isActive,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
      _$data.containsKey('imageURL') ? l$imageURL : const {},
      l$model,
      _$data.containsKey('nurseHead') ? l$nurseHead : const {},
      _$data.containsKey('deviceName') ? l$deviceName : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateDeviceInput<TRes> {
  factory CopyWith$Input$CreateDeviceInput(
    Input$CreateDeviceInput instance,
    TRes Function(Input$CreateDeviceInput) then,
  ) = _CopyWithImpl$Input$CreateDeviceInput;

  factory CopyWith$Input$CreateDeviceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateDeviceInput;

  TRes call({
    String? deviceID,
    bool? isActive,
    String? customAttibute,
    String? imageURL,
    String? model,
    String? nurseHead,
    String? deviceName,
  });
}

class _CopyWithImpl$Input$CreateDeviceInput<TRes>
    implements CopyWith$Input$CreateDeviceInput<TRes> {
  _CopyWithImpl$Input$CreateDeviceInput(
    this._instance,
    this._then,
  );

  final Input$CreateDeviceInput _instance;

  final TRes Function(Input$CreateDeviceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? isActive = _undefined,
    Object? customAttibute = _undefined,
    Object? imageURL = _undefined,
    Object? model = _undefined,
    Object? nurseHead = _undefined,
    Object? deviceName = _undefined,
  }) =>
      _then(Input$CreateDeviceInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
        if (imageURL != _undefined) 'imageURL': (imageURL as String?),
        if (model != _undefined && model != null) 'model': (model as String),
        if (nurseHead != _undefined) 'nurseHead': (nurseHead as String?),
        if (deviceName != _undefined) 'deviceName': (deviceName as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateDeviceInput<TRes>
    implements CopyWith$Input$CreateDeviceInput<TRes> {
  _CopyWithStubImpl$Input$CreateDeviceInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    bool? isActive,
    String? customAttibute,
    String? imageURL,
    String? model,
    String? nurseHead,
    String? deviceName,
  }) =>
      _res;
}

class Input$CreateFloorInput {
  factory Input$CreateFloorInput({
    required String buildingID,
    required String floorName,
    required int index,
  }) =>
      Input$CreateFloorInput._({
        r'buildingID': buildingID,
        r'floorName': floorName,
        r'index': index,
      });

  Input$CreateFloorInput._(this._$data);

  factory Input$CreateFloorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorName = data['floorName'];
    result$data['floorName'] = (l$floorName as String);
    final l$index = data['index'];
    result$data['index'] = (l$index as int);
    return Input$CreateFloorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorName => (_$data['floorName'] as String);

  int get index => (_$data['index'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorName = floorName;
    result$data['floorName'] = l$floorName;
    final l$index = index;
    result$data['index'] = l$index;
    return result$data;
  }

  CopyWith$Input$CreateFloorInput<Input$CreateFloorInput> get copyWith =>
      CopyWith$Input$CreateFloorInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateFloorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorName = floorName;
    final lOther$floorName = other.floorName;
    if (l$floorName != lOther$floorName) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorName = floorName;
    final l$index = index;
    return Object.hashAll([
      l$buildingID,
      l$floorName,
      l$index,
    ]);
  }
}

abstract class CopyWith$Input$CreateFloorInput<TRes> {
  factory CopyWith$Input$CreateFloorInput(
    Input$CreateFloorInput instance,
    TRes Function(Input$CreateFloorInput) then,
  ) = _CopyWithImpl$Input$CreateFloorInput;

  factory CopyWith$Input$CreateFloorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateFloorInput;

  TRes call({
    String? buildingID,
    String? floorName,
    int? index,
  });
}

class _CopyWithImpl$Input$CreateFloorInput<TRes>
    implements CopyWith$Input$CreateFloorInput<TRes> {
  _CopyWithImpl$Input$CreateFloorInput(
    this._instance,
    this._then,
  );

  final Input$CreateFloorInput _instance;

  final TRes Function(Input$CreateFloorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorName = _undefined,
    Object? index = _undefined,
  }) =>
      _then(Input$CreateFloorInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorName != _undefined && floorName != null)
          'floorName': (floorName as String),
        if (index != _undefined && index != null) 'index': (index as int),
      }));
}

class _CopyWithStubImpl$Input$CreateFloorInput<TRes>
    implements CopyWith$Input$CreateFloorInput<TRes> {
  _CopyWithStubImpl$Input$CreateFloorInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorName,
    int? index,
  }) =>
      _res;
}

class Input$CreateUserInput {
  factory Input$CreateUserInput({
    required String username,
    required String password,
    required String fullname,
    String? imageURL,
    required String userRoleID,
    String? customAttibute,
  }) =>
      Input$CreateUserInput._({
        r'username': username,
        r'password': password,
        r'fullname': fullname,
        if (imageURL != null) r'imageURL': imageURL,
        r'userRoleID': userRoleID,
        if (customAttibute != null) r'customAttibute': customAttibute,
      });

  Input$CreateUserInput._(this._$data);

  factory Input$CreateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$fullname = data['fullname'];
    result$data['fullname'] = (l$fullname as String);
    if (data.containsKey('imageURL')) {
      final l$imageURL = data['imageURL'];
      result$data['imageURL'] = (l$imageURL as String?);
    }
    final l$userRoleID = data['userRoleID'];
    result$data['userRoleID'] = (l$userRoleID as String);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    return Input$CreateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  String get fullname => (_$data['fullname'] as String);

  String? get imageURL => (_$data['imageURL'] as String?);

  String get userRoleID => (_$data['userRoleID'] as String);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    final l$fullname = fullname;
    result$data['fullname'] = l$fullname;
    if (_$data.containsKey('imageURL')) {
      final l$imageURL = imageURL;
      result$data['imageURL'] = l$imageURL;
    }
    final l$userRoleID = userRoleID;
    result$data['userRoleID'] = l$userRoleID;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    return result$data;
  }

  CopyWith$Input$CreateUserInput<Input$CreateUserInput> get copyWith =>
      CopyWith$Input$CreateUserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateUserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$fullname = fullname;
    final lOther$fullname = other.fullname;
    if (l$fullname != lOther$fullname) {
      return false;
    }
    final l$imageURL = imageURL;
    final lOther$imageURL = other.imageURL;
    if (_$data.containsKey('imageURL') !=
        other._$data.containsKey('imageURL')) {
      return false;
    }
    if (l$imageURL != lOther$imageURL) {
      return false;
    }
    final l$userRoleID = userRoleID;
    final lOther$userRoleID = other.userRoleID;
    if (l$userRoleID != lOther$userRoleID) {
      return false;
    }
    final l$customAttibute = customAttibute;
    final lOther$customAttibute = other.customAttibute;
    if (_$data.containsKey('customAttibute') !=
        other._$data.containsKey('customAttibute')) {
      return false;
    }
    if (l$customAttibute != lOther$customAttibute) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    final l$fullname = fullname;
    final l$imageURL = imageURL;
    final l$userRoleID = userRoleID;
    final l$customAttibute = customAttibute;
    return Object.hashAll([
      l$username,
      l$password,
      l$fullname,
      _$data.containsKey('imageURL') ? l$imageURL : const {},
      l$userRoleID,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateUserInput<TRes> {
  factory CopyWith$Input$CreateUserInput(
    Input$CreateUserInput instance,
    TRes Function(Input$CreateUserInput) then,
  ) = _CopyWithImpl$Input$CreateUserInput;

  factory CopyWith$Input$CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserInput;

  TRes call({
    String? username,
    String? password,
    String? fullname,
    String? imageURL,
    String? userRoleID,
    String? customAttibute,
  });
}

class _CopyWithImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithImpl$Input$CreateUserInput(
    this._instance,
    this._then,
  );

  final Input$CreateUserInput _instance;

  final TRes Function(Input$CreateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
    Object? fullname = _undefined,
    Object? imageURL = _undefined,
    Object? userRoleID = _undefined,
    Object? customAttibute = _undefined,
  }) =>
      _then(Input$CreateUserInput._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (fullname != _undefined && fullname != null)
          'fullname': (fullname as String),
        if (imageURL != _undefined) 'imageURL': (imageURL as String?),
        if (userRoleID != _undefined && userRoleID != null)
          'userRoleID': (userRoleID as String),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserInput(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
    String? fullname,
    String? imageURL,
    String? userRoleID,
    String? customAttibute,
  }) =>
      _res;
}

class Input$CreateUserRoleInput {
  factory Input$CreateUserRoleInput({
    required String userRoleName,
    required List<Enum$EPermission?> permission,
    required bool isActive,
    String? customAttibute,
  }) =>
      Input$CreateUserRoleInput._({
        r'userRoleName': userRoleName,
        r'permission': permission,
        r'isActive': isActive,
        if (customAttibute != null) r'customAttibute': customAttibute,
      });

  Input$CreateUserRoleInput._(this._$data);

  factory Input$CreateUserRoleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userRoleName = data['userRoleName'];
    result$data['userRoleName'] = (l$userRoleName as String);
    final l$permission = data['permission'];
    result$data['permission'] = (l$permission as List<dynamic>)
        .map((e) => e == null ? null : fromJson$Enum$EPermission((e as String)))
        .toList();
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    return Input$CreateUserRoleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userRoleName => (_$data['userRoleName'] as String);

  List<Enum$EPermission?> get permission =>
      (_$data['permission'] as List<Enum$EPermission?>);

  bool get isActive => (_$data['isActive'] as bool);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userRoleName = userRoleName;
    result$data['userRoleName'] = l$userRoleName;
    final l$permission = permission;
    result$data['permission'] = l$permission
        .map((e) => e == null ? null : toJson$Enum$EPermission(e))
        .toList();
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    return result$data;
  }

  CopyWith$Input$CreateUserRoleInput<Input$CreateUserRoleInput> get copyWith =>
      CopyWith$Input$CreateUserRoleInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateUserRoleInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userRoleName = userRoleName;
    final lOther$userRoleName = other.userRoleName;
    if (l$userRoleName != lOther$userRoleName) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (l$permission.length != lOther$permission.length) {
      return false;
    }
    for (int i = 0; i < l$permission.length; i++) {
      final l$permission$entry = l$permission[i];
      final lOther$permission$entry = lOther$permission[i];
      if (l$permission$entry != lOther$permission$entry) {
        return false;
      }
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$customAttibute = customAttibute;
    final lOther$customAttibute = other.customAttibute;
    if (_$data.containsKey('customAttibute') !=
        other._$data.containsKey('customAttibute')) {
      return false;
    }
    if (l$customAttibute != lOther$customAttibute) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userRoleName = userRoleName;
    final l$permission = permission;
    final l$isActive = isActive;
    final l$customAttibute = customAttibute;
    return Object.hashAll([
      l$userRoleName,
      Object.hashAll(l$permission.map((v) => v)),
      l$isActive,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateUserRoleInput<TRes> {
  factory CopyWith$Input$CreateUserRoleInput(
    Input$CreateUserRoleInput instance,
    TRes Function(Input$CreateUserRoleInput) then,
  ) = _CopyWithImpl$Input$CreateUserRoleInput;

  factory CopyWith$Input$CreateUserRoleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserRoleInput;

  TRes call({
    String? userRoleName,
    List<Enum$EPermission?>? permission,
    bool? isActive,
    String? customAttibute,
  });
}

class _CopyWithImpl$Input$CreateUserRoleInput<TRes>
    implements CopyWith$Input$CreateUserRoleInput<TRes> {
  _CopyWithImpl$Input$CreateUserRoleInput(
    this._instance,
    this._then,
  );

  final Input$CreateUserRoleInput _instance;

  final TRes Function(Input$CreateUserRoleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userRoleName = _undefined,
    Object? permission = _undefined,
    Object? isActive = _undefined,
    Object? customAttibute = _undefined,
  }) =>
      _then(Input$CreateUserRoleInput._({
        ..._instance._$data,
        if (userRoleName != _undefined && userRoleName != null)
          'userRoleName': (userRoleName as String),
        if (permission != _undefined && permission != null)
          'permission': (permission as List<Enum$EPermission?>),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateUserRoleInput<TRes>
    implements CopyWith$Input$CreateUserRoleInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserRoleInput(this._res);

  TRes _res;

  call({
    String? userRoleName,
    List<Enum$EPermission?>? permission,
    bool? isActive,
    String? customAttibute,
  }) =>
      _res;
}

class Input$CreateWardInput {
  factory Input$CreateWardInput({
    required String buildingID,
    required String floorID,
    required String wardName,
    required int index,
  }) =>
      Input$CreateWardInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'wardName': wardName,
        r'index': index,
      });

  Input$CreateWardInput._(this._$data);

  factory Input$CreateWardInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$wardName = data['wardName'];
    result$data['wardName'] = (l$wardName as String);
    final l$index = data['index'];
    result$data['index'] = (l$index as int);
    return Input$CreateWardInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  String get wardName => (_$data['wardName'] as String);

  int get index => (_$data['index'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$wardName = wardName;
    result$data['wardName'] = l$wardName;
    final l$index = index;
    result$data['index'] = l$index;
    return result$data;
  }

  CopyWith$Input$CreateWardInput<Input$CreateWardInput> get copyWith =>
      CopyWith$Input$CreateWardInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateWardInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    final l$wardName = wardName;
    final lOther$wardName = other.wardName;
    if (l$wardName != lOther$wardName) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$wardName = wardName;
    final l$index = index;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$wardName,
      l$index,
    ]);
  }
}

abstract class CopyWith$Input$CreateWardInput<TRes> {
  factory CopyWith$Input$CreateWardInput(
    Input$CreateWardInput instance,
    TRes Function(Input$CreateWardInput) then,
  ) = _CopyWithImpl$Input$CreateWardInput;

  factory CopyWith$Input$CreateWardInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateWardInput;

  TRes call({
    String? buildingID,
    String? floorID,
    String? wardName,
    int? index,
  });
}

class _CopyWithImpl$Input$CreateWardInput<TRes>
    implements CopyWith$Input$CreateWardInput<TRes> {
  _CopyWithImpl$Input$CreateWardInput(
    this._instance,
    this._then,
  );

  final Input$CreateWardInput _instance;

  final TRes Function(Input$CreateWardInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? wardName = _undefined,
    Object? index = _undefined,
  }) =>
      _then(Input$CreateWardInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (wardName != _undefined && wardName != null)
          'wardName': (wardName as String),
        if (index != _undefined && index != null) 'index': (index as int),
      }));
}

class _CopyWithStubImpl$Input$CreateWardInput<TRes>
    implements CopyWith$Input$CreateWardInput<TRes> {
  _CopyWithStubImpl$Input$CreateWardInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    String? wardName,
    int? index,
  }) =>
      _res;
}

class Input$DashboardFilterInput {
  factory Input$DashboardFilterInput({
    String? wardID,
    required int year,
  }) =>
      Input$DashboardFilterInput._({
        if (wardID != null) r'wardID': wardID,
        r'year': year,
      });

  Input$DashboardFilterInput._(this._$data);

  factory Input$DashboardFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('wardID')) {
      final l$wardID = data['wardID'];
      result$data['wardID'] = (l$wardID as String?);
    }
    final l$year = data['year'];
    result$data['year'] = (l$year as int);
    return Input$DashboardFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get wardID => (_$data['wardID'] as String?);

  int get year => (_$data['year'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('wardID')) {
      final l$wardID = wardID;
      result$data['wardID'] = l$wardID;
    }
    final l$year = year;
    result$data['year'] = l$year;
    return result$data;
  }

  CopyWith$Input$DashboardFilterInput<Input$DashboardFilterInput>
      get copyWith => CopyWith$Input$DashboardFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DashboardFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (_$data.containsKey('wardID') != other._$data.containsKey('wardID')) {
      return false;
    }
    if (l$wardID != lOther$wardID) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$wardID = wardID;
    final l$year = year;
    return Object.hashAll([
      _$data.containsKey('wardID') ? l$wardID : const {},
      l$year,
    ]);
  }
}

abstract class CopyWith$Input$DashboardFilterInput<TRes> {
  factory CopyWith$Input$DashboardFilterInput(
    Input$DashboardFilterInput instance,
    TRes Function(Input$DashboardFilterInput) then,
  ) = _CopyWithImpl$Input$DashboardFilterInput;

  factory CopyWith$Input$DashboardFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DashboardFilterInput;

  TRes call({
    String? wardID,
    int? year,
  });
}

class _CopyWithImpl$Input$DashboardFilterInput<TRes>
    implements CopyWith$Input$DashboardFilterInput<TRes> {
  _CopyWithImpl$Input$DashboardFilterInput(
    this._instance,
    this._then,
  );

  final Input$DashboardFilterInput _instance;

  final TRes Function(Input$DashboardFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wardID = _undefined,
    Object? year = _undefined,
  }) =>
      _then(Input$DashboardFilterInput._({
        ..._instance._$data,
        if (wardID != _undefined) 'wardID': (wardID as String?),
        if (year != _undefined && year != null) 'year': (year as int),
      }));
}

class _CopyWithStubImpl$Input$DashboardFilterInput<TRes>
    implements CopyWith$Input$DashboardFilterInput<TRes> {
  _CopyWithStubImpl$Input$DashboardFilterInput(this._res);

  TRes _res;

  call({
    String? wardID,
    int? year,
  }) =>
      _res;
}

class Input$DeleteBuildingInput {
  factory Input$DeleteBuildingInput({required String buildingID}) =>
      Input$DeleteBuildingInput._({
        r'buildingID': buildingID,
      });

  Input$DeleteBuildingInput._(this._$data);

  factory Input$DeleteBuildingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    return Input$DeleteBuildingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    return result$data;
  }

  CopyWith$Input$DeleteBuildingInput<Input$DeleteBuildingInput> get copyWith =>
      CopyWith$Input$DeleteBuildingInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeleteBuildingInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    return Object.hashAll([l$buildingID]);
  }
}

abstract class CopyWith$Input$DeleteBuildingInput<TRes> {
  factory CopyWith$Input$DeleteBuildingInput(
    Input$DeleteBuildingInput instance,
    TRes Function(Input$DeleteBuildingInput) then,
  ) = _CopyWithImpl$Input$DeleteBuildingInput;

  factory CopyWith$Input$DeleteBuildingInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteBuildingInput;

  TRes call({String? buildingID});
}

class _CopyWithImpl$Input$DeleteBuildingInput<TRes>
    implements CopyWith$Input$DeleteBuildingInput<TRes> {
  _CopyWithImpl$Input$DeleteBuildingInput(
    this._instance,
    this._then,
  );

  final Input$DeleteBuildingInput _instance;

  final TRes Function(Input$DeleteBuildingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? buildingID = _undefined}) =>
      _then(Input$DeleteBuildingInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteBuildingInput<TRes>
    implements CopyWith$Input$DeleteBuildingInput<TRes> {
  _CopyWithStubImpl$Input$DeleteBuildingInput(this._res);

  TRes _res;

  call({String? buildingID}) => _res;
}

class Input$DeleteFloorInput {
  factory Input$DeleteFloorInput({
    required String buildingID,
    required String floorID,
  }) =>
      Input$DeleteFloorInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
      });

  Input$DeleteFloorInput._(this._$data);

  factory Input$DeleteFloorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    return Input$DeleteFloorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    return result$data;
  }

  CopyWith$Input$DeleteFloorInput<Input$DeleteFloorInput> get copyWith =>
      CopyWith$Input$DeleteFloorInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeleteFloorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
    ]);
  }
}

abstract class CopyWith$Input$DeleteFloorInput<TRes> {
  factory CopyWith$Input$DeleteFloorInput(
    Input$DeleteFloorInput instance,
    TRes Function(Input$DeleteFloorInput) then,
  ) = _CopyWithImpl$Input$DeleteFloorInput;

  factory CopyWith$Input$DeleteFloorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteFloorInput;

  TRes call({
    String? buildingID,
    String? floorID,
  });
}

class _CopyWithImpl$Input$DeleteFloorInput<TRes>
    implements CopyWith$Input$DeleteFloorInput<TRes> {
  _CopyWithImpl$Input$DeleteFloorInput(
    this._instance,
    this._then,
  );

  final Input$DeleteFloorInput _instance;

  final TRes Function(Input$DeleteFloorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
  }) =>
      _then(Input$DeleteFloorInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteFloorInput<TRes>
    implements CopyWith$Input$DeleteFloorInput<TRes> {
  _CopyWithStubImpl$Input$DeleteFloorInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
  }) =>
      _res;
}

class Input$DeleteLocationDeviceInput {
  factory Input$DeleteLocationDeviceInput({required String deviceID}) =>
      Input$DeleteLocationDeviceInput._({
        r'deviceID': deviceID,
      });

  Input$DeleteLocationDeviceInput._(this._$data);

  factory Input$DeleteLocationDeviceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    return Input$DeleteLocationDeviceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    return result$data;
  }

  CopyWith$Input$DeleteLocationDeviceInput<Input$DeleteLocationDeviceInput>
      get copyWith => CopyWith$Input$DeleteLocationDeviceInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeleteLocationDeviceInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    return Object.hashAll([l$deviceID]);
  }
}

abstract class CopyWith$Input$DeleteLocationDeviceInput<TRes> {
  factory CopyWith$Input$DeleteLocationDeviceInput(
    Input$DeleteLocationDeviceInput instance,
    TRes Function(Input$DeleteLocationDeviceInput) then,
  ) = _CopyWithImpl$Input$DeleteLocationDeviceInput;

  factory CopyWith$Input$DeleteLocationDeviceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteLocationDeviceInput;

  TRes call({String? deviceID});
}

class _CopyWithImpl$Input$DeleteLocationDeviceInput<TRes>
    implements CopyWith$Input$DeleteLocationDeviceInput<TRes> {
  _CopyWithImpl$Input$DeleteLocationDeviceInput(
    this._instance,
    this._then,
  );

  final Input$DeleteLocationDeviceInput _instance;

  final TRes Function(Input$DeleteLocationDeviceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deviceID = _undefined}) =>
      _then(Input$DeleteLocationDeviceInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteLocationDeviceInput<TRes>
    implements CopyWith$Input$DeleteLocationDeviceInput<TRes> {
  _CopyWithStubImpl$Input$DeleteLocationDeviceInput(this._res);

  TRes _res;

  call({String? deviceID}) => _res;
}

class Input$DeleteUserInput {
  factory Input$DeleteUserInput({required String userID}) =>
      Input$DeleteUserInput._({
        r'userID': userID,
      });

  Input$DeleteUserInput._(this._$data);

  factory Input$DeleteUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    return Input$DeleteUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    return result$data;
  }

  CopyWith$Input$DeleteUserInput<Input$DeleteUserInput> get copyWith =>
      CopyWith$Input$DeleteUserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeleteUserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    return Object.hashAll([l$userID]);
  }
}

abstract class CopyWith$Input$DeleteUserInput<TRes> {
  factory CopyWith$Input$DeleteUserInput(
    Input$DeleteUserInput instance,
    TRes Function(Input$DeleteUserInput) then,
  ) = _CopyWithImpl$Input$DeleteUserInput;

  factory CopyWith$Input$DeleteUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteUserInput;

  TRes call({String? userID});
}

class _CopyWithImpl$Input$DeleteUserInput<TRes>
    implements CopyWith$Input$DeleteUserInput<TRes> {
  _CopyWithImpl$Input$DeleteUserInput(
    this._instance,
    this._then,
  );

  final Input$DeleteUserInput _instance;

  final TRes Function(Input$DeleteUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userID = _undefined}) => _then(Input$DeleteUserInput._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteUserInput<TRes>
    implements CopyWith$Input$DeleteUserInput<TRes> {
  _CopyWithStubImpl$Input$DeleteUserInput(this._res);

  TRes _res;

  call({String? userID}) => _res;
}

class Input$DeleteWardInput {
  factory Input$DeleteWardInput({
    required String buildingID,
    required String floorID,
    required String wardID,
  }) =>
      Input$DeleteWardInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'wardID': wardID,
      });

  Input$DeleteWardInput._(this._$data);

  factory Input$DeleteWardInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$wardID = data['wardID'];
    result$data['wardID'] = (l$wardID as String);
    return Input$DeleteWardInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  String get wardID => (_$data['wardID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$wardID = wardID;
    result$data['wardID'] = l$wardID;
    return result$data;
  }

  CopyWith$Input$DeleteWardInput<Input$DeleteWardInput> get copyWith =>
      CopyWith$Input$DeleteWardInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeleteWardInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (l$wardID != lOther$wardID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$wardID = wardID;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$wardID,
    ]);
  }
}

abstract class CopyWith$Input$DeleteWardInput<TRes> {
  factory CopyWith$Input$DeleteWardInput(
    Input$DeleteWardInput instance,
    TRes Function(Input$DeleteWardInput) then,
  ) = _CopyWithImpl$Input$DeleteWardInput;

  factory CopyWith$Input$DeleteWardInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteWardInput;

  TRes call({
    String? buildingID,
    String? floorID,
    String? wardID,
  });
}

class _CopyWithImpl$Input$DeleteWardInput<TRes>
    implements CopyWith$Input$DeleteWardInput<TRes> {
  _CopyWithImpl$Input$DeleteWardInput(
    this._instance,
    this._then,
  );

  final Input$DeleteWardInput _instance;

  final TRes Function(Input$DeleteWardInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? wardID = _undefined,
  }) =>
      _then(Input$DeleteWardInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (wardID != _undefined && wardID != null)
          'wardID': (wardID as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteWardInput<TRes>
    implements CopyWith$Input$DeleteWardInput<TRes> {
  _CopyWithStubImpl$Input$DeleteWardInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    String? wardID,
  }) =>
      _res;
}

class Input$DeviceFilterInput {
  factory Input$DeviceFilterInput({
    String? deviceID,
    required bool isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
    bool? isAvaliable,
  }) =>
      Input$DeviceFilterInput._({
        if (deviceID != null) r'deviceID': deviceID,
        r'isActive': isActive,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (isAvaliable != null) r'isAvaliable': isAvaliable,
      });

  Input$DeviceFilterInput._(this._$data);

  factory Input$DeviceFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('deviceID')) {
      final l$deviceID = data['deviceID'];
      result$data['deviceID'] = (l$deviceID as String?);
    }
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DurationTimeInput.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DurationTimeInput.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    if (data.containsKey('isAvaliable')) {
      final l$isAvaliable = data['isAvaliable'];
      result$data['isAvaliable'] = (l$isAvaliable as bool?);
    }
    return Input$DeviceFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get deviceID => (_$data['deviceID'] as String?);

  bool get isActive => (_$data['isActive'] as bool);

  Input$DurationTimeInput? get createdAt =>
      (_$data['createdAt'] as Input$DurationTimeInput?);

  Input$DurationTimeInput? get updatedAt =>
      (_$data['updatedAt'] as Input$DurationTimeInput?);

  bool? get isAvaliable => (_$data['isAvaliable'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('deviceID')) {
      final l$deviceID = deviceID;
      result$data['deviceID'] = l$deviceID;
    }
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('isAvaliable')) {
      final l$isAvaliable = isAvaliable;
      result$data['isAvaliable'] = l$isAvaliable;
    }
    return result$data;
  }

  CopyWith$Input$DeviceFilterInput<Input$DeviceFilterInput> get copyWith =>
      CopyWith$Input$DeviceFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeviceFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (_$data.containsKey('deviceID') !=
        other._$data.containsKey('deviceID')) {
      return false;
    }
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$isAvaliable = isAvaliable;
    final lOther$isAvaliable = other.isAvaliable;
    if (_$data.containsKey('isAvaliable') !=
        other._$data.containsKey('isAvaliable')) {
      return false;
    }
    if (l$isAvaliable != lOther$isAvaliable) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$isActive = isActive;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$isAvaliable = isAvaliable;
    return Object.hashAll([
      _$data.containsKey('deviceID') ? l$deviceID : const {},
      l$isActive,
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('isAvaliable') ? l$isAvaliable : const {},
    ]);
  }
}

abstract class CopyWith$Input$DeviceFilterInput<TRes> {
  factory CopyWith$Input$DeviceFilterInput(
    Input$DeviceFilterInput instance,
    TRes Function(Input$DeviceFilterInput) then,
  ) = _CopyWithImpl$Input$DeviceFilterInput;

  factory CopyWith$Input$DeviceFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeviceFilterInput;

  TRes call({
    String? deviceID,
    bool? isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
    bool? isAvaliable,
  });
  CopyWith$Input$DurationTimeInput<TRes> get createdAt;
  CopyWith$Input$DurationTimeInput<TRes> get updatedAt;
}

class _CopyWithImpl$Input$DeviceFilterInput<TRes>
    implements CopyWith$Input$DeviceFilterInput<TRes> {
  _CopyWithImpl$Input$DeviceFilterInput(
    this._instance,
    this._then,
  );

  final Input$DeviceFilterInput _instance;

  final TRes Function(Input$DeviceFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? isActive = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? isAvaliable = _undefined,
  }) =>
      _then(Input$DeviceFilterInput._({
        ..._instance._$data,
        if (deviceID != _undefined) 'deviceID': (deviceID as String?),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DurationTimeInput?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DurationTimeInput?),
        if (isAvaliable != _undefined) 'isAvaliable': (isAvaliable as bool?),
      }));

  CopyWith$Input$DurationTimeInput<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DurationTimeInput.stub(_then(_instance))
        : CopyWith$Input$DurationTimeInput(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DurationTimeInput<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DurationTimeInput.stub(_then(_instance))
        : CopyWith$Input$DurationTimeInput(
            local$updatedAt, (e) => call(updatedAt: e));
  }
}

class _CopyWithStubImpl$Input$DeviceFilterInput<TRes>
    implements CopyWith$Input$DeviceFilterInput<TRes> {
  _CopyWithStubImpl$Input$DeviceFilterInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    bool? isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
    bool? isAvaliable,
  }) =>
      _res;

  CopyWith$Input$DurationTimeInput<TRes> get createdAt =>
      CopyWith$Input$DurationTimeInput.stub(_res);

  CopyWith$Input$DurationTimeInput<TRes> get updatedAt =>
      CopyWith$Input$DurationTimeInput.stub(_res);
}

class Input$DeviceSortInput {
  factory Input$DeviceSortInput({
    Enum$EOrderBy? deviceID,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  }) =>
      Input$DeviceSortInput._({
        if (deviceID != null) r'deviceID': deviceID,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$DeviceSortInput._(this._$data);

  factory Input$DeviceSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('deviceID')) {
      final l$deviceID = data['deviceID'];
      result$data['deviceID'] = l$deviceID == null
          ? null
          : fromJson$Enum$EOrderBy((l$deviceID as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$updatedAt as String));
    }
    return Input$DeviceSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$EOrderBy? get deviceID => (_$data['deviceID'] as Enum$EOrderBy?);

  Enum$EOrderBy? get createdAt => (_$data['createdAt'] as Enum$EOrderBy?);

  Enum$EOrderBy? get updatedAt => (_$data['updatedAt'] as Enum$EOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('deviceID')) {
      final l$deviceID = deviceID;
      result$data['deviceID'] =
          l$deviceID == null ? null : toJson$Enum$EOrderBy(l$deviceID);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$EOrderBy(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$EOrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$DeviceSortInput<Input$DeviceSortInput> get copyWith =>
      CopyWith$Input$DeviceSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DeviceSortInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (_$data.containsKey('deviceID') !=
        other._$data.containsKey('deviceID')) {
      return false;
    }
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('deviceID') ? l$deviceID : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$DeviceSortInput<TRes> {
  factory CopyWith$Input$DeviceSortInput(
    Input$DeviceSortInput instance,
    TRes Function(Input$DeviceSortInput) then,
  ) = _CopyWithImpl$Input$DeviceSortInput;

  factory CopyWith$Input$DeviceSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeviceSortInput;

  TRes call({
    Enum$EOrderBy? deviceID,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  });
}

class _CopyWithImpl$Input$DeviceSortInput<TRes>
    implements CopyWith$Input$DeviceSortInput<TRes> {
  _CopyWithImpl$Input$DeviceSortInput(
    this._instance,
    this._then,
  );

  final Input$DeviceSortInput _instance;

  final TRes Function(Input$DeviceSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$DeviceSortInput._({
        ..._instance._$data,
        if (deviceID != _undefined) 'deviceID': (deviceID as Enum$EOrderBy?),
        if (createdAt != _undefined) 'createdAt': (createdAt as Enum$EOrderBy?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum$EOrderBy?),
      }));
}

class _CopyWithStubImpl$Input$DeviceSortInput<TRes>
    implements CopyWith$Input$DeviceSortInput<TRes> {
  _CopyWithStubImpl$Input$DeviceSortInput(this._res);

  TRes _res;

  call({
    Enum$EOrderBy? deviceID,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  }) =>
      _res;
}

class Input$DurationTimeInput {
  factory Input$DurationTimeInput({
    String? startDate,
    String? endDate,
  }) =>
      Input$DurationTimeInput._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
      });

  Input$DurationTimeInput._(this._$data);

  factory Input$DurationTimeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    return Input$DurationTimeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    return result$data;
  }

  CopyWith$Input$DurationTimeInput<Input$DurationTimeInput> get copyWith =>
      CopyWith$Input$DurationTimeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DurationTimeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$DurationTimeInput<TRes> {
  factory CopyWith$Input$DurationTimeInput(
    Input$DurationTimeInput instance,
    TRes Function(Input$DurationTimeInput) then,
  ) = _CopyWithImpl$Input$DurationTimeInput;

  factory CopyWith$Input$DurationTimeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DurationTimeInput;

  TRes call({
    String? startDate,
    String? endDate,
  });
}

class _CopyWithImpl$Input$DurationTimeInput<TRes>
    implements CopyWith$Input$DurationTimeInput<TRes> {
  _CopyWithImpl$Input$DurationTimeInput(
    this._instance,
    this._then,
  );

  final Input$DurationTimeInput _instance;

  final TRes Function(Input$DurationTimeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Input$DurationTimeInput._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
      }));
}

class _CopyWithStubImpl$Input$DurationTimeInput<TRes>
    implements CopyWith$Input$DurationTimeInput<TRes> {
  _CopyWithStubImpl$Input$DurationTimeInput(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
  }) =>
      _res;
}

class Input$MonitoringDeviceFilterInput {
  factory Input$MonitoringDeviceFilterInput({required String deviceID}) =>
      Input$MonitoringDeviceFilterInput._({
        r'deviceID': deviceID,
      });

  Input$MonitoringDeviceFilterInput._(this._$data);

  factory Input$MonitoringDeviceFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    return Input$MonitoringDeviceFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    return result$data;
  }

  CopyWith$Input$MonitoringDeviceFilterInput<Input$MonitoringDeviceFilterInput>
      get copyWith => CopyWith$Input$MonitoringDeviceFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MonitoringDeviceFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    return Object.hashAll([l$deviceID]);
  }
}

abstract class CopyWith$Input$MonitoringDeviceFilterInput<TRes> {
  factory CopyWith$Input$MonitoringDeviceFilterInput(
    Input$MonitoringDeviceFilterInput instance,
    TRes Function(Input$MonitoringDeviceFilterInput) then,
  ) = _CopyWithImpl$Input$MonitoringDeviceFilterInput;

  factory CopyWith$Input$MonitoringDeviceFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MonitoringDeviceFilterInput;

  TRes call({String? deviceID});
}

class _CopyWithImpl$Input$MonitoringDeviceFilterInput<TRes>
    implements CopyWith$Input$MonitoringDeviceFilterInput<TRes> {
  _CopyWithImpl$Input$MonitoringDeviceFilterInput(
    this._instance,
    this._then,
  );

  final Input$MonitoringDeviceFilterInput _instance;

  final TRes Function(Input$MonitoringDeviceFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deviceID = _undefined}) =>
      _then(Input$MonitoringDeviceFilterInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
      }));
}

class _CopyWithStubImpl$Input$MonitoringDeviceFilterInput<TRes>
    implements CopyWith$Input$MonitoringDeviceFilterInput<TRes> {
  _CopyWithStubImpl$Input$MonitoringDeviceFilterInput(this._res);

  TRes _res;

  call({String? deviceID}) => _res;
}

class Input$MonitoringDeviceInBuildingFilterInput {
  factory Input$MonitoringDeviceInBuildingFilterInput(
          {required String buildingID}) =>
      Input$MonitoringDeviceInBuildingFilterInput._({
        r'buildingID': buildingID,
      });

  Input$MonitoringDeviceInBuildingFilterInput._(this._$data);

  factory Input$MonitoringDeviceInBuildingFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    return Input$MonitoringDeviceInBuildingFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    return result$data;
  }

  CopyWith$Input$MonitoringDeviceInBuildingFilterInput<
          Input$MonitoringDeviceInBuildingFilterInput>
      get copyWith => CopyWith$Input$MonitoringDeviceInBuildingFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$MonitoringDeviceInBuildingFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    return Object.hashAll([l$buildingID]);
  }
}

abstract class CopyWith$Input$MonitoringDeviceInBuildingFilterInput<TRes> {
  factory CopyWith$Input$MonitoringDeviceInBuildingFilterInput(
    Input$MonitoringDeviceInBuildingFilterInput instance,
    TRes Function(Input$MonitoringDeviceInBuildingFilterInput) then,
  ) = _CopyWithImpl$Input$MonitoringDeviceInBuildingFilterInput;

  factory CopyWith$Input$MonitoringDeviceInBuildingFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$MonitoringDeviceInBuildingFilterInput;

  TRes call({String? buildingID});
}

class _CopyWithImpl$Input$MonitoringDeviceInBuildingFilterInput<TRes>
    implements CopyWith$Input$MonitoringDeviceInBuildingFilterInput<TRes> {
  _CopyWithImpl$Input$MonitoringDeviceInBuildingFilterInput(
    this._instance,
    this._then,
  );

  final Input$MonitoringDeviceInBuildingFilterInput _instance;

  final TRes Function(Input$MonitoringDeviceInBuildingFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? buildingID = _undefined}) =>
      _then(Input$MonitoringDeviceInBuildingFilterInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
      }));
}

class _CopyWithStubImpl$Input$MonitoringDeviceInBuildingFilterInput<TRes>
    implements CopyWith$Input$MonitoringDeviceInBuildingFilterInput<TRes> {
  _CopyWithStubImpl$Input$MonitoringDeviceInBuildingFilterInput(this._res);

  TRes _res;

  call({String? buildingID}) => _res;
}

class Input$PaginationInput {
  factory Input$PaginationInput({
    required int pageSize,
    String? nextToken,
  }) =>
      Input$PaginationInput._({
        r'pageSize': pageSize,
        if (nextToken != null) r'nextToken': nextToken,
      });

  Input$PaginationInput._(this._$data);

  factory Input$PaginationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pageSize = data['pageSize'];
    result$data['pageSize'] = (l$pageSize as int);
    if (data.containsKey('nextToken')) {
      final l$nextToken = data['nextToken'];
      result$data['nextToken'] = (l$nextToken as String?);
    }
    return Input$PaginationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get pageSize => (_$data['pageSize'] as int);

  String? get nextToken => (_$data['nextToken'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pageSize = pageSize;
    result$data['pageSize'] = l$pageSize;
    if (_$data.containsKey('nextToken')) {
      final l$nextToken = nextToken;
      result$data['nextToken'] = l$nextToken;
    }
    return result$data;
  }

  CopyWith$Input$PaginationInput<Input$PaginationInput> get copyWith =>
      CopyWith$Input$PaginationInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PaginationInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageSize = pageSize;
    final lOther$pageSize = other.pageSize;
    if (l$pageSize != lOther$pageSize) {
      return false;
    }
    final l$nextToken = nextToken;
    final lOther$nextToken = other.nextToken;
    if (_$data.containsKey('nextToken') !=
        other._$data.containsKey('nextToken')) {
      return false;
    }
    if (l$nextToken != lOther$nextToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pageSize = pageSize;
    final l$nextToken = nextToken;
    return Object.hashAll([
      l$pageSize,
      _$data.containsKey('nextToken') ? l$nextToken : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaginationInput<TRes> {
  factory CopyWith$Input$PaginationInput(
    Input$PaginationInput instance,
    TRes Function(Input$PaginationInput) then,
  ) = _CopyWithImpl$Input$PaginationInput;

  factory CopyWith$Input$PaginationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaginationInput;

  TRes call({
    int? pageSize,
    String? nextToken,
  });
}

class _CopyWithImpl$Input$PaginationInput<TRes>
    implements CopyWith$Input$PaginationInput<TRes> {
  _CopyWithImpl$Input$PaginationInput(
    this._instance,
    this._then,
  );

  final Input$PaginationInput _instance;

  final TRes Function(Input$PaginationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageSize = _undefined,
    Object? nextToken = _undefined,
  }) =>
      _then(Input$PaginationInput._({
        ..._instance._$data,
        if (pageSize != _undefined && pageSize != null)
          'pageSize': (pageSize as int),
        if (nextToken != _undefined) 'nextToken': (nextToken as String?),
      }));
}

class _CopyWithStubImpl$Input$PaginationInput<TRes>
    implements CopyWith$Input$PaginationInput<TRes> {
  _CopyWithStubImpl$Input$PaginationInput(this._res);

  TRes _res;

  call({
    int? pageSize,
    String? nextToken,
  }) =>
      _res;
}

class Input$PrintMedicalRecordInput {
  factory Input$PrintMedicalRecordInput({
    required String deviceID,
    required String UUID,
  }) =>
      Input$PrintMedicalRecordInput._({
        r'deviceID': deviceID,
        r'UUID': UUID,
      });

  Input$PrintMedicalRecordInput._(this._$data);

  factory Input$PrintMedicalRecordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    final l$UUID = data['UUID'];
    result$data['UUID'] = (l$UUID as String);
    return Input$PrintMedicalRecordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  String get UUID => (_$data['UUID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    final l$UUID = UUID;
    result$data['UUID'] = l$UUID;
    return result$data;
  }

  CopyWith$Input$PrintMedicalRecordInput<Input$PrintMedicalRecordInput>
      get copyWith => CopyWith$Input$PrintMedicalRecordInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PrintMedicalRecordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$UUID = UUID;
    final lOther$UUID = other.UUID;
    if (l$UUID != lOther$UUID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$UUID = UUID;
    return Object.hashAll([
      l$deviceID,
      l$UUID,
    ]);
  }
}

abstract class CopyWith$Input$PrintMedicalRecordInput<TRes> {
  factory CopyWith$Input$PrintMedicalRecordInput(
    Input$PrintMedicalRecordInput instance,
    TRes Function(Input$PrintMedicalRecordInput) then,
  ) = _CopyWithImpl$Input$PrintMedicalRecordInput;

  factory CopyWith$Input$PrintMedicalRecordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PrintMedicalRecordInput;

  TRes call({
    String? deviceID,
    String? UUID,
  });
}

class _CopyWithImpl$Input$PrintMedicalRecordInput<TRes>
    implements CopyWith$Input$PrintMedicalRecordInput<TRes> {
  _CopyWithImpl$Input$PrintMedicalRecordInput(
    this._instance,
    this._then,
  );

  final Input$PrintMedicalRecordInput _instance;

  final TRes Function(Input$PrintMedicalRecordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? UUID = _undefined,
  }) =>
      _then(Input$PrintMedicalRecordInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (UUID != _undefined && UUID != null) 'UUID': (UUID as String),
      }));
}

class _CopyWithStubImpl$Input$PrintMedicalRecordInput<TRes>
    implements CopyWith$Input$PrintMedicalRecordInput<TRes> {
  _CopyWithStubImpl$Input$PrintMedicalRecordInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    String? UUID,
  }) =>
      _res;
}

class Input$ReOrderBuildingInput {
  factory Input$ReOrderBuildingInput({List<Input$ReOrderItem?>? reOrder}) =>
      Input$ReOrderBuildingInput._({
        if (reOrder != null) r'reOrder': reOrder,
      });

  Input$ReOrderBuildingInput._(this._$data);

  factory Input$ReOrderBuildingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reOrder')) {
      final l$reOrder = data['reOrder'];
      result$data['reOrder'] = (l$reOrder as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ReOrderItem.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ReOrderBuildingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ReOrderItem?>? get reOrder =>
      (_$data['reOrder'] as List<Input$ReOrderItem?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reOrder')) {
      final l$reOrder = reOrder;
      result$data['reOrder'] = l$reOrder?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ReOrderBuildingInput<Input$ReOrderBuildingInput>
      get copyWith => CopyWith$Input$ReOrderBuildingInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReOrderBuildingInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reOrder = reOrder;
    final lOther$reOrder = other.reOrder;
    if (_$data.containsKey('reOrder') != other._$data.containsKey('reOrder')) {
      return false;
    }
    if (l$reOrder != null && lOther$reOrder != null) {
      if (l$reOrder.length != lOther$reOrder.length) {
        return false;
      }
      for (int i = 0; i < l$reOrder.length; i++) {
        final l$reOrder$entry = l$reOrder[i];
        final lOther$reOrder$entry = lOther$reOrder[i];
        if (l$reOrder$entry != lOther$reOrder$entry) {
          return false;
        }
      }
    } else if (l$reOrder != lOther$reOrder) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reOrder = reOrder;
    return Object.hashAll([
      _$data.containsKey('reOrder')
          ? l$reOrder == null
              ? null
              : Object.hashAll(l$reOrder.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$ReOrderBuildingInput<TRes> {
  factory CopyWith$Input$ReOrderBuildingInput(
    Input$ReOrderBuildingInput instance,
    TRes Function(Input$ReOrderBuildingInput) then,
  ) = _CopyWithImpl$Input$ReOrderBuildingInput;

  factory CopyWith$Input$ReOrderBuildingInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ReOrderBuildingInput;

  TRes call({List<Input$ReOrderItem?>? reOrder});
  TRes reOrder(
      Iterable<Input$ReOrderItem?>? Function(
              Iterable<CopyWith$Input$ReOrderItem<Input$ReOrderItem>?>?)
          _fn);
}

class _CopyWithImpl$Input$ReOrderBuildingInput<TRes>
    implements CopyWith$Input$ReOrderBuildingInput<TRes> {
  _CopyWithImpl$Input$ReOrderBuildingInput(
    this._instance,
    this._then,
  );

  final Input$ReOrderBuildingInput _instance;

  final TRes Function(Input$ReOrderBuildingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? reOrder = _undefined}) =>
      _then(Input$ReOrderBuildingInput._({
        ..._instance._$data,
        if (reOrder != _undefined)
          'reOrder': (reOrder as List<Input$ReOrderItem?>?),
      }));

  TRes reOrder(
          Iterable<Input$ReOrderItem?>? Function(
                  Iterable<CopyWith$Input$ReOrderItem<Input$ReOrderItem>?>?)
              _fn) =>
      call(
          reOrder: _fn(_instance.reOrder?.map((e) => e == null
              ? null
              : CopyWith$Input$ReOrderItem(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$ReOrderBuildingInput<TRes>
    implements CopyWith$Input$ReOrderBuildingInput<TRes> {
  _CopyWithStubImpl$Input$ReOrderBuildingInput(this._res);

  TRes _res;

  call({List<Input$ReOrderItem?>? reOrder}) => _res;

  reOrder(_fn) => _res;
}

class Input$ReOrderFloorInput {
  factory Input$ReOrderFloorInput({List<Input$ReOrderFloorItem?>? reOrder}) =>
      Input$ReOrderFloorInput._({
        if (reOrder != null) r'reOrder': reOrder,
      });

  Input$ReOrderFloorInput._(this._$data);

  factory Input$ReOrderFloorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reOrder')) {
      final l$reOrder = data['reOrder'];
      result$data['reOrder'] = (l$reOrder as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ReOrderFloorItem.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ReOrderFloorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ReOrderFloorItem?>? get reOrder =>
      (_$data['reOrder'] as List<Input$ReOrderFloorItem?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reOrder')) {
      final l$reOrder = reOrder;
      result$data['reOrder'] = l$reOrder?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ReOrderFloorInput<Input$ReOrderFloorInput> get copyWith =>
      CopyWith$Input$ReOrderFloorInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReOrderFloorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reOrder = reOrder;
    final lOther$reOrder = other.reOrder;
    if (_$data.containsKey('reOrder') != other._$data.containsKey('reOrder')) {
      return false;
    }
    if (l$reOrder != null && lOther$reOrder != null) {
      if (l$reOrder.length != lOther$reOrder.length) {
        return false;
      }
      for (int i = 0; i < l$reOrder.length; i++) {
        final l$reOrder$entry = l$reOrder[i];
        final lOther$reOrder$entry = lOther$reOrder[i];
        if (l$reOrder$entry != lOther$reOrder$entry) {
          return false;
        }
      }
    } else if (l$reOrder != lOther$reOrder) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reOrder = reOrder;
    return Object.hashAll([
      _$data.containsKey('reOrder')
          ? l$reOrder == null
              ? null
              : Object.hashAll(l$reOrder.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$ReOrderFloorInput<TRes> {
  factory CopyWith$Input$ReOrderFloorInput(
    Input$ReOrderFloorInput instance,
    TRes Function(Input$ReOrderFloorInput) then,
  ) = _CopyWithImpl$Input$ReOrderFloorInput;

  factory CopyWith$Input$ReOrderFloorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ReOrderFloorInput;

  TRes call({List<Input$ReOrderFloorItem?>? reOrder});
  TRes reOrder(
      Iterable<Input$ReOrderFloorItem?>? Function(
              Iterable<
                  CopyWith$Input$ReOrderFloorItem<Input$ReOrderFloorItem>?>?)
          _fn);
}

class _CopyWithImpl$Input$ReOrderFloorInput<TRes>
    implements CopyWith$Input$ReOrderFloorInput<TRes> {
  _CopyWithImpl$Input$ReOrderFloorInput(
    this._instance,
    this._then,
  );

  final Input$ReOrderFloorInput _instance;

  final TRes Function(Input$ReOrderFloorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? reOrder = _undefined}) => _then(Input$ReOrderFloorInput._({
        ..._instance._$data,
        if (reOrder != _undefined)
          'reOrder': (reOrder as List<Input$ReOrderFloorItem?>?),
      }));

  TRes reOrder(
          Iterable<Input$ReOrderFloorItem?>? Function(
                  Iterable<
                      CopyWith$Input$ReOrderFloorItem<
                          Input$ReOrderFloorItem>?>?)
              _fn) =>
      call(
          reOrder: _fn(_instance.reOrder?.map((e) => e == null
              ? null
              : CopyWith$Input$ReOrderFloorItem(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$ReOrderFloorInput<TRes>
    implements CopyWith$Input$ReOrderFloorInput<TRes> {
  _CopyWithStubImpl$Input$ReOrderFloorInput(this._res);

  TRes _res;

  call({List<Input$ReOrderFloorItem?>? reOrder}) => _res;

  reOrder(_fn) => _res;
}

class Input$ReOrderFloorItem {
  factory Input$ReOrderFloorItem({
    required String buildingID,
    required String floorID,
    required int index,
  }) =>
      Input$ReOrderFloorItem._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'index': index,
      });

  Input$ReOrderFloorItem._(this._$data);

  factory Input$ReOrderFloorItem.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$index = data['index'];
    result$data['index'] = (l$index as int);
    return Input$ReOrderFloorItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  int get index => (_$data['index'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$index = index;
    result$data['index'] = l$index;
    return result$data;
  }

  CopyWith$Input$ReOrderFloorItem<Input$ReOrderFloorItem> get copyWith =>
      CopyWith$Input$ReOrderFloorItem(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReOrderFloorItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$index = index;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$index,
    ]);
  }
}

abstract class CopyWith$Input$ReOrderFloorItem<TRes> {
  factory CopyWith$Input$ReOrderFloorItem(
    Input$ReOrderFloorItem instance,
    TRes Function(Input$ReOrderFloorItem) then,
  ) = _CopyWithImpl$Input$ReOrderFloorItem;

  factory CopyWith$Input$ReOrderFloorItem.stub(TRes res) =
      _CopyWithStubImpl$Input$ReOrderFloorItem;

  TRes call({
    String? buildingID,
    String? floorID,
    int? index,
  });
}

class _CopyWithImpl$Input$ReOrderFloorItem<TRes>
    implements CopyWith$Input$ReOrderFloorItem<TRes> {
  _CopyWithImpl$Input$ReOrderFloorItem(
    this._instance,
    this._then,
  );

  final Input$ReOrderFloorItem _instance;

  final TRes Function(Input$ReOrderFloorItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? index = _undefined,
  }) =>
      _then(Input$ReOrderFloorItem._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (index != _undefined && index != null) 'index': (index as int),
      }));
}

class _CopyWithStubImpl$Input$ReOrderFloorItem<TRes>
    implements CopyWith$Input$ReOrderFloorItem<TRes> {
  _CopyWithStubImpl$Input$ReOrderFloorItem(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    int? index,
  }) =>
      _res;
}

class Input$ReOrderItem {
  factory Input$ReOrderItem({
    required String buildingID,
    required int index,
  }) =>
      Input$ReOrderItem._({
        r'buildingID': buildingID,
        r'index': index,
      });

  Input$ReOrderItem._(this._$data);

  factory Input$ReOrderItem.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$index = data['index'];
    result$data['index'] = (l$index as int);
    return Input$ReOrderItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  int get index => (_$data['index'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$index = index;
    result$data['index'] = l$index;
    return result$data;
  }

  CopyWith$Input$ReOrderItem<Input$ReOrderItem> get copyWith =>
      CopyWith$Input$ReOrderItem(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReOrderItem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$index = index;
    return Object.hashAll([
      l$buildingID,
      l$index,
    ]);
  }
}

abstract class CopyWith$Input$ReOrderItem<TRes> {
  factory CopyWith$Input$ReOrderItem(
    Input$ReOrderItem instance,
    TRes Function(Input$ReOrderItem) then,
  ) = _CopyWithImpl$Input$ReOrderItem;

  factory CopyWith$Input$ReOrderItem.stub(TRes res) =
      _CopyWithStubImpl$Input$ReOrderItem;

  TRes call({
    String? buildingID,
    int? index,
  });
}

class _CopyWithImpl$Input$ReOrderItem<TRes>
    implements CopyWith$Input$ReOrderItem<TRes> {
  _CopyWithImpl$Input$ReOrderItem(
    this._instance,
    this._then,
  );

  final Input$ReOrderItem _instance;

  final TRes Function(Input$ReOrderItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? index = _undefined,
  }) =>
      _then(Input$ReOrderItem._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (index != _undefined && index != null) 'index': (index as int),
      }));
}

class _CopyWithStubImpl$Input$ReOrderItem<TRes>
    implements CopyWith$Input$ReOrderItem<TRes> {
  _CopyWithStubImpl$Input$ReOrderItem(this._res);

  TRes _res;

  call({
    String? buildingID,
    int? index,
  }) =>
      _res;
}

class Input$ReOrderWardInput {
  factory Input$ReOrderWardInput({List<Input$ReOrderWardItem?>? reOrder}) =>
      Input$ReOrderWardInput._({
        if (reOrder != null) r'reOrder': reOrder,
      });

  Input$ReOrderWardInput._(this._$data);

  factory Input$ReOrderWardInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reOrder')) {
      final l$reOrder = data['reOrder'];
      result$data['reOrder'] = (l$reOrder as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$ReOrderWardItem.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$ReOrderWardInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ReOrderWardItem?>? get reOrder =>
      (_$data['reOrder'] as List<Input$ReOrderWardItem?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reOrder')) {
      final l$reOrder = reOrder;
      result$data['reOrder'] = l$reOrder?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$ReOrderWardInput<Input$ReOrderWardInput> get copyWith =>
      CopyWith$Input$ReOrderWardInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReOrderWardInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reOrder = reOrder;
    final lOther$reOrder = other.reOrder;
    if (_$data.containsKey('reOrder') != other._$data.containsKey('reOrder')) {
      return false;
    }
    if (l$reOrder != null && lOther$reOrder != null) {
      if (l$reOrder.length != lOther$reOrder.length) {
        return false;
      }
      for (int i = 0; i < l$reOrder.length; i++) {
        final l$reOrder$entry = l$reOrder[i];
        final lOther$reOrder$entry = lOther$reOrder[i];
        if (l$reOrder$entry != lOther$reOrder$entry) {
          return false;
        }
      }
    } else if (l$reOrder != lOther$reOrder) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reOrder = reOrder;
    return Object.hashAll([
      _$data.containsKey('reOrder')
          ? l$reOrder == null
              ? null
              : Object.hashAll(l$reOrder.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Input$ReOrderWardInput<TRes> {
  factory CopyWith$Input$ReOrderWardInput(
    Input$ReOrderWardInput instance,
    TRes Function(Input$ReOrderWardInput) then,
  ) = _CopyWithImpl$Input$ReOrderWardInput;

  factory CopyWith$Input$ReOrderWardInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ReOrderWardInput;

  TRes call({List<Input$ReOrderWardItem?>? reOrder});
  TRes reOrder(
      Iterable<Input$ReOrderWardItem?>? Function(
              Iterable<CopyWith$Input$ReOrderWardItem<Input$ReOrderWardItem>?>?)
          _fn);
}

class _CopyWithImpl$Input$ReOrderWardInput<TRes>
    implements CopyWith$Input$ReOrderWardInput<TRes> {
  _CopyWithImpl$Input$ReOrderWardInput(
    this._instance,
    this._then,
  );

  final Input$ReOrderWardInput _instance;

  final TRes Function(Input$ReOrderWardInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? reOrder = _undefined}) => _then(Input$ReOrderWardInput._({
        ..._instance._$data,
        if (reOrder != _undefined)
          'reOrder': (reOrder as List<Input$ReOrderWardItem?>?),
      }));

  TRes reOrder(
          Iterable<Input$ReOrderWardItem?>? Function(
                  Iterable<
                      CopyWith$Input$ReOrderWardItem<Input$ReOrderWardItem>?>?)
              _fn) =>
      call(
          reOrder: _fn(_instance.reOrder?.map((e) => e == null
              ? null
              : CopyWith$Input$ReOrderWardItem(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$ReOrderWardInput<TRes>
    implements CopyWith$Input$ReOrderWardInput<TRes> {
  _CopyWithStubImpl$Input$ReOrderWardInput(this._res);

  TRes _res;

  call({List<Input$ReOrderWardItem?>? reOrder}) => _res;

  reOrder(_fn) => _res;
}

class Input$ReOrderWardItem {
  factory Input$ReOrderWardItem({
    required String buildingID,
    required String floorID,
    required String wardID,
    required int index,
  }) =>
      Input$ReOrderWardItem._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'wardID': wardID,
        r'index': index,
      });

  Input$ReOrderWardItem._(this._$data);

  factory Input$ReOrderWardItem.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$wardID = data['wardID'];
    result$data['wardID'] = (l$wardID as String);
    final l$index = data['index'];
    result$data['index'] = (l$index as int);
    return Input$ReOrderWardItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  String get wardID => (_$data['wardID'] as String);

  int get index => (_$data['index'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$wardID = wardID;
    result$data['wardID'] = l$wardID;
    final l$index = index;
    result$data['index'] = l$index;
    return result$data;
  }

  CopyWith$Input$ReOrderWardItem<Input$ReOrderWardItem> get copyWith =>
      CopyWith$Input$ReOrderWardItem(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReOrderWardItem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (l$wardID != lOther$wardID) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$wardID = wardID;
    final l$index = index;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$wardID,
      l$index,
    ]);
  }
}

abstract class CopyWith$Input$ReOrderWardItem<TRes> {
  factory CopyWith$Input$ReOrderWardItem(
    Input$ReOrderWardItem instance,
    TRes Function(Input$ReOrderWardItem) then,
  ) = _CopyWithImpl$Input$ReOrderWardItem;

  factory CopyWith$Input$ReOrderWardItem.stub(TRes res) =
      _CopyWithStubImpl$Input$ReOrderWardItem;

  TRes call({
    String? buildingID,
    String? floorID,
    String? wardID,
    int? index,
  });
}

class _CopyWithImpl$Input$ReOrderWardItem<TRes>
    implements CopyWith$Input$ReOrderWardItem<TRes> {
  _CopyWithImpl$Input$ReOrderWardItem(
    this._instance,
    this._then,
  );

  final Input$ReOrderWardItem _instance;

  final TRes Function(Input$ReOrderWardItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? wardID = _undefined,
    Object? index = _undefined,
  }) =>
      _then(Input$ReOrderWardItem._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (wardID != _undefined && wardID != null)
          'wardID': (wardID as String),
        if (index != _undefined && index != null) 'index': (index as int),
      }));
}

class _CopyWithStubImpl$Input$ReOrderWardItem<TRes>
    implements CopyWith$Input$ReOrderWardItem<TRes> {
  _CopyWithStubImpl$Input$ReOrderWardItem(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    String? wardID,
    int? index,
  }) =>
      _res;
}

class Input$ReportPatientHistoryFilterInput {
  factory Input$ReportPatientHistoryFilterInput({
    String? wardID,
    String? deviceID,
    String? patientName,
    required int month,
    required int year,
  }) =>
      Input$ReportPatientHistoryFilterInput._({
        if (wardID != null) r'wardID': wardID,
        if (deviceID != null) r'deviceID': deviceID,
        if (patientName != null) r'patientName': patientName,
        r'month': month,
        r'year': year,
      });

  Input$ReportPatientHistoryFilterInput._(this._$data);

  factory Input$ReportPatientHistoryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('wardID')) {
      final l$wardID = data['wardID'];
      result$data['wardID'] = (l$wardID as String?);
    }
    if (data.containsKey('deviceID')) {
      final l$deviceID = data['deviceID'];
      result$data['deviceID'] = (l$deviceID as String?);
    }
    if (data.containsKey('patientName')) {
      final l$patientName = data['patientName'];
      result$data['patientName'] = (l$patientName as String?);
    }
    final l$month = data['month'];
    result$data['month'] = (l$month as int);
    final l$year = data['year'];
    result$data['year'] = (l$year as int);
    return Input$ReportPatientHistoryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get wardID => (_$data['wardID'] as String?);

  String? get deviceID => (_$data['deviceID'] as String?);

  String? get patientName => (_$data['patientName'] as String?);

  int get month => (_$data['month'] as int);

  int get year => (_$data['year'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('wardID')) {
      final l$wardID = wardID;
      result$data['wardID'] = l$wardID;
    }
    if (_$data.containsKey('deviceID')) {
      final l$deviceID = deviceID;
      result$data['deviceID'] = l$deviceID;
    }
    if (_$data.containsKey('patientName')) {
      final l$patientName = patientName;
      result$data['patientName'] = l$patientName;
    }
    final l$month = month;
    result$data['month'] = l$month;
    final l$year = year;
    result$data['year'] = l$year;
    return result$data;
  }

  CopyWith$Input$ReportPatientHistoryFilterInput<
          Input$ReportPatientHistoryFilterInput>
      get copyWith => CopyWith$Input$ReportPatientHistoryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReportPatientHistoryFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (_$data.containsKey('wardID') != other._$data.containsKey('wardID')) {
      return false;
    }
    if (l$wardID != lOther$wardID) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (_$data.containsKey('deviceID') !=
        other._$data.containsKey('deviceID')) {
      return false;
    }
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$patientName = patientName;
    final lOther$patientName = other.patientName;
    if (_$data.containsKey('patientName') !=
        other._$data.containsKey('patientName')) {
      return false;
    }
    if (l$patientName != lOther$patientName) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$wardID = wardID;
    final l$deviceID = deviceID;
    final l$patientName = patientName;
    final l$month = month;
    final l$year = year;
    return Object.hashAll([
      _$data.containsKey('wardID') ? l$wardID : const {},
      _$data.containsKey('deviceID') ? l$deviceID : const {},
      _$data.containsKey('patientName') ? l$patientName : const {},
      l$month,
      l$year,
    ]);
  }
}

abstract class CopyWith$Input$ReportPatientHistoryFilterInput<TRes> {
  factory CopyWith$Input$ReportPatientHistoryFilterInput(
    Input$ReportPatientHistoryFilterInput instance,
    TRes Function(Input$ReportPatientHistoryFilterInput) then,
  ) = _CopyWithImpl$Input$ReportPatientHistoryFilterInput;

  factory CopyWith$Input$ReportPatientHistoryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ReportPatientHistoryFilterInput;

  TRes call({
    String? wardID,
    String? deviceID,
    String? patientName,
    int? month,
    int? year,
  });
}

class _CopyWithImpl$Input$ReportPatientHistoryFilterInput<TRes>
    implements CopyWith$Input$ReportPatientHistoryFilterInput<TRes> {
  _CopyWithImpl$Input$ReportPatientHistoryFilterInput(
    this._instance,
    this._then,
  );

  final Input$ReportPatientHistoryFilterInput _instance;

  final TRes Function(Input$ReportPatientHistoryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wardID = _undefined,
    Object? deviceID = _undefined,
    Object? patientName = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
  }) =>
      _then(Input$ReportPatientHistoryFilterInput._({
        ..._instance._$data,
        if (wardID != _undefined) 'wardID': (wardID as String?),
        if (deviceID != _undefined) 'deviceID': (deviceID as String?),
        if (patientName != _undefined) 'patientName': (patientName as String?),
        if (month != _undefined && month != null) 'month': (month as int),
        if (year != _undefined && year != null) 'year': (year as int),
      }));
}

class _CopyWithStubImpl$Input$ReportPatientHistoryFilterInput<TRes>
    implements CopyWith$Input$ReportPatientHistoryFilterInput<TRes> {
  _CopyWithStubImpl$Input$ReportPatientHistoryFilterInput(this._res);

  TRes _res;

  call({
    String? wardID,
    String? deviceID,
    String? patientName,
    int? month,
    int? year,
  }) =>
      _res;
}

class Input$ResetPasswordInput {
  factory Input$ResetPasswordInput({
    required String userID,
    required String password,
  }) =>
      Input$ResetPasswordInput._({
        r'userID': userID,
        r'password': password,
      });

  Input$ResetPasswordInput._(this._$data);

  factory Input$ResetPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$ResetPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$ResetPasswordInput<Input$ResetPasswordInput> get copyWith =>
      CopyWith$Input$ResetPasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ResetPasswordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    final l$password = password;
    return Object.hashAll([
      l$userID,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$ResetPasswordInput<TRes> {
  factory CopyWith$Input$ResetPasswordInput(
    Input$ResetPasswordInput instance,
    TRes Function(Input$ResetPasswordInput) then,
  ) = _CopyWithImpl$Input$ResetPasswordInput;

  factory CopyWith$Input$ResetPasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ResetPasswordInput;

  TRes call({
    String? userID,
    String? password,
  });
}

class _CopyWithImpl$Input$ResetPasswordInput<TRes>
    implements CopyWith$Input$ResetPasswordInput<TRes> {
  _CopyWithImpl$Input$ResetPasswordInput(
    this._instance,
    this._then,
  );

  final Input$ResetPasswordInput _instance;

  final TRes Function(Input$ResetPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userID = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$ResetPasswordInput._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$ResetPasswordInput<TRes>
    implements CopyWith$Input$ResetPasswordInput<TRes> {
  _CopyWithStubImpl$Input$ResetPasswordInput(this._res);

  TRes _res;

  call({
    String? userID,
    String? password,
  }) =>
      _res;
}

class Input$UpdateBuildingInput {
  factory Input$UpdateBuildingInput({
    required String buildingID,
    required String buildingName,
  }) =>
      Input$UpdateBuildingInput._({
        r'buildingID': buildingID,
        r'buildingName': buildingName,
      });

  Input$UpdateBuildingInput._(this._$data);

  factory Input$UpdateBuildingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$buildingName = data['buildingName'];
    result$data['buildingName'] = (l$buildingName as String);
    return Input$UpdateBuildingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get buildingName => (_$data['buildingName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$buildingName = buildingName;
    result$data['buildingName'] = l$buildingName;
    return result$data;
  }

  CopyWith$Input$UpdateBuildingInput<Input$UpdateBuildingInput> get copyWith =>
      CopyWith$Input$UpdateBuildingInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateBuildingInput) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$buildingName = buildingName;
    return Object.hashAll([
      l$buildingID,
      l$buildingName,
    ]);
  }
}

abstract class CopyWith$Input$UpdateBuildingInput<TRes> {
  factory CopyWith$Input$UpdateBuildingInput(
    Input$UpdateBuildingInput instance,
    TRes Function(Input$UpdateBuildingInput) then,
  ) = _CopyWithImpl$Input$UpdateBuildingInput;

  factory CopyWith$Input$UpdateBuildingInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateBuildingInput;

  TRes call({
    String? buildingID,
    String? buildingName,
  });
}

class _CopyWithImpl$Input$UpdateBuildingInput<TRes>
    implements CopyWith$Input$UpdateBuildingInput<TRes> {
  _CopyWithImpl$Input$UpdateBuildingInput(
    this._instance,
    this._then,
  );

  final Input$UpdateBuildingInput _instance;

  final TRes Function(Input$UpdateBuildingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? buildingName = _undefined,
  }) =>
      _then(Input$UpdateBuildingInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (buildingName != _undefined && buildingName != null)
          'buildingName': (buildingName as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateBuildingInput<TRes>
    implements CopyWith$Input$UpdateBuildingInput<TRes> {
  _CopyWithStubImpl$Input$UpdateBuildingInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? buildingName,
  }) =>
      _res;
}

class Input$UpdateDeviceInput {
  factory Input$UpdateDeviceInput({
    required String deviceID,
    required bool isActive,
    String? customAttibute,
    String? imageURL,
    required String model,
    String? nurseHead,
    String? deviceName,
  }) =>
      Input$UpdateDeviceInput._({
        r'deviceID': deviceID,
        r'isActive': isActive,
        if (customAttibute != null) r'customAttibute': customAttibute,
        if (imageURL != null) r'imageURL': imageURL,
        r'model': model,
        if (nurseHead != null) r'nurseHead': nurseHead,
        if (deviceName != null) r'deviceName': deviceName,
      });

  Input$UpdateDeviceInput._(this._$data);

  factory Input$UpdateDeviceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    if (data.containsKey('imageURL')) {
      final l$imageURL = data['imageURL'];
      result$data['imageURL'] = (l$imageURL as String?);
    }
    final l$model = data['model'];
    result$data['model'] = (l$model as String);
    if (data.containsKey('nurseHead')) {
      final l$nurseHead = data['nurseHead'];
      result$data['nurseHead'] = (l$nurseHead as String?);
    }
    if (data.containsKey('deviceName')) {
      final l$deviceName = data['deviceName'];
      result$data['deviceName'] = (l$deviceName as String?);
    }
    return Input$UpdateDeviceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  bool get isActive => (_$data['isActive'] as bool);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  String? get imageURL => (_$data['imageURL'] as String?);

  String get model => (_$data['model'] as String);

  String? get nurseHead => (_$data['nurseHead'] as String?);

  String? get deviceName => (_$data['deviceName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    if (_$data.containsKey('imageURL')) {
      final l$imageURL = imageURL;
      result$data['imageURL'] = l$imageURL;
    }
    final l$model = model;
    result$data['model'] = l$model;
    if (_$data.containsKey('nurseHead')) {
      final l$nurseHead = nurseHead;
      result$data['nurseHead'] = l$nurseHead;
    }
    if (_$data.containsKey('deviceName')) {
      final l$deviceName = deviceName;
      result$data['deviceName'] = l$deviceName;
    }
    return result$data;
  }

  CopyWith$Input$UpdateDeviceInput<Input$UpdateDeviceInput> get copyWith =>
      CopyWith$Input$UpdateDeviceInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateDeviceInput) ||
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
    final l$customAttibute = customAttibute;
    final lOther$customAttibute = other.customAttibute;
    if (_$data.containsKey('customAttibute') !=
        other._$data.containsKey('customAttibute')) {
      return false;
    }
    if (l$customAttibute != lOther$customAttibute) {
      return false;
    }
    final l$imageURL = imageURL;
    final lOther$imageURL = other.imageURL;
    if (_$data.containsKey('imageURL') !=
        other._$data.containsKey('imageURL')) {
      return false;
    }
    if (l$imageURL != lOther$imageURL) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$nurseHead = nurseHead;
    final lOther$nurseHead = other.nurseHead;
    if (_$data.containsKey('nurseHead') !=
        other._$data.containsKey('nurseHead')) {
      return false;
    }
    if (l$nurseHead != lOther$nurseHead) {
      return false;
    }
    final l$deviceName = deviceName;
    final lOther$deviceName = other.deviceName;
    if (_$data.containsKey('deviceName') !=
        other._$data.containsKey('deviceName')) {
      return false;
    }
    if (l$deviceName != lOther$deviceName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$isActive = isActive;
    final l$customAttibute = customAttibute;
    final l$imageURL = imageURL;
    final l$model = model;
    final l$nurseHead = nurseHead;
    final l$deviceName = deviceName;
    return Object.hashAll([
      l$deviceID,
      l$isActive,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
      _$data.containsKey('imageURL') ? l$imageURL : const {},
      l$model,
      _$data.containsKey('nurseHead') ? l$nurseHead : const {},
      _$data.containsKey('deviceName') ? l$deviceName : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateDeviceInput<TRes> {
  factory CopyWith$Input$UpdateDeviceInput(
    Input$UpdateDeviceInput instance,
    TRes Function(Input$UpdateDeviceInput) then,
  ) = _CopyWithImpl$Input$UpdateDeviceInput;

  factory CopyWith$Input$UpdateDeviceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateDeviceInput;

  TRes call({
    String? deviceID,
    bool? isActive,
    String? customAttibute,
    String? imageURL,
    String? model,
    String? nurseHead,
    String? deviceName,
  });
}

class _CopyWithImpl$Input$UpdateDeviceInput<TRes>
    implements CopyWith$Input$UpdateDeviceInput<TRes> {
  _CopyWithImpl$Input$UpdateDeviceInput(
    this._instance,
    this._then,
  );

  final Input$UpdateDeviceInput _instance;

  final TRes Function(Input$UpdateDeviceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? isActive = _undefined,
    Object? customAttibute = _undefined,
    Object? imageURL = _undefined,
    Object? model = _undefined,
    Object? nurseHead = _undefined,
    Object? deviceName = _undefined,
  }) =>
      _then(Input$UpdateDeviceInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
        if (imageURL != _undefined) 'imageURL': (imageURL as String?),
        if (model != _undefined && model != null) 'model': (model as String),
        if (nurseHead != _undefined) 'nurseHead': (nurseHead as String?),
        if (deviceName != _undefined) 'deviceName': (deviceName as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateDeviceInput<TRes>
    implements CopyWith$Input$UpdateDeviceInput<TRes> {
  _CopyWithStubImpl$Input$UpdateDeviceInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    bool? isActive,
    String? customAttibute,
    String? imageURL,
    String? model,
    String? nurseHead,
    String? deviceName,
  }) =>
      _res;
}

class Input$UpdateFloorInput {
  factory Input$UpdateFloorInput({
    required String buildingID,
    required String floorID,
    required String floorName,
  }) =>
      Input$UpdateFloorInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'floorName': floorName,
      });

  Input$UpdateFloorInput._(this._$data);

  factory Input$UpdateFloorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$floorName = data['floorName'];
    result$data['floorName'] = (l$floorName as String);
    return Input$UpdateFloorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  String get floorName => (_$data['floorName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$floorName = floorName;
    result$data['floorName'] = l$floorName;
    return result$data;
  }

  CopyWith$Input$UpdateFloorInput<Input$UpdateFloorInput> get copyWith =>
      CopyWith$Input$UpdateFloorInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateFloorInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$floorName = floorName;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$floorName,
    ]);
  }
}

abstract class CopyWith$Input$UpdateFloorInput<TRes> {
  factory CopyWith$Input$UpdateFloorInput(
    Input$UpdateFloorInput instance,
    TRes Function(Input$UpdateFloorInput) then,
  ) = _CopyWithImpl$Input$UpdateFloorInput;

  factory CopyWith$Input$UpdateFloorInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateFloorInput;

  TRes call({
    String? buildingID,
    String? floorID,
    String? floorName,
  });
}

class _CopyWithImpl$Input$UpdateFloorInput<TRes>
    implements CopyWith$Input$UpdateFloorInput<TRes> {
  _CopyWithImpl$Input$UpdateFloorInput(
    this._instance,
    this._then,
  );

  final Input$UpdateFloorInput _instance;

  final TRes Function(Input$UpdateFloorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? floorName = _undefined,
  }) =>
      _then(Input$UpdateFloorInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (floorName != _undefined && floorName != null)
          'floorName': (floorName as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateFloorInput<TRes>
    implements CopyWith$Input$UpdateFloorInput<TRes> {
  _CopyWithStubImpl$Input$UpdateFloorInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    String? floorName,
  }) =>
      _res;
}

class Input$UpdateHospitalNameInput {
  factory Input$UpdateHospitalNameInput({required String hospitalName}) =>
      Input$UpdateHospitalNameInput._({
        r'hospitalName': hospitalName,
      });

  Input$UpdateHospitalNameInput._(this._$data);

  factory Input$UpdateHospitalNameInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$hospitalName = data['hospitalName'];
    result$data['hospitalName'] = (l$hospitalName as String);
    return Input$UpdateHospitalNameInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get hospitalName => (_$data['hospitalName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$hospitalName = hospitalName;
    result$data['hospitalName'] = l$hospitalName;
    return result$data;
  }

  CopyWith$Input$UpdateHospitalNameInput<Input$UpdateHospitalNameInput>
      get copyWith => CopyWith$Input$UpdateHospitalNameInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateHospitalNameInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hospitalName = hospitalName;
    final lOther$hospitalName = other.hospitalName;
    if (l$hospitalName != lOther$hospitalName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hospitalName = hospitalName;
    return Object.hashAll([l$hospitalName]);
  }
}

abstract class CopyWith$Input$UpdateHospitalNameInput<TRes> {
  factory CopyWith$Input$UpdateHospitalNameInput(
    Input$UpdateHospitalNameInput instance,
    TRes Function(Input$UpdateHospitalNameInput) then,
  ) = _CopyWithImpl$Input$UpdateHospitalNameInput;

  factory CopyWith$Input$UpdateHospitalNameInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateHospitalNameInput;

  TRes call({String? hospitalName});
}

class _CopyWithImpl$Input$UpdateHospitalNameInput<TRes>
    implements CopyWith$Input$UpdateHospitalNameInput<TRes> {
  _CopyWithImpl$Input$UpdateHospitalNameInput(
    this._instance,
    this._then,
  );

  final Input$UpdateHospitalNameInput _instance;

  final TRes Function(Input$UpdateHospitalNameInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? hospitalName = _undefined}) =>
      _then(Input$UpdateHospitalNameInput._({
        ..._instance._$data,
        if (hospitalName != _undefined && hospitalName != null)
          'hospitalName': (hospitalName as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateHospitalNameInput<TRes>
    implements CopyWith$Input$UpdateHospitalNameInput<TRes> {
  _CopyWithStubImpl$Input$UpdateHospitalNameInput(this._res);

  TRes _res;

  call({String? hospitalName}) => _res;
}

class Input$UpdateLocationDeviceInput {
  factory Input$UpdateLocationDeviceInput({
    required String buildingID,
    required String floorID,
    required String wardID,
    required String deviceID,
  }) =>
      Input$UpdateLocationDeviceInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'wardID': wardID,
        r'deviceID': deviceID,
      });

  Input$UpdateLocationDeviceInput._(this._$data);

  factory Input$UpdateLocationDeviceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$wardID = data['wardID'];
    result$data['wardID'] = (l$wardID as String);
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    return Input$UpdateLocationDeviceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  String get wardID => (_$data['wardID'] as String);

  String get deviceID => (_$data['deviceID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$wardID = wardID;
    result$data['wardID'] = l$wardID;
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    return result$data;
  }

  CopyWith$Input$UpdateLocationDeviceInput<Input$UpdateLocationDeviceInput>
      get copyWith => CopyWith$Input$UpdateLocationDeviceInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateLocationDeviceInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
      return false;
    }
    final l$wardID = wardID;
    final lOther$wardID = other.wardID;
    if (l$wardID != lOther$wardID) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$wardID = wardID;
    final l$deviceID = deviceID;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$wardID,
      l$deviceID,
    ]);
  }
}

abstract class CopyWith$Input$UpdateLocationDeviceInput<TRes> {
  factory CopyWith$Input$UpdateLocationDeviceInput(
    Input$UpdateLocationDeviceInput instance,
    TRes Function(Input$UpdateLocationDeviceInput) then,
  ) = _CopyWithImpl$Input$UpdateLocationDeviceInput;

  factory CopyWith$Input$UpdateLocationDeviceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateLocationDeviceInput;

  TRes call({
    String? buildingID,
    String? floorID,
    String? wardID,
    String? deviceID,
  });
}

class _CopyWithImpl$Input$UpdateLocationDeviceInput<TRes>
    implements CopyWith$Input$UpdateLocationDeviceInput<TRes> {
  _CopyWithImpl$Input$UpdateLocationDeviceInput(
    this._instance,
    this._then,
  );

  final Input$UpdateLocationDeviceInput _instance;

  final TRes Function(Input$UpdateLocationDeviceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? wardID = _undefined,
    Object? deviceID = _undefined,
  }) =>
      _then(Input$UpdateLocationDeviceInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (wardID != _undefined && wardID != null)
          'wardID': (wardID as String),
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateLocationDeviceInput<TRes>
    implements CopyWith$Input$UpdateLocationDeviceInput<TRes> {
  _CopyWithStubImpl$Input$UpdateLocationDeviceInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    String? wardID,
    String? deviceID,
  }) =>
      _res;
}

class Input$UpdateUserInput {
  factory Input$UpdateUserInput({
    required String userID,
    required String username,
    required String fullname,
    String? imageURL,
    required String userRoleID,
    String? customAttibute,
  }) =>
      Input$UpdateUserInput._({
        r'userID': userID,
        r'username': username,
        r'fullname': fullname,
        if (imageURL != null) r'imageURL': imageURL,
        r'userRoleID': userRoleID,
        if (customAttibute != null) r'customAttibute': customAttibute,
      });

  Input$UpdateUserInput._(this._$data);

  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$fullname = data['fullname'];
    result$data['fullname'] = (l$fullname as String);
    if (data.containsKey('imageURL')) {
      final l$imageURL = data['imageURL'];
      result$data['imageURL'] = (l$imageURL as String?);
    }
    final l$userRoleID = data['userRoleID'];
    result$data['userRoleID'] = (l$userRoleID as String);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    return Input$UpdateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);

  String get username => (_$data['username'] as String);

  String get fullname => (_$data['fullname'] as String);

  String? get imageURL => (_$data['imageURL'] as String?);

  String get userRoleID => (_$data['userRoleID'] as String);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    final l$username = username;
    result$data['username'] = l$username;
    final l$fullname = fullname;
    result$data['fullname'] = l$fullname;
    if (_$data.containsKey('imageURL')) {
      final l$imageURL = imageURL;
      result$data['imageURL'] = l$imageURL;
    }
    final l$userRoleID = userRoleID;
    result$data['userRoleID'] = l$userRoleID;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    return result$data;
  }

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateUserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$fullname = fullname;
    final lOther$fullname = other.fullname;
    if (l$fullname != lOther$fullname) {
      return false;
    }
    final l$imageURL = imageURL;
    final lOther$imageURL = other.imageURL;
    if (_$data.containsKey('imageURL') !=
        other._$data.containsKey('imageURL')) {
      return false;
    }
    if (l$imageURL != lOther$imageURL) {
      return false;
    }
    final l$userRoleID = userRoleID;
    final lOther$userRoleID = other.userRoleID;
    if (l$userRoleID != lOther$userRoleID) {
      return false;
    }
    final l$customAttibute = customAttibute;
    final lOther$customAttibute = other.customAttibute;
    if (_$data.containsKey('customAttibute') !=
        other._$data.containsKey('customAttibute')) {
      return false;
    }
    if (l$customAttibute != lOther$customAttibute) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    final l$username = username;
    final l$fullname = fullname;
    final l$imageURL = imageURL;
    final l$userRoleID = userRoleID;
    final l$customAttibute = customAttibute;
    return Object.hashAll([
      l$userID,
      l$username,
      l$fullname,
      _$data.containsKey('imageURL') ? l$imageURL : const {},
      l$userRoleID,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(
    Input$UpdateUserInput instance,
    TRes Function(Input$UpdateUserInput) then,
  ) = _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

  TRes call({
    String? userID,
    String? username,
    String? fullname,
    String? imageURL,
    String? userRoleID,
    String? customAttibute,
  });
}

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(
    this._instance,
    this._then,
  );

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userID = _undefined,
    Object? username = _undefined,
    Object? fullname = _undefined,
    Object? imageURL = _undefined,
    Object? userRoleID = _undefined,
    Object? customAttibute = _undefined,
  }) =>
      _then(Input$UpdateUserInput._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
        if (username != _undefined && username != null)
          'username': (username as String),
        if (fullname != _undefined && fullname != null)
          'fullname': (fullname as String),
        if (imageURL != _undefined) 'imageURL': (imageURL as String?),
        if (userRoleID != _undefined && userRoleID != null)
          'userRoleID': (userRoleID as String),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

  TRes _res;

  call({
    String? userID,
    String? username,
    String? fullname,
    String? imageURL,
    String? userRoleID,
    String? customAttibute,
  }) =>
      _res;
}

class Input$UpdateUserRoleInput {
  factory Input$UpdateUserRoleInput({
    required String userRoleID,
    required String userRoleName,
    required List<Enum$EPermission?> permission,
    required bool isActive,
    String? customAttibute,
  }) =>
      Input$UpdateUserRoleInput._({
        r'userRoleID': userRoleID,
        r'userRoleName': userRoleName,
        r'permission': permission,
        r'isActive': isActive,
        if (customAttibute != null) r'customAttibute': customAttibute,
      });

  Input$UpdateUserRoleInput._(this._$data);

  factory Input$UpdateUserRoleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userRoleID = data['userRoleID'];
    result$data['userRoleID'] = (l$userRoleID as String);
    final l$userRoleName = data['userRoleName'];
    result$data['userRoleName'] = (l$userRoleName as String);
    final l$permission = data['permission'];
    result$data['permission'] = (l$permission as List<dynamic>)
        .map((e) => e == null ? null : fromJson$Enum$EPermission((e as String)))
        .toList();
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    return Input$UpdateUserRoleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userRoleID => (_$data['userRoleID'] as String);

  String get userRoleName => (_$data['userRoleName'] as String);

  List<Enum$EPermission?> get permission =>
      (_$data['permission'] as List<Enum$EPermission?>);

  bool get isActive => (_$data['isActive'] as bool);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userRoleID = userRoleID;
    result$data['userRoleID'] = l$userRoleID;
    final l$userRoleName = userRoleName;
    result$data['userRoleName'] = l$userRoleName;
    final l$permission = permission;
    result$data['permission'] = l$permission
        .map((e) => e == null ? null : toJson$Enum$EPermission(e))
        .toList();
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    return result$data;
  }

  CopyWith$Input$UpdateUserRoleInput<Input$UpdateUserRoleInput> get copyWith =>
      CopyWith$Input$UpdateUserRoleInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateUserRoleInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userRoleID = userRoleID;
    final lOther$userRoleID = other.userRoleID;
    if (l$userRoleID != lOther$userRoleID) {
      return false;
    }
    final l$userRoleName = userRoleName;
    final lOther$userRoleName = other.userRoleName;
    if (l$userRoleName != lOther$userRoleName) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (l$permission.length != lOther$permission.length) {
      return false;
    }
    for (int i = 0; i < l$permission.length; i++) {
      final l$permission$entry = l$permission[i];
      final lOther$permission$entry = lOther$permission[i];
      if (l$permission$entry != lOther$permission$entry) {
        return false;
      }
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$customAttibute = customAttibute;
    final lOther$customAttibute = other.customAttibute;
    if (_$data.containsKey('customAttibute') !=
        other._$data.containsKey('customAttibute')) {
      return false;
    }
    if (l$customAttibute != lOther$customAttibute) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userRoleID = userRoleID;
    final l$userRoleName = userRoleName;
    final l$permission = permission;
    final l$isActive = isActive;
    final l$customAttibute = customAttibute;
    return Object.hashAll([
      l$userRoleID,
      l$userRoleName,
      Object.hashAll(l$permission.map((v) => v)),
      l$isActive,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateUserRoleInput<TRes> {
  factory CopyWith$Input$UpdateUserRoleInput(
    Input$UpdateUserRoleInput instance,
    TRes Function(Input$UpdateUserRoleInput) then,
  ) = _CopyWithImpl$Input$UpdateUserRoleInput;

  factory CopyWith$Input$UpdateUserRoleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserRoleInput;

  TRes call({
    String? userRoleID,
    String? userRoleName,
    List<Enum$EPermission?>? permission,
    bool? isActive,
    String? customAttibute,
  });
}

class _CopyWithImpl$Input$UpdateUserRoleInput<TRes>
    implements CopyWith$Input$UpdateUserRoleInput<TRes> {
  _CopyWithImpl$Input$UpdateUserRoleInput(
    this._instance,
    this._then,
  );

  final Input$UpdateUserRoleInput _instance;

  final TRes Function(Input$UpdateUserRoleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userRoleID = _undefined,
    Object? userRoleName = _undefined,
    Object? permission = _undefined,
    Object? isActive = _undefined,
    Object? customAttibute = _undefined,
  }) =>
      _then(Input$UpdateUserRoleInput._({
        ..._instance._$data,
        if (userRoleID != _undefined && userRoleID != null)
          'userRoleID': (userRoleID as String),
        if (userRoleName != _undefined && userRoleName != null)
          'userRoleName': (userRoleName as String),
        if (permission != _undefined && permission != null)
          'permission': (permission as List<Enum$EPermission?>),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateUserRoleInput<TRes>
    implements CopyWith$Input$UpdateUserRoleInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserRoleInput(this._res);

  TRes _res;

  call({
    String? userRoleID,
    String? userRoleName,
    List<Enum$EPermission?>? permission,
    bool? isActive,
    String? customAttibute,
  }) =>
      _res;
}

class Input$UpdateWardInput {
  factory Input$UpdateWardInput({
    required String buildingID,
    required String floorID,
    required String wardID,
    required String wardName,
  }) =>
      Input$UpdateWardInput._({
        r'buildingID': buildingID,
        r'floorID': floorID,
        r'wardID': wardID,
        r'wardName': wardName,
      });

  Input$UpdateWardInput._(this._$data);

  factory Input$UpdateWardInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$buildingID = data['buildingID'];
    result$data['buildingID'] = (l$buildingID as String);
    final l$floorID = data['floorID'];
    result$data['floorID'] = (l$floorID as String);
    final l$wardID = data['wardID'];
    result$data['wardID'] = (l$wardID as String);
    final l$wardName = data['wardName'];
    result$data['wardName'] = (l$wardName as String);
    return Input$UpdateWardInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get buildingID => (_$data['buildingID'] as String);

  String get floorID => (_$data['floorID'] as String);

  String get wardID => (_$data['wardID'] as String);

  String get wardName => (_$data['wardName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$buildingID = buildingID;
    result$data['buildingID'] = l$buildingID;
    final l$floorID = floorID;
    result$data['floorID'] = l$floorID;
    final l$wardID = wardID;
    result$data['wardID'] = l$wardID;
    final l$wardName = wardName;
    result$data['wardName'] = l$wardName;
    return result$data;
  }

  CopyWith$Input$UpdateWardInput<Input$UpdateWardInput> get copyWith =>
      CopyWith$Input$UpdateWardInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateWardInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$buildingID = buildingID;
    final lOther$buildingID = other.buildingID;
    if (l$buildingID != lOther$buildingID) {
      return false;
    }
    final l$floorID = floorID;
    final lOther$floorID = other.floorID;
    if (l$floorID != lOther$floorID) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$buildingID = buildingID;
    final l$floorID = floorID;
    final l$wardID = wardID;
    final l$wardName = wardName;
    return Object.hashAll([
      l$buildingID,
      l$floorID,
      l$wardID,
      l$wardName,
    ]);
  }
}

abstract class CopyWith$Input$UpdateWardInput<TRes> {
  factory CopyWith$Input$UpdateWardInput(
    Input$UpdateWardInput instance,
    TRes Function(Input$UpdateWardInput) then,
  ) = _CopyWithImpl$Input$UpdateWardInput;

  factory CopyWith$Input$UpdateWardInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateWardInput;

  TRes call({
    String? buildingID,
    String? floorID,
    String? wardID,
    String? wardName,
  });
}

class _CopyWithImpl$Input$UpdateWardInput<TRes>
    implements CopyWith$Input$UpdateWardInput<TRes> {
  _CopyWithImpl$Input$UpdateWardInput(
    this._instance,
    this._then,
  );

  final Input$UpdateWardInput _instance;

  final TRes Function(Input$UpdateWardInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? buildingID = _undefined,
    Object? floorID = _undefined,
    Object? wardID = _undefined,
    Object? wardName = _undefined,
  }) =>
      _then(Input$UpdateWardInput._({
        ..._instance._$data,
        if (buildingID != _undefined && buildingID != null)
          'buildingID': (buildingID as String),
        if (floorID != _undefined && floorID != null)
          'floorID': (floorID as String),
        if (wardID != _undefined && wardID != null)
          'wardID': (wardID as String),
        if (wardName != _undefined && wardName != null)
          'wardName': (wardName as String),
      }));
}

class _CopyWithStubImpl$Input$UpdateWardInput<TRes>
    implements CopyWith$Input$UpdateWardInput<TRes> {
  _CopyWithStubImpl$Input$UpdateWardInput(this._res);

  TRes _res;

  call({
    String? buildingID,
    String? floorID,
    String? wardID,
    String? wardName,
  }) =>
      _res;
}

class Input$UserFilterInput {
  factory Input$UserFilterInput({
    String? fullname,
    List<String?>? userRoleID,
    required bool isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
  }) =>
      Input$UserFilterInput._({
        if (fullname != null) r'fullname': fullname,
        if (userRoleID != null) r'userRoleID': userRoleID,
        r'isActive': isActive,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserFilterInput._(this._$data);

  factory Input$UserFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fullname')) {
      final l$fullname = data['fullname'];
      result$data['fullname'] = (l$fullname as String?);
    }
    if (data.containsKey('userRoleID')) {
      final l$userRoleID = data['userRoleID'];
      result$data['userRoleID'] =
          (l$userRoleID as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DurationTimeInput.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DurationTimeInput.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    return Input$UserFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fullname => (_$data['fullname'] as String?);

  List<String?>? get userRoleID => (_$data['userRoleID'] as List<String?>?);

  bool get isActive => (_$data['isActive'] as bool);

  Input$DurationTimeInput? get createdAt =>
      (_$data['createdAt'] as Input$DurationTimeInput?);

  Input$DurationTimeInput? get updatedAt =>
      (_$data['updatedAt'] as Input$DurationTimeInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fullname')) {
      final l$fullname = fullname;
      result$data['fullname'] = l$fullname;
    }
    if (_$data.containsKey('userRoleID')) {
      final l$userRoleID = userRoleID;
      result$data['userRoleID'] = l$userRoleID?.map((e) => e).toList();
    }
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserFilterInput<Input$UserFilterInput> get copyWith =>
      CopyWith$Input$UserFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserFilterInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fullname = fullname;
    final lOther$fullname = other.fullname;
    if (_$data.containsKey('fullname') !=
        other._$data.containsKey('fullname')) {
      return false;
    }
    if (l$fullname != lOther$fullname) {
      return false;
    }
    final l$userRoleID = userRoleID;
    final lOther$userRoleID = other.userRoleID;
    if (_$data.containsKey('userRoleID') !=
        other._$data.containsKey('userRoleID')) {
      return false;
    }
    if (l$userRoleID != null && lOther$userRoleID != null) {
      if (l$userRoleID.length != lOther$userRoleID.length) {
        return false;
      }
      for (int i = 0; i < l$userRoleID.length; i++) {
        final l$userRoleID$entry = l$userRoleID[i];
        final lOther$userRoleID$entry = lOther$userRoleID[i];
        if (l$userRoleID$entry != lOther$userRoleID$entry) {
          return false;
        }
      }
    } else if (l$userRoleID != lOther$userRoleID) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fullname = fullname;
    final l$userRoleID = userRoleID;
    final l$isActive = isActive;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('fullname') ? l$fullname : const {},
      _$data.containsKey('userRoleID')
          ? l$userRoleID == null
              ? null
              : Object.hashAll(l$userRoleID.map((v) => v))
          : const {},
      l$isActive,
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserFilterInput<TRes> {
  factory CopyWith$Input$UserFilterInput(
    Input$UserFilterInput instance,
    TRes Function(Input$UserFilterInput) then,
  ) = _CopyWithImpl$Input$UserFilterInput;

  factory CopyWith$Input$UserFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserFilterInput;

  TRes call({
    String? fullname,
    List<String?>? userRoleID,
    bool? isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
  });
  CopyWith$Input$DurationTimeInput<TRes> get createdAt;
  CopyWith$Input$DurationTimeInput<TRes> get updatedAt;
}

class _CopyWithImpl$Input$UserFilterInput<TRes>
    implements CopyWith$Input$UserFilterInput<TRes> {
  _CopyWithImpl$Input$UserFilterInput(
    this._instance,
    this._then,
  );

  final Input$UserFilterInput _instance;

  final TRes Function(Input$UserFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fullname = _undefined,
    Object? userRoleID = _undefined,
    Object? isActive = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserFilterInput._({
        ..._instance._$data,
        if (fullname != _undefined) 'fullname': (fullname as String?),
        if (userRoleID != _undefined)
          'userRoleID': (userRoleID as List<String?>?),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DurationTimeInput?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DurationTimeInput?),
      }));

  CopyWith$Input$DurationTimeInput<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DurationTimeInput.stub(_then(_instance))
        : CopyWith$Input$DurationTimeInput(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DurationTimeInput<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DurationTimeInput.stub(_then(_instance))
        : CopyWith$Input$DurationTimeInput(
            local$updatedAt, (e) => call(updatedAt: e));
  }
}

class _CopyWithStubImpl$Input$UserFilterInput<TRes>
    implements CopyWith$Input$UserFilterInput<TRes> {
  _CopyWithStubImpl$Input$UserFilterInput(this._res);

  TRes _res;

  call({
    String? fullname,
    List<String?>? userRoleID,
    bool? isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
  }) =>
      _res;

  CopyWith$Input$DurationTimeInput<TRes> get createdAt =>
      CopyWith$Input$DurationTimeInput.stub(_res);

  CopyWith$Input$DurationTimeInput<TRes> get updatedAt =>
      CopyWith$Input$DurationTimeInput.stub(_res);
}

class Input$UserInfoFilterInput {
  factory Input$UserInfoFilterInput({required String userID}) =>
      Input$UserInfoFilterInput._({
        r'userID': userID,
      });

  Input$UserInfoFilterInput._(this._$data);

  factory Input$UserInfoFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userID = data['userID'];
    result$data['userID'] = (l$userID as String);
    return Input$UserInfoFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userID => (_$data['userID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userID = userID;
    result$data['userID'] = l$userID;
    return result$data;
  }

  CopyWith$Input$UserInfoFilterInput<Input$UserInfoFilterInput> get copyWith =>
      CopyWith$Input$UserInfoFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserInfoFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userID = userID;
    final lOther$userID = other.userID;
    if (l$userID != lOther$userID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userID = userID;
    return Object.hashAll([l$userID]);
  }
}

abstract class CopyWith$Input$UserInfoFilterInput<TRes> {
  factory CopyWith$Input$UserInfoFilterInput(
    Input$UserInfoFilterInput instance,
    TRes Function(Input$UserInfoFilterInput) then,
  ) = _CopyWithImpl$Input$UserInfoFilterInput;

  factory CopyWith$Input$UserInfoFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserInfoFilterInput;

  TRes call({String? userID});
}

class _CopyWithImpl$Input$UserInfoFilterInput<TRes>
    implements CopyWith$Input$UserInfoFilterInput<TRes> {
  _CopyWithImpl$Input$UserInfoFilterInput(
    this._instance,
    this._then,
  );

  final Input$UserInfoFilterInput _instance;

  final TRes Function(Input$UserInfoFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userID = _undefined}) =>
      _then(Input$UserInfoFilterInput._({
        ..._instance._$data,
        if (userID != _undefined && userID != null)
          'userID': (userID as String),
      }));
}

class _CopyWithStubImpl$Input$UserInfoFilterInput<TRes>
    implements CopyWith$Input$UserInfoFilterInput<TRes> {
  _CopyWithStubImpl$Input$UserInfoFilterInput(this._res);

  TRes _res;

  call({String? userID}) => _res;
}

class Input$UserRoleFilterInput {
  factory Input$UserRoleFilterInput({
    String? userRoleName,
    required bool isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
  }) =>
      Input$UserRoleFilterInput._({
        if (userRoleName != null) r'userRoleName': userRoleName,
        r'isActive': isActive,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserRoleFilterInput._(this._$data);

  factory Input$UserRoleFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userRoleName')) {
      final l$userRoleName = data['userRoleName'];
      result$data['userRoleName'] = (l$userRoleName as String?);
    }
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as bool);
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input$DurationTimeInput.fromJson(
              (l$createdAt as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input$DurationTimeInput.fromJson(
              (l$updatedAt as Map<String, dynamic>));
    }
    return Input$UserRoleFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userRoleName => (_$data['userRoleName'] as String?);

  bool get isActive => (_$data['isActive'] as bool);

  Input$DurationTimeInput? get createdAt =>
      (_$data['createdAt'] as Input$DurationTimeInput?);

  Input$DurationTimeInput? get updatedAt =>
      (_$data['updatedAt'] as Input$DurationTimeInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userRoleName')) {
      final l$userRoleName = userRoleName;
      result$data['userRoleName'] = l$userRoleName;
    }
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserRoleFilterInput<Input$UserRoleFilterInput> get copyWith =>
      CopyWith$Input$UserRoleFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserRoleFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userRoleName = userRoleName;
    final lOther$userRoleName = other.userRoleName;
    if (_$data.containsKey('userRoleName') !=
        other._$data.containsKey('userRoleName')) {
      return false;
    }
    if (l$userRoleName != lOther$userRoleName) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userRoleName = userRoleName;
    final l$isActive = isActive;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('userRoleName') ? l$userRoleName : const {},
      l$isActive,
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserRoleFilterInput<TRes> {
  factory CopyWith$Input$UserRoleFilterInput(
    Input$UserRoleFilterInput instance,
    TRes Function(Input$UserRoleFilterInput) then,
  ) = _CopyWithImpl$Input$UserRoleFilterInput;

  factory CopyWith$Input$UserRoleFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserRoleFilterInput;

  TRes call({
    String? userRoleName,
    bool? isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
  });
  CopyWith$Input$DurationTimeInput<TRes> get createdAt;
  CopyWith$Input$DurationTimeInput<TRes> get updatedAt;
}

class _CopyWithImpl$Input$UserRoleFilterInput<TRes>
    implements CopyWith$Input$UserRoleFilterInput<TRes> {
  _CopyWithImpl$Input$UserRoleFilterInput(
    this._instance,
    this._then,
  );

  final Input$UserRoleFilterInput _instance;

  final TRes Function(Input$UserRoleFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userRoleName = _undefined,
    Object? isActive = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserRoleFilterInput._({
        ..._instance._$data,
        if (userRoleName != _undefined)
          'userRoleName': (userRoleName as String?),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as bool),
        if (createdAt != _undefined)
          'createdAt': (createdAt as Input$DurationTimeInput?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Input$DurationTimeInput?),
      }));

  CopyWith$Input$DurationTimeInput<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DurationTimeInput.stub(_then(_instance))
        : CopyWith$Input$DurationTimeInput(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DurationTimeInput<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DurationTimeInput.stub(_then(_instance))
        : CopyWith$Input$DurationTimeInput(
            local$updatedAt, (e) => call(updatedAt: e));
  }
}

class _CopyWithStubImpl$Input$UserRoleFilterInput<TRes>
    implements CopyWith$Input$UserRoleFilterInput<TRes> {
  _CopyWithStubImpl$Input$UserRoleFilterInput(this._res);

  TRes _res;

  call({
    String? userRoleName,
    bool? isActive,
    Input$DurationTimeInput? createdAt,
    Input$DurationTimeInput? updatedAt,
  }) =>
      _res;

  CopyWith$Input$DurationTimeInput<TRes> get createdAt =>
      CopyWith$Input$DurationTimeInput.stub(_res);

  CopyWith$Input$DurationTimeInput<TRes> get updatedAt =>
      CopyWith$Input$DurationTimeInput.stub(_res);
}

class Input$UserRoleSortInput {
  factory Input$UserRoleSortInput({
    Enum$EOrderBy? userRoleName,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  }) =>
      Input$UserRoleSortInput._({
        if (userRoleName != null) r'userRoleName': userRoleName,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserRoleSortInput._(this._$data);

  factory Input$UserRoleSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userRoleName')) {
      final l$userRoleName = data['userRoleName'];
      result$data['userRoleName'] = l$userRoleName == null
          ? null
          : fromJson$Enum$EOrderBy((l$userRoleName as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$updatedAt as String));
    }
    return Input$UserRoleSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$EOrderBy? get userRoleName => (_$data['userRoleName'] as Enum$EOrderBy?);

  Enum$EOrderBy? get createdAt => (_$data['createdAt'] as Enum$EOrderBy?);

  Enum$EOrderBy? get updatedAt => (_$data['updatedAt'] as Enum$EOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userRoleName')) {
      final l$userRoleName = userRoleName;
      result$data['userRoleName'] =
          l$userRoleName == null ? null : toJson$Enum$EOrderBy(l$userRoleName);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$EOrderBy(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$EOrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$UserRoleSortInput<Input$UserRoleSortInput> get copyWith =>
      CopyWith$Input$UserRoleSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserRoleSortInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userRoleName = userRoleName;
    final lOther$userRoleName = other.userRoleName;
    if (_$data.containsKey('userRoleName') !=
        other._$data.containsKey('userRoleName')) {
      return false;
    }
    if (l$userRoleName != lOther$userRoleName) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userRoleName = userRoleName;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('userRoleName') ? l$userRoleName : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserRoleSortInput<TRes> {
  factory CopyWith$Input$UserRoleSortInput(
    Input$UserRoleSortInput instance,
    TRes Function(Input$UserRoleSortInput) then,
  ) = _CopyWithImpl$Input$UserRoleSortInput;

  factory CopyWith$Input$UserRoleSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserRoleSortInput;

  TRes call({
    Enum$EOrderBy? userRoleName,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  });
}

class _CopyWithImpl$Input$UserRoleSortInput<TRes>
    implements CopyWith$Input$UserRoleSortInput<TRes> {
  _CopyWithImpl$Input$UserRoleSortInput(
    this._instance,
    this._then,
  );

  final Input$UserRoleSortInput _instance;

  final TRes Function(Input$UserRoleSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userRoleName = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserRoleSortInput._({
        ..._instance._$data,
        if (userRoleName != _undefined)
          'userRoleName': (userRoleName as Enum$EOrderBy?),
        if (createdAt != _undefined) 'createdAt': (createdAt as Enum$EOrderBy?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum$EOrderBy?),
      }));
}

class _CopyWithStubImpl$Input$UserRoleSortInput<TRes>
    implements CopyWith$Input$UserRoleSortInput<TRes> {
  _CopyWithStubImpl$Input$UserRoleSortInput(this._res);

  TRes _res;

  call({
    Enum$EOrderBy? userRoleName,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  }) =>
      _res;
}

class Input$UserSortInput {
  factory Input$UserSortInput({
    Enum$EOrderBy? fullname,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  }) =>
      Input$UserSortInput._({
        if (fullname != null) r'fullname': fullname,
        if (createdAt != null) r'createdAt': createdAt,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserSortInput._(this._$data);

  factory Input$UserSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fullname')) {
      final l$fullname = data['fullname'];
      result$data['fullname'] = l$fullname == null
          ? null
          : fromJson$Enum$EOrderBy((l$fullname as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$createdAt as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$EOrderBy((l$updatedAt as String));
    }
    return Input$UserSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$EOrderBy? get fullname => (_$data['fullname'] as Enum$EOrderBy?);

  Enum$EOrderBy? get createdAt => (_$data['createdAt'] as Enum$EOrderBy?);

  Enum$EOrderBy? get updatedAt => (_$data['updatedAt'] as Enum$EOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fullname')) {
      final l$fullname = fullname;
      result$data['fullname'] =
          l$fullname == null ? null : toJson$Enum$EOrderBy(l$fullname);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$EOrderBy(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$EOrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$UserSortInput<Input$UserSortInput> get copyWith =>
      CopyWith$Input$UserSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSortInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fullname = fullname;
    final lOther$fullname = other.fullname;
    if (_$data.containsKey('fullname') !=
        other._$data.containsKey('fullname')) {
      return false;
    }
    if (l$fullname != lOther$fullname) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fullname = fullname;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('fullname') ? l$fullname : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSortInput<TRes> {
  factory CopyWith$Input$UserSortInput(
    Input$UserSortInput instance,
    TRes Function(Input$UserSortInput) then,
  ) = _CopyWithImpl$Input$UserSortInput;

  factory CopyWith$Input$UserSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSortInput;

  TRes call({
    Enum$EOrderBy? fullname,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  });
}

class _CopyWithImpl$Input$UserSortInput<TRes>
    implements CopyWith$Input$UserSortInput<TRes> {
  _CopyWithImpl$Input$UserSortInput(
    this._instance,
    this._then,
  );

  final Input$UserSortInput _instance;

  final TRes Function(Input$UserSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fullname = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserSortInput._({
        ..._instance._$data,
        if (fullname != _undefined) 'fullname': (fullname as Enum$EOrderBy?),
        if (createdAt != _undefined) 'createdAt': (createdAt as Enum$EOrderBy?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum$EOrderBy?),
      }));
}

class _CopyWithStubImpl$Input$UserSortInput<TRes>
    implements CopyWith$Input$UserSortInput<TRes> {
  _CopyWithStubImpl$Input$UserSortInput(this._res);

  TRes _res;

  call({
    Enum$EOrderBy? fullname,
    Enum$EOrderBy? createdAt,
    Enum$EOrderBy? updatedAt,
  }) =>
      _res;
}

enum Enum$EActivityLogsActionType {
  AUTH,
  $unknown;

  factory Enum$EActivityLogsActionType.fromJson(String value) =>
      fromJson$Enum$EActivityLogsActionType(value);

  String toJson() => toJson$Enum$EActivityLogsActionType(this);
}

String toJson$Enum$EActivityLogsActionType(Enum$EActivityLogsActionType e) {
  switch (e) {
    case Enum$EActivityLogsActionType.AUTH:
      return r'AUTH';
    case Enum$EActivityLogsActionType.$unknown:
      return r'$unknown';
  }
}

Enum$EActivityLogsActionType fromJson$Enum$EActivityLogsActionType(
    String value) {
  switch (value) {
    case r'AUTH':
      return Enum$EActivityLogsActionType.AUTH;
    default:
      return Enum$EActivityLogsActionType.$unknown;
  }
}

enum Enum$EGender {
  MALE,
  FEMALE,
  $unknown;

  factory Enum$EGender.fromJson(String value) => fromJson$Enum$EGender(value);

  String toJson() => toJson$Enum$EGender(this);
}

String toJson$Enum$EGender(Enum$EGender e) {
  switch (e) {
    case Enum$EGender.MALE:
      return r'MALE';
    case Enum$EGender.FEMALE:
      return r'FEMALE';
    case Enum$EGender.$unknown:
      return r'$unknown';
  }
}

Enum$EGender fromJson$Enum$EGender(String value) {
  switch (value) {
    case r'MALE':
      return Enum$EGender.MALE;
    case r'FEMALE':
      return Enum$EGender.FEMALE;
    default:
      return Enum$EGender.$unknown;
  }
}

enum Enum$EOrderBy {
  asc,
  desc,
  $unknown;

  factory Enum$EOrderBy.fromJson(String value) => fromJson$Enum$EOrderBy(value);

  String toJson() => toJson$Enum$EOrderBy(this);
}

String toJson$Enum$EOrderBy(Enum$EOrderBy e) {
  switch (e) {
    case Enum$EOrderBy.asc:
      return r'asc';
    case Enum$EOrderBy.desc:
      return r'desc';
    case Enum$EOrderBy.$unknown:
      return r'$unknown';
  }
}

Enum$EOrderBy fromJson$Enum$EOrderBy(String value) {
  switch (value) {
    case r'asc':
      return Enum$EOrderBy.asc;
    case r'desc':
      return Enum$EOrderBy.desc;
    default:
      return Enum$EOrderBy.$unknown;
  }
}

enum Enum$EPermission {
  DASHBOARD,
  MEDICATION_CART_MONITORING,
  MEDICATION_CART_AND_LOCATION,
  LOCATION,
  MEDICATION_CART,
  USER_MANAGEMENT_USER_LIST,
  USER_MANAGEMENT_USER_PERMISSION,
  PATIENT_HISTORY,
  ACTIVITY_LOGS,
  SETTING,
  $unknown;

  factory Enum$EPermission.fromJson(String value) =>
      fromJson$Enum$EPermission(value);

  String toJson() => toJson$Enum$EPermission(this);
}

String toJson$Enum$EPermission(Enum$EPermission e) {
  switch (e) {
    case Enum$EPermission.DASHBOARD:
      return r'DASHBOARD';
    case Enum$EPermission.MEDICATION_CART_MONITORING:
      return r'MEDICATION_CART_MONITORING';
    case Enum$EPermission.MEDICATION_CART_AND_LOCATION:
      return r'MEDICATION_CART_AND_LOCATION';
    case Enum$EPermission.LOCATION:
      return r'LOCATION';
    case Enum$EPermission.MEDICATION_CART:
      return r'MEDICATION_CART';
    case Enum$EPermission.USER_MANAGEMENT_USER_LIST:
      return r'USER_MANAGEMENT_USER_LIST';
    case Enum$EPermission.USER_MANAGEMENT_USER_PERMISSION:
      return r'USER_MANAGEMENT_USER_PERMISSION';
    case Enum$EPermission.PATIENT_HISTORY:
      return r'PATIENT_HISTORY';
    case Enum$EPermission.ACTIVITY_LOGS:
      return r'ACTIVITY_LOGS';
    case Enum$EPermission.SETTING:
      return r'SETTING';
    case Enum$EPermission.$unknown:
      return r'$unknown';
  }
}

Enum$EPermission fromJson$Enum$EPermission(String value) {
  switch (value) {
    case r'DASHBOARD':
      return Enum$EPermission.DASHBOARD;
    case r'MEDICATION_CART_MONITORING':
      return Enum$EPermission.MEDICATION_CART_MONITORING;
    case r'MEDICATION_CART_AND_LOCATION':
      return Enum$EPermission.MEDICATION_CART_AND_LOCATION;
    case r'LOCATION':
      return Enum$EPermission.LOCATION;
    case r'MEDICATION_CART':
      return Enum$EPermission.MEDICATION_CART;
    case r'USER_MANAGEMENT_USER_LIST':
      return Enum$EPermission.USER_MANAGEMENT_USER_LIST;
    case r'USER_MANAGEMENT_USER_PERMISSION':
      return Enum$EPermission.USER_MANAGEMENT_USER_PERMISSION;
    case r'PATIENT_HISTORY':
      return Enum$EPermission.PATIENT_HISTORY;
    case r'ACTIVITY_LOGS':
      return Enum$EPermission.ACTIVITY_LOGS;
    case r'SETTING':
      return Enum$EPermission.SETTING;
    default:
      return Enum$EPermission.$unknown;
  }
}

enum Enum$ERecordActivityLogsActionType {
  ADMINISTER,
  CHECKER,
  DISPENSING,
  APPROVAL,
  $unknown;

  factory Enum$ERecordActivityLogsActionType.fromJson(String value) =>
      fromJson$Enum$ERecordActivityLogsActionType(value);

  String toJson() => toJson$Enum$ERecordActivityLogsActionType(this);
}

String toJson$Enum$ERecordActivityLogsActionType(
    Enum$ERecordActivityLogsActionType e) {
  switch (e) {
    case Enum$ERecordActivityLogsActionType.ADMINISTER:
      return r'ADMINISTER';
    case Enum$ERecordActivityLogsActionType.CHECKER:
      return r'CHECKER';
    case Enum$ERecordActivityLogsActionType.DISPENSING:
      return r'DISPENSING';
    case Enum$ERecordActivityLogsActionType.APPROVAL:
      return r'APPROVAL';
    case Enum$ERecordActivityLogsActionType.$unknown:
      return r'$unknown';
  }
}

Enum$ERecordActivityLogsActionType fromJson$Enum$ERecordActivityLogsActionType(
    String value) {
  switch (value) {
    case r'ADMINISTER':
      return Enum$ERecordActivityLogsActionType.ADMINISTER;
    case r'CHECKER':
      return Enum$ERecordActivityLogsActionType.CHECKER;
    case r'DISPENSING':
      return Enum$ERecordActivityLogsActionType.DISPENSING;
    case r'APPROVAL':
      return Enum$ERecordActivityLogsActionType.APPROVAL;
    default:
      return Enum$ERecordActivityLogsActionType.$unknown;
  }
}

enum Enum$ERecordActivityLogsStatus {
  CHECK_IN,
  OPEN_LOCKER,
  CHECK_OUT,
  $unknown;

  factory Enum$ERecordActivityLogsStatus.fromJson(String value) =>
      fromJson$Enum$ERecordActivityLogsStatus(value);

  String toJson() => toJson$Enum$ERecordActivityLogsStatus(this);
}

String toJson$Enum$ERecordActivityLogsStatus(Enum$ERecordActivityLogsStatus e) {
  switch (e) {
    case Enum$ERecordActivityLogsStatus.CHECK_IN:
      return r'CHECK_IN';
    case Enum$ERecordActivityLogsStatus.OPEN_LOCKER:
      return r'OPEN_LOCKER';
    case Enum$ERecordActivityLogsStatus.CHECK_OUT:
      return r'CHECK_OUT';
    case Enum$ERecordActivityLogsStatus.$unknown:
      return r'$unknown';
  }
}

Enum$ERecordActivityLogsStatus fromJson$Enum$ERecordActivityLogsStatus(
    String value) {
  switch (value) {
    case r'CHECK_IN':
      return Enum$ERecordActivityLogsStatus.CHECK_IN;
    case r'OPEN_LOCKER':
      return Enum$ERecordActivityLogsStatus.OPEN_LOCKER;
    case r'CHECK_OUT':
      return Enum$ERecordActivityLogsStatus.CHECK_OUT;
    default:
      return Enum$ERecordActivityLogsStatus.$unknown;
  }
}

enum Enum$ERecordActivityLogsUnlockBy {
  CHECK_IN,
  MANUAL,
  SCAN,
  CHECK_OUT,
  $unknown;

  factory Enum$ERecordActivityLogsUnlockBy.fromJson(String value) =>
      fromJson$Enum$ERecordActivityLogsUnlockBy(value);

  String toJson() => toJson$Enum$ERecordActivityLogsUnlockBy(this);
}

String toJson$Enum$ERecordActivityLogsUnlockBy(
    Enum$ERecordActivityLogsUnlockBy e) {
  switch (e) {
    case Enum$ERecordActivityLogsUnlockBy.CHECK_IN:
      return r'CHECK_IN';
    case Enum$ERecordActivityLogsUnlockBy.MANUAL:
      return r'MANUAL';
    case Enum$ERecordActivityLogsUnlockBy.SCAN:
      return r'SCAN';
    case Enum$ERecordActivityLogsUnlockBy.CHECK_OUT:
      return r'CHECK_OUT';
    case Enum$ERecordActivityLogsUnlockBy.$unknown:
      return r'$unknown';
  }
}

Enum$ERecordActivityLogsUnlockBy fromJson$Enum$ERecordActivityLogsUnlockBy(
    String value) {
  switch (value) {
    case r'CHECK_IN':
      return Enum$ERecordActivityLogsUnlockBy.CHECK_IN;
    case r'MANUAL':
      return Enum$ERecordActivityLogsUnlockBy.MANUAL;
    case r'SCAN':
      return Enum$ERecordActivityLogsUnlockBy.SCAN;
    case r'CHECK_OUT':
      return Enum$ERecordActivityLogsUnlockBy.CHECK_OUT;
    default:
      return Enum$ERecordActivityLogsUnlockBy.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'ActivityLogListPayload': {
    'ActivityLogList',
    'Error',
  },
  'AllBuildingPayload': {
    'AllBuilding',
    'Error',
  },
  'AllFloorInBuildingPayload': {
    'AllFloorInBuilding',
    'Error',
  },
  'AllFloorPayload': {
    'AllFloor',
    'Error',
  },
  'AllLocationPayload': {
    'AllLocation',
    'Error',
  },
  'AllWardInFloorPayload': {
    'AllWardInFloor',
    'Error',
  },
  'AllWardPayload': {
    'AllWard',
    'Error',
  },
  'DashboardPayload': {
    'Dashboard',
    'Error',
  },
  'DeviceListPayload': {
    'DeviceList',
    'Error',
  },
  'HospitalInfoPayload': {
    'HospitalInfo',
    'Error',
  },
  'MonitoringDeviceInBuildingPayload': {
    'MonitoringDeviceInBuilding',
    'Error',
  },
  'MonitoringDevicePayload': {
    'MonitoringDevice',
    'Error',
  },
  'MutationBuildingPayload': {
    'MutationBuilding',
    'Error',
  },
  'MutationDevicePayload': {
    'MutationDevice',
    'Error',
  },
  'MutationFloorPayload': {
    'MutationFloor',
    'Error',
  },
  'MutationMutationPrintMedicalRecordPayload': {
    'MutationPrintMedicalRecord',
    'Error',
  },
  'MutationUploadFilePayload': {
    'MutationUploadFile',
    'Error',
  },
  'MutationUserPayload': {
    'MutationUser',
    'Error',
  },
  'MutationUserRolePayload': {
    'MutationUserRole',
    'Error',
  },
  'MutationWardPayload': {
    'MutationWard',
    'Error',
  },
  'ReportPatientHistoryPayload': {
    'ReportPatientHistory',
    'Error',
  },
  'UserInfoPayload': {
    'User',
    'Error',
  },
  'UserListPayload': {
    'UserList',
    'Error',
  },
  'UserRoleListPayload': {
    'UserRoleList',
    'Error',
  },
};
