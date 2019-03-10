import 'package:flutter_clean_architecture/domain/models/voucher.dart';
import 'package:flutter_clean_architecture/domain/repositories/voucher_repository.dart';

class FakeVoucherRemoteDataSource implements VoucherRepository {

  static const String path = 'vouchers';

  @override
  Future<List<Voucher>> getAll() {

    Future.delayed(Duration(seconds: 2));
    List<Voucher> fakeVouchers = new List<Voucher>();
    fakeVouchers.add(Voucher.newInstance("1", "Friday's 2x1 ", "https://mir-s3-cdn-cf.behance.net/project_modules/disp/a98fb512726945.5626c4495b068.jpg"));
    fakeVouchers.add(Voucher.newInstance("3", "40% Off", "https://ak3.picdn.net/shutterstock/videos/22578913/thumb/10.jpg?i10c=img.resize(height:160)"));
    fakeVouchers.add(Voucher.newInstance("2", "10% Off", "http://2.bp.blogspot.com/-7PSprPolJS0/Uoj-GeXowAI/AAAAAAAABCY/XS0ZQEKZr70/s1600/10pct-nail_art_discount_voucher_code.jpg"));

    return Future<List<Voucher>>.value(fakeVouchers);
  }
}
