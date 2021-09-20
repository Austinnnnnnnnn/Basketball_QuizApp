import 'package:flutter/material.dart';


class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final String desc="(Black Mamba, KB24, Vino, Showboat, Little Flying Warrior, The Eighth Man, Lord of the Rings) Position: Shooting Guard and Small Forward ▪ Shoots: Right6-6, 212lb (198cm, 96kg)";
      static List<String> pic=["https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-159141331-1580077058.jpg?crop=0.5446666666666666xw:1xh;center,top&resize=480:*",
  "https://pyxis.nymag.com/v1/imgs/333/89a/8ec9fc296be16b3aea39dac1be0d369e4c-26-bryant.rsquare.w1200.jpg",
  "https://www.sideshow.com/wp/wp-content/uploads/2020/02/The-Final-Bow-Kobe-Bryant.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Kobe_Bryant_8.jpg/1200px-Kobe_Bryant_8.jpg",
      "https://ichef.bbci.co.uk/news/976/cpsprodpb/B4F8/production/_116882364_kobemural.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:ListView(

        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container( //create the top image
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage("https://cdn.nba.com/manage/2020/02/Kobe-memorial-v3.jpg"),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              Container( // create the gradient
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0x00f5f5f5),Color(0xfff5f5f5)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                ),
                height: 80,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Card(  // create the Kobe picture card
                child: ClipRect(
                  child: Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage("https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTgwMzQyOTk2OTY3ODkyODQ0/gettyimages-490703338.jpg"),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15), // space
              Expanded( // Kobe description
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Kobe Bryant",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  Text.rich(TextSpan(style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),children: <TextSpan>[
                    TextSpan(
                      text: desc,
                    ),
                  ]))
                ],
              ),
              ),
            ],
          ),
          Padding(  // add a grey line
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),

          Container(  // create the listview
            height: 170,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context,index)=>SizedBox(width: 8),
              itemCount: pic.length,
              itemBuilder: (context,index)=>ClipRect(

                child: Container(
                  width: MediaQuery.of(context).size.width/4,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage(pic[index]),
                      fit: BoxFit.cover)
                  ),
                ),
              )),
          ),
          SizedBox(height: 30), // space
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(  // create the quiz button
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>Kobe()));
                  },
                color: Colors.deepPurple,
                child: Text("Quiz Time!",style: TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                  fontSize: 15
                ),),
              ),
              RaisedButton(  // create the next star button and jump to the next star
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> YaoMing()));
                },
                color: Colors.orange,
                child: Text("Next Star",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Kobe extends StatelessWidget {
  const Kobe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.08),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage("https://cdn.now.howstuffworks.com/media-content/56ff084e-d8d5-46a2-9d34-b0c05f039451-1210-680.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height:150,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple.withOpacity(0.1)
              ),
              child: Center(
                child: Text("Do you know the name of the superstar who came to join Kobe in Los Angeles during his rookie season?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple
                ),),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    final snackbar=SnackBar(
                        content: Text("Correct!"),
                      backgroundColor: Colors.green,
                      duration: Duration(milliseconds: 500),

                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                    child: Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.withOpacity(0.8)
                      ),
                      child: Center(
                        child: Text("Shaquille O'Neal",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple
                        ),),
                      ),
                    ),
                ),
                InkWell(
                  onTap: (){
                    final snackbar=SnackBar(
                      content: Text("Incorrect!"),
                      backgroundColor: Colors.red,
                      duration: Duration(milliseconds: 500),

                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.withOpacity(0.8)
                    ),
                    child: Center(
                      child: Text("Tim Duncan",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple
                      ),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    final snackbar=SnackBar(
                      content: Text("Incorrect!"),
                      backgroundColor: Colors.red,
                      duration: Duration(milliseconds: 500),

                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.withOpacity(0.8)
                    ),
                    child: Center(
                      child: Text("LeBron James",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple
                      ),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    final snackbar=SnackBar(
                      content: Text("Incorrect!"),
                      backgroundColor: Colors.red,
                      duration: Duration(milliseconds: 500),

                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.withOpacity(0.8)
                    ),
                    child: Center(
                      child: Text("Kevin Garnett",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple
                      ),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: Icon(Icons.arrow_back_rounded,color: Colors.deepPurple,)

                  ),

                  IconButton(onPressed: (){
                    debugPrint("dhad");
                  }, icon: Icon(Icons.arrow_forward_rounded),color: Colors.deepPurple,)
                ],
            ),
          ],
        ),
      ),
    );
  }
}


class YaoMing extends StatelessWidget {
  const YaoMing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage("https://wildaid.org/wp-content/uploads/2017/09/Yao-CU-uniform.jpg"),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage("http://qqpublic.qpic.cn/qq_public/0/0-3144076185-906DD1754FFD18617CC0360326FD6F0C/0?fmt=jpg&size=41&h=488&w=521&ppv=1"),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage("https://thumbor.forbes.com/thumbor/fit-in/0x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fi.forbesimg.com%2Fmedia%2Flists%2Fteams%2Fhouston-rockets_416x416.jpg"),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Stack(
              alignment: Alignment.center,
              children:<Widget>[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 200),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://bdasportsinternational.com/wp-content/uploads/2010/07/YaoMing.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 46),
                  child: Text("Yao Ming, (born September 12, 1980, Shanghai, China), Chinese basketball player, who became an international star as a centre for the Houston Rockets of the National Basketball Association (NBA). ... The only major sport invented in the United States, basketball has become a global phenomenon.",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),),
                ),
              ],
            ),
            RaisedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
              color: Colors.red,
              child: Text("Back",style: TextStyle(
                fontWeight: FontWeight.bold,
                 fontSize: 15,
                color: Colors.white
              ),),

            ),
          ],
      ),
    );
  }
}

