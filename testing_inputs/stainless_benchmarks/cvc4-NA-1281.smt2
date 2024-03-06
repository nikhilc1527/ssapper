; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9136 () Bool)

(assert start!9136)

(declare-datatypes () ((Option!425 (Some!403 (v!2345 (_ BitVec 32))) (None!404))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!425))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!425))

(declare-fun m3!1 () (Array (_ BitVec 32) Option!425))

(assert (=> start!9136 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!425)) None!404) #b00000000000000000000000000000001 (Some!403 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!404) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!403 #b00000000000000000000000000000011))) (not (= (select m2!4 #b00000000000000000000000000000010) None!404)) (= (v!2345 (select m2!4 #b00000000000000000000000000000010)) #b00000000000000000000000000000011) (= m3!1 (store m2!4 #b00000000000000000000000000000010 None!404)) (not (= (select m3!1 #b00000000000000000000000000000010) None!404)))))

(assert (=> start!9136 true))

(declare-fun bs!37551 () Bool)

(assert (= bs!37551 start!9136))

(declare-fun m!68911 () Bool)

(assert (=> bs!37551 m!68911))

(declare-fun m!68913 () Bool)

(assert (=> bs!37551 m!68913))

(declare-fun m!68915 () Bool)

(assert (=> bs!37551 m!68915))

(declare-fun m!68917 () Bool)

(assert (=> bs!37551 m!68917))

(declare-fun m!68919 () Bool)

(assert (=> bs!37551 m!68919))

(push 1)

(check-sat)

(pop 1)

