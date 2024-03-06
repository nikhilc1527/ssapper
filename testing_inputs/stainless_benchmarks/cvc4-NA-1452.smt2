; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9986 () Bool)

(assert start!9986)

(declare-fun b_free!7307 () Bool)

(declare-fun b_next!39075 () Bool)

(assert (=> start!9986 (= b_free!7307 (not b_next!39075))))

(declare-fun tp!16861 () Bool)

(declare-fun b_and!58721 () Bool)

(assert (=> start!9986 (= tp!16861 b_and!58721)))

(declare-fun b!72430 () Bool)

(declare-fun lambda!9171 () Int)

(declare-fun b_next!39077 () Bool)

(declare-fun f!4353 () Int)

(assert (=> start!9986 (= b_next!39075 (or (and b!72430 (= lambda!9171 f!4353)) b_next!39077))))

(declare-fun res!35354 () Bool)

(declare-fun e!39152 () Bool)

(assert (=> start!9986 (=> (not res!35354) (not e!39152))))

(declare-datatypes () ((tuple2!372 (tuple2!373 (_1!221 Int) (_2!221 Int)))))

(declare-fun p!664 () tuple2!372)

(assert (=> start!9986 (= res!35354 (and (>= (_1!221 p!664) 0) (>= (_2!221 p!664) 0)))))

(assert (=> start!9986 e!39152))

(assert (=> start!9986 true))

(assert (=> start!9986 tp!16861))

(declare-fun res!35356 () Bool)

(assert (=> b!72430 (=> (not res!35356) (not e!39152))))

(assert (=> b!72430 (= res!35356 (= f!4353 lambda!9171))))

(declare-fun b!72431 () Bool)

(declare-fun res!35355 () Bool)

(assert (=> b!72431 (=> (not res!35355) (not e!39152))))

(declare-datatypes () ((List!611 (Nil!569) (Cons!568 (head!978 Int) (tail!999 List!611)))))

(declare-fun list!866 () List!611)

(declare-datatypes () ((ProofOps!380 (ProofOps!381 (prop!501 Bool)))))

(declare-fun thiss!9454 () ProofOps!380)

(declare-fun foldLeft!5 (List!611 tuple2!372 Int) tuple2!372)

(declare-fun balanced_withReduce!0 (List!611 tuple2!372) Bool)

(assert (=> b!72431 (= res!35355 (= thiss!9454 (ProofOps!381 (= (= (foldLeft!5 list!866 p!664 f!4353) (tuple2!373 0 0)) (balanced_withReduce!0 list!866 p!664)))))))

(declare-fun b!72432 () Bool)

(assert (=> b!72432 (= e!39152 false)))

(assert (= (and start!9986 res!35354) b!72430))

(assert (= (and b!72430 res!35356) b!72431))

(assert (= (and b!72431 res!35355) b!72432))

(declare-fun m!72374 () Bool)

(assert (=> b!72431 m!72374))

(declare-fun m!72376 () Bool)

(assert (=> b!72431 m!72376))

(push 1)

(assert (not b!72431))

(assert b_and!58721)

(assert (not b_next!39077))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58721)

(assert (not b_next!39077))

(check-sat)

(pop 1)

