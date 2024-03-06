; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10170 () Bool)

(assert start!10170)

(declare-fun res!35810 () Bool)

(declare-fun e!39523 () Bool)

(assert (=> start!10170 (=> (not res!35810) (not e!39523))))

(declare-fun e!39522 () Bool)

(assert (=> start!10170 (= res!35810 e!39522)))

(declare-fun res!35811 () Bool)

(assert (=> start!10170 (=> res!35811 e!39522)))

(declare-fun i!574 () Int)

(assert (=> start!10170 (= res!35811 (= i!574 0))))

(assert (=> start!10170 e!39523))

(assert (=> start!10170 true))

(declare-fun b!73126 () Bool)

(declare-fun e!39521 () Bool)

(assert (=> b!73126 (= e!39522 e!39521)))

(declare-fun res!35812 () Bool)

(assert (=> b!73126 (=> (not res!35812) (not e!39521))))

(assert (=> b!73126 (= res!35812 (> i!574 0))))

(declare-fun b!73127 () Bool)

(declare-fun f!65 (Int) Bool)

(assert (=> b!73127 (= e!39521 (f!65 (- i!574 1)))))

(declare-fun b!73128 () Bool)

(declare-fun i!577 () Int)

(declare-fun res!35803 () Int)

(assert (=> b!73128 (= e!39523 (and (= res!35803 (+ i!574 1)) (= i!577 (+ i!574 1)) (<= i!577 0)))))

(assert (= (and start!10170 (not res!35811)) b!73126))

(assert (= (and b!73126 res!35812) b!73127))

(assert (= (and start!10170 res!35810) b!73128))

(declare-fun m!72764 () Bool)

(assert (=> b!73127 m!72764))

(push 1)

(assert (not b!73127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

