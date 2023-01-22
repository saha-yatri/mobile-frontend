import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:procative_indicator/widgets/classSubjectCard.dart';

import 'homePage.dart';

class StudentListPage extends StatelessWidget {
  StudentListPage({super.key});
  final color = const Color(0xff638FFF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  FontAwesomeIcons.arrowLeft,
                                )),
                            const Text(
                              "Class Student List",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            size: 18,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )),
              ),
              StudentListCard(
                  name: "Hari Thakuri",
                  roll: 1,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t1.6435-9/80894453_451048998898293_8056640614663454720_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFmg1pH_uUvr_HgiYq442QQEpFHbbt6d-kSkUdtu3p36TzEwhyYsFPjE99qNMxC2KBhaa8xMAUSV6facY5Hwfmn&_nc_ohc=2Nm0-JqGuuEAX_NBpPq&tn=KqOGiS1MA8fjzM_A&_nc_ht=scontent.fktm19-1.fna&oh=00_AfAv_owt3eNSwcV7xsEEyqIdGTv7ZFKu4UBtsIUgwWRIsg&oe=63F53321"),
              StudentListCard(
                  name: "Krishna Dhakal",
                  roll: 2,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t1.6435-9/106090771_1007134739744106_4401846340726230929_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEqx5YEE_zObVpSrpdkSH_fEqSy55GHsQsSpLLnkYexC7aQimMCbB5c6qPHJbStQpJzRrKEe_lTmsLV-aJJwl1N&_nc_ohc=zlX2X9R1yuEAX_rP9xJ&_nc_ht=scontent.fktm19-1.fna&oh=00_AfBtSYzx7iTjiEzLsiNHLn5PzwSCo-CflK4XPKktYcbcMw&oe=63F5174D"),
              StudentListCard(
                  name: "Anish Mahato",
                  roll: 3,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t1.6435-9/167903016_1892971630857955_3833113118698600321_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeHRGsoeAOb8xDi6AAcxu6gbdbPxGpiVqf11s_EamJWp_aZe8EspyuR5x8D_tkK1VvUhWD8xm5jZMQ65jTRKCu51&_nc_ohc=xpLjt3humQ8AX9SdDPV&_nc_ht=scontent.fktm19-1.fna&oh=00_AfB8Tcwg7Y8MrHI5EMG-SurnKHXejcEAAKTnIcjfB47dIg&oe=63F52D0E"),
              StudentListCard(
                  name: "Roshan Shrestha",
                  roll: 4,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t1.6435-9/120038106_320903085862613_2179635930378588145_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeHXUlWzCQfaLmcB49HNeFB6lvl_7Wf2FkuW-X_tZ_YWS8esR26eTpDYCXVuseLwiDKXSX5toLXy7ku3Ri1H9bx8&_nc_ohc=DQKwLGR1LsMAX-b-rvm&tn=KqOGiS1MA8fjzM_A&_nc_ht=scontent.fktm19-1.fna&oh=00_AfDkY3dh1hRyr5fuhb64ITcH5UhazbzFPfTrpgfcZGeEHg&oe=63F51826"),
              StudentListCard(
                  name: "Kushal Adhikari",
                  roll: 6,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t39.30808-6/323243735_1164350960874151_7145235008728246999_n.jpg?stp=dst-jpg_p526x296&_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHo4xFfvdhI7zQ8aowAK6Is5NzTyDJL19Lk3NPIMkvX0pw-B5y-zqkz58AmTZ6XyGg_hl-JJWcjMVAv8U9d9pka&_nc_ohc=W-sax1Sc80IAX-6v1uf&_nc_ht=scontent.fktm19-1.fna&oh=00_AfC2RLGJxF_lSouSWY0yrYb2x-NFMEBai8EKi8lO7mMoOQ&oe=63D222CA"),
              StudentListCard(
                  name: "Rijan Marahatha",
                  roll: 7,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t39.30808-6/319633119_1480785812411535_5176032757697195718_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHUXlf52WX_7EnjfLAOGtZMVMV0fNa9B0ZUxXR81r0HRs87qsAbADZy-dIOctSiK-72Gba5gKM7AN9Um2BFYhlo&_nc_ohc=5cbIdADy1fMAX_9nkUd&_nc_ht=scontent.fktm19-1.fna&oh=00_AfAtGEPdbT5-ofLpYMYM8BEoyKYMRp-0y_NJ6LE08cvMfA&oe=63D1C210"),
              StudentListCard(
                  name: "Syouj Regmi",
                  roll: 8,
                  url:
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t39.30808-6/293613520_1138344770047712_641913448074274272_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEM7TaQb3INemIr3jMwYz4ynydjjNU3tnyfJ2OM1Te2fOKfE5uovaBSwLJ3uziC0Zb6DmPPrqujDjr-yLLTBN7l&_nc_ohc=pbvej52-5o8AX8JTCJ8&tn=KqOGiS1MA8fjzM_A&_nc_ht=scontent.fktm19-1.fna&oh=00_AfBuFaieINT6ZV3Chc-U-usjyKEwqbLV-j2L8XnwuZkodA&oe=63D1E315")
            ],
          ),
        ),
      )),
    );
  }
}

class StudentListCard extends StatefulWidget {
  final String name;
  final int roll;
  final String url;
  StudentListCard({required this.name, required this.roll, required this.url});
  @override
  State<StudentListCard> createState() => _StudentListCardState();
}

class _StudentListCardState extends State<StudentListCard> {
  List<bool> _selections = List.generate(8, (index) => false);
  final color = const Color(0xff638FFF);

  bool _isExpanded = false;
  bool isSelected = false;
  // bool _isExpanded = true;
  @override
  Widget build(BuildContext context) {
    print("from build $_isExpanded");
    return Column(
      children: [
        ExpansionTile(
            key: UniqueKey(),
            initiallyExpanded: _isExpanded,
            onExpansionChanged: (value) {
              setState(() {
                _isExpanded = value;
              });
              print(_isExpanded);
            },
            textColor: Colors.black,
            iconColor: Colors.black,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ToggleButtons(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Interest'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Cheerful"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Active'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Sad'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Fear"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Dis-obident'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Fight'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Bully"),
                      ),
                    ],
                    isSelected: _selections,
                    onPressed: (index) {
                      setState(() {
                        for (int buttonIndex = 0;
                            buttonIndex < _selections.length;
                            buttonIndex++) {
                          if (buttonIndex == index) {
                            _selections[buttonIndex] = true;
                          } else {
                            _selections[buttonIndex] = false;
                          }
                        }
                      });
                    },
                    // borderWidth: 20,
                    // renderBorder: false,
                    selectedColor: Color(0xff638FFF),
                    // direction: Axis.vertical,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text("Submit"),
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                      _selections = List.generate(8, (index) => false);
                    });
                  },
                ),
              )
            ],
            leading: CircleAvatar(
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(widget.url),
              ),
              radius: 25,
            ),
            title: Text("Name : " + widget.name),
            subtitle: Text("Roll no: " + widget.roll.toString()),
            trailing: _isExpanded
                ? const Icon(FontAwesomeIcons.angleUp)
                : const Icon(FontAwesomeIcons.angleDown)),
        const Divider(
          height: 2,
          color: Color(0xff595959),
        ),
      ],
    );
  }
}
