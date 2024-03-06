; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9146 () Bool)

(assert start!9146)

(declare-datatypes () ((Option!429 (Some!407 (v!2349 (_ BitVec 32))) (None!408))))

(declare-fun m1!2 () (Array (_ BitVec 32) Option!429))

(declare-fun m2!4 () (Array (_ BitVec 32) Option!429))

(declare-fun m3!1 () (Array (_ BitVec 32) Option!429))

(assert (=> start!9146 (and (= m1!2 (store ((as const (Array (_ BitVec 32) Option!429)) None!408) #b00000000000000000000000000000001 (Some!407 #b00000000000000000000000000000010))) (= (select m1!2 #b00000000000000000000000000000010) None!408) (= m2!4 (store m1!2 #b00000000000000000000000000000010 (Some!407 #b00000000000000000000000000000011))) (not (= (select m2!4 #b00000000000000000000000000000010) None!408)) (= (v!2349 (select m2!4 #b00000000000000000000000000000010)) #b00000000000000000000000000000011) (= m3!1 (store m2!4 #b00000000000000000000000000000010 None!408)) (= (select m3!1 #b00000000000000000000000000000010) None!408) (not (= (select m3!1 #b00000000000000000000000000000001) None!408)) (not (is-Some!407 (select m3!1 #b00000000000000000000000000000001))))))

(assert (=> start!9146 true))

(declare-fun bs!37560 () Bool)

(assert (= bs!37560 start!9146))

(declare-fun m!68951 () Bool)

(assert (=> bs!37560 m!68951))

(declare-fun m!68953 () Bool)

(assert (=> bs!37560 m!68953))

(declare-fun m!68955 () Bool)

(assert (=> bs!37560 m!68955))

(declare-fun m!68957 () Bool)

(assert (=> bs!37560 m!68957))

(declare-fun m!68959 () Bool)

(assert (=> bs!37560 m!68959))

(declare-fun m!68961 () Bool)

(assert (=> bs!37560 m!68961))

(push 1)

(check-sat)

(pop 1)

