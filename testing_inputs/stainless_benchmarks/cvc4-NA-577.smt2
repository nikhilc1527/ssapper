; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4312 () Bool)

(assert start!4312)

(declare-fun res!15796 () Bool)

(declare-fun e!17427 () Bool)

(assert (=> start!4312 (=> (not res!15796) (not e!17427))))

(declare-fun y!1085 () Int)

(declare-fun x!10716 () Int)

(assert (=> start!4312 (= res!15796 (and (> y!1085 1) (= x!10716 y!1085)))))

(assert (=> start!4312 e!17427))

(assert (=> start!4312 true))

(declare-fun b!34530 () Bool)

(declare-datatypes () ((Foo!28 (Foo!29 (x!10726 Int)))))

(declare-fun inv!11 (Foo!28) Bool)

(assert (=> b!34530 (= e!17427 (not (inv!11 (Foo!29 x!10716))))))

(assert (= (and start!4312 res!15796) b!34530))

(declare-fun m!37139 () Bool)

(assert (=> b!34530 m!37139))

(push 1)

(assert (not b!34530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!18030 () Bool)

(assert (=> d!18030 (= (inv!11 (Foo!29 x!10716)) (> (x!10726 (Foo!29 x!10716)) 0))))

(assert (=> b!34530 d!18030))

(push 1)

(check-sat)

(pop 1)

