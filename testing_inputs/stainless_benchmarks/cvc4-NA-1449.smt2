; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9970 () Bool)

(assert start!9970)

(declare-fun res!35324 () Bool)

(declare-fun e!39134 () Bool)

(assert (=> start!9970 (=> (not res!35324) (not e!39134))))

(declare-datatypes () ((List!608 (Nil!566) (Cons!565 (head!975 Int) (tail!996 List!608)))))

(declare-fun list!859 () List!608)

(assert (=> start!9970 (= res!35324 (not (is-Nil!566 list!859)))))

(assert (=> start!9970 e!39134))

(assert (=> start!9970 true))

(declare-fun b!72383 () Bool)

(declare-fun res!35325 () Bool)

(assert (=> b!72383 (=> (not res!35325) (not e!39134))))

(declare-fun x$1!995 () Int)

(declare-fun size!4 (List!608) Int)

(assert (=> b!72383 (= res!35325 (= x$1!995 (+ 1 (size!4 (tail!996 list!859)))))))

(declare-fun b!72384 () Bool)

(assert (=> b!72384 (= e!39134 (< x$1!995 0))))

(assert (= (and start!9970 res!35324) b!72383))

(assert (= (and b!72383 res!35325) b!72384))

(declare-fun m!72354 () Bool)

(assert (=> b!72383 m!72354))

(push 1)

(assert (not b!72383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54561 () Bool)

(declare-fun lt!15344 () Int)

(assert (=> d!54561 (>= lt!15344 0)))

(declare-fun e!39137 () Int)

(assert (=> d!54561 (= lt!15344 e!39137)))

(declare-fun c!17424 () Bool)

(assert (=> d!54561 (= c!17424 (is-Nil!566 (tail!996 list!859)))))

(assert (=> d!54561 (= (size!4 (tail!996 list!859)) lt!15344)))

(declare-fun b!72389 () Bool)

(assert (=> b!72389 (= e!39137 0)))

(declare-fun b!72390 () Bool)

(assert (=> b!72390 (= e!39137 (+ 1 (size!4 (tail!996 (tail!996 list!859)))))))

(assert (= (and d!54561 c!17424) b!72389))

(assert (= (and d!54561 (not c!17424)) b!72390))

(declare-fun m!72356 () Bool)

(assert (=> b!72390 m!72356))

(assert (=> b!72383 d!54561))

(push 1)

(assert (not b!72390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

