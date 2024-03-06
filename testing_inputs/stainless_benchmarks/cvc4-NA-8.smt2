; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!46 () Bool)

(assert start!46)

(declare-datatypes () ((A!412 (Cons!39 (head!200 Int) (tail!212 A!412)) (Nil!40 (i!202 Int)))))

(declare-fun thiss!27 () A!412)

(declare-fun i!191 () Int)

(assert (=> start!46 (and (not (is-Cons!39 thiss!27)) (= i!191 0) (< i!191 0))))

(declare-fun e!155 () Bool)

(declare-fun inv!55 (A!412) Bool)

(assert (=> start!46 (and (inv!55 thiss!27) e!155)))

(assert (=> start!46 true))

(declare-fun b!323 () Bool)

(declare-fun tp!43 () Bool)

(assert (=> b!323 (= e!155 (and (inv!55 (tail!212 thiss!27)) tp!43))))

(assert (= (and start!46 (is-Cons!39 thiss!27)) b!323))

(declare-fun m!181 () Bool)

(assert (=> start!46 m!181))

(declare-fun m!183 () Bool)

(assert (=> b!323 m!183))

(push 1)

(assert (not b!323))

(assert (not start!46))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

