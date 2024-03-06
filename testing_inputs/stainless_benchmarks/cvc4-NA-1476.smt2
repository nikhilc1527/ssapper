; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10104 () Bool)

(assert start!10104)

(declare-fun res!35605 () Bool)

(declare-fun e!39402 () Bool)

(assert (=> start!10104 (=> (not res!35605) (not e!39402))))

(declare-datatypes () ((A!3274 (A!3275 (val!185 Int)))))

(declare-datatypes () ((List!628 (Cons!590 (h!843 A!3274) (t!47531 List!628)) (Nil!592))))

(declare-fun list!948 () List!628)

(assert (=> start!10104 (= res!35605 (not (is-Nil!592 list!948)))))

(assert (=> start!10104 e!39402))

(declare-fun e!39403 () Bool)

(assert (=> start!10104 e!39403))

(assert (=> start!10104 true))

(declare-fun b!72912 () Bool)

(declare-fun res!35606 () Bool)

(assert (=> b!72912 (=> (not res!35606) (not e!39402))))

(declare-fun res!35599 () Int)

(declare-fun sizeOf!2 (List!628) Int)

(assert (=> b!72912 (= res!35606 (= res!35599 (+ 1 (sizeOf!2 (t!47531 list!948)))))))

(declare-fun b!72913 () Bool)

(assert (=> b!72913 (= e!39402 false)))

(declare-fun b!72914 () Bool)

(declare-fun tp_is_empty!365 () Bool)

(declare-fun tp!16885 () Bool)

(assert (=> b!72914 (= e!39403 (and tp_is_empty!365 tp!16885))))

(assert (= (and start!10104 res!35605) b!72912))

(assert (= (and b!72912 res!35606) b!72913))

(assert (= (and start!10104 (is-Cons!590 list!948)) b!72914))

(declare-fun m!72668 () Bool)

(assert (=> b!72912 m!72668))

(push 1)

(assert (not b!72912))

(assert (not b!72914))

(assert tp_is_empty!365)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

