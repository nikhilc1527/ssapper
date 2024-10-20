method Maximum(values: seq<int>) returns (max: int)
  requires values != []
  ensures max in values
  ensures forall i | 0 <= i < |values| :: values[i] <= max
{
  max := values[0];
  for idx := 0 to |values|
    invariant max in values
    invariant forall j | 0 <= j < idx :: values[j] <= max
  {
    if max < values[idx] {
      max := values[idx];
    }
  }
}

lemma MaximumIsUnique(values: seq<int>, m1: int, m2: int)
  requires m2 in values && forall i | 0 <= i < |values| :: values[i] <= m2
  requires m1 in values && forall i | 0 <= i < |values| :: values[i] <= m1
  ensures m1 == m2 {
    // This lemma does not need a body: Dafny is able to prove it correct entirely automatically.
}
