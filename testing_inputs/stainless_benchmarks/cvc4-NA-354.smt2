; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2674 () Bool)

(assert start!2674)

(declare-fun res!4796 () Bool)

(declare-fun e!7138 () Bool)

(assert (=> start!2674 (=> (not res!4796) (not e!7138))))

(declare-datatypes () ((Num!3 (Zero!9) (Succ!7 (pred!13 Num!3)))))

(declare-datatypes () ((Wrapper!7 (Wrapper!8 (num!14 Num!3)))))

(declare-datatypes () ((tuple2!94 (tuple2!95 (_1!47 Wrapper!7) (_2!47 Wrapper!7)))))

(declare-fun x$1!267 () tuple2!94)

(declare-fun b!13019 () Bool)

(declare-fun zipWrap!0 (Wrapper!7 Wrapper!7) tuple2!94)

(declare-fun boolToNum!0 (Bool) Num!3)

(assert (=> start!2674 (= res!4796 (= x$1!267 (tuple2!95 (_1!47 (zipWrap!0 (Wrapper!8 (boolToNum!0 b!13019)) (Wrapper!8 (boolToNum!0 (not b!13019))))) (_2!47 (zipWrap!0 (Wrapper!8 (boolToNum!0 b!13019)) (Wrapper!8 (boolToNum!0 (not b!13019))))))))))

(assert (=> start!2674 e!7138))

(assert (=> start!2674 true))

(declare-fun b!13031 () Bool)

(declare-fun z2!2 () Wrapper!7)

(declare-fun z1!2 () Wrapper!7)

(assert (=> b!13031 (= e!7138 (and (= z1!2 (_1!47 x$1!267)) (= z2!2 (_2!47 x$1!267)) (not (= (num!14 z1!2) Zero!9)) (not (= (num!14 z2!2) Zero!9))))))

(assert (= (and start!2674 res!4796) b!13031))

(declare-fun m!16367 () Bool)

(assert (=> start!2674 m!16367))

(declare-fun m!16369 () Bool)

(assert (=> start!2674 m!16369))

(declare-fun m!16371 () Bool)

(assert (=> start!2674 m!16371))

(push 1)

(assert (not start!2674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10197 () Bool)

(assert (=> d!10197 (= (zipWrap!0 (Wrapper!8 (boolToNum!0 b!13019)) (Wrapper!8 (boolToNum!0 (not b!13019)))) (tuple2!95 (Wrapper!8 (boolToNum!0 b!13019)) (Wrapper!8 (boolToNum!0 (not b!13019)))))))

(assert (=> start!2674 d!10197))

(declare-fun d!10199 () Bool)

(assert (=> d!10199 (= (boolToNum!0 b!13019) (ite b!13019 Zero!9 (Succ!7 Zero!9)))))

(assert (=> start!2674 d!10199))

(declare-fun d!10201 () Bool)

(assert (=> d!10201 (= (boolToNum!0 (not b!13019)) (ite (not b!13019) Zero!9 (Succ!7 Zero!9)))))

(assert (=> start!2674 d!10201))

(push 1)

(check-sat)

(pop 1)

