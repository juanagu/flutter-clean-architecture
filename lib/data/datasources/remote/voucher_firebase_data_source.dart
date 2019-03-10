import 'package:flutter_clean_architecture/data/datasources/remote/base_firebase_data_source.dart';
import 'package:flutter_clean_architecture/domain/models/voucher.dart';
import 'package:flutter_clean_architecture/domain/repositories/voucher_repository.dart';
import 'package:flutter_clean_architecture/data/mappers/VoucherDataMapper.dart';

class VoucherFirebaseDataSource extends BaseFirebaseDataSource
    implements VoucherRepository {
  static const String path = 'vouchers';

  @override
  Future<List<Voucher>> getAll() {
    return getCollection(path).snapshots().map((snapshot) =>
        snapshot.documents.map(VoucherDataMapper.mapper).toList()).first;
  }
}

