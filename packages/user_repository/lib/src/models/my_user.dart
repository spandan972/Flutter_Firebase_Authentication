import 'package:equatable/equatable.dart';
import 'package:user_repository/src/entities/entities.dart';

//This code converts myuser into entiity
class Myuser extends Equatable {
  final String id;
  final String email;
  final String name;

  const Myuser({
    required this.id,
    required this.email,
    required this.name,
  });

  static const empty = Myuser(id: '', email: '', name: '');

  Myuser copyWith({
    String? id,
    String? email,
    String? name,
  }) {
    return Myuser(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  bool get isEmpty => this == Myuser.empty;
  bool get isNotEmpty => this != Myuser.empty;

  MyUserEntity toEntity() {
    return MyUserEntity(
      id: id,
      email: email,
      name: name,
    );
  }

//convert myuser object into myuserentity object
  Myuser fromEntity(MyUserEntity entity) {
    return Myuser(
      id: entity.id,
      email: entity.email,
      name: entity.name,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
