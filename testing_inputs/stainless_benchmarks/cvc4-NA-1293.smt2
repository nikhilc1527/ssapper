; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9160 () Bool)

(assert start!9160)

(declare-datatypes () ((A!2864 (B!543 (i!491 (_ BitVec 32))) (C!73 (a!691 A!2864)))))

(declare-datatypes () ((tuple2!336 (tuple2!337 (_1!196 A!2864) (_2!196 A!2864)))))

(declare-fun t!47387 () tuple2!336)

(declare-fun x$1!869 () (_ BitVec 32))

(assert (=> start!9160 (and (= t!47387 (tuple2!337 (B!543 #b00000000000000000000000000000010) (C!73 (B!543 #b00000000000000000000000000000011)))) (= x$1!869 (i!491 (_1!196 t!47387))) (not (= x$1!869 #b00000000000000000000000000000010)))))

(assert (=> start!9160 true))

(push 1)

(check-sat)

(pop 1)

