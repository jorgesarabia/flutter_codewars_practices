int sumOfIntervals(List<List<int>> intervals) {
  intervals.sort((a, b) => a[0].compareTo(b[0]));

  List<List<int>> intervalMap = [intervals[0]];
  int mapIndex = 0;

  for (int x = 1; x < intervals.length; x++) {
    if (intervals[x][0] < intervalMap[mapIndex][1]) {
      if (intervals[x][1] > intervalMap[mapIndex][1]) {
        intervalMap[mapIndex][1] = intervals[x][1];
      }
    } else {
      mapIndex++;
      intervalMap.add(intervals[x]);
    }
  }

  int counter = 0;

  for (int x = 0; x < intervalMap.length; x++) {
    counter += intervalMap[x][1] - intervalMap[x][0];
  }

  return counter;
}
