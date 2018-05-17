import 'package:uuid/uuid.dart';

class Observable<TValue> {
  Observable(TValue initialValue) {
    this._listeners = new List();
    this._currentValue = initialValue;
  }

  List<ObserverInstance> _listeners;
  TValue _currentValue;

  TValue get value => this._currentValue;

  setValue(TValue value) {
    this._currentValue = value;

    this._listeners.forEach((listener) {
      listener.executor(this.value);
    });
  }

  ObserverInstance observe(Function listener) {
    var observer = new ObserverInstance(listener);
    this._listeners.add(observer);
    return observer;
  }
}

class ObserverInstance {
  ObserverInstance(this.executor);

  final String id = new Uuid().v1();
  final Function executor;
}