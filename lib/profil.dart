
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  final String nama;
  final String npm;
  final String prodi;
  final String universitas;
  final String email;

  const Profil({
    super.key,
    required this.nama,
    required this.npm,
    required this.prodi,
    required this.universitas,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 94, 123, 218),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 15),

            // FOTO PROFIL
            ClipOval(
              child: Image.asset(
                'assets/images/image1.jpeg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const CircleAvatar(
                    radius: 60,
                    child: Icon(Icons.person, size: 70),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            Text(
              nama,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // KARTU IDENTITAS MAHASISWA
            Card(
              elevation: 4,
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: Color.fromARGB(255, 94, 123, 218),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Identitas Mahasiswa',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    infoItem(Icons.person, 'Nama', nama),

                    const Divider(),

                    infoItem(Icons.badge, 'NPM', npm),

                    const Divider(),

                    infoItem(Icons.school, 'Program Studi', prodi),

                    const Divider(),

                    infoItem(
                      Icons.account_balance,
                      'Universitas',
                      universitas,
                    ),

                    const Divider(),

                    infoItem(Icons.email, 'Email', email),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // KARTU EXPERIENCE
            Card(
              elevation: 4,
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 8,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Row(
                      children: [
                        Icon(
                          Icons.workspace_premium,
                          color: Color.fromARGB(255, 94, 123, 218),
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Experience',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    experienceItem(
                      Icons.design_services,
                      'UI/UX Design',
                      'Mempelajari desain antarmuka dan pengalaman pengguna menggunakan Figma.',
                    ),

                    const Divider(),

                    experienceItem(
                      Icons.code,
                      'Web Development',
                      'Membuat dan mengembangkan halaman website menggunakan HTML dan CSS.',
                    ),

                    const Divider(),

                    experienceItem(
                      Icons.palette,
                      'Digital Illustration',
                      'Membuat ilustrasi digital dan mempelajari berbagai teknik desain.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // TOMBOL KEMBALI
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 94, 123, 218),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  // WIDGET INFORMASI IDENTITAS
  Widget infoItem(IconData icon, String judul, String isi) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: Row(
        children: [

          Icon(
            icon,
            color: const Color.fromARGB(255, 94, 123, 218),
            size: 25,
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  judul,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  isi,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // WIDGET EXPERIENCE
  Widget experienceItem(
    IconData icon,
    String judul,
    String deskripsi,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Icon(
            icon,
            color: const Color.fromARGB(255, 94, 123, 218),
            size: 25,
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  judul,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  deskripsi,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
