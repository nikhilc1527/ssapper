; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4604 () Bool)

(assert start!4604)

(declare-fun b_free!2191 () Bool)

(declare-fun b_next!5309 () Bool)

(assert (=> start!4604 (= b_free!2191 (not b_next!5309))))

(declare-fun tp!7307 () Bool)

(declare-fun b_and!7943 () Bool)

(assert (=> start!4604 (= tp!7307 b_and!7943)))

(declare-fun b!35154 () Bool)

(declare-fun f!2362 () Int)

(declare-fun b_next!5311 () Bool)

(declare-fun lambda!4157 () Int)

(assert (=> start!4604 (= b_next!5309 (or (and b!35154 (= lambda!4157 f!2362)) b_next!5311))))

(declare-fun res!16279 () Bool)

(declare-fun e!17757 () Bool)

(assert (=> start!4604 (=> (not res!16279) (not e!17757))))

(declare-fun x!11399 () (_ BitVec 32))

(assert (=> start!4604 (= res!16279 (bvsge x!11399 #b00000000000000000000000000000000))))

(assert (=> start!4604 e!17757))

(assert (=> start!4604 true))

(assert (=> start!4604 tp!7307))

(declare-fun res!16277 () Bool)

(assert (=> b!35154 (=> (not res!16277) (not e!17757))))

(assert (=> b!35154 (= res!16277 (= f!2362 lambda!4157))))

(declare-fun b!35155 () Bool)

(declare-fun res!16278 () Bool)

(assert (=> b!35155 (=> (not res!16278) (not e!17757))))

(declare-datatypes () ((List!398 (Nil!389) (Cons!388 (head!603 (_ BitVec 32)) (tail!627 List!398)))))

(declare-fun l1!263 () List!398)

(declare-fun list!234 () List!398)

(declare-fun take!3 (List!398 (_ BitVec 32)) List!398)

(assert (=> b!35155 (= res!16278 (= l1!263 (take!3 list!234 x!11399)))))

(declare-fun b!35156 () Bool)

(declare-fun list!237 () List!398)

(declare-fun count!22 () (_ BitVec 32))

(assert (=> b!35156 (= e!17757 (and (= list!237 list!234) (= count!22 x!11399) (bvslt count!22 #b00000000000000000000000000000000)))))

(assert (= (and start!4604 res!16279) b!35154))

(assert (= (and b!35154 res!16277) b!35155))

(assert (= (and b!35155 res!16278) b!35156))

(declare-fun m!37955 () Bool)

(assert (=> b!35155 m!37955))

(push 1)

(assert (not b!35155))

(assert b_and!7943)

(assert (not b_next!5311))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7943)

(assert (not b_next!5311))

(check-sat)

(pop 1)

