; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9168 () Bool)

(assert start!9168)

(declare-fun a3!5 () (_ BitVec 32))

(declare-fun a2!23 () (_ BitVec 32))

(declare-fun x!27816 () (_ BitVec 32))

(declare-fun x$2!341 () (_ BitVec 32))

(declare-datatypes () ((tuple4!18 (tuple4!19 (_1!203 (_ BitVec 32)) (_2!203 (_ BitVec 32)) (_3!30 (_ BitVec 32)) (_4!14 (_ BitVec 32))))))

(declare-fun x$1!871 () tuple4!18)

(declare-datatypes () ((A!2890 (B!548 (i!497 (_ BitVec 32))) (C!76 (a!697 A!2890)))))

(declare-datatypes () ((tuple2!346 (tuple2!347 (_1!204 A!2890) (_2!204 (_ BitVec 32))))))

(declare-datatypes () ((tuple3!32 (tuple3!33 (_1!205 (_ BitVec 32)) (_2!205 tuple2!346) (_3!31 (_ BitVec 32))))))

(declare-fun t!47397 () tuple3!32)

(declare-fun a1!14 () (_ BitVec 32))

(assert (=> start!9168 (and (= t!47397 (tuple3!33 #b00000000000000000000000000000001 (tuple2!347 (C!76 (B!548 #b00000000000000000000000000000100)) #b00000000000000000000000000000010) #b00000000000000000000000000000011)) (= x$1!871 (tuple4!19 (_1!205 t!47397) (i!497 (a!697 (_1!204 (_2!205 t!47397)))) (_2!204 (_2!205 t!47397)) (_3!31 t!47397))) (= a1!14 (_1!203 x$1!871)) (= x!27816 (_2!203 x$1!871)) (= a2!23 (_3!30 x$1!871)) (= a3!5 (_4!14 x$1!871)) (= x$2!341 x!27816) (not (= x$2!341 #b00000000000000000000000000000100)))))

(assert (=> start!9168 true))

(push 1)

(check-sat)

(pop 1)

