import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [

    // well arranged
   //WorldTime(location: 'Lagos',flag: 'nigeria.gif',url: 'Africa/Lagos' )
    WorldTime(location: 'Abidjan(Cote dvoire)', flag: 'cotedvoire.gif', url: 'Africa/Abidjan'),
    WorldTime(location: 'Accra(Ghana)', flag: 'ghana.gif', url: 'Africa/Accra'),
    WorldTime(location: 'Adak(USA)', flag: 'usa.png', url: 'America/Adak'),
    WorldTime(location: 'Addis Ababa (Ethiopia)', flag: 'ethiopia.gif', url: 'Africa/Addis-Ababa'),
    WorldTime(location: 'Adelaide (Australia)', flag: 'australia.gif', url: 'Australia/Adelaide'),
    WorldTime(location: 'Algiers(Algeria)', flag: 'algeria.gif', url: 'Africa/Algiers'),
    WorldTime(location: 'Amsterdam(Netherland)', flag: 'netherlands.gif', url: 'Europe/Amsterdam'),
    WorldTime(location: 'Antananarivo (Madagascar)', flag: 'madagascar.gif', url: 'Indian/Antananarivo'),
    WorldTime(location: 'Araguaina (Brazil)', flag: 'brazil.gif', url: 'America/Araguaina'),
    WorldTime(location: 'Asuncion(Paraguay)', flag: 'paraguay.gif', url: 'America/Asuncion'),
    WorldTime(location: 'Athens(Greece)', flag: 'greece.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Baghdad (Iraq)', flag: 'iraq.gif', url: 'Asia/Baghdad'),
    WorldTime(location: 'Bahia(Brazil)', flag: 'brazil.gif', url: 'America/Bahia'),
    WorldTime(location: 'Bamako (Mali)', flag: 'mali.gif', url: 'Africa/Bamako'),
    WorldTime(location: 'Bangkok (Thailand)', flag: 'thailand.gif', url: 'Asia/Bangkok'),
    WorldTime(location: 'Banjul (Gambia)', flag: 'gambia.gif', url: 'Africa/Banjul'),
    WorldTime(location: 'Beirut (Lebanon)', flag: 'lebanon.gif', url: 'Asia/Beirut'),
    WorldTime(location: 'Belgrade (Serbia)', flag: 'serbia.gif', url: 'Europe/Belgrade'),
    WorldTime(location: 'Belem(Brazil)', flag: 'brazil.gif', url: 'America/Belem'),
    WorldTime(location: 'Berlin(Germany)', flag: 'germany.gif', url: 'Europe/Berlin'),
    WorldTime(location: 'Bissau(Guinea Bissau)', flag: 'guineabusea.gif', url: 'Africa/Bissau'),
    WorldTime(location: 'Blantyre (Malawi)', flag: 'malawi.gif', url: 'Africa/Blantyre'),
    WorldTime(location: 'Bogota(Colombia)', flag: 'colombia.gif', url: 'America/Bogota'),
    WorldTime(location: 'Boa_vista (Brazil)', flag: 'brazil.gif', url: 'America/Boa_Vista'),
    WorldTime(location: 'Bratislava (Slovakia)', flag: 'slovakia.gif', url: 'Europe/Bratislava'),
    WorldTime(location: 'Brisbane (Australia)', flag: 'astralia.gif', url: 'Australia/Brisbane'),
    WorldTime(location: 'Bucharest (Romania)', flag: 'romania.gif', url: 'Europe/Bucharest'),
    WorldTime(location: 'Budapest (Hungary)', flag: 'hungary.gif', url: 'Europe/Budapest'),
    WorldTime(location: 'Bujumbura (Burundi)', flag: 'burundi.gif', url: 'Africa/Bujumbura'),
    WorldTime(location: 'Buenos Aires(Argentina)', flag: 'argentina.gif', url: 'America/Argentina/Buenos Aires'),
    WorldTime(location: 'Brazzaville (Congo)', flag: 'congo.gif', url: 'Africa/Brazzaville'),
    WorldTime(location: 'Brussels(Belgium)', flag: 'belgium.gif', url: 'Europe/Brussels'),
    WorldTime(location: 'Cairo(Egypt)', flag: 'egypt.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Cancun(Mexico)', flag: 'mexico.gif', url: 'America/Cancun'),
    WorldTime(location: 'Caracas(Venezuela)', flag: 'venezuala.gif', url: 'America/Caracas'),
    WorldTime(location: 'Casablanca (Morocco)', flag: 'morocco.gif', url: 'Africa/Casablanca'),
    WorldTime(location: 'Catamarca(Argentina)', flag: 'argentina.gif', url: 'America/Argentina/Catamarca'),
    WorldTime(location: 'Chicago(USA)', flag: 'usa.png', url: 'America/Chicago'),
    WorldTime(location: 'Conakry (Guinea)', flag: 'guinea.gif', url: 'Africa/Conakry'),
    WorldTime(location: 'Cordoba(Argentina)', flag: 'argentina.gif', url: 'America/Argentina/Cordoba'),
    WorldTime(location: 'Copenhagen (Denmark)', flag: 'denmark.gif', url: 'Europe/Copenhagen'),
    WorldTime(location: 'Costarica', flag: 'costarica.gif', url: 'America/Costa Rica'),
    WorldTime(location: 'Cuiaba (Brazil)', flag: 'brazil.gif', url: 'America/Cuiaba'),
    WorldTime(location: 'Dakar(Senegal)', flag: 'senegal.gif', url: 'Africa/Dakar'),
    WorldTime(location: 'Darwin (Australia)', flag: 'astralia.gif', url: 'Australia/Darwin'),
    WorldTime(location: 'Dhaka (Bangladesh)', flag: 'bangladesh.gif', url: 'Asia/Dhaka'),
    WorldTime(location: 'Douala (Cameroon)', flag: 'cameroon.gif', url: 'Africa/Douala'),
    WorldTime(location: 'Dubai', flag: 'uae.gif', url: 'Asia/Dubai'),
    WorldTime(location: 'Dublin(Ireland)', flag: 'ireland.gif', url: 'Europe/Dublin'),
    WorldTime(location: 'Eirunepe (Brazil)', flag: 'brazil.gif', url: 'America/Eirunepe'),
    WorldTime(location: 'Eucla (Australia)', flag: 'astralia.gif', url: 'Australia/Eucla'),
    WorldTime(location: 'Famagusta (Cyprus)', flag: 'cyprus.gif', url: 'Asia/Famagusta'),
    WorldTime(location: 'Fortaleza (Brazil)', flag: 'brazil.gif', url: 'America/Fortaleza'),
    WorldTime(location: 'Freetown (Sierra leone)', flag: 'serialeone.gif', url: 'Africa/Freetown'),
    WorldTime(location: 'Gaborone (Botswana)', flag: 'botswana.gif', url: 'Africa/Gaborone'),
    WorldTime(location: 'Guayaguil (Ecuador)', flag: 'ecuador.gif', url: 'America/Guayaguil'),
    WorldTime(location: 'Harare (Zimbabwe)', flag: 'zimbabwe.gif', url: 'Africa/Harare'),
    WorldTime(location: 'Hayana (Cuba)', flag: 'cuba.gif', url: 'America/Hayana'),
    WorldTime(location: 'Helsinki (Finland)', flag: 'finland.gif', url: 'Europe/Helsinki'),
    WorldTime(location: 'Hobart (Australia)', flag: 'astralia.gif', url: 'Australia/Hobart'),
    WorldTime(location: 'Ho chi minch (Viet Nam)', flag: 'vietnam.gif', url: 'Asia/Ho_Chi_Minch'),
    WorldTime(location: 'Istanbul(Turkey)', flag: 'turkey.gif', url: 'Europe/Istanbul'),
    WorldTime(location: 'Jakarta(Indonesia)', flag: 'indonesia.png', url: 'Asia/Jakarta'),
    WorldTime(location: 'Jamaica (Jamaica)', flag: 'jamaica.gif', url: 'America/Jamaica'),
    WorldTime(location: 'Jerusalem(Israel)', flag: 'israel.gif', url: 'Asia/Jerusalem'),
    WorldTime(location: 'Johannesburg(South Africa)', flag: 'southafrica.gif', url: 'Africa/Johannesburg'),
    WorldTime(location: 'Juba(South Sudan)', flag: 'southsudan.gif', url: 'Africa/Juba'),
    WorldTime(location: 'Jujuy(Argentina)', flag: 'argentina.gif', url: 'America/Argentina/Jujuy'),
    WorldTime(location: 'Kabul (Afghanistan)', flag: 'af-flag.gif', url: 'Asia/Kabul'),
    WorldTime(location: 'Kampala (Uganda)', flag: 'uganda.gif', url: 'Africa/Kampala'),
    WorldTime(location: 'Karachi (Pakistan)', flag: 'pakistan.gif', url: 'Asia/Karachi'),
    WorldTime(location: 'Khartoum(Sudan)', flag: 'sudan.gif', url:'Africa/Khartoum'),
    WorldTime(location: 'Kiev (Ukraine)', flag: 'ukraine.gif', url: 'Europe/Kiev'),
    WorldTime(location: 'Kigali (Rwanda)', flag: 'rwanda.gif', url: 'Africa/Kigali'),
    WorldTime(location: 'Kolkata (India)', flag: 'india.gif', url: 'Asia/Kolkata'),
    WorldTime(location: 'Kuala lumpur(Malasia)', flag: 'malasia.gif', url: 'Asia/Kuala Lumpur'),
    WorldTime(location: 'Kuwait (Kuwait)', flag: 'kuwait.gif', url: 'Asia/Kuwait'),
    WorldTime(location: 'Lagos(Nigeria)', flag: 'nigeria.gif', url: 'Africa/Lagos'),
    WorldTime(location: 'La Rioja(Argentina)', flag: 'argentina.gif', url: 'America/Argentina/La_Rioja'),
    WorldTime(location: 'Libreville (Gabon)', flag: 'gabon.gif', url: 'Africa/Libreville'),
    WorldTime(location: 'Lima (Peru)', flag: 'peru.gif', url: 'America/Lima'),
    WorldTime(location: 'Lindeman (Australia)', flag: 'astralia.gif', url: 'Australia/Lindeman'),
    WorldTime(location: 'Lisbon(Portugal)', flag: 'portugal.gif', url:'Europe/Lisboon'),
    WorldTime(location: 'Ljubljana (Slovenia)', flag: 'slovenia.gif', url: 'Europe/Ljubljana'),
    WorldTime(location: 'Lome (Togo)', flag: 'togo.gif', url: 'Africa/Lome'),
    WorldTime(location: 'London(United Kingdom)', flag: 'uk.png', url: 'Europe/London'),
    WorldTime(location: 'Luanda (Angola)', flag: 'angoloa.gif', url: 'Africa/Luanda'),
    WorldTime(location: 'Lusaka (Zambia)', flag: 'zambia.gif', url: 'Africa/Lusaka'),
    WorldTime(location: 'Luxembourg (Luxembourg)', flag: 'luxembourg.gif', url: 'Europe/Luxembourg'),
    WorldTime(location: 'Maceio (Brazil)', flag: 'brazil.gif', url: 'America/Maceio'),
    WorldTime(location: 'Manaus (Brazil)', flag: 'brazil.gif', url: 'America/Manaus'),
    WorldTime(location: 'Macquarie (Australia)', flag: 'astralia.gif', url: 'Antarctica/Macquarie'),
    WorldTime(location: 'Madrid(Spain)', flag: 'spain.gif', url: 'Europe/Madrid'),
    WorldTime(location: 'Manila (Philippine)', flag: 'philippines.gif', url: 'Asia/Manila'),
    WorldTime(location: 'Maputo(Mozambique)', flag: 'mozambique.gif', url: 'Africa/Maputo'),
    WorldTime(location: 'Mauritius (Mauritius)', flag: 'mauritius.gif', url: 'Indian/Mauritius'),
    WorldTime(location: 'Maseru (Lesotho)', flag: 'lesotho.gif', url: 'Africa/Maseru'),
    WorldTime(location: 'Mendoza(Argentina)', flag: 'argentina.gif', url: 'America/Argentina/Mendoza'),
    WorldTime(location: 'Mexico city', flag: 'mexico.gif', url: 'America/Mexico City'),
    WorldTime(location: 'Mogadishu (Somalia)', flag: 'somalia.gif', url: 'Africa/Mogadishu'),
    WorldTime(location: 'Monrovia(Liberia)', flag: 'liberia.gif', url: 'Africa/Monrovia'),
    WorldTime(location: 'Montevideo(Uruguay)', flag: 'uruguay.gif', url: 'America/Montevideo'),
    WorldTime(location: 'Moscow (Russia)', flag: 'russia.gif', url: 'Europe/Moscow'),
    WorldTime(location: 'Muscat (Oman)', flag: 'oman.gif', url: 'Asia/Muscat'),
    WorldTime(location: 'Nairobi(Kenya)', flag: 'kenya.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'Ndjamena(Chad)', flag: 'chad.gif', url: 'Africa/Ndjamena'),
    WorldTime(location: 'Niamey (Niger)', flag: 'niger.gif', url: 'Africa/Niamey'),
    WorldTime(location: 'Noronha (Brazil)', flag: 'brazil.gif', url: 'America/Noronha'),
    WorldTime(location: 'Nouakchott (Mauritania)', flag: 'maritania.gif', url: 'Africa/Nouakchott'),
    WorldTime(location: 'New York(USA)', flag: 'usa.png', url: 'America/New_York'),
    WorldTime(location: 'Oslo (Norway)', flag: 'norway.gif', url: 'Europe/Oslo'),
    WorldTime(location: 'Ouagadougou (Burkina Faso)', flag: 'bukina faso.gif', url: 'Africa/Ouagadougou'),
    WorldTime(location: 'Pacific (America)', flag: 'usa.png', url: 'Pacific/Pago Pago'),
    WorldTime(location: 'Paco paco (American Samoa)', flag: 'usa.png', url: 'Pacific/Pago_Pago'),
    WorldTime(location: 'Panama (Panama)', flag: 'palama.gif', url: 'America/Panama'),
    WorldTime(location: 'Paris(France)', flag: 'france.gif', url: 'Europe/Paris'),
    WorldTime(location: 'Perth (Australia)', flag: 'astralia.gif', url: 'Australia/Perth'),
    WorldTime(location: 'Phoenix (USA)', flag: 'usa.png', url: 'America/Phoenix'),
    WorldTime(location: 'Porto Novo (Benin)', flag: 'benin.gif', url: 'Africa/Porto-Novo'),
    WorldTime(location: 'Porto_Velho (Brazil)', flag: 'brazil.gif', url: 'America/Porto_Velho'),
    WorldTime(location: 'Qatar (Qatar)', flag: 'qatar.gif', url: 'Asia/Qatar'),
    WorldTime(location: 'Recife (Brazil)', flag: 'brazil.gif', url: 'America/Recife'),
    WorldTime(location: 'Reykjavik (Iceland)', flag: 'iceland.gif', url: 'Atlantic/Reykjavik'),
    WorldTime(location: 'Rio_Branco (Brazil)', flag: 'brazil.gif', url: 'America/Rio_Branco'),
    WorldTime(location: 'Riyadh (Saudi Arabia)', flag: 'saudiarabia.gif', url: 'Asia/Riyadh'),
    WorldTime(location: 'Salta (Argentina)', flag: 'argentina.gif', url: 'America/Argentina/Salta'),
    WorldTime(location: 'Samara (Russia)', flag: 'russia.gif', url: 'Europe/Samara'),
    WorldTime(location: 'San Marino (San Marino)', flag: 'sanmorino.gif', url: 'Europe/San_Marino'),
    WorldTime(location: 'Santarem (Brazil)', flag: 'brazil.gif', url: 'America/Santarem'),
    WorldTime(location: 'Santiago(Chile)', flag: 'chile.gif', url:'America/Santiago'),
    WorldTime(location: 'Sao Paulo (Brazil)', flag: 'brazil.gif', url: 'America/Sao Paulo'),
    WorldTime(location: 'Shanghai (China)', flag: 'china.gif', url: 'Asia/Shanghai'),
    WorldTime(location: 'Singapore(Singapore)', flag: 'china.gif', url: 'Asia/Singapore'),
    WorldTime(location: 'Seoul(South Korea)', flag: 'south_korea.png', url: 'Asia/Seoul'),
    WorldTime(location: 'Sofia (Bulgaria)', flag: 'bulgaria.gif', url: 'Europe/Sofia'),
    WorldTime(location: 'Stockholm (Sweden)', flag: 'sweeden.gif', url: 'Europe/Stockholm'),
    WorldTime(location: 'Sydney (Australia)', flag: 'astralia.gif', url: 'Australia/Sydney'),
    WorldTime(location: 'Tbilisi (Georgia)', flag: 'geogia.gif', url: 'Asia/Tbilisi'),
    WorldTime(location: 'Tegucigalpa (Honduras)', flag: 'honduras.gif', url: 'America/Tegucigalpa'),
    WorldTime(location: 'Tirane (Albania)', flag: 'almania.gif', url: 'Europe/Tirane'),
    WorldTime(location: 'Tokyo (Japan)', flag: 'japan.gif', url: 'Asia/Tokyo'),
    WorldTime(location: 'Toronto(Canada)', flag: 'canada.gif', url: 'America/Toronto'),
    WorldTime(location: 'Tripoli(Libya)', flag: 'libya.gif', url: 'Africa/Tripoli'),
    WorldTime(location: 'Tunis(Tunisia)', flag: 'tunisia.gif', url: 'Africa/Tunis'),
    WorldTime(location: 'Urumgi (China)', flag: 'china.gif', url: 'Asia/Urumgi'),
    WorldTime(location: 'Vancouver (Canada)', flag: 'canada.gif', url: 'America/Vancouver'),
    WorldTime(location: 'Vietnam', flag: 'vietnam.gif', url: 'Asia/Ho Chi Minch'),
    WorldTime(location: 'Vienna (Austria)', flag: 'austria.gif', url: 'Europe/Vienna'),
    WorldTime(location: 'Warsaw (Poland)', flag: 'poland.gif', url: 'Europe/Warsaw'),
    WorldTime(location: 'Windhoek(Namibia)', flag: 'namibia.gif', url: 'Africa/Windhoek'),
    WorldTime(location: 'Yerevan (Almania)', flag: 'almania.gif', url: 'Asia/Yerevan'),
    WorldTime(location: 'Zagreb (Croatia)', flag: 'croatia.gif', url: 'Europe/Zagreb'),
    WorldTime(location: 'Zurich (Switzerland)', flag: 'uk.png', url: 'Europe/Zurich'),


  ];

  void upDateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    //after getting the time for the click location, we need to navigate back to the home screen

    Navigator.pop(context,{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaTime': instance.isDaTime
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose location screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
           child: Card(
             child: ListTile(
               onTap: (){
                 upDateTime(index);
               },
               title: Text(locations[index].location),
               leading: CircleAvatar(
                 backgroundImage: AssetImage('assets/${locations[index].flag}'),
               ),
             ),
           ),
         );
        }
      ),
    );
  }
}
