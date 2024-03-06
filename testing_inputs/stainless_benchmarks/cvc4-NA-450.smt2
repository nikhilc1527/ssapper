; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2952 () Bool)

(assert start!2952)

(declare-fun res!5323 () Bool)

(declare-fun e!7748 () Bool)

(assert (=> start!2952 (=> (not res!5323) (not e!7748))))

(declare-fun x!7874 () (_ BitVec 32))

(declare-fun d!10926 () Bool)

(declare-datatypes () ((Unit!144 (Unit!145))))

(declare-fun tmp!18 () Unit!144)

(declare-fun res!5272 () Bool)

(declare-fun tmp!17 () Unit!144)

(declare-fun x!7875 () (_ BitVec 32))

(declare-fun x!7873 () (_ BitVec 32))

(declare-fun r!233 () Bool)

(declare-fun b!13955 () Bool)

(declare-fun Unit!146 () Unit!144)

(declare-fun Unit!147 () Unit!144)

(assert (=> start!2952 (= res!5323 (and (= x!7873 #b00000000000000000000000000000000) (= x!7874 (bvadd x!7873 #b00000000000000000000000000000001)) (= tmp!17 Unit!146) (= x!7875 (bvmul x!7874 #b00000000000000000000000000000010)) (= tmp!18 Unit!147) (= r!233 (not (= b!13955 d!10926))) (= x!7875 #b00000000000000000000000000000010) (= res!5272 r!233)))))

(assert (=> start!2952 e!7748))

(assert (=> start!2952 true))

(declare-fun b!14018 () Bool)

(declare-fun res!5322 () Bool)

(assert (=> b!14018 (=> (not res!5322) (not e!7748))))

(declare-fun t!4061 () Bool)

(declare-fun e!7749 () Bool)

(assert (=> b!14018 (= res!5322 (= t!4061 e!7749))))

(declare-fun res!5324 () Bool)

(assert (=> b!14018 (=> (not res!5324) (not e!7749))))

(assert (=> b!14018 (= res!5324 (= res!5272 (not (= b!13955 d!10926))))))

(declare-fun b!14019 () Bool)

(declare-fun toBool!0 ((_ BitVec 32)) Bool)

(declare-fun toInt!0 (Bool) (_ BitVec 32))

(assert (=> b!14019 (= e!7749 (= res!5272 (toBool!0 (bvxor (toInt!0 b!13955) (toInt!0 d!10926)))))))

(declare-fun b!14020 () Bool)

(declare-fun res!5273 () Bool)

(assert (=> b!14020 (= e!7748 (and (= res!5273 t!4061) (not res!5273)))))

(assert (= (and start!2952 res!5323) b!14018))

(assert (= (and b!14018 res!5324) b!14019))

(assert (= (and b!14018 res!5322) b!14020))

(declare-fun m!17945 () Bool)

(assert (=> b!14019 m!17945))

(declare-fun m!17947 () Bool)

(assert (=> b!14019 m!17947))

(declare-fun m!17949 () Bool)

(assert (=> b!14019 m!17949))

(push 1)

(assert (not b!14019))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10955 () Bool)

(assert (=> d!10955 (= (toBool!0 (bvxor (toInt!0 b!13955) (toInt!0 d!10926))) (= (bvxor (toInt!0 b!13955) (toInt!0 d!10926)) #b00000000000000000000000000000001))))

(assert (=> b!14019 d!10955))

(declare-fun d!10957 () Bool)

(assert (=> d!10957 (= (toInt!0 b!13955) (ite b!13955 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!14019 d!10957))

(declare-fun d!10959 () Bool)

(assert (=> d!10959 (= (toInt!0 d!10926) (ite d!10926 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!14019 d!10959))

(push 1)

(check-sat)

(pop 1)

