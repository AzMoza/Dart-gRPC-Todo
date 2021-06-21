///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$createTodo =
      $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
          '/v1.TodoService/CreateTodo',
          ($0.CreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));
  static final _$getTodo = $grpc.ClientMethod<$0.GetRequest, $0.GetResponse>(
      '/v1.TodoService/GetTodo',
      ($0.GetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetResponse.fromBuffer(value));
  static final _$getAllTodo =
      $grpc.ClientMethod<$0.GetAllRequest, $0.GetAllResponse>(
          '/v1.TodoService/GetAllTodo',
          ($0.GetAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetAllResponse.fromBuffer(value));
  static final _$updateTodo =
      $grpc.ClientMethod<$0.UpdateRequest, $0.UpdateResponse>(
          '/v1.TodoService/UpdateTodo',
          ($0.UpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UpdateResponse.fromBuffer(value));
  static final _$deleteTodo =
      $grpc.ClientMethod<$0.DeleteRequest, $0.DeleteResponse>(
          '/v1.TodoService/DeleteTodo',
          ($0.DeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.DeleteResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateResponse> createTodo($0.CreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetResponse> getTodo($0.GetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllResponse> getAllTodo($0.GetAllRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateResponse> updateTodo($0.UpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteResponse> deleteTodo($0.DeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'v1.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRequest, $0.GetResponse>(
        'GetTodo',
        getTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRequest.fromBuffer(value),
        ($0.GetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllRequest, $0.GetAllResponse>(
        'GetAllTodo',
        getAllTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAllRequest.fromBuffer(value),
        ($0.GetAllResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRequest, $0.UpdateResponse>(
        'UpdateTodo',
        updateTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRequest.fromBuffer(value),
        ($0.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRequest, $0.DeleteResponse>(
        'DeleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRequest.fromBuffer(value),
        ($0.DeleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateResponse> createTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CreateRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.GetResponse> getTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetRequest> request) async {
    return getTodo(call, await request);
  }

  $async.Future<$0.GetAllResponse> getAllTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetAllRequest> request) async {
    return getAllTodo(call, await request);
  }

  $async.Future<$0.UpdateResponse> updateTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UpdateRequest> request) async {
    return updateTodo(call, await request);
  }

  $async.Future<$0.DeleteResponse> deleteTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeleteRequest> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$0.CreateResponse> createTodo(
      $grpc.ServiceCall call, $0.CreateRequest request);
  $async.Future<$0.GetResponse> getTodo(
      $grpc.ServiceCall call, $0.GetRequest request);
  $async.Future<$0.GetAllResponse> getAllTodo(
      $grpc.ServiceCall call, $0.GetAllRequest request);
  $async.Future<$0.UpdateResponse> updateTodo(
      $grpc.ServiceCall call, $0.UpdateRequest request);
  $async.Future<$0.DeleteResponse> deleteTodo(
      $grpc.ServiceCall call, $0.DeleteRequest request);
}
