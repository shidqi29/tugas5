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
      name: "Shidqi Amirul Haq",
      username: "shidqi",
      email: "shidqi@email.com",
      profilePhoto:
          "https://th.bing.com/th/id/OIP.STdrVT87X1tnQJWSdE5VeQHaHa?w=171&h=180&c=7&r=0&o=5&pid=1.7",
      phoneNumber: "085123456789",
    );
  }
}
