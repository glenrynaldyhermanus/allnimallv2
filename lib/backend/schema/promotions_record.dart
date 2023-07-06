import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionsRecord extends FirestoreRecord {
  PromotionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "actionType" field.
  String? _actionType;
  String get actionType => _actionType ?? '';
  bool hasActionType() => _actionType != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _url = snapshotData['url'] as String?;
    _actionType = snapshotData['actionType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promotions');

  static Stream<PromotionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionsRecord.fromSnapshot(s));

  static Future<PromotionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionsRecord.fromSnapshot(s));

  static PromotionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionsRecordData({
  String? name,
  String? url,
  String? actionType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'url': url,
      'actionType': actionType,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionsRecordDocumentEquality implements Equality<PromotionsRecord> {
  const PromotionsRecordDocumentEquality();

  @override
  bool equals(PromotionsRecord? e1, PromotionsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.url == e2?.url &&
        e1?.actionType == e2?.actionType;
  }

  @override
  int hash(PromotionsRecord? e) =>
      const ListEquality().hash([e?.name, e?.url, e?.actionType]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
