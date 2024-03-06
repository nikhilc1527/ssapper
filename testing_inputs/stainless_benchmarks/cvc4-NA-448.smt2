; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2946 () Bool)

(assert start!2946)

(declare-fun res!5314 () Bool)

(declare-fun e!7743 () Bool)

(assert (=> start!2946 (=> (not res!5314) (not e!7743))))

(declare-fun x!7874 () (_ BitVec 32))

(declare-fun d!10926 () Bool)

(declare-datatypes () ((Unit!136 (Unit!137))))

(declare-fun tmp!18 () Unit!136)

(declare-fun res!5272 () Bool)

(declare-fun tmp!17 () Unit!136)

(declare-fun x!7875 () (_ BitVec 32))

(declare-fun x!7873 () (_ BitVec 32))

(declare-fun r!233 () Bool)

(declare-fun b!13955 () Bool)

(declare-fun Unit!138 () Unit!136)

(declare-fun Unit!139 () Unit!136)

(assert (=> start!2946 (= res!5314 (and (= x!7873 #b00000000000000000000000000000000) (= x!7874 (bvadd x!7873 #b00000000000000000000000000000001)) (= tmp!17 Unit!138) (= x!7875 (bvmul x!7874 #b00000000000000000000000000000010)) (= tmp!18 Unit!139) (= r!233 (not (= b!13955 d!10926))) (= x!7875 #b00000000000000000000000000000010) (= res!5272 r!233) (= res!5272 (not (= b!13955 d!10926)))))))

(assert (=> start!2946 e!7743))

(assert (=> start!2946 true))

(declare-fun b!14009 () Bool)

(declare-fun res!5315 () Bool)

(assert (=> b!14009 (=> (not res!5315) (not e!7743))))

(declare-fun x!7876 () (_ BitVec 32))

(declare-fun toInt!0 (Bool) (_ BitVec 32))

(assert (=> b!14009 (= res!5315 (= x!7876 (bvxor (toInt!0 b!13955) (toInt!0 d!10926))))))

(declare-fun b!14010 () Bool)

(assert (=> b!14010 (= e!7743 (and (not (= x!7876 #b00000000000000000000000000000000)) (not (= x!7876 #b00000000000000000000000000000001))))))

(assert (= (and start!2946 res!5314) b!14009))

(assert (= (and b!14009 res!5315) b!14010))

(declare-fun m!17941 () Bool)

(assert (=> b!14009 m!17941))

(declare-fun m!17943 () Bool)

(assert (=> b!14009 m!17943))

(push 1)

(assert (not b!14009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10951 () Bool)

(assert (=> d!10951 (= (toInt!0 b!13955) (ite b!13955 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!14009 d!10951))

(declare-fun d!10953 () Bool)

(assert (=> d!10953 (= (toInt!0 d!10926) (ite d!10926 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!14009 d!10953))

(push 1)

(check-sat)

(pop 1)

