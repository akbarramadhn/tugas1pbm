import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- BACKGROUND GRADASI ---
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF2193b0), // Biru laut
              Color(0xFF6dd5ed), // Biru muda cerah
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'TUGAS 1 PBM',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            
            // --- DISPLAY ANGKA DENGAN EFEK CARD ---
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white30),
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  '$_counter',
                  key: ValueKey<int>(_counter),
                  style: const TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black26,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 60),

            // --- TOMBOL-TOMBOL ---
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Reset
                _buildButton(
                  icon: Icons.refresh,
                  color: Colors.redAccent.withOpacity(0.8),
                  onPressed: _resetCounter,
                ),
                const SizedBox(width: 30),
                // Tombol Tambah
                _buildButton(
                  icon: Icons.add,
                  color: Colors.orangeAccent,
                  onPressed: _incrementCounter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi buat bikin tombol biar rapi
  Widget _buildButton({required IconData icon, required Color color, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Icon(icon, size: 40, color: Colors.white),
      ),
    );
  }
}