; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4602 () Bool)

(assert start!4602)

(declare-fun b_free!2189 () Bool)

(declare-fun b_next!5305 () Bool)

(assert (=> start!4602 (= b_free!2189 (not b_next!5305))))

(declare-fun tp!7304 () Bool)

(declare-fun b_and!7941 () Bool)

(assert (=> start!4602 (= tp!7304 b_and!7941)))

(declare-fun f!2362 () Int)

(declare-fun lambda!4154 () Int)

(declare-fun b!35146 () Bool)

(declare-fun b_next!5307 () Bool)

(assert (=> start!4602 (= b_next!5305 (or (and b!35146 (= lambda!4154 f!2362)) b_next!5307))))

(declare-fun res!16269 () Bool)

(declare-fun e!17754 () Bool)

(assert (=> start!4602 (=> (not res!16269) (not e!17754))))

(declare-fun x!11399 () (_ BitVec 32))

(assert (=> start!4602 (= res!16269 (bvsge x!11399 #b00000000000000000000000000000000))))

(assert (=> start!4602 e!17754))

(assert (=> start!4602 tp!7304))

(assert (=> start!4602 true))

(declare-fun res!16270 () Bool)

(assert (=> b!35146 (=> (not res!16270) (not e!17754))))

(assert (=> b!35146 (= res!16270 (= f!2362 lambda!4154))))

(declare-fun b!35147 () Bool)

(declare-datatypes () ((List!397 (Nil!388) (Cons!387 (head!602 (_ BitVec 32)) (tail!626 List!397)))))

(declare-fun list!235 () List!397)

(declare-fun list!234 () List!397)

(declare-fun count!20 () (_ BitVec 32))

(assert (=> b!35147 (= e!17754 (and (= list!235 list!234) (= count!20 x!11399) (bvslt count!20 #b00000000000000000000000000000000)))))

(assert (= (and start!4602 res!16269) b!35146))

(assert (= (and b!35146 res!16270) b!35147))

(push 1)

(assert b_and!7941)

(assert (not b_next!5307))

(check-sat)

(pop 1)

