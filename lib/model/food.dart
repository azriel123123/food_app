part of 'models.dart';

enum FoodType {new_food, popular, recommended}

class Food extends Equatable {
  final int? id;
  final String? name;
  final String? picturePath;
  final String? description;
  final String? ingradient;
  final double? price;
  final double? rate;
  final List<FoodType>? types;

  Food(
      {this.id,
      this.name,
      this.picturePath,
      this.description,
      this.price,
      this.rate,
      this.ingradient,
      this.types = const []
      });

  @override
  // TODO: implement props
  List<Object?> get props =>  [
    id,
    name,
    picturePath,
    description,
    ingradient,
    price,
    rate,
  ];
}

List<Food> mockFoods = [
  Food(
    id: 1,
    picturePath: 'https://i.pinimg.com/236x/5b/f2/7e/5bf27e721ed7bc858e0a7f0d905632e8.jpg',
    name: 'Sate Sayur Sultan',
    description: 'Sate Sayur Sultan adalah menu sate vegan paling terkenal di Jakarta. Sate ini dibuat dari berbagai macam bahan berkualitas terbaik dan langsung dibuat oleh chef handal. Sate ini sangat sehat dan bergizi.',
    ingradient: 'Tofu, Tempe, Jamur, Saus Kacang, Sayuran Segar',
    price: 150000,
    rate: 4.2,
    types: [FoodType.new_food],
  ),
  Food(
    id: 2,
    picturePath: 'https://i.pinimg.com/236x/e4/c8/ac/e4c8ac48c71738d0493b6e824f0094ed.jpg',
    name: 'Nasi Goreng Kambing',
    description: 'Nasi Goreng Kambing spesial dengan bumbu rempah rahasia yang kaya akan cita rasa. Cocok untuk Anda yang menggemari makanan gurih dan pedas.',
    ingradient: 'Nasi, Daging Kambing, Bawang Merah, Bawang Putih, Kecap Manis, Cabai, Rempah-rempah',
    price: 25000,
    rate: 4.5,
  ),
  Food(
    id: 3,
    picturePath: 'https://i.pinimg.com/236x/1a/b7/ee/1ab7ee51c29e366c9c47311773c09dde.jpg',
    name: 'Mie Ayam Jamur',
    description: 'Mie Ayam Jamur dengan topping ayam yang empuk dan jamur yang segar, disajikan dengan kuah kaldu yang lezat.',
    ingradient: 'Mie, Ayam, Jamur, Bawang Putih, Kecap Asin, Kuah Kaldu',
    price: 20000,
    rate: 4.7,
    types: [FoodType.popular,FoodType.recommended]
  ),
  Food(
    id: 4,
    picturePath: 'https://i.pinimg.com/236x/80/a9/1a/80a91a42cea42a2dcda727a48847642c.jpg',
    name: 'Bakso Beranak',
    description: 'Bakso Beranak dengan ukuran jumbo berisi bakso kecil di dalamnya. Sangat cocok untuk pecinta makanan berkuah.',
    ingradient: 'Daging Sapi, Tepung Tapioka, Bawang Putih, Kuah Kaldu Sapi, Mie',
    price: 30000,
    rate: 4.3,
  ),
  Food(
    id: 5,
    picturePath: 'https://i.pinimg.com/236x/20/80/e0/2080e0aeb6d1d9c91b990892dcbbb455.jpg',
    name: 'Ayam Bakar Taliwang',
    description: 'Ayam Bakar khas Lombok dengan bumbu pedas dan gurih, disajikan dengan plecing kangkung dan sambal terasi.',
    ingradient: 'Ayam, Cabai Merah, Bawang Putih, Bawang Merah, Terasi, Kangkung',
    price: 50000,
    rate: 4.8,
    types: [FoodType.new_food,FoodType.recommended]
  ),
  Food(
    id: 6,
    picturePath: 'https://i.pinimg.com/236x/6f/b7/f9/6fb7f9d36a80ee104e5a417ec2287b15.jpg',
    name: 'Gado-Gado Jakarta',
    description: 'Gado-Gado dengan sayuran segar, tahu, tempe, dan lontong, disiram saus kacang kental yang gurih.',
    ingradient: 'Sayuran Segar, Tahu, Tempe, Lontong, Saus Kacang',
    price: 20000,
    rate: 4.6,
    types: [FoodType.new_food]
  ),
  Food(
    id: 7,
    picturePath: 'https://i.pinimg.com/236x/6e/35/3d/6e353dfdcef71ce2f3dfe363390cb6b4.jpg',
    name: 'Es Cendol Durian',
    description: 'Minuman es cendol dengan topping buah durian yang manis dan creamy, cocok untuk menghilangkan dahaga.',
    ingradient: 'Cendol, Santan, Gula Merah, Durian, Es Serut',
    price: 25000,
    rate: 4.4,
  ),
  Food(
    id: 8,
    picturePath: 'https://i.pinimg.com/236x/6d/8d/3f/6d8d3fd5cc5ea81c90c8fdea252d53bc.jpg',
    name: 'Rendang Daging Padang',
    description: 'Rendang daging sapi khas Padang yang empuk dan berbumbu kuat, dimasak dengan santan kental.',
    ingradient: 'Daging Sapi, Santan, Bawang Merah, Bawang Putih, Serai, Daun Jeruk, Cabai',
    price: 70000,
    rate: 4.9,
  ),
];