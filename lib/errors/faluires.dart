abstract class Faluires {
  final String message;
  const Faluires(this.message);
}

class ServerFaluires extends Faluires {
  const ServerFaluires(String message) : super(message);
}

class ClientFaluires extends Faluires {
  const ClientFaluires(String message) : super(message);
}
