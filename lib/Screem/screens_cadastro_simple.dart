import 'package:flutter/material.dart';
import '../DataFoms/data_forms.dart';

class ScreemCadastroSimples extends StatefulWidget {
  const ScreemCadastroSimples({Key? key, required this.cadContext}) : super(key: key);
  final BuildContext cadContext;

  @override
  State<ScreemCadastroSimples> createState() => _ScreemCadastroSimplesState();
}

class _ScreemCadastroSimplesState extends State<ScreemCadastroSimples> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: const AppBarPadrao(
          title: "Rua Antonio Barbosa",
  ),
        body: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: 600,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            MessageBomtiver(),
                            MessageVamosContinuar(),

                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormatedUserName(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormatedEmail(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormatedCell(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormatePassword(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ElevatorButtonContinuar(),
                      ),
                      const RodapeImage()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            },
            backgroundColor: Colors.orange,
            child:const Icon(Icons.arrow_back) ,
          ),
        ),
      ),
    );
  }
}












