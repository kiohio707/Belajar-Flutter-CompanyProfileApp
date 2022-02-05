class ProfilData {
  int? id;
  String? Nama;
  String? Keterangan;
  String? Gambar;

  ProfilData({
    this.id,
    this.Nama,
    this.Keterangan,
    this.Gambar,
  });

  factory ProfilData.fromJson(Map<String, dynamic> json) {
    return ProfilData(
      id: json['id'],
      Nama: json['Nama'],
      Keterangan: json['Keterangan'],
      Gambar: json['Gambar'],
    );
  }
}
