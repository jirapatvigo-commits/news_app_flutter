class Recipe {
  String imgLabel;
  String imageUrl;
  String Detail;

  Recipe(this.imageUrl, this.imgLabel, this.Detail);

  static List<Recipe> samples =
  [
    Recipe('assets/images/แกงฟักทอง.png' , 'Thai pumpkin curry (gaeng fak thong)', 'A nostalgic Thai pumpkin curry inspired by family memories, adapted with butternut squash, and passed down from the author’s grandmother—celebrating comfort, heritage, and home cooking.'),
    Recipe('assets/images/เขียวหวาน.png' , 'Green Thai fish curry' , 'Try this Thai green fish curry, then also check out our classic Thai green curry. Now discover our goan fish curry, coconut fish curry.'),
    Recipe('assets/images/สลัด.png' , 'Pad thai salad' , 'A fresh twist on pad thai using raw kale and cabbage softened with salt and lime, adding citrusy crunch and brightness, with options to customize using other vegetables or tofu.'),
    Recipe('assets/images/หมูหวาน.png' , 'Thai braised pork' , 'Try this Thai braised pork, then check out our Thai scotch eggs, Thai fishcakes with sweet and sour cucumber pickle and more easy Thai recipes. Now discover 10 things we love about Thai cuisine.'),
  ];
}