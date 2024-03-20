// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../storage_v1.dart';

/// StorageClassList is a collection of storage classes.
class StorageClassList {
  /// Default constructor.
  const StorageClassList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a [StorageClassList] from JSON data.
  factory StorageClassList.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempItemsJson = json['items'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];

    final String? tempApiVersion = tempApiVersionJson;

    final List<StorageClass> tempItems = List<dynamic>.from(tempItemsJson)
        .map(
          (e) => StorageClass.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
        .toList();

    final String? tempKind = tempKindJson;
    final ListMeta? tempMetadata =
        tempMetadataJson != null ? ListMeta.fromJson(tempMetadataJson) : null;

    return StorageClassList(
      apiVersion: tempApiVersion,
      items: tempItems,
      kind: tempKind,
      metadata: tempMetadata,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// items is the list of StorageClasses.
  final List<StorageClass> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ListMeta? metadata;

  /// Converts a [StorageClassList] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempItems = items;
    final tempKind = kind;
    final tempMetadata = metadata;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['items'] =
        tempItems.map((e) => e.toJson()).toList(growable: false);

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    return jsonData;
  }
}
