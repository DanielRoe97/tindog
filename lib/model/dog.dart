
class Dog{
  //Variables
  String name;
  String gender;
  String description;
  String imageURL;
  String originURL;

  //Constructor
  Dog(String name, String gender, String description, String imageURL, String originURL){
    this.name = name;
    this.gender = gender;
    this.description = description;
    this.imageURL = imageURL;
    this.originURL = originURL;

  }


}






/*
Getting a cached Image:


CachedNetworkImage(
  placeholder: (context, url) => CircularProgressIndicator(),
  imageUrl: 'https://picsum.photos/250?image=9',
);
 */