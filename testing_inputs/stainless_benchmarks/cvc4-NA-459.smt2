; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2976 () Bool)

(assert start!2976)

(declare-fun res!5352 () Bool)

(declare-fun e!7755 () Bool)

(assert (=> start!2976 (=> (not res!5352) (not e!7755))))

(declare-fun i!231 () Int)

(assert (=> start!2976 (= res!5352 (and (>= i!231 0) (> i!231 0)))))

(assert (=> start!2976 e!7755))

(assert (=> start!2976 true))

(declare-fun b!14039 () Bool)

(declare-fun res!5353 () Bool)

(assert (=> b!14039 (=> (not res!5353) (not e!7755))))

(declare-datatypes () ((List!313 (Cons!309 (head!531 (_ BitVec 32)) (tail!543 List!313)) (Nil!310))))

(declare-fun x$3!86 () List!313)

(declare-fun listOfSize!0 (Int) List!313)

(assert (=> b!14039 (= res!5353 (= x$3!86 (Cons!309 #b00000000000000000000000000000000 (listOfSize!0 (- i!231 1)))))))

(declare-fun b!14040 () Bool)

(declare-fun size!22 (List!313) Int)

(assert (=> b!14040 (= e!7755 (not (= (size!22 x$3!86) i!231)))))

(assert (= (and start!2976 res!5352) b!14039))

(assert (= (and b!14039 res!5353) b!14040))

(declare-fun m!17953 () Bool)

(assert (=> b!14039 m!17953))

(declare-fun m!17955 () Bool)

(assert (=> b!14040 m!17955))

(push 1)

(assert (not b!14039))

(assert (not b!14040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10971 () Bool)

(declare-fun lt!2032 () List!313)

(assert (=> d!10971 (= (size!22 lt!2032) (- i!231 1))))

(declare-fun e!7758 () List!313)

(assert (=> d!10971 (= lt!2032 e!7758)))

(declare-fun c!3912 () Bool)

(assert (=> d!10971 (= c!3912 (= (- i!231 1) 0))))

(assert (=> d!10971 (>= (- i!231 1) 0)))

(assert (=> d!10971 (= (listOfSize!0 (- i!231 1)) lt!2032)))

(declare-fun b!14045 () Bool)

(assert (=> b!14045 (= e!7758 Nil!310)))

(declare-fun b!14046 () Bool)

(declare-fun choose!2 (Int) List!313)

(assert (=> b!14046 (= e!7758 (choose!2 (- i!231 1)))))

(assert (= (and d!10971 c!3912) b!14045))

(assert (= (and d!10971 (not c!3912)) b!14046))

(declare-fun m!17957 () Bool)

(assert (=> d!10971 m!17957))

(declare-fun m!17959 () Bool)

(assert (=> b!14046 m!17959))

(assert (=> b!14039 d!10971))

(declare-fun d!10973 () Bool)

(declare-fun lt!2035 () Int)

(assert (=> d!10973 (>= lt!2035 0)))

(declare-fun e!7761 () Int)

(assert (=> d!10973 (= lt!2035 e!7761)))

(declare-fun c!3915 () Bool)

(assert (=> d!10973 (= c!3915 (is-Nil!310 x$3!86))))

(assert (=> d!10973 (= (size!22 x$3!86) lt!2035)))

(declare-fun b!14051 () Bool)

(assert (=> b!14051 (= e!7761 0)))

(declare-fun b!14052 () Bool)

(assert (=> b!14052 (= e!7761 (+ 1 (size!22 (tail!543 x$3!86))))))

(assert (= (and d!10973 c!3915) b!14051))

(assert (= (and d!10973 (not c!3915)) b!14052))

(declare-fun m!17961 () Bool)

(assert (=> b!14052 m!17961))

(assert (=> b!14040 d!10973))

(push 1)

(assert (not b!14046))

(assert (not d!10971))

(assert (not b!14052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

