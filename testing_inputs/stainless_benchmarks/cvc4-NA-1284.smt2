; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9142 () Bool)

(assert start!9142)

(declare-datatypes () ((Option!428 (Some!406 (v!2348 (_ BitVec 32))) (None!407))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!428))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!428))

(assert (=> start!9142 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!428)) None!407) #b00000000000000000000000000000001 (Some!406 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!407) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!406 #b00000000000000000000000000000011))) (not (= (select m2!4 #b00000000000000000000000000000010) None!407)) (not (is-Some!406 (select m2!4 #b00000000000000000000000000000010))))))

(assert (=> start!9142 true))

(declare-fun bs!37557 () Bool)

(assert (= bs!37557 start!9142))

(declare-fun m!68945 () Bool)

(assert (=> bs!37557 m!68945))

(declare-fun m!68947 () Bool)

(assert (=> bs!37557 m!68947))

(declare-fun m!68949 () Bool)

(assert (=> bs!37557 m!68949))

(push 1)

(check-sat)

(pop 1)

