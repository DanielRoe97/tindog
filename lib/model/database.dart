/*
All functions regarding the connection to the database belong here.
 */
import 'dog.dart';


Dog getRandomDog(){
  return _getDoge();
}


  Dog _getDoge(){
  String name = 'Doge';
  String gender = 'm';
  String description = 'Doge ist ein Internetphänomen (Meme), das im Jahr 2013 populär wurde. Doge ist eine Abwandlung des englischen Wortes „dog“ (Hund).Es besteht aus dem Bild eines Hundes der japanischen Rasse Shiba und einem rudimentären, englischen Text in der Form von „such x“, „many x“, „very x“, „so x“ bzw. „wow“. Das Wort "wow" wird dabei permanent allein geschrieben. Das am häufigsten verwendete Foto zeigt Kabosu, einen von Atsuko Sato adoptierten Hund.';
  String imageURL = 'https://i.kym-cdn.com/entries/icons/original/000/013/564/doge.jpg';
  String originURL;

  return Dog(name, gender, description, imageURL, originURL);
}