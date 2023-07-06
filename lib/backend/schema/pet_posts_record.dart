import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetPostsRecord extends FirestoreRecord {
  PetPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pet_uid" field.
  DocumentReference? _petUid;
  DocumentReference? get petUid => _petUid;
  bool hasPetUid() => _petUid != null;

  // "pet_name" field.
  String? _petName;
  String get petName => _petName ?? '';
  bool hasPetName() => _petName != null;

  // "pet_picture_url" field.
  String? _petPictureUrl;
  String get petPictureUrl => _petPictureUrl ?? '';
  bool hasPetPictureUrl() => _petPictureUrl != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "num_fav" field.
  int? _numFav;
  int get numFav => _numFav ?? 0;
  bool hasNumFav() => _numFav != null;

  // "faved_by" field.
  List<DocumentReference>? _favedBy;
  List<DocumentReference> get favedBy => _favedBy ?? const [];
  bool hasFavedBy() => _favedBy != null;

  void _initializeFields() {
    _petUid = snapshotData['pet_uid'] as DocumentReference?;
    _petName = snapshotData['pet_name'] as String?;
    _petPictureUrl = snapshotData['pet_picture_url'] as String?;
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
    _text = snapshotData['text'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _numFav = castToType<int>(snapshotData['num_fav']);
    _favedBy = getDataList(snapshotData['faved_by']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pet_posts');

  static Stream<PetPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PetPostsRecord.fromSnapshot(s));

  static Future<PetPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PetPostsRecord.fromSnapshot(s));

  static PetPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PetPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PetPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PetPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PetPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PetPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPetPostsRecordData({
  DocumentReference? petUid,
  String? petName,
  String? petPictureUrl,
  String? image,
  String? video,
  String? text,
  DateTime? createdAt,
  int? numFav,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pet_uid': petUid,
      'pet_name': petName,
      'pet_picture_url': petPictureUrl,
      'image': image,
      'video': video,
      'text': text,
      'created_at': createdAt,
      'num_fav': numFav,
    }.withoutNulls,
  );

  return firestoreData;
}

class PetPostsRecordDocumentEquality implements Equality<PetPostsRecord> {
  const PetPostsRecordDocumentEquality();

  @override
  bool equals(PetPostsRecord? e1, PetPostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.petUid == e2?.petUid &&
        e1?.petName == e2?.petName &&
        e1?.petPictureUrl == e2?.petPictureUrl &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video &&
        e1?.text == e2?.text &&
        e1?.createdAt == e2?.createdAt &&
        e1?.numFav == e2?.numFav &&
        listEquality.equals(e1?.favedBy, e2?.favedBy);
  }

  @override
  int hash(PetPostsRecord? e) => const ListEquality().hash([
        e?.petUid,
        e?.petName,
        e?.petPictureUrl,
        e?.image,
        e?.video,
        e?.text,
        e?.createdAt,
        e?.numFav,
        e?.favedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is PetPostsRecord;
}
