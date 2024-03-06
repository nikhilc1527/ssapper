; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10024 () Bool)

(assert start!10024)

(declare-fun res!35406 () Bool)

(declare-fun e!39193 () Bool)

(assert (=> start!10024 (=> (not res!35406) (not e!39193))))

(declare-datatypes () ((List!617 (Nil!575) (Cons!574 (head!984 Int) (tail!1005 List!617)))))

(declare-fun list!876 () List!617)

(declare-fun res!34948 () Bool)

(declare-datatypes () ((tuple2!384 (tuple2!385 (_1!227 Int) (_2!227 Int)))))

(declare-fun p!678 () tuple2!384)

(assert (=> start!10024 (= res!35406 (and (>= (_1!227 p!678) 0) (>= (_2!227 p!678) 0) (not (is-Cons!574 list!876)) (= res!34948 (and (= (_1!227 p!678) 0) (= (_2!227 p!678) 0)))))))

(assert (=> start!10024 e!39193))

(assert (=> start!10024 true))

(declare-fun b!72510 () Bool)

(declare-fun balanced_withFailure!0 (List!617 Int Bool) Bool)

(assert (=> b!72510 (= e!39193 (not (= res!34948 (balanced_withFailure!0 list!876 (- (_1!227 p!678) (_2!227 p!678)) (> (_2!227 p!678) 0)))))))

(assert (= (and start!10024 res!35406) b!72510))

(declare-fun m!72472 () Bool)

(assert (=> b!72510 m!72472))

(push 1)

(assert (not b!72510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54629 () Bool)

(declare-fun lt!15372 () Bool)

(declare-fun balanced_nonEarly!0 (List!617 Int) Bool)

(assert (=> d!54629 (= lt!15372 (balanced_nonEarly!0 list!876 (ite (> (_2!227 p!678) 0) (- 1) (- (_1!227 p!678) (_2!227 p!678)))))))

(declare-fun e!39196 () Bool)

(assert (=> d!54629 (= lt!15372 e!39196)))

(declare-fun c!17455 () Bool)

(assert (=> d!54629 (= c!17455 (is-Cons!574 list!876))))

(assert (=> d!54629 (or (>= (- (_1!227 p!678) (_2!227 p!678)) 0) (> (_2!227 p!678) 0))))

(assert (=> d!54629 (= (balanced_withFailure!0 list!876 (- (_1!227 p!678) (_2!227 p!678)) (> (_2!227 p!678) 0)) lt!15372)))

(declare-fun b!72515 () Bool)

(declare-fun lt!15373 () Int)

(assert (=> b!72515 (= e!39196 (balanced_withFailure!0 (tail!1005 list!876) lt!15373 (or (> (_2!227 p!678) 0) (< lt!15373 0))))))

(assert (=> b!72515 (= lt!15373 (ite (= (head!984 list!876) 1) (+ (- (_1!227 p!678) (_2!227 p!678)) 1) (ite (= (head!984 list!876) 2) (- (- (_1!227 p!678) (_2!227 p!678)) 1) (- (_1!227 p!678) (_2!227 p!678)))))))

(declare-fun b!72516 () Bool)

(assert (=> b!72516 (= e!39196 (and (not (> (_2!227 p!678) 0)) (= (- (_1!227 p!678) (_2!227 p!678)) 0)))))

(assert (= (and d!54629 c!17455) b!72515))

(assert (= (and d!54629 (not c!17455)) b!72516))

(declare-fun m!72474 () Bool)

(assert (=> d!54629 m!72474))

(declare-fun m!72476 () Bool)

(assert (=> b!72515 m!72476))

(assert (=> b!72510 d!54629))

(push 1)

(assert (not d!54629))

(assert (not b!72515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

