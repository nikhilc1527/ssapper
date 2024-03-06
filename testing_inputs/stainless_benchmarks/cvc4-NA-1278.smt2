; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9130 () Bool)

(assert start!9130)

(declare-datatypes () ((Option!422 (Some!400 (v!2342 (_ BitVec 32))) (None!401))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!422))

(assert (=> start!9130 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!422)) None!401) #b00000000000000000000000000000001 (Some!400 #b00000000000000000000000000000010))) (not (= (select m1!2 #b00000000000000000000000000000010) None!401)))))

(assert (=> start!9130 true))

(declare-fun bs!37545 () Bool)

(assert (= bs!37545 start!9130))

(declare-fun m!68897 () Bool)

(assert (=> bs!37545 m!68897))

(push 1)

(check-sat)

(pop 1)

