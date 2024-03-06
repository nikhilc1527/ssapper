; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2934 () Bool)

(assert start!2934)

(declare-fun res!5299 () Bool)

(declare-fun e!7734 () Bool)

(assert (=> start!2934 (=> (not res!5299) (not e!7734))))

(declare-datatypes () ((Unit!124 (Unit!125))))

(declare-fun tmp!20 () Unit!124)

(declare-fun d!10927 () Bool)

(declare-fun r!234 () Bool)

(declare-fun x!7880 () (_ BitVec 32))

(declare-fun b!13961 () Bool)

(declare-fun tmp!19 () Unit!124)

(declare-fun t!4062 () Bool)

(declare-fun x!7879 () (_ BitVec 32))

(declare-fun res!5275 () Bool)

(declare-fun x!7878 () (_ BitVec 32))

(declare-fun res!5274 () Bool)

(declare-fun Unit!126 () Unit!124)

(declare-fun Unit!127 () Unit!124)

(assert (=> start!2934 (= res!5299 (and (= x!7878 #b00000000000000000000000000000000) (= x!7879 (bvadd x!7878 #b00000000000000000000000000000001)) (= tmp!19 Unit!126) (= x!7880 (bvmul x!7879 #b00000000000000000000000000000010)) (= tmp!20 Unit!127) (= r!234 (or b!13961 d!10927)) (= x!7880 #b00000000000000000000000000000010) (= res!5274 r!234) (= t!4062 (or b!13961 d!10927)) (= res!5275 t!4062) (= res!5274 res!5275)))))

(assert (=> start!2934 e!7734))

(assert (=> start!2934 true))

(declare-fun b!13992 () Bool)

(declare-fun res!5300 () Bool)

(assert (=> b!13992 (=> (not res!5300) (not e!7734))))

(declare-fun x!7881 () (_ BitVec 32))

(declare-fun toInt!0 (Bool) (_ BitVec 32))

(assert (=> b!13992 (= res!5300 (= x!7881 (bvor (toInt!0 b!13961) (toInt!0 d!10927))))))

(declare-fun b!13993 () Bool)

(assert (=> b!13993 (= e!7734 (and (not (= x!7881 #b00000000000000000000000000000000)) (not (= x!7881 #b00000000000000000000000000000001))))))

(assert (= (and start!2934 res!5299) b!13992))

(assert (= (and b!13992 res!5300) b!13993))

(declare-fun m!17931 () Bool)

(assert (=> b!13992 m!17931))

(declare-fun m!17933 () Bool)

(assert (=> b!13992 m!17933))

(push 1)

(assert (not b!13992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10941 () Bool)

(assert (=> d!10941 (= (toInt!0 b!13961) (ite b!13961 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!13992 d!10941))

(declare-fun d!10943 () Bool)

(assert (=> d!10943 (= (toInt!0 d!10927) (ite d!10927 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!13992 d!10943))

(push 1)

(check-sat)

(pop 1)

