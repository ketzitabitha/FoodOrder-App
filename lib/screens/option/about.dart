import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 227, 178),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(size.height / 7),
            child: Container(
              height: size.height / 6,
              child: Column(
                children: [
                  Image.asset("asset/logo.png"),
                  Text(
                    "Nalam Foods.com",
                    style: TextStyle(fontSize: 18),
                  )
                  // Icon(Icons.dining_sharp,size: size.width*0.3,)
                ],
              ),
            ),
          ),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 100,
                  image: AssetImage("asset/bg5.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(height: size.height*0.24,),
              Text(
                "Nalam-foods.com\n9/39/A Peruma Palayam,\nElavamalai,\nErode-638316\nFssai : 2242205600516",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
