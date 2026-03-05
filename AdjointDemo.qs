import Std.Math.PI;

operation rx45(a: Qubit) : Unit is Adj {
  Rx(PI() / 4.0, a);
}

@EntryPoint()
operation Main() : Result {
  use c = Qubit();
  for i in 0 .. 4 {
    rx45(c);
  }
  Adjoint rx45(c);
  let res = M(c);
  Reset(c);
  return res;
}
