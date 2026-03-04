function sum_arr(xs : Int[]) : Int {
  mutable s = 0;
  for i in 0 .. Length(xs) - 1 {
    s += xs[i];
  }
  return s;
}

@EntryPoint()
function Hello() : Unit {
  Message("Hello world");
  let r = sum_arr([11, 22, 33]);
  Message($"sum_arr([11, 22, 33]) = {r}");
}
