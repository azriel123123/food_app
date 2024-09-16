part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? houseNumber;
  final String? phoneNumber;
  final String? city;
  final String? picturePath;

  User({
    this.id,
    this.name,
    this.email,
    this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    this.picturePath,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        address,
        houseNumber,
        phoneNumber,
        city,
        picturePath,
      ];
}

User mockUser = User(
  id: 1,
  name: 'Musalim Ucup',
  email: 'ucupweb@gmail.com',
  address: 'Jl.Babakan-Madang No.17',
  houseNumber: 'A2',
  phoneNumber: '08123456789',
  city: 'Bandung',
  picturePath: 'https://i.pinimg.com/736x/45/03/1d/45031d731b1038a6a1726201cb2c0eec.jpg',
);