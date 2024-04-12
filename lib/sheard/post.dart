class post{

   String? name;
   String? email;
   String? password;
   String? gym_name;
   String? open_time;
   String? close_time;
   String? description;

   post({
   required this.name,
   required this.email,
   required this.password,
   required this.gym_name,
   required this.open_time,
   required this.close_time,
   required this.description,
   });

   post.fromjson(Map<String,dynamic> json){
     name = json['name']??'';
     email = json['email'] ?? '';
     password = json['password'] ?? '';
     gym_name = json['gym_name'] ?? '';
     open_time = json['open_time'] ?? '';
     close_time = json['close_time'] ?? '';
     description = json['description'] ?? '';
   }
}