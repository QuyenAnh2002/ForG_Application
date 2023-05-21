class User{
  int id_acc;
  String username;
  String password_acc;

  User(
      this.id_acc,
      this.username,
      this.password_acc,
  );

  Map<String, dynamic> toJson() =>
      {
        'id_acc': id_acc.toString(),
        'username' : username,
        'password_acc': password_acc,
      };

}