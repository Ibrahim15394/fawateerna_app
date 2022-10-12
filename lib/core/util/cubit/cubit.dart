import 'package:fawateerna_app/core/util/cubit/states.dart';
import 'package:fawateerna_app/data/models/client_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' ;
import '../constance.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of<AppCubit>(context);

  static late Database database;


  // Future<Database> getDatabase() async {
  //   if (database != null) {
  //     return await database;
  //   }
  //   database = await initDatabase();
  //   return await database;
  // }

  // initDatabase() async {
  //   String path = join(await getDatabasesPath(), 'ClientData.db');
  //
  //   return await openDatabase(
  //       path,
  //       version: 1,
  //       onCreate: (Database db, int version) async {
  //         await db.execute('''
  //       CREATE TABLE $tableClient(
  //       $columnId INTEGER PRIMARY KEY ,
  //       $columnName TEXT ,
  //       $columnPhone TEXT ,
  //       $columnEmail TEXT)
  //       ''');
  //       }).then((value) {
  //         print('createTable');
  //         emit(AppDatabaseCreated());
  //   });
  // }
  //
  // Future<ClientModel> insertClient(ClientModel client) async {
  //
  //   var dbClient = await database;
  //   await dbClient.insert(
  //     tableClient,
  //     client.toJson(),
  //     conflictAlgorithm: ConflictAlgorithm.replace,
  //   ).then((value) {
  //     print('done insert');
  //     emit(AppDatabaseCreatedTable());
  //   });
  //   return client;
  // }
  //
  // updateClient(ClientModel client)async{
  //   var dbClient = await database;
  //   await dbClient.update(
  //     tableClient,
  //     client.toJson(),
  //     where: '$columnId = ?',
  //     whereArgs: [client.id],
  //   );
  // }
  //
  // List<Map> client = [];
  //
  // Future<ClientModel?> getClient(int id) async{
  //   var dbClient = await database;
  //   client = [];
  //   List<Map> maps = await dbClient.query(
  //     tableClient,
  //     where: '$columnId = ?',
  //     whereArgs: [id],
  //   );
  //   if(maps.isNotEmpty) {
  //     return ClientModel.fromJson(maps.first);
  //   }else{
  //     return null;
  //   }
  // }
  //
  // Future<List<ClientModel>>getAllClient()async{
  //   var dbClient = await  database;
  //   List<Map> maps = await dbClient.query(tableClient);
  //
  //   return maps.isNotEmpty
  //       ? maps.map((client) => ClientModel.fromJson(client)).toList()
  //       : [];
  // }
  //
  // Future<void> deleteClient(int id) async{
  //
  //   var dbClient = await database;
  //   dbClient.delete(
  //     tableClient,
  //     where: '$columnId = ?',
  //     whereArgs: [id],
  //   );
  //
  // }

}
