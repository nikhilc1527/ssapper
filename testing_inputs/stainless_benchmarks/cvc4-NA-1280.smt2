; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9134 () Bool)

(assert start!9134)

(declare-datatypes () ((Option!424 (Some!402 (v!2344 (_ BitVec 32))) (None!403))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!424))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!424))

(assert (=> start!9134 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!424)) None!403) #b00000000000000000000000000000001 (Some!402 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!403) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!402 #b00000000000000000000000000000011))) (not (= (select m2!4 #b00000000000000000000000000000010) None!403)) (not (= (v!2344 (select m2!4 #b00000000000000000000000000000010)) #b00000000000000000000000000000011)))))

(assert (=> start!9134 true))

(declare-fun bs!37549 () Bool)

(assert (= bs!37549 start!9134))

(declare-fun m!68905 () Bool)

(assert (=> bs!37549 m!68905))

(declare-fun m!68907 () Bool)

(assert (=> bs!37549 m!68907))

(declare-fun m!68909 () Bool)

(assert (=> bs!37549 m!68909))

(push 1)

(check-sat)

(pop 1)

