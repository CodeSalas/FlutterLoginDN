import 'package:flutter/material.dart';

class LoginPageMorning extends StatefulWidget {

  @override
  _LoginPageMorningState createState() => _LoginPageMorningState();
}

class _LoginPageMorningState extends State<LoginPageMorning> {
  String fondo = 'assets/img/dia.png';
  String header = "Good Morning";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[Fondo(fondo: fondo,), SingleChildScrollView(child: SafeArea(child: _Header(context)))],
        ),
      ),
    );
  }

  Widget _Header(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(right: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            header,
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontFamily: 'Cabecera'),
          ),
          Divider(
            color: Colors.green,
            indent: 180,
          ),
          Text(
            'We pursue a relaxed gaming experience',
            style: TextStyle(
                color: Color.fromRGBO(138, 177, 179, 1.0), fontSize: 10),
          ),
          SizedBox(
            height: size.height*0.45,
          ),
          _usuario(),
          _password(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            SizedBox(width: 80, height: 90,),
            _boton1(),
            SizedBox(width: 60,),
            _boton2(),
            ],
          ),
          _cambiarfondo()
        ],
      ),
    );
  }

  Widget _cambiarfondo(){
    return Container(
      padding: EdgeInsets.only(right: 50),
      child: Opacity(
        opacity: 0.5,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(color: Colors.white)),
          onPressed: (){
              if(fondo == "assets/img/dia.png"){
                fondo = "assets/img/noche.png";
                header = "Good Night";
              }else{
                fondo = "assets/img/dia.png";
                header = "Good Morning";
              }
              setState((){});
          },
          color: Colors.transparent,
          child: Text('Cambiar de fondo', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

  Widget _boton1(){
    return Container(
      //padding: EdgeInsets.only(right: 60, top: 20),
      child: Opacity(
        opacity: 0.4,
        child: ButtonTheme(
            minWidth: 100,
            height: 30,
            child: RaisedButton(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: BorderSide(color: Colors.white)),
            onPressed: (){},
            child: Text('Sign up', style: TextStyle(fontSize: 10, color: Colors.white),),
          ),
        ),
      ),
    );
  }

  Widget _boton2(){
      return Container(
    //  padding: EdgeInsets.only(right: 60, top: 20),
      child: Opacity(
        opacity: 0.6,
        child: ButtonTheme(
            minWidth: 100,
            height: 30,
            child: RaisedButton(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), side: BorderSide(color: Colors.white)),
            onPressed: (){},
            child: Text('Sign in', style: TextStyle(fontSize: 10, color: Colors.white),),
          ),
        ),
      ),
    );
  }

  Widget _usuario() {
    return Container(
      padding: EdgeInsets.only(left: 80),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5))),
          suffixIcon:  Icon(
            Icons.person,
            color: Color.fromRGBO(255, 255, 255, 0.5),
          ),
          hintText: 'Username',
          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontSize: 15)
        ),
      ),
    );
  }

   Widget _password() {
    return Container(
      padding: EdgeInsets.only(left: 80),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5))),
          suffixIcon:  Icon(
            Icons.lock,
            color:Color.fromRGBO(255, 255, 255, 0.5),
          ),
          hintText: 'Password',
          hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontSize: 15)
        ),
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  String fondo;
  Fondo({this.fondo});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage(fondo),
        fit: BoxFit.cover,
      ),
    );
  }
}
