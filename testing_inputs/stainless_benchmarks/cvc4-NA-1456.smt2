; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10012 () Bool)

(assert start!10012)

(declare-fun failed!6 () Bool)

(declare-datatypes () ((List!615 (Nil!573) (Cons!572 (head!982 Int) (tail!1003 List!615)))))

(declare-fun list!881 () List!615)

(declare-fun counter!45 () Int)

(declare-fun list!876 () List!615)

(declare-fun res!34948 () Bool)

(declare-datatypes () ((tuple2!380 (tuple2!381 (_1!225 Int) (_2!225 Int)))))

(declare-fun p!678 () tuple2!380)

(assert (=> start!10012 (and (>= (_1!225 p!678) 0) (>= (_2!225 p!678) 0) (not (is-Cons!572 list!876)) (= res!34948 (and (= (_1!225 p!678) 0) (= (_2!225 p!678) 0))) (= list!881 list!876) (= counter!45 (- (_1!225 p!678) (_2!225 p!678))) (= failed!6 (> (_2!225 p!678) 0)) (< counter!45 0) (not failed!6))))

(assert (=> start!10012 true))

(push 1)

(check-sat)

(pop 1)

