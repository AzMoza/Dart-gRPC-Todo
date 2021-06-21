///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'isComplete', '3': 4, '4': 1, '5': 8, '10': 'isComplete'},
    const {'1': 'time', '3': 5, '4': 1, '5': 9, '10': 'time'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEh4KCmlzQ29tcGxldGUYBCABKAhSCmlzQ29tcGxldGUSEgoEdGltZRgFIAEoCVIEdGltZQ==');
@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = const {
  '1': 'CreateRequest',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'todo', '3': 2, '4': 1, '5': 11, '6': '.v1.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode('Cg1DcmVhdGVSZXF1ZXN0EhAKA2FwaRgBIAEoBVIDYXBpEhwKBHRvZG8YAiABKAsyCC52MS5Ub2RvUgR0b2Rv');
@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = const {
  '1': 'CreateResponse',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'todo', '3': 2, '4': 1, '5': 11, '6': '.v1.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode('Cg5DcmVhdGVSZXNwb25zZRIQCgNhcGkYASABKAVSA2FwaRIcCgR0b2RvGAIgASgLMggudjEuVG9kb1IEdG9kbw==');
@$core.Deprecated('Use getRequestDescriptor instead')
const GetRequest$json = const {
  '1': 'GetRequest',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequestDescriptor = $convert.base64Decode('CgpHZXRSZXF1ZXN0EhAKA2FwaRgBIAEoBVIDYXBpEg4KAmlkGAIgASgFUgJpZA==');
@$core.Deprecated('Use getResponseDescriptor instead')
const GetResponse$json = const {
  '1': 'GetResponse',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'todo', '3': 2, '4': 1, '5': 11, '6': '.v1.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `GetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResponseDescriptor = $convert.base64Decode('CgtHZXRSZXNwb25zZRIQCgNhcGkYASABKAVSA2FwaRIcCgR0b2RvGAIgASgLMggudjEuVG9kb1IEdG9kbw==');
@$core.Deprecated('Use getAllRequestDescriptor instead')
const GetAllRequest$json = const {
  '1': 'GetAllRequest',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'queryParams', '3': 2, '4': 1, '5': 14, '6': '.v1.GetAllRequest.QueryParams', '10': 'queryParams'},
  ],
  '4': const [GetAllRequest_QueryParams$json],
};

@$core.Deprecated('Use getAllRequestDescriptor instead')
const GetAllRequest_QueryParams$json = const {
  '1': 'QueryParams',
  '2': const [
    const {'1': 'ALL', '2': 0},
    const {'1': 'COMPLETED', '2': 1},
    const {'1': 'DATE', '2': 2},
  ],
};

/// Descriptor for `GetAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllRequestDescriptor = $convert.base64Decode('Cg1HZXRBbGxSZXF1ZXN0EhAKA2FwaRgBIAEoBVIDYXBpEj8KC3F1ZXJ5UGFyYW1zGAIgASgOMh0udjEuR2V0QWxsUmVxdWVzdC5RdWVyeVBhcmFtc1ILcXVlcnlQYXJhbXMiLwoLUXVlcnlQYXJhbXMSBwoDQUxMEAASDQoJQ09NUExFVEVEEAESCAoEREFURRAC');
@$core.Deprecated('Use getAllResponseDescriptor instead')
const GetAllResponse$json = const {
  '1': 'GetAllResponse',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'todos', '3': 2, '4': 3, '5': 11, '6': '.v1.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `GetAllResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllResponseDescriptor = $convert.base64Decode('Cg5HZXRBbGxSZXNwb25zZRIQCgNhcGkYASABKAVSA2FwaRIeCgV0b2RvcxgCIAMoCzIILnYxLlRvZG9SBXRvZG9z');
@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = const {
  '1': 'UpdateRequest',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'todo', '3': 2, '4': 1, '5': 11, '6': '.v1.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode('Cg1VcGRhdGVSZXF1ZXN0EhAKA2FwaRgBIAEoBVIDYXBpEhwKBHRvZG8YAiABKAsyCC52MS5Ub2RvUgR0b2Rv');
@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = const {
  '1': 'UpdateResponse',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'todo', '3': 2, '4': 1, '5': 11, '6': '.v1.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode('Cg5VcGRhdGVSZXNwb25zZRIQCgNhcGkYASABKAVSA2FwaRIcCgR0b2RvGAIgASgLMggudjEuVG9kb1IEdG9kbw==');
@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = const {
  '1': 'DeleteRequest',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode('Cg1EZWxldGVSZXF1ZXN0EhAKA2FwaRgBIAEoBVIDYXBpEg4KAmlkGAIgASgFUgJpZA==');
@$core.Deprecated('Use deleteResponseDescriptor instead')
const DeleteResponse$json = const {
  '1': 'DeleteResponse',
  '2': const [
    const {'1': 'api', '3': 1, '4': 1, '5': 5, '10': 'api'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponseDescriptor = $convert.base64Decode('Cg5EZWxldGVSZXNwb25zZRIQCgNhcGkYASABKAVSA2FwaRIOCgJpZBgCIAEoBVICaWQ=');
