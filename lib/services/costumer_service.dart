import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pi_dois/models/costumer_model.dart';
import 'package:pi_dois/services/api.dart';

class CostumerService {
  static String pathUrl = "Cliente";
  static String url = Api().urlBase();

  Future<List<CostumerModel>> getAllCostumers() async {
    try {
      Response response = await Dio().get(url + pathUrl);
      if (response.statusCode == 200) {
        var getCostumerData = response.data["results"] as List;
        var costumers =
            getCostumerData.map((e) => CostumerModel.fromJson(e)).toList();
        return costumers;
      } else {
        throw Exception("Falha ao carregar os clientes");
      }
    } catch (e) {
      throw Exception("Falha ao carregar os clientes $e");
    }
  }

  Future<CostumerModel> getCostumerById(String id) async {
    try {
      Response response = await Dio().get(url + pathUrl + id);
      if (response.statusCode == 200) {
        return CostumerModel.fromJson(response.data);
      } else {
        throw Exception("Falha ao carregar os clientes");
      }
    } catch (e) {
      print(e);
      throw Exception("Cliente não encontrado $e");
    }
  }
}
