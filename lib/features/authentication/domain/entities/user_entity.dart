class UserEntity {
  UserEntity({
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
  }) : searchKeywords = _generateSearchKeywords(firstName, lastName);
  final String uid;
  final String email;
  final String firstName;
  final String lastName;
  final List<String> searchKeywords;

  static List<String> _generateSearchKeywords(
    String firstName,
    String lastName,
  ) {
    final lowercaseFirstName = firstName.toLowerCase();
    final lowercaseLastName = lastName.toLowerCase();

    final Set<String> substrings = {}
      ..add(lowercaseFirstName[0])
      ..addAll(
        Iterable.generate(
          lowercaseFirstName.length,
          (i) => lowercaseFirstName.substring(0, i + 1),
        ),
      )
      ..add(lowercaseLastName[0])
      ..addAll(
        Iterable.generate(
          lowercaseLastName.length,
          (i) => lowercaseLastName.substring(0, i + 1),
        ),
      );

    return substrings.toList();
  }
}
