// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) changeTaskStatus,
    required TResult Function(int id) deleteTask,
    required TResult Function(bool? sort) changeSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? changeTaskStatus,
    TResult? Function(int id)? deleteTask,
    TResult? Function(bool? sort)? changeSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? changeTaskStatus,
    TResult Function(int id)? deleteTask,
    TResult Function(bool? sort)? changeSort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ChangeTaskStatus value) changeTaskStatus,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ChangeSort value) changeSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ChangeSort value)? changeSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ChangeSort value)? changeSort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TasksEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) changeTaskStatus,
    required TResult Function(int id) deleteTask,
    required TResult Function(bool? sort) changeSort,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? changeTaskStatus,
    TResult? Function(int id)? deleteTask,
    TResult? Function(bool? sort)? changeSort,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? changeTaskStatus,
    TResult Function(int id)? deleteTask,
    TResult Function(bool? sort)? changeSort,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ChangeTaskStatus value) changeTaskStatus,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ChangeSort value) changeSort,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ChangeSort value)? changeSort,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ChangeSort value)? changeSort,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements TasksEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeTaskStatusImplCopyWith<$Res> {
  factory _$$ChangeTaskStatusImplCopyWith(_$ChangeTaskStatusImpl value,
          $Res Function(_$ChangeTaskStatusImpl) then) =
      __$$ChangeTaskStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ChangeTaskStatusImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ChangeTaskStatusImpl>
    implements _$$ChangeTaskStatusImplCopyWith<$Res> {
  __$$ChangeTaskStatusImplCopyWithImpl(_$ChangeTaskStatusImpl _value,
      $Res Function(_$ChangeTaskStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ChangeTaskStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTaskStatusImpl implements ChangeTaskStatus {
  const _$ChangeTaskStatusImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TasksEvent.changeTaskStatus(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTaskStatusImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTaskStatusImplCopyWith<_$ChangeTaskStatusImpl> get copyWith =>
      __$$ChangeTaskStatusImplCopyWithImpl<_$ChangeTaskStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) changeTaskStatus,
    required TResult Function(int id) deleteTask,
    required TResult Function(bool? sort) changeSort,
  }) {
    return changeTaskStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? changeTaskStatus,
    TResult? Function(int id)? deleteTask,
    TResult? Function(bool? sort)? changeSort,
  }) {
    return changeTaskStatus?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? changeTaskStatus,
    TResult Function(int id)? deleteTask,
    TResult Function(bool? sort)? changeSort,
    required TResult orElse(),
  }) {
    if (changeTaskStatus != null) {
      return changeTaskStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ChangeTaskStatus value) changeTaskStatus,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ChangeSort value) changeSort,
  }) {
    return changeTaskStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ChangeSort value)? changeSort,
  }) {
    return changeTaskStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ChangeSort value)? changeSort,
    required TResult orElse(),
  }) {
    if (changeTaskStatus != null) {
      return changeTaskStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeTaskStatus implements TasksEvent {
  const factory ChangeTaskStatus({required final int id}) =
      _$ChangeTaskStatusImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$ChangeTaskStatusImplCopyWith<_$ChangeTaskStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements DeleteTask {
  const _$DeleteTaskImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TasksEvent.deleteTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) changeTaskStatus,
    required TResult Function(int id) deleteTask,
    required TResult Function(bool? sort) changeSort,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? changeTaskStatus,
    TResult? Function(int id)? deleteTask,
    TResult? Function(bool? sort)? changeSort,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? changeTaskStatus,
    TResult Function(int id)? deleteTask,
    TResult Function(bool? sort)? changeSort,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ChangeTaskStatus value) changeTaskStatus,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ChangeSort value) changeSort,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ChangeSort value)? changeSort,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ChangeSort value)? changeSort,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTask implements TasksEvent {
  const factory DeleteTask({required final int id}) = _$DeleteTaskImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSortImplCopyWith<$Res> {
  factory _$$ChangeSortImplCopyWith(
          _$ChangeSortImpl value, $Res Function(_$ChangeSortImpl) then) =
      __$$ChangeSortImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? sort});
}

/// @nodoc
class __$$ChangeSortImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ChangeSortImpl>
    implements _$$ChangeSortImplCopyWith<$Res> {
  __$$ChangeSortImplCopyWithImpl(
      _$ChangeSortImpl _value, $Res Function(_$ChangeSortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = freezed,
  }) {
    return _then(_$ChangeSortImpl(
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ChangeSortImpl implements ChangeSort {
  const _$ChangeSortImpl({required this.sort});

  @override
  final bool? sort;

  @override
  String toString() {
    return 'TasksEvent.changeSort(sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortImpl &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortImplCopyWith<_$ChangeSortImpl> get copyWith =>
      __$$ChangeSortImplCopyWithImpl<_$ChangeSortImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) changeTaskStatus,
    required TResult Function(int id) deleteTask,
    required TResult Function(bool? sort) changeSort,
  }) {
    return changeSort(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? changeTaskStatus,
    TResult? Function(int id)? deleteTask,
    TResult? Function(bool? sort)? changeSort,
  }) {
    return changeSort?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? changeTaskStatus,
    TResult Function(int id)? deleteTask,
    TResult Function(bool? sort)? changeSort,
    required TResult orElse(),
  }) {
    if (changeSort != null) {
      return changeSort(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(ChangeTaskStatus value) changeTaskStatus,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(ChangeSort value) changeSort,
  }) {
    return changeSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(ChangeSort value)? changeSort,
  }) {
    return changeSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(ChangeTaskStatus value)? changeTaskStatus,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(ChangeSort value)? changeSort,
    required TResult orElse(),
  }) {
    if (changeSort != null) {
      return changeSort(this);
    }
    return orElse();
  }
}

abstract class ChangeSort implements TasksEvent {
  const factory ChangeSort({required final bool? sort}) = _$ChangeSortImpl;

  bool? get sort;
  @JsonKey(ignore: true)
  _$$ChangeSortImplCopyWith<_$ChangeSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  List<TaskEntity>? get tasks => throw _privateConstructorUsedError;
  bool? get sort => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskEntity>? tasks, bool? sort) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskEntity>? tasks, bool? sort)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskEntity>? tasks, bool? sort)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({List<TaskEntity>? tasks, bool? sort});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskEntity>? tasks, bool? sort});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$InitialImpl(
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({final List<TaskEntity>? tasks, this.sort})
      : _tasks = tasks;

  final List<TaskEntity>? _tasks;
  @override
  List<TaskEntity>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? sort;

  @override
  String toString() {
    return 'TasksState.initial(tasks: $tasks, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TaskEntity>? tasks, bool? sort) initial,
  }) {
    return initial(tasks, sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TaskEntity>? tasks, bool? sort)? initial,
  }) {
    return initial?.call(tasks, sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TaskEntity>? tasks, bool? sort)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tasks, sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TasksState {
  const factory _Initial({final List<TaskEntity>? tasks, final bool? sort}) =
      _$InitialImpl;

  @override
  List<TaskEntity>? get tasks;
  @override
  bool? get sort;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
