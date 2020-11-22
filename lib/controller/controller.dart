import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:mqtt_client/mqtt_client.dart' as mqtt;
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  ControllerBase() {
    _connect();
  }
  //tipo da variavel |Nome Var   | Valor a ser iniciado
  @observable
  int temperatura = 28;
  @observable
  bool estadoLampada = false;
  @observable
  int umidadeSolo = 80;
  @observable
  int umidadeAr = 99;
  @observable
  int luminosidade = 100; //980 escuro - mais iluminado tende a 0

  //Variaveis para se conectar ao broker
  String broker = '45.165.179.100';
  int port = 3000;
  String clientIdentifier = 'flutter-mobile';
  String topic = 'iot/casa';

  mqtt.MqttClient client;
  mqtt.MqttConnectionState connectionState;
  StreamSubscription subscription;

  //Funçãp a ser executada
  @action
  mudarEstadoLampada() {
    String msg = '';
    estadoLampada = !estadoLampada;

    if (estadoLampada)
      msg = 'ligarLampadaSala';
    else
      msg = 'desligarLampadaSala';

    final builder1 = mqtt.MqttClientPayloadBuilder();
    builder1.addString(msg);
    print('Enviando:: <<<< $msg >>>>');
    client.publishMessage(topic, mqtt.MqttQos.atLeastOnce, builder1.payload);
  }

  /*
  Assina o tópico onde virão os dados de temperatura
   */
  void _subscribeToTopic(String topic) {
    if (connectionState == mqtt.MqttConnectionState.connected) {
      print('[MQTT client] Subscribing to $topic');
      client.subscribe(topic, mqtt.MqttQos.exactlyOnce);
    }
  }

  /*
  Conecta no servidor MQTT à partir dos dados configurados nos atributos desta classe (broker, port, etc...)
   */
  void _connect() async {
    client = mqtt.MqttClient(broker, '');
    client.port = port;
    client.keepAlivePeriod = 30;
    client.onDisconnected = _onDisconnected;

    final mqtt.MqttConnectMessage connMess = mqtt.MqttConnectMessage()
        .withClientIdentifier(clientIdentifier)
        .startClean() // Non persistent session for testing
        .keepAliveFor(30)
        .withWillQos(mqtt.MqttQos.atMostOnce);
    print('[MQTT client] MQTT client connecting....');
    client.connectionMessage = connMess;

    try {
      await client.connect();
    } catch (e) {
      print(e);
      _disconnect();
    }

    /// Check if we are connected
    if (client.connectionState == mqtt.MqttConnectionState.connected) {
      print('[MQTT client] connected');
    } else {
      print('[MQTT client] ERROR: MQTT client connection failed - '
          'disconnecting, state is ${client.connectionStatus}');
      _disconnect();
    }

    subscription = client.updates.listen(_onMessage);
    _subscribeToTopic(topic);
  }

  /*
  Desconecta do servidor MQTT
   */
  void _disconnect() {
    print('[MQTT client] _disconnect()');
    client.disconnect();
    _onDisconnected();
  }

  /*
  Executa algo quando desconectado, no caso, zera as variáveis e imprime msg no console
   */
  void _onDisconnected() {
    print('[MQTT client] _onDisconnected');
    //topics.clear();
    connectionState = client.connectionState;
    client = null;
    subscription.cancel();
    subscription = null;

    print('[MQTT client] MQTT client disconnected');
  }

  /*
  Escuta quando mensagens são escritas no tópico. É aqui que lê os dados do servidor MQTT e modifica o necessário
   */
  void _onMessage(List<mqtt.MqttReceivedMessage> event) {
    print(event.length);
    final mqtt.MqttPublishMessage recMess =
        event[0].payload as mqtt.MqttPublishMessage;
    final String message =
        mqtt.MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
    print('[MQTT client] MQTT message: topic is <${event[0].topic}>, '
        'payload is <-- ${message} -->');
    print(client.connectionState);
    print("[MQTT client] message with topic: ${event[0].topic}");
    print("[MQTT client] message with message: $message");
    print("dados" + message);
    //temperatura = int.parse(message);
  }
}
