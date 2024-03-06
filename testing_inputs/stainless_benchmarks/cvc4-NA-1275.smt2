; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9124 () Bool)

(assert start!9124)

(declare-datatypes () ((Option!420 (Some!398 (v!2340 (_ BitVec 32))) (None!399))))

(declare-fun m!68891 () (Array (_ BitVec 32) Option!420))

(assert (=> start!9124 (and (= m!68891 (store (store (store ((as const (Array (_ BitVec 32) Option!420)) None!399) #b00000000000000000000000000000001 (Some!398 #b00000000000000000000000000000010)) #b00000000000000000000000000000010 (Some!398 #b00000000000000000000000000000011)) #b00000000000000000000000000000011 (Some!398 #b00000000000000000000000000000100))) (not (is-Some!398 (select m!68891 #b00000000000000000000000000000010))))))

(assert (=> start!9124 true))

(declare-fun bs!37540 () Bool)

(assert (= bs!37540 start!9124))

(declare-fun m!68893 () Bool)

(assert (=> bs!37540 m!68893))

(push 1)

(check-sat)

(pop 1)

