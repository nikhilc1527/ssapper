; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!168 () Bool)

(assert start!168)

(declare-fun res!612 () Bool)

(declare-fun e!557 () Bool)

(assert (=> start!168 (=> (not res!612) (not e!557))))

(declare-datatypes () ((Root!2 (C!46 (x!1503 Int)) (D!13 (x!1504 Int)))))

(declare-fun a!312 () Root!2)

(declare-datatypes () ((Option!56 (Some!54 (value!638 Root!2)) (None!54))))

(declare-fun isEmpty!54 (Option!56) Bool)

(declare-fun B!302 (Root!2) Option!56)

(assert (=> start!168 (= res!612 (not (isEmpty!54 (B!302 a!312))))))

(assert (=> start!168 e!557))

(assert (=> start!168 true))

(declare-fun e!558 () Bool)

(assert (=> start!168 e!558))

(declare-fun b!777 () Bool)

(declare-fun res!613 () Bool)

(assert (=> b!777 (=> (not res!613) (not e!557))))

(declare-fun x!1493 () Option!56)

(assert (=> b!777 (= res!613 (= x!1493 (B!302 a!312)))))

(declare-fun b!778 () Bool)

(assert (=> b!778 (= e!557 (not (is-Some!54 x!1493)))))

(declare-fun b!779 () Bool)

(declare-fun lt!75 () Root!2)

(assert (=> b!779 (= e!558 (or (is-C!46 lt!75) (is-D!13 lt!75)))))

(assert (=> b!779 (= lt!75 (value!638 x!1493))))

(assert (= (and start!168 res!612) b!777))

(assert (= (and b!777 res!613) b!778))

(assert (= (and start!168 (is-Some!54 x!1493)) b!779))

(declare-fun m!523 () Bool)

(assert (=> start!168 m!523))

(assert (=> start!168 m!523))

(declare-fun m!525 () Bool)

(assert (=> start!168 m!525))

(assert (=> b!777 m!523))

(push 1)

(assert (not b!777))

(assert (not start!168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!784 () Bool)

(declare-fun e!561 () Bool)

(declare-fun lt!78 () Root!2)

(assert (=> b!784 (= e!561 (or (is-C!46 lt!78) (is-D!13 lt!78)))))

(assert (=> b!784 (= lt!78 (value!638 (B!302 a!312)))))

(declare-fun d!234 () Bool)

(assert (=> d!234 (= true e!561)))

(assert (= (and d!234 (is-Some!54 (B!302 a!312))) b!784))

(assert (=> d!234 (= (B!302 a!312) (ite true (Some!54 a!312) None!54))))

(assert (=> b!777 d!234))

(declare-fun d!236 () Bool)

(assert (=> d!236 (= (isEmpty!54 (B!302 a!312)) (is-None!54 (B!302 a!312)))))

(assert (=> start!168 d!236))

(assert (=> start!168 d!234))

(push 1)

(check-sat)

(pop 1)

