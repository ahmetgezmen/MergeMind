class EitherModel<L, R> {
  L? left;
  R? right;
  bool isLeft() => left != null;
  bool isRight() => right != null;
  EitherModel({this.left, this.right});
}