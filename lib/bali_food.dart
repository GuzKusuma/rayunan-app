class MakananBali {
  String name;
  String location;
  String deskripsi;
  String openDays;
  String openTime;
  String rating;
  String imageAsset;

  MakananBali({
    required this.name,
    required this.location,
    required this.deskripsi,
    required this.openDays,
    required this.openTime,
    required this.rating,
    required this.imageAsset,
  });

  static var listMakanan = [
    MakananBali(
        name: 'Ayam Betutu',
        location: 'Gilimanuk',
        deskripsi:
            ' Ayam Betutu dimasak dengan bumbu betutu, yaitu bumbu khas Bali yang terbuat dari campuran daun jeruk, sereh, salam, kunyit, kemiri, jahe, bawang merah, dan bumbu lainnya. Ayam yang dimasak dengan bumbu ini tentu akan menghasilkan cita rasa yang begitu lezat. ',
        openDays: " Buka setiap Hari",
        openTime: '09:00 - 20:00',
        imageAsset: 'images/betutu.jpeg',
        rating: '5.0'),
    MakananBali(
        name: 'Sate Lilit',
        location: 'Buleleng',
        deskripsi:
            ' Beberapa daerah di Indonesia memiliki kuliner berupa sate. Begitu juga dengan Bali yang memiliki sate lilit yang memiliki keunikan dibandingkan sate lainnya. Sate lilit terbuat dari daging ayam atau ikan yang digiling. Daging ini kemudian dicampur dengan parutan kelapa dan dililit pada batang bambu atau sereh. ',
        openDays: " Hari Senin",
        openTime: '09:00 - 14:30',
        imageAsset: 'images/sate-lilit.jpeg',
        rating: '4.5'),
    MakananBali(
        name: 'Nasi Jinggo',
        location: 'Singaraja',
        deskripsi:
            'Salah satu kuliner Pulau Dewata yang sudah cukup terkenal adalah nasijinggo. Kuliner ini cukup mirip dengan nasi kucing karena dibungkus daun pisang dengan porsi yang kecil. Nasi jinggo biasanya akan disajikan dengan daging, mie, sambal goreng tempe, dan sambal. Sate lilit juga kerap kali dijadikan makanan untuk melengkapi nasi jinggo. ',
        openDays: " Setiap Hari",
        openTime: '20.00 ',
        imageAsset: 'images/nasi-jinggo.jpeg',
        rating: '9.0'),
    MakananBali(
      name: 'Nasi Tepeng',
      location: 'Karangasem',
      deskripsi:
          'Nasi tepeng adalah makanan Bali yang berasal dari daerah Gianyar. Makanan ini memiliki tekstur yang lembut, mirip seperti bubur. Nasi tepeng biasanya disajikan dengan ayam goreng, telur, terong, dan kacang-kacangan. Di daerah asalnya, makanan ini sering dijadikan menu untuk sarapan. ',
      openDays: 'Setiap hari',
      openTime: '17:00',
      imageAsset: 'images/nasi-tepeng.jpeg',
      rating: '4.5',
    ),
    MakananBali(
      name: 'Sate Pelecing',
      location: 'Denpasar',
      deskripsi:
          'Selain sate lilit, Pulau Dewata juga memiliki sate plecing. Sate ini dimasak dengan bumbu khas Bali yang bernama plecing yang terbuat dari kemiri, terasi, tomat, bawang putih, dan beberapa bumbu lainnya. ',
      openDays: 'Kamis - Jumat',
      openTime: '07.00',
      imageAsset: 'images/sate-plecing.jpeg',
      rating: '5.0',
    ),
    MakananBali(
      name: 'Tum Ayam',
      location: 'Tabanan',
      deskripsi:
          'Tum ayam merupakan olahan ayam yang diberi racikan bumbu dan dibungkus dengan daun pisang. Bumbu tersebut merupakan campuran dari bawang putih, bawang merah, cabai, daun salam, jahe, serai, dan lain-lain. ',
      openDays: 'Setiap Hari',
      openTime: '15:30',
      imageAsset: 'images/tum-ayam.jpeg',
      rating: '4.5',
    ),
    MakananBali(
      name: 'Rujak Bulung',
      location: 'Bangli',
      deskripsi:
          'Jika biasanya rujak terdiri dari bermacam-macam buah-buahan, lain halnya dengan rujak bulung. Kuliner satu ini menggunakan bahan rumput laut yang disiram dengan kuah pindang dan ditambah kelapa parut serta kedelai goreng. ',
      openDays: 'Setiap hari',
      openTime: '09:00 ',
      imageAsset: 'images/rujak-bulung.jpeg',
      rating: '3.5',
    ),
    MakananBali(
      name: 'Sate Kakul',
      location: 'Jembrana',
      deskripsi:
          'Sate kaku merupakan kuliner tradisional Bali yang berasal dari daerah Ubud. Sate kakul menggunakan bahan utama berupa siput dan memiliki cita rasa yang khas, tidak kalah dengan daging ayam ataupun sapi. ',
      openDays: 'Senin - Rabu',
      openTime: '17:00',
      imageAsset: 'images/sate-kakul.jpg',
      rating: '5.0',
    ),
    MakananBali(
      name: 'Sambal Matah',
      location: 'Buleleng',
      deskripsi:
          'Sambal matah sudah sangat populer di kalangan masyarakat dan wisatawan. Sambal yang satu ini sangat cocok untuk mendampingi makanan lain. Cita rasa pedas dari sambal matah dijamin akan membuat selera makan meningkat. ',
      openDays: 'Setiap Hari',
      openTime: '14.00',
      imageAsset: 'images/sambal-matah.jpeg',
      rating: '4.0',
    ),
  ];
}
