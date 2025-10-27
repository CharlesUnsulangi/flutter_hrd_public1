# AI Flutter Safety Guidelines
**Panduan Resmi untuk Pengembangan Aman, Stabil, dan Bebas Crash 99,99 %**

> **Versi:** 3.0
> **Tanggal:** 26 Oktober 2025
> **Status:** FINAL – **ANTI-CRASH EDITION**
> **Tujuan:** Menjamin AI & developer **tidak pernah menyebabkan crash, freeze, atau bug tak
terdeteksi** dalam aplikasi Flutter.

---

## Alur Kerja Pengembangan

(Diagram disertakan)

---

## 1. Arsitektur & Praktik Terbaik

- **State Management:** Menggunakan **Riverpod** untuk konsistensi.
- **Manajemen Aset:** Menggunakan `flutter_gen_runner` untuk akses aset yang aman. Jalankan
  `dart run build_runner build` setelah menambah aset.
- **Manajemen Konstanta:** Pusatkan semua string, dimensi, dan warna di `lib/utils/constants.dart`.

---

## 2. Struktur Proyek

(Diagram struktur folder disertakan)

---

## 3. Perintah CLI yang Berguna

| Kategori         | Perintah               | Deskripsi                                                     |
|------------------|------------------------|---------------------------------------------------------------|
| **Dependencies** | `flutter pub get`      | Mengunduh semua dependensi yang terdaftar di `pubspec.yaml`.  |
|                  | `flutter pub upgrade`  | Memperbarui dependensi ke versi terbaru yang diizinkan.       |
|                  | `flutter pub outdated` | Mengecek dependensi mana yang sudah usang.                    |
| **Build & Run**  | `flutter run`          | Menjalankan aplikasi dalam mode debug.                        |
|                  | `flutter build apk`    | Membuat file APK rilis untuk Android.                         |
| **Perbaikan**    | `flutter clean`        | Menghapus file build sementara untuk mengatasi masalah cache. |
|                  | `dart format .`        | Memformat semua file Dart di proyek sesuai standar.           |
| **Pengujian**    | `flutter test`         | Menjalankan semua unit dan widget test.                       |
|                  | `flutter drive`        | Menjalankan integration test (membutuhkan setup tambahan).    |
| **Pemeriksaan**  | `flutter analyze`      | Menganalisis kode untuk menemukan error dan warning.          |
|                  | `flutter doctor`       | Memeriksa kesehatan instalasi Flutter Anda.                   |

---

## 4. Panduan Pengkodean Lanjutan

(Detail checklist dan pola-pola lanjutan disertakan)
