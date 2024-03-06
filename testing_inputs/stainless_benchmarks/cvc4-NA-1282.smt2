; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9138 () Bool)

(assert start!9138)

(declare-datatypes () ((Option!426 (Some!404 (v!2346 (_ BitVec 32))) (None!405))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!426))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!426))

(declare-fun m3!1 () (Array (_ BitVec 32) Option!426))

(assert (=> start!9138 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!426)) None!405) #b00000000000000000000000000000001 (Some!404 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!405) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!404 #b00000000000000000000000000000011))) (not (= (select m2!4 #b00000000000000000000000000000010) None!405)) (= (v!2346 (select m2!4 #b00000000000000000000000000000010)) #b00000000000000000000000000000011) (= m3!1 (store m2!4 #b00000000000000000000000000000010 None!405)) (= (select m3!1 #b00000000000000000000000000000010) None!405) (= (select m3!1 #b00000000000000000000000000000001) None!405))))

(assert (=> start!9138 true))

(declare-fun bs!37553 () Bool)

(assert (= bs!37553 start!9138))

(declare-fun m!68921 () Bool)

(assert (=> bs!37553 m!68921))

(declare-fun m!68923 () Bool)

(assert (=> bs!37553 m!68923))

(declare-fun m!68925 () Bool)

(assert (=> bs!37553 m!68925))

(declare-fun m!68927 () Bool)

(assert (=> bs!37553 m!68927))

(declare-fun m!68929 () Bool)

(assert (=> bs!37553 m!68929))

(declare-fun m!68931 () Bool)

(assert (=> bs!37553 m!68931))

(push 1)

(check-sat)

(pop 1)

