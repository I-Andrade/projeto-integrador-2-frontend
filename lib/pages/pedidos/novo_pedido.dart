import 'package:flutter/material.dart';
import 'package:pi_dois/pages/pedidos/pedidos.dart';
import 'package:pi_dois/pages/home/componets/custom_text_field.dart';

class NovoPedidoScreen extends StatefulWidget {
  const NovoPedidoScreen({Key? key}) : super(key: key);

  @override
  State<NovoPedidoScreen> createState() => _NovoPedidoScreenState();
}

class _NovoPedidoScreenState extends State<NovoPedidoScreen> {
  final _dataEntregaController = TextEditingController();
  final _obsController = TextEditingController();
  final _statusController = TextEditingController();
  final _valorTotalBrutoController = TextEditingController();
  final _valorFreteController = TextEditingController();
  final _descontoController = TextEditingController();
  final _valorTotalLiquidoController = TextEditingController();
  final _transportadoraIdController = TextEditingController();
  final _formaPagtoIdController = TextEditingController();
  final _statusIdController = TextEditingController();

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
                      controller: _dataEntregaController,
                      label: "Data de Entrega",
                      decoration: InputDecoration(
                        hintText: 'Ex: 01/01/2022',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    bottom: 80,
                    left: 420,
                    right: 10,
                    child: CustomTextField(
                      controller: _obsController,
                      label: "Observação",
                      decoration: InputDecoration(
                        hintText: 'Ex: Embrulhar para Presente',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    bottom: 80,
                    left: 10,
                    right: 480,
                    child: CustomTextField(
                      controller: _statusController,
                      label: "Status",
                      decoration: InputDecoration(
                        hintText: 'Ex: Entregue',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    bottom: 80,
                    left: 320,
                    right: 10,
                    child: CustomTextField(
                      controller: _valorTotalBrutoController,
                      label: "Valor Total Bruto",
                      decoration: InputDecoration(
                        hintText: 'Ex: 50,00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    bottom: 80,
                    left: 10,
                    right: 520,
                    child: CustomTextField(
                      controller: _valorFreteController,
                      label: "Valor do Frete",
                      decoration: InputDecoration(
                        hintText: 'Ex: 50,00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    bottom: 80,
                    left: 280,
                    right: 10,
                    child: CustomTextField(
                      controller: _descontoController,
                      label: "Desconto",
                      decoration: InputDecoration(
                        hintText: 'Ex: 10,00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    bottom: 80,
                    left: 10,
                    right: 600,
                    child: CustomTextField(
                      controller: _valorTotalLiquidoController,
                      label: "Valor Total Liquido",
                      decoration: InputDecoration(
                        hintText: 'Ex: 100,00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    bottom: 80,
                    left: 200,
                    right: 300,
                    child: CustomTextField(
                      controller: _transportadoraIdController,
                      label: "Transportadora Id",
                      decoration: InputDecoration(
                        hintText: 'Ex: 10,00',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 190,
                    bottom: 80,
                    left: 500,
                    right: 10,
                    child: CustomTextField(
                      controller: _statusIdController,
                      label: "Status Id",
                      decoration: InputDecoration(
                        hintText: 'Ex: Entregue',
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
                        Navigator.of(context).pushNamed('/pedidos');
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