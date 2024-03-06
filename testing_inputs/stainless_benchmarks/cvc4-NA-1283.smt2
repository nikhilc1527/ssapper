; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9140 () Bool)

(assert start!9140)

(declare-datatypes () ((Option!427 (Some!405 (v!2347 (_ BitVec 32))) (None!406))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!427))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!427))

(declare-fun m3!1 () (Array (_ BitVec 32) Option!427))

(assert (=> start!9140 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!427)) None!406) #b00000000000000000000000000000001 (Some!405 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!406) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!405 #b00000000000000000000000000000011))) (not (= (select m2!4 #b00000000000000000000000000000010) None!406)) (= (v!2347 (select m2!4 #b00000000000000000000000000000010)) #b00000000000000000000000000000011) (= m3!1 (store m2!4 #b00000000000000000000000000000010 None!406)) (= (select m3!1 #b00000000000000000000000000000010) None!406) (not (= (select m3!1 #b00000000000000000000000000000001) None!406)) (not (= (v!2347 (select m3!1 #b00000000000000000000000000000001)) #b00000000000000000000000000000010)))))

(assert (=> start!9140 true))

(declare-fun bs!37555 () Bool)

(assert (= bs!37555 start!9140))

(declare-fun m!68933 () Bool)

(assert (=> bs!37555 m!68933))

(declare-fun m!68935 () Bool)

(assert (=> bs!37555 m!68935))

(declare-fun m!68937 () Bool)

(assert (=> bs!37555 m!68937))

(declare-fun m!68939 () Bool)

(assert (=> bs!37555 m!68939))

(declare-fun m!68941 () Bool)

(assert (=> bs!37555 m!68941))

(declare-fun m!68943 () Bool)

(assert (=> bs!37555 m!68943))

(push 1)

(check-sat)

(pop 1)

