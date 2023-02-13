class SJSchedule {
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
  bool batang;
  bool serep;

  //Informasi 
  final int noDO;
  final String noContainer;
  final int noPTO;
  final int noDI;

  //Dokumen
  final String sJCust;
  final String sJSupp;
  final String note;

  //Dokumen
  bool sJback;
  final int backdate;
  final int shift;

  //Produk
  final String namaProduk;
  final int Qty;
  final String alamatKirim;

  SJSchedule(
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
      required this.pool,
      required this.batang,
      required this.serep,
      
      //Informasi 
      required this.noDO,
      required this.noContainer,
      required this.noPTO,
      required this.noDI,

      //Dokumen
      required this.sJCust,
      required this.sJSupp,
      required this.note,

      //Dokumen
      required this.sJback,
      required this.backdate,
      required this.shift,

      //Produk
      required this.namaProduk,
      required this.Qty,
      required this.alamatKirim,
      });

  //List of Surat Jalan Driver
  static List<SJSchedule> SJScheduleList = [
    SJSchedule(
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
      pool: 'Head Office',
      batang: true,
      serep: true,
      noDO: 0000000000,
      noContainer: 'ABCD0123456',
      noPTO: 000000000,
      noDI: 000000000,
      sJCust: 'CA2301004',
      sJback: true,
      note: '',
      sJSupp: 'CA2301004',
      backdate: 20230230,
      shift: 1,
      namaProduk: 'FMCG',
      Qty: 1000,
      alamatKirim: 'Tangerang'),
    SJSchedule(
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
      pool: 'Head Office',
      batang: true,
      serep: true,
      noDO: 0000000000,
      noContainer: 'ABCD0123456',
      noPTO: 000000000,
      noDI: 000000000,
      sJCust: 'CA2301004',
      sJback: true,
      note: '',
      sJSupp: 'CA2301004',
      backdate: 20230230,
      shift: 1,
      namaProduk: 'FMCG',
      Qty: 1000,
      alamatKirim: 'Tangerang'),
    SJSchedule(
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
      pool: 'Head Office',
      batang: true,
      serep: true,
      noDO: 0000000000,
      noContainer: 'ABCD0123456',
      noPTO: 000000000,
      noDI: 000000000,
      sJCust: 'CA2301004',
      sJback: true,
      note: '',
      sJSupp: 'CA2301004',
      backdate: 20230230,
      shift: 1,
      namaProduk: 'FMCG',
      Qty: 1000,
      alamatKirim: 'Tangerang'),
    SJSchedule(
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
      pool: 'Head Office',
      batang: true,
      serep: true,
      noDO: 0000000000,
      noContainer: 'ABCD0123456',
      noPTO: 000000000,
      noDI: 000000000,
      sJCust: 'CA2301004',
      sJback: true,
      note: '',
      sJSupp: 'CA2301004',
      backdate: 20230230,
      shift: 1,
      namaProduk: 'FMCG',
      Qty: 1000,
      alamatKirim: 'Tangerang'),
  ];
}