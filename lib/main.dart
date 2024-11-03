import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri',
      debugShowCheckedModeBanner: false, // Menyembunyikan tanda debug
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Foto Profil
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/khrisna.jpg'), // Ganti dengan path gambar Anda
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 20),
                  // Nama dan Slogan
                  Text(
                    'I Gede Khrisna Paramartha',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '"Saya Bangga Menjadi Bagian Undiknas"',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Tentang Saya
                  Text(
                    'Saya adalah seorang mahasiswa angkatan 2022 yang sedang mengeyam pendidikan di Universitas Pendidikan Nasional. Saya suka berpergian baik itu ke kota maupun ke desa, suka makan juga apalagi kalau ngemil jajan adalah favorit saya. Saya suka juga merakit Lego tetapi belum bisa membelinya karena harga mahal sekali. Sekarang saya sedang mempelajari flutter dan baru mengerti beberapa hal mengenai flutter',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  // identitas
                  infoCard(
                    title: 'IDENTITAS MAHASISWA',
                    children: [
                      Text('Nama Lengkap: I Gede Khrisna Paramartha', style: infoTextStyle),
                      Text('Panggilan: Khrisna', style: infoTextStyle),
                      Text('Nim: 42230053', style: infoTextStyle),
                      Text('Fakultas: Fakukltas Teknik dan Informatika', style: infoTextStyle),
                      Text('Prodi: Teknologi Informasi', style: infoTextStyle),
                    ],
                  ),
                  SizedBox(height: 10),
                  // kontak
                  infoCard(
                    title: 'KONTAK',
                    children: [
                      contactInfo(Icons.phone, '+6281337479210'),
                      contactInfo(Icons.email, 'johnlovelego@gmail.com'),
                      contactInfo(Icons.location_on, 'picco coffe canggu'),
                    ],
                  ),
                  SizedBox(height: 10),
                  // Kemampuan
                  infoCard(
                    title: 'KEMAMPUAN',
                    children: [
                      Text('1. Merakit Lego', style: infoTextStyle),
                      Text('2. Makan Semua yang Layak di Makan', style: infoTextStyle),
                      Text('3. Mendengar Keluh Kesah Teman', style: infoTextStyle),
                      Text('4. Membersihkan Lingkungan Tempat Tinggal', style: infoTextStyle),
                      Text('5. Pemrograman Bahasa Python dan Java', style: infoTextStyle),
                      Text('6. Tidur di Kasur yang Empuk', style: infoTextStyle),
                  
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 Widget infoCard({required String title, required List<Widget> children}) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.white, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Divider(color: Colors.white54),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 18),
          SizedBox(width: 10),
          Text(info, style: infoTextStyle),
        ],
      ),
    );
  }


  final TextStyle infoTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
}
