import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentIDRecord extends FirestoreRecord {
  DocumentIDRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "expiryDate" field.
  DateTime? _expiryDate;
  DateTime? get expiryDate => _expiryDate;
  bool hasExpiryDate() => _expiryDate != null;

  // "fileURL" field.
  String? _fileURL;
  String get fileURL => _fileURL ?? '';
  bool hasFileURL() => _fileURL != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "issueDate" field.
  DateTime? _issueDate;
  DateTime? get issueDate => _issueDate;
  bool hasIssueDate() => _issueDate != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "documentType" field.
  String? _documentType;
  String get documentType => _documentType ?? '';
  bool hasDocumentType() => _documentType != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _expiryDate = snapshotData['expiryDate'] as DateTime?;
    _fileURL = snapshotData['fileURL'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _issueDate = snapshotData['issueDate'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _documentType = snapshotData['documentType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documentID');

  static Stream<DocumentIDRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentIDRecord.fromSnapshot(s));

  static Future<DocumentIDRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentIDRecord.fromSnapshot(s));

  static DocumentIDRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentIDRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentIDRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentIDRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentIDRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentIDRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentIDRecordData({
  DateTime? createdAt,
  DateTime? expiryDate,
  String? fileURL,
  int? status,
  DateTime? issueDate,
  String? uid,
  String? documentType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'expiryDate': expiryDate,
      'fileURL': fileURL,
      'status': status,
      'issueDate': issueDate,
      'uid': uid,
      'documentType': documentType,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentIDRecordDocumentEquality implements Equality<DocumentIDRecord> {
  const DocumentIDRecordDocumentEquality();

  @override
  bool equals(DocumentIDRecord? e1, DocumentIDRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.expiryDate == e2?.expiryDate &&
        e1?.fileURL == e2?.fileURL &&
        e1?.status == e2?.status &&
        e1?.issueDate == e2?.issueDate &&
        e1?.uid == e2?.uid &&
        e1?.documentType == e2?.documentType;
  }

  @override
  int hash(DocumentIDRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.expiryDate,
        e?.fileURL,
        e?.status,
        e?.issueDate,
        e?.uid,
        e?.documentType
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentIDRecord;
}
