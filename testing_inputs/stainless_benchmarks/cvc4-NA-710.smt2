; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5064 () Bool)

(assert start!5064)

(declare-fun b!39122 () Bool)

(declare-fun e!20161 () Bool)

(declare-datatypes () ((Nat!71 (Zero!55) (Succ!52 (n!1148 Nat!71)))))

(declare-fun that!822 () Nat!71)

(declare-fun >!2 (Nat!71 Nat!71) Bool)

(assert (=> b!39122 (= e!20161 (not (>!2 that!822 Zero!55)))))

(declare-fun res!18700 () Bool)

(assert (=> start!5064 (=> (not res!18700) (not e!20161))))

(declare-fun that!817 () Nat!71)

(assert (=> start!5064 (= res!18700 (>!2 that!817 Zero!55))))

(assert (=> start!5064 e!20161))

(assert (=> start!5064 true))

(declare-fun b!39120 () Bool)

(declare-fun res!18701 () Bool)

(assert (=> b!39120 (=> (not res!18701) (not e!20161))))

(declare-fun thiss!4868 () Nat!71)

(declare-fun thiss!4861 () Nat!71)

(declare-fun -!4 (Nat!71 Nat!71) Nat!71)

(assert (=> b!39120 (= res!18701 (= thiss!4868 (-!4 thiss!4861 that!817)))))

(declare-fun b!39119 () Bool)

(declare-fun res!18702 () Bool)

(assert (=> b!39119 (=> (not res!18702) (not e!20161))))

(declare-fun <!2 (Nat!71 Nat!71) Bool)

(assert (=> b!39119 (= res!18702 (not (<!2 thiss!4861 that!817)))))

(declare-fun b!39121 () Bool)

(declare-fun res!18699 () Bool)

(assert (=> b!39121 (=> (not res!18699) (not e!20161))))

(assert (=> b!39121 (= res!18699 (= that!822 that!817))))

(assert (= (and start!5064 res!18700) b!39119))

(assert (= (and b!39119 res!18702) b!39120))

(assert (= (and b!39120 res!18701) b!39121))

(assert (= (and b!39121 res!18699) b!39122))

(declare-fun m!40319 () Bool)

(assert (=> b!39122 m!40319))

(declare-fun m!40321 () Bool)

(assert (=> start!5064 m!40321))

(declare-fun m!40323 () Bool)

(assert (=> b!39120 m!40323))

(declare-fun m!40325 () Bool)

(assert (=> b!39119 m!40325))

(push 1)

(assert (not b!39120))

(assert (not start!5064))

(assert (not b!39122))

(assert (not b!39119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

