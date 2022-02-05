class GalleryData {
  int? id;
  String? Nama;
  String? Gambar;

  GalleryData({
    this.id,
    this.Nama,
    this.Gambar,
  });

  factory GalleryData.fromJson(Map<String, dynamic> json) {
    return GalleryData(
      id: json['id'],
      Nama: json['Nama'],
      Gambar: json['Gambar'],
    );
  }
}
