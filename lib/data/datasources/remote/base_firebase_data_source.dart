import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseFirebaseDataSource {
  CollectionReference getCollection(String collectionPath) {
    return Firestore.instance.collection(collectionPath);
  }
}
