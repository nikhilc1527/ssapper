; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10062 () Bool)

(assert start!10062)

(declare-fun res!35471 () Bool)

(declare-fun e!39279 () Bool)

(assert (=> start!10062 (=> (not res!35471) (not e!39279))))

(declare-fun res!34927 () Bool)

(declare-fun counter!18 () Int)

(declare-datatypes () ((List!625 (Nil!583) (Cons!582 (head!992 Int) (tail!1013 List!625)))))

(declare-fun list!792 () List!625)

(assert (=> start!10062 (= res!35471 (and (not (is-Cons!582 list!792)) (= res!34927 (= counter!18 0))))))

(assert (=> start!10062 e!39279))

(assert (=> start!10062 true))

(declare-fun b!72671 () Bool)

(declare-fun balanced!0 (List!625 Int) Bool)

(assert (=> b!72671 (= e!39279 (not (= res!34927 (balanced!0 list!792 counter!18))))))

(assert (= (and start!10062 res!35471) b!72671))

(declare-fun m!72560 () Bool)

(assert (=> b!72671 m!72560))

(push 1)

(assert (not b!72671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54659 () Bool)

(declare-fun res!35474 () Bool)

(declare-fun e!39284 () Bool)

(assert (=> d!54659 (=> (not res!35474) (not e!39284))))

(assert (=> d!54659 (= res!35474 (not (< counter!18 0)))))

(assert (=> d!54659 (= (balanced!0 list!792 counter!18) e!39284)))

(declare-fun b!72678 () Bool)

(declare-fun e!39285 () Bool)

(assert (=> b!72678 (= e!39284 e!39285)))

(declare-fun c!17523 () Bool)

(assert (=> b!72678 (= c!17523 (is-Cons!582 list!792))))

(declare-fun b!72679 () Bool)

(assert (=> b!72679 (= e!39285 (balanced!0 (tail!1013 list!792) (ite (= (head!992 list!792) 1) (+ counter!18 1) (ite (= (head!992 list!792) 2) (- counter!18 1) counter!18))))))

(declare-fun b!72680 () Bool)

(assert (=> b!72680 (= e!39285 (= counter!18 0))))

(assert (= (and d!54659 res!35474) b!72678))

(assert (= (and b!72678 c!17523) b!72679))

(assert (= (and b!72678 (not c!17523)) b!72680))

(declare-fun m!72562 () Bool)

(assert (=> b!72679 m!72562))

(assert (=> b!72671 d!54659))

(push 1)

(assert (not b!72679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

