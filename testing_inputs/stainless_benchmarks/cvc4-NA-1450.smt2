; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9974 () Bool)

(assert start!9974)

(declare-fun b_free!7303 () Bool)

(declare-fun b_next!39067 () Bool)

(assert (=> start!9974 (= b_free!7303 (not b_next!39067))))

(declare-fun tp!16855 () Bool)

(declare-fun b_and!58713 () Bool)

(assert (=> start!9974 (= tp!16855 b_and!58713)))

(declare-fun lambda!9165 () Int)

(declare-fun f!4353 () Int)

(declare-fun b_next!39069 () Bool)

(declare-fun b!72395 () Bool)

(assert (=> start!9974 (= b_next!39067 (or (and b!72395 (= lambda!9165 f!4353)) b_next!39069))))

(declare-fun res!35330 () Bool)

(declare-fun e!39140 () Bool)

(assert (=> start!9974 (=> (not res!35330) (not e!39140))))

(declare-datatypes () ((tuple2!368 (tuple2!369 (_1!219 Int) (_2!219 Int)))))

(declare-fun p!664 () tuple2!368)

(assert (=> start!9974 (= res!35330 (and (>= (_1!219 p!664) 0) (>= (_2!219 p!664) 0)))))

(assert (=> start!9974 e!39140))

(assert (=> start!9974 true))

(assert (=> start!9974 tp!16855))

(declare-fun res!35331 () Bool)

(assert (=> b!72395 (=> (not res!35331) (not e!39140))))

(assert (=> b!72395 (= res!35331 (= f!4353 lambda!9165))))

(declare-fun p!665 () tuple2!368)

(declare-datatypes () ((List!609 (Nil!567) (Cons!566 (head!976 Int) (tail!997 List!609)))))

(declare-fun list!869 () List!609)

(declare-fun list!866 () List!609)

(declare-fun b!72396 () Bool)

(assert (=> b!72396 (= e!39140 (and (= list!869 list!866) (= p!665 p!664) (or (< (_1!219 p!665) 0) (< (_2!219 p!665) 0))))))

(assert (= (and start!9974 res!35330) b!72395))

(assert (= (and b!72395 res!35331) b!72396))

(push 1)

(assert b_and!58713)

(assert (not b_next!39069))

(check-sat)

(pop 1)

