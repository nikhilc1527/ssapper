; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4608 () Bool)

(assert start!4608)

(declare-fun b_free!2195 () Bool)

(declare-fun b_next!5317 () Bool)

(assert (=> start!4608 (= b_free!2195 (not b_next!5317))))

(declare-fun tp!7313 () Bool)

(declare-fun b_and!7947 () Bool)

(assert (=> start!4608 (= tp!7313 b_and!7947)))

(declare-fun f!2362 () Int)

(declare-fun lambda!4163 () Int)

(declare-fun b!35181 () Bool)

(declare-fun b_next!5319 () Bool)

(assert (=> start!4608 (= b_next!5317 (or (and b!35181 (= lambda!4163 f!2362)) b_next!5319))))

(declare-fun b!35179 () Bool)

(declare-fun res!16303 () Bool)

(declare-fun e!17763 () Bool)

(assert (=> b!35179 (=> (not res!16303) (not e!17763))))

(declare-datatypes () ((ProofOps!296 (ProofOps!297 (prop!319 Bool)))))

(declare-fun thiss!4108 () ProofOps!296)

(declare-fun x!11399 () (_ BitVec 32))

(declare-datatypes () ((List!400 (Nil!391) (Cons!390 (head!605 (_ BitVec 32)) (tail!629 List!400)))))

(declare-fun list!234 () List!400)

(declare-fun lemma_split!0 (List!400 (_ BitVec 32)) Bool)

(assert (=> b!35179 (= res!16303 (= thiss!4108 (ProofOps!297 (lemma_split!0 list!234 x!11399))))))

(declare-fun list!241 () List!400)

(declare-fun b!35180 () Bool)

(declare-fun x!11403 () (_ BitVec 32))

(assert (=> b!35180 (= e!17763 (and (is-Cons!390 list!234) (bvsgt x!11399 #b00000000000000000000000000000000) (= list!241 (tail!629 list!234)) (= x!11403 (bvsub x!11399 #b00000000000000000000000000000001)) (bvslt x!11403 #b00000000000000000000000000000000)))))

(declare-fun res!16302 () Bool)

(assert (=> start!4608 (=> (not res!16302) (not e!17763))))

(assert (=> start!4608 (= res!16302 (bvsge x!11399 #b00000000000000000000000000000000))))

(assert (=> start!4608 e!17763))

(assert (=> start!4608 true))

(assert (=> start!4608 tp!7313))

(declare-fun res!16304 () Bool)

(assert (=> b!35181 (=> (not res!16304) (not e!17763))))

(assert (=> b!35181 (= res!16304 (= f!2362 lambda!4163))))

(declare-fun b!35182 () Bool)

(declare-fun res!16305 () Bool)

(assert (=> b!35182 (=> (not res!16305) (not e!17763))))

(declare-fun l2!257 () List!400)

(declare-fun drop!1 (List!400 (_ BitVec 32)) List!400)

(assert (=> b!35182 (= res!16305 (= l2!257 (drop!1 list!234 x!11399)))))

(declare-fun b!35183 () Bool)

(declare-fun res!16306 () Bool)

(assert (=> b!35183 (=> (not res!16306) (not e!17763))))

(declare-fun l1!263 () List!400)

(declare-fun take!3 (List!400 (_ BitVec 32)) List!400)

(assert (=> b!35183 (= res!16306 (= l1!263 (take!3 list!234 x!11399)))))

(assert (= (and start!4608 res!16302) b!35181))

(assert (= (and b!35181 res!16304) b!35183))

(assert (= (and b!35183 res!16306) b!35182))

(assert (= (and b!35182 res!16305) b!35179))

(assert (= (and b!35179 res!16303) b!35180))

(declare-fun m!37961 () Bool)

(assert (=> b!35179 m!37961))

(declare-fun m!37963 () Bool)

(assert (=> b!35182 m!37963))

(declare-fun m!37965 () Bool)

(assert (=> b!35183 m!37965))

(push 1)

(assert (not b!35182))

(assert (not b_next!5319))

(assert b_and!7947)

(assert (not b!35183))

(assert (not b!35179))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7947)

(assert (not b_next!5319))

(check-sat)

(pop 1)

