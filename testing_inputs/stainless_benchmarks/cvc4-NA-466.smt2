; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3002 () Bool)

(assert start!3002)

(declare-fun res!5383 () Bool)

(declare-fun e!7788 () Bool)

(assert (=> start!3002 (=> (not res!5383) (not e!7788))))

(declare-datatypes () ((List!318 (Cons!314 (head!536 (_ BitVec 32)) (tail!548 List!318)) (Nil!315))))

(declare-fun l!550 () List!318)

(assert (=> start!3002 (= res!5383 (not (is-Nil!315 l!550)))))

(assert (=> start!3002 e!7788))

(assert (=> start!3002 true))

(declare-fun b!14102 () Bool)

(declare-fun res!5384 () Bool)

(assert (=> b!14102 (=> (not res!5384) (not e!7788))))

(declare-fun res!5340 () Int)

(declare-fun size!22 (List!318) Int)

(assert (=> b!14102 (= res!5384 (= res!5340 (+ 1 (size!22 (tail!548 l!550)))))))

(declare-fun b!14103 () Bool)

(assert (=> b!14103 (= e!7788 (< res!5340 0))))

(assert (= (and start!3002 res!5383) b!14102))

(assert (= (and b!14102 res!5384) b!14103))

(declare-fun m!17989 () Bool)

(assert (=> b!14102 m!17989))

(push 1)

(assert (not b!14102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10983 () Bool)

(declare-fun lt!2050 () Int)

(assert (=> d!10983 (>= lt!2050 0)))

(declare-fun e!7791 () Int)

(assert (=> d!10983 (= lt!2050 e!7791)))

(declare-fun c!3930 () Bool)

(assert (=> d!10983 (= c!3930 (is-Nil!315 (tail!548 l!550)))))

(assert (=> d!10983 (= (size!22 (tail!548 l!550)) lt!2050)))

(declare-fun b!14108 () Bool)

(assert (=> b!14108 (= e!7791 0)))

(declare-fun b!14109 () Bool)

(assert (=> b!14109 (= e!7791 (+ 1 (size!22 (tail!548 (tail!548 l!550)))))))

(assert (= (and d!10983 c!3930) b!14108))

(assert (= (and d!10983 (not c!3930)) b!14109))

(declare-fun m!17991 () Bool)

(assert (=> b!14109 m!17991))

(assert (=> b!14102 d!10983))

(push 1)

(assert (not b!14109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

