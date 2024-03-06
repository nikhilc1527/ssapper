; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8340 () Bool)

(assert start!8340)

(declare-fun res!27186 () Bool)

(declare-fun e!31208 () Bool)

(assert (=> start!8340 (=> (not res!27186) (not e!31208))))

(declare-datatypes () ((IntPair!7 (IP!6 (fst!13 (_ BitVec 32)) (snd!13 (_ BitVec 32))))))

(declare-datatypes () ((IntPairList!6 (IPCons!5 (head!743 IntPair!7) (tail!769 IntPairList!6)) (IPNil!5))))

(declare-fun l!1208 () IntPairList!6)

(assert (=> start!8340 (= res!27186 (not (is-IPNil!5 l!1208)))))

(assert (=> start!8340 e!31208))

(assert (=> start!8340 true))

(declare-fun b!58643 () Bool)

(declare-fun res!27187 () Bool)

(assert (=> b!58643 (=> (not res!27187) (not e!31208))))

(declare-fun x$1!790 () Int)

(declare-fun iplSize!0 (IntPairList!6) Int)

(assert (=> b!58643 (= res!27187 (= x$1!790 (+ 1 (iplSize!0 (tail!769 l!1208)))))))

(declare-fun b!58644 () Bool)

(assert (=> b!58644 (= e!31208 (< x$1!790 0))))

(assert (= (and start!8340 res!27186) b!58643))

(assert (= (and b!58643 res!27187) b!58644))

(declare-fun m!63194 () Bool)

(assert (=> b!58643 m!63194))

(push 1)

(assert (not b!58643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50690 () Bool)

(declare-fun lt!10741 () Int)

(assert (=> d!50690 (>= lt!10741 0)))

(declare-fun e!31211 () Int)

(assert (=> d!50690 (= lt!10741 e!31211)))

(declare-fun c!12578 () Bool)

(assert (=> d!50690 (= c!12578 (is-IPNil!5 (tail!769 l!1208)))))

(assert (=> d!50690 (= (iplSize!0 (tail!769 l!1208)) lt!10741)))

(declare-fun b!58649 () Bool)

(assert (=> b!58649 (= e!31211 0)))

(declare-fun b!58650 () Bool)

(assert (=> b!58650 (= e!31211 (+ 1 (iplSize!0 (tail!769 (tail!769 l!1208)))))))

(assert (= (and d!50690 c!12578) b!58649))

(assert (= (and d!50690 (not c!12578)) b!58650))

(declare-fun m!63196 () Bool)

(assert (=> b!58650 m!63196))

(assert (=> b!58643 d!50690))

(push 1)

(assert (not b!58650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

