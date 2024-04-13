class player{

  String? id;
  String? name;
  String? code;
  String? description;
  String? id_coach;
  String? name_coach;
  String? name_gym;

  player({
    required this.id,
    required this.name,
    required this.code,
    required this.description,
    required this.id_coach,
    required this.name_gym,
    required this.name_coach,
  });

  player.fromjson(Map<String,dynamic> json){
    id = json['id']??'';
    name = json['name'] ?? '';
    code = json['code'] ?? '';
    description = json['description'] ?? '';
    id_coach = json['id_coach'] ?? '';
    name_gym = json['name_gym'] ?? '';
    name_coach = json['name_coach'] ?? '';
  }

  Map<String ,dynamic> toMap(){
    return {
      'id': id,
      'name': name,
      'code': code,
      'description': description,
      'id_coach': id_coach,
      'name_gym': name_gym,
      'name_coach': name_coach
    };
  }



}