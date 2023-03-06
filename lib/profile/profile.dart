class Profile {
  // I could just omit the wrapper
  final Athlete athlete;

  const Profile({
    required this.athlete,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      athlete: Athlete.fromJson(json['athlete']),
    );
  }
}

class Athlete {
  final String id;
  final String name;
  final String profilePicture;
  final String city;
  final String state;
  final String country;
  final String timezone;
  final String sex;
  final String? bio;
  final String? website;
  final String? email;

  Athlete({
    required this.id,
    required this.name,
    required this.profilePicture,
    required this.city,
    required this.state,
    required this.country,
    required this.timezone,
    required this.sex,
    required this.bio,
    required this.website,
    required this.email,
  });

  factory Athlete.fromJson(Map<String, dynamic> json) {
    return Athlete(
      id: json['id'],
      name: json['name'],
      profilePicture: json['profile_medium'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      timezone: json['timezone'],
      sex: json['sex'],
      bio: json['bio'],
      website: json['website'],
      email: json['email'],
    );
  }
}
