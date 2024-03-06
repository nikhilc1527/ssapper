; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2964 () Bool)

(assert start!2964)

(declare-fun res!5329 () Bool)

(declare-fun e!7752 () Bool)

(assert (=> start!2964 (=> (not res!5329) (not e!7752))))

(declare-fun b!14025 () (_ BitVec 8))

(assert (=> start!2964 (= res!5329 (= b!14025 #b01111111))))

(assert (=> start!2964 e!7752))

(assert (=> start!2964 true))

(declare-fun b!14030 () Bool)

(declare-fun test!37 ((_ BitVec 8)) (_ BitVec 32))

(assert (=> b!14030 (= e!7752 (not (= (test!37 b!14025) #b00000000000000000000000000000000)))))

(assert (= (and start!2964 res!5329) b!14030))

(declare-fun m!17951 () Bool)

(assert (=> b!14030 m!17951))

(push 1)

(assert (not b!14030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10963 () Bool)

(assert (=> d!10963 (= (test!37 b!14025) (ite (bvsgt ((_ sign_extend 24) b!14025) #b00000000000000000000000000000000) #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(assert (=> b!14030 d!10963))

(push 1)

(check-sat)

(pop 1)

