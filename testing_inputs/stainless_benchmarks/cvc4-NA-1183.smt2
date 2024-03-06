; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8452 () Bool)

(assert start!8452)

(declare-datatypes () ((Option!360 (Some!343 (v!2225 (_ BitVec 32))) (None!344))))

(declare-fun m!63739 () (Array (_ BitVec 32) Option!360))

(declare-fun m2!3 () (Array (_ BitVec 32) Option!360))

(assert (=> start!8452 (and (not (= (select m!63739 #b00000000000000000000000000000001) None!344)) (not (= (select m!63739 #b00000000000000000000000000000010) None!344)) (not (= (select m!63739 #b00000000000000000000000000000011) None!344)) (= m2!3 (store (store m!63739 #b00000000000000000000000000000001 None!344) #b00000000000000000000000000000010 None!344)) (= (select m2!3 #b00000000000000000000000000000001) None!344) (= (select m2!3 #b00000000000000000000000000000010) None!344) (not (= (select m2!3 #b00000000000000000000000000000011) None!344)) (not (is-Some!343 (select m2!3 #b00000000000000000000000000000011))))))

(assert (=> start!8452 true))

(declare-fun bs!36409 () Bool)

(assert (= bs!36409 start!8452))

(declare-fun m!63799 () Bool)

(assert (=> bs!36409 m!63799))

(declare-fun m!63801 () Bool)

(assert (=> bs!36409 m!63801))

(declare-fun m!63803 () Bool)

(assert (=> bs!36409 m!63803))

(declare-fun m!63805 () Bool)

(assert (=> bs!36409 m!63805))

(declare-fun m!63807 () Bool)

(assert (=> bs!36409 m!63807))

(declare-fun m!63809 () Bool)

(assert (=> bs!36409 m!63809))

(declare-fun m!63811 () Bool)

(assert (=> bs!36409 m!63811))

(declare-fun m!63813 () Bool)

(assert (=> bs!36409 m!63813))

(push 1)

(check-sat)

(pop 1)

