abstract class AppStates{}

class AppInitialState extends AppStates{}

class AppDatabaseCreated extends AppStates{}

class AppDatabaseCreatedTable extends AppStates{}

class AppDatabaseOpened extends AppStates{}

class AppDatabaseLoading extends AppStates{}

class AppDatabaseClient extends AppStates{}