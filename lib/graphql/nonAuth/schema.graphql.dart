class Input$LoginInput {
  factory Input$LoginInput({
    required String username,
    required String password,
  }) =>
      Input$LoginInput._({
        r'username': username,
        r'password': password,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginInput) || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginInput._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Input$RecordActivityLogsInput {
  factory Input$RecordActivityLogsInput({
    required String deviceID,
    List<Input$RecordActivityLogsItemInput?>? items,
  }) =>
      Input$RecordActivityLogsInput._({
        r'deviceID': deviceID,
        if (items != null) r'items': items,
      });

  Input$RecordActivityLogsInput._(this._$data);

  factory Input$RecordActivityLogsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    if (data.containsKey('items')) {
      final l$items = data['items'];
      result$data['items'] = (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$RecordActivityLogsItemInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$RecordActivityLogsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  List<Input$RecordActivityLogsItemInput?>? get items =>
      (_$data['items'] as List<Input$RecordActivityLogsItemInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    if (_$data.containsKey('items')) {
      final l$items = items;
      result$data['items'] = l$items?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$RecordActivityLogsInput<Input$RecordActivityLogsInput>
      get copyWith => CopyWith$Input$RecordActivityLogsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordActivityLogsInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (_$data.containsKey('items') != other._$data.containsKey('items')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$items = items;
    return Object.hashAll([
      l$deviceID,
      _$data.containsKey('items')
          ? l$items == null
              ? null
              : Object.hashAll(l$items.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordActivityLogsInput<TRes> {
  factory CopyWith$Input$RecordActivityLogsInput(
    Input$RecordActivityLogsInput instance,
    TRes Function(Input$RecordActivityLogsInput) then,
  ) = _CopyWithImpl$Input$RecordActivityLogsInput;

  factory CopyWith$Input$RecordActivityLogsInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordActivityLogsInput;

  TRes call({
    String? deviceID,
    List<Input$RecordActivityLogsItemInput?>? items,
  });
  TRes items(
      Iterable<Input$RecordActivityLogsItemInput?>? Function(
              Iterable<
                  CopyWith$Input$RecordActivityLogsItemInput<
                      Input$RecordActivityLogsItemInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$RecordActivityLogsInput<TRes>
    implements CopyWith$Input$RecordActivityLogsInput<TRes> {
  _CopyWithImpl$Input$RecordActivityLogsInput(
    this._instance,
    this._then,
  );

  final Input$RecordActivityLogsInput _instance;

  final TRes Function(Input$RecordActivityLogsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? items = _undefined,
  }) =>
      _then(Input$RecordActivityLogsInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (items != _undefined)
          'items': (items as List<Input$RecordActivityLogsItemInput?>?),
      }));

  TRes items(
          Iterable<Input$RecordActivityLogsItemInput?>? Function(
                  Iterable<
                      CopyWith$Input$RecordActivityLogsItemInput<
                          Input$RecordActivityLogsItemInput>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Input$RecordActivityLogsItemInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$RecordActivityLogsInput<TRes>
    implements CopyWith$Input$RecordActivityLogsInput<TRes> {
  _CopyWithStubImpl$Input$RecordActivityLogsInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    List<Input$RecordActivityLogsItemInput?>? items,
  }) =>
      _res;

  items(_fn) => _res;
}

class Input$RecordActivityLogsItemInput {
  factory Input$RecordActivityLogsItemInput({
    required String recordActivityLogID,
    required int recordLockerID,
    String? UUID,
    String? hn,
    String? ward,
    String? admitDate,
    String? patientName,
    Enum$EGender? gender,
    String? roomNo,
    required String recordUserID,
    required String username,
    required String fullname,
    required Enum$ERecordActivityLogsStatus status,
    required Enum$ERecordActivityLogsUnlockBy unlockBy,
    required Enum$ERecordActivityLogsActionType actionType,
    double? temperature,
    double? humidity,
    String? reason,
    String? customAttibute,
    required String updatedAt,
    required String createdAt,
    required String recordMedicationRecordID,
  }) =>
      Input$RecordActivityLogsItemInput._({
        r'recordActivityLogID': recordActivityLogID,
        r'recordLockerID': recordLockerID,
        if (UUID != null) r'UUID': UUID,
        if (hn != null) r'hn': hn,
        if (ward != null) r'ward': ward,
        if (admitDate != null) r'admitDate': admitDate,
        if (patientName != null) r'patientName': patientName,
        if (gender != null) r'gender': gender,
        if (roomNo != null) r'roomNo': roomNo,
        r'recordUserID': recordUserID,
        r'username': username,
        r'fullname': fullname,
        r'status': status,
        r'unlockBy': unlockBy,
        r'actionType': actionType,
        if (temperature != null) r'temperature': temperature,
        if (humidity != null) r'humidity': humidity,
        if (reason != null) r'reason': reason,
        if (customAttibute != null) r'customAttibute': customAttibute,
        r'updatedAt': updatedAt,
        r'createdAt': createdAt,
        r'recordMedicationRecordID': recordMedicationRecordID,
      });

  Input$RecordActivityLogsItemInput._(this._$data);

  factory Input$RecordActivityLogsItemInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recordActivityLogID = data['recordActivityLogID'];
    result$data['recordActivityLogID'] = (l$recordActivityLogID as String);
    final l$recordLockerID = data['recordLockerID'];
    result$data['recordLockerID'] = (l$recordLockerID as int);
    if (data.containsKey('UUID')) {
      final l$UUID = data['UUID'];
      result$data['UUID'] = (l$UUID as String?);
    }
    if (data.containsKey('hn')) {
      final l$hn = data['hn'];
      result$data['hn'] = (l$hn as String?);
    }
    if (data.containsKey('ward')) {
      final l$ward = data['ward'];
      result$data['ward'] = (l$ward as String?);
    }
    if (data.containsKey('admitDate')) {
      final l$admitDate = data['admitDate'];
      result$data['admitDate'] = (l$admitDate as String?);
    }
    if (data.containsKey('patientName')) {
      final l$patientName = data['patientName'];
      result$data['patientName'] = (l$patientName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$EGender((l$gender as String));
    }
    if (data.containsKey('roomNo')) {
      final l$roomNo = data['roomNo'];
      result$data['roomNo'] = (l$roomNo as String?);
    }
    final l$recordUserID = data['recordUserID'];
    result$data['recordUserID'] = (l$recordUserID as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$fullname = data['fullname'];
    result$data['fullname'] = (l$fullname as String);
    final l$status = data['status'];
    result$data['status'] =
        fromJson$Enum$ERecordActivityLogsStatus((l$status as String));
    final l$unlockBy = data['unlockBy'];
    result$data['unlockBy'] =
        fromJson$Enum$ERecordActivityLogsUnlockBy((l$unlockBy as String));
    final l$actionType = data['actionType'];
    result$data['actionType'] =
        fromJson$Enum$ERecordActivityLogsActionType((l$actionType as String));
    if (data.containsKey('temperature')) {
      final l$temperature = data['temperature'];
      result$data['temperature'] = (l$temperature as num?)?.toDouble();
    }
    if (data.containsKey('humidity')) {
      final l$humidity = data['humidity'];
      result$data['humidity'] = (l$humidity as num?)?.toDouble();
    }
    if (data.containsKey('reason')) {
      final l$reason = data['reason'];
      result$data['reason'] = (l$reason as String?);
    }
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    final l$updatedAt = data['updatedAt'];
    result$data['updatedAt'] = (l$updatedAt as String);
    final l$createdAt = data['createdAt'];
    result$data['createdAt'] = (l$createdAt as String);
    final l$recordMedicationRecordID = data['recordMedicationRecordID'];
    result$data['recordMedicationRecordID'] =
        (l$recordMedicationRecordID as String);
    return Input$RecordActivityLogsItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recordActivityLogID => (_$data['recordActivityLogID'] as String);

  int get recordLockerID => (_$data['recordLockerID'] as int);

  String? get UUID => (_$data['UUID'] as String?);

  String? get hn => (_$data['hn'] as String?);

  String? get ward => (_$data['ward'] as String?);

  String? get admitDate => (_$data['admitDate'] as String?);

  String? get patientName => (_$data['patientName'] as String?);

  Enum$EGender? get gender => (_$data['gender'] as Enum$EGender?);

  String? get roomNo => (_$data['roomNo'] as String?);

  String get recordUserID => (_$data['recordUserID'] as String);

  String get username => (_$data['username'] as String);

  String get fullname => (_$data['fullname'] as String);

  Enum$ERecordActivityLogsStatus get status =>
      (_$data['status'] as Enum$ERecordActivityLogsStatus);

  Enum$ERecordActivityLogsUnlockBy get unlockBy =>
      (_$data['unlockBy'] as Enum$ERecordActivityLogsUnlockBy);

  Enum$ERecordActivityLogsActionType get actionType =>
      (_$data['actionType'] as Enum$ERecordActivityLogsActionType);

  double? get temperature => (_$data['temperature'] as double?);

  double? get humidity => (_$data['humidity'] as double?);

  String? get reason => (_$data['reason'] as String?);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  String get updatedAt => (_$data['updatedAt'] as String);

  String get createdAt => (_$data['createdAt'] as String);

  String get recordMedicationRecordID =>
      (_$data['recordMedicationRecordID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recordActivityLogID = recordActivityLogID;
    result$data['recordActivityLogID'] = l$recordActivityLogID;
    final l$recordLockerID = recordLockerID;
    result$data['recordLockerID'] = l$recordLockerID;
    if (_$data.containsKey('UUID')) {
      final l$UUID = UUID;
      result$data['UUID'] = l$UUID;
    }
    if (_$data.containsKey('hn')) {
      final l$hn = hn;
      result$data['hn'] = l$hn;
    }
    if (_$data.containsKey('ward')) {
      final l$ward = ward;
      result$data['ward'] = l$ward;
    }
    if (_$data.containsKey('admitDate')) {
      final l$admitDate = admitDate;
      result$data['admitDate'] = l$admitDate;
    }
    if (_$data.containsKey('patientName')) {
      final l$patientName = patientName;
      result$data['patientName'] = l$patientName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$EGender(l$gender);
    }
    if (_$data.containsKey('roomNo')) {
      final l$roomNo = roomNo;
      result$data['roomNo'] = l$roomNo;
    }
    final l$recordUserID = recordUserID;
    result$data['recordUserID'] = l$recordUserID;
    final l$username = username;
    result$data['username'] = l$username;
    final l$fullname = fullname;
    result$data['fullname'] = l$fullname;
    final l$status = status;
    result$data['status'] = toJson$Enum$ERecordActivityLogsStatus(l$status);
    final l$unlockBy = unlockBy;
    result$data['unlockBy'] =
        toJson$Enum$ERecordActivityLogsUnlockBy(l$unlockBy);
    final l$actionType = actionType;
    result$data['actionType'] =
        toJson$Enum$ERecordActivityLogsActionType(l$actionType);
    if (_$data.containsKey('temperature')) {
      final l$temperature = temperature;
      result$data['temperature'] = l$temperature;
    }
    if (_$data.containsKey('humidity')) {
      final l$humidity = humidity;
      result$data['humidity'] = l$humidity;
    }
    if (_$data.containsKey('reason')) {
      final l$reason = reason;
      result$data['reason'] = l$reason;
    }
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    final l$updatedAt = updatedAt;
    result$data['updatedAt'] = l$updatedAt;
    final l$createdAt = createdAt;
    result$data['createdAt'] = l$createdAt;
    final l$recordMedicationRecordID = recordMedicationRecordID;
    result$data['recordMedicationRecordID'] = l$recordMedicationRecordID;
    return result$data;
  }

  CopyWith$Input$RecordActivityLogsItemInput<Input$RecordActivityLogsItemInput>
      get copyWith => CopyWith$Input$RecordActivityLogsItemInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordActivityLogsItemInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordActivityLogID = recordActivityLogID;
    final lOther$recordActivityLogID = other.recordActivityLogID;
    if (l$recordActivityLogID != lOther$recordActivityLogID) {
      return false;
    }
    final l$recordLockerID = recordLockerID;
    final lOther$recordLockerID = other.recordLockerID;
    if (l$recordLockerID != lOther$recordLockerID) {
      return false;
    }
    final l$UUID = UUID;
    final lOther$UUID = other.UUID;
    if (_$data.containsKey('UUID') != other._$data.containsKey('UUID')) {
      return false;
    }
    if (l$UUID != lOther$UUID) {
      return false;
    }
    final l$hn = hn;
    final lOther$hn = other.hn;
    if (_$data.containsKey('hn') != other._$data.containsKey('hn')) {
      return false;
    }
    if (l$hn != lOther$hn) {
      return false;
    }
    final l$ward = ward;
    final lOther$ward = other.ward;
    if (_$data.containsKey('ward') != other._$data.containsKey('ward')) {
      return false;
    }
    if (l$ward != lOther$ward) {
      return false;
    }
    final l$admitDate = admitDate;
    final lOther$admitDate = other.admitDate;
    if (_$data.containsKey('admitDate') !=
        other._$data.containsKey('admitDate')) {
      return false;
    }
    if (l$admitDate != lOther$admitDate) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$roomNo = roomNo;
    final lOther$roomNo = other.roomNo;
    if (_$data.containsKey('roomNo') != other._$data.containsKey('roomNo')) {
      return false;
    }
    if (l$roomNo != lOther$roomNo) {
      return false;
    }
    final l$recordUserID = recordUserID;
    final lOther$recordUserID = other.recordUserID;
    if (l$recordUserID != lOther$recordUserID) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$unlockBy = unlockBy;
    final lOther$unlockBy = other.unlockBy;
    if (l$unlockBy != lOther$unlockBy) {
      return false;
    }
    final l$actionType = actionType;
    final lOther$actionType = other.actionType;
    if (l$actionType != lOther$actionType) {
      return false;
    }
    final l$temperature = temperature;
    final lOther$temperature = other.temperature;
    if (_$data.containsKey('temperature') !=
        other._$data.containsKey('temperature')) {
      return false;
    }
    if (l$temperature != lOther$temperature) {
      return false;
    }
    final l$humidity = humidity;
    final lOther$humidity = other.humidity;
    if (_$data.containsKey('humidity') !=
        other._$data.containsKey('humidity')) {
      return false;
    }
    if (l$humidity != lOther$humidity) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (_$data.containsKey('reason') != other._$data.containsKey('reason')) {
      return false;
    }
    if (l$reason != lOther$reason) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$recordMedicationRecordID = recordMedicationRecordID;
    final lOther$recordMedicationRecordID = other.recordMedicationRecordID;
    if (l$recordMedicationRecordID != lOther$recordMedicationRecordID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordActivityLogID = recordActivityLogID;
    final l$recordLockerID = recordLockerID;
    final l$UUID = UUID;
    final l$hn = hn;
    final l$ward = ward;
    final l$admitDate = admitDate;
    final l$patientName = patientName;
    final l$gender = gender;
    final l$roomNo = roomNo;
    final l$recordUserID = recordUserID;
    final l$username = username;
    final l$fullname = fullname;
    final l$status = status;
    final l$unlockBy = unlockBy;
    final l$actionType = actionType;
    final l$temperature = temperature;
    final l$humidity = humidity;
    final l$reason = reason;
    final l$customAttibute = customAttibute;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$recordMedicationRecordID = recordMedicationRecordID;
    return Object.hashAll([
      l$recordActivityLogID,
      l$recordLockerID,
      _$data.containsKey('UUID') ? l$UUID : const {},
      _$data.containsKey('hn') ? l$hn : const {},
      _$data.containsKey('ward') ? l$ward : const {},
      _$data.containsKey('admitDate') ? l$admitDate : const {},
      _$data.containsKey('patientName') ? l$patientName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('roomNo') ? l$roomNo : const {},
      l$recordUserID,
      l$username,
      l$fullname,
      l$status,
      l$unlockBy,
      l$actionType,
      _$data.containsKey('temperature') ? l$temperature : const {},
      _$data.containsKey('humidity') ? l$humidity : const {},
      _$data.containsKey('reason') ? l$reason : const {},
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
      l$updatedAt,
      l$createdAt,
      l$recordMedicationRecordID,
    ]);
  }
}

abstract class CopyWith$Input$RecordActivityLogsItemInput<TRes> {
  factory CopyWith$Input$RecordActivityLogsItemInput(
    Input$RecordActivityLogsItemInput instance,
    TRes Function(Input$RecordActivityLogsItemInput) then,
  ) = _CopyWithImpl$Input$RecordActivityLogsItemInput;

  factory CopyWith$Input$RecordActivityLogsItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordActivityLogsItemInput;

  TRes call({
    String? recordActivityLogID,
    int? recordLockerID,
    String? UUID,
    String? hn,
    String? ward,
    String? admitDate,
    String? patientName,
    Enum$EGender? gender,
    String? roomNo,
    String? recordUserID,
    String? username,
    String? fullname,
    Enum$ERecordActivityLogsStatus? status,
    Enum$ERecordActivityLogsUnlockBy? unlockBy,
    Enum$ERecordActivityLogsActionType? actionType,
    double? temperature,
    double? humidity,
    String? reason,
    String? customAttibute,
    String? updatedAt,
    String? createdAt,
    String? recordMedicationRecordID,
  });
}

class _CopyWithImpl$Input$RecordActivityLogsItemInput<TRes>
    implements CopyWith$Input$RecordActivityLogsItemInput<TRes> {
  _CopyWithImpl$Input$RecordActivityLogsItemInput(
    this._instance,
    this._then,
  );

  final Input$RecordActivityLogsItemInput _instance;

  final TRes Function(Input$RecordActivityLogsItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordActivityLogID = _undefined,
    Object? recordLockerID = _undefined,
    Object? UUID = _undefined,
    Object? hn = _undefined,
    Object? ward = _undefined,
    Object? admitDate = _undefined,
    Object? patientName = _undefined,
    Object? gender = _undefined,
    Object? roomNo = _undefined,
    Object? recordUserID = _undefined,
    Object? username = _undefined,
    Object? fullname = _undefined,
    Object? status = _undefined,
    Object? unlockBy = _undefined,
    Object? actionType = _undefined,
    Object? temperature = _undefined,
    Object? humidity = _undefined,
    Object? reason = _undefined,
    Object? customAttibute = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? recordMedicationRecordID = _undefined,
  }) =>
      _then(Input$RecordActivityLogsItemInput._({
        ..._instance._$data,
        if (recordActivityLogID != _undefined && recordActivityLogID != null)
          'recordActivityLogID': (recordActivityLogID as String),
        if (recordLockerID != _undefined && recordLockerID != null)
          'recordLockerID': (recordLockerID as int),
        if (UUID != _undefined) 'UUID': (UUID as String?),
        if (hn != _undefined) 'hn': (hn as String?),
        if (ward != _undefined) 'ward': (ward as String?),
        if (admitDate != _undefined) 'admitDate': (admitDate as String?),
        if (patientName != _undefined) 'patientName': (patientName as String?),
        if (gender != _undefined) 'gender': (gender as Enum$EGender?),
        if (roomNo != _undefined) 'roomNo': (roomNo as String?),
        if (recordUserID != _undefined && recordUserID != null)
          'recordUserID': (recordUserID as String),
        if (username != _undefined && username != null)
          'username': (username as String),
        if (fullname != _undefined && fullname != null)
          'fullname': (fullname as String),
        if (status != _undefined && status != null)
          'status': (status as Enum$ERecordActivityLogsStatus),
        if (unlockBy != _undefined && unlockBy != null)
          'unlockBy': (unlockBy as Enum$ERecordActivityLogsUnlockBy),
        if (actionType != _undefined && actionType != null)
          'actionType': (actionType as Enum$ERecordActivityLogsActionType),
        if (temperature != _undefined) 'temperature': (temperature as double?),
        if (humidity != _undefined) 'humidity': (humidity as double?),
        if (reason != _undefined) 'reason': (reason as String?),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
        if (updatedAt != _undefined && updatedAt != null)
          'updatedAt': (updatedAt as String),
        if (createdAt != _undefined && createdAt != null)
          'createdAt': (createdAt as String),
        if (recordMedicationRecordID != _undefined &&
            recordMedicationRecordID != null)
          'recordMedicationRecordID': (recordMedicationRecordID as String),
      }));
}

class _CopyWithStubImpl$Input$RecordActivityLogsItemInput<TRes>
    implements CopyWith$Input$RecordActivityLogsItemInput<TRes> {
  _CopyWithStubImpl$Input$RecordActivityLogsItemInput(this._res);

  TRes _res;

  call({
    String? recordActivityLogID,
    int? recordLockerID,
    String? UUID,
    String? hn,
    String? ward,
    String? admitDate,
    String? patientName,
    Enum$EGender? gender,
    String? roomNo,
    String? recordUserID,
    String? username,
    String? fullname,
    Enum$ERecordActivityLogsStatus? status,
    Enum$ERecordActivityLogsUnlockBy? unlockBy,
    Enum$ERecordActivityLogsActionType? actionType,
    double? temperature,
    double? humidity,
    String? reason,
    String? customAttibute,
    String? updatedAt,
    String? createdAt,
    String? recordMedicationRecordID,
  }) =>
      _res;
}

class Input$RecordLockerInput {
  factory Input$RecordLockerInput({
    required String deviceID,
    List<Input$RecordLockerItemInput?>? items,
  }) =>
      Input$RecordLockerInput._({
        r'deviceID': deviceID,
        if (items != null) r'items': items,
      });

  Input$RecordLockerInput._(this._$data);

  factory Input$RecordLockerInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    if (data.containsKey('items')) {
      final l$items = data['items'];
      result$data['items'] = (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$RecordLockerItemInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$RecordLockerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  List<Input$RecordLockerItemInput?>? get items =>
      (_$data['items'] as List<Input$RecordLockerItemInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    if (_$data.containsKey('items')) {
      final l$items = items;
      result$data['items'] = l$items?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$RecordLockerInput<Input$RecordLockerInput> get copyWith =>
      CopyWith$Input$RecordLockerInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordLockerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (_$data.containsKey('items') != other._$data.containsKey('items')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$items = items;
    return Object.hashAll([
      l$deviceID,
      _$data.containsKey('items')
          ? l$items == null
              ? null
              : Object.hashAll(l$items.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordLockerInput<TRes> {
  factory CopyWith$Input$RecordLockerInput(
    Input$RecordLockerInput instance,
    TRes Function(Input$RecordLockerInput) then,
  ) = _CopyWithImpl$Input$RecordLockerInput;

  factory CopyWith$Input$RecordLockerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordLockerInput;

  TRes call({
    String? deviceID,
    List<Input$RecordLockerItemInput?>? items,
  });
  TRes items(
      Iterable<Input$RecordLockerItemInput?>? Function(
              Iterable<
                  CopyWith$Input$RecordLockerItemInput<
                      Input$RecordLockerItemInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$RecordLockerInput<TRes>
    implements CopyWith$Input$RecordLockerInput<TRes> {
  _CopyWithImpl$Input$RecordLockerInput(
    this._instance,
    this._then,
  );

  final Input$RecordLockerInput _instance;

  final TRes Function(Input$RecordLockerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? items = _undefined,
  }) =>
      _then(Input$RecordLockerInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (items != _undefined)
          'items': (items as List<Input$RecordLockerItemInput?>?),
      }));

  TRes items(
          Iterable<Input$RecordLockerItemInput?>? Function(
                  Iterable<
                      CopyWith$Input$RecordLockerItemInput<
                          Input$RecordLockerItemInput>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Input$RecordLockerItemInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$RecordLockerInput<TRes>
    implements CopyWith$Input$RecordLockerInput<TRes> {
  _CopyWithStubImpl$Input$RecordLockerInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    List<Input$RecordLockerItemInput?>? items,
  }) =>
      _res;

  items(_fn) => _res;
}

class Input$RecordLockerItemInput {
  factory Input$RecordLockerItemInput({
    required int recordLockerID,
    String? UUID,
    String? hn,
    String? ward,
    String? admitDate,
    String? patientName,
    Enum$EGender? gender,
    String? roomNo,
    String? customAttibute,
    required String createdAt,
    required String updatedAt,
    String? recordMedicationRecordID,
  }) =>
      Input$RecordLockerItemInput._({
        r'recordLockerID': recordLockerID,
        if (UUID != null) r'UUID': UUID,
        if (hn != null) r'hn': hn,
        if (ward != null) r'ward': ward,
        if (admitDate != null) r'admitDate': admitDate,
        if (patientName != null) r'patientName': patientName,
        if (gender != null) r'gender': gender,
        if (roomNo != null) r'roomNo': roomNo,
        if (customAttibute != null) r'customAttibute': customAttibute,
        r'createdAt': createdAt,
        r'updatedAt': updatedAt,
        if (recordMedicationRecordID != null)
          r'recordMedicationRecordID': recordMedicationRecordID,
      });

  Input$RecordLockerItemInput._(this._$data);

  factory Input$RecordLockerItemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recordLockerID = data['recordLockerID'];
    result$data['recordLockerID'] = (l$recordLockerID as int);
    if (data.containsKey('UUID')) {
      final l$UUID = data['UUID'];
      result$data['UUID'] = (l$UUID as String?);
    }
    if (data.containsKey('hn')) {
      final l$hn = data['hn'];
      result$data['hn'] = (l$hn as String?);
    }
    if (data.containsKey('ward')) {
      final l$ward = data['ward'];
      result$data['ward'] = (l$ward as String?);
    }
    if (data.containsKey('admitDate')) {
      final l$admitDate = data['admitDate'];
      result$data['admitDate'] = (l$admitDate as String?);
    }
    if (data.containsKey('patientName')) {
      final l$patientName = data['patientName'];
      result$data['patientName'] = (l$patientName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$EGender((l$gender as String));
    }
    if (data.containsKey('roomNo')) {
      final l$roomNo = data['roomNo'];
      result$data['roomNo'] = (l$roomNo as String?);
    }
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    final l$createdAt = data['createdAt'];
    result$data['createdAt'] = (l$createdAt as String);
    final l$updatedAt = data['updatedAt'];
    result$data['updatedAt'] = (l$updatedAt as String);
    if (data.containsKey('recordMedicationRecordID')) {
      final l$recordMedicationRecordID = data['recordMedicationRecordID'];
      result$data['recordMedicationRecordID'] =
          (l$recordMedicationRecordID as String?);
    }
    return Input$RecordLockerItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get recordLockerID => (_$data['recordLockerID'] as int);

  String? get UUID => (_$data['UUID'] as String?);

  String? get hn => (_$data['hn'] as String?);

  String? get ward => (_$data['ward'] as String?);

  String? get admitDate => (_$data['admitDate'] as String?);

  String? get patientName => (_$data['patientName'] as String?);

  Enum$EGender? get gender => (_$data['gender'] as Enum$EGender?);

  String? get roomNo => (_$data['roomNo'] as String?);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  String get createdAt => (_$data['createdAt'] as String);

  String get updatedAt => (_$data['updatedAt'] as String);

  String? get recordMedicationRecordID =>
      (_$data['recordMedicationRecordID'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recordLockerID = recordLockerID;
    result$data['recordLockerID'] = l$recordLockerID;
    if (_$data.containsKey('UUID')) {
      final l$UUID = UUID;
      result$data['UUID'] = l$UUID;
    }
    if (_$data.containsKey('hn')) {
      final l$hn = hn;
      result$data['hn'] = l$hn;
    }
    if (_$data.containsKey('ward')) {
      final l$ward = ward;
      result$data['ward'] = l$ward;
    }
    if (_$data.containsKey('admitDate')) {
      final l$admitDate = admitDate;
      result$data['admitDate'] = l$admitDate;
    }
    if (_$data.containsKey('patientName')) {
      final l$patientName = patientName;
      result$data['patientName'] = l$patientName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$EGender(l$gender);
    }
    if (_$data.containsKey('roomNo')) {
      final l$roomNo = roomNo;
      result$data['roomNo'] = l$roomNo;
    }
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    final l$createdAt = createdAt;
    result$data['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    result$data['updatedAt'] = l$updatedAt;
    if (_$data.containsKey('recordMedicationRecordID')) {
      final l$recordMedicationRecordID = recordMedicationRecordID;
      result$data['recordMedicationRecordID'] = l$recordMedicationRecordID;
    }
    return result$data;
  }

  CopyWith$Input$RecordLockerItemInput<Input$RecordLockerItemInput>
      get copyWith => CopyWith$Input$RecordLockerItemInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordLockerItemInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordLockerID = recordLockerID;
    final lOther$recordLockerID = other.recordLockerID;
    if (l$recordLockerID != lOther$recordLockerID) {
      return false;
    }
    final l$UUID = UUID;
    final lOther$UUID = other.UUID;
    if (_$data.containsKey('UUID') != other._$data.containsKey('UUID')) {
      return false;
    }
    if (l$UUID != lOther$UUID) {
      return false;
    }
    final l$hn = hn;
    final lOther$hn = other.hn;
    if (_$data.containsKey('hn') != other._$data.containsKey('hn')) {
      return false;
    }
    if (l$hn != lOther$hn) {
      return false;
    }
    final l$ward = ward;
    final lOther$ward = other.ward;
    if (_$data.containsKey('ward') != other._$data.containsKey('ward')) {
      return false;
    }
    if (l$ward != lOther$ward) {
      return false;
    }
    final l$admitDate = admitDate;
    final lOther$admitDate = other.admitDate;
    if (_$data.containsKey('admitDate') !=
        other._$data.containsKey('admitDate')) {
      return false;
    }
    if (l$admitDate != lOther$admitDate) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$roomNo = roomNo;
    final lOther$roomNo = other.roomNo;
    if (_$data.containsKey('roomNo') != other._$data.containsKey('roomNo')) {
      return false;
    }
    if (l$roomNo != lOther$roomNo) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$recordMedicationRecordID = recordMedicationRecordID;
    final lOther$recordMedicationRecordID = other.recordMedicationRecordID;
    if (_$data.containsKey('recordMedicationRecordID') !=
        other._$data.containsKey('recordMedicationRecordID')) {
      return false;
    }
    if (l$recordMedicationRecordID != lOther$recordMedicationRecordID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordLockerID = recordLockerID;
    final l$UUID = UUID;
    final l$hn = hn;
    final l$ward = ward;
    final l$admitDate = admitDate;
    final l$patientName = patientName;
    final l$gender = gender;
    final l$roomNo = roomNo;
    final l$customAttibute = customAttibute;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$recordMedicationRecordID = recordMedicationRecordID;
    return Object.hashAll([
      l$recordLockerID,
      _$data.containsKey('UUID') ? l$UUID : const {},
      _$data.containsKey('hn') ? l$hn : const {},
      _$data.containsKey('ward') ? l$ward : const {},
      _$data.containsKey('admitDate') ? l$admitDate : const {},
      _$data.containsKey('patientName') ? l$patientName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('roomNo') ? l$roomNo : const {},
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
      l$createdAt,
      l$updatedAt,
      _$data.containsKey('recordMedicationRecordID')
          ? l$recordMedicationRecordID
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordLockerItemInput<TRes> {
  factory CopyWith$Input$RecordLockerItemInput(
    Input$RecordLockerItemInput instance,
    TRes Function(Input$RecordLockerItemInput) then,
  ) = _CopyWithImpl$Input$RecordLockerItemInput;

  factory CopyWith$Input$RecordLockerItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordLockerItemInput;

  TRes call({
    int? recordLockerID,
    String? UUID,
    String? hn,
    String? ward,
    String? admitDate,
    String? patientName,
    Enum$EGender? gender,
    String? roomNo,
    String? customAttibute,
    String? createdAt,
    String? updatedAt,
    String? recordMedicationRecordID,
  });
}

class _CopyWithImpl$Input$RecordLockerItemInput<TRes>
    implements CopyWith$Input$RecordLockerItemInput<TRes> {
  _CopyWithImpl$Input$RecordLockerItemInput(
    this._instance,
    this._then,
  );

  final Input$RecordLockerItemInput _instance;

  final TRes Function(Input$RecordLockerItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordLockerID = _undefined,
    Object? UUID = _undefined,
    Object? hn = _undefined,
    Object? ward = _undefined,
    Object? admitDate = _undefined,
    Object? patientName = _undefined,
    Object? gender = _undefined,
    Object? roomNo = _undefined,
    Object? customAttibute = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? recordMedicationRecordID = _undefined,
  }) =>
      _then(Input$RecordLockerItemInput._({
        ..._instance._$data,
        if (recordLockerID != _undefined && recordLockerID != null)
          'recordLockerID': (recordLockerID as int),
        if (UUID != _undefined) 'UUID': (UUID as String?),
        if (hn != _undefined) 'hn': (hn as String?),
        if (ward != _undefined) 'ward': (ward as String?),
        if (admitDate != _undefined) 'admitDate': (admitDate as String?),
        if (patientName != _undefined) 'patientName': (patientName as String?),
        if (gender != _undefined) 'gender': (gender as Enum$EGender?),
        if (roomNo != _undefined) 'roomNo': (roomNo as String?),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
        if (createdAt != _undefined && createdAt != null)
          'createdAt': (createdAt as String),
        if (updatedAt != _undefined && updatedAt != null)
          'updatedAt': (updatedAt as String),
        if (recordMedicationRecordID != _undefined)
          'recordMedicationRecordID': (recordMedicationRecordID as String?),
      }));
}

class _CopyWithStubImpl$Input$RecordLockerItemInput<TRes>
    implements CopyWith$Input$RecordLockerItemInput<TRes> {
  _CopyWithStubImpl$Input$RecordLockerItemInput(this._res);

  TRes _res;

  call({
    int? recordLockerID,
    String? UUID,
    String? hn,
    String? ward,
    String? admitDate,
    String? patientName,
    Enum$EGender? gender,
    String? roomNo,
    String? customAttibute,
    String? createdAt,
    String? updatedAt,
    String? recordMedicationRecordID,
  }) =>
      _res;
}

class Input$RecordMedicationRecordInput {
  factory Input$RecordMedicationRecordInput({
    required String deviceID,
    List<Input$RecordMedicationRecordItemInput?>? items,
  }) =>
      Input$RecordMedicationRecordInput._({
        r'deviceID': deviceID,
        if (items != null) r'items': items,
      });

  Input$RecordMedicationRecordInput._(this._$data);

  factory Input$RecordMedicationRecordInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    if (data.containsKey('items')) {
      final l$items = data['items'];
      result$data['items'] = (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$RecordMedicationRecordItemInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$RecordMedicationRecordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  List<Input$RecordMedicationRecordItemInput?>? get items =>
      (_$data['items'] as List<Input$RecordMedicationRecordItemInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    if (_$data.containsKey('items')) {
      final l$items = items;
      result$data['items'] = l$items?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$RecordMedicationRecordInput<Input$RecordMedicationRecordInput>
      get copyWith => CopyWith$Input$RecordMedicationRecordInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordMedicationRecordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (_$data.containsKey('items') != other._$data.containsKey('items')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$items = items;
    return Object.hashAll([
      l$deviceID,
      _$data.containsKey('items')
          ? l$items == null
              ? null
              : Object.hashAll(l$items.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordMedicationRecordInput<TRes> {
  factory CopyWith$Input$RecordMedicationRecordInput(
    Input$RecordMedicationRecordInput instance,
    TRes Function(Input$RecordMedicationRecordInput) then,
  ) = _CopyWithImpl$Input$RecordMedicationRecordInput;

  factory CopyWith$Input$RecordMedicationRecordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordMedicationRecordInput;

  TRes call({
    String? deviceID,
    List<Input$RecordMedicationRecordItemInput?>? items,
  });
  TRes items(
      Iterable<Input$RecordMedicationRecordItemInput?>? Function(
              Iterable<
                  CopyWith$Input$RecordMedicationRecordItemInput<
                      Input$RecordMedicationRecordItemInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$RecordMedicationRecordInput<TRes>
    implements CopyWith$Input$RecordMedicationRecordInput<TRes> {
  _CopyWithImpl$Input$RecordMedicationRecordInput(
    this._instance,
    this._then,
  );

  final Input$RecordMedicationRecordInput _instance;

  final TRes Function(Input$RecordMedicationRecordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? items = _undefined,
  }) =>
      _then(Input$RecordMedicationRecordInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (items != _undefined)
          'items': (items as List<Input$RecordMedicationRecordItemInput?>?),
      }));

  TRes items(
          Iterable<Input$RecordMedicationRecordItemInput?>? Function(
                  Iterable<
                      CopyWith$Input$RecordMedicationRecordItemInput<
                          Input$RecordMedicationRecordItemInput>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Input$RecordMedicationRecordItemInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$RecordMedicationRecordInput<TRes>
    implements CopyWith$Input$RecordMedicationRecordInput<TRes> {
  _CopyWithStubImpl$Input$RecordMedicationRecordInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    List<Input$RecordMedicationRecordItemInput?>? items,
  }) =>
      _res;

  items(_fn) => _res;
}

class Input$RecordMedicationRecordItemInput {
  factory Input$RecordMedicationRecordItemInput({
    required String recordMedicationRecordID_medicationRecordTypeName,
    required String recordMedicationRecordID,
    required String medicationRecordTypeName,
    required int indexOrder,
    String? json,
    String? confirmJson,
    String? customAttibute,
    required String createdAt,
    required String updatedAt,
  }) =>
      Input$RecordMedicationRecordItemInput._({
        r'recordMedicationRecordID_medicationRecordTypeName':
            recordMedicationRecordID_medicationRecordTypeName,
        r'recordMedicationRecordID': recordMedicationRecordID,
        r'medicationRecordTypeName': medicationRecordTypeName,
        r'indexOrder': indexOrder,
        if (json != null) r'json': json,
        if (confirmJson != null) r'confirmJson': confirmJson,
        if (customAttibute != null) r'customAttibute': customAttibute,
        r'createdAt': createdAt,
        r'updatedAt': updatedAt,
      });

  Input$RecordMedicationRecordItemInput._(this._$data);

  factory Input$RecordMedicationRecordItemInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recordMedicationRecordID_medicationRecordTypeName =
        data['recordMedicationRecordID_medicationRecordTypeName'];
    result$data['recordMedicationRecordID_medicationRecordTypeName'] =
        (l$recordMedicationRecordID_medicationRecordTypeName as String);
    final l$recordMedicationRecordID = data['recordMedicationRecordID'];
    result$data['recordMedicationRecordID'] =
        (l$recordMedicationRecordID as String);
    final l$medicationRecordTypeName = data['medicationRecordTypeName'];
    result$data['medicationRecordTypeName'] =
        (l$medicationRecordTypeName as String);
    final l$indexOrder = data['indexOrder'];
    result$data['indexOrder'] = (l$indexOrder as int);
    if (data.containsKey('json')) {
      final l$json = data['json'];
      result$data['json'] = (l$json as String?);
    }
    if (data.containsKey('confirmJson')) {
      final l$confirmJson = data['confirmJson'];
      result$data['confirmJson'] = (l$confirmJson as String?);
    }
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    final l$createdAt = data['createdAt'];
    result$data['createdAt'] = (l$createdAt as String);
    final l$updatedAt = data['updatedAt'];
    result$data['updatedAt'] = (l$updatedAt as String);
    return Input$RecordMedicationRecordItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recordMedicationRecordID_medicationRecordTypeName =>
      (_$data['recordMedicationRecordID_medicationRecordTypeName'] as String);

  String get recordMedicationRecordID =>
      (_$data['recordMedicationRecordID'] as String);

  String get medicationRecordTypeName =>
      (_$data['medicationRecordTypeName'] as String);

  int get indexOrder => (_$data['indexOrder'] as int);

  String? get json => (_$data['json'] as String?);

  String? get confirmJson => (_$data['confirmJson'] as String?);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  String get createdAt => (_$data['createdAt'] as String);

  String get updatedAt => (_$data['updatedAt'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recordMedicationRecordID_medicationRecordTypeName =
        recordMedicationRecordID_medicationRecordTypeName;
    result$data['recordMedicationRecordID_medicationRecordTypeName'] =
        l$recordMedicationRecordID_medicationRecordTypeName;
    final l$recordMedicationRecordID = recordMedicationRecordID;
    result$data['recordMedicationRecordID'] = l$recordMedicationRecordID;
    final l$medicationRecordTypeName = medicationRecordTypeName;
    result$data['medicationRecordTypeName'] = l$medicationRecordTypeName;
    final l$indexOrder = indexOrder;
    result$data['indexOrder'] = l$indexOrder;
    if (_$data.containsKey('json')) {
      final l$json = json;
      result$data['json'] = l$json;
    }
    if (_$data.containsKey('confirmJson')) {
      final l$confirmJson = confirmJson;
      result$data['confirmJson'] = l$confirmJson;
    }
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    final l$createdAt = createdAt;
    result$data['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    result$data['updatedAt'] = l$updatedAt;
    return result$data;
  }

  CopyWith$Input$RecordMedicationRecordItemInput<
          Input$RecordMedicationRecordItemInput>
      get copyWith => CopyWith$Input$RecordMedicationRecordItemInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordMedicationRecordItemInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordMedicationRecordID_medicationRecordTypeName =
        recordMedicationRecordID_medicationRecordTypeName;
    final lOther$recordMedicationRecordID_medicationRecordTypeName =
        other.recordMedicationRecordID_medicationRecordTypeName;
    if (l$recordMedicationRecordID_medicationRecordTypeName !=
        lOther$recordMedicationRecordID_medicationRecordTypeName) {
      return false;
    }
    final l$recordMedicationRecordID = recordMedicationRecordID;
    final lOther$recordMedicationRecordID = other.recordMedicationRecordID;
    if (l$recordMedicationRecordID != lOther$recordMedicationRecordID) {
      return false;
    }
    final l$medicationRecordTypeName = medicationRecordTypeName;
    final lOther$medicationRecordTypeName = other.medicationRecordTypeName;
    if (l$medicationRecordTypeName != lOther$medicationRecordTypeName) {
      return false;
    }
    final l$indexOrder = indexOrder;
    final lOther$indexOrder = other.indexOrder;
    if (l$indexOrder != lOther$indexOrder) {
      return false;
    }
    final l$json = json;
    final lOther$json = other.json;
    if (_$data.containsKey('json') != other._$data.containsKey('json')) {
      return false;
    }
    if (l$json != lOther$json) {
      return false;
    }
    final l$confirmJson = confirmJson;
    final lOther$confirmJson = other.confirmJson;
    if (_$data.containsKey('confirmJson') !=
        other._$data.containsKey('confirmJson')) {
      return false;
    }
    if (l$confirmJson != lOther$confirmJson) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordMedicationRecordID_medicationRecordTypeName =
        recordMedicationRecordID_medicationRecordTypeName;
    final l$recordMedicationRecordID = recordMedicationRecordID;
    final l$medicationRecordTypeName = medicationRecordTypeName;
    final l$indexOrder = indexOrder;
    final l$json = json;
    final l$confirmJson = confirmJson;
    final l$customAttibute = customAttibute;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      l$recordMedicationRecordID_medicationRecordTypeName,
      l$recordMedicationRecordID,
      l$medicationRecordTypeName,
      l$indexOrder,
      _$data.containsKey('json') ? l$json : const {},
      _$data.containsKey('confirmJson') ? l$confirmJson : const {},
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
      l$createdAt,
      l$updatedAt,
    ]);
  }
}

abstract class CopyWith$Input$RecordMedicationRecordItemInput<TRes> {
  factory CopyWith$Input$RecordMedicationRecordItemInput(
    Input$RecordMedicationRecordItemInput instance,
    TRes Function(Input$RecordMedicationRecordItemInput) then,
  ) = _CopyWithImpl$Input$RecordMedicationRecordItemInput;

  factory CopyWith$Input$RecordMedicationRecordItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordMedicationRecordItemInput;

  TRes call({
    String? recordMedicationRecordID_medicationRecordTypeName,
    String? recordMedicationRecordID,
    String? medicationRecordTypeName,
    int? indexOrder,
    String? json,
    String? confirmJson,
    String? customAttibute,
    String? createdAt,
    String? updatedAt,
  });
}

class _CopyWithImpl$Input$RecordMedicationRecordItemInput<TRes>
    implements CopyWith$Input$RecordMedicationRecordItemInput<TRes> {
  _CopyWithImpl$Input$RecordMedicationRecordItemInput(
    this._instance,
    this._then,
  );

  final Input$RecordMedicationRecordItemInput _instance;

  final TRes Function(Input$RecordMedicationRecordItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordMedicationRecordID_medicationRecordTypeName = _undefined,
    Object? recordMedicationRecordID = _undefined,
    Object? medicationRecordTypeName = _undefined,
    Object? indexOrder = _undefined,
    Object? json = _undefined,
    Object? confirmJson = _undefined,
    Object? customAttibute = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$RecordMedicationRecordItemInput._({
        ..._instance._$data,
        if (recordMedicationRecordID_medicationRecordTypeName != _undefined &&
            recordMedicationRecordID_medicationRecordTypeName != null)
          'recordMedicationRecordID_medicationRecordTypeName':
              (recordMedicationRecordID_medicationRecordTypeName as String),
        if (recordMedicationRecordID != _undefined &&
            recordMedicationRecordID != null)
          'recordMedicationRecordID': (recordMedicationRecordID as String),
        if (medicationRecordTypeName != _undefined &&
            medicationRecordTypeName != null)
          'medicationRecordTypeName': (medicationRecordTypeName as String),
        if (indexOrder != _undefined && indexOrder != null)
          'indexOrder': (indexOrder as int),
        if (json != _undefined) 'json': (json as String?),
        if (confirmJson != _undefined) 'confirmJson': (confirmJson as String?),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
        if (createdAt != _undefined && createdAt != null)
          'createdAt': (createdAt as String),
        if (updatedAt != _undefined && updatedAt != null)
          'updatedAt': (updatedAt as String),
      }));
}

class _CopyWithStubImpl$Input$RecordMedicationRecordItemInput<TRes>
    implements CopyWith$Input$RecordMedicationRecordItemInput<TRes> {
  _CopyWithStubImpl$Input$RecordMedicationRecordItemInput(this._res);

  TRes _res;

  call({
    String? recordMedicationRecordID_medicationRecordTypeName,
    String? recordMedicationRecordID,
    String? medicationRecordTypeName,
    int? indexOrder,
    String? json,
    String? confirmJson,
    String? customAttibute,
    String? createdAt,
    String? updatedAt,
  }) =>
      _res;
}

class Input$RecordSettingInput {
  factory Input$RecordSettingInput({
    required String deviceID,
    List<Input$RecordSettingItemInput?>? items,
  }) =>
      Input$RecordSettingInput._({
        r'deviceID': deviceID,
        if (items != null) r'items': items,
      });

  Input$RecordSettingInput._(this._$data);

  factory Input$RecordSettingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    if (data.containsKey('items')) {
      final l$items = data['items'];
      result$data['items'] = (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$RecordSettingItemInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    return Input$RecordSettingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  List<Input$RecordSettingItemInput?>? get items =>
      (_$data['items'] as List<Input$RecordSettingItemInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    if (_$data.containsKey('items')) {
      final l$items = items;
      result$data['items'] = l$items?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$RecordSettingInput<Input$RecordSettingInput> get copyWith =>
      CopyWith$Input$RecordSettingInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordSettingInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (_$data.containsKey('items') != other._$data.containsKey('items')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$items = items;
    return Object.hashAll([
      l$deviceID,
      _$data.containsKey('items')
          ? l$items == null
              ? null
              : Object.hashAll(l$items.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordSettingInput<TRes> {
  factory CopyWith$Input$RecordSettingInput(
    Input$RecordSettingInput instance,
    TRes Function(Input$RecordSettingInput) then,
  ) = _CopyWithImpl$Input$RecordSettingInput;

  factory CopyWith$Input$RecordSettingInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordSettingInput;

  TRes call({
    String? deviceID,
    List<Input$RecordSettingItemInput?>? items,
  });
  TRes items(
      Iterable<Input$RecordSettingItemInput?>? Function(
              Iterable<
                  CopyWith$Input$RecordSettingItemInput<
                      Input$RecordSettingItemInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$RecordSettingInput<TRes>
    implements CopyWith$Input$RecordSettingInput<TRes> {
  _CopyWithImpl$Input$RecordSettingInput(
    this._instance,
    this._then,
  );

  final Input$RecordSettingInput _instance;

  final TRes Function(Input$RecordSettingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? items = _undefined,
  }) =>
      _then(Input$RecordSettingInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (items != _undefined)
          'items': (items as List<Input$RecordSettingItemInput?>?),
      }));

  TRes items(
          Iterable<Input$RecordSettingItemInput?>? Function(
                  Iterable<
                      CopyWith$Input$RecordSettingItemInput<
                          Input$RecordSettingItemInput>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Input$RecordSettingItemInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$RecordSettingInput<TRes>
    implements CopyWith$Input$RecordSettingInput<TRes> {
  _CopyWithStubImpl$Input$RecordSettingInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    List<Input$RecordSettingItemInput?>? items,
  }) =>
      _res;

  items(_fn) => _res;
}

class Input$RecordSettingItemInput {
  factory Input$RecordSettingItemInput({
    required String recordSettingID,
    required String deviceID,
    required int isAuthentication,
    required int isNotification,
    required int timeoutNotification,
    required int amountLocker,
    required int isDoubleCheck,
    required String isHnOrAn,
    String? endpointGetHN,
    String? endpointGetMedicine,
    required String pathChrome,
    String? ward,
    String? syncUserRoleUpdateAt,
    String? syncUserUpdateAt,
    String? syncSettingUpdateAt,
    String? syncMedicationRecordTypeUpdateAt,
    String? syncMedicineUpdateAt,
    String? syncLockerUpdateAt,
    String? syncMedicationRecordUpdateAt,
    String? syncActivityLogsUpdateAt,
    int? intervalToServer,
    String? customAttibute,
  }) =>
      Input$RecordSettingItemInput._({
        r'recordSettingID': recordSettingID,
        r'deviceID': deviceID,
        r'isAuthentication': isAuthentication,
        r'isNotification': isNotification,
        r'timeoutNotification': timeoutNotification,
        r'amountLocker': amountLocker,
        r'isDoubleCheck': isDoubleCheck,
        r'isHnOrAn': isHnOrAn,
        if (endpointGetHN != null) r'endpointGetHN': endpointGetHN,
        if (endpointGetMedicine != null)
          r'endpointGetMedicine': endpointGetMedicine,
        r'pathChrome': pathChrome,
        if (ward != null) r'ward': ward,
        if (syncUserRoleUpdateAt != null)
          r'syncUserRoleUpdateAt': syncUserRoleUpdateAt,
        if (syncUserUpdateAt != null) r'syncUserUpdateAt': syncUserUpdateAt,
        if (syncSettingUpdateAt != null)
          r'syncSettingUpdateAt': syncSettingUpdateAt,
        if (syncMedicationRecordTypeUpdateAt != null)
          r'syncMedicationRecordTypeUpdateAt': syncMedicationRecordTypeUpdateAt,
        if (syncMedicineUpdateAt != null)
          r'syncMedicineUpdateAt': syncMedicineUpdateAt,
        if (syncLockerUpdateAt != null)
          r'syncLockerUpdateAt': syncLockerUpdateAt,
        if (syncMedicationRecordUpdateAt != null)
          r'syncMedicationRecordUpdateAt': syncMedicationRecordUpdateAt,
        if (syncActivityLogsUpdateAt != null)
          r'syncActivityLogsUpdateAt': syncActivityLogsUpdateAt,
        if (intervalToServer != null) r'intervalToServer': intervalToServer,
        if (customAttibute != null) r'customAttibute': customAttibute,
      });

  Input$RecordSettingItemInput._(this._$data);

  factory Input$RecordSettingItemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recordSettingID = data['recordSettingID'];
    result$data['recordSettingID'] = (l$recordSettingID as String);
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    final l$isAuthentication = data['isAuthentication'];
    result$data['isAuthentication'] = (l$isAuthentication as int);
    final l$isNotification = data['isNotification'];
    result$data['isNotification'] = (l$isNotification as int);
    final l$timeoutNotification = data['timeoutNotification'];
    result$data['timeoutNotification'] = (l$timeoutNotification as int);
    final l$amountLocker = data['amountLocker'];
    result$data['amountLocker'] = (l$amountLocker as int);
    final l$isDoubleCheck = data['isDoubleCheck'];
    result$data['isDoubleCheck'] = (l$isDoubleCheck as int);
    final l$isHnOrAn = data['isHnOrAn'];
    result$data['isHnOrAn'] = (l$isHnOrAn as String);
    if (data.containsKey('endpointGetHN')) {
      final l$endpointGetHN = data['endpointGetHN'];
      result$data['endpointGetHN'] = (l$endpointGetHN as String?);
    }
    if (data.containsKey('endpointGetMedicine')) {
      final l$endpointGetMedicine = data['endpointGetMedicine'];
      result$data['endpointGetMedicine'] = (l$endpointGetMedicine as String?);
    }
    final l$pathChrome = data['pathChrome'];
    result$data['pathChrome'] = (l$pathChrome as String);
    if (data.containsKey('ward')) {
      final l$ward = data['ward'];
      result$data['ward'] = (l$ward as String?);
    }
    if (data.containsKey('syncUserRoleUpdateAt')) {
      final l$syncUserRoleUpdateAt = data['syncUserRoleUpdateAt'];
      result$data['syncUserRoleUpdateAt'] = (l$syncUserRoleUpdateAt as String?);
    }
    if (data.containsKey('syncUserUpdateAt')) {
      final l$syncUserUpdateAt = data['syncUserUpdateAt'];
      result$data['syncUserUpdateAt'] = (l$syncUserUpdateAt as String?);
    }
    if (data.containsKey('syncSettingUpdateAt')) {
      final l$syncSettingUpdateAt = data['syncSettingUpdateAt'];
      result$data['syncSettingUpdateAt'] = (l$syncSettingUpdateAt as String?);
    }
    if (data.containsKey('syncMedicationRecordTypeUpdateAt')) {
      final l$syncMedicationRecordTypeUpdateAt =
          data['syncMedicationRecordTypeUpdateAt'];
      result$data['syncMedicationRecordTypeUpdateAt'] =
          (l$syncMedicationRecordTypeUpdateAt as String?);
    }
    if (data.containsKey('syncMedicineUpdateAt')) {
      final l$syncMedicineUpdateAt = data['syncMedicineUpdateAt'];
      result$data['syncMedicineUpdateAt'] = (l$syncMedicineUpdateAt as String?);
    }
    if (data.containsKey('syncLockerUpdateAt')) {
      final l$syncLockerUpdateAt = data['syncLockerUpdateAt'];
      result$data['syncLockerUpdateAt'] = (l$syncLockerUpdateAt as String?);
    }
    if (data.containsKey('syncMedicationRecordUpdateAt')) {
      final l$syncMedicationRecordUpdateAt =
          data['syncMedicationRecordUpdateAt'];
      result$data['syncMedicationRecordUpdateAt'] =
          (l$syncMedicationRecordUpdateAt as String?);
    }
    if (data.containsKey('syncActivityLogsUpdateAt')) {
      final l$syncActivityLogsUpdateAt = data['syncActivityLogsUpdateAt'];
      result$data['syncActivityLogsUpdateAt'] =
          (l$syncActivityLogsUpdateAt as String?);
    }
    if (data.containsKey('intervalToServer')) {
      final l$intervalToServer = data['intervalToServer'];
      result$data['intervalToServer'] = (l$intervalToServer as int?);
    }
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    return Input$RecordSettingItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recordSettingID => (_$data['recordSettingID'] as String);

  String get deviceID => (_$data['deviceID'] as String);

  int get isAuthentication => (_$data['isAuthentication'] as int);

  int get isNotification => (_$data['isNotification'] as int);

  int get timeoutNotification => (_$data['timeoutNotification'] as int);

  int get amountLocker => (_$data['amountLocker'] as int);

  int get isDoubleCheck => (_$data['isDoubleCheck'] as int);

  String get isHnOrAn => (_$data['isHnOrAn'] as String);

  String? get endpointGetHN => (_$data['endpointGetHN'] as String?);

  String? get endpointGetMedicine => (_$data['endpointGetMedicine'] as String?);

  String get pathChrome => (_$data['pathChrome'] as String);

  String? get ward => (_$data['ward'] as String?);

  String? get syncUserRoleUpdateAt =>
      (_$data['syncUserRoleUpdateAt'] as String?);

  String? get syncUserUpdateAt => (_$data['syncUserUpdateAt'] as String?);

  String? get syncSettingUpdateAt => (_$data['syncSettingUpdateAt'] as String?);

  String? get syncMedicationRecordTypeUpdateAt =>
      (_$data['syncMedicationRecordTypeUpdateAt'] as String?);

  String? get syncMedicineUpdateAt =>
      (_$data['syncMedicineUpdateAt'] as String?);

  String? get syncLockerUpdateAt => (_$data['syncLockerUpdateAt'] as String?);

  String? get syncMedicationRecordUpdateAt =>
      (_$data['syncMedicationRecordUpdateAt'] as String?);

  String? get syncActivityLogsUpdateAt =>
      (_$data['syncActivityLogsUpdateAt'] as String?);

  int? get intervalToServer => (_$data['intervalToServer'] as int?);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recordSettingID = recordSettingID;
    result$data['recordSettingID'] = l$recordSettingID;
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    final l$isAuthentication = isAuthentication;
    result$data['isAuthentication'] = l$isAuthentication;
    final l$isNotification = isNotification;
    result$data['isNotification'] = l$isNotification;
    final l$timeoutNotification = timeoutNotification;
    result$data['timeoutNotification'] = l$timeoutNotification;
    final l$amountLocker = amountLocker;
    result$data['amountLocker'] = l$amountLocker;
    final l$isDoubleCheck = isDoubleCheck;
    result$data['isDoubleCheck'] = l$isDoubleCheck;
    final l$isHnOrAn = isHnOrAn;
    result$data['isHnOrAn'] = l$isHnOrAn;
    if (_$data.containsKey('endpointGetHN')) {
      final l$endpointGetHN = endpointGetHN;
      result$data['endpointGetHN'] = l$endpointGetHN;
    }
    if (_$data.containsKey('endpointGetMedicine')) {
      final l$endpointGetMedicine = endpointGetMedicine;
      result$data['endpointGetMedicine'] = l$endpointGetMedicine;
    }
    final l$pathChrome = pathChrome;
    result$data['pathChrome'] = l$pathChrome;
    if (_$data.containsKey('ward')) {
      final l$ward = ward;
      result$data['ward'] = l$ward;
    }
    if (_$data.containsKey('syncUserRoleUpdateAt')) {
      final l$syncUserRoleUpdateAt = syncUserRoleUpdateAt;
      result$data['syncUserRoleUpdateAt'] = l$syncUserRoleUpdateAt;
    }
    if (_$data.containsKey('syncUserUpdateAt')) {
      final l$syncUserUpdateAt = syncUserUpdateAt;
      result$data['syncUserUpdateAt'] = l$syncUserUpdateAt;
    }
    if (_$data.containsKey('syncSettingUpdateAt')) {
      final l$syncSettingUpdateAt = syncSettingUpdateAt;
      result$data['syncSettingUpdateAt'] = l$syncSettingUpdateAt;
    }
    if (_$data.containsKey('syncMedicationRecordTypeUpdateAt')) {
      final l$syncMedicationRecordTypeUpdateAt =
          syncMedicationRecordTypeUpdateAt;
      result$data['syncMedicationRecordTypeUpdateAt'] =
          l$syncMedicationRecordTypeUpdateAt;
    }
    if (_$data.containsKey('syncMedicineUpdateAt')) {
      final l$syncMedicineUpdateAt = syncMedicineUpdateAt;
      result$data['syncMedicineUpdateAt'] = l$syncMedicineUpdateAt;
    }
    if (_$data.containsKey('syncLockerUpdateAt')) {
      final l$syncLockerUpdateAt = syncLockerUpdateAt;
      result$data['syncLockerUpdateAt'] = l$syncLockerUpdateAt;
    }
    if (_$data.containsKey('syncMedicationRecordUpdateAt')) {
      final l$syncMedicationRecordUpdateAt = syncMedicationRecordUpdateAt;
      result$data['syncMedicationRecordUpdateAt'] =
          l$syncMedicationRecordUpdateAt;
    }
    if (_$data.containsKey('syncActivityLogsUpdateAt')) {
      final l$syncActivityLogsUpdateAt = syncActivityLogsUpdateAt;
      result$data['syncActivityLogsUpdateAt'] = l$syncActivityLogsUpdateAt;
    }
    if (_$data.containsKey('intervalToServer')) {
      final l$intervalToServer = intervalToServer;
      result$data['intervalToServer'] = l$intervalToServer;
    }
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    return result$data;
  }

  CopyWith$Input$RecordSettingItemInput<Input$RecordSettingItemInput>
      get copyWith => CopyWith$Input$RecordSettingItemInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordSettingItemInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordSettingID = recordSettingID;
    final lOther$recordSettingID = other.recordSettingID;
    if (l$recordSettingID != lOther$recordSettingID) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$isAuthentication = isAuthentication;
    final lOther$isAuthentication = other.isAuthentication;
    if (l$isAuthentication != lOther$isAuthentication) {
      return false;
    }
    final l$isNotification = isNotification;
    final lOther$isNotification = other.isNotification;
    if (l$isNotification != lOther$isNotification) {
      return false;
    }
    final l$timeoutNotification = timeoutNotification;
    final lOther$timeoutNotification = other.timeoutNotification;
    if (l$timeoutNotification != lOther$timeoutNotification) {
      return false;
    }
    final l$amountLocker = amountLocker;
    final lOther$amountLocker = other.amountLocker;
    if (l$amountLocker != lOther$amountLocker) {
      return false;
    }
    final l$isDoubleCheck = isDoubleCheck;
    final lOther$isDoubleCheck = other.isDoubleCheck;
    if (l$isDoubleCheck != lOther$isDoubleCheck) {
      return false;
    }
    final l$isHnOrAn = isHnOrAn;
    final lOther$isHnOrAn = other.isHnOrAn;
    if (l$isHnOrAn != lOther$isHnOrAn) {
      return false;
    }
    final l$endpointGetHN = endpointGetHN;
    final lOther$endpointGetHN = other.endpointGetHN;
    if (_$data.containsKey('endpointGetHN') !=
        other._$data.containsKey('endpointGetHN')) {
      return false;
    }
    if (l$endpointGetHN != lOther$endpointGetHN) {
      return false;
    }
    final l$endpointGetMedicine = endpointGetMedicine;
    final lOther$endpointGetMedicine = other.endpointGetMedicine;
    if (_$data.containsKey('endpointGetMedicine') !=
        other._$data.containsKey('endpointGetMedicine')) {
      return false;
    }
    if (l$endpointGetMedicine != lOther$endpointGetMedicine) {
      return false;
    }
    final l$pathChrome = pathChrome;
    final lOther$pathChrome = other.pathChrome;
    if (l$pathChrome != lOther$pathChrome) {
      return false;
    }
    final l$ward = ward;
    final lOther$ward = other.ward;
    if (_$data.containsKey('ward') != other._$data.containsKey('ward')) {
      return false;
    }
    if (l$ward != lOther$ward) {
      return false;
    }
    final l$syncUserRoleUpdateAt = syncUserRoleUpdateAt;
    final lOther$syncUserRoleUpdateAt = other.syncUserRoleUpdateAt;
    if (_$data.containsKey('syncUserRoleUpdateAt') !=
        other._$data.containsKey('syncUserRoleUpdateAt')) {
      return false;
    }
    if (l$syncUserRoleUpdateAt != lOther$syncUserRoleUpdateAt) {
      return false;
    }
    final l$syncUserUpdateAt = syncUserUpdateAt;
    final lOther$syncUserUpdateAt = other.syncUserUpdateAt;
    if (_$data.containsKey('syncUserUpdateAt') !=
        other._$data.containsKey('syncUserUpdateAt')) {
      return false;
    }
    if (l$syncUserUpdateAt != lOther$syncUserUpdateAt) {
      return false;
    }
    final l$syncSettingUpdateAt = syncSettingUpdateAt;
    final lOther$syncSettingUpdateAt = other.syncSettingUpdateAt;
    if (_$data.containsKey('syncSettingUpdateAt') !=
        other._$data.containsKey('syncSettingUpdateAt')) {
      return false;
    }
    if (l$syncSettingUpdateAt != lOther$syncSettingUpdateAt) {
      return false;
    }
    final l$syncMedicationRecordTypeUpdateAt = syncMedicationRecordTypeUpdateAt;
    final lOther$syncMedicationRecordTypeUpdateAt =
        other.syncMedicationRecordTypeUpdateAt;
    if (_$data.containsKey('syncMedicationRecordTypeUpdateAt') !=
        other._$data.containsKey('syncMedicationRecordTypeUpdateAt')) {
      return false;
    }
    if (l$syncMedicationRecordTypeUpdateAt !=
        lOther$syncMedicationRecordTypeUpdateAt) {
      return false;
    }
    final l$syncMedicineUpdateAt = syncMedicineUpdateAt;
    final lOther$syncMedicineUpdateAt = other.syncMedicineUpdateAt;
    if (_$data.containsKey('syncMedicineUpdateAt') !=
        other._$data.containsKey('syncMedicineUpdateAt')) {
      return false;
    }
    if (l$syncMedicineUpdateAt != lOther$syncMedicineUpdateAt) {
      return false;
    }
    final l$syncLockerUpdateAt = syncLockerUpdateAt;
    final lOther$syncLockerUpdateAt = other.syncLockerUpdateAt;
    if (_$data.containsKey('syncLockerUpdateAt') !=
        other._$data.containsKey('syncLockerUpdateAt')) {
      return false;
    }
    if (l$syncLockerUpdateAt != lOther$syncLockerUpdateAt) {
      return false;
    }
    final l$syncMedicationRecordUpdateAt = syncMedicationRecordUpdateAt;
    final lOther$syncMedicationRecordUpdateAt =
        other.syncMedicationRecordUpdateAt;
    if (_$data.containsKey('syncMedicationRecordUpdateAt') !=
        other._$data.containsKey('syncMedicationRecordUpdateAt')) {
      return false;
    }
    if (l$syncMedicationRecordUpdateAt != lOther$syncMedicationRecordUpdateAt) {
      return false;
    }
    final l$syncActivityLogsUpdateAt = syncActivityLogsUpdateAt;
    final lOther$syncActivityLogsUpdateAt = other.syncActivityLogsUpdateAt;
    if (_$data.containsKey('syncActivityLogsUpdateAt') !=
        other._$data.containsKey('syncActivityLogsUpdateAt')) {
      return false;
    }
    if (l$syncActivityLogsUpdateAt != lOther$syncActivityLogsUpdateAt) {
      return false;
    }
    final l$intervalToServer = intervalToServer;
    final lOther$intervalToServer = other.intervalToServer;
    if (_$data.containsKey('intervalToServer') !=
        other._$data.containsKey('intervalToServer')) {
      return false;
    }
    if (l$intervalToServer != lOther$intervalToServer) {
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
    final l$recordSettingID = recordSettingID;
    final l$deviceID = deviceID;
    final l$isAuthentication = isAuthentication;
    final l$isNotification = isNotification;
    final l$timeoutNotification = timeoutNotification;
    final l$amountLocker = amountLocker;
    final l$isDoubleCheck = isDoubleCheck;
    final l$isHnOrAn = isHnOrAn;
    final l$endpointGetHN = endpointGetHN;
    final l$endpointGetMedicine = endpointGetMedicine;
    final l$pathChrome = pathChrome;
    final l$ward = ward;
    final l$syncUserRoleUpdateAt = syncUserRoleUpdateAt;
    final l$syncUserUpdateAt = syncUserUpdateAt;
    final l$syncSettingUpdateAt = syncSettingUpdateAt;
    final l$syncMedicationRecordTypeUpdateAt = syncMedicationRecordTypeUpdateAt;
    final l$syncMedicineUpdateAt = syncMedicineUpdateAt;
    final l$syncLockerUpdateAt = syncLockerUpdateAt;
    final l$syncMedicationRecordUpdateAt = syncMedicationRecordUpdateAt;
    final l$syncActivityLogsUpdateAt = syncActivityLogsUpdateAt;
    final l$intervalToServer = intervalToServer;
    final l$customAttibute = customAttibute;
    return Object.hashAll([
      l$recordSettingID,
      l$deviceID,
      l$isAuthentication,
      l$isNotification,
      l$timeoutNotification,
      l$amountLocker,
      l$isDoubleCheck,
      l$isHnOrAn,
      _$data.containsKey('endpointGetHN') ? l$endpointGetHN : const {},
      _$data.containsKey('endpointGetMedicine')
          ? l$endpointGetMedicine
          : const {},
      l$pathChrome,
      _$data.containsKey('ward') ? l$ward : const {},
      _$data.containsKey('syncUserRoleUpdateAt')
          ? l$syncUserRoleUpdateAt
          : const {},
      _$data.containsKey('syncUserUpdateAt') ? l$syncUserUpdateAt : const {},
      _$data.containsKey('syncSettingUpdateAt')
          ? l$syncSettingUpdateAt
          : const {},
      _$data.containsKey('syncMedicationRecordTypeUpdateAt')
          ? l$syncMedicationRecordTypeUpdateAt
          : const {},
      _$data.containsKey('syncMedicineUpdateAt')
          ? l$syncMedicineUpdateAt
          : const {},
      _$data.containsKey('syncLockerUpdateAt')
          ? l$syncLockerUpdateAt
          : const {},
      _$data.containsKey('syncMedicationRecordUpdateAt')
          ? l$syncMedicationRecordUpdateAt
          : const {},
      _$data.containsKey('syncActivityLogsUpdateAt')
          ? l$syncActivityLogsUpdateAt
          : const {},
      _$data.containsKey('intervalToServer') ? l$intervalToServer : const {},
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordSettingItemInput<TRes> {
  factory CopyWith$Input$RecordSettingItemInput(
    Input$RecordSettingItemInput instance,
    TRes Function(Input$RecordSettingItemInput) then,
  ) = _CopyWithImpl$Input$RecordSettingItemInput;

  factory CopyWith$Input$RecordSettingItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordSettingItemInput;

  TRes call({
    String? recordSettingID,
    String? deviceID,
    int? isAuthentication,
    int? isNotification,
    int? timeoutNotification,
    int? amountLocker,
    int? isDoubleCheck,
    String? isHnOrAn,
    String? endpointGetHN,
    String? endpointGetMedicine,
    String? pathChrome,
    String? ward,
    String? syncUserRoleUpdateAt,
    String? syncUserUpdateAt,
    String? syncSettingUpdateAt,
    String? syncMedicationRecordTypeUpdateAt,
    String? syncMedicineUpdateAt,
    String? syncLockerUpdateAt,
    String? syncMedicationRecordUpdateAt,
    String? syncActivityLogsUpdateAt,
    int? intervalToServer,
    String? customAttibute,
  });
}

class _CopyWithImpl$Input$RecordSettingItemInput<TRes>
    implements CopyWith$Input$RecordSettingItemInput<TRes> {
  _CopyWithImpl$Input$RecordSettingItemInput(
    this._instance,
    this._then,
  );

  final Input$RecordSettingItemInput _instance;

  final TRes Function(Input$RecordSettingItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordSettingID = _undefined,
    Object? deviceID = _undefined,
    Object? isAuthentication = _undefined,
    Object? isNotification = _undefined,
    Object? timeoutNotification = _undefined,
    Object? amountLocker = _undefined,
    Object? isDoubleCheck = _undefined,
    Object? isHnOrAn = _undefined,
    Object? endpointGetHN = _undefined,
    Object? endpointGetMedicine = _undefined,
    Object? pathChrome = _undefined,
    Object? ward = _undefined,
    Object? syncUserRoleUpdateAt = _undefined,
    Object? syncUserUpdateAt = _undefined,
    Object? syncSettingUpdateAt = _undefined,
    Object? syncMedicationRecordTypeUpdateAt = _undefined,
    Object? syncMedicineUpdateAt = _undefined,
    Object? syncLockerUpdateAt = _undefined,
    Object? syncMedicationRecordUpdateAt = _undefined,
    Object? syncActivityLogsUpdateAt = _undefined,
    Object? intervalToServer = _undefined,
    Object? customAttibute = _undefined,
  }) =>
      _then(Input$RecordSettingItemInput._({
        ..._instance._$data,
        if (recordSettingID != _undefined && recordSettingID != null)
          'recordSettingID': (recordSettingID as String),
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (isAuthentication != _undefined && isAuthentication != null)
          'isAuthentication': (isAuthentication as int),
        if (isNotification != _undefined && isNotification != null)
          'isNotification': (isNotification as int),
        if (timeoutNotification != _undefined && timeoutNotification != null)
          'timeoutNotification': (timeoutNotification as int),
        if (amountLocker != _undefined && amountLocker != null)
          'amountLocker': (amountLocker as int),
        if (isDoubleCheck != _undefined && isDoubleCheck != null)
          'isDoubleCheck': (isDoubleCheck as int),
        if (isHnOrAn != _undefined && isHnOrAn != null)
          'isHnOrAn': (isHnOrAn as String),
        if (endpointGetHN != _undefined)
          'endpointGetHN': (endpointGetHN as String?),
        if (endpointGetMedicine != _undefined)
          'endpointGetMedicine': (endpointGetMedicine as String?),
        if (pathChrome != _undefined && pathChrome != null)
          'pathChrome': (pathChrome as String),
        if (ward != _undefined) 'ward': (ward as String?),
        if (syncUserRoleUpdateAt != _undefined)
          'syncUserRoleUpdateAt': (syncUserRoleUpdateAt as String?),
        if (syncUserUpdateAt != _undefined)
          'syncUserUpdateAt': (syncUserUpdateAt as String?),
        if (syncSettingUpdateAt != _undefined)
          'syncSettingUpdateAt': (syncSettingUpdateAt as String?),
        if (syncMedicationRecordTypeUpdateAt != _undefined)
          'syncMedicationRecordTypeUpdateAt':
              (syncMedicationRecordTypeUpdateAt as String?),
        if (syncMedicineUpdateAt != _undefined)
          'syncMedicineUpdateAt': (syncMedicineUpdateAt as String?),
        if (syncLockerUpdateAt != _undefined)
          'syncLockerUpdateAt': (syncLockerUpdateAt as String?),
        if (syncMedicationRecordUpdateAt != _undefined)
          'syncMedicationRecordUpdateAt':
              (syncMedicationRecordUpdateAt as String?),
        if (syncActivityLogsUpdateAt != _undefined)
          'syncActivityLogsUpdateAt': (syncActivityLogsUpdateAt as String?),
        if (intervalToServer != _undefined)
          'intervalToServer': (intervalToServer as int?),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
      }));
}

class _CopyWithStubImpl$Input$RecordSettingItemInput<TRes>
    implements CopyWith$Input$RecordSettingItemInput<TRes> {
  _CopyWithStubImpl$Input$RecordSettingItemInput(this._res);

  TRes _res;

  call({
    String? recordSettingID,
    String? deviceID,
    int? isAuthentication,
    int? isNotification,
    int? timeoutNotification,
    int? amountLocker,
    int? isDoubleCheck,
    String? isHnOrAn,
    String? endpointGetHN,
    String? endpointGetMedicine,
    String? pathChrome,
    String? ward,
    String? syncUserRoleUpdateAt,
    String? syncUserUpdateAt,
    String? syncSettingUpdateAt,
    String? syncMedicationRecordTypeUpdateAt,
    String? syncMedicineUpdateAt,
    String? syncLockerUpdateAt,
    String? syncMedicationRecordUpdateAt,
    String? syncActivityLogsUpdateAt,
    int? intervalToServer,
    String? customAttibute,
  }) =>
      _res;
}

class Input$RecordUserInput {
  factory Input$RecordUserInput({
    required String deviceID,
    List<Input$RecordUserItemInput?>? items,
  }) =>
      Input$RecordUserInput._({
        r'deviceID': deviceID,
        if (items != null) r'items': items,
      });

  Input$RecordUserInput._(this._$data);

  factory Input$RecordUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    if (data.containsKey('items')) {
      final l$items = data['items'];
      result$data['items'] = (l$items as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$RecordUserItemInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$RecordUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  List<Input$RecordUserItemInput?>? get items =>
      (_$data['items'] as List<Input$RecordUserItemInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    if (_$data.containsKey('items')) {
      final l$items = items;
      result$data['items'] = l$items?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$RecordUserInput<Input$RecordUserInput> get copyWith =>
      CopyWith$Input$RecordUserInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordUserInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (_$data.containsKey('items') != other._$data.containsKey('items')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$items = items;
    return Object.hashAll([
      l$deviceID,
      _$data.containsKey('items')
          ? l$items == null
              ? null
              : Object.hashAll(l$items.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$RecordUserInput<TRes> {
  factory CopyWith$Input$RecordUserInput(
    Input$RecordUserInput instance,
    TRes Function(Input$RecordUserInput) then,
  ) = _CopyWithImpl$Input$RecordUserInput;

  factory CopyWith$Input$RecordUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordUserInput;

  TRes call({
    String? deviceID,
    List<Input$RecordUserItemInput?>? items,
  });
  TRes items(
      Iterable<Input$RecordUserItemInput?>? Function(
              Iterable<
                  CopyWith$Input$RecordUserItemInput<
                      Input$RecordUserItemInput>?>?)
          _fn);
}

class _CopyWithImpl$Input$RecordUserInput<TRes>
    implements CopyWith$Input$RecordUserInput<TRes> {
  _CopyWithImpl$Input$RecordUserInput(
    this._instance,
    this._then,
  );

  final Input$RecordUserInput _instance;

  final TRes Function(Input$RecordUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? items = _undefined,
  }) =>
      _then(Input$RecordUserInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (items != _undefined)
          'items': (items as List<Input$RecordUserItemInput?>?),
      }));

  TRes items(
          Iterable<Input$RecordUserItemInput?>? Function(
                  Iterable<
                      CopyWith$Input$RecordUserItemInput<
                          Input$RecordUserItemInput>?>?)
              _fn) =>
      call(
          items: _fn(_instance.items?.map((e) => e == null
              ? null
              : CopyWith$Input$RecordUserItemInput(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Input$RecordUserInput<TRes>
    implements CopyWith$Input$RecordUserInput<TRes> {
  _CopyWithStubImpl$Input$RecordUserInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    List<Input$RecordUserItemInput?>? items,
  }) =>
      _res;

  items(_fn) => _res;
}

class Input$RecordUserItemInput {
  factory Input$RecordUserItemInput({
    required String recordUserID,
    required String username,
    String? passwordHash,
    required String fullname,
    required String userRoleName,
    required int isActive,
    String? customAttibute,
    required String createdAt,
    required String updatedAt,
  }) =>
      Input$RecordUserItemInput._({
        r'recordUserID': recordUserID,
        r'username': username,
        if (passwordHash != null) r'passwordHash': passwordHash,
        r'fullname': fullname,
        r'userRoleName': userRoleName,
        r'isActive': isActive,
        if (customAttibute != null) r'customAttibute': customAttibute,
        r'createdAt': createdAt,
        r'updatedAt': updatedAt,
      });

  Input$RecordUserItemInput._(this._$data);

  factory Input$RecordUserItemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recordUserID = data['recordUserID'];
    result$data['recordUserID'] = (l$recordUserID as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    if (data.containsKey('passwordHash')) {
      final l$passwordHash = data['passwordHash'];
      result$data['passwordHash'] = (l$passwordHash as String?);
    }
    final l$fullname = data['fullname'];
    result$data['fullname'] = (l$fullname as String);
    final l$userRoleName = data['userRoleName'];
    result$data['userRoleName'] = (l$userRoleName as String);
    final l$isActive = data['isActive'];
    result$data['isActive'] = (l$isActive as int);
    if (data.containsKey('customAttibute')) {
      final l$customAttibute = data['customAttibute'];
      result$data['customAttibute'] = (l$customAttibute as String?);
    }
    final l$createdAt = data['createdAt'];
    result$data['createdAt'] = (l$createdAt as String);
    final l$updatedAt = data['updatedAt'];
    result$data['updatedAt'] = (l$updatedAt as String);
    return Input$RecordUserItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recordUserID => (_$data['recordUserID'] as String);

  String get username => (_$data['username'] as String);

  String? get passwordHash => (_$data['passwordHash'] as String?);

  String get fullname => (_$data['fullname'] as String);

  String get userRoleName => (_$data['userRoleName'] as String);

  int get isActive => (_$data['isActive'] as int);

  String? get customAttibute => (_$data['customAttibute'] as String?);

  String get createdAt => (_$data['createdAt'] as String);

  String get updatedAt => (_$data['updatedAt'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recordUserID = recordUserID;
    result$data['recordUserID'] = l$recordUserID;
    final l$username = username;
    result$data['username'] = l$username;
    if (_$data.containsKey('passwordHash')) {
      final l$passwordHash = passwordHash;
      result$data['passwordHash'] = l$passwordHash;
    }
    final l$fullname = fullname;
    result$data['fullname'] = l$fullname;
    final l$userRoleName = userRoleName;
    result$data['userRoleName'] = l$userRoleName;
    final l$isActive = isActive;
    result$data['isActive'] = l$isActive;
    if (_$data.containsKey('customAttibute')) {
      final l$customAttibute = customAttibute;
      result$data['customAttibute'] = l$customAttibute;
    }
    final l$createdAt = createdAt;
    result$data['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    result$data['updatedAt'] = l$updatedAt;
    return result$data;
  }

  CopyWith$Input$RecordUserItemInput<Input$RecordUserItemInput> get copyWith =>
      CopyWith$Input$RecordUserItemInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RecordUserItemInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordUserID = recordUserID;
    final lOther$recordUserID = other.recordUserID;
    if (l$recordUserID != lOther$recordUserID) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$passwordHash = passwordHash;
    final lOther$passwordHash = other.passwordHash;
    if (_$data.containsKey('passwordHash') !=
        other._$data.containsKey('passwordHash')) {
      return false;
    }
    if (l$passwordHash != lOther$passwordHash) {
      return false;
    }
    final l$fullname = fullname;
    final lOther$fullname = other.fullname;
    if (l$fullname != lOther$fullname) {
      return false;
    }
    final l$userRoleName = userRoleName;
    final lOther$userRoleName = other.userRoleName;
    if (l$userRoleName != lOther$userRoleName) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordUserID = recordUserID;
    final l$username = username;
    final l$passwordHash = passwordHash;
    final l$fullname = fullname;
    final l$userRoleName = userRoleName;
    final l$isActive = isActive;
    final l$customAttibute = customAttibute;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      l$recordUserID,
      l$username,
      _$data.containsKey('passwordHash') ? l$passwordHash : const {},
      l$fullname,
      l$userRoleName,
      l$isActive,
      _$data.containsKey('customAttibute') ? l$customAttibute : const {},
      l$createdAt,
      l$updatedAt,
    ]);
  }
}

abstract class CopyWith$Input$RecordUserItemInput<TRes> {
  factory CopyWith$Input$RecordUserItemInput(
    Input$RecordUserItemInput instance,
    TRes Function(Input$RecordUserItemInput) then,
  ) = _CopyWithImpl$Input$RecordUserItemInput;

  factory CopyWith$Input$RecordUserItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RecordUserItemInput;

  TRes call({
    String? recordUserID,
    String? username,
    String? passwordHash,
    String? fullname,
    String? userRoleName,
    int? isActive,
    String? customAttibute,
    String? createdAt,
    String? updatedAt,
  });
}

class _CopyWithImpl$Input$RecordUserItemInput<TRes>
    implements CopyWith$Input$RecordUserItemInput<TRes> {
  _CopyWithImpl$Input$RecordUserItemInput(
    this._instance,
    this._then,
  );

  final Input$RecordUserItemInput _instance;

  final TRes Function(Input$RecordUserItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordUserID = _undefined,
    Object? username = _undefined,
    Object? passwordHash = _undefined,
    Object? fullname = _undefined,
    Object? userRoleName = _undefined,
    Object? isActive = _undefined,
    Object? customAttibute = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$RecordUserItemInput._({
        ..._instance._$data,
        if (recordUserID != _undefined && recordUserID != null)
          'recordUserID': (recordUserID as String),
        if (username != _undefined && username != null)
          'username': (username as String),
        if (passwordHash != _undefined)
          'passwordHash': (passwordHash as String?),
        if (fullname != _undefined && fullname != null)
          'fullname': (fullname as String),
        if (userRoleName != _undefined && userRoleName != null)
          'userRoleName': (userRoleName as String),
        if (isActive != _undefined && isActive != null)
          'isActive': (isActive as int),
        if (customAttibute != _undefined)
          'customAttibute': (customAttibute as String?),
        if (createdAt != _undefined && createdAt != null)
          'createdAt': (createdAt as String),
        if (updatedAt != _undefined && updatedAt != null)
          'updatedAt': (updatedAt as String),
      }));
}

class _CopyWithStubImpl$Input$RecordUserItemInput<TRes>
    implements CopyWith$Input$RecordUserItemInput<TRes> {
  _CopyWithStubImpl$Input$RecordUserItemInput(this._res);

  TRes _res;

  call({
    String? recordUserID,
    String? username,
    String? passwordHash,
    String? fullname,
    String? userRoleName,
    int? isActive,
    String? customAttibute,
    String? createdAt,
    String? updatedAt,
  }) =>
      _res;
}

class Input$RefreshTokenInput {
  factory Input$RefreshTokenInput({required String refreshToken}) =>
      Input$RefreshTokenInput._({
        r'refreshToken': refreshToken,
      });

  Input$RefreshTokenInput._(this._$data);

  factory Input$RefreshTokenInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$refreshToken = data['refreshToken'];
    result$data['refreshToken'] = (l$refreshToken as String);
    return Input$RefreshTokenInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get refreshToken => (_$data['refreshToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    result$data['refreshToken'] = l$refreshToken;
    return result$data;
  }

  CopyWith$Input$RefreshTokenInput<Input$RefreshTokenInput> get copyWith =>
      CopyWith$Input$RefreshTokenInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RefreshTokenInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    return Object.hashAll([l$refreshToken]);
  }
}

abstract class CopyWith$Input$RefreshTokenInput<TRes> {
  factory CopyWith$Input$RefreshTokenInput(
    Input$RefreshTokenInput instance,
    TRes Function(Input$RefreshTokenInput) then,
  ) = _CopyWithImpl$Input$RefreshTokenInput;

  factory CopyWith$Input$RefreshTokenInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RefreshTokenInput;

  TRes call({String? refreshToken});
}

class _CopyWithImpl$Input$RefreshTokenInput<TRes>
    implements CopyWith$Input$RefreshTokenInput<TRes> {
  _CopyWithImpl$Input$RefreshTokenInput(
    this._instance,
    this._then,
  );

  final Input$RefreshTokenInput _instance;

  final TRes Function(Input$RefreshTokenInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refreshToken = _undefined}) =>
      _then(Input$RefreshTokenInput._({
        ..._instance._$data,
        if (refreshToken != _undefined && refreshToken != null)
          'refreshToken': (refreshToken as String),
      }));
}

class _CopyWithStubImpl$Input$RefreshTokenInput<TRes>
    implements CopyWith$Input$RefreshTokenInput<TRes> {
  _CopyWithStubImpl$Input$RefreshTokenInput(this._res);

  TRes _res;

  call({String? refreshToken}) => _res;
}

class Input$SendNotiLineOAInput {
  factory Input$SendNotiLineOAInput({
    required String deviceID,
    required double temp,
    required double humidity,
  }) =>
      Input$SendNotiLineOAInput._({
        r'deviceID': deviceID,
        r'temp': temp,
        r'humidity': humidity,
      });

  Input$SendNotiLineOAInput._(this._$data);

  factory Input$SendNotiLineOAInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deviceID = data['deviceID'];
    result$data['deviceID'] = (l$deviceID as String);
    final l$temp = data['temp'];
    result$data['temp'] = (l$temp as num).toDouble();
    final l$humidity = data['humidity'];
    result$data['humidity'] = (l$humidity as num).toDouble();
    return Input$SendNotiLineOAInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deviceID => (_$data['deviceID'] as String);

  double get temp => (_$data['temp'] as double);

  double get humidity => (_$data['humidity'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deviceID = deviceID;
    result$data['deviceID'] = l$deviceID;
    final l$temp = temp;
    result$data['temp'] = l$temp;
    final l$humidity = humidity;
    result$data['humidity'] = l$humidity;
    return result$data;
  }

  CopyWith$Input$SendNotiLineOAInput<Input$SendNotiLineOAInput> get copyWith =>
      CopyWith$Input$SendNotiLineOAInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SendNotiLineOAInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deviceID = deviceID;
    final lOther$deviceID = other.deviceID;
    if (l$deviceID != lOther$deviceID) {
      return false;
    }
    final l$temp = temp;
    final lOther$temp = other.temp;
    if (l$temp != lOther$temp) {
      return false;
    }
    final l$humidity = humidity;
    final lOther$humidity = other.humidity;
    if (l$humidity != lOther$humidity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deviceID = deviceID;
    final l$temp = temp;
    final l$humidity = humidity;
    return Object.hashAll([
      l$deviceID,
      l$temp,
      l$humidity,
    ]);
  }
}

abstract class CopyWith$Input$SendNotiLineOAInput<TRes> {
  factory CopyWith$Input$SendNotiLineOAInput(
    Input$SendNotiLineOAInput instance,
    TRes Function(Input$SendNotiLineOAInput) then,
  ) = _CopyWithImpl$Input$SendNotiLineOAInput;

  factory CopyWith$Input$SendNotiLineOAInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SendNotiLineOAInput;

  TRes call({
    String? deviceID,
    double? temp,
    double? humidity,
  });
}

class _CopyWithImpl$Input$SendNotiLineOAInput<TRes>
    implements CopyWith$Input$SendNotiLineOAInput<TRes> {
  _CopyWithImpl$Input$SendNotiLineOAInput(
    this._instance,
    this._then,
  );

  final Input$SendNotiLineOAInput _instance;

  final TRes Function(Input$SendNotiLineOAInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deviceID = _undefined,
    Object? temp = _undefined,
    Object? humidity = _undefined,
  }) =>
      _then(Input$SendNotiLineOAInput._({
        ..._instance._$data,
        if (deviceID != _undefined && deviceID != null)
          'deviceID': (deviceID as String),
        if (temp != _undefined && temp != null) 'temp': (temp as double),
        if (humidity != _undefined && humidity != null)
          'humidity': (humidity as double),
      }));
}

class _CopyWithStubImpl$Input$SendNotiLineOAInput<TRes>
    implements CopyWith$Input$SendNotiLineOAInput<TRes> {
  _CopyWithStubImpl$Input$SendNotiLineOAInput(this._res);

  TRes _res;

  call({
    String? deviceID,
    double? temp,
    double? humidity,
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
  'LoginPayload': {
    'Login',
    'Error',
  },
  'RefreshTokenPayload': {
    'RefreshToken',
    'Error',
  },
};
