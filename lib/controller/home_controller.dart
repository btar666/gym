import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{
  GetStorage box = GetStorage();
  int index = 0;
  int selectedId = -1;
  List save = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getSave();
  }
  bool isSaved(int id){
    return save.contains(id);
  }
  getSave(){
    if(box.read("save") != null) save = box.read("save");
    update();
  }
  setSave(int id) async {
    if(!save.contains(id)) {
      save.add(id);
    } else {
      return;
    }
    await box.write("save", save);
    getSave();
  }
  unSave(int id) async {
    save.remove(id);
    await box.write("save", save);
    getSave();
  }


}