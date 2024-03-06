; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8198 () Bool)

(assert start!8198)

(declare-datatypes () ((T!3708 (T!3709 (val!166 Int)))))

(declare-datatypes () ((List!468 (Cons!444 (h!681 T!3708) (t!47121 List!468)) (Nil!445))))

(declare-fun l1!293 () List!468)

(declare-fun res!26849 () List!468)

(declare-fun l2!287 () List!468)

(assert (=> start!8198 (and (not (is-Cons!444 l1!293)) (= res!26849 l2!287) (not (= res!26849 l1!293)) (= l2!287 Nil!445))))

(declare-fun e!30992 () Bool)

(assert (=> start!8198 e!30992))

(declare-fun e!30993 () Bool)

(assert (=> start!8198 e!30993))

(declare-fun e!30991 () Bool)

(assert (=> start!8198 e!30991))

(declare-fun b!58258 () Bool)

(declare-fun tp_is_empty!327 () Bool)

(declare-fun tp!16332 () Bool)

(assert (=> b!58258 (= e!30992 (and tp_is_empty!327 tp!16332))))

(declare-fun b!58259 () Bool)

(declare-fun tp!16333 () Bool)

(assert (=> b!58259 (= e!30993 (and tp_is_empty!327 tp!16333))))

(declare-fun b!58260 () Bool)

(declare-fun tp!16331 () Bool)

(assert (=> b!58260 (= e!30991 (and tp_is_empty!327 tp!16331))))

(assert (= (and start!8198 (is-Cons!444 l1!293)) b!58258))

(assert (= (and start!8198 (is-Cons!444 res!26849)) b!58259))

(assert (= (and start!8198 (is-Cons!444 l2!287)) b!58260))

(push 1)

(assert (not b!58258))

(assert (not b!58260))

(assert (not b!58259))

(assert tp_is_empty!327)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

