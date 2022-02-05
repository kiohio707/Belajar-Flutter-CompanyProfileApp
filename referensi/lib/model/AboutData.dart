class AboutData {
  int? id;
  String? Nama;
  String? Detail;
  String? Gambar;

  AboutData({
    this.id,
    this.Nama,
    this.Detail,
    this.Gambar,
  });

  factory AboutData.fromJson(Map<String, dynamic> json) {
    return AboutData(
      id: json['id'],
      Nama: json['Nama'],
      Detail: json['Detail'],
      Gambar: json['Gambar'],
    );
  }
}
