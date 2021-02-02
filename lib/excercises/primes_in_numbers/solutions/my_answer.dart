String primeFactors(int n) {
  // final map = _findPrimes(n, {});
  final map = _findPrimesLoop(n);
  String output = '';
  map.forEach((key, val) {
    if (val > 1) {
      output += "($key**$val)";
    } else {
      output += "($key)";
    }
  });
  return output;
}

Map<String, int> _findPrimes(
  int n,
  Map<String, int> map, {
  int div = 2,
}) {
  if (n == 1) {
    return map;
  }
  if (n % div == 0) {
    if (map.containsKey(div.toString())) {
      map[div.toString()] = map[div.toString()] + 1;
    } else {
      map[div.toString()] = 1;
    }
    map = _findPrimes(n ~/ div, map);
  } else {
    map = _findPrimes(n, map, div: div + 1);
  }

  return map;
}

Map<String, int> _findPrimesLoop(int n) {
  final map = <String, int>{};
  int div = 2;
  int nRes = n;
  while (nRes > 1) {
    if (nRes % div == 0) {
      if (map.containsKey(div.toString())) {
        map[div.toString()] = map[div.toString()] + 1;
      } else {
        map[div.toString()] = 1;
      }
      nRes = nRes ~/ div;
      div = 2;
    } else {
      div++;
    }
  }
  return map;
}
