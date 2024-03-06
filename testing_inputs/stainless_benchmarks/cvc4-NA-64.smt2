; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!528 () Bool)

(assert start!528)

(declare-fun res!1222 () Bool)

(declare-fun e!2245 () Bool)

(assert (=> start!528 (=> (not res!1222) (not e!2245))))

(declare-datatypes () ((List!77 (Cons!77 (head!249 (_ BitVec 32)) (tail!261 List!77)) (Nil!78))))

(declare-fun rear!18 () List!77)

(declare-fun front!19 () List!77)

(declare-fun size!23 (List!77) Int)

(assert (=> start!528 (= res!1222 (<= (size!23 rear!18) (size!23 front!19)))))

(assert (=> start!528 e!2245))

(assert (=> start!528 true))

(declare-fun b!4029 () Bool)

(declare-fun res!1223 () Bool)

(assert (=> b!4029 (=> (not res!1223) (not e!2245))))

(declare-datatypes () ((AbsQueue!24 (Queue!23 (front!77 List!77) (rear!79 List!77)))))

(declare-fun x$3!43 () AbsQueue!24)

(assert (=> b!4029 (= res!1223 (= x$3!43 (Queue!23 front!19 rear!18)))))

(declare-fun b!4030 () Bool)

(declare-fun isAmortized!0 (AbsQueue!24) Bool)

(assert (=> b!4030 (= e!2245 (not (isAmortized!0 x$3!43)))))

(assert (= (and start!528 res!1222) b!4029))

(assert (= (and b!4029 res!1223) b!4030))

(declare-fun m!6353 () Bool)

(assert (=> start!528 m!6353))

(declare-fun m!6355 () Bool)

(assert (=> start!528 m!6355))

(declare-fun m!6357 () Bool)

(assert (=> b!4030 m!6357))

(push 1)

(assert (not b!4030))

(assert (not start!528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2922 () Bool)

(assert (=> d!2922 (= (isAmortized!0 x$3!43) (>= (size!23 (front!77 x$3!43)) (size!23 (rear!79 x$3!43))))))

(declare-fun bs!275 () Bool)

(assert (= bs!275 d!2922))

(declare-fun m!6359 () Bool)

(assert (=> bs!275 m!6359))

(declare-fun m!6361 () Bool)

(assert (=> bs!275 m!6361))

(assert (=> b!4030 d!2922))

(declare-fun d!2924 () Bool)

(declare-fun lt!1149 () Int)

(assert (=> d!2924 (>= lt!1149 0)))

(declare-fun e!2248 () Int)

(assert (=> d!2924 (= lt!1149 e!2248)))

(declare-fun c!1472 () Bool)

(assert (=> d!2924 (= c!1472 (is-Nil!78 rear!18))))

(assert (=> d!2924 (= (size!23 rear!18) lt!1149)))

(declare-fun b!4035 () Bool)

(assert (=> b!4035 (= e!2248 0)))

(declare-fun b!4036 () Bool)

(assert (=> b!4036 (= e!2248 (+ 1 (size!23 (tail!261 rear!18))))))

(assert (= (and d!2924 c!1472) b!4035))

(assert (= (and d!2924 (not c!1472)) b!4036))

(declare-fun m!6363 () Bool)

(assert (=> b!4036 m!6363))

(assert (=> start!528 d!2924))

(declare-fun d!2926 () Bool)

(declare-fun lt!1150 () Int)

(assert (=> d!2926 (>= lt!1150 0)))

(declare-fun e!2249 () Int)

(assert (=> d!2926 (= lt!1150 e!2249)))

(declare-fun c!1473 () Bool)

(assert (=> d!2926 (= c!1473 (is-Nil!78 front!19))))

(assert (=> d!2926 (= (size!23 front!19) lt!1150)))

(declare-fun b!4037 () Bool)

(assert (=> b!4037 (= e!2249 0)))

(declare-fun b!4038 () Bool)

(assert (=> b!4038 (= e!2249 (+ 1 (size!23 (tail!261 front!19))))))

(assert (= (and d!2926 c!1473) b!4037))

(assert (= (and d!2926 (not c!1473)) b!4038))

(declare-fun m!6365 () Bool)

(assert (=> b!4038 m!6365))

(assert (=> start!528 d!2926))

(push 1)

(assert (not b!4036))

(assert (not b!4038))

(assert (not d!2922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

