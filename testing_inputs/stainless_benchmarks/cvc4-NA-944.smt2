; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7146 () Bool)

(assert start!7146)

(declare-fun res!23803 () Bool)

(declare-fun e!27290 () Bool)

(assert (=> start!7146 (=> (not res!23803) (not e!27290))))

(declare-datatypes () ((ImmutableTrait!3 (ImmutableTraitExt!1 (__x!65 Int)))))

(declare-fun a0!5 () ImmutableTrait!3)

(declare-fun a!597 () ImmutableTrait!3)

(assert (=> start!7146 (= res!23803 (= a0!5 a!597))))

(assert (=> start!7146 e!27290))

(assert (=> start!7146 true))

(declare-fun b!52583 () Bool)

(declare-fun res!23804 () Bool)

(assert (=> b!52583 (=> (not res!23804) (not e!27290))))

(declare-datatypes () ((Unit!861 (Unit!862))))

(declare-fun tmp!420 () Unit!861)

(declare-datatypes () ((B!477 (BExt!1 (__x!66 Int)))))

(declare-fun thiss!7141 () B!477)

(declare-fun f!145 (B!477 ImmutableTrait!3) Unit!861)

(assert (=> b!52583 (= res!23804 (= tmp!420 (f!145 thiss!7141 a!597)))))

(declare-fun b!52584 () Bool)

(assert (=> b!52584 (= e!27290 (not (= a!597 a0!5)))))

(assert (= (and start!7146 res!23803) b!52583))

(assert (= (and b!52583 res!23804) b!52584))

(declare-fun m!56733 () Bool)

(assert (=> b!52583 m!56733))

(push 1)

(assert (not b!52583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

