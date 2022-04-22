import 'package:flutter/material.dart';
import 'package:islami/screens/souraname.dart';

class QuranPage extends StatelessWidget {
  QuranPage({Key? key}) : super(key: key);
  List<Map<String, String>> suraList= [
{'name':'الفاتحه', 'ayat':'7'},
{'name':'البقرة', 'ayat':'286'},
{'name':'آل عمران', 'ayat':'200'},
{'name':'النساء', 'ayat':'176'},
{'name':'المائدة', 'ayat':'120'},
{'name':'الأنعام', 'ayat':'165'},
{'name':'الأعراف', 'ayat':'206'},
{'name':'الأنفال', 'ayat':'75'},
{'name':'التوبة', 'ayat':'129'},
{'name':'يونس', 'ayat':'109'},
{'name':'هود', 'ayat':'124'},
{'name':'يوسف', 'ayat':'112'},
{'name':'الرعد', 'ayat':'43'},
{'name':'إبراهيم', 'ayat':'53'},
{'name':'الحجر', 'ayat':'100'},
{'name':'النحل', 'ayat':'128'},
{'name':'الإسراء', 'ayat':'112'},
{'name':'الكهف', 'ayat':'112'},
{'name':'مريم', 'ayat':'98'},
{'name':'طه', 'ayat':'135'},
{'name':'الأنبياء', 'ayat':'110'},
{'name':'الحج', 'ayat':'78'},
{'name':'المؤمنون', 'ayat':'118'},
{'name':'النّور', 'ayat':'64'},
{'name':'الفرقان', 'ayat':'79'},
{'name':'الشعراء', 'ayat':'228'},
{'name':'النّمل', 'ayat':'93'},
{'name':'القصص', 'ayat':'89'},
{'name':'العنكبوت', 'ayat':'69'},
{'name':'الرّوم', 'ayat':'61'},
{'name':'لقمان', 'ayat':'34'},
{'name':'السجدة', 'ayat':'31'},
{'name':'الأحزاب', 'ayat':'75'},
{'name':'سبأ', 'ayat':'54'},
{'name':'فاطر', 'ayat':'44'},
{'name':'يس', 'ayat':'83'},
{'name':'الصافات', 'ayat':'182'},
{'name':'ص', 'ayat':'90'},
{'name':'الزمر', 'ayat':'76'},
{'name':'غافر', 'ayat':'85'},
{'name':'فصّلت', 'ayat':'54'},
{'name':'الشورى', 'ayat':'54'},
{'name':'الزخرف', 'ayat':'90'},
{'name':'الدّخان', 'ayat':'60'},
{'name':'الجاثية', 'ayat':'37'},
{'name':'الأحقاف', 'ayat':'34'},
{'name':'محمد', 'ayat':'38'},
{'name':'الفتح', 'ayat':'29'},
{'name':'الحجرات', 'ayat':'19'},
{'name':'ق', 'ayat':'45'},
{'name':'الذاريات', 'ayat':'60'},
{'name':'الطور', 'ayat':'50'},
{'name':'النجم', 'ayat':'62'},
{'name':'القمر', 'ayat':'56'},
{'name':'الرحمن', 'ayat':'79'},
{'name':'الواقعة', 'ayat':'96'},
{'name':'الحديد', 'ayat':'29'},
{'name':'المجادلة', 'ayat':'22'},
{'name':'الحشر', 'ayat':'25'},
{'name':'الممتحنة', 'ayat':'13'},
{'name':'الصف', 'ayat':'14'},
{'name':'الجمعة', 'ayat':'11'},
{'name':'المنافقون', 'ayat':'12'},
{'name':'التغابن', 'ayat':'18'},
{'name':'الطلاق', 'ayat':'13'},
{'name':'التحريم', 'ayat':'12'},
{'name':'الملك', 'ayat':'30'},
{'name':'القلم', 'ayat':'52'},
{'name':'الحاقة', 'ayat':'52'},
{'name':'المعارج', 'ayat':'45'},
{'name':'نوح', 'ayat':'28'},
{'name':'الجن', 'ayat':'28'},
{'name':'المزّمّل', 'ayat':'20'},
{'name':'المدّثر', 'ayat':'56'},
{'name':'القيامة', 'ayat':'40'},
{'name':'الإنسان', 'ayat':'31'},
{'name':'المرسلات', 'ayat':'50'},
{'name':'النبأ', 'ayat':'40'},
{'name':'النازعات', 'ayat':'46'},
{'name':'عبس', 'ayat':'42'},
{'name':'التكوير', 'ayat':'29'},
{'name':'الإنفطار', 'ayat':'19'},
{'name':'المطفّفين', 'ayat':'36'},
{'name':'الإنشقاق', 'ayat':'25'},
{'name':'البروج', 'ayat':'22'},
{'name':'الطارق', 'ayat':'17'},
{'name':'الأعلى', 'ayat':'19'},
{'name':'الغاشية', 'ayat':'26'},
{'name':'الفجر', 'ayat':'30'},
{'name':'البلد', 'ayat':'20'},
{'name':'الشمس', 'ayat':'15'},
{'name':'الليل', 'ayat':'21'},
{'name':'الضحى', 'ayat':'11'},
{'name':'الشرح', 'ayat':'8'},
{'name':'التين', 'ayat':'8'},
{'name':'العلق', 'ayat':'19'},
{'name':'القدر', 'ayat':'5'},
{'name':'البينة', 'ayat':'8'},
{'name':'الزلزلة', 'ayat':'8'},
{'name':'العاديات', 'ayat':'11'},
{'name':'القارعة', 'ayat':'11'},
{'name':'التكاثر', 'ayat':'8'},
{'name':'العصر', 'ayat':'3'},
{'name':'الهمزة', 'ayat':'9'},
{'name':'الفيل', 'ayat':'5'},
{'name':'قريش', 'ayat':'4'},
{'name':'الماعون', 'ayat':'7'},
{'name':'الكوثر', 'ayat':'3'},
{'name':'الكافرون', 'ayat':'6'},
{'name':'النصر', 'ayat':'3'},
{'name':'المسد', 'ayat':'5'},
{'name':'الإخلاص', 'ayat':'4'},
{'name':'الفلق', 'ayat':'5'},
{'name':'الناس', 'ayat':'6'},
];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Image.asset("assets/img/header.png")),
        ),


        Text("Soura Name",          style: Theme.of(context).textTheme.headline3,
),

   Divider(
                    thickness: 3,
                    color: Theme.of(context).primaryColor,
                  ),
      
        Expanded(
          
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return SouraNamedet('${suraList[index]['name']}', index,'${suraList[index]['ayat']}');
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    color: Theme.of(context).primaryColor,
                  );
                },
                itemCount: suraList.length))
      ],
    );
  }
}
