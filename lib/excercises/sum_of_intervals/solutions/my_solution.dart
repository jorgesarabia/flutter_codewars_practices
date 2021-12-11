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

int sumOfIntervalsIneskay(List<List<int>> intervals) {
  Set<int> nums = Set();
  for (final interval in intervals) {
    nums.addAll(List.generate(interval[1] - interval[0], (i) => interval[0] + i));
  }
  return nums.length;
}

      // expect(
      //   sumOfIntervalsIneskay([
      //     [1, 4],
      //     [7, 10],
      //     [3, 5]
      //   ]),
      //   equals(7),
      // );
