enum Durations{

  extraExtraShort(Duration(milliseconds: 50)),
  extraShort(Duration(milliseconds: 75)),
  short(Duration(milliseconds: 250)),
  veryShort(Duration(milliseconds: 125)),
  medium(Duration(milliseconds: 500)),
  long(Duration(milliseconds: 1000)),
  veryLong(Duration(milliseconds: 2000)),
  extraLong(Duration(milliseconds: 3000)),
  extraExtraLong(Duration(milliseconds: 4000)),
  networkTimeout(Duration(seconds: 30)),

  ;
  final Duration duration;
  const Durations(this.duration);
}