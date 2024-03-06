; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2928 () Bool)

(assert start!2928)

(declare-fun res!5293 () Bool)

(declare-fun e!7730 () Bool)

(assert (=> start!2928 (=> (not res!5293) (not e!7730))))

(declare-fun x!7884 () (_ BitVec 32))

(declare-datatypes () ((Unit!120 (Unit!121))))

(declare-fun tmp!21 () Unit!120)

(declare-fun d!10928 () Bool)

(declare-fun r!235 () Bool)

(declare-fun b!13966 () Bool)

(declare-fun res!5277 () Bool)

(declare-fun x!7883 () (_ BitVec 32))

(declare-fun res!5278 () Bool)

(declare-fun t!4064 () Bool)

(declare-fun x!7885 () (_ BitVec 32))

(declare-fun tmp!22 () Unit!120)

(declare-fun Unit!122 () Unit!120)

(declare-fun Unit!123 () Unit!120)

(assert (=> start!2928 (= res!5293 (and (= x!7883 #b00000000000000000000000000000000) (= x!7884 (bvadd x!7883 #b00000000000000000000000000000001)) (= tmp!21 Unit!122) (= x!7885 (bvmul x!7884 #b00000000000000000000000000000010)) (= tmp!22 Unit!123) (= r!235 (and b!13966 d!10928)) (= x!7885 #b00000000000000000000000000000010) (= res!5277 r!235) (= t!4064 (and b!13966 d!10928)) (= res!5278 t!4064)))))

(assert (=> start!2928 e!7730))

(assert (=> start!2928 true))

(declare-fun b!13984 () Bool)

(declare-fun res!5292 () Bool)

(assert (=> b!13984 (=> (not res!5292) (not e!7730))))

(declare-fun t!4065 () Bool)

(declare-fun e!7731 () Bool)

(assert (=> b!13984 (= res!5292 (= t!4065 e!7731))))

(declare-fun res!5294 () Bool)

(assert (=> b!13984 (=> (not res!5294) (not e!7731))))

(assert (=> b!13984 (= res!5294 (= res!5277 res!5278))))

(declare-fun b!13985 () Bool)

(declare-fun toBool!0 ((_ BitVec 32)) Bool)

(declare-fun toInt!0 (Bool) (_ BitVec 32))

(assert (=> b!13985 (= e!7731 (= res!5277 (toBool!0 (bvand (toInt!0 b!13966) (toInt!0 d!10928)))))))

(declare-fun b!13986 () Bool)

(declare-fun res!5279 () Bool)

(assert (=> b!13986 (= e!7730 (and (= res!5279 t!4065) (not res!5279)))))

(assert (= (and start!2928 res!5293) b!13984))

(assert (= (and b!13984 res!5294) b!13985))

(assert (= (and b!13984 res!5292) b!13986))

(declare-fun m!17925 () Bool)

(assert (=> b!13985 m!17925))

(declare-fun m!17927 () Bool)

(assert (=> b!13985 m!17927))

(declare-fun m!17929 () Bool)

(assert (=> b!13985 m!17929))

(push 1)

(assert (not b!13985))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10935 () Bool)

(assert (=> d!10935 (= (toBool!0 (bvand (toInt!0 b!13966) (toInt!0 d!10928))) (= (bvand (toInt!0 b!13966) (toInt!0 d!10928)) #b00000000000000000000000000000001))))

(assert (=> b!13985 d!10935))

(declare-fun d!10937 () Bool)

(assert (=> d!10937 (= (toInt!0 b!13966) (ite b!13966 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!13985 d!10937))

(declare-fun d!10939 () Bool)

(assert (=> d!10939 (= (toInt!0 d!10928) (ite d!10928 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!13985 d!10939))

(push 1)

(check-sat)

(pop 1)

