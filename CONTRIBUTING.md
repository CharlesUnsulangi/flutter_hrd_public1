# AI Flutter Safety Guidelines

**Panduan Resmi untuk Pengembangan Aman, Stabil, dan Bebas Crash 99,99 %**

> **Versi:** 3.0
> **Tanggal:** 26 Oktober 2025
> **Status:** FINAL – **ANTI-CRASH EDITION**
> **Tujuan:** Menjamin AI & developer **tidak pernah menyebabkan crash, freeze, atau bug tak
terdeteksi** dalam aplikasi Flutter.

---

## FILOSOFI UTAMA

> **“Verify first. Code safe. Crash never.”**
> **Lebih baik tanya 100 kali daripada satu crash di produksi.**

---

## 1. PRINSIP UTAMA (WAJIB DIPATUHI)

| No | Prinsip                         | Deskripsi                                                                |
|----|---------------------------------|--------------------------------------------------------------------------|
| 1  | **Analisis Terlebih Dahulu**    | Baca struktur proyek, `pubspec.yaml`, dan file terkait sebelum ubah kode |
| 2  | **Verifikasi Sebelum Mengubah** | Cek file ada, import lengkap, tidak ada konflik                          |
| 3  | **Incremental Changes**         | Ubah **satu per satu**, test, baru lanjut                                |
| 4  | **Rollback Jika Error**         | Simpan kode lama → kembalikan jika gagal                                 |

---

## 2. CHECKLIST KEAMANAN KODE

### Sebelum Menulis Kode

```markdown
[ ] Requirement 100% jelas?
[ ] Struktur folder & file dipahami?
[ ] Dependencies di pubspec.yaml dicek?
[ ] Potensi konflik terdeteksi?
```

### Saat Menulis Kode

```markdown
[ ] Null safety: ?, !, ??, late digunakan dengan benar
[ ] try-catch pada operasi berisiko (API calls, file I/O)
[ ] `const` constructor digunakan untuk widget statis demi performa
[ ] Key ditambahkan pada widget di dalam list (ValueKey/UniqueKey)
[ ] Hindari nested widget yang terlalu dalam (> 6 level)
[ ] `if (mounted)` digunakan sebelum `setState` di dalam operasi async
```
