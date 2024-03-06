; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15578 () Bool)

(assert start!15578)

(declare-fun res!49929 () Bool)

(declare-fun e!52413 () Bool)

(assert (=> start!15578 (=> (not res!49929) (not e!52413))))

(declare-fun e!52415 () Bool)

(assert (=> start!15578 (= res!49929 e!52415)))

(declare-fun res!49931 () Bool)

(assert (=> start!15578 (=> res!49931 e!52415)))

(declare-fun i!678 () Int)

(assert (=> start!15578 (= res!49931 (= i!678 0))))

(assert (=> start!15578 e!52413))

(assert (=> start!15578 true))

(declare-fun b!96091 () Bool)

(declare-fun e!52414 () Bool)

(assert (=> b!96091 (= e!52415 e!52414)))

(declare-fun res!49930 () Bool)

(assert (=> b!96091 (=> (not res!49930) (not e!52414))))

(assert (=> b!96091 (= res!49930 (> i!678 0))))

(declare-fun b!96092 () Bool)

(declare-fun f!280 (Int) Bool)

(assert (=> b!96092 (= e!52414 (f!280 (- i!678 1)))))

(declare-fun res!49922 () Int)

(declare-fun b!96093 () Bool)

(declare-fun i!681 () Int)

(assert (=> b!96093 (= e!52413 (and (= res!49922 (+ i!678 1)) (= i!681 (- i!678 1)) (< i!681 0)))))

(assert (= (and start!15578 (not res!49931)) b!96091))

(assert (= (and b!96091 res!49930) b!96092))

(assert (= (and start!15578 res!49929) b!96093))

(declare-fun m!91767 () Bool)

(assert (=> b!96092 m!91767))

(push 1)

(assert (not b!96092))

(check-sat)

(get-model)

(pop 1)

