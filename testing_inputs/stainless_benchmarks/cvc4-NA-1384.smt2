; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9666 () Bool)

(assert start!9666)

(declare-fun res!34737 () Bool)

(declare-fun e!38359 () Bool)

(assert (=> start!9666 (=> (not res!34737) (not e!38359))))

(declare-fun n!1631 () (_ BitVec 32))

(declare-fun i!511 () (_ BitVec 32))

(assert (=> start!9666 (= res!34737 (= n!1631 i!511))))

(assert (=> start!9666 e!38359))

(assert (=> start!9666 true))

(declare-fun b!70917 () Bool)

(declare-fun res!34738 () Bool)

(assert (=> b!70917 (=> (not res!34738) (not e!38359))))

(declare-fun x$1!931 () (_ BitVec 32))

(declare-fun rec2!7 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!70917 (= res!34738 (= x$1!931 (rec2!7 i!511 #b00000000000000000000000000000010)))))

(declare-fun b!70918 () Bool)

(assert (=> b!70918 (= e!38359 (not (= (bvadd i!511 #b00000000000000000000000000000111) x$1!931)))))

(assert (= (and start!9666 res!34737) b!70917))

(assert (= (and b!70917 res!34738) b!70918))

(declare-fun m!70940 () Bool)

(assert (=> b!70917 m!70940))

(push 1)

(assert (not b!70917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53818 () Bool)

(declare-fun rec3!3 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53818 (= (rec2!7 i!511 #b00000000000000000000000000000010) (rec3!3 i!511 #b00000000000000000000000000000010 #b00000000000000000000000000000101))))

(declare-fun bs!37666 () Bool)

(assert (= bs!37666 d!53818))

(declare-fun m!70942 () Bool)

(assert (=> bs!37666 m!70942))

(assert (=> b!70917 d!53818))

(push 1)

(assert (not d!53818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53820 () Bool)

(assert (=> d!53820 (= (rec3!3 i!511 #b00000000000000000000000000000010 #b00000000000000000000000000000101) (bvadd (bvadd #b00000000000000000000000000000101 #b00000000000000000000000000000010) i!511))))

(assert (=> d!53818 d!53820))

(push 1)

(check-sat)

(pop 1)

