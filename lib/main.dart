
import 'package:flutter/material.dart';
import 'package:app_empty_indriii/profil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F5FC),
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String nama = 'Findri Ana';
    const String npm = '25670016';
    const String prodi = 'Teknik Informatika';
    const String universitas = 'Universitas PGRI Semarang';
    const String email = 'findriana786@email.com';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F5FC),
        elevation: 0,
        title: const Text(
          'Beranda',
          style: TextStyle(
            color: Color(0xFF29234D),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(
              Icons.notifications_none_rounded,
              color: Color(0xFF29234D),
              size: 27,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Sapaan
            const Text(
              'Halo, Selamat Datang!',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF29234D),
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'Senang melihatmu kembali 👋',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            // Kartu profil utama
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF5145A5),
                    Color(0xFF8276D9),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withValues(alpha: 0.20),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Row(
                    children: [
                      Icon(
                        Icons.school_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 9),
                      Text(
                        'STUDENT PROFILE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  Row(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/image1.jpeg',
                            width: 75,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nama,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'NPM: $npm',
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              prodi,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Divider(color: Colors.white38),

                  const SizedBox(height: 8),

                  const Row(
                    children: [
                      Icon(
                        Icons.account_balance_rounded,
                        color: Colors.white,
                        size: 19,
                      ),
                      SizedBox(width: 9),
                      Expanded(
                        child: Text(
                          'Universitas PGRI Semarang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // Judul informasi
            const Text(
              'Informasi Mahasiswa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF29234D),
              ),
            ),

            const SizedBox(height: 15),

            // Kartu informasi
            Row(
              children: [
                Expanded(
                  child: infoCard(
                    Icons.badge_outlined,
                    'NPM',
                    npm,
                    const Color(0xFFEAE7FF),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: infoCard(
                    Icons.menu_book_rounded,
                    'Program Studi',
                    'Informatika',
                    const Color(0xFFE2EEFF),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Tombol menuju profil
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lihat Profil Lengkap',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF29234D),
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Lihat informasi pribadi mahasiswa lebih lengkap.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profil(
                              nama: nama,
                              npm: npm,
                              prodi: prodi,
                              universitas: universitas,
                              email: email,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.person_outline),
                      label: const Text('Lihat Profil'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5145A5),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Center(
              child: Text(
                '© 2026 Profil Mahasiswa',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  // Widget kartu informasi
  Widget infoCard(
    IconData icon,
    String judul,
    String isi,
    Color warna,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 5,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: warna,
            child: Icon(
              icon,
              color: const Color(0xFF5145A5),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            judul,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            isi,
            style: const TextStyle(
              color: Color(0xFF29234D),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
