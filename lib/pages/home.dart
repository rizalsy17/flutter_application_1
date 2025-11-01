import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    'Halo, Verra 👋',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Aksi pencarian
                        },
                        icon: const Icon(Icons.search_outlined),
                      ),
                      IconButton(
                        onPressed: () {
                          // Aksi notifikasi
                        },
                        icon: const Icon(Icons.notifications_outlined),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                surfaceTintColor: const Color.fromARGB(255, 111, 130, 237),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
               child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),  
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                   colors: [const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 147, 161, 241),
                   ],
                    stops: const [0.05, 1.0],
                  ),
                
    ),
                
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Saldo Anda',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Rp 2.500.000',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.black87,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                ),
              ),
              

              const SizedBox(height: 30),

             Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    const Text(
      'Transaksi Terbaru',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),
          TextButton(
            onPressed: () {
              // Aksi jika tombol "See all" ditekan
              print('Lihat semua transaksi');
            },
            child: const Text(
              'See all',
              style: TextStyle(
                fontSize: 13,
                color: Colors.indigo,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
  Row(
  children: [
    // 🟥 Card Pengeluaran
    const SizedBox(width: 12),
    // 🟩 Card Pemasukan
    Expanded(
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.indigo,
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_downward_rounded,
                      color: Colors.white, size: 26),
                  SizedBox(width: 8),
                  Text(
                    'Pemasukan',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Rp 3.750.000',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Bulan ini',
                style: TextStyle(fontSize: 13, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    ),
     Expanded(
      child: Card(
        elevation: 6, // shadow lebih tebal
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.red, // merah lebih pekat
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_upward_rounded,
                      color: Colors.white, size: 26),
                  SizedBox(width: 8),
                  Text(
                    'Pengeluaran',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Rp 2.500.000',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Bulan ini',
                style: TextStyle(fontSize: 13, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    ),

    
  ],
)

            ],
          ),
        ),
      ),
    );
  }
}
