; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!602 () Bool)

(assert start!602)

(declare-fun res!1302 () Bool)

(declare-fun e!2520 () Bool)

(assert (=> start!602 (=> (not res!1302) (not e!2520))))

(declare-fun x!1632 () (_ BitVec 32))

(declare-fun m!6730 () (_ BitVec 32))

(assert (=> start!602 (= res!1302 (and (bvsge x!1632 #b00000000000000000000000000000000) (bvslt x!1632 #b00000000000000000000000001100100) (= m!6730 #b00000000000000000000000000000000)))))

(assert (=> start!602 e!2520))

(assert (=> start!602 true))

(declare-fun b!4510 () Bool)

(declare-datatypes () ((Foo!25 ($anon!13 (m!6957 (_ BitVec 32)) (x!1651 (_ BitVec 32))) (FooExt!12 (__x!23 Int)))))

(declare-fun inv!135 (Foo!25) Bool)

(assert (=> b!4510 (= e!2520 (not (inv!135 ($anon!13 m!6730 x!1632))))))

(assert (= (and start!602 res!1302) b!4510))

(declare-fun m!6956 () Bool)

(assert (=> b!4510 m!6956))

(push 1)

(assert (not b!4510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3281 () Bool)

(declare-fun res!1305 () Bool)

(declare-fun e!2523 () Bool)

(assert (=> d!3281 (=> res!1305 e!2523)))

(assert (=> d!3281 (= res!1305 (not (is-$anon!13 ($anon!13 m!6730 x!1632))))))

(assert (=> d!3281 (= (inv!135 ($anon!13 m!6730 x!1632)) e!2523)))

(declare-fun b!4513 () Bool)

(declare-fun inv!134 (Foo!25) Bool)

(assert (=> b!4513 (= e!2523 (inv!134 ($anon!13 m!6730 x!1632)))))

(assert (= (and d!3281 (not res!1305)) b!4513))

(declare-fun m!6959 () Bool)

(assert (=> b!4513 m!6959))

(assert (=> b!4510 d!3281))

(push 1)

(assert (not b!4513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3283 () Bool)

(assert (=> d!3283 (= (inv!134 ($anon!13 m!6730 x!1632)) (and (bvsge (x!1651 ($anon!13 m!6730 x!1632)) #b00000000000000000000000000000000) (bvslt (x!1651 ($anon!13 m!6730 x!1632)) #b00000000000000000000000001100100) (= (m!6957 ($anon!13 m!6730 x!1632)) #b00000000000000000000000000000000)))))

(assert (=> b!4513 d!3283))

(push 1)

(check-sat)

(pop 1)

