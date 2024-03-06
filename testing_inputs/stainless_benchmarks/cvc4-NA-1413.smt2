; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9774 () Bool)

(assert start!9774)

(declare-fun res!34841 () Bool)

(declare-fun e!38544 () Bool)

(assert (=> start!9774 (=> (not res!34841) (not e!38544))))

(declare-fun a!761 () Int)

(assert (=> start!9774 (= res!34841 (>= a!761 0))))

(assert (=> start!9774 e!38544))

(assert (=> start!9774 true))

(declare-fun b!71238 () Bool)

(declare-fun res!34842 () Bool)

(assert (=> b!71238 (=> (not res!34842) (not e!38544))))

(declare-fun x$2!394 () Int)

(declare-fun bar!10 (Int Int) Int)

(assert (=> b!71238 (= res!34842 (= x$2!394 (bar!10 a!761 2)))))

(declare-fun b!71239 () Bool)

(assert (=> b!71239 (= e!38544 (not (= x$2!394 5)))))

(assert (= (and start!9774 res!34841) b!71238))

(assert (= (and b!71238 res!34842) b!71239))

(declare-fun m!71096 () Bool)

(assert (=> b!71238 m!71096))

(push 1)

(assert (not b!71238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53988 () Bool)

(declare-fun e!38547 () Bool)

(assert (=> d!53988 e!38547))

(declare-fun res!34845 () Bool)

(assert (=> d!53988 (=> (not res!34845) (not e!38547))))

(declare-fun prop!20 (Int Int) Bool)

(assert (=> d!53988 (= res!34845 (prop!20 a!761 2))))

(declare-fun lt!15155 () Int)

(assert (=> d!53988 (= lt!15155 (+ 2 3))))

(assert (=> d!53988 (> 2 0)))

(assert (=> d!53988 (= (bar!10 a!761 2) lt!15155)))

(declare-fun b!71243 () Bool)

(assert (=> b!71243 (= e!38547 (and (>= a!761 0) (= lt!15155 (+ 2 3))))))

(assert (= (and d!53988 res!34845) b!71243))

(declare-fun m!71098 () Bool)

(assert (=> d!53988 m!71098))

(assert (=> b!71238 d!53988))

(push 1)

(assert (not d!53988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

