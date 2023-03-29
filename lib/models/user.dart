class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Nabila Aprilia Ramdhani",
      username: "Billa",
      email: "2006149@itg.ac.id",
      profilePhoto:
          "https://i.postimg.cc/XqfN3vHH/Whats-App-Image-2023-03-28-at-14-27-19.jpg",
      phoneNumber: "089608351702",
    );
  }
}