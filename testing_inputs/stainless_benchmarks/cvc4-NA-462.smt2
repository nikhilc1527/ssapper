; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2988 () Bool)

(assert start!2988)

(declare-fun res!5361 () Bool)

(declare-fun e!7770 () Bool)

(assert (=> start!2988 (=> (not res!5361) (not e!7770))))

(declare-fun i!234 () Int)

(declare-datatypes () ((List!315 (Cons!311 (head!533 (_ BitVec 32)) (tail!545 List!315)) (Nil!312))))

(declare-fun x$2!126 () List!315)

(assert (=> start!2988 (= res!5361 (and (>= i!234 0) (= i!234 0) (= x$2!126 Nil!312)))))

(assert (=> start!2988 e!7770))

(assert (=> start!2988 true))

(declare-fun b!14064 () Bool)

(declare-fun size!22 (List!315) Int)

(assert (=> b!14064 (= e!7770 (not (= (size!22 x$2!126) i!234)))))

(assert (= (and start!2988 res!5361) b!14064))

(declare-fun m!17967 () Bool)

(assert (=> b!14064 m!17967))

(push 1)

(assert (not b!14064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10977 () Bool)

(declare-fun lt!2041 () Int)

(assert (=> d!10977 (>= lt!2041 0)))

(declare-fun e!7773 () Int)

(assert (=> d!10977 (= lt!2041 e!7773)))

(declare-fun c!3921 () Bool)

(assert (=> d!10977 (= c!3921 (is-Nil!312 x$2!126))))

(assert (=> d!10977 (= (size!22 x$2!126) lt!2041)))

(declare-fun b!14069 () Bool)

(assert (=> b!14069 (= e!7773 0)))

(declare-fun b!14070 () Bool)

(assert (=> b!14070 (= e!7773 (+ 1 (size!22 (tail!545 x$2!126))))))

(assert (= (and d!10977 c!3921) b!14069))

(assert (= (and d!10977 (not c!3921)) b!14070))

(declare-fun m!17969 () Bool)

(assert (=> b!14070 m!17969))

(assert (=> b!14064 d!10977))

(push 1)

(assert (not b!14070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

