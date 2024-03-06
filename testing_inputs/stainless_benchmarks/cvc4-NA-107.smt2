; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!658 () Bool)

(assert start!658)

(declare-fun res!1329 () Bool)

(declare-fun e!2633 () Bool)

(assert (=> start!658 (=> (not res!1329) (not e!2633))))

(declare-fun i!205 () (_ BitVec 32))

(assert (=> start!658 (= res!1329 (bvsgt i!205 #b00000000000000000000000000000000))))

(assert (=> start!658 e!2633))

(assert (=> start!658 true))

(declare-datatypes () ((array!190 (array!191 (arr!72 (Array (_ BitVec 32) (_ BitVec 32))) (size!99 (_ BitVec 32))))))

(declare-fun b!4521 () array!190)

(declare-fun array_inv!67 (array!190) Bool)

(assert (=> start!658 (array_inv!67 b!4521)))

(declare-fun b!4526 () Bool)

(declare-fun res!1330 () Bool)

(assert (=> b!4526 (=> (not res!1330) (not e!2633))))

(declare-fun foo!38 ((_ BitVec 32)) array!190)

(assert (=> b!4526 (= res!1330 (= b!4521 (foo!38 i!205)))))

(declare-fun b!4527 () Bool)

(assert (=> b!4527 (= e!2633 (bvsge #b00000000000000000000000000000000 (size!99 b!4521)))))

(assert (= (and start!658 res!1329) b!4526))

(assert (= (and b!4526 res!1330) b!4527))

(declare-fun m!7041 () Bool)

(assert (=> start!658 m!7041))

(declare-fun m!7043 () Bool)

(assert (=> b!4526 m!7043))

(push 1)

(assert (not b!4526))

(assert (not start!658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3299 () Bool)

(assert (=> d!3299 (bvsgt i!205 #b00000000000000000000000000000000)))

(assert (=> d!3299 (= (foo!38 i!205) (array!191 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) i!205))))

(assert (=> b!4526 d!3299))

(declare-fun d!3301 () Bool)

(assert (=> d!3301 (= (array_inv!67 b!4521) (bvsge (size!99 b!4521) #b00000000000000000000000000000000))))

(assert (=> start!658 d!3301))

(push 1)

(check-sat)

(pop 1)

