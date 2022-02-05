class HomeData {
  String? Nama;
  String? Keterangan;
  String? Gambar;

  HomeData({
    this.Nama,
    this.Keterangan,
    this.Gambar,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
      Nama: json['Nama'],
      Keterangan: json['Keterangan'],
      Gambar: json['Gambar'],
    );
  }
}
