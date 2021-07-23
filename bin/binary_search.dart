void main(List<String> arguments) {
  List<int> myList = [1, 2, 3, 4, 5];

  int binarySearch(List<int> list, int target) {
    // returns rarget's index in list if found, else returns -1
    var _first = 0;
    var _last = list.length - 1;

    while (_first <= _last) {
      final _mid = (_first + _last) ~/ 2;
      if (list[_mid] == target) {
        return _mid;
      } else if (list[_mid] > target) {
        _first = _mid - 1;
      } else {
        _first = _mid + 1;
      }
    }

    return -1;
  }

  // print(binarySearch(myList, 6));

  int linearSearch(List<int> list, int target) {
    // returns rarget's index in list if found, else returns -1
    for (var i in list) {
      if (i != list.length) {
        //to fix error: dart Invalid value: Not in inclusive range...
        if (list[i] == target) {
          return i;
        }
      }
    }

    return -1;
  }

  print(linearSearch(myList, 6));
}
