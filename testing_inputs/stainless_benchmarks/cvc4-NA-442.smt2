; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2922 () Bool)

(assert start!2922)

(declare-fun res!5284 () Bool)

(declare-fun e!7725 () Bool)

(assert (=> start!2922 (=> (not res!5284) (not e!7725))))

(declare-fun x!7884 () (_ BitVec 32))

(declare-datatypes () ((Unit!112 (Unit!113))))

(declare-fun tmp!21 () Unit!112)

(declare-fun d!10928 () Bool)

(declare-fun r!235 () Bool)

(declare-fun b!13966 () Bool)

(declare-fun res!5277 () Bool)

(declare-fun x!7883 () (_ BitVec 32))

(declare-fun res!5278 () Bool)

(declare-fun t!4064 () Bool)

(declare-fun x!7885 () (_ BitVec 32))

(declare-fun tmp!22 () Unit!112)

(declare-fun Unit!114 () Unit!112)

(declare-fun Unit!115 () Unit!112)

(assert (=> start!2922 (= res!5284 (and (= x!7883 #b00000000000000000000000000000000) (= x!7884 (bvadd x!7883 #b00000000000000000000000000000001)) (= tmp!21 Unit!114) (= x!7885 (bvmul x!7884 #b00000000000000000000000000000010)) (= tmp!22 Unit!115) (= r!235 (and b!13966 d!10928)) (= x!7885 #b00000000000000000000000000000010) (= res!5277 r!235) (= t!4064 (and b!13966 d!10928)) (= res!5278 t!4064) (= res!5277 res!5278)))))

(assert (=> start!2922 e!7725))

(assert (=> start!2922 true))

(declare-fun b!13975 () Bool)

(declare-fun res!5285 () Bool)

(assert (=> b!13975 (=> (not res!5285) (not e!7725))))

(declare-fun x!7886 () (_ BitVec 32))

(declare-fun toInt!0 (Bool) (_ BitVec 32))

(assert (=> b!13975 (= res!5285 (= x!7886 (bvand (toInt!0 b!13966) (toInt!0 d!10928))))))

(declare-fun b!13976 () Bool)

(assert (=> b!13976 (= e!7725 (and (not (= x!7886 #b00000000000000000000000000000000)) (not (= x!7886 #b00000000000000000000000000000001))))))

(assert (= (and start!2922 res!5284) b!13975))

(assert (= (and b!13975 res!5285) b!13976))

(declare-fun m!17921 () Bool)

(assert (=> b!13975 m!17921))

(declare-fun m!17923 () Bool)

(assert (=> b!13975 m!17923))

(push 1)

(assert (not b!13975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10931 () Bool)

(assert (=> d!10931 (= (toInt!0 b!13966) (ite b!13966 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!13975 d!10931))

(declare-fun d!10933 () Bool)

(assert (=> d!10933 (= (toInt!0 d!10928) (ite d!10928 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!13975 d!10933))

(push 1)

(check-sat)

(pop 1)

