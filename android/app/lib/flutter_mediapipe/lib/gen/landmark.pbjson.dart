//
//  Generated code. Do not modify.
//  source: landmark.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use landmarkDescriptor instead')
const Landmark$json = {
  '1': 'Landmark',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
    {'1': 'visibility', '3': 4, '4': 1, '5': 2, '10': 'visibility'},
    {'1': 'presence', '3': 5, '4': 1, '5': 2, '10': 'presence'},
  ],
};

/// Descriptor for `Landmark`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List landmarkDescriptor = $convert.base64Decode(
    'CghMYW5kbWFyaxIMCgF4GAEgASgCUgF4EgwKAXkYAiABKAJSAXkSDAoBehgDIAEoAlIBehIeCg'
    'p2aXNpYmlsaXR5GAQgASgCUgp2aXNpYmlsaXR5EhoKCHByZXNlbmNlGAUgASgCUghwcmVzZW5j'
    'ZQ==');

@$core.Deprecated('Use landmarkListDescriptor instead')
const LandmarkList$json = {
  '1': 'LandmarkList',
  '2': [
    {'1': 'landmark', '3': 1, '4': 3, '5': 11, '6': '.mediapipe.Landmark', '10': 'landmark'},
  ],
};

/// Descriptor for `LandmarkList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List landmarkListDescriptor = $convert.base64Decode(
    'CgxMYW5kbWFya0xpc3QSLwoIbGFuZG1hcmsYASADKAsyEy5tZWRpYXBpcGUuTGFuZG1hcmtSCG'
    'xhbmRtYXJr');

@$core.Deprecated('Use normalizedLandmarkDescriptor instead')
const NormalizedLandmark$json = {
  '1': 'NormalizedLandmark',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 2, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 2, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 2, '10': 'z'},
    {'1': 'visibility', '3': 4, '4': 1, '5': 2, '10': 'visibility'},
    {'1': 'presence', '3': 5, '4': 1, '5': 2, '10': 'presence'},
  ],
};

/// Descriptor for `NormalizedLandmark`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List normalizedLandmarkDescriptor = $convert.base64Decode(
    'ChJOb3JtYWxpemVkTGFuZG1hcmsSDAoBeBgBIAEoAlIBeBIMCgF5GAIgASgCUgF5EgwKAXoYAy'
    'ABKAJSAXoSHgoKdmlzaWJpbGl0eRgEIAEoAlIKdmlzaWJpbGl0eRIaCghwcmVzZW5jZRgFIAEo'
    'AlIIcHJlc2VuY2U=');

@$core.Deprecated('Use normalizedLandmarkListDescriptor instead')
const NormalizedLandmarkList$json = {
  '1': 'NormalizedLandmarkList',
  '2': [
    {'1': 'landmark', '3': 1, '4': 3, '5': 11, '6': '.mediapipe.NormalizedLandmark', '10': 'landmark'},
  ],
};

/// Descriptor for `NormalizedLandmarkList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List normalizedLandmarkListDescriptor = $convert.base64Decode(
    'ChZOb3JtYWxpemVkTGFuZG1hcmtMaXN0EjkKCGxhbmRtYXJrGAEgAygLMh0ubWVkaWFwaXBlLk'
    '5vcm1hbGl6ZWRMYW5kbWFya1IIbGFuZG1hcms=');

