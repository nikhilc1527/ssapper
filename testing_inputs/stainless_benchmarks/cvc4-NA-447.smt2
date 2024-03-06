; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2940 () Bool)

(assert start!2940)

(declare-fun res!5309 () Bool)

(declare-fun e!7740 () Bool)

(assert (=> start!2940 (=> (not res!5309) (not e!7740))))

(declare-datatypes () ((Unit!132 (Unit!133))))

(declare-fun tmp!20 () Unit!132)

(declare-fun d!10927 () Bool)

(declare-fun r!234 () Bool)

(declare-fun x!7880 () (_ BitVec 32))

(declare-fun b!13961 () Bool)

(declare-fun tmp!19 () Unit!132)

(declare-fun t!4062 () Bool)

(declare-fun x!7879 () (_ BitVec 32))

(declare-fun res!5275 () Bool)

(declare-fun x!7878 () (_ BitVec 32))

(declare-fun res!5274 () Bool)

(declare-fun Unit!134 () Unit!132)

(declare-fun Unit!135 () Unit!132)

(assert (=> start!2940 (= res!5309 (and (= x!7878 #b00000000000000000000000000000000) (= x!7879 (bvadd x!7878 #b00000000000000000000000000000001)) (= tmp!19 Unit!134) (= x!7880 (bvmul x!7879 #b00000000000000000000000000000010)) (= tmp!20 Unit!135) (= r!234 (or b!13961 d!10927)) (= x!7880 #b00000000000000000000000000000010) (= res!5274 r!234) (= t!4062 (or b!13961 d!10927)) (= res!5275 t!4062)))))

(assert (=> start!2940 e!7740))

(assert (=> start!2940 true))

(declare-fun b!14001 () Bool)

(declare-fun res!5308 () Bool)

(assert (=> b!14001 (=> (not res!5308) (not e!7740))))

(declare-fun t!4063 () Bool)

(declare-fun e!7739 () Bool)

(assert (=> b!14001 (= res!5308 (= t!4063 e!7739))))

(declare-fun res!5307 () Bool)

(assert (=> b!14001 (=> (not res!5307) (not e!7739))))

(assert (=> b!14001 (= res!5307 (= res!5274 res!5275))))

(declare-fun b!14002 () Bool)

(declare-fun toBool!0 ((_ BitVec 32)) Bool)

(declare-fun toInt!0 (Bool) (_ BitVec 32))

(assert (=> b!14002 (= e!7739 (= res!5274 (toBool!0 (bvor (toInt!0 b!13961) (toInt!0 d!10927)))))))

(declare-fun b!14003 () Bool)

(declare-fun res!5276 () Bool)

(assert (=> b!14003 (= e!7740 (and (= res!5276 t!4063) (not res!5276)))))

(assert (= (and start!2940 res!5309) b!14001))

(assert (= (and b!14001 res!5307) b!14002))

(assert (= (and b!14001 res!5308) b!14003))

(declare-fun m!17935 () Bool)

(assert (=> b!14002 m!17935))

(declare-fun m!17937 () Bool)

(assert (=> b!14002 m!17937))

(declare-fun m!17939 () Bool)

(assert (=> b!14002 m!17939))

(push 1)

(assert (not b!14002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10945 () Bool)

(assert (=> d!10945 (= (toBool!0 (bvor (toInt!0 b!13961) (toInt!0 d!10927))) (= (bvor (toInt!0 b!13961) (toInt!0 d!10927)) #b00000000000000000000000000000001))))

(assert (=> b!14002 d!10945))

(declare-fun d!10947 () Bool)

(assert (=> d!10947 (= (toInt!0 b!13961) (ite b!13961 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!14002 d!10947))

(declare-fun d!10949 () Bool)

(assert (=> d!10949 (= (toInt!0 d!10927) (ite d!10927 #b00000000000000000000000000000001 #b00000000000000000000000000000000))))

(assert (=> b!14002 d!10949))

(push 1)

(check-sat)

(pop 1)

