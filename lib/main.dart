import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const HinokiSushiApp());
}

enum PlateColor {
  white(
    thaiName: 'จานสีขาว',
    jpKanji: '白皿',
    price: 30,
    plateColor: Color(0xFFFAF8F5),
    rimColor: Color(0xFFD6CFC2),
    textColor: Color(0xFF1C1917),
  ),
  red(
    thaiName: 'จานสีแดง',
    jpKanji: '赤皿',
    price: 40,
    plateColor: Color(0xFFB91C1C),
    rimColor: Color(0xFF7F1D1D),
    textColor: Colors.white,
  ),
  silver(
    thaiName: 'จานสีเงิน',
    jpKanji: '銀皿',
    price: 60,
    plateColor: Color(0xFFCBD5E1),
    rimColor: Color(0xFF64748B),
    textColor: Color(0xFF0F172A),
  ),
  gold(
    thaiName: 'จานสีทอง/เหลือง',
    jpKanji: '金皿',
    price: 80,
    plateColor: Color(0xFFD97706),
    rimColor: Color(0xFF92400E),
    textColor: Colors.white,
  ),
  black(
    thaiName: 'จานสีดำ',
    jpKanji: '黒皿',
    price: 120,
    plateColor: Color(0xFF1C1917),
    rimColor: Color(0xFF44403C),
    textColor: Color(0xFFFAF7F2),
  );

  const PlateColor({
    required this.thaiName,
    required this.jpKanji,
    required this.price,
    required this.plateColor,
    required this.rimColor,
    required this.textColor,
  });

  final String thaiName;
  final String jpKanji;
  final int price;
  final Color plateColor;
  final Color rimColor;
  final Color textColor;
}

class SushiItem {
  const SushiItem({
    required this.id,
    required this.plate,
    required this.thaiName,
    required this.jpName,
    required this.pieces,
    required this.description,
    required this.imageUrl,
  });

  final String id;
  final PlateColor plate;
  final String thaiName;
  final String jpName;
  final String pieces;
  final String description;
  final String imageUrl;
}

const List<SushiItem> kSushiMenu = [
  // ================= จานสีขาว 30 บาท =================
  SushiItem(
    id: 'tamago',
    plate: PlateColor.white,
    thaiName: 'ทามาโกะยากิ นิกิริ',
    jpName: '玉子握り',
    pieces: '2 คำ',
    description: 'ไข่หวานญี่ปุ่นย่างซุปดาชิ เนื้อนุ่มละมุน',
    imageUrl: 'https://images.unsplash.com/photo-1617196034183-421b4917c92d?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'inari',
    plate: PlateColor.white,
    thaiName: 'อินาริซูชิ',
    jpName: '稲荷寿司',
    pieces: '2 คำ',
    description: 'เต้าหู้ทอดปรุงรสสอดไส้ข้าวซูชิโรยงาขาว',
    imageUrl: 'https://images.unsplash.com/photo-1553621042-f6e147245754?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'kappa',
    plate: PlateColor.white,
    thaiName: 'กัปปะมากิ',
    jpName: 'かっぱ巻き',
    pieces: '6 คำ',
    description: 'ข้าวห่อสาหร่ายไส้แตงกวาญี่ปุ่นกรอบสดชื่น',
    imageUrl: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'kanikama',
    plate: PlateColor.white,
    thaiName: 'คานิกามะ (ปูอัด)',
    jpName: 'カニカマ',
    pieces: '2 คำ',
    description: 'ปูอัดเกรดพรีเมียม เนื้อนุ่มหวาน',
    imageUrl: 'https://images.unsplash.com/photo-1583623025817-d180a2221d0a?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'wakame',
    plate: PlateColor.white,
    thaiName: 'กุงกังยำสาหร่าย',
    jpName: 'わかめ軍艦',
    pieces: '2 คำ',
    description: 'ยำสาหร่ายญี่ปุ่นปรุงรสเปรี้ยวอมหวาน',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'kani_salad',
    plate: PlateColor.white,
    thaiName: 'สลัดปูอัด กุงกัง',
    jpName: 'カニサラダ軍艦',
    pieces: '2 คำ',
    description: 'ปูอัดฉีกคลุกเคล้ามายองเนสรสกลมกล่อม',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'corn_mayo',
    plate: PlateColor.white,
    thaiName: 'ข้าวโพดมายองเนส กุงกัง',
    jpName: 'コーンマヨ軍艦',
    pieces: '2 คำ',
    description: 'ข้าวโพดหวานคลุกมายองเนส เด็กๆ โปรดปราน',
    imageUrl: 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?q=80&w=200&auto=format&fit=crop',
  ),

  // ================= จานสีแดง 40 บาท =================
  SushiItem(
    id: 'salmon',
    plate: PlateColor.red,
    thaiName: 'แซลมอนนิกิริ',
    jpName: 'サーモン握り',
    pieces: '2 คำ',
    description: 'แซลมอนนอร์เวย์สดแล่ชิ้นหนา หวานมัน',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'maguro',
    plate: PlateColor.red,
    thaiName: 'อากามิ (ทูน่าเนื้อแดง)',
    jpName: '赤身握り',
    pieces: '2 คำ',
    description: 'ทูน่าเนื้อแดงไขมันต่ำ รสชาติปลาเข้มข้น',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'ebi',
    plate: PlateColor.red,
    thaiName: 'เอบินิกิริ',
    jpName: 'えび握り',
    pieces: '2 คำ',
    description: 'กุ้งต้มสุกตัวโตเนื้อเด้งบนข้าวซูชิ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'tako',
    plate: PlateColor.red,
    thaiName: 'ทาโกะ (หมึกยักษ์)',
    jpName: 'たこ握り',
    pieces: '2 คำ',
    description: 'หนวดหมึกยักษ์ต้มสุก เนื้อหนึบสู้ฟัน',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'saba',
    plate: PlateColor.red,
    thaiName: 'ซาบะดองนิกิริ',
    jpName: '〆さば握り',
    pieces: '2 คำ',
    description: 'ปลาซาบะดองสูตรเอโดะ ท็อปขิงซอยและต้นหอม',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'ika',
    plate: PlateColor.red,
    thaiName: 'อิกะ (หมึกกล้วย)',
    jpName: 'いか握り',
    pieces: '2 คำ',
    description: 'ปลาหมึกกล้วยเนื้อขาวใส หวานกรอบ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'spicy_salmon',
    plate: PlateColor.red,
    thaiName: 'สไปซี่แซลมอน กุงกัง',
    jpName: 'スパイシーサーモン',
    pieces: '2 คำ',
    description: 'แซลมอนสับคลุกซอสสไปซี่มาโย รสจัดจ้าน',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),

  // ================= จานสีเงิน 60 บาท =================
  SushiItem(
    id: 'salmon_aburi',
    plate: PlateColor.silver,
    thaiName: 'แซลมอนอาบุริชีส',
    jpName: '炙りサーモンチーズ',
    pieces: '2 คำ',
    description: 'แซลมอนเบิร์นไฟท็อปชีสและซอสเทริยากิ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'engawa',
    plate: PlateColor.silver,
    thaiName: 'เอนกาวะ (ครีบปลาตาเดียว)',
    jpName: 'えんがわ',
    pieces: '2 คำ',
    description: 'ครีบปลาตาเดียวเบิร์นไฟ หอมมันละลายในปาก',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'hotate',
    plate: PlateColor.silver,
    thaiName: 'โฮตาเตะยูซุ',
    jpName: '帆立柚子',
    pieces: '2 คำ',
    description: 'หอยเชลล์ฮอกไกโดสด แต่งกลิ่นส้มยูซุ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'amaebi',
    plate: PlateColor.silver,
    thaiName: 'อามะเอบิ (กุ้งหวาน)',
    jpName: '甘海老握り',
    pieces: '2 คำ',
    description: 'กุ้งหวานญี่ปุ่นตัวเล็ก เนื้อนุ่มหวานตามธรรมชาติ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'hamachi',
    plate: PlateColor.silver,
    thaiName: 'ฮามาจินิกิริ',
    jpName: 'はまち握り',
    pieces: '2 คำ',
    description: 'ปลาฮามาจิเนื้อนุ่มไขมันแทรกกำลังดี',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'negitoro',
    plate: PlateColor.silver,
    thaiName: 'เนกิโทโร่ กุงกัง',
    jpName: 'ネギトロ軍艦',
    pieces: '2 คำ',
    description: 'ทูน่าสับผสมต้นหอมญี่ปุ่น นุ่มละมุนลิ้น',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'aji',
    plate: PlateColor.silver,
    thaiName: 'อาจิ (ปลาทูญี่ปุ่น)',
    jpName: 'あじ握り',
    pieces: '2 คำ',
    description: 'ปลาทูญี่ปุ่นเนื้อแน่น ท็อปด้วยขิงซอยและต้นหอม',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),

  // ================= จานสีทอง/เหลือง 80 บาท =================
  SushiItem(
    id: 'ikura',
    plate: PlateColor.gold,
    thaiName: 'อิคุระกุงกัง',
    jpName: 'いくら軍艦',
    pieces: '2 คำ',
    description: 'ไข่ปลาแซลมอนหมักโชยุเม็ดเต่งเต็มคำ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'kanimiso',
    plate: PlateColor.gold,
    thaiName: 'คานิมิโซะ (มันปู)',
    jpName: 'かにみそ軍艦',
    pieces: '2 คำ',
    description: 'มันปูหิมะย่าง หอมมันเข้มข้นสไตล์ฮอกไกโด',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'unagi',
    plate: PlateColor.gold,
    thaiName: 'อุนะงิคาบายากิ',
    jpName: 'うなぎ蒲焼',
    pieces: '2 คำ',
    description: 'ปลาไหลญี่ปุ่นย่างถ่านทาซอสคาบายากิ',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'chutoro',
    plate: PlateColor.gold,
    thaiName: 'ชูโทโร่นิกิริ',
    jpName: '中トロ握り',
    pieces: '2 คำ',
    description: 'ทูน่าครีบน้ำเงินส่วนกลาง ไขมันนุ่มละมุน',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'hotate_mentaiko',
    plate: PlateColor.gold,
    thaiName: 'โฮตาเตะเบิร์น เมนไทโกะ',
    jpName: '帆立明太炙り',
    pieces: '2 คำ',
    description: 'หอยเชลล์ฮอกไกโดเบิร์นไฟ ท็อปซอสไข่ปลาคอด',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'madai',
    plate: PlateColor.gold,
    thaiName: 'มาได (ปลากะพงแดงญี่ปุ่น)',
    jpName: '真鯛握り',
    pieces: '2 คำ',
    description: 'ปลากะพงแดงญี่ปุ่นเนื้อขาวใส หวานละมุน',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),

  // ================= จานสีดำ 120 บาท =================
  SushiItem(
    id: 'otoro',
    plate: PlateColor.black,
    thaiName: 'โอโทโร่นิกิริ',
    jpName: '大トロ握り',
    pieces: '1 คำใหญ่',
    description: 'ท้องปลาทูน่าครีบน้ำเงินเกรดสูงสุด ละลายในปาก',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'uni',
    plate: PlateColor.black,
    thaiName: 'ฮอกไกโดอูนิ กุงกัง',
    jpName: '北海道うに軍艦',
    pieces: '1 คำ',
    description: 'ไข่หอยเม่นบาฟุนฮอกไกโด ครีมมี่หวานลึก',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'botanebi',
    plate: PlateColor.black,
    thaiName: 'โบตันเอบิ (กุ้งหวานยักษ์)',
    jpName: 'ぼたん海老',
    pieces: '1 คำ',
    description: 'กุ้งโบตันตัวใหญ่ เนื้อหวานกรอบ เกรดพรีเมียม',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'wagyu',
    plate: PlateColor.black,
    thaiName: 'มิยาซากิวากิว A5 อาบุริ',
    jpName: 'A5和牛炙り',
    pieces: '1 คำ',
    description: 'เนื้อวากิว A5 เบิร์นไฟ โรยเกลือและวาซาบิสด',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'foie_gras',
    plate: PlateColor.black,
    thaiName: 'ฟัวกราส์ นิกิริ',
    jpName: 'フォアグラ握り',
    pieces: '1 คำ',
    description: 'ตับห่านฝรั่งเศสเบิร์นไฟ หอมมันละลายในปาก',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
  SushiItem(
    id: 'awabi',
    plate: PlateColor.black,
    thaiName: 'อะวาบิ (เป๋าฮื้อสด)',
    jpName: 'あわび握り',
    pieces: '1 คำ',
    description: 'หอยเป๋าฮื้อสดเนื้อกรุบกรอบ เกรดพรีเมียม',
    imageUrl: 'https://images.unsplash.com/photo-1611143669185-af224c5e3252?q=80&w=200&auto=format&fit=crop',
  ),
];

class HinokiSushiApp extends StatelessWidget {
  const HinokiSushiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hinoki Kaiten Sushi — 回転寿司 檜',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F2EC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB91C1C),
          surface: const Color(0xFFF5F2EC),
          primary: const Color(0xFFB91C1C),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1C1917),
          foregroundColor: Color(0xFFFAF7F2),
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const SushiOrderScreen(),
    );
  }
}

class SushiOrderScreen extends StatefulWidget {
  const SushiOrderScreen({super.key});

  @override
  State<SushiOrderScreen> createState() => _SushiOrderScreenState();
}

class _SushiOrderScreenState extends State<SushiOrderScreen> {
  PlateColor? _selectedPlate;
  final Map<String, int> _itemCounts = {};
  
  // ตัวแปรสำหรับเก็บจำนวนจานที่กรอกเองด้วยคีย์บอร์ด
  final Map<PlateColor, int> _manualPlateCounts = {
    for (final p in PlateColor.values) p: 0,
  };

  double get _subtotal {
    double sum = 0;
    for (final item in kSushiMenu) {
      sum += (_itemCounts[item.id] ?? 0) * item.plate.price;
    }
    for (final plate in PlateColor.values) {
      sum += (_manualPlateCounts[plate] ?? 0) * plate.price;
    }
    return sum;
  }

  double get _serviceCharge => _subtotal * 0.10;
  double get _grandTotal => _subtotal + _serviceCharge;

  int get _totalPlates {
    final menuPlates = _itemCounts.values.fold(0, (a, b) => a + b);
    final stackPlates = _manualPlateCounts.values.fold(0, (a, b) => a + b);
    return menuPlates + stackPlates;
  }

  void _addItem(String id) {
    setState(() => _itemCounts[id] = (_itemCounts[id] ?? 0) + 1);
  }

  void _removeItem(String id) {
    setState(() {
      final current = _itemCounts[id] ?? 0;
      if (current <= 1) {
        _itemCounts.remove(id);
      } else {
        _itemCounts[id] = current - 1;
      }
    });
  }

  // ฟังก์ชันเปิดหน้าจอพิมพ์จำนวนจานแบบ Custom Keypad (แก้ไขบัค Navigator.push แล้ว)
  void _openManualPlateKeypad() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ManualPlateKeypadScreen(
          initialCounts: Map.from(_manualPlateCounts),
        ),
      ),
    );

    if (result != null) {
      setState(() {
        _manualPlateCounts.addAll(result);
      });
    }
  }

  void _showBillSheet() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                '御会計表 · สรุปบิลค่าอาหาร',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1C1917),
                ),
              ),
              const SizedBox(height: 24),
              _BillRow(
                label: 'จำนวนจานจากเมนู',
                value: '${_itemCounts.values.fold(0, (a, b) => a + b)} จาน',
              ),
              const SizedBox(height: 8),
              _BillRow(
                label: 'จำนวนจานที่กรอกเอง',
                value: '${_manualPlateCounts.values.fold(0, (a, b) => a + b)} จาน',
              ),
              const SizedBox(height: 8),
              _BillRow(
                label: 'จำนวนจานทั้งหมด',
                value: '$_totalPlates จาน',
                isBold: true,
              ),
              const SizedBox(height: 12),
              _BillRow(
                label: 'ราคาก่อนค่าบริการ (Subtotal)',
                value: '฿${_subtotal.toStringAsFixed(2)}',
              ),
              const SizedBox(height: 12),
              _BillRow(
                label: 'ค่าบริการ 10% (Service Charge)',
                value: '+฿${_serviceCharge.toStringAsFixed(2)}',
                valueColor: const Color(0xFFB91C1C),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(height: 1, color: Color(0xFFE5DDD0)),
              ),
              _BillRow(
                label: 'ยอดสุทธิหลังค่าบริการ (Grand Total)',
                value: '฿${_grandTotal.toStringAsFixed(2)}',
                isBold: true,
              ),
              const SizedBox(height: 28),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFFB91C1C),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () async {
                  final amount = _grandTotal.toStringAsFixed(2);
                  final url = Uri.parse('https://ppqr.app/?amount=$amount');
                  
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  }

                  setState(() {
                    _itemCounts.clear();
                    for (final p in PlateColor.values) {
                      _manualPlateCounts[p] = 0;
                    }
                  });
                  if (context.mounted) Navigator.pop(context);
                },
                child: const Text(
                  'ชำระเงินและเริ่มโต๊ะใหม่',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final visibleMenu = _selectedPlate == null
        ? kSushiMenu
        : kSushiMenu.where((m) => m.plate == _selectedPlate).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '回転寿司 檜 · Hinoki Sushi',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextButton.icon(
              onPressed: _totalPlates > 0 ? _showBillSheet : null,
              icon: const Icon(Icons.receipt_long, color: Color(0xFFFAF7F2), size: 20),
              label: Text(
                'บิล ($_totalPlates)',
                style: const TextStyle(color: Color(0xFFFAF7F2), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // แถบเลือกสีจาน
          Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F2EC),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: const Text('ทั้งหมด'),
                    selected: _selectedPlate == null,
                    onSelected: (_) => setState(() => _selectedPlate = null),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    showCheckmark: false,
                    selectedColor: const Color(0xFFE5DDD0),
                    backgroundColor: Colors.white,
                    side: BorderSide.none,
                  ),
                ),
                ...PlateColor.values.map((plate) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      avatar: CircleAvatar(
                        backgroundColor: plate.plateColor,
                        radius: 8,
                      ),
                      label: Text('${plate.thaiName} ฿${plate.price}'),
                      selected: _selectedPlate == plate,
                      onSelected: (_) => setState(() => _selectedPlate = plate),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      showCheckmark: false,
                      selectedColor: const Color(0xFFE5DDD0),
                      backgroundColor: Colors.white,
                      side: BorderSide.none,
                    ),
                  );
                }),
              ],
            ),
          ),

          // รายการเมนูซูชิแบบการ์ดพร้อมรูปภาพ
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              itemCount: visibleMenu.length,
              itemBuilder: (context, index) {
                final item = visibleMenu[index];
                final qty = _itemCounts[item.id] ?? 0;

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // รูปภาพและตราประจำสีจาน
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              item.imageUrl,
                              width: 64,
                              height: 64,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 64,
                                  height: 64,
                                  color: item.plate.plateColor.withOpacity(0.1),
                                  alignment: Alignment.center,
                                  child: Text(
                                    item.plate.jpKanji,
                                    style: TextStyle(
                                      color: item.plate.plateColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                color: item.plate.plateColor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(12),
                                ),
                                border: Border.all(color: item.plate.rimColor, width: 1),
                              ),
                              child: Text(
                                item.plate.jpKanji,
                                style: TextStyle(
                                  color: item.plate.textColor,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      // รายละเอียดเมนู
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${item.thaiName} · ${item.jpName}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xFF1C1917),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '${item.pieces} · ฿${item.plate.price}',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB91C1C),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              item.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Color(0xFF78716C),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      // ปุ่มเพิ่มลดจำนวน
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F2EC),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (qty > 0) ...[
                              IconButton(
                                onPressed: () => _removeItem(item.id),
                                icon: const Icon(Icons.remove, size: 18, color: Color(0xFF44403C)),
                                constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
                                padding: EdgeInsets.zero,
                              ),
                              SizedBox(
                                width: 20,
                                child: Text(
                                  '$qty',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                ),
                              ),
                            ] else 
                              const SizedBox(width: 8),
                            IconButton(
                              onPressed: () => _addItem(item.id),
                              icon: const Icon(Icons.add, size: 18, color: Color(0xFFB91C1C)),
                              constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // แถบแสดงสรุปราคาแบบลอยตัวด้านล่าง
          Container(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 20,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _BillRow(
                    label: 'ราคาก่อนค่าบริการ (Subtotal)',
                    value: '฿${_subtotal.toStringAsFixed(2)}',
                  ),
                  const SizedBox(height: 8),
                  _BillRow(
                    label: 'ค่าบริการ 10% (Service Charge)',
                    value: '+฿${_serviceCharge.toStringAsFixed(2)}',
                    valueColor: const Color(0xFFB91C1C),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Divider(height: 1, color: Color(0xFFE5DDD0)),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ยอดสุทธิ (Grand Total)',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF78716C),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '฿${_grandTotal.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1C1917),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ปุ่มเปิด Custom Keypad สำหรับระบุจำนวนจาน
                      IconButton.filled(
                        onPressed: _openManualPlateKeypad,
                        style: IconButton.styleFrom(
                          backgroundColor: const Color(0xFF1C1917),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        icon: const Icon(Icons.keyboard, size: 22),
                      ),
                      const SizedBox(width: 8),
                      // ปุ่มชำระเงิน
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFFB91C1C),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: _totalPlates > 0 ? _showBillSheet : null,
                        icon: const Icon(Icons.payment, size: 20),
                        label: const Text(
                          'เช็คบิล',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ----------------------------------------------------
// หน้าจอคีย์บอร์ดพิมพ์จำนวนจานแบบ Custom (Responsive)
// ----------------------------------------------------
class ManualPlateKeypadScreen extends StatefulWidget {
  final Map<PlateColor, int> initialCounts;

  const ManualPlateKeypadScreen({
    super.key,
    required this.initialCounts,
  });

  @override
  State<ManualPlateKeypadScreen> createState() => _ManualPlateKeypadScreenState();
}

class _ManualPlateKeypadScreenState extends State<ManualPlateKeypadScreen> {
  late Map<PlateColor, int> _tempCounts;
  PlateColor _selectedPlate = PlateColor.white;
  String _currentInput = '0';

  @override
  void initState() {
    super.initState();
    _tempCounts = Map.from(widget.initialCounts);
    _currentInput = _tempCounts[_selectedPlate].toString();
  }

  void _onKeyPress(String val) {
    setState(() {
      if (_currentInput == '0') {
        _currentInput = val;
      } else {
        // จำกัดไม่ให้พิมพ์จำนวนจานเกิน 3 หลัก (สูงสุด 999)
        if (_currentInput.length < 3) {
          _currentInput += val;
        }
      }
      _tempCounts[_selectedPlate] = int.parse(_currentInput);
    });
  }

  void _onBackspace() {
    setState(() {
      if (_currentInput.length > 1) {
        _currentInput = _currentInput.substring(0, _currentInput.length - 1);
      } else {
        _currentInput = '0';
      }
      _tempCounts[_selectedPlate] = int.parse(_currentInput);
    });
  }

  void _onSaveAndClose() {
    Navigator.pop(context, _tempCounts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      body: SafeArea(
        child: Column(
          children: [
            // ส่วนบนสุด: แสดงผลลัพธ์และปุ่มปิด
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close, color: Colors.white70),
                  ),
                  Row(
                    children: [
                      const Text(
                        'RESULT  ',
                        style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'PRICE  ',
                        style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'AMOUNT',
                        style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // หน้าจอแสดงผลตัวเลข (Large Input)
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'จานสี${_selectedPlate.thaiName.replaceAll("จานสี", "")} (฿${_selectedPlate.price})',
                      style: TextStyle(color: _selectedPlate.plateColor, fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    // ป้องกันตัวเลขใหญ่เกินจอเมื่อความสูงน้อย
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          _currentInput,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 84,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ปุ่มตัวเลือกสีจาน 5 ระดับราคา
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: PlateColor.values.map((plate) {
                    final isSelected = _selectedPlate == plate;
                    final plateCount = _tempCounts[plate] ?? 0;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedPlate = plate;
                          _currentInput = plateCount.toString();
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.white.withOpacity(0.15) : Colors.transparent,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: isSelected ? Colors.white : Colors.white30,
                            width: isSelected ? 1.5 : 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: plate.plateColor,
                              radius: 7,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '${plate.price}฿',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                fontSize: 13,
                              ),
                            ),
                            if (plateCount > 0) ...[
                              const SizedBox(width: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFB91C1C),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '$plateCount',
                                  style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // ตารางปุ่มกดตัวเลข (Keypad Grid 4x3) ปรับให้ Responsive
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildNumKey('7'),
                          _buildNumKey('8'),
                          _buildNumKey('9'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildNumKey('4'),
                          _buildNumKey('5'),
                          _buildNumKey('6'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildNumKey('1'),
                          _buildNumKey('2'),
                          _buildNumKey('3'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // ปุ่มตกลง (✓)
                          Expanded(
                            child: InkWell(
                              onTap: _onSaveAndClose,
                              borderRadius: BorderRadius.circular(40),
                              child: const Center(
                                child: Icon(Icons.check, color: Colors.white, size: 26),
                              ),
                            ),
                          ),
                          _buildNumKey('0'),
                          // ปุ่มลบกลับ (Backspace)
                          Expanded(
                            child: InkWell(
                              onTap: _onBackspace,
                              borderRadius: BorderRadius.circular(40),
                              child: const Center(
                                child: Icon(Icons.backspace_outlined, color: Colors.white, size: 24),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ลิขสิทธิ์ / ข้อมูลผู้เขียนล่างสุด
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                '© 2026 Phumrapee L. | Home GitHub',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันช่วยสร้างปุ่มกดตัวเลขแต่ละอัน
  Widget _buildNumKey(String num) {
    return Expanded(
      child: InkWell(
        onTap: () => _onKeyPress(num),
        borderRadius: BorderRadius.circular(40),
        child: Center(
          child: Text(
            num,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// แถวรายงานสรุปรายละเอียดค่าใช้จ่ายในบิล
// ----------------------------------------------------
class _BillRow extends StatelessWidget {
  const _BillRow({
    required this.label,
    required this.value,
    this.isBold = false,
    this.valueColor,
  });

  final String label;
  final String value;
  final bool isBold;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
            color: isBold ? const Color(0xFF1C1917) : const Color(0xFF57534E),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isBold ? 18 : 15,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            color: valueColor ?? const Color(0xFF1C1917),
          ),
        ),
      ],
    );
  }
}