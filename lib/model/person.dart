class Person {
  final String name;
  final String address;
  final int age;
  final String image;
  final String description;

  // constructor
  Person({
    required this.name,
    required this.address,
    required this.age,
    required this.image,
    required this.description,
  });

  // convert JSON to person object
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      address: json['address'],
      age: json['age'],
      image: json['image'],
      description: json['description'],
    );
  }
}
