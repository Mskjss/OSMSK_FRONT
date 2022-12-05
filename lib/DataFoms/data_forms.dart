import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import '../Screem/screens_cadastro_simple.dart';

class DataForms extends StatelessWidget {
  const DataForms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}

//imagem de rodapé que vai se repetir
class RodapeImage extends StatelessWidget {
  const RodapeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        height: 25,
        child: Image.asset('assets/images/logorodape.JPG'),
      ),
    );
  }
}

//Buttons que possam repetir
class ElevatorButtonContinuar extends StatelessWidget {
  const ElevatorButtonContinuar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(

        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent[400]),
        child: const Text('Continuar...',),),

    );
  }
}

class TextButtonCadastrar extends StatelessWidget {
  const TextButtonCadastrar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => ScreemCadastroSimples(cadContext: context,)));
      },
      child: Row(
        children: const [
          Text(
            'Cadastrar',
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

//Inputs que possam repetir
class TextFormatedUserName extends StatelessWidget {
  const TextFormatedUserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (String? value) {
          return null;
        },
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          //border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey)),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
          labelText: 'Enter your usermail',
          labelStyle: TextStyle(
            color: Colors.grey,

          ) ,
          //focusColor: Colors.black,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class TextFormatedEmail extends StatelessWidget {
  const TextFormatedEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (String? value) {
          return null;
        },

        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          //border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide(color: Colors.grey)),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
          labelText: 'Enter your email',
          labelStyle: TextStyle(
          color: Colors.grey,

          ) ,
          //focusColor: Colors.black,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class TextFormatedCell extends StatelessWidget {
  const TextFormatedCell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (String? value) {
          return null;
        },
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          //border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey)),
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
          labelText: 'Enter your cell',
          labelStyle: TextStyle(
            color: Colors.grey,

          ) ,
          //focusColor: Colors.black,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

class TextFormatePassword extends StatefulWidget {
   const TextFormatePassword({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFormatePassword> createState() => _TextFormatePasswordState();
}

class _TextFormatePasswordState extends State<TextFormatePassword> {
   bool _showPassword=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (String? value) {
          return null;
        },
        textAlign: TextAlign.center,
        style:const TextStyle(color: Colors.grey),
        decoration:  InputDecoration(
              focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey)),
          //border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange)),

          labelText: 'Enter your password',
          labelStyle: const TextStyle(color: Colors.grey,) ,
          //focusColor: Colors.black,
          fillColor: Colors.white,
          filled: true,
          suffixIcon:GestureDetector(
              child:  Icon(_showPassword==false? Icons.visibility_off:Icons.visibility_off,color: Colors.orange,),
    onTap:(){
                setState(() {
                  _showPassword=!_showPassword;
                });
    }

          ) ,
    ),
        obscureText: _showPassword==false?true:false,
        ),
    );
  }
}

class TextFormateExemplo extends StatelessWidget {
  const TextFormateExemplo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (String? value) {
          return null;
        },
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Enter your teste',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}



///Message  de Texto que podem repetir
class MessageDesejaContinuar extends StatelessWidget {
  const MessageDesejaContinuar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Como Deseja Continuar",
        style:
        TextStyle(color: Colors.black, fontSize: 15),
      ),

    );
  }
}
class MessageBomtiver extends StatelessWidget {
  const MessageBomtiver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Que Bom Ver Voçê por Aqui!!",
        style:
        TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}

class MessageVamosContinuar extends StatelessWidget {
  const MessageVamosContinuar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Vamos Continuar!!",
        style:
        TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }
}

///Separador de Campo
class SeparetorOR extends StatelessWidget {
  const SeparetorOR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: const <Widget>[
        Expanded(
            child: Divider(
              color: Colors.grey,
              indent: 20.0,
              endIndent: 10.0,
              thickness: 1,
            )),
        Text("   ou"),
        Expanded(
            child: Divider(
              color: Colors.grey,
              indent: 20.0,
              endIndent: 10.0,
              thickness: 1,
            )),
      ]),
    );
  }
}

///Login Com midia
class SignFacebook extends StatelessWidget {
  const SignFacebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FacebookAuthButton(
        onPressed: () {},
      ),
    );
  }
}

class SignGoogle extends StatelessWidget {
  const SignGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GoogleAuthButton(
        onPressed: () {},
      ),
    );
  }
}

///AppBAr Padrão
class AppBarPadrao extends StatelessWidget implements PreferredSizeWidget{
   final String title;
   //final String title;
  const AppBarPadrao({

    Key? key, required this.title
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      titleSpacing: 00.0,
      centerTitle: true,
      toolbarOpacity: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25)),
      ),
      elevation: 3.00,
      backgroundColor: Colors.orangeAccent[400],
      leading: Container(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}
