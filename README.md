# 📱 Flutter Counter App - Tugas 1 PBM

Aplikasi counter sederhana dengan tampilan modern yang dibuat menggunakan Flutter sebagai bagian dari Tugas 1 mata kuliah PBM (Pemrograman Berbasis Mobile).

---

## ✨ Fitur Utama

* ➕ Menambahkan angka counter
* 🔄 Reset angka kembali ke nol
* 🎨 Tampilan modern dengan background gradasi
* ✨ Animasi transisi angka menggunakan `AnimatedSwitcher`
* 🔘 Tombol custom berbentuk lingkaran dengan efek bayangan
* 📱 UI sederhana, responsif, dan menarik

---

## 📸 Screenshot Aplikasi

> Hasil Aplikasi

<img width="1080" height="2288" alt="WhatsApp Image 2026-05-08 at 19 22 27" src="https://github.com/user-attachments/assets/d0d7b7ed-3908-4b3b-a28d-7def33d1b3f5" />


---

## 🛠️ Teknologi yang Digunakan

* Flutter
* Dart
* Material Design 3

---

## 📂 Struktur Project

```bash
lib/
 └── main.dart
```

---

## 🚀 Cara Menjalankan Project

### 1. Clone Repository

```bash
git clone https://github.com/username/nama-repository.git
```

### 2. Masuk ke Folder Project

```bash
cd nama-repository
```

### 3. Install Dependency

```bash
flutter pub get
```

### 4. Jalankan Aplikasi

```bash
flutter run
```

---

## 🎯 Tujuan Pembelajaran

Project ini dibuat untuk memahami:

* Penggunaan `StatefulWidget`
* Implementasi `setState()`
* Pembuatan custom UI di Flutter
* Penggunaan widget layout seperti:

  * `Column`
  * `Row`
  * `Container`
  * `GestureDetector`
* Penerapan animasi sederhana
* Pengelolaan tampilan modern pada aplikasi mobile

---

## 🧠 Penjelasan Kode

### Increment Counter

Menambahkan nilai counter setiap tombol plus ditekan.

```dart
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}
```

### Reset Counter

Mengembalikan nilai counter menjadi 0.

```dart
void _resetCounter() {
  setState(() {
    _counter = 0;
  });
}
```

### AnimatedSwitcher

Memberikan efek animasi saat angka berubah.

### LinearGradient

Digunakan untuk membuat background gradasi modern.

### Custom Button Widget

Menggunakan fungsi reusable `_buildButton()` agar kode lebih rapi.

---

## 🌟 Keunggulan Project

* Desain lebih menarik dibanding counter default Flutter
* Kode lebih terstruktur
* UI modern
* Cocok untuk tugas kuliah maupun portfolio GitHub
* Mudah dikembangkan lebih lanjut

---

---

## 👨‍🎓 Author

**Nama: M Akbar Ramadhan Ola Sili** 
**Mata Kuliah: Pemrograman Berbasis Mobile (PBM)** 
**Project: Tugas 1 Flutter**

---

## 📄 License

Project ini dibuat untuk keperluan pembelajaran dan tugas akademik.

---

## ⭐ Penutup

Project ini merupakan implementasi dasar Flutter dengan fokus pada:

* State management sederhana
* UI modern
* Animasi
* Interaksi pengguna

Semoga project ini dapat menjadi dasar pengembangan aplikasi Flutter yang lebih kompleks di masa mendatang.
