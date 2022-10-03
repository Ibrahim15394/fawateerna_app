import 'package:fawateerna_app/core/util/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  late Database database;

  void createDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, 'tasks.db');

    emit(AppDatabaseCreated());
    print('AppDatabaseCreated');
    openAppDatabase(
             path: path,
          );
  }
  void openAppDatabase({
    required String path,
  }) {
    openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version)
    {
      db.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT ,date TEXT, start TEXT, end TEXT, remind INTEGER, repeat TEXT, color TEXT)',).
      then((value) {
        emit(AppDatabaseCreatedTable());
        print('CreatedTable');
      }).catchError((error){
        print('error ${error.toString()}');
      });
    },
      onOpen: (Database db){
        database = db;
        emit(AppDatabaseOpened());
        print('DatabaseOpened');
      },
    );
  }
  void insertToDatabase(){
     database.transaction((txn)async {
      txn.rawInsert(
          'INSERT INTO tasks(title, date, start, end, remind, repeat, color) VALUES("")');
  }).then((value) {
    print('insert');
     }).catchError((error){
       print('error ${error.toString()}');
     });
  }
}
