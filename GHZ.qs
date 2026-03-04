operation allX(qs : Qubit[]) : Unit is Ctl {
  for q in qs {
    X(q);
  }
}

@EntryPoint()
operation Main() : Result[] {
    use c = Qubit();
    use v = Qubit[5];
    H(c);
    Controlled allX([c], v);
    let res = MeasureEachZ([c] + v);
    ResetAll([c] + v);
    return res;
}
