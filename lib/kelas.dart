class Kelas {
  String kelas;
  String nama;
  String keterangan;
  String lk;
  String pr;

  Kelas({
    required this.kelas,
    required this.nama,
    required this.keterangan,
    required this.lk,
    required this.pr,
  });
}

var KelasList = [
  Kelas(
    kelas: '12 IPA 4',
    nama: 'Inforsa',
    keterangan: 'Kelas yang berada di Angktan 28',
    lk: '11',
    pr: '18',
  ),
  Kelas(
    kelas: '12 IPs 3',
    nama: 'Infasa',
    keterangan: 'Kelas yang berada di Angktan 28',
    lk: '8',
    pr: '23',
  ),
];
