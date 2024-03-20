// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../admissionregistration_v1alpha1.dart';

/// AuditAnnotation describes how to produce an audit annotation for an API request.
class AuditAnnotation {
  /// Default constructor.
  const AuditAnnotation({
    required this.key,
    required this.valueExpression,
  });

  /// Creates a [AuditAnnotation] from JSON data.
  factory AuditAnnotation.fromJson(Map<String, dynamic> json) {
    final tempKeyJson = json['key'];
    final tempValueExpressionJson = json['valueExpression'];

    final String tempKey = tempKeyJson;
    final String tempValueExpression = tempValueExpressionJson;

    return AuditAnnotation(
      key: tempKey,
      valueExpression: tempValueExpression,
    );
  }

  /// key specifies the audit annotation key. The audit annotation keys of a ValidatingAdmissionPolicy must be unique. The key must be a qualified name (\[A-Za-z0-9\]\[-A-Za-z0-9_.\]*) no more than 63 bytes in length.
  ///
  /// The key is combined with the resource name of the ValidatingAdmissionPolicy to construct an audit annotation key: "{ValidatingAdmissionPolicy name}/{key}".
  ///
  /// If an admission webhook uses the same resource name as this ValidatingAdmissionPolicy and the same audit annotation key, the annotation key will be identical. In this case, the first annotation written with the key will be included in the audit event and all subsequent annotations with the same key will be discarded.
  ///
  /// Required.
  final String key;

  /// valueExpression represents the expression which is evaluated by CEL to produce an audit annotation value. The expression must evaluate to either a string or null value. If the expression evaluates to a string, the audit annotation is included with the string value. If the expression evaluates to null or empty string the audit annotation will be omitted. The valueExpression may be no longer than 5kb in length. If the result of the valueExpression is more than 10kb in length, it will be truncated to 10kb.
  ///
  /// If multiple ValidatingAdmissionPolicyBinding resources match an API request, then the valueExpression will be evaluated for each binding. All unique values produced by the valueExpressions will be joined together in a comma-separated list.
  ///
  /// Required.
  final String valueExpression;

  /// Converts a [AuditAnnotation] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempKey = key;
    final tempValueExpression = valueExpression;

    jsonData['key'] = tempKey;

    jsonData['valueExpression'] = tempValueExpression;

    return jsonData;
  }
}
