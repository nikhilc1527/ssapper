; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8338 () Bool)

(assert start!8338)

(declare-datatypes () ((IntPair!6 (IP!5 (fst!12 (_ BitVec 32)) (snd!12 (_ BitVec 32))))))

(declare-datatypes () ((IntPairList!5 (IPCons!4 (head!742 IntPair!6) (tail!768 IntPairList!5)) (IPNil!4))))

(declare-fun l!1208 () IntPairList!5)

(declare-fun x$1!789 () Int)

(assert (=> start!8338 (and (is-IPNil!4 l!1208) (= x$1!789 0) (< x$1!789 0))))

(assert (=> start!8338 true))

(push 1)

(check-sat)

(pop 1)

