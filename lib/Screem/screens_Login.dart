import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

import '../DataFoms/data_forms.dart';

class ScreemLogin extends StatelessWidget {
  const ScreemLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Scaffold(
           appBar: const AppBarPadrao(title: '',

      ),
           body: Center(
            child: SingleChildScrollView(
             child: Stack(
               children: [
                Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
                  height: 600,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              MessageBomtiver(),
                              MessageDesejaContinuar(),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormatedEmail(),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextButtonCadastrar(),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SeparetorOR(),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SignGoogle(),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SignFacebook(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orangeAccent[400]),
                            child: const Text(
                              'Outras Opções...',
                            ),
                          ),
                        ),
                        const Text("Continuar Como Visitante"),
                        const RodapeImage(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
        ),
      )),
    ));
  }
}




