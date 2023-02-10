class ScheduleDriver {
  final int sDriverId;
  final int tanggal;
  final String asal;
  final String customer;
  final String tujuan;
  final String material;
  final String nomorPolisi;
  final String driver;
  final int noRekening;
  final int nomorSJ;
  final String jenis;
  final int ujt;
  final String grup;
  final String imageURL;
  final String noSchedule;
  final String pool;

  ScheduleDriver(
    {required this.sDriverId,
      required this.tanggal,
      required this.asal,
      required this.customer,
      required this.tujuan,
      required this.material,
      required this.nomorPolisi,
      required this.driver,
      required this.noRekening,
      required this.ujt,
      required this.jenis,
      required this.grup,
      required this.imageURL,
      required this.nomorSJ,
      required this.noSchedule,
      required this.pool});

  //List of Schedule data
  static List<ScheduleDriver> scheduleList = [
    ScheduleDriver(
      sDriverId: 0,
      tanggal: 20230130,
      asal: 'Depo Cianjur',
      customer : 'Mega Bata Indonesia',
      tujuan: 'Serpong',
      material: 'Bata Merah',
      nomorPolisi: 'B 9298 NEU',
      driver: 'AHMAD ARIFFUDIN',
      noRekening: 7890765433,
      jenis: 'Wing Box',
      ujt: 500000,
      grup: 'PT Sampurna Makmur Sejahtera',
      imageURL: 'assets/images/smslogo.png',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
    ScheduleDriver(
      sDriverId: 1,
      tanggal: 20230207,
      asal: 'Depo Cianjur',
      customer : 'Mega Bata Indonesia',
      tujuan: 'Serpong',
      material: 'Bata Merah',
      nomorPolisi: 'B 9298 NEU',
      driver: 'AHMAD ARIFFUDIN',
      noRekening: 7890765433,
      jenis: 'Wing Box',
      ujt: 500000,
      grup: 'PT Sampurna Makmur Sejahtera',
      imageURL: 'assets/images/smslogo.png',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
    ScheduleDriver(
      sDriverId: 2,
      tanggal: 20230208,
      asal: 'Depo Cianjur',
      customer : 'Mega Bata Indonesia',
      tujuan: 'Serpong',
      material: 'Bata Merah',
      nomorPolisi: 'B 9298 NEU',
      driver: 'AHMAD ARIFFUDIN',
      noRekening: 7890765433,
      jenis: 'Wing Box',
      ujt: 500000,
      grup: 'PT Sampurna Makmur Sejahtera',
      imageURL: 'assets/images/smslogo.png',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
    ScheduleDriver(
      sDriverId: 3,
      tanggal: 20230206,
      asal: 'Depo Cianjur',
      customer : 'Mega Bata Indonesia',
      tujuan: 'Serpong',
      material: 'Bata Merah',
      nomorPolisi: 'B 9298 NEU',
      driver: 'AHMAD ARIFFUDIN',
      noRekening: 7890765433,
      jenis: 'Wing Box',
      ujt: 500000,
      grup: 'PT Sampurna Makmur Sejahtera',
      imageURL: 'assets/images/smslogo.png',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
  ];
}