; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2982 () Bool)

(assert start!2982)

(declare-fun res!5357 () Bool)

(declare-fun e!7764 () Bool)

(assert (=> start!2982 (=> (not res!5357) (not e!7764))))

(declare-fun i!231 () Int)

(declare-datatypes () ((List!314 (Cons!310 (head!532 (_ BitVec 32)) (tail!544 List!314)) (Nil!311))))

(declare-fun x$3!87 () List!314)

(assert (=> start!2982 (= res!5357 (and (>= i!231 0) (<= i!231 0) (= x$3!87 Nil!311)))))

(assert (=> start!2982 e!7764))

(assert (=> start!2982 true))

(declare-fun b!14055 () Bool)

(declare-fun size!22 (List!314) Int)

(assert (=> b!14055 (= e!7764 (not (= (size!22 x$3!87) i!231)))))

(assert (= (and start!2982 res!5357) b!14055))

(declare-fun m!17963 () Bool)

(assert (=> b!14055 m!17963))

(push 1)

(assert (not b!14055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10975 () Bool)

(declare-fun lt!2038 () Int)

(assert (=> d!10975 (>= lt!2038 0)))

(declare-fun e!7767 () Int)

(assert (=> d!10975 (= lt!2038 e!7767)))

(declare-fun c!3918 () Bool)

(assert (=> d!10975 (= c!3918 (is-Nil!311 x$3!87))))

(assert (=> d!10975 (= (size!22 x$3!87) lt!2038)))

(declare-fun b!14060 () Bool)

(assert (=> b!14060 (= e!7767 0)))

(declare-fun b!14061 () Bool)

(assert (=> b!14061 (= e!7767 (+ 1 (size!22 (tail!544 x$3!87))))))

(assert (= (and d!10975 c!3918) b!14060))

(assert (= (and d!10975 (not c!3918)) b!14061))

(declare-fun m!17965 () Bool)

(assert (=> b!14061 m!17965))

(assert (=> b!14055 d!10975))

(push 1)

(assert (not b!14061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

