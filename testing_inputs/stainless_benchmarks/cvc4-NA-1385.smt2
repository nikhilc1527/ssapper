; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9672 () Bool)

(assert start!9672)

(declare-fun res!34744 () Bool)

(declare-fun e!38362 () Bool)

(assert (=> start!9672 (=> (not res!34744) (not e!38362))))

(declare-fun n!1643 () (_ BitVec 32))

(assert (=> start!9672 (= res!34744 (= n!1643 #b00000000000000000000000000000010))))

(assert (=> start!9672 e!38362))

(assert (=> start!9672 true))

(declare-fun b!70923 () Bool)

(declare-fun res!34745 () Bool)

(assert (=> b!70923 (=> (not res!34745) (not e!38362))))

(declare-fun x$1!932 () (_ BitVec 32))

(declare-fun i!523 () (_ BitVec 32))

(declare-fun rec2!6 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!70923 (= res!34745 (= x$1!932 (rec2!6 i!523 #b00000000000000000000000000000010)))))

(declare-fun b!70924 () Bool)

(assert (=> b!70924 (= e!38362 (not (= (bvadd i!523 #b00000000000000000000000000000100) x$1!932)))))

(assert (= (and start!9672 res!34744) b!70923))

(assert (= (and b!70923 res!34745) b!70924))

(declare-fun m!70944 () Bool)

(assert (=> b!70923 m!70944))

(push 1)

(assert (not b!70923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53824 () Bool)

(declare-fun rec1!11 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53824 (= (rec2!6 i!523 #b00000000000000000000000000000010) (rec1!11 i!523 #b00000000000000000000000000000010))))

(declare-fun bs!37668 () Bool)

(assert (= bs!37668 d!53824))

(declare-fun m!70946 () Bool)

(assert (=> bs!37668 m!70946))

(assert (=> b!70923 d!53824))

(push 1)

(assert (not d!53824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53826 () Bool)

(assert (=> d!53826 (= (rec1!11 i!523 #b00000000000000000000000000000010) (bvadd (bvadd i!523 #b00000000000000000000000000000010) #b00000000000000000000000000000010))))

(assert (=> d!53824 d!53826))

(push 1)

(check-sat)

(pop 1)

