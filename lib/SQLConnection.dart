import 'package:mysql1/mysql1.dart';

class SQLConnection {
  late MySqlConnection conn;

  connect() async  {
    conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'srv1015.hstgr.io', user: 'u986651684_admin', password: 'esgiLYON2024', db: 'u986651684_exploreplaces'
    ));

    return conn;
  }
}