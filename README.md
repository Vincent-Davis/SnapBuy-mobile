# snap_buy
# Tugas 8
##  Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

const di Flutter digunakan untuk menentukan objek atau widget yang bersifat immutable (tidak berubah) selama runtime, yang membuatnya tetap dan tidak perlu di-rebuild ulang setiap kali UI mengalami perubahan.

Const sebaiknya digunakan pada widget yang tidak akan mengalami perubahan nilai selama aplikasi berjalan, seperti teks statis atau ikon.

Sedangkan Const sebaiknya tidak digunakan pada pada objek atau widget yang bergantung pada data dinamis atau berubah-ubah, misalnya, saat Anda menerima input pengguna atau mengubah state UI

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

* Column: Layout widget yang menampilkan elemen secara vertikal (dari atas ke bawah).
* Row: Layout widget yang menampilkan elemen secara horizontal (dari kiri ke kanan).
Kedua widget ini berguna untuk menyusun elemen-elemen UI dan memungkinkan penyesuaian alignment dan spacing.

Contoh Implementasi Column:

         Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Text("Item 1"),
            Text("Item 2"),
            Icon(Icons.star),
         ],
         )

Contoh Implementasi Row:

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         Icon(Icons.home),
         Icon(Icons.favorite),
         Icon(Icons.settings),
      ],
      )

## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

1. TextFormField

Terdapat tiga TextFormField yang digunakan untuk menerima input:
   * Name untuk memasukkan nama produk.
   * Description untuk deskripsi produk.
   * Amount untuk jumlah produk yang ditambahkan.

TextFormField ini memiliki validasi sederhana yang memastikan bahwa kolom Name dan Description tidak kosong, serta Amount harus berupa angka.

2. ElevatedButton:
   * Tombol ini digunakan untuk menyimpan data input dengan memvalidasi dan menampilkan dialog konfirmasi jika semua input sudah valid.

Elemen Input yang Tidak Digunakan
   
   1. DropdownButton: Digunakan untuk memilih opsi dari daftar, seperti kategori produk atau status produk.
   2. Checkbox atau Switch: Bisa digunakan untuk pilihan boolean, misalnya untuk menandai apakah produk tersedia atau tidak.
   3. RadioButton: Untuk memilih satu opsi dari beberapa pilihan, seperti memilih ukuran atau warna produk.
   4. DatePicker dan TimePicker: Berguna jika aplikasi memerlukan input tanggal dan waktu, seperti tanggal pembuatan atau tanggal kedaluwarsa produk.
   5. Slider: Bisa digunakan jika input berupa rentang nilai, seperti kisaran harga produk.

## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema dalam aplikasi Flutter agar konsisten, aplikasi ini menggunakan ThemeData yang diterapkan di dalam MaterialApp. Pada bagian theme, terdapat pengaturan colorScheme yang mengatur warna utama (primarySwatch) dengan nilai Colors.deepPurple dan warna sekunder (secondary) sebagai Colors.deepPurple[400].

Pengaturan ini memastikan bahwa semua komponen dalam aplikasi yang mengikuti tema bawaan Flutter, seperti AppBar, tombol, dan ikon, akan menggunakan warna yang konsisten sesuai dengan primarySwatch dan secondary. Dengan demikian, aplikasi memiliki tampilan dan nuansa yang seragam di seluruh halaman.

Tema telah diimplementasikan pada aplikasi ini, sehingga setiap widget di seluruh halaman menggunakan pengaturan tema yang sama, menciptakan kesan desain yang terstruktur dan konsisten.

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigasi dalam aplikasi Flutter dengan banyak halaman ditangani menggunakan Navigator, yang memungkinkan perpindahan antarhalaman melalui metode seperti Navigator.push, Navigator.pop, dan Navigator.pushReplacement. Metode Navigator.push digunakan untuk menambahkan halaman baru di atas stack navigasi, memungkinkan pengguna kembali ke halaman sebelumnya dengan tombol back. Misalnya, saat memilih opsi "Tambah Produk," Navigator.push membawa pengguna ke halaman ProductEntryFormPage.

Selain itu, Navigator.pushReplacement mengganti halaman saat ini dengan halaman baru, cocok untuk navigasi utama atau menu, di mana pengguna tidak perlu kembali ke halaman sebelumnya. Contohnya, saat memilih "Halaman Utama" di LeftDrawer, aplikasi menggunakan Navigator.pushReplacement untuk menggantikan halaman saat ini dengan MyHomePage.

Untuk aplikasi besar dengan banyak halaman, Flutter juga mendukung named routes, yang mengelola rute dengan lebih terstruktur. Named routes memungkinkan setiap halaman memiliki identitas unik yang mudah dipanggil, mempermudah navigasi yang terorganisir dan efisien, terutama untuk aplikasi dengan struktur kompleks.


# Tugas 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

1. StatelessWidget
    * Pengertian: StatelessWidget adalah widget yang tidak memiliki state yang bisa berubah setelah widget tersebut dibuat. Artinya, konten widget ini tidak akan diperbarui atau diubah setelah dibangun pertama kali.
    
    * Penggunaan: Widget ini cocok digunakan untuk elemen yang statis atau tidak mengalami perubahan data, seperti ikon, teks statis, atau desain yang tidak berubah berdasarkan interaksi pengguna.

2. StatefulWidget
    * Pengertian: StatefulWidget adalah widget yang memiliki state internal yang dapat diubah kapan saja selama widget tersebut aktif. Setiap kali ada perubahan pada state, widget akan dibangun ulang untuk mencerminkan data terbaru.
    
    * Penggunaan: Digunakan untuk widget yang perlu memperbarui tampilan saat data atau state berubah. Misalnya, tombol yang berubah warna saat ditekan, form input yang menampilkan data baru, atau animasi.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

1. MaterialApp:

Fungsi: MaterialApp adalah widget utama dalam aplikasi Flutter yang menyediakan berbagai pengaturan seperti tema, title aplikasi, dan halaman utama (home). Ini adalah root dari aplikasi berbasis Material Design.

2. Scaffold:

Fungsi: Scaffold menyediakan struktur dasar halaman seperti AppBar, Body, FloatingActionButton, dan lainnya. Ini membantu dalam memberikan tampilan konsisten pada aplikasi.

3. AppBar:

Fungsi: AppBar adalah bilah alat yang ditampilkan di bagian atas halaman. Di sini, AppBar digunakan untuk menampilkan judul aplikasi "Snap Buy" dengan warna dan gaya teks yang ditentukan.

4. Padding:

Fungsi: Padding menambahkan ruang di sekitar widget yang ada di dalamnya. Dalam kode ini, Padding digunakan untuk memberikan jarak di sekitar Column yang ada di Scaffold.

5. Column:

Fungsi: Column digunakan untuk menata widget secara vertikal (dari atas ke bawah). Di sini, Column menyusun Row yang berisi InfoCard dan elemen lain secara vertikal di layar.

6. Row:

Fungsi: Row digunakan untuk menyusun widget secara horizontal (dari kiri ke kanan). Di sini, Row digunakan untuk menampilkan tiga InfoCard secara sejajar.

7. InfoCard (Custom Widget):

Fungsi: InfoCard adalah widget kustom yang Anda buat untuk menampilkan informasi tertentu (seperti NPM, Nama, dan Kelas) dalam format kartu. Ini terdiri dari Card dan Container untuk mengatur isi kartu dan desainnya.

8. Card:

Fungsi: Card adalah widget yang memberikan efek kartu dengan bayangan untuk tampilan elemen yang lebih menarik. Di sini digunakan dalam InfoCard untuk membungkus informasi yang akan ditampilkan.

9. Text:

Fungsi: Text digunakan untuk menampilkan teks di layar. Dalam proyek ini, Text digunakan untuk menampilkan judul, nama, NPM, kelas, dan informasi lain yang relevan.

10. SizedBox:

Fungsi: SizedBox digunakan untuk memberi jarak atau ukuran tertentu pada tampilan. Di sini, SizedBox memberikan jarak vertikal antara elemen-elemen di dalam Column.

11. GridView.count:

Fungsi: GridView.count digunakan untuk menampilkan daftar item dalam bentuk grid dengan jumlah kolom yang tetap. Di proyek ini, GridView digunakan untuk menampilkan beberapa ItemCard dalam susunan tiga kolom.

12. ItemCard (Custom Widget):

Fungsi: ItemCard adalah widget kustom yang menampilkan item dengan ikon dan nama dalam bentuk kartu. Kartu ini memiliki fungsi onTap yang menampilkan pesan SnackBar saat ditekan.

13. Material:

Fungsi: Material digunakan di dalam ItemCard untuk memberikan efek visual Material Design. Ini membantu mendukung efek sentuhan (ripple effect) dan estetika Material Design di InkWell.

14. InkWell:

Fungsi: InkWell adalah widget yang membuat area yang dapat diketuk, memberikan efek ripple saat pengguna mengetuk area tersebut. Di sini digunakan di ItemCard untuk memberikan efek ketukan dan menampilkan SnackBar.

15. Icon:

Fungsi: Icon digunakan untuk menampilkan ikon yang sesuai dengan setiap ItemCard, membantu pengguna mengenali fungsi dari setiap item.

16. SnackBar:

Fungsi: SnackBar adalah widget yang menampilkan pesan singkat di bagian bawah layar, biasanya untuk notifikasi atau konfirmasi tindakan. Di sini digunakan untuk memberikan respons cepat saat item di ItemCard ditekan.

##  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah fungsi penting dalam Flutter yang digunakan dalam StatefulWidget untuk memberi tahu framework bahwa ada perubahan pada state yang memerlukan pembaruan tampilan (UI). Ketika setState() dipanggil, Flutter akan menjalankan ulang metode build pada widget terkait, sehingga memperbarui tampilan sesuai dengan perubahan pada data.

Fungsi setState(): 

1. Mengelola Perubahan State: Fungsi ini digunakan untuk memperbarui state widget saat ada perubahan data yang harus ditampilkan di layar.
2. Memberitahu Framework untuk Rebuild: Setelah dipanggil, setState() akan memberi tahu Flutter bahwa widget perlu dibangun ulang, sehingga perubahan dapat diterapkan pada tampilan.
3. Optimisasi UI: setState() hanya memicu pembaruan pada widget yang dipengaruhi, sehingga Flutter dapat memperbarui hanya bagian yang berubah tanpa perlu menggambar ulang seluruh UI.

## Jelaskan perbedaan antara const dengan final.

Dalam Dart (dan Flutter), const dan final adalah dua kata kunci yang digunakan untuk mendeklarasikan variabel yang nilainya tidak bisa diubah. Meskipun keduanya memiliki persamaan, ada beberapa perbedaan penting dalam cara kerjanya.

Perbedaan Utama antara const dan final

1. Waktu Penetapan Nilai:

    * const: Variabel const adalah konstan waktu kompilasi. Artinya, nilai variabel harus sudah ditentukan pada waktu kompilasi dan tidak bisa berubah setelahnya.

    * final: Variabel final adalah konstan waktu eksekusi. Ini berarti nilainya ditentukan saat pertama kali dijalankan dan hanya bisa diatur sekali. Nilai final dapat bergantung pada informasi runtime, tetapi nilainya tidak bisa diubah setelah ditetapkan.

2. Penggunaan pada Objek:

    * const: Ketika sebuah objek dibuat dengan const, seluruh atributnya juga harus bersifat konstan. Objek const hanya bisa berisi atribut const dan akan menjadi benar-benar tidak dapat diubah.

    * final: Objek final memungkinkan atribut internalnya untuk tetap dapat diubah, selama atribut itu bukan final atau const. Ini berarti, meskipun objek final tidak bisa diubah, atribut internalnya bisa, kecuali jika diberi const atau final.

# Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. Inisialisasi projek Flutter dengan flutter create
2. Memindahkan MyHomePage dari main.dart ke menu.dart
3. Membuat Widget InfoCard untuk Menampilkan Informasi Pengguna
Membuat widget InfoCard untuk menampilkan informasi pengguna seperti NPM, nama, dan kelas.

Penambahan:
   * InfoCard sebagai widget kustom yang menampilkan dua parameter, title dan content, di dalam Card.
   * InfoCard ditambahkan ke Row di MyHomePage agar informasi pengguna ditampilkan secara horizontal.

4. Membuat Model ItemHomepage untuk Menyimpan Informasi Item

Perubahan Utama: Menambahkan model ItemHomepage untuk menyimpan data dari setiap item dalam daftar produk.

Penambahan:
   * ItemHomepage dengan tiga properti: name (nama item), icon (ikon item), dan color (warna latar).

5. Menampilkan Daftar Item dalam GridView di MyHomePage

Menambahkan widget GridView untuk menampilkan daftar item di dalam grid dengan tiga kolom.

Penambahan:

   * GridView.count dengan crossAxisCount: 3 untuk mengatur layout menjadi tiga kolom.
   * Menggunakan items.map() untuk menghasilkan ItemCard dari setiap item di dalam items.

6. Membuat Widget ItemCard untuk Tampilan Setiap Item dalam Grid

Membuat widget ItemCard untuk menampilkan detail setiap item dalam grid.

Penambahan:
   * ItemCard menerima ItemHomepage sebagai parameter, lalu menampilkan ikon dan nama item di dalam kartu.
   * Menambahkan interaksi menggunakan InkWell agar SnackBar ditampilkan saat item ditekan.

7. Menambahkan Interaksi pada ItemCard dengan InkWell

Menambahkan efek klik pada setiap ItemCard untuk meningkatkan interaktivitas.

Penambahan:
   * InkWell di sekitar Container untuk menangkap klik pada setiap item.
   * Menggunakan ScaffoldMessenger untuk menampilkan SnackBar dengan pesan berbeda berdasarkan nama item yang diklik.

