import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetsRecord extends FirestoreRecord {
  PetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "birthdate" field.
  DateTime? _birthdate;
  DateTime? get birthdate => _birthdate;
  bool hasBirthdate() => _birthdate != null;

  // "owner_name" field.
  String? _ownerName;
  String get ownerName => _ownerName ?? '';
  bool hasOwnerName() => _ownerName != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "picture_url" field.
  String? _pictureUrl;
  String get pictureUrl => _pictureUrl ?? '';
  bool hasPictureUrl() => _pictureUrl != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "weight_unit" field.
  String? _weightUnit;
  String get weightUnit => _weightUnit ?? '';
  bool hasWeightUnit() => _weightUnit != null;

  // "breed" field.
  String? _breed;
  String get breed => _breed ?? '';
  bool hasBreed() => _breed != null;

  // "is_vaccinated" field.
  bool? _isVaccinated;
  bool get isVaccinated => _isVaccinated ?? false;
  bool hasIsVaccinated() => _isVaccinated != null;

  // "is_sterilized" field.
  bool? _isSterilized;
  bool get isSterilized => _isSterilized ?? false;
  bool hasIsSterilized() => _isSterilized != null;

  // "is_diarrhea" field.
  bool? _isDiarrhea;
  bool get isDiarrhea => _isDiarrhea ?? false;
  bool hasIsDiarrhea() => _isDiarrhea != null;

  // "has_earmites" field.
  bool? _hasEarmites;
  bool get hasEarmites => _hasEarmites ?? false;
  bool hasHasEarmites() => _hasEarmites != null;

  // "has_fleas" field.
  bool? _hasFleas;
  bool get hasFleas => _hasFleas ?? false;
  bool hasHasFleas() => _hasFleas != null;

  // "has_fungus" field.
  bool? _hasFungus;
  bool get hasFungus => _hasFungus ?? false;
  bool hasHasFungus() => _hasFungus != null;

  // "has_scabies" field.
  bool? _hasScabies;
  bool get hasScabies => _hasScabies ?? false;
  bool hasHasScabies() => _hasScabies != null;

  // "has_worms" field.
  bool? _hasWorms;
  bool get hasWorms => _hasWorms ?? false;
  bool hasHasWorms() => _hasWorms != null;

  // "owner_uid" field.
  DocumentReference? _ownerUid;
  DocumentReference? get ownerUid => _ownerUid;
  bool hasOwnerUid() => _ownerUid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _birthdate = snapshotData['birthdate'] as DateTime?;
    _ownerName = snapshotData['owner_name'] as String?;
    _weight = castToType<double>(snapshotData['weight']);
    _condition = snapshotData['condition'] as String?;
    _pictureUrl = snapshotData['picture_url'] as String?;
    _sex = snapshotData['sex'] as String?;
    _weightUnit = snapshotData['weight_unit'] as String?;
    _breed = snapshotData['breed'] as String?;
    _isVaccinated = snapshotData['is_vaccinated'] as bool?;
    _isSterilized = snapshotData['is_sterilized'] as bool?;
    _isDiarrhea = snapshotData['is_diarrhea'] as bool?;
    _hasEarmites = snapshotData['has_earmites'] as bool?;
    _hasFleas = snapshotData['has_fleas'] as bool?;
    _hasFungus = snapshotData['has_fungus'] as bool?;
    _hasScabies = snapshotData['has_scabies'] as bool?;
    _hasWorms = snapshotData['has_worms'] as bool?;
    _ownerUid = snapshotData['owner_uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pets');

  static Stream<PetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PetsRecord.fromSnapshot(s));

  static Future<PetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PetsRecord.fromSnapshot(s));

  static PetsRecord fromSnapshot(DocumentSnapshot snapshot) => PetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPetsRecordData({
  String? name,
  DateTime? birthdate,
  String? ownerName,
  double? weight,
  String? condition,
  String? pictureUrl,
  String? sex,
  String? weightUnit,
  String? breed,
  bool? isVaccinated,
  bool? isSterilized,
  bool? isDiarrhea,
  bool? hasEarmites,
  bool? hasFleas,
  bool? hasFungus,
  bool? hasScabies,
  bool? hasWorms,
  DocumentReference? ownerUid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'birthdate': birthdate,
      'owner_name': ownerName,
      'weight': weight,
      'condition': condition,
      'picture_url': pictureUrl,
      'sex': sex,
      'weight_unit': weightUnit,
      'breed': breed,
      'is_vaccinated': isVaccinated,
      'is_sterilized': isSterilized,
      'is_diarrhea': isDiarrhea,
      'has_earmites': hasEarmites,
      'has_fleas': hasFleas,
      'has_fungus': hasFungus,
      'has_scabies': hasScabies,
      'has_worms': hasWorms,
      'owner_uid': ownerUid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PetsRecordDocumentEquality implements Equality<PetsRecord> {
  const PetsRecordDocumentEquality();

  @override
  bool equals(PetsRecord? e1, PetsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.birthdate == e2?.birthdate &&
        e1?.ownerName == e2?.ownerName &&
        e1?.weight == e2?.weight &&
        e1?.condition == e2?.condition &&
        e1?.pictureUrl == e2?.pictureUrl &&
        e1?.sex == e2?.sex &&
        e1?.weightUnit == e2?.weightUnit &&
        e1?.breed == e2?.breed &&
        e1?.isVaccinated == e2?.isVaccinated &&
        e1?.isSterilized == e2?.isSterilized &&
        e1?.isDiarrhea == e2?.isDiarrhea &&
        e1?.hasEarmites == e2?.hasEarmites &&
        e1?.hasFleas == e2?.hasFleas &&
        e1?.hasFungus == e2?.hasFungus &&
        e1?.hasScabies == e2?.hasScabies &&
        e1?.hasWorms == e2?.hasWorms &&
        e1?.ownerUid == e2?.ownerUid;
  }

  @override
  int hash(PetsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.birthdate,
        e?.ownerName,
        e?.weight,
        e?.condition,
        e?.pictureUrl,
        e?.sex,
        e?.weightUnit,
        e?.breed,
        e?.isVaccinated,
        e?.isSterilized,
        e?.isDiarrhea,
        e?.hasEarmites,
        e?.hasFleas,
        e?.hasFungus,
        e?.hasScabies,
        e?.hasWorms,
        e?.ownerUid
      ]);

  @override
  bool isValidKey(Object? o) => o is PetsRecord;
}
