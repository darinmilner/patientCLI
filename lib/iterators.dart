customForEach(
    Map<String, dynamic> iterableMap, Function(String, dynamic) callBack) {
  final iterableList = iterableMap.values.toList();
  for (var i = 0; i < iterableMap.length; i++) {
    var key = i;
    var value = iterableList[i];
    callBack("$key", value);
  }
}
