import 'package:flutter/material.dart';
import 'package:pi_dois/pages/costumers/costumers.dart';
import 'package:pi_dois/pages/home/componets/custom_text_field.dart';

class NewCostumerScreen extends StatefulWidget {
  NewCostumerScreen({Key? key}) : super(key: key);

  @override
  State<NewCostumerScreen> createState() => _NewCostumerScreenState();
}

class _NewCostumerScreenState extends State<NewCostumerScreen> {
  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _zipcodeController = TextEditingController();
  final _streetController = TextEditingController();
  final _numberController = TextEditingController();
  final _complementController = TextEditingController();
  final _districtController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _observationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo-preto-amour-certo.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(350, 60, 0, 0),
            height: 500,
            width: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    bottom: 80,
                    left: 10,
                    right: 380,
                    child: CustomTextField(
                      controller: _nameController,
                      label: "Nome",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    bottom: 80,
                    left: 420,
                    right: 10,
                    child: CustomTextField(
                      controller: _cpfController,
                      label: "CPF",
                      decoration: InputDecoration(
                        hintText: 'Ex: 111.222.333-44',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    bottom: 80,
                    left: 10,
                    right: 480,
                    child: CustomTextField(
                      controller: _phoneController,
                      label: "Telefone",
                      decoration: InputDecoration(
                        hintText: 'Ex: (16)5005-5696',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    bottom: 80,
                    left: 320,
                    right: 10,
                    child: CustomTextField(
                      controller: _emailController,
                      label: "E-mail",
                      decoration: InputDecoration(
                        hintText: 'Ex: fulano@email.com.br',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    bottom: 80,
                    left: 10,
                    right: 520,
                    child: CustomTextField(
                      controller: _zipcodeController,
                      label: "CEP",
                      decoration: InputDecoration(
                        hintText: 'Ex: 11000-000',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    bottom: 80,
                    left: 280,
                    right: 10,
                    child: CustomTextField(
                      controller: _streetController,
                      label: "Logradouro",
                      decoration: InputDecoration(
                        hintText: 'Ex: Rua dois',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    bottom: 80,
                    left: 10,
                    right: 600,
                    child: CustomTextField(
                      controller: _numberController,
                      label: "Número",
                      decoration: InputDecoration(
                        hintText: 'Ex: 00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    bottom: 80,
                    left: 200,
                    right: 300,
                    child: CustomTextField(
                      controller: _complementController,
                      label: "Complemento",
                      decoration: InputDecoration(
                        hintText: 'Ex: apto 00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    bottom: 80,
                    left: 500,
                    right: 10,
                    child: CustomTextField(
                      controller: _districtController,
                      label: "Bairro",
                      decoration: InputDecoration(
                        hintText: 'Ex: Centro',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    bottom: 80,
                    left: 10,
                    right: 380,
                    child: CustomTextField(
                      controller: _cityController,
                      label: "Cidade",
                      decoration: InputDecoration(
                        hintText: 'Ex: Franca',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    bottom: 80,
                    left: 420,
                    right: 10,
                    child: CustomTextField(
                      controller: _stateController,
                      label: "Estado",
                      decoration: InputDecoration(
                        hintText: 'Ex: SP',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 310,
                    bottom: 0,
                    left: 10,
                    right: 10,
                    child: CustomTextField(
                      controller: _observationController,
                      label: "Observações",
                      decoration: InputDecoration(
                        hintText: 'Ex: Embrulhar para presente',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 280,
                    right: 280,
                    bottom: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.square(55),
                        primary: const Color(0xffECDBC9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/costumers');
                      },
                      child: const Text(
                        "Salvar",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff707070)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
