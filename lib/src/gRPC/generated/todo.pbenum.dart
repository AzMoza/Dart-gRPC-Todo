///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GetAllRequest_QueryParams extends $pb.ProtobufEnum {
  static const GetAllRequest_QueryParams ALL = GetAllRequest_QueryParams._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALL');
  static const GetAllRequest_QueryParams COMPLETED = GetAllRequest_QueryParams._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMPLETED');
  static const GetAllRequest_QueryParams DATE = GetAllRequest_QueryParams._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATE');

  static const $core.List<GetAllRequest_QueryParams> values = <GetAllRequest_QueryParams> [
    ALL,
    COMPLETED,
    DATE,
  ];

  static final $core.Map<$core.int, GetAllRequest_QueryParams> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetAllRequest_QueryParams? valueOf($core.int value) => _byValue[value];

  const GetAllRequest_QueryParams._($core.int v, $core.String n) : super(v, n);
}

