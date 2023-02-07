class ScheduleDriver {
  final int sDriverId;
  final int tanggal;
  final String asal;
  final String tujuan;
  final int nomorSJ;
  final String noSchedule;
  final String pool;

  ScheduleDriver(
    {required this.sDriverId,
      required this.tanggal,
      required this.asal,
      required this.tujuan,
      required this.nomorSJ,
      required this.noSchedule,
      required this.pool});

  //List of Schedule data
  static List<ScheduleDriver> scheduleList = [
    ScheduleDriver(
      sDriverId: 0,
      tanggal: 2023,
      asal: 'Depo Cianjur',
      tujuan: 'MYR - Tangerang - Tangerang ',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
    ScheduleDriver(
      sDriverId: 1,
      tanggal: 20230207,
      asal: 'Depo Cianjur',
      tujuan: 'MYR - Tangerang',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
    ScheduleDriver(
      sDriverId: 2,
      tanggal: 20230208,
      asal: 'Depo Cianjur',
      tujuan: 'MYR - Tangerang',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
    ScheduleDriver(
      sDriverId: 3,
      tanggal: 20230206,
      asal: 'Depo Cianjur',
      tujuan: 'MYR - Tangerang',
      nomorSJ: 3230100005,
      noSchedule: 'CA2301004',
      pool: 'Head Office'),
  ];
}