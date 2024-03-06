; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6342 () Bool)

(assert start!6342)

(declare-fun lt!8583 () Bool)

(declare-datatypes () ((Nat!207 (Zero!191) (Succ!188 (n!1343 Nat!207)))))

(declare-fun n2!101 () Nat!207)

(declare-fun n3!28 () Nat!207)

(declare-fun >=!2 (Nat!207 Nat!207) Bool)

(assert (=> start!6342 (= lt!8583 (>=!2 n2!101 n3!28))))

(assert (=> start!6342 false))

(assert (=> start!6342 true))

(declare-fun bs!18482 () Bool)

(assert (= bs!18482 start!6342))

(declare-fun m!50119 () Bool)

(assert (=> bs!18482 m!50119))

(push 1)

(assert (not start!6342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

