import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewGroomingsRecord extends FirestoreRecord {
  ReviewGroomingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "rate" field.
  int? _rate;
  int get rate => _rate ?? 0;
  bool hasRate() => _rate != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "ranger_uid" field.
  DocumentReference? _rangerUid;
  DocumentReference? get rangerUid => _rangerUid;
  bool hasRangerUid() => _rangerUid != null;

  // "customer_uid" field.
  DocumentReference? _customerUid;
  DocumentReference? get customerUid => _customerUid;
  bool hasCustomerUid() => _customerUid != null;

  // "order_uid" field.
  DocumentReference? _orderUid;
  DocumentReference? get orderUid => _orderUid;
  bool hasOrderUid() => _orderUid != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _rate = castToType<int>(snapshotData['rate']);
    _comment = snapshotData['comment'] as String?;
    _rangerUid = snapshotData['ranger_uid'] as DocumentReference?;
    _customerUid = snapshotData['customer_uid'] as DocumentReference?;
    _orderUid = snapshotData['order_uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review_groomings');

  static Stream<ReviewGroomingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewGroomingsRecord.fromSnapshot(s));

  static Future<ReviewGroomingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewGroomingsRecord.fromSnapshot(s));

  static ReviewGroomingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewGroomingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewGroomingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewGroomingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewGroomingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewGroomingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewGroomingsRecordData({
  DateTime? createdAt,
  int? rate,
  String? comment,
  DocumentReference? rangerUid,
  DocumentReference? customerUid,
  DocumentReference? orderUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'rate': rate,
      'comment': comment,
      'ranger_uid': rangerUid,
      'customer_uid': customerUid,
      'order_uid': orderUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewGroomingsRecordDocumentEquality
    implements Equality<ReviewGroomingsRecord> {
  const ReviewGroomingsRecordDocumentEquality();

  @override
  bool equals(ReviewGroomingsRecord? e1, ReviewGroomingsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.rate == e2?.rate &&
        e1?.comment == e2?.comment &&
        e1?.rangerUid == e2?.rangerUid &&
        e1?.customerUid == e2?.customerUid &&
        e1?.orderUid == e2?.orderUid;
  }

  @override
  int hash(ReviewGroomingsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.rate,
        e?.comment,
        e?.rangerUid,
        e?.customerUid,
        e?.orderUid
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewGroomingsRecord;
}
