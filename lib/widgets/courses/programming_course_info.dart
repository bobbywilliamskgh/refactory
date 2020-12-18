import 'package:flutter/material.dart';

class ProgrammingCourseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
      child: Column(
        children: [
          Image.asset('assets/images/man_and_laptop.jpg'),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Kursus pemrograman untuk semua orang tanpa terkecuali',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Refactory Course dirancang untuk memudahkan setiap orang mampu meningkatkan keahlian dalam software engineering tanpa dibatasi oleh kesulitan akses, kesulitan waktu, batasan keahlian, ataupun usia.',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Dengan pembelajaran berdasarkan pengalaman nyata pengerjaan project, bagi pelajar/mahasiswa, Refactory Course akan melengkapi keahlian yang sudah diperoleh dalam studi sehingga dapat membuka kesempatan tak terbatas pada karir software engineering.',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Bagi karyawan atau tenaga profesional, Refactory Course dapat meningkatkan keahlian software engineer dalam menunjang menyelesaikan tugas pekerjaannya tanpa khawatir dengan keterbatasan waktu.',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Masyarakat secara luas juga dapat memanfaatkan pembelajaran untuk meningkatkan keahlian sehingga mampu berkarya dan mendapat keuntungan karir tanpa khawatir mahalnya belajar.',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Daftar Sekarang'),
          ),
        ],
      ),
    );
  }
}
