; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9132 () Bool)

(assert start!9132)

(declare-datatypes () ((Option!423 (Some!401 (v!2343 (_ BitVec 32))) (None!402))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!423))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!423))

(assert (=> start!9132 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!423)) None!402) #b00000000000000000000000000000001 (Some!401 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!402) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!401 #b00000000000000000000000000000011))) (= (select m2!4 #b00000000000000000000000000000010) None!402))))

(assert (=> start!9132 true))

(declare-fun bs!37547 () Bool)

(assert (= bs!37547 start!9132))

(declare-fun m!68899 () Bool)

(assert (=> bs!37547 m!68899))

(declare-fun m!68901 () Bool)

(assert (=> bs!37547 m!68901))

(declare-fun m!68903 () Bool)

(assert (=> bs!37547 m!68903))

(push 1)

(check-sat)

(pop 1)

