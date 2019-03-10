import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_clean_architecture/domain/models/voucher.dart';

abstract class VoucherDataMapper {
  static Voucher mapper(DocumentSnapshot documentSnapshot) {
    return Voucher.newInstance(documentSnapshot.documentID,
        documentSnapshot['description'], documentSnapshot['image_url']);
  }
}
