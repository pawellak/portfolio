import 'package:components_core/controllers/i_key_value_storage_manager.dart';
import 'package:injectable/injectable.dart' show Injectable;
import 'package:shared_preferences/shared_preferences.dart' show SharedPreferences;

@Injectable(as: IKeyValueStorageManager)
class KeyValueStorageManager implements IKeyValueStorageManager {
  const KeyValueStorageManager(this._preferences);

  final SharedPreferences _preferences;
}
