import '../../domain/entities/sing_up_entity.dart';

class SingUpModel extends SingUpEntity{
 final String status;

 SingUpModel({required this.status}) : super(status: status);

 factory SingUpModel.fromJson(Map<String, dynamic> json) => SingUpModel(status: json['status']);

}