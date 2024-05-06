import 'package:realm/realm.dart';
part 'schemas.realm.dart';

@RealmModel()
class _Variant {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  DateTime? deletedAt;

  String? name;
  String? color;
  String? sku;

  int? productId;
  String? unit;
  String? productName;
  int? branchId;
  String? taxName;
  double taxPercentage = 0.0;

  bool isTaxExempted = false;

  // add RRA fields
  String? itemSeq;
  // insurance code
  String? isrccCd;
  // insurance name
  String? isrccNm;
  // premium rate
  String? isrcRt;
  // insurance amount
  String? isrcAmt;
  // taxation type code.
  String? taxTyCd;
  // bar code
  String? bcd;
  // Item code
  String? itemClsCd;
  // Item type code
  String? itemTyCd;
  // Item standard name
  String? itemStdNm;
  // Item origin
  String? orgnNatCd;
  // packaging unit code
  String? pkg;
  // item code
  String? itemCd;

  String? pkgUnitCd;

  String? qtyUnitCd;
  // same as name but for rra happiness
  String? itemNm;
  double qty = 0.0;
  // unit price
  double prc = 0.0;
  // supply amount
  double splyAmt = 0.0;
  int? tin;
  String? bhfId;
  double? dftPrc;
  String? addInfo;
  String? isrcAplcbYn;
  String? useYn;
  String? regrId;
  String? regrNm;
  String? modrId;
  String? modrNm;

  /// property for stock but presented here for easy
  double rsdQty = 0.0;

  DateTime? lastTouched;

  double supplyPrice = 0.0;

  double retailPrice = 0.0;

  String? action;

  /// these fields are empty in normal business when this item is owned by a business
  /// but in case when this item is owned by a supplier then these fields will be filled
  /// this is the case after purchase action is done
  String? spplrItemClsCd;
  String? spplrItemCd;
  String? spplrItemNm;

  /// because we can call EBM server to notify about new item saved into our stock
  /// and this operation might fail at time of us making the call and our software can work offline
  /// with no disturbing the operation, we added this field to help us know when to try to re-submit the data
  /// to EBM in case of failure
  bool ebmSynced = false;
}

@RealmModel()
class _Stock {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  ObjectId? realmId;
  int? tin;
  String? bhfId;

  int? branchId;
  int? variantId;
  double lowStock = 0;
  double currentStock = 0.0;

  bool? canTrackingStock = true;
  bool? showLowStockAlert = true;

  int? productId;
  bool? active;
  // the value of stock is currentStock * retailPrice
  double value = 0.0;
  // RRA fields
  double rsdQty = 0.0;

  double supplyPrice = 0.0;
  double retailPrice = 0.0;

  DateTime? lastTouched;

  String? action;

  DateTime? deletedAt;

  /// because we can call EBM server to notify about new item saved into our stock
  /// and this operation might fail at time of us making the call and our software can work offline
  /// with no disturbing the operation, we added this field to help us know when to try to re-submit the data
  /// to EBM in case of failure
  bool ebmSynced = false;
}
