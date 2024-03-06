; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8450 () Bool)

(assert start!8450)

(declare-datatypes () ((Option!359 (Some!342 (v!2224 (_ BitVec 32))) (None!343))))

(declare-fun m!63739 () (Array (_ BitVec 32) Option!359))

(declare-fun m2!3 () (Array (_ BitVec 32) Option!359))

(assert (=> start!8450 (and (not (= (select m!63739 #b00000000000000000000000000000001) None!343)) (not (= (select m!63739 #b00000000000000000000000000000010) None!343)) (not (= (select m!63739 #b00000000000000000000000000000011) None!343)) (= m2!3 (store (store m!63739 #b00000000000000000000000000000001 None!343) #b00000000000000000000000000000010 None!343)) (= (select m2!3 #b00000000000000000000000000000001) None!343) (= (select m2!3 #b00000000000000000000000000000010) None!343) (not (= (select m2!3 #b00000000000000000000000000000011) None!343)) (not (= (v!2224 (select m2!3 #b00000000000000000000000000000011)) (v!2224 (select m!63739 #b00000000000000000000000000000011)))))))

(assert (=> start!8450 true))

(declare-fun bs!36407 () Bool)

(assert (= bs!36407 start!8450))

(declare-fun m!63783 () Bool)

(assert (=> bs!36407 m!63783))

(declare-fun m!63785 () Bool)

(assert (=> bs!36407 m!63785))

(declare-fun m!63787 () Bool)

(assert (=> bs!36407 m!63787))

(declare-fun m!63789 () Bool)

(assert (=> bs!36407 m!63789))

(declare-fun m!63791 () Bool)

(assert (=> bs!36407 m!63791))

(declare-fun m!63793 () Bool)

(assert (=> bs!36407 m!63793))

(declare-fun m!63795 () Bool)

(assert (=> bs!36407 m!63795))

(declare-fun m!63797 () Bool)

(assert (=> bs!36407 m!63797))

(push 1)

(check-sat)

(pop 1)

