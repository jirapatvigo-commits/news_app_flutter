class Recipe {
  String imgLabel;
  String imageUrl;

  Recipe(this.imageUrl, this.imgLabel);

  static List<Recipe> samples =
  [
    Recipe('assets/images/แกงฟักทอง.png' , 'แกงเขียวหวาน'),
    Recipe('assets/images/เขียวหวาน.png' , 'เขียวหวาน'),
    Recipe('assets/images/สลัด.png' , 'สลัด'),
    Recipe('assets/images/หมูหวาน.png' , 'หมูหวาน')
  ];
}