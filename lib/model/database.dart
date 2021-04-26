/*
All functions regarding the connection to the database belong here.
 */
import 'dog.dart';


Dog getRandomDog(){
  return _getDoge(1);
}

List <Dog> getDogList(){
  return [_getDoge(0), _getDoge(1), _getDoge(2)];
}

  Dog _getDoge(i){
  String name;
  String gender;
  String description = 'Doge ist ein Internetphänomen (Meme), das im Jahr 2013 populär wurde. Doge ist eine Abwandlung des englischen Wortes „dog“ (Hund).Es besteht aus dem Bild eines Hundes der japanischen Rasse Shiba und einem rudimentären, englischen Text in der Form von „such x“, „many x“, „very x“, „so x“ bzw. „wow“. Das Wort "wow" wird dabei permanent allein geschrieben. Das am häufigsten verwendete Foto zeigt Kabosu, einen von Atsuko Sato adoptierten Hund.';
  String imageURL = 'https://i.kym-cdn.com/entries/icons/original/000/013/564/doge.jpg';
  String originURL;
  if (i == 0){
    name = 'Doge';
    gender = 'm';
    description = 'Doge ist ein Internetphänomen (Meme), das im Jahr 2013 populär wurde. Doge ist eine Abwandlung des englischen Wortes „dog“ (Hund).Es besteht aus dem Bild eines Hundes der japanischen Rasse Shiba und einem rudimentären, englischen Text in der Form von „such x“, „many x“, „very x“, „so x“ bzw. „wow“. Das Wort "wow" wird dabei permanent allein geschrieben. Das am häufigsten verwendete Foto zeigt Kabosu, einen von Atsuko Sato adoptierten Hund.';
    imageURL = 'https://i.kym-cdn.com/entries/icons/original/000/013/564/doge.jpg';
  } else if (i == 1){
    name = 'Bob';
    gender = 'm';
    description = 'He thicc.';
    imageURL = 'https://pbs.twimg.com/profile_images/1351720980972933122/I3MnYUdm_400x400.jpg';
  } else if (i == 2){
    name = 'Kommisar Rex';
    gender = 'm';
    description = 'Staatlich anerkannter Polizeihund';
    imageURL = 'https://images.unsplash.com/photo-1568564321589-3e581d074f9b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nJTIwYmFya2luZ3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80';
  }

  return Dog(name, gender, description, imageURL, originURL);
}

