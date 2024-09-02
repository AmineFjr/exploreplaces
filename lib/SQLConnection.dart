import 'package:mysql1/mysql1.dart';

class SQLConnection {
  late MySqlConnection conn;

  connect() async  {
    conn = await MySqlConnection.connect(ConnectionSettings(
        host: '', user: '', password: '', db: ''
    ));

    return conn;
  }
}
