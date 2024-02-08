// Mocks generated by Mockito 5.4.4 from annotations
// in waterbus/test/features/meeting/data/repositories/meeting_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Dart imports:
import 'dart:async' as _i4;

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart' as _i11;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;
import 'package:waterbus_sdk/models/index.dart' as _i2;

// Project imports:
import 'package:waterbus/features/meeting/domain/entities/meeting.dart' as _i5;

import 'package:waterbus/features/meeting/data/datasources/call_settings_datasource.dart'
    as _i8;
import 'package:waterbus/features/meeting/data/datasources/meeting_local_datasource.dart'
    as _i7;
import 'package:waterbus/features/meeting/data/datasources/meeting_remote_datasource.dart'
    as _i3;
import 'package:waterbus/features/meeting/domain/entities/participant.dart'
    as _i6;
import 'package:waterbus/features/profile/presentation/bloc/user_bloc.dart'
    as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeCallSetting_0 extends _i1.SmartFake implements _i2.CallSetting {
  _FakeCallSetting_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MeetingRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMeetingRemoteDataSource extends _i1.Mock
    implements _i3.MeetingRemoteDataSource {
  @override
  _i4.Future<_i5.Meeting?> createMeeting({
    required _i5.Meeting? meeting,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createMeeting,
          [],
          {
            #meeting: meeting,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i5.Meeting?>.value(),
        returnValueForMissingStub: _i4.Future<_i5.Meeting?>.value(),
      ) as _i4.Future<_i5.Meeting?>);

  @override
  _i4.Future<bool> updateMeeting({
    required _i5.Meeting? meeting,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateMeeting,
          [],
          {
            #meeting: meeting,
            #password: password,
          },
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<_i5.Meeting?> joinMeeting({
    required _i5.Meeting? meeting,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #joinMeeting,
          [],
          {
            #meeting: meeting,
            #password: password,
          },
        ),
        returnValue: _i4.Future<_i5.Meeting?>.value(),
        returnValueForMissingStub: _i4.Future<_i5.Meeting?>.value(),
      ) as _i4.Future<_i5.Meeting?>);

  @override
  _i4.Future<_i5.Meeting?> getInfoMeeting(int? code) => (super.noSuchMethod(
        Invocation.method(
          #getInfoMeeting,
          [code],
        ),
        returnValue: _i4.Future<_i5.Meeting?>.value(),
        returnValueForMissingStub: _i4.Future<_i5.Meeting?>.value(),
      ) as _i4.Future<_i5.Meeting?>);

  @override
  _i4.Future<_i5.Meeting?> leaveMeeting({
    required int? code,
    required int? participantId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #leaveMeeting,
          [],
          {
            #code: code,
            #participantId: participantId,
          },
        ),
        returnValue: _i4.Future<_i5.Meeting?>.value(),
        returnValueForMissingStub: _i4.Future<_i5.Meeting?>.value(),
      ) as _i4.Future<_i5.Meeting?>);

  @override
  _i4.Future<_i6.Participant?> getParticipant(int? participantId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getParticipant,
          [participantId],
        ),
        returnValue: _i4.Future<_i6.Participant?>.value(),
        returnValueForMissingStub: _i4.Future<_i6.Participant?>.value(),
      ) as _i4.Future<_i6.Participant?>);
}

/// A class which mocks [MeetingLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMeetingLocalDataSource extends _i1.Mock
    implements _i7.MeetingLocalDataSource {
  @override
  List<_i5.Meeting> get meetings => (super.noSuchMethod(
        Invocation.getter(#meetings),
        returnValue: <_i5.Meeting>[],
        returnValueForMissingStub: <_i5.Meeting>[],
      ) as List<_i5.Meeting>);

  @override
  void insertOrUpdate(_i5.Meeting? meeting) => super.noSuchMethod(
        Invocation.method(
          #insertOrUpdate,
          [meeting],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void update(_i5.Meeting? meeting) => super.noSuchMethod(
        Invocation.method(
          #update,
          [meeting],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeMeeting(int? code) => super.noSuchMethod(
        Invocation.method(
          #removeMeeting,
          [code],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeAll() => super.noSuchMethod(
        Invocation.method(
          #removeAll,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [CallSettingsLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockCallSettingsLocalDataSource extends _i1.Mock
    implements _i8.CallSettingsLocalDataSource {
  @override
  void saveSettings(_i2.CallSetting? setting) => super.noSuchMethod(
        Invocation.method(
          #saveSettings,
          [setting],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.CallSetting getSettings() => (super.noSuchMethod(
        Invocation.method(
          #getSettings,
          [],
        ),
        returnValue: _FakeCallSetting_0(
          this,
          Invocation.method(
            #getSettings,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeCallSetting_0(
          this,
          Invocation.method(
            #getSettings,
            [],
          ),
        ),
      ) as _i2.CallSetting);
}

/// A class which mocks [UserBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserBloc extends _i1.Mock implements _i9.UserBloc {
  @override
  _i9.UserState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i10.dummyValue<_i9.UserState>(
          this,
          Invocation.getter(#state),
        ),
        returnValueForMissingStub: _i10.dummyValue<_i9.UserState>(
          this,
          Invocation.getter(#state),
        ),
      ) as _i9.UserState);

  @override
  _i4.Stream<_i9.UserState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i4.Stream<_i9.UserState>.empty(),
        returnValueForMissingStub: _i4.Stream<_i9.UserState>.empty(),
      ) as _i4.Stream<_i9.UserState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void add(_i9.UserEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i9.UserEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i9.UserState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i9.UserEvent>(
    _i11.EventHandler<E, _i9.UserState>? handler, {
    _i11.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(
          _i11.Transition<_i9.UserEvent, _i9.UserState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  void onChange(_i11.Change<_i9.UserState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
