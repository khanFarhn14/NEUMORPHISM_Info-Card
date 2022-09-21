import 'package:flutter/material.dart';

void main() {
  runApp
  (
    const MaterialApp
    (
      home: InfoCard()
    )
  );
}

class InfoCard extends StatelessWidget 
{
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      //A P P  B A R
      appBar: AppBar
      (
        
        //Title
        title: const Text
        (
          "Info Card - Udemy",
          style: TextStyle
          (
            color: Colors.black,
            letterSpacing: 2.5,
            fontFamily: 'LemonMilk'
          )

        ),

        elevation: 0,//This will remove drop shadow from appBar
        centerTitle: true,
        backgroundColor: const Color(0xffD9D9D9),

      ),

      backgroundColor: const Color(0xffC6BFD9),

      //B O D Y
      body: Container
      (
        alignment: Alignment.center,
        child: Stack
        (
          children: 
          [
            _getCard(),
            // _getProfile()
            Positioned
            (
              right: 5,
              top: 5,
              child: _getProfile(),
            )
          ],
        ),
      )

    );
  }
  
  //Card Widget
 Container _getCard()
 {
  return Container
  (
    padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
    width: 350,
    height: 500,
    decoration: BoxDecoration
    (
      color: const Color(0xffC6BFD9),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow:
      [
        //+x, +y shadow
        BoxShadow
        (
          color: const Color(0xff726B86).withOpacity(0.3),
          offset: const Offset(10, 10),
          blurRadius: 20,
        ),

        //-x -y shadow
        const BoxShadow
        (
          color: Color(0xffD3CFDE),
          offset: Offset(-10, -10),
          blurRadius: 20,
        )
      ]
    ) ,

    child: Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: 
      [

        //N a m e
        RichText
        (
          text: TextSpan
          (
            text: 'Name:\n',
            style: _headStyle(),
            children: <TextSpan>
            [
              TextSpan
              (
                text: 'Khan Farhan',
                style: _answerStyle()
              )
            ]
          )
        ),

        // P r o f e s s i o n
        RichText
        (
          text: TextSpan
          (
            text: 'Profession:\n',
            style: _headStyle(),
            children: <TextSpan>
            [
              TextSpan
              (
                text: 'Frond End Dev and UI Designer',
                style: _answerStyle()
              )
            ]
          )
        ),

        // H o b b y  &  I n t e r e s t 
        RichText
        (
          text: TextSpan
          (
            text: 'Hobby & Interest:\n',
            style: _headStyle(),
            children: <TextSpan>
            [
              TextSpan
              (
                text: 'Want to know little about a lot',
                style: _answerStyle()
              )
            ]
          )
        ),

        Row
        (
          children: const 
          [
            Icon
            (
              Icons.email,
              color: Color(0xff5D4B90),
            ),
            SizedBox
            (
              width: 5.0,
            ),
            Text
            (
              "veighteatr14@gmail.com",
              style: TextStyle
              (
                fontFamily: 'Consola',
                color: Color(0xff5D4B90),
                letterSpacing: 2.0,
              )

            )
          ],
        ),

        //P a r a g r a p h
        RichText
        (
          text: TextSpan
          (
            text: 'if i could leave one single idea with you. it is that idea.',
            style: _paragraphNormalStyle(),
            children: <TextSpan>
            [
              TextSpan
              (
                text: 'Whenever you feel short or in need of something give what you want first and it will come back in buckets',
                style: _paragraphBoldStyle()
              ),

              const TextSpan
              (
                text: '  ft: Rich dad and Poor dad',
                style: TextStyle
                (
                  fontSize: 7.5,
                  fontFamily: 'NatureSpirit',
                  color: Color.fromARGB(255, 118, 103, 160),
                  letterSpacing: 1.5,
                )
              ),
            ]
          )
        ),
      ],
    )
  );
 }
  
  // h e a d S t y l e
  TextStyle _headStyle() {
    return const TextStyle
    (
      fontSize: 15.0,
      fontFamily: 'NatureSpirit',
      color: Color(0xff7A7098),
      letterSpacing: 2.9,
    );
  }
  
  // a n s w e r S t y l e
  TextStyle _answerStyle()
  {
    return const TextStyle
    (
      fontSize: 15.0,
      fontFamily: 'NatureSpirit',
      color: Color(0xff5D4B90),
      letterSpacing: 3.0,
    );
  }

  // p a r a g r a p h B o l d S t y l e
  TextStyle _paragraphBoldStyle()
  {
    return const TextStyle
    (
      fontSize: 12.0,
      fontFamily: 'NatureSpirit',
      color: Color(0xff5D4B90),
      letterSpacing: 2.5,
    );
  }

  // p a r a g r a p h N o r m a l S t y l e
  TextStyle _paragraphNormalStyle()
  {
    return const TextStyle
    (
      fontSize: 12.0,
      fontFamily: 'NatureSpirit',
      color: Color.fromARGB(255, 118, 103, 160),
      letterSpacing: 2.5,
    );
  }

  // P r o f i l e
  Container _getProfile()
  {
    // ignore: avoid_unnecessary_containers
    return Container
    (
      child: Image.asset(
        'assets/profile.png',
        height: 120,
        width: 120,
      )
    );
  }

}//Info Card End