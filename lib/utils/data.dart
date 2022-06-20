var profile = {
  "name": "Kelompok 5",
  "image": "assets/icons/my.jpg",
  "email": "ardiannnsyahh@gmail.com"
};

List categories = [
  {"name": "All", "icon": "assets/icons/home.svg"},
  {"name": "Pantai", "icon": "assets/icons/home.svg"},
  {"name": "Pegunungan", "icon": "assets/icons/home.svg"},
  {"name": "Rekreasi", "icon": "assets/icons/home.svg"},
  {"name": "Sejarah", "icon": "assets/icons/home.svg"},
  {"name": "Adventure", "icon": "assets/icons/home.svg"},
  {"name": "Healing", "icon": "assets/icons/home.svg"},
  {"name": "Kuliner", "icon": "assets/icons/home.svg"},
  {"name": "Staycation", "icon": "assets/icons/home.svg"},
];

List cities = [
  {"name": "Jakarta", "icon": "assets/icons/home.svg"},
  {"name": "Bandung", "icon": "assets/icons/home.svg"},
  {"name": "Semarang", "icon": "assets/icons/home.svg"},
  {"name": "Yogyakarta", "icon": "assets/icons/home.svg"},
  {"name": "Malang", "icon": "assets/icons/home.svg"},
  {"name": "Purwokerto", "icon": "assets/icons/home.svg"},
  {"name": "Bali", "icon": "assets/icons/home.svg"},
  {"name": "Wonosobo", "icon": "assets/icons/home.svg"},
  {"name": "Papua", "icon": "assets/icons/home.svg"},
  {"name": "Nusa Tenggara Timur", "icon": "assets/icons/home.svg"},
  {"name": "Nusa Tenggara Barat", "icon": "assets/icons/home.svg"},
];

List<String> albumImages = [
  "https://images.unsplash.com/photo-1598928636135-d146006ff4be?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1505692952047-1a78307da8f2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1618221118493-9cfa1a1c00da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1571508601891-ca5e7a713859?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
];

List features = [
  {
    "id": 100,
    "name": "Annual Pass Ancol",
    "image":
    "https://live.staticflickr.com/7459/27637992374_ab83c4363c_b.jpg",
    "price": "\IDR 945000",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Jakarta",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Taman Impian Jaya Ancol atau sering pula disebut sebagai Ancol Dreamland adalah salah satu lokasi wisata yang terletak di kawasan Jakarta Utara. Tempat wisata ini dikenal dengan beragam wahana wisata yang banyak menarik minat wisatawan, utamanya mereka yang ingin bermain dan berlibur bersama anggota keluarga.",
  },
  {
    "id": 101,
    "name": "Floating Market Lembang",
    "image":
    "https://www.michellefranclee.com/wp-content/uploads/2016/06/Floating-Market-Lembang.jpg",
    "price": "\IDR 35000",
    "type": categories[3]["name"],
    "rate": "4.5",
    "location": "Bandung",
    "is_favorited": true,
    "album_images": albumImages,
    "description":
    "Floating Market Lembang merupakan objek wisata yang memadukan alam dan buatan dengan konsep unik dan menarik. Letaknya berada tepat di pusat Kota Lembang sehingga tidak akan sulit untuk mencari fasilitas liburan lain di sekitaran area ini. Keseluruhan area objek wisata ini tidak begitu luas, namun wisatawan dapat menikmati berbagai pengalaman menarik di objek wisata ini.",
  },
  {
    "id": 102,
    "name": "Lawang Sewu",
    "image":
    "https://i.pinimg.com/originals/8e/6e/f4/8e6ef47115093685498e84a4db41f736.jpg",
    "price": "\IDR 25000",
    "type": categories[4]["name"],
    "rate": "4.5",
    "location": "Semarang",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Lawang Sewu adalah gedung bersejarah milik PT Kereta Api Indonesia (Persero) yang awalnya digunakan sebagai Kantor Pusat perusahaan kereta api swasta Nederlandsch-Indische Spoorweg Maatschappij (NISM).",
  },
  {
    "id": 103,
    "name": "Paralayang Parangtritis",
    "image":
    "https://garasijogja.com/wp-content/uploads/2017/11/paralayang-@alfin_aramdhani-1007x1024.jpg",
    "price": "\IDR 35000",
    "type": categories[1]["name"],
    "rate": "4.5",
    "location": "Yogyakarta",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Untuk dapat menikmati olahraga ini, pengunjung dikenakan biaya sebesar Rp 350.000. Dengan biaya ini, pengunjung dapat menaiki paralayang dan mendapatkan segala perlengkapan keamanannya.",
  },
  {
    "id": 104,
    "name": "Malang Night Paradise",
    "image":
    "https://www.trivindo.com/data/upload/2017/07/malang-night-paradise-5.jpg",
    "price": "\IDR 55000",
    "type": categories[6]["name"],
    "rate": "4.5",
    "location": "Malang",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Malang Night Paradise merupakan wisata malam terbesar di Jawa Timur yang menawarkan keindahan gemerlap taman lampu LED dan taman lampion, dan merupakan satu-satunya tempat foto dengan standar internasional.Malang Night Paradise dibuka mulai pukul 17.45 WIB hingga 22.00 WIB",
  },
  {
    "id": 105,
    "name": "Baturraden",
    "image":
    "http://4.bp.blogspot.com/-ymwBlkKMLoc/Vo9_Usb2GeI/AAAAAAAAAmA/93a9M_n1a6w/s1600/1.jpg",
    "price": "\IDR 14000",
    "type": categories[5]["name"],
    "rate": "4.5",
    "location": "Purwokerto",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Baturraden adalah salah satu wisata yang ada di purwokerto,tepatnya di Gunung Slamet, Banyak wahana yang bisa anda kunjungi ",
  },
];

List recommends = [
  {
    "id": 110,
    "name": "Garuda Wisnu Kencana",
    "image":
    "https://kabarnesia.com/wp-content/uploads/2018/12/GWK-bali.jpg",
    "price": "\IDR 125000",
    "type": categories[4]["name"],
    "rate": "4.5",
    "location": "Bali",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "dalam area kawasan tempat wisata GWK Bali terdapat patung Dewa Wisnu, yang mengenakan mahkota berwarna emas, dan sedang menunggangi burung Garuda dengan ukuran patung yang sangat besar.",
  },
  {
    "id": 111,
    "name": "Dieng",
    "image":
    "https://orangutanborneo.co.id/wp-content/uploads/2018/09/panorama-indah-sikunir-dieng.jpg",
    "price": "\IDR 20000",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Wonosobo",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Dataran Tinggi Dieng atau Plato Dieng adalah sebuah wilayah di pusat Jawa Tengah yang memiliki ciri geologi, sejarah, dan pertanian yang dinilai khas.",
  },
  {
    "id": 112,
    "name": "Taman Mini Indonesia",
    "image":
    "https://storage.googleapis.com/allindonesiatoursim/2018/02/0030509a-extraordinary-things-to-do-in-taman-mini-jakarta.jpg",
    "price": "\IDR 25000",
    "type": categories[3]["name"],
    "rate": "4.5",
    "location": "Jakarta",
    "album_images": albumImages,
    "is_favorited": false,
    "description":
    "Taman Mini Indonesia Indah (TMII) merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur.",
  },
  {
    "id": 113,
    "name": "Labuan Bajo",
    "image":
    "https://img.jakpost.net/c/2017/08/02/2017_08_02_30495_1501654303._large.jpg",
    "price": "\IDR 80000",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Nusa Tenggara Timur",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Labuan Bajo merupakan ibu kota Kabupaten Manggarai Barat yang memiliki letak geografis yang sangat strategis, dimana posisi Labuan Bajo berada di bagian barat pulau Flores."
  },
  {
    "id": 114,
    "name": "Puncak Jaya",
    "image":
    "https://puncakjayakab.go.id/wp-content/uploads/2018/09/GUNUNG-PUNCAK-JAYA-PAPUA-2.jpg",
    "price": "\IDR 100000",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Papua",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Puncak Jaya atau Piramida Carstensz mempunyai ketinggian 4.884 mdpl dan di sekitarnya terdapat gletser dengan nama yang sama yakni gletser Carstensz, satu-satunya gletser tropika di Indonesia, yang tersisa dan secara perlahan mulai menipis akibat pemanasan global."
  },
  {
    "id": 115,
    "name": "Gili Island",
    "image":
    "https://www.almarik-lombok.com/wp-content/uploads/2017/01/bidreye2-1024x512.jpg",
    "price": "\IDR 100000",
    "type": categories[2]["name"],
    "rate": "4.5",
    "location": "Nusa Tenggara Barat",
    "is_favorited": false,
    "album_images": albumImages,
    "description":
    "Gili Island is a popular destination in Indonesia. Gili Islands located in the north west of Lombok, featuring three small, coral fringed islands; Gili Air, Gili Meno & Gili Trawangan, each with superb, white sandy beaches, clear water, coral reefs, brilliantly colored fish and the best snorkeling on Lombok."
  },
];