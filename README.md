# flutter_hrd_public

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---

## Development Guidelines

For a detailed guide on our development philosophy and process, please see our [**Contributing
Guidelines**](CONTRIBUTING.md).

To maintain code quality and minimize errors, this project follows these core principles:

### 1. Static Analysis

This project uses [`very_good_analysis`](https://pub.dev/packages/very_good_analysis) for strict
static analysis. Before committing any code, ensure there are **no warnings or lints** from the
analyzer. This helps catch potential bugs and enforces a consistent code style.

### 2. Error and Crash Reporting

We use **Firebase Crashlytics** to monitor for crashes and errors in real-time. This allows us to
quickly identify and fix issues that users experience.

### 3. Version Control

All changes must be committed to Git. Follow these best practices:

- **Commit frequently:** Save your changes in small, logical steps.
- **Write clear commit messages:** Describe *what* change you made and *why*. This makes the project
  history easy to understand.
- **Push to remote:** Regularly push your commits to the GitHub repository to back up your work.

### 4. Critical Best Practices

Beyond the tools, adhering to these coding patterns is crucial for preventing common runtime
crashes. The static analysis rules will help enforce many of these.

| Kategori              | ❌ JANGAN LAKUKAN                                    | ✅ LAKUKAN YANG BENAR                                                |
|-----------------------|-----------------------------------------------------|---------------------------------------------------------------------|
| **Null Safety (API)** | `String name = data['name'];`                       | `String? name = data['name'];`                                      |
| **Async State**       | `setState(...)` setelah `await` tanpa cek.          | `if (mounted) setState(...)`                                        |
| **Async Context**     | `Scaffold.of(context)` setelah `await` tanpa cek.   | `if (!context.mounted) return;`                                     |
| **Async Flow**        | `fetch(); display();`                               | `final data = await fetch(); display(data);`                        |
| **Dependencies**      | Menggunakan versi lama (misal: `http: ^0.13.5`)     | Selalu cek versi terbaru di [pub.dev](https://pub.dev)              |
| **`late` Keyword**    | `late String name;` (tanpa inisialisasi yang pasti) | `late final String name = init();` atau inisialisasi di `initState` |
