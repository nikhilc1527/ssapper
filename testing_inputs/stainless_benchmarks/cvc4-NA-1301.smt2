; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9176 () Bool)

(assert start!9176)

(declare-datatypes () ((tuple2!360 (tuple2!361 (_1!215 (_ BitVec 32)) (_2!215 (_ BitVec 32))))))

(declare-fun t!47408 () tuple2!360)

(declare-fun res!29362 () tuple2!360)

(assert (=> start!9176 (and (bvsgt (_1!215 t!47408) #b00000000000000000000000000000000) (bvsgt (_2!215 t!47408) #b00000000000000000000000000000001) (= res!29362 t!47408) (or (bvsle (_1!215 res!29362) #b00000000000000000000000000000000) (bvsle (_2!215 res!29362) #b00000000000000000000000000000001)))))

(assert (=> start!9176 true))

(push 1)

(check-sat)

(pop 1)

