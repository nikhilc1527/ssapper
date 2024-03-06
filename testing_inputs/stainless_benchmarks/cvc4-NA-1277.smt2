; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9128 () Bool)

(assert start!9128)

(declare-datatypes () ((Option!421 (Some!399 (v!2341 (_ BitVec 32))) (None!400))))

(declare-fun m!68891 () (Array (_ BitVec 32) Option!421))

(declare-fun x$1!867 () (_ BitVec 32))

(assert (=> start!9128 (and (= m!68891 (store (store (store ((as const (Array (_ BitVec 32) Option!421)) None!400) #b00000000000000000000000000000001 (Some!399 #b00000000000000000000000000000010)) #b00000000000000000000000000000010 (Some!399 #b00000000000000000000000000000011)) #b00000000000000000000000000000011 (Some!399 #b00000000000000000000000000000100))) (is-Some!399 (select m!68891 #b00000000000000000000000000000010)) (= x$1!867 (v!2341 (select m!68891 #b00000000000000000000000000000010))) (not (= x$1!867 #b00000000000000000000000000000011)))))

(assert (=> start!9128 true))

(declare-fun bs!37543 () Bool)

(assert (= bs!37543 start!9128))

(declare-fun m!68895 () Bool)

(assert (=> bs!37543 m!68895))

(push 1)

(check-sat)

(pop 1)

