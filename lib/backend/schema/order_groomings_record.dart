import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderGroomingsRecord extends FirestoreRecord {
  OrderGroomingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "order_no" field.
  String? _orderNo;
  String get orderNo => _orderNo ?? '';
  bool hasOrderNo() => _orderNo != null;

  // "pet_category" field.
  String? _petCategory;
  String get petCategory => _petCategory ?? '';
  bool hasPetCategory() => _petCategory != null;

  // "scheduled_at" field.
  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _scheduledAt;
  bool hasScheduledAt() => _scheduledAt != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "customer_uid" field.
  DocumentReference? _customerUid;
  DocumentReference? get customerUid => _customerUid;
  bool hasCustomerUid() => _customerUid != null;

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customer_phone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "customer_address" field.
  String? _customerAddress;
  String get customerAddress => _customerAddress ?? '';
  bool hasCustomerAddress() => _customerAddress != null;

  // "customer_latlng" field.
  LatLng? _customerLatlng;
  LatLng? get customerLatlng => _customerLatlng;
  bool hasCustomerLatlng() => _customerLatlng != null;

  // "customer_city" field.
  String? _customerCity;
  String get customerCity => _customerCity ?? '';
  bool hasCustomerCity() => _customerCity != null;

  // "ranger_uid" field.
  DocumentReference? _rangerUid;
  DocumentReference? get rangerUid => _rangerUid;
  bool hasRangerUid() => _rangerUid != null;

  // "ranger_name" field.
  String? _rangerName;
  String get rangerName => _rangerName ?? '';
  bool hasRangerName() => _rangerName != null;

  // "ranger_phone" field.
  String? _rangerPhone;
  String get rangerPhone => _rangerPhone ?? '';
  bool hasRangerPhone() => _rangerPhone != null;

  // "ranger_photo_url" field.
  String? _rangerPhotoUrl;
  String get rangerPhotoUrl => _rangerPhotoUrl ?? '';
  bool hasRangerPhotoUrl() => _rangerPhotoUrl != null;

  // "start_at" field.
  DateTime? _startAt;
  DateTime? get startAt => _startAt;
  bool hasStartAt() => _startAt != null;

  // "end_at" field.
  DateTime? _endAt;
  DateTime? get endAt => _endAt;
  bool hasEndAt() => _endAt != null;

  // "preferred_time" field.
  String? _preferredTime;
  String get preferredTime => _preferredTime ?? '';
  bool hasPreferredTime() => _preferredTime != null;

  // "preferred_day" field.
  String? _preferredDay;
  String get preferredDay => _preferredDay ?? '';
  bool hasPreferredDay() => _preferredDay != null;

  // "confirmed_at" field.
  DateTime? _confirmedAt;
  DateTime? get confirmedAt => _confirmedAt;
  bool hasConfirmedAt() => _confirmedAt != null;

  // "ontheway_at" field.
  DateTime? _onthewayAt;
  DateTime? get onthewayAt => _onthewayAt;
  bool hasOnthewayAt() => _onthewayAt != null;

  // "working_at" field.
  DateTime? _workingAt;
  DateTime? get workingAt => _workingAt;
  bool hasWorkingAt() => _workingAt != null;

  // "finish_at" field.
  DateTime? _finishAt;
  DateTime? get finishAt => _finishAt;
  bool hasFinishAt() => _finishAt != null;

  // "paid_at" field.
  DateTime? _paidAt;
  DateTime? get paidAt => _paidAt;
  bool hasPaidAt() => _paidAt != null;

  // "cancelled_at" field.
  DateTime? _cancelledAt;
  DateTime? get cancelledAt => _cancelledAt;
  bool hasCancelledAt() => _cancelledAt != null;

  // "rejected_at" field.
  DateTime? _rejectedAt;
  DateTime? get rejectedAt => _rejectedAt;
  bool hasRejectedAt() => _rejectedAt != null;

  // "payment_status" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "rate" field.
  int? _rate;
  int get rate => _rate ?? 0;
  bool hasRate() => _rate != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "review_uid" field.
  DocumentReference? _reviewUid;
  DocumentReference? get reviewUid => _reviewUid;
  bool hasReviewUid() => _reviewUid != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _orderNo = snapshotData['order_no'] as String?;
    _petCategory = snapshotData['pet_category'] as String?;
    _scheduledAt = snapshotData['scheduled_at'] as DateTime?;
    _amount = castToType<double>(snapshotData['amount']);
    _status = snapshotData['status'] as String?;
    _customerUid = snapshotData['customer_uid'] as DocumentReference?;
    _customerName = snapshotData['customer_name'] as String?;
    _customerPhone = snapshotData['customer_phone'] as String?;
    _customerAddress = snapshotData['customer_address'] as String?;
    _customerLatlng = snapshotData['customer_latlng'] as LatLng?;
    _customerCity = snapshotData['customer_city'] as String?;
    _rangerUid = snapshotData['ranger_uid'] as DocumentReference?;
    _rangerName = snapshotData['ranger_name'] as String?;
    _rangerPhone = snapshotData['ranger_phone'] as String?;
    _rangerPhotoUrl = snapshotData['ranger_photo_url'] as String?;
    _startAt = snapshotData['start_at'] as DateTime?;
    _endAt = snapshotData['end_at'] as DateTime?;
    _preferredTime = snapshotData['preferred_time'] as String?;
    _preferredDay = snapshotData['preferred_day'] as String?;
    _confirmedAt = snapshotData['confirmed_at'] as DateTime?;
    _onthewayAt = snapshotData['ontheway_at'] as DateTime?;
    _workingAt = snapshotData['working_at'] as DateTime?;
    _finishAt = snapshotData['finish_at'] as DateTime?;
    _paidAt = snapshotData['paid_at'] as DateTime?;
    _cancelledAt = snapshotData['cancelled_at'] as DateTime?;
    _rejectedAt = snapshotData['rejected_at'] as DateTime?;
    _paymentStatus = snapshotData['payment_status'] as String?;
    _paymentMethod = snapshotData['payment_method'] as String?;
    _rate = castToType<int>(snapshotData['rate']);
    _comment = snapshotData['comment'] as String?;
    _reviewUid = snapshotData['review_uid'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order_groomings');

  static Stream<OrderGroomingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderGroomingsRecord.fromSnapshot(s));

  static Future<OrderGroomingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderGroomingsRecord.fromSnapshot(s));

  static OrderGroomingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderGroomingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderGroomingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderGroomingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderGroomingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderGroomingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderGroomingsRecordData({
  DateTime? createdAt,
  String? orderNo,
  String? petCategory,
  DateTime? scheduledAt,
  double? amount,
  String? status,
  DocumentReference? customerUid,
  String? customerName,
  String? customerPhone,
  String? customerAddress,
  LatLng? customerLatlng,
  String? customerCity,
  DocumentReference? rangerUid,
  String? rangerName,
  String? rangerPhone,
  String? rangerPhotoUrl,
  DateTime? startAt,
  DateTime? endAt,
  String? preferredTime,
  String? preferredDay,
  DateTime? confirmedAt,
  DateTime? onthewayAt,
  DateTime? workingAt,
  DateTime? finishAt,
  DateTime? paidAt,
  DateTime? cancelledAt,
  DateTime? rejectedAt,
  String? paymentStatus,
  String? paymentMethod,
  int? rate,
  String? comment,
  DocumentReference? reviewUid,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'order_no': orderNo,
      'pet_category': petCategory,
      'scheduled_at': scheduledAt,
      'amount': amount,
      'status': status,
      'customer_uid': customerUid,
      'customer_name': customerName,
      'customer_phone': customerPhone,
      'customer_address': customerAddress,
      'customer_latlng': customerLatlng,
      'customer_city': customerCity,
      'ranger_uid': rangerUid,
      'ranger_name': rangerName,
      'ranger_phone': rangerPhone,
      'ranger_photo_url': rangerPhotoUrl,
      'start_at': startAt,
      'end_at': endAt,
      'preferred_time': preferredTime,
      'preferred_day': preferredDay,
      'confirmed_at': confirmedAt,
      'ontheway_at': onthewayAt,
      'working_at': workingAt,
      'finish_at': finishAt,
      'paid_at': paidAt,
      'cancelled_at': cancelledAt,
      'rejected_at': rejectedAt,
      'payment_status': paymentStatus,
      'payment_method': paymentMethod,
      'rate': rate,
      'comment': comment,
      'review_uid': reviewUid,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderGroomingsRecordDocumentEquality
    implements Equality<OrderGroomingsRecord> {
  const OrderGroomingsRecordDocumentEquality();

  @override
  bool equals(OrderGroomingsRecord? e1, OrderGroomingsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.orderNo == e2?.orderNo &&
        e1?.petCategory == e2?.petCategory &&
        e1?.scheduledAt == e2?.scheduledAt &&
        e1?.amount == e2?.amount &&
        e1?.status == e2?.status &&
        e1?.customerUid == e2?.customerUid &&
        e1?.customerName == e2?.customerName &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.customerAddress == e2?.customerAddress &&
        e1?.customerLatlng == e2?.customerLatlng &&
        e1?.customerCity == e2?.customerCity &&
        e1?.rangerUid == e2?.rangerUid &&
        e1?.rangerName == e2?.rangerName &&
        e1?.rangerPhone == e2?.rangerPhone &&
        e1?.rangerPhotoUrl == e2?.rangerPhotoUrl &&
        e1?.startAt == e2?.startAt &&
        e1?.endAt == e2?.endAt &&
        e1?.preferredTime == e2?.preferredTime &&
        e1?.preferredDay == e2?.preferredDay &&
        e1?.confirmedAt == e2?.confirmedAt &&
        e1?.onthewayAt == e2?.onthewayAt &&
        e1?.workingAt == e2?.workingAt &&
        e1?.finishAt == e2?.finishAt &&
        e1?.paidAt == e2?.paidAt &&
        e1?.cancelledAt == e2?.cancelledAt &&
        e1?.rejectedAt == e2?.rejectedAt &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.rate == e2?.rate &&
        e1?.comment == e2?.comment &&
        e1?.reviewUid == e2?.reviewUid &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(OrderGroomingsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.orderNo,
        e?.petCategory,
        e?.scheduledAt,
        e?.amount,
        e?.status,
        e?.customerUid,
        e?.customerName,
        e?.customerPhone,
        e?.customerAddress,
        e?.customerLatlng,
        e?.customerCity,
        e?.rangerUid,
        e?.rangerName,
        e?.rangerPhone,
        e?.rangerPhotoUrl,
        e?.startAt,
        e?.endAt,
        e?.preferredTime,
        e?.preferredDay,
        e?.confirmedAt,
        e?.onthewayAt,
        e?.workingAt,
        e?.finishAt,
        e?.paidAt,
        e?.cancelledAt,
        e?.rejectedAt,
        e?.paymentStatus,
        e?.paymentMethod,
        e?.rate,
        e?.comment,
        e?.reviewUid,
        e?.quantity
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderGroomingsRecord;
}
