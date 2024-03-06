; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4606 () Bool)

(assert start!4606)

(declare-fun b_free!2193 () Bool)

(declare-fun b_next!5313 () Bool)

(assert (=> start!4606 (= b_free!2193 (not b_next!5313))))

(declare-fun tp!7310 () Bool)

(declare-fun b_and!7945 () Bool)

(assert (=> start!4606 (= tp!7310 b_and!7945)))

(declare-fun f!2362 () Int)

(declare-fun b!35165 () Bool)

(declare-fun b_next!5315 () Bool)

(declare-fun lambda!4160 () Int)

(assert (=> start!4606 (= b_next!5313 (or (and b!35165 (= lambda!4160 f!2362)) b_next!5315))))

(declare-fun res!16288 () Bool)

(declare-fun e!17760 () Bool)

(assert (=> b!35165 (=> (not res!16288) (not e!17760))))

(assert (=> b!35165 (= res!16288 (= f!2362 lambda!4160))))

(declare-fun res!16291 () Bool)

(assert (=> start!4606 (=> (not res!16291) (not e!17760))))

(declare-fun x!11399 () (_ BitVec 32))

(assert (=> start!4606 (= res!16291 (bvsge x!11399 #b00000000000000000000000000000000))))

(assert (=> start!4606 e!17760))

(assert (=> start!4606 true))

(assert (=> start!4606 tp!7310))

(declare-fun b!35167 () Bool)

(declare-fun res!16289 () Bool)

(assert (=> b!35167 (=> (not res!16289) (not e!17760))))

(declare-datatypes () ((List!399 (Nil!390) (Cons!389 (head!604 (_ BitVec 32)) (tail!628 List!399)))))

(declare-fun l2!257 () List!399)

(declare-fun list!234 () List!399)

(declare-fun drop!1 (List!399 (_ BitVec 32)) List!399)

(assert (=> b!35167 (= res!16289 (= l2!257 (drop!1 list!234 x!11399)))))

(declare-fun b!35166 () Bool)

(declare-fun res!16290 () Bool)

(assert (=> b!35166 (=> (not res!16290) (not e!17760))))

(declare-fun l1!263 () List!399)

(declare-fun take!3 (List!399 (_ BitVec 32)) List!399)

(assert (=> b!35166 (= res!16290 (= l1!263 (take!3 list!234 x!11399)))))

(declare-fun list!239 () List!399)

(declare-fun x!11400 () (_ BitVec 32))

(declare-fun b!35168 () Bool)

(assert (=> b!35168 (= e!17760 (and (= list!239 list!234) (= x!11400 x!11399) (bvslt x!11400 #b00000000000000000000000000000000)))))

(assert (= (and start!4606 res!16291) b!35165))

(assert (= (and b!35165 res!16288) b!35166))

(assert (= (and b!35166 res!16290) b!35167))

(assert (= (and b!35167 res!16289) b!35168))

(declare-fun m!37957 () Bool)

(assert (=> b!35167 m!37957))

(declare-fun m!37959 () Bool)

(assert (=> b!35166 m!37959))

(push 1)

(assert (not b!35166))

(assert (not b!35167))

(assert b_and!7945)

(assert (not b_next!5315))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7945)

(assert (not b_next!5315))

(check-sat)

(pop 1)

