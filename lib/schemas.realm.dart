// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Variant extends _Variant with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Variant(
    ObjectId realmId, {
    int? id,
    DateTime? deletedAt,
    String? name,
    String? color,
    String? sku,
    int? productId,
    String? unit,
    String? productName,
    int? branchId,
    String? taxName,
    double taxPercentage = 0.0,
    bool isTaxExempted = false,
    String? itemSeq,
    String? isrccCd,
    String? isrccNm,
    String? isrcRt,
    String? isrcAmt,
    String? taxTyCd,
    String? bcd,
    String? itemClsCd,
    String? itemTyCd,
    String? itemStdNm,
    String? orgnNatCd,
    String? pkg,
    String? itemCd,
    String? pkgUnitCd,
    String? qtyUnitCd,
    String? itemNm,
    double qty = 0.0,
    double prc = 0.0,
    double splyAmt = 0.0,
    int? tin,
    String? bhfId,
    double? dftPrc,
    String? addInfo,
    String? isrcAplcbYn,
    String? useYn,
    String? regrId,
    String? regrNm,
    String? modrId,
    String? modrNm,
    double rsdQty = 0.0,
    DateTime? lastTouched,
    double supplyPrice = 0.0,
    double retailPrice = 0.0,
    String? action,
    String? spplrItemClsCd,
    String? spplrItemCd,
    String? spplrItemNm,
    bool ebmSynced = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Variant>({
        'taxPercentage': 0.0,
        'isTaxExempted': false,
        'qty': 0.0,
        'prc': 0.0,
        'splyAmt': 0.0,
        'rsdQty': 0.0,
        'supplyPrice': 0.0,
        'retailPrice': 0.0,
        'ebmSynced': false,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, '_id', realmId);
    RealmObjectBase.set(this, 'deletedAt', deletedAt);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'color', color);
    RealmObjectBase.set(this, 'sku', sku);
    RealmObjectBase.set(this, 'productId', productId);
    RealmObjectBase.set(this, 'unit', unit);
    RealmObjectBase.set(this, 'productName', productName);
    RealmObjectBase.set(this, 'branchId', branchId);
    RealmObjectBase.set(this, 'taxName', taxName);
    RealmObjectBase.set(this, 'taxPercentage', taxPercentage);
    RealmObjectBase.set(this, 'isTaxExempted', isTaxExempted);
    RealmObjectBase.set(this, 'itemSeq', itemSeq);
    RealmObjectBase.set(this, 'isrccCd', isrccCd);
    RealmObjectBase.set(this, 'isrccNm', isrccNm);
    RealmObjectBase.set(this, 'isrcRt', isrcRt);
    RealmObjectBase.set(this, 'isrcAmt', isrcAmt);
    RealmObjectBase.set(this, 'taxTyCd', taxTyCd);
    RealmObjectBase.set(this, 'bcd', bcd);
    RealmObjectBase.set(this, 'itemClsCd', itemClsCd);
    RealmObjectBase.set(this, 'itemTyCd', itemTyCd);
    RealmObjectBase.set(this, 'itemStdNm', itemStdNm);
    RealmObjectBase.set(this, 'orgnNatCd', orgnNatCd);
    RealmObjectBase.set(this, 'pkg', pkg);
    RealmObjectBase.set(this, 'itemCd', itemCd);
    RealmObjectBase.set(this, 'pkgUnitCd', pkgUnitCd);
    RealmObjectBase.set(this, 'qtyUnitCd', qtyUnitCd);
    RealmObjectBase.set(this, 'itemNm', itemNm);
    RealmObjectBase.set(this, 'qty', qty);
    RealmObjectBase.set(this, 'prc', prc);
    RealmObjectBase.set(this, 'splyAmt', splyAmt);
    RealmObjectBase.set(this, 'tin', tin);
    RealmObjectBase.set(this, 'bhfId', bhfId);
    RealmObjectBase.set(this, 'dftPrc', dftPrc);
    RealmObjectBase.set(this, 'addInfo', addInfo);
    RealmObjectBase.set(this, 'isrcAplcbYn', isrcAplcbYn);
    RealmObjectBase.set(this, 'useYn', useYn);
    RealmObjectBase.set(this, 'regrId', regrId);
    RealmObjectBase.set(this, 'regrNm', regrNm);
    RealmObjectBase.set(this, 'modrId', modrId);
    RealmObjectBase.set(this, 'modrNm', modrNm);
    RealmObjectBase.set(this, 'rsdQty', rsdQty);
    RealmObjectBase.set(this, 'lastTouched', lastTouched);
    RealmObjectBase.set(this, 'supplyPrice', supplyPrice);
    RealmObjectBase.set(this, 'retailPrice', retailPrice);
    RealmObjectBase.set(this, 'action', action);
    RealmObjectBase.set(this, 'spplrItemClsCd', spplrItemClsCd);
    RealmObjectBase.set(this, 'spplrItemCd', spplrItemCd);
    RealmObjectBase.set(this, 'spplrItemNm', spplrItemNm);
    RealmObjectBase.set(this, 'ebmSynced', ebmSynced);
  }

  Variant._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  ObjectId get realmId =>
      RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set realmId(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  DateTime? get deletedAt =>
      RealmObjectBase.get<DateTime>(this, 'deletedAt') as DateTime?;
  @override
  set deletedAt(DateTime? value) =>
      RealmObjectBase.set(this, 'deletedAt', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get color => RealmObjectBase.get<String>(this, 'color') as String?;
  @override
  set color(String? value) => RealmObjectBase.set(this, 'color', value);

  @override
  String? get sku => RealmObjectBase.get<String>(this, 'sku') as String?;
  @override
  set sku(String? value) => RealmObjectBase.set(this, 'sku', value);

  @override
  int? get productId => RealmObjectBase.get<int>(this, 'productId') as int?;
  @override
  set productId(int? value) => RealmObjectBase.set(this, 'productId', value);

  @override
  String? get unit => RealmObjectBase.get<String>(this, 'unit') as String?;
  @override
  set unit(String? value) => RealmObjectBase.set(this, 'unit', value);

  @override
  String? get productName =>
      RealmObjectBase.get<String>(this, 'productName') as String?;
  @override
  set productName(String? value) =>
      RealmObjectBase.set(this, 'productName', value);

  @override
  int? get branchId => RealmObjectBase.get<int>(this, 'branchId') as int?;
  @override
  set branchId(int? value) => RealmObjectBase.set(this, 'branchId', value);

  @override
  String? get taxName =>
      RealmObjectBase.get<String>(this, 'taxName') as String?;
  @override
  set taxName(String? value) => RealmObjectBase.set(this, 'taxName', value);

  @override
  double get taxPercentage =>
      RealmObjectBase.get<double>(this, 'taxPercentage') as double;
  @override
  set taxPercentage(double value) =>
      RealmObjectBase.set(this, 'taxPercentage', value);

  @override
  bool get isTaxExempted =>
      RealmObjectBase.get<bool>(this, 'isTaxExempted') as bool;
  @override
  set isTaxExempted(bool value) =>
      RealmObjectBase.set(this, 'isTaxExempted', value);

  @override
  String? get itemSeq =>
      RealmObjectBase.get<String>(this, 'itemSeq') as String?;
  @override
  set itemSeq(String? value) => RealmObjectBase.set(this, 'itemSeq', value);

  @override
  String? get isrccCd =>
      RealmObjectBase.get<String>(this, 'isrccCd') as String?;
  @override
  set isrccCd(String? value) => RealmObjectBase.set(this, 'isrccCd', value);

  @override
  String? get isrccNm =>
      RealmObjectBase.get<String>(this, 'isrccNm') as String?;
  @override
  set isrccNm(String? value) => RealmObjectBase.set(this, 'isrccNm', value);

  @override
  String? get isrcRt => RealmObjectBase.get<String>(this, 'isrcRt') as String?;
  @override
  set isrcRt(String? value) => RealmObjectBase.set(this, 'isrcRt', value);

  @override
  String? get isrcAmt =>
      RealmObjectBase.get<String>(this, 'isrcAmt') as String?;
  @override
  set isrcAmt(String? value) => RealmObjectBase.set(this, 'isrcAmt', value);

  @override
  String? get taxTyCd =>
      RealmObjectBase.get<String>(this, 'taxTyCd') as String?;
  @override
  set taxTyCd(String? value) => RealmObjectBase.set(this, 'taxTyCd', value);

  @override
  String? get bcd => RealmObjectBase.get<String>(this, 'bcd') as String?;
  @override
  set bcd(String? value) => RealmObjectBase.set(this, 'bcd', value);

  @override
  String? get itemClsCd =>
      RealmObjectBase.get<String>(this, 'itemClsCd') as String?;
  @override
  set itemClsCd(String? value) => RealmObjectBase.set(this, 'itemClsCd', value);

  @override
  String? get itemTyCd =>
      RealmObjectBase.get<String>(this, 'itemTyCd') as String?;
  @override
  set itemTyCd(String? value) => RealmObjectBase.set(this, 'itemTyCd', value);

  @override
  String? get itemStdNm =>
      RealmObjectBase.get<String>(this, 'itemStdNm') as String?;
  @override
  set itemStdNm(String? value) => RealmObjectBase.set(this, 'itemStdNm', value);

  @override
  String? get orgnNatCd =>
      RealmObjectBase.get<String>(this, 'orgnNatCd') as String?;
  @override
  set orgnNatCd(String? value) => RealmObjectBase.set(this, 'orgnNatCd', value);

  @override
  String? get pkg => RealmObjectBase.get<String>(this, 'pkg') as String?;
  @override
  set pkg(String? value) => RealmObjectBase.set(this, 'pkg', value);

  @override
  String? get itemCd => RealmObjectBase.get<String>(this, 'itemCd') as String?;
  @override
  set itemCd(String? value) => RealmObjectBase.set(this, 'itemCd', value);

  @override
  String? get pkgUnitCd =>
      RealmObjectBase.get<String>(this, 'pkgUnitCd') as String?;
  @override
  set pkgUnitCd(String? value) => RealmObjectBase.set(this, 'pkgUnitCd', value);

  @override
  String? get qtyUnitCd =>
      RealmObjectBase.get<String>(this, 'qtyUnitCd') as String?;
  @override
  set qtyUnitCd(String? value) => RealmObjectBase.set(this, 'qtyUnitCd', value);

  @override
  String? get itemNm => RealmObjectBase.get<String>(this, 'itemNm') as String?;
  @override
  set itemNm(String? value) => RealmObjectBase.set(this, 'itemNm', value);

  @override
  double get qty => RealmObjectBase.get<double>(this, 'qty') as double;
  @override
  set qty(double value) => RealmObjectBase.set(this, 'qty', value);

  @override
  double get prc => RealmObjectBase.get<double>(this, 'prc') as double;
  @override
  set prc(double value) => RealmObjectBase.set(this, 'prc', value);

  @override
  double get splyAmt => RealmObjectBase.get<double>(this, 'splyAmt') as double;
  @override
  set splyAmt(double value) => RealmObjectBase.set(this, 'splyAmt', value);

  @override
  int? get tin => RealmObjectBase.get<int>(this, 'tin') as int?;
  @override
  set tin(int? value) => RealmObjectBase.set(this, 'tin', value);

  @override
  String? get bhfId => RealmObjectBase.get<String>(this, 'bhfId') as String?;
  @override
  set bhfId(String? value) => RealmObjectBase.set(this, 'bhfId', value);

  @override
  double? get dftPrc => RealmObjectBase.get<double>(this, 'dftPrc') as double?;
  @override
  set dftPrc(double? value) => RealmObjectBase.set(this, 'dftPrc', value);

  @override
  String? get addInfo =>
      RealmObjectBase.get<String>(this, 'addInfo') as String?;
  @override
  set addInfo(String? value) => RealmObjectBase.set(this, 'addInfo', value);

  @override
  String? get isrcAplcbYn =>
      RealmObjectBase.get<String>(this, 'isrcAplcbYn') as String?;
  @override
  set isrcAplcbYn(String? value) =>
      RealmObjectBase.set(this, 'isrcAplcbYn', value);

  @override
  String? get useYn => RealmObjectBase.get<String>(this, 'useYn') as String?;
  @override
  set useYn(String? value) => RealmObjectBase.set(this, 'useYn', value);

  @override
  String? get regrId => RealmObjectBase.get<String>(this, 'regrId') as String?;
  @override
  set regrId(String? value) => RealmObjectBase.set(this, 'regrId', value);

  @override
  String? get regrNm => RealmObjectBase.get<String>(this, 'regrNm') as String?;
  @override
  set regrNm(String? value) => RealmObjectBase.set(this, 'regrNm', value);

  @override
  String? get modrId => RealmObjectBase.get<String>(this, 'modrId') as String?;
  @override
  set modrId(String? value) => RealmObjectBase.set(this, 'modrId', value);

  @override
  String? get modrNm => RealmObjectBase.get<String>(this, 'modrNm') as String?;
  @override
  set modrNm(String? value) => RealmObjectBase.set(this, 'modrNm', value);

  @override
  double get rsdQty => RealmObjectBase.get<double>(this, 'rsdQty') as double;
  @override
  set rsdQty(double value) => RealmObjectBase.set(this, 'rsdQty', value);

  @override
  DateTime? get lastTouched =>
      RealmObjectBase.get<DateTime>(this, 'lastTouched') as DateTime?;
  @override
  set lastTouched(DateTime? value) =>
      RealmObjectBase.set(this, 'lastTouched', value);

  @override
  double get supplyPrice =>
      RealmObjectBase.get<double>(this, 'supplyPrice') as double;
  @override
  set supplyPrice(double value) =>
      RealmObjectBase.set(this, 'supplyPrice', value);

  @override
  double get retailPrice =>
      RealmObjectBase.get<double>(this, 'retailPrice') as double;
  @override
  set retailPrice(double value) =>
      RealmObjectBase.set(this, 'retailPrice', value);

  @override
  String? get action => RealmObjectBase.get<String>(this, 'action') as String?;
  @override
  set action(String? value) => RealmObjectBase.set(this, 'action', value);

  @override
  String? get spplrItemClsCd =>
      RealmObjectBase.get<String>(this, 'spplrItemClsCd') as String?;
  @override
  set spplrItemClsCd(String? value) =>
      RealmObjectBase.set(this, 'spplrItemClsCd', value);

  @override
  String? get spplrItemCd =>
      RealmObjectBase.get<String>(this, 'spplrItemCd') as String?;
  @override
  set spplrItemCd(String? value) =>
      RealmObjectBase.set(this, 'spplrItemCd', value);

  @override
  String? get spplrItemNm =>
      RealmObjectBase.get<String>(this, 'spplrItemNm') as String?;
  @override
  set spplrItemNm(String? value) =>
      RealmObjectBase.set(this, 'spplrItemNm', value);

  @override
  bool get ebmSynced => RealmObjectBase.get<bool>(this, 'ebmSynced') as bool;
  @override
  set ebmSynced(bool value) => RealmObjectBase.set(this, 'ebmSynced', value);

  @override
  Stream<RealmObjectChanges<Variant>> get changes =>
      RealmObjectBase.getChanges<Variant>(this);

  @override
  Stream<RealmObjectChanges<Variant>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Variant>(this, keyPaths);

  @override
  Variant freeze() => RealmObjectBase.freezeObject<Variant>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      '_id': realmId.toEJson(),
      'deletedAt': deletedAt.toEJson(),
      'name': name.toEJson(),
      'color': color.toEJson(),
      'sku': sku.toEJson(),
      'productId': productId.toEJson(),
      'unit': unit.toEJson(),
      'productName': productName.toEJson(),
      'branchId': branchId.toEJson(),
      'taxName': taxName.toEJson(),
      'taxPercentage': taxPercentage.toEJson(),
      'isTaxExempted': isTaxExempted.toEJson(),
      'itemSeq': itemSeq.toEJson(),
      'isrccCd': isrccCd.toEJson(),
      'isrccNm': isrccNm.toEJson(),
      'isrcRt': isrcRt.toEJson(),
      'isrcAmt': isrcAmt.toEJson(),
      'taxTyCd': taxTyCd.toEJson(),
      'bcd': bcd.toEJson(),
      'itemClsCd': itemClsCd.toEJson(),
      'itemTyCd': itemTyCd.toEJson(),
      'itemStdNm': itemStdNm.toEJson(),
      'orgnNatCd': orgnNatCd.toEJson(),
      'pkg': pkg.toEJson(),
      'itemCd': itemCd.toEJson(),
      'pkgUnitCd': pkgUnitCd.toEJson(),
      'qtyUnitCd': qtyUnitCd.toEJson(),
      'itemNm': itemNm.toEJson(),
      'qty': qty.toEJson(),
      'prc': prc.toEJson(),
      'splyAmt': splyAmt.toEJson(),
      'tin': tin.toEJson(),
      'bhfId': bhfId.toEJson(),
      'dftPrc': dftPrc.toEJson(),
      'addInfo': addInfo.toEJson(),
      'isrcAplcbYn': isrcAplcbYn.toEJson(),
      'useYn': useYn.toEJson(),
      'regrId': regrId.toEJson(),
      'regrNm': regrNm.toEJson(),
      'modrId': modrId.toEJson(),
      'modrNm': modrNm.toEJson(),
      'rsdQty': rsdQty.toEJson(),
      'lastTouched': lastTouched.toEJson(),
      'supplyPrice': supplyPrice.toEJson(),
      'retailPrice': retailPrice.toEJson(),
      'action': action.toEJson(),
      'spplrItemClsCd': spplrItemClsCd.toEJson(),
      'spplrItemCd': spplrItemCd.toEJson(),
      'spplrItemNm': spplrItemNm.toEJson(),
      'ebmSynced': ebmSynced.toEJson(),
    };
  }

  static EJsonValue _toEJson(Variant value) => value.toEJson();
  static Variant _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        '_id': EJsonValue realmId,
        'deletedAt': EJsonValue deletedAt,
        'name': EJsonValue name,
        'color': EJsonValue color,
        'sku': EJsonValue sku,
        'productId': EJsonValue productId,
        'unit': EJsonValue unit,
        'productName': EJsonValue productName,
        'branchId': EJsonValue branchId,
        'taxName': EJsonValue taxName,
        'taxPercentage': EJsonValue taxPercentage,
        'isTaxExempted': EJsonValue isTaxExempted,
        'itemSeq': EJsonValue itemSeq,
        'isrccCd': EJsonValue isrccCd,
        'isrccNm': EJsonValue isrccNm,
        'isrcRt': EJsonValue isrcRt,
        'isrcAmt': EJsonValue isrcAmt,
        'taxTyCd': EJsonValue taxTyCd,
        'bcd': EJsonValue bcd,
        'itemClsCd': EJsonValue itemClsCd,
        'itemTyCd': EJsonValue itemTyCd,
        'itemStdNm': EJsonValue itemStdNm,
        'orgnNatCd': EJsonValue orgnNatCd,
        'pkg': EJsonValue pkg,
        'itemCd': EJsonValue itemCd,
        'pkgUnitCd': EJsonValue pkgUnitCd,
        'qtyUnitCd': EJsonValue qtyUnitCd,
        'itemNm': EJsonValue itemNm,
        'qty': EJsonValue qty,
        'prc': EJsonValue prc,
        'splyAmt': EJsonValue splyAmt,
        'tin': EJsonValue tin,
        'bhfId': EJsonValue bhfId,
        'dftPrc': EJsonValue dftPrc,
        'addInfo': EJsonValue addInfo,
        'isrcAplcbYn': EJsonValue isrcAplcbYn,
        'useYn': EJsonValue useYn,
        'regrId': EJsonValue regrId,
        'regrNm': EJsonValue regrNm,
        'modrId': EJsonValue modrId,
        'modrNm': EJsonValue modrNm,
        'rsdQty': EJsonValue rsdQty,
        'lastTouched': EJsonValue lastTouched,
        'supplyPrice': EJsonValue supplyPrice,
        'retailPrice': EJsonValue retailPrice,
        'action': EJsonValue action,
        'spplrItemClsCd': EJsonValue spplrItemClsCd,
        'spplrItemCd': EJsonValue spplrItemCd,
        'spplrItemNm': EJsonValue spplrItemNm,
        'ebmSynced': EJsonValue ebmSynced,
      } =>
        Variant(
          fromEJson(realmId),
          id: fromEJson(id),
          deletedAt: fromEJson(deletedAt),
          name: fromEJson(name),
          color: fromEJson(color),
          sku: fromEJson(sku),
          productId: fromEJson(productId),
          unit: fromEJson(unit),
          productName: fromEJson(productName),
          branchId: fromEJson(branchId),
          taxName: fromEJson(taxName),
          taxPercentage: fromEJson(taxPercentage),
          isTaxExempted: fromEJson(isTaxExempted),
          itemSeq: fromEJson(itemSeq),
          isrccCd: fromEJson(isrccCd),
          isrccNm: fromEJson(isrccNm),
          isrcRt: fromEJson(isrcRt),
          isrcAmt: fromEJson(isrcAmt),
          taxTyCd: fromEJson(taxTyCd),
          bcd: fromEJson(bcd),
          itemClsCd: fromEJson(itemClsCd),
          itemTyCd: fromEJson(itemTyCd),
          itemStdNm: fromEJson(itemStdNm),
          orgnNatCd: fromEJson(orgnNatCd),
          pkg: fromEJson(pkg),
          itemCd: fromEJson(itemCd),
          pkgUnitCd: fromEJson(pkgUnitCd),
          qtyUnitCd: fromEJson(qtyUnitCd),
          itemNm: fromEJson(itemNm),
          qty: fromEJson(qty),
          prc: fromEJson(prc),
          splyAmt: fromEJson(splyAmt),
          tin: fromEJson(tin),
          bhfId: fromEJson(bhfId),
          dftPrc: fromEJson(dftPrc),
          addInfo: fromEJson(addInfo),
          isrcAplcbYn: fromEJson(isrcAplcbYn),
          useYn: fromEJson(useYn),
          regrId: fromEJson(regrId),
          regrNm: fromEJson(regrNm),
          modrId: fromEJson(modrId),
          modrNm: fromEJson(modrNm),
          rsdQty: fromEJson(rsdQty),
          lastTouched: fromEJson(lastTouched),
          supplyPrice: fromEJson(supplyPrice),
          retailPrice: fromEJson(retailPrice),
          action: fromEJson(action),
          spplrItemClsCd: fromEJson(spplrItemClsCd),
          spplrItemCd: fromEJson(spplrItemCd),
          spplrItemNm: fromEJson(spplrItemNm),
          ebmSynced: fromEJson(ebmSynced),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Variant._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Variant, 'Variant', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('realmId', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('deletedAt', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('color', RealmPropertyType.string, optional: true),
      SchemaProperty('sku', RealmPropertyType.string, optional: true),
      SchemaProperty('productId', RealmPropertyType.int, optional: true),
      SchemaProperty('unit', RealmPropertyType.string, optional: true),
      SchemaProperty('productName', RealmPropertyType.string, optional: true),
      SchemaProperty('branchId', RealmPropertyType.int, optional: true),
      SchemaProperty('taxName', RealmPropertyType.string, optional: true),
      SchemaProperty('taxPercentage', RealmPropertyType.double),
      SchemaProperty('isTaxExempted', RealmPropertyType.bool),
      SchemaProperty('itemSeq', RealmPropertyType.string, optional: true),
      SchemaProperty('isrccCd', RealmPropertyType.string, optional: true),
      SchemaProperty('isrccNm', RealmPropertyType.string, optional: true),
      SchemaProperty('isrcRt', RealmPropertyType.string, optional: true),
      SchemaProperty('isrcAmt', RealmPropertyType.string, optional: true),
      SchemaProperty('taxTyCd', RealmPropertyType.string, optional: true),
      SchemaProperty('bcd', RealmPropertyType.string, optional: true),
      SchemaProperty('itemClsCd', RealmPropertyType.string, optional: true),
      SchemaProperty('itemTyCd', RealmPropertyType.string, optional: true),
      SchemaProperty('itemStdNm', RealmPropertyType.string, optional: true),
      SchemaProperty('orgnNatCd', RealmPropertyType.string, optional: true),
      SchemaProperty('pkg', RealmPropertyType.string, optional: true),
      SchemaProperty('itemCd', RealmPropertyType.string, optional: true),
      SchemaProperty('pkgUnitCd', RealmPropertyType.string, optional: true),
      SchemaProperty('qtyUnitCd', RealmPropertyType.string, optional: true),
      SchemaProperty('itemNm', RealmPropertyType.string, optional: true),
      SchemaProperty('qty', RealmPropertyType.double),
      SchemaProperty('prc', RealmPropertyType.double),
      SchemaProperty('splyAmt', RealmPropertyType.double),
      SchemaProperty('tin', RealmPropertyType.int, optional: true),
      SchemaProperty('bhfId', RealmPropertyType.string, optional: true),
      SchemaProperty('dftPrc', RealmPropertyType.double, optional: true),
      SchemaProperty('addInfo', RealmPropertyType.string, optional: true),
      SchemaProperty('isrcAplcbYn', RealmPropertyType.string, optional: true),
      SchemaProperty('useYn', RealmPropertyType.string, optional: true),
      SchemaProperty('regrId', RealmPropertyType.string, optional: true),
      SchemaProperty('regrNm', RealmPropertyType.string, optional: true),
      SchemaProperty('modrId', RealmPropertyType.string, optional: true),
      SchemaProperty('modrNm', RealmPropertyType.string, optional: true),
      SchemaProperty('rsdQty', RealmPropertyType.double),
      SchemaProperty('lastTouched', RealmPropertyType.timestamp,
          optional: true),
      SchemaProperty('supplyPrice', RealmPropertyType.double),
      SchemaProperty('retailPrice', RealmPropertyType.double),
      SchemaProperty('action', RealmPropertyType.string, optional: true),
      SchemaProperty('spplrItemClsCd', RealmPropertyType.string,
          optional: true),
      SchemaProperty('spplrItemCd', RealmPropertyType.string, optional: true),
      SchemaProperty('spplrItemNm', RealmPropertyType.string, optional: true),
      SchemaProperty('ebmSynced', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Stock extends _Stock with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Stock(
    ObjectId? realmId, {
    int? id,
    int? tin,
    String? bhfId,
    int? branchId,
    int? variantId,
    double lowStock = 0,
    double currentStock = 0.0,
    bool? canTrackingStock = true,
    bool? showLowStockAlert = true,
    int? productId,
    bool? active,
    double value = 0.0,
    double rsdQty = 0.0,
    double supplyPrice = 0.0,
    double retailPrice = 0.0,
    DateTime? lastTouched,
    String? action,
    DateTime? deletedAt,
    bool ebmSynced = false,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Stock>({
        'lowStock': 0,
        'currentStock': 0.0,
        'canTrackingStock': true,
        'showLowStockAlert': true,
        'value': 0.0,
        'rsdQty': 0.0,
        'supplyPrice': 0.0,
        'retailPrice': 0.0,
        'ebmSynced': false,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, '_id', realmId);
    RealmObjectBase.set(this, 'tin', tin);
    RealmObjectBase.set(this, 'bhfId', bhfId);
    RealmObjectBase.set(this, 'branchId', branchId);
    RealmObjectBase.set(this, 'variantId', variantId);
    RealmObjectBase.set(this, 'lowStock', lowStock);
    RealmObjectBase.set(this, 'currentStock', currentStock);
    RealmObjectBase.set(this, 'canTrackingStock', canTrackingStock);
    RealmObjectBase.set(this, 'showLowStockAlert', showLowStockAlert);
    RealmObjectBase.set(this, 'productId', productId);
    RealmObjectBase.set(this, 'active', active);
    RealmObjectBase.set(this, 'value', value);
    RealmObjectBase.set(this, 'rsdQty', rsdQty);
    RealmObjectBase.set(this, 'supplyPrice', supplyPrice);
    RealmObjectBase.set(this, 'retailPrice', retailPrice);
    RealmObjectBase.set(this, 'lastTouched', lastTouched);
    RealmObjectBase.set(this, 'action', action);
    RealmObjectBase.set(this, 'deletedAt', deletedAt);
    RealmObjectBase.set(this, 'ebmSynced', ebmSynced);
  }

  Stock._();

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  ObjectId? get realmId =>
      RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set realmId(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  int? get tin => RealmObjectBase.get<int>(this, 'tin') as int?;
  @override
  set tin(int? value) => RealmObjectBase.set(this, 'tin', value);

  @override
  String? get bhfId => RealmObjectBase.get<String>(this, 'bhfId') as String?;
  @override
  set bhfId(String? value) => RealmObjectBase.set(this, 'bhfId', value);

  @override
  int? get branchId => RealmObjectBase.get<int>(this, 'branchId') as int?;
  @override
  set branchId(int? value) => RealmObjectBase.set(this, 'branchId', value);

  @override
  int? get variantId => RealmObjectBase.get<int>(this, 'variantId') as int?;
  @override
  set variantId(int? value) => RealmObjectBase.set(this, 'variantId', value);

  @override
  double get lowStock =>
      RealmObjectBase.get<double>(this, 'lowStock') as double;
  @override
  set lowStock(double value) => RealmObjectBase.set(this, 'lowStock', value);

  @override
  double get currentStock =>
      RealmObjectBase.get<double>(this, 'currentStock') as double;
  @override
  set currentStock(double value) =>
      RealmObjectBase.set(this, 'currentStock', value);

  @override
  bool? get canTrackingStock =>
      RealmObjectBase.get<bool>(this, 'canTrackingStock') as bool?;
  @override
  set canTrackingStock(bool? value) =>
      RealmObjectBase.set(this, 'canTrackingStock', value);

  @override
  bool? get showLowStockAlert =>
      RealmObjectBase.get<bool>(this, 'showLowStockAlert') as bool?;
  @override
  set showLowStockAlert(bool? value) =>
      RealmObjectBase.set(this, 'showLowStockAlert', value);

  @override
  int? get productId => RealmObjectBase.get<int>(this, 'productId') as int?;
  @override
  set productId(int? value) => RealmObjectBase.set(this, 'productId', value);

  @override
  bool? get active => RealmObjectBase.get<bool>(this, 'active') as bool?;
  @override
  set active(bool? value) => RealmObjectBase.set(this, 'active', value);

  @override
  double get value => RealmObjectBase.get<double>(this, 'value') as double;
  @override
  set value(double value) => RealmObjectBase.set(this, 'value', value);

  @override
  double get rsdQty => RealmObjectBase.get<double>(this, 'rsdQty') as double;
  @override
  set rsdQty(double value) => RealmObjectBase.set(this, 'rsdQty', value);

  @override
  double get supplyPrice =>
      RealmObjectBase.get<double>(this, 'supplyPrice') as double;
  @override
  set supplyPrice(double value) =>
      RealmObjectBase.set(this, 'supplyPrice', value);

  @override
  double get retailPrice =>
      RealmObjectBase.get<double>(this, 'retailPrice') as double;
  @override
  set retailPrice(double value) =>
      RealmObjectBase.set(this, 'retailPrice', value);

  @override
  DateTime? get lastTouched =>
      RealmObjectBase.get<DateTime>(this, 'lastTouched') as DateTime?;
  @override
  set lastTouched(DateTime? value) =>
      RealmObjectBase.set(this, 'lastTouched', value);

  @override
  String? get action => RealmObjectBase.get<String>(this, 'action') as String?;
  @override
  set action(String? value) => RealmObjectBase.set(this, 'action', value);

  @override
  DateTime? get deletedAt =>
      RealmObjectBase.get<DateTime>(this, 'deletedAt') as DateTime?;
  @override
  set deletedAt(DateTime? value) =>
      RealmObjectBase.set(this, 'deletedAt', value);

  @override
  bool get ebmSynced => RealmObjectBase.get<bool>(this, 'ebmSynced') as bool;
  @override
  set ebmSynced(bool value) => RealmObjectBase.set(this, 'ebmSynced', value);

  @override
  Stream<RealmObjectChanges<Stock>> get changes =>
      RealmObjectBase.getChanges<Stock>(this);

  @override
  Stream<RealmObjectChanges<Stock>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Stock>(this, keyPaths);

  @override
  Stock freeze() => RealmObjectBase.freezeObject<Stock>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      '_id': realmId.toEJson(),
      'tin': tin.toEJson(),
      'bhfId': bhfId.toEJson(),
      'branchId': branchId.toEJson(),
      'variantId': variantId.toEJson(),
      'lowStock': lowStock.toEJson(),
      'currentStock': currentStock.toEJson(),
      'canTrackingStock': canTrackingStock.toEJson(),
      'showLowStockAlert': showLowStockAlert.toEJson(),
      'productId': productId.toEJson(),
      'active': active.toEJson(),
      'value': value.toEJson(),
      'rsdQty': rsdQty.toEJson(),
      'supplyPrice': supplyPrice.toEJson(),
      'retailPrice': retailPrice.toEJson(),
      'lastTouched': lastTouched.toEJson(),
      'action': action.toEJson(),
      'deletedAt': deletedAt.toEJson(),
      'ebmSynced': ebmSynced.toEJson(),
    };
  }

  static EJsonValue _toEJson(Stock value) => value.toEJson();
  static Stock _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        '_id': EJsonValue realmId,
        'tin': EJsonValue tin,
        'bhfId': EJsonValue bhfId,
        'branchId': EJsonValue branchId,
        'variantId': EJsonValue variantId,
        'lowStock': EJsonValue lowStock,
        'currentStock': EJsonValue currentStock,
        'canTrackingStock': EJsonValue canTrackingStock,
        'showLowStockAlert': EJsonValue showLowStockAlert,
        'productId': EJsonValue productId,
        'active': EJsonValue active,
        'value': EJsonValue value,
        'rsdQty': EJsonValue rsdQty,
        'supplyPrice': EJsonValue supplyPrice,
        'retailPrice': EJsonValue retailPrice,
        'lastTouched': EJsonValue lastTouched,
        'action': EJsonValue action,
        'deletedAt': EJsonValue deletedAt,
        'ebmSynced': EJsonValue ebmSynced,
      } =>
        Stock(
          fromEJson(realmId),
          id: fromEJson(id),
          tin: fromEJson(tin),
          bhfId: fromEJson(bhfId),
          branchId: fromEJson(branchId),
          variantId: fromEJson(variantId),
          lowStock: fromEJson(lowStock),
          currentStock: fromEJson(currentStock),
          canTrackingStock: fromEJson(canTrackingStock),
          showLowStockAlert: fromEJson(showLowStockAlert),
          productId: fromEJson(productId),
          active: fromEJson(active),
          value: fromEJson(value),
          rsdQty: fromEJson(rsdQty),
          supplyPrice: fromEJson(supplyPrice),
          retailPrice: fromEJson(retailPrice),
          lastTouched: fromEJson(lastTouched),
          action: fromEJson(action),
          deletedAt: fromEJson(deletedAt),
          ebmSynced: fromEJson(ebmSynced),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Stock._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Stock, 'Stock', [
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('realmId', RealmPropertyType.objectid,
          mapTo: '_id', optional: true, primaryKey: true),
      SchemaProperty('tin', RealmPropertyType.int, optional: true),
      SchemaProperty('bhfId', RealmPropertyType.string, optional: true),
      SchemaProperty('branchId', RealmPropertyType.int, optional: true),
      SchemaProperty('variantId', RealmPropertyType.int, optional: true),
      SchemaProperty('lowStock', RealmPropertyType.double),
      SchemaProperty('currentStock', RealmPropertyType.double),
      SchemaProperty('canTrackingStock', RealmPropertyType.bool,
          optional: true),
      SchemaProperty('showLowStockAlert', RealmPropertyType.bool,
          optional: true),
      SchemaProperty('productId', RealmPropertyType.int, optional: true),
      SchemaProperty('active', RealmPropertyType.bool, optional: true),
      SchemaProperty('value', RealmPropertyType.double),
      SchemaProperty('rsdQty', RealmPropertyType.double),
      SchemaProperty('supplyPrice', RealmPropertyType.double),
      SchemaProperty('retailPrice', RealmPropertyType.double),
      SchemaProperty('lastTouched', RealmPropertyType.timestamp,
          optional: true),
      SchemaProperty('action', RealmPropertyType.string, optional: true),
      SchemaProperty('deletedAt', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('ebmSynced', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
