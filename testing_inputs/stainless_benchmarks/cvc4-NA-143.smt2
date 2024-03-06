; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!832 () Bool)

(assert start!832)

(declare-fun b_free!65 () Bool)

(declare-fun b_next!69 () Bool)

(assert (=> start!832 (= b_free!65 (not b_next!69))))

(declare-fun tp!220 () Bool)

(declare-fun b_and!955 () Bool)

(assert (=> start!832 (= tp!220 b_and!955)))

(declare-fun b_next!71 () Bool)

(declare-fun b!5753 () Bool)

(declare-fun f!653 () Int)

(declare-fun lambda!93 () Int)

(assert (=> start!832 (= b_next!69 (or (and b!5753 (= lambda!93 f!653)) b_next!71))))

(declare-fun res!1534 () Bool)

(declare-fun e!3347 () Bool)

(assert (=> start!832 (=> (not res!1534) (not e!3347))))

(declare-datatypes () ((ProofOps!10 (ProofOps!11 (prop!106 Bool)))))

(declare-fun thiss!1009 () ProofOps!10)

(declare-datatypes () ((Parenthesis!5 (CloseParenthesis!4) (OpenParenthesis!4))))

(declare-datatypes () ((Tree!15 (Branch!6 (left!244 Tree!15) (right!247 Tree!15)) (Leaf!88 (value!1257 Parenthesis!5)))))

(declare-fun tree!30 () Tree!15)

(declare-datatypes () ((List!99 (Nil!97) (Cons!96 (head!314 Parenthesis!5) (tail!326 List!99)))))

(declare-fun isMatchedHybid!0 (List!99) Bool)

(declare-fun toList!17 (Tree!15) List!99)

(declare-fun isMatchedParallel!0 (Tree!15) Bool)

(assert (=> start!832 (= res!1534 (= thiss!1009 (ProofOps!11 (= (isMatchedHybid!0 (toList!17 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!832 e!3347))

(assert (=> start!832 true))

(assert (=> start!832 tp!220))

(declare-fun b!5752 () Bool)

(declare-fun res!1533 () Bool)

(assert (=> b!5752 (=> (not res!1533) (not e!3347))))

(declare-datatypes () ((Balance!7 (Balance!8 (extraOpen!44 Int) (extraClose!44 Int)))))

(declare-datatypes () ((List!100 (Nil!98) (Cons!97 (head!315 Balance!7) (tail!327 List!100)))))

(declare-fun thiss!1016 () List!100)

(declare-fun lambda!92 () Int)

(declare-fun map!114 (List!99 Int) List!100)

(assert (=> b!5752 (= res!1533 (= thiss!1016 (map!114 (toList!17 tree!30) lambda!92)))))

(declare-fun res!1535 () Bool)

(assert (=> b!5753 (=> (not res!1535) (not e!3347))))

(assert (=> b!5753 (= res!1535 (= f!653 lambda!93))))

(declare-fun b!5754 () Bool)

(declare-fun isEmpty!96 (List!100) Bool)

(assert (=> b!5754 (= e!3347 (isEmpty!96 thiss!1016))))

(assert (= (and start!832 res!1534) b!5752))

(assert (= (and b!5752 res!1533) b!5753))

(assert (= (and b!5753 res!1535) b!5754))

(declare-fun m!8203 () Bool)

(assert (=> start!832 m!8203))

(assert (=> start!832 m!8203))

(declare-fun m!8205 () Bool)

(assert (=> start!832 m!8205))

(declare-fun m!8207 () Bool)

(assert (=> start!832 m!8207))

(assert (=> b!5752 m!8203))

(assert (=> b!5752 m!8203))

(declare-fun m!8209 () Bool)

(assert (=> b!5752 m!8209))

(declare-fun m!8211 () Bool)

(assert (=> b!5754 m!8211))

(push 1)

(assert (not b_next!71))

(assert b_and!955)

(assert (not b!5754))

(assert (not start!832))

(assert (not b!5752))

(check-sat)

(pop 1)

(push 1)

(assert b_and!955)

(assert (not b_next!71))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4571 () Bool)

(assert (=> d!4571 (= (isEmpty!96 thiss!1016) (is-Nil!98 thiss!1016))))

(assert (=> b!5754 d!4571))

(declare-fun bs!1093 () Bool)

(declare-fun d!4573 () Bool)

(assert (= bs!1093 (and d!4573 b!5752)))

(declare-fun lambda!98 () Int)

(assert (=> bs!1093 (= lambda!98 lambda!92)))

(declare-fun bs!1094 () Bool)

(assert (= bs!1094 (and d!4573 b!5753)))

(declare-fun lambda!99 () Int)

(assert (=> bs!1094 (= lambda!99 lambda!93)))

(declare-fun b_next!73 () Bool)

(assert (=> start!832 (= b_next!71 (or (and d!4573 (= lambda!99 f!653)) b_next!73))))

(declare-fun isBalanced!0 (Balance!7) Bool)

(declare-fun foldRight1!2 (List!100 Int) Balance!7)

(assert (=> d!4573 (= (isMatchedHybid!0 (toList!17 tree!30)) (isBalanced!0 (foldRight1!2 (map!114 (toList!17 tree!30) lambda!98) lambda!99)))))

(declare-fun bs!1095 () Bool)

(assert (= bs!1095 d!4573))

(assert (=> bs!1095 m!8203))

(declare-fun m!8213 () Bool)

(assert (=> bs!1095 m!8213))

(assert (=> bs!1095 m!8213))

(declare-fun m!8215 () Bool)

(assert (=> bs!1095 m!8215))

(assert (=> bs!1095 m!8215))

(declare-fun m!8217 () Bool)

(assert (=> bs!1095 m!8217))

(assert (=> start!832 d!4573))

(declare-fun d!4575 () Bool)

(declare-fun lt!1274 () List!99)

(declare-fun isEmpty!97 (List!99) Bool)

(assert (=> d!4575 (not (isEmpty!97 lt!1274))))

(declare-fun e!3350 () List!99)

(assert (=> d!4575 (= lt!1274 e!3350)))

(declare-fun c!2234 () Bool)

(assert (=> d!4575 (= c!2234 (is-Leaf!88 tree!30))))

(assert (=> d!4575 (= (toList!17 tree!30) lt!1274)))

(declare-fun b!5759 () Bool)

(assert (=> b!5759 (= e!3350 (Cons!96 (value!1257 tree!30) Nil!97))))

(declare-fun b!5760 () Bool)

(declare-fun append!35 (List!99 List!99) List!99)

(assert (=> b!5760 (= e!3350 (append!35 (toList!17 (left!244 tree!30)) (toList!17 (right!247 tree!30))))))

(assert (= (and d!4575 c!2234) b!5759))

(assert (= (and d!4575 (not c!2234)) b!5760))

(declare-fun m!8219 () Bool)

(assert (=> d!4575 m!8219))

(declare-fun m!8221 () Bool)

(assert (=> b!5760 m!8221))

(declare-fun m!8223 () Bool)

(assert (=> b!5760 m!8223))

(assert (=> b!5760 m!8221))

(assert (=> b!5760 m!8223))

(declare-fun m!8225 () Bool)

(assert (=> b!5760 m!8225))

(assert (=> start!832 d!4575))

(declare-fun bs!1096 () Bool)

(declare-fun d!4577 () Bool)

(assert (= bs!1096 (and d!4577 b!5752)))

(declare-fun lambda!104 () Int)

(assert (=> bs!1096 (= lambda!104 lambda!92)))

(declare-fun bs!1097 () Bool)

(assert (= bs!1097 (and d!4577 d!4573)))

(assert (=> bs!1097 (= lambda!104 lambda!98)))

(declare-fun bs!1098 () Bool)

(assert (= bs!1098 (and d!4577 b!5753)))

(declare-fun lambda!105 () Int)

(assert (=> bs!1098 (= lambda!105 lambda!93)))

(assert (=> bs!1097 (= lambda!105 lambda!99)))

(declare-fun b_next!75 () Bool)

(assert (=> start!832 (= b_next!73 (or (and d!4577 (= lambda!105 f!653)) b_next!75))))

(declare-datatypes () ((Tree!16 (Branch!7 (left!245 Tree!16) (right!248 Tree!16)) (Leaf!89 (value!1258 Balance!7)))))

(declare-fun fold!3 (Tree!16 Int) Balance!7)

(declare-fun map!115 (Tree!15 Int) Tree!16)

(assert (=> d!4577 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!3 (map!115 tree!30 lambda!104) lambda!105)))))

(declare-fun bs!1099 () Bool)

(assert (= bs!1099 d!4577))

(declare-fun m!8227 () Bool)

(assert (=> bs!1099 m!8227))

(assert (=> bs!1099 m!8227))

(declare-fun m!8229 () Bool)

(assert (=> bs!1099 m!8229))

(assert (=> bs!1099 m!8229))

(declare-fun m!8231 () Bool)

(assert (=> bs!1099 m!8231))

(assert (=> start!832 d!4577))

(declare-fun d!4579 () Bool)

(declare-fun c!2237 () Bool)

(assert (=> d!4579 (= c!2237 (is-Nil!97 (toList!17 tree!30)))))

(declare-fun e!3353 () List!100)

(assert (=> d!4579 (= (map!114 (toList!17 tree!30) lambda!92) e!3353)))

(declare-fun b!5765 () Bool)

(assert (=> b!5765 (= e!3353 Nil!98)))

(declare-fun b!5766 () Bool)

(declare-fun dynLambda!28 (Int Parenthesis!5) Balance!7)

(assert (=> b!5766 (= e!3353 (Cons!97 (dynLambda!28 lambda!92 (head!314 (toList!17 tree!30))) (map!114 (tail!326 (toList!17 tree!30)) lambda!92)))))

(assert (= (and d!4579 c!2237) b!5765))

(assert (= (and d!4579 (not c!2237)) b!5766))

(declare-fun b_lambda!2599 () Bool)

(assert (=> (not b_lambda!2599) (not b!5766)))

(declare-fun m!8233 () Bool)

(assert (=> b!5766 m!8233))

(declare-fun m!8235 () Bool)

(assert (=> b!5766 m!8235))

(assert (=> b!5752 d!4579))

(assert (=> b!5752 d!4575))

(declare-fun b_lambda!2601 () Bool)

(assert (= b_lambda!2599 (or b!5752 b_lambda!2601)))

(declare-fun bs!1100 () Bool)

(declare-fun d!4581 () Bool)

(assert (= bs!1100 (and d!4581 b!5752)))

(declare-fun fromParenthesis!0 (Parenthesis!5) Balance!7)

(assert (=> bs!1100 (= (dynLambda!28 lambda!92 (head!314 (toList!17 tree!30))) (fromParenthesis!0 (head!314 (toList!17 tree!30))))))

(declare-fun m!8237 () Bool)

(assert (=> bs!1100 m!8237))

(assert (=> b!5766 d!4581))

(push 1)

(assert (not b_lambda!2601))

(assert (not d!4575))

(assert (not b!5760))

(assert (not bs!1100))

(assert b_and!955)

(assert (not b_next!75))

(assert (not d!4573))

(assert (not b!5766))

(assert (not d!4577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!955)

(assert (not b_next!75))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4583 () Bool)

(assert (=> d!4583 (= (fromParenthesis!0 (head!314 (toList!17 tree!30))) (ite (is-OpenParenthesis!4 (head!314 (toList!17 tree!30))) (Balance!8 1 0) (Balance!8 0 1)))))

(assert (=> bs!1100 d!4583))

(declare-fun d!4585 () Bool)

(declare-fun c!2240 () Bool)

(assert (=> d!4585 (= c!2240 (is-Nil!97 (toList!17 (left!244 tree!30))))))

(declare-fun e!3356 () List!99)

(assert (=> d!4585 (= (append!35 (toList!17 (left!244 tree!30)) (toList!17 (right!247 tree!30))) e!3356)))

(declare-fun b!5771 () Bool)

(assert (=> b!5771 (= e!3356 (toList!17 (right!247 tree!30)))))

(declare-fun b!5772 () Bool)

(assert (=> b!5772 (= e!3356 (Cons!96 (head!314 (toList!17 (left!244 tree!30))) (append!35 (tail!326 (toList!17 (left!244 tree!30))) (toList!17 (right!247 tree!30)))))))

(assert (= (and d!4585 c!2240) b!5771))

(assert (= (and d!4585 (not c!2240)) b!5772))

(assert (=> b!5772 m!8223))

(declare-fun m!8239 () Bool)

(assert (=> b!5772 m!8239))

(assert (=> b!5760 d!4585))

(declare-fun d!4587 () Bool)

(declare-fun lt!1275 () List!99)

(assert (=> d!4587 (not (isEmpty!97 lt!1275))))

(declare-fun e!3357 () List!99)

(assert (=> d!4587 (= lt!1275 e!3357)))

(declare-fun c!2241 () Bool)

(assert (=> d!4587 (= c!2241 (is-Leaf!88 (left!244 tree!30)))))

(assert (=> d!4587 (= (toList!17 (left!244 tree!30)) lt!1275)))

(declare-fun b!5773 () Bool)

(assert (=> b!5773 (= e!3357 (Cons!96 (value!1257 (left!244 tree!30)) Nil!97))))

(declare-fun b!5774 () Bool)

(assert (=> b!5774 (= e!3357 (append!35 (toList!17 (left!244 (left!244 tree!30))) (toList!17 (right!247 (left!244 tree!30)))))))

(assert (= (and d!4587 c!2241) b!5773))

(assert (= (and d!4587 (not c!2241)) b!5774))

(declare-fun m!8241 () Bool)

(assert (=> d!4587 m!8241))

(declare-fun m!8243 () Bool)

(assert (=> b!5774 m!8243))

(declare-fun m!8245 () Bool)

(assert (=> b!5774 m!8245))

(assert (=> b!5774 m!8243))

(assert (=> b!5774 m!8245))

(declare-fun m!8247 () Bool)

(assert (=> b!5774 m!8247))

(assert (=> b!5760 d!4587))

(declare-fun d!4589 () Bool)

(declare-fun lt!1276 () List!99)

(assert (=> d!4589 (not (isEmpty!97 lt!1276))))

(declare-fun e!3358 () List!99)

(assert (=> d!4589 (= lt!1276 e!3358)))

(declare-fun c!2242 () Bool)

(assert (=> d!4589 (= c!2242 (is-Leaf!88 (right!247 tree!30)))))

(assert (=> d!4589 (= (toList!17 (right!247 tree!30)) lt!1276)))

(declare-fun b!5775 () Bool)

(assert (=> b!5775 (= e!3358 (Cons!96 (value!1257 (right!247 tree!30)) Nil!97))))

(declare-fun b!5776 () Bool)

(assert (=> b!5776 (= e!3358 (append!35 (toList!17 (left!244 (right!247 tree!30))) (toList!17 (right!247 (right!247 tree!30)))))))

(assert (= (and d!4589 c!2242) b!5775))

(assert (= (and d!4589 (not c!2242)) b!5776))

(declare-fun m!8249 () Bool)

(assert (=> d!4589 m!8249))

(declare-fun m!8251 () Bool)

(assert (=> b!5776 m!8251))

(declare-fun m!8253 () Bool)

(assert (=> b!5776 m!8253))

(assert (=> b!5776 m!8251))

(assert (=> b!5776 m!8253))

(declare-fun m!8255 () Bool)

(assert (=> b!5776 m!8255))

(assert (=> b!5760 d!4589))

(declare-fun d!4591 () Bool)

(assert (=> d!4591 (= (isEmpty!97 lt!1274) (is-Nil!97 lt!1274))))

(assert (=> d!4575 d!4591))

(declare-fun d!4593 () Bool)

(assert (=> d!4593 (= (isBalanced!0 (foldRight1!2 (map!114 (toList!17 tree!30) lambda!98) lambda!99)) (and (= (extraOpen!44 (foldRight1!2 (map!114 (toList!17 tree!30) lambda!98) lambda!99)) 0) (= (extraClose!44 (foldRight1!2 (map!114 (toList!17 tree!30) lambda!98) lambda!99)) 0)))))

(assert (=> d!4573 d!4593))

(declare-fun d!4595 () Bool)

(declare-fun c!2245 () Bool)

(assert (=> d!4595 (= c!2245 (and (is-Cons!97 (map!114 (toList!17 tree!30) lambda!98)) (is-Nil!98 (tail!327 (map!114 (toList!17 tree!30) lambda!98)))))))

(declare-fun e!3361 () Balance!7)

(assert (=> d!4595 (= (foldRight1!2 (map!114 (toList!17 tree!30) lambda!98) lambda!99) e!3361)))

(declare-fun b!5781 () Bool)

(assert (=> b!5781 (= e!3361 (head!315 (map!114 (toList!17 tree!30) lambda!98)))))

(declare-fun b!5782 () Bool)

(declare-fun dynLambda!29 (Int Balance!7 Balance!7) Balance!7)

(assert (=> b!5782 (= e!3361 (dynLambda!29 lambda!99 (head!315 (map!114 (toList!17 tree!30) lambda!98)) (foldRight1!2 (tail!327 (map!114 (toList!17 tree!30) lambda!98)) lambda!99)))))

(assert (= (and d!4595 c!2245) b!5781))

(assert (= (and d!4595 (not c!2245)) b!5782))

(declare-fun b_lambda!2603 () Bool)

(assert (=> (not b_lambda!2603) (not b!5782)))

(declare-fun m!8257 () Bool)

(assert (=> b!5782 m!8257))

(assert (=> b!5782 m!8257))

(declare-fun m!8259 () Bool)

(assert (=> b!5782 m!8259))

(assert (=> d!4573 d!4595))

(declare-fun d!4597 () Bool)

(declare-fun c!2246 () Bool)

(assert (=> d!4597 (= c!2246 (is-Nil!97 (toList!17 tree!30)))))

(declare-fun e!3362 () List!100)

(assert (=> d!4597 (= (map!114 (toList!17 tree!30) lambda!98) e!3362)))

(declare-fun b!5783 () Bool)

(assert (=> b!5783 (= e!3362 Nil!98)))

(declare-fun b!5784 () Bool)

(assert (=> b!5784 (= e!3362 (Cons!97 (dynLambda!28 lambda!98 (head!314 (toList!17 tree!30))) (map!114 (tail!326 (toList!17 tree!30)) lambda!98)))))

(assert (= (and d!4597 c!2246) b!5783))

(assert (= (and d!4597 (not c!2246)) b!5784))

(declare-fun b_lambda!2605 () Bool)

(assert (=> (not b_lambda!2605) (not b!5784)))

(declare-fun m!8261 () Bool)

(assert (=> b!5784 m!8261))

(declare-fun m!8263 () Bool)

(assert (=> b!5784 m!8263))

(assert (=> d!4573 d!4597))

(declare-fun d!4599 () Bool)

(declare-fun c!2247 () Bool)

(assert (=> d!4599 (= c!2247 (is-Nil!97 (tail!326 (toList!17 tree!30))))))

(declare-fun e!3363 () List!100)

(assert (=> d!4599 (= (map!114 (tail!326 (toList!17 tree!30)) lambda!92) e!3363)))

(declare-fun b!5785 () Bool)

(assert (=> b!5785 (= e!3363 Nil!98)))

(declare-fun b!5786 () Bool)

(assert (=> b!5786 (= e!3363 (Cons!97 (dynLambda!28 lambda!92 (head!314 (tail!326 (toList!17 tree!30)))) (map!114 (tail!326 (tail!326 (toList!17 tree!30))) lambda!92)))))

(assert (= (and d!4599 c!2247) b!5785))

(assert (= (and d!4599 (not c!2247)) b!5786))

(declare-fun b_lambda!2607 () Bool)

(assert (=> (not b_lambda!2607) (not b!5786)))

(declare-fun m!8265 () Bool)

(assert (=> b!5786 m!8265))

(declare-fun m!8267 () Bool)

(assert (=> b!5786 m!8267))

(assert (=> b!5766 d!4599))

(declare-fun d!4601 () Bool)

(assert (=> d!4601 (= (isBalanced!0 (fold!3 (map!115 tree!30 lambda!104) lambda!105)) (and (= (extraOpen!44 (fold!3 (map!115 tree!30 lambda!104) lambda!105)) 0) (= (extraClose!44 (fold!3 (map!115 tree!30 lambda!104) lambda!105)) 0)))))

(assert (=> d!4577 d!4601))

(declare-fun b!5792 () Bool)

(assert (=> b!5792 true))

(declare-fun order!17 () Int)

(declare-fun lambda!110 () Int)

(declare-fun order!19 () Int)

(declare-fun dynLambda!30 (Int Int) Int)

(declare-fun dynLambda!31 (Int Int) Int)

(assert (=> b!5792 (< (dynLambda!30 order!17 lambda!105) (dynLambda!31 order!19 lambda!110))))

(assert (=> b!5792 true))

(declare-fun lambda!111 () Int)

(assert (=> b!5792 (= (= (right!248 (map!115 tree!30 lambda!104)) (left!245 (map!115 tree!30 lambda!104))) (= lambda!111 lambda!110))))

(assert (=> b!5792 true))

(assert (=> b!5792 (< (dynLambda!30 order!17 lambda!105) (dynLambda!31 order!19 lambda!111))))

(assert (=> b!5792 true))

(declare-fun e!3382 () Balance!7)

(declare-datatypes () ((tuple2!22 (tuple2!23 (_1!11 Balance!7) (_2!11 Balance!7)))))

(declare-fun lt!1279 () tuple2!22)

(assert (=> b!5792 (= e!3382 (dynLambda!29 lambda!105 (_1!11 lt!1279) (_2!11 lt!1279)))))

(declare-fun dynLambda!32 (Int) Balance!7)

(assert (=> b!5792 (= lt!1279 (tuple2!23 (dynLambda!32 lambda!110) (dynLambda!32 lambda!111)))))

(declare-fun d!4603 () Bool)

(declare-fun c!2250 () Bool)

(assert (=> d!4603 (= c!2250 (is-Leaf!89 (map!115 tree!30 lambda!104)))))

(assert (=> d!4603 (= (fold!3 (map!115 tree!30 lambda!104) lambda!105) e!3382)))

(declare-fun b!5791 () Bool)

(assert (=> b!5791 (= e!3382 (value!1258 (map!115 tree!30 lambda!104)))))

(assert (= (and d!4603 c!2250) b!5791))

(assert (= (and d!4603 (not c!2250)) b!5792))

(declare-fun b_lambda!2609 () Bool)

(assert (=> (not b_lambda!2609) (not b!5792)))

(declare-fun b_lambda!2611 () Bool)

(assert (=> (not b_lambda!2611) (not b!5792)))

(declare-fun b_lambda!2613 () Bool)

(assert (=> (not b_lambda!2613) (not b!5792)))

(declare-fun m!8269 () Bool)

(assert (=> b!5792 m!8269))

(declare-fun m!8271 () Bool)

(assert (=> b!5792 m!8271))

(declare-fun m!8273 () Bool)

(assert (=> b!5792 m!8273))

(assert (=> d!4577 d!4603))

(declare-fun b!5802 () Bool)

(assert (=> b!5802 true))

(declare-fun lambda!116 () Int)

(declare-fun order!21 () Int)

(declare-fun order!23 () Int)

(declare-fun dynLambda!33 (Int Int) Int)

(declare-fun dynLambda!34 (Int Int) Int)

(assert (=> b!5802 (< (dynLambda!33 order!21 lambda!104) (dynLambda!34 order!23 lambda!116))))

(assert (=> b!5802 true))

(declare-fun lambda!117 () Int)

(assert (=> b!5802 (= (= (right!247 tree!30) (left!244 tree!30)) (= lambda!117 lambda!116))))

(assert (=> b!5802 true))

(assert (=> b!5802 (< (dynLambda!33 order!21 lambda!104) (dynLambda!34 order!23 lambda!117))))

(assert (=> b!5802 true))

(declare-fun e!3401 () Tree!16)

(declare-datatypes () ((tuple2!24 (tuple2!25 (_1!12 Tree!16) (_2!12 Tree!16)))))

(declare-fun lt!1282 () tuple2!24)

(assert (=> b!5802 (= e!3401 (Branch!7 (_1!12 lt!1282) (_2!12 lt!1282)))))

(declare-fun dynLambda!35 (Int) Tree!16)

(assert (=> b!5802 (= lt!1282 (tuple2!25 (dynLambda!35 lambda!116) (dynLambda!35 lambda!117)))))

(declare-fun d!4605 () Bool)

(declare-fun c!2253 () Bool)

(assert (=> d!4605 (= c!2253 (is-Leaf!88 tree!30))))

(assert (=> d!4605 (= (map!115 tree!30 lambda!104) e!3401)))

(declare-fun b!5801 () Bool)

(assert (=> b!5801 (= e!3401 (Leaf!89 (dynLambda!28 lambda!104 (value!1257 tree!30))))))

(assert (= (and d!4605 c!2253) b!5801))

(assert (= (and d!4605 (not c!2253)) b!5802))

(declare-fun b_lambda!2615 () Bool)

(assert (=> (not b_lambda!2615) (not b!5802)))

(declare-fun b_lambda!2617 () Bool)

(assert (=> (not b_lambda!2617) (not b!5802)))

(declare-fun b_lambda!2619 () Bool)

(assert (=> (not b_lambda!2619) (not b!5801)))

(declare-fun m!8275 () Bool)

(assert (=> b!5802 m!8275))

(declare-fun m!8277 () Bool)

(assert (=> b!5802 m!8277))

(declare-fun m!8279 () Bool)

(assert (=> b!5801 m!8279))

(assert (=> d!4577 d!4605))

(declare-fun b_lambda!2621 () Bool)

(assert (= b_lambda!2619 (or d!4577 b_lambda!2621)))

(declare-fun bs!1101 () Bool)

(declare-fun d!4607 () Bool)

(assert (= bs!1101 (and d!4607 d!4577)))

(assert (=> bs!1101 (= (dynLambda!28 lambda!104 (value!1257 tree!30)) (fromParenthesis!0 (value!1257 tree!30)))))

(declare-fun m!8281 () Bool)

(assert (=> bs!1101 m!8281))

(assert (=> b!5801 d!4607))

(declare-fun b_lambda!2623 () Bool)

(assert (= b_lambda!2609 (or d!4577 b_lambda!2623)))

(declare-fun bs!1102 () Bool)

(declare-fun d!4609 () Bool)

(assert (= bs!1102 (and d!4609 d!4577)))

(declare-fun ++!3 (Balance!7 Balance!7) Balance!7)

(assert (=> bs!1102 (= (dynLambda!29 lambda!105 (_1!11 lt!1279) (_2!11 lt!1279)) (++!3 (_1!11 lt!1279) (_2!11 lt!1279)))))

(declare-fun m!8283 () Bool)

(assert (=> bs!1102 m!8283))

(assert (=> b!5792 d!4609))

(declare-fun b_lambda!2625 () Bool)

(assert (= b_lambda!2603 (or d!4573 b_lambda!2625)))

(declare-fun bs!1103 () Bool)

(declare-fun d!4611 () Bool)

(assert (= bs!1103 (and d!4611 d!4573)))

(assert (=> bs!1103 (= (dynLambda!29 lambda!99 (head!315 (map!114 (toList!17 tree!30) lambda!98)) (foldRight1!2 (tail!327 (map!114 (toList!17 tree!30) lambda!98)) lambda!99)) (++!3 (head!315 (map!114 (toList!17 tree!30) lambda!98)) (foldRight1!2 (tail!327 (map!114 (toList!17 tree!30) lambda!98)) lambda!99)))))

(assert (=> bs!1103 m!8257))

(declare-fun m!8285 () Bool)

(assert (=> bs!1103 m!8285))

(assert (=> b!5782 d!4611))

(declare-fun b_lambda!2627 () Bool)

(assert (= b_lambda!2615 (or b!5802 b_lambda!2627)))

(declare-fun bs!1104 () Bool)

(declare-fun d!4613 () Bool)

(assert (= bs!1104 (and d!4613 b!5802)))

(assert (=> bs!1104 (= (dynLambda!35 lambda!116) (map!115 (left!244 tree!30) lambda!104))))

(declare-fun m!8287 () Bool)

(assert (=> bs!1104 m!8287))

(assert (=> b!5802 d!4613))

(declare-fun b_lambda!2629 () Bool)

(assert (= b_lambda!2613 (or b!5792 b_lambda!2629)))

(declare-fun bs!1105 () Bool)

(declare-fun d!4615 () Bool)

(assert (= bs!1105 (and d!4615 b!5792)))

(assert (=> bs!1105 (= (dynLambda!32 lambda!111) (fold!3 (right!248 (map!115 tree!30 lambda!104)) lambda!105))))

(declare-fun m!8289 () Bool)

(assert (=> bs!1105 m!8289))

(assert (=> b!5792 d!4615))

(declare-fun b_lambda!2631 () Bool)

(assert (= b_lambda!2607 (or b!5752 b_lambda!2631)))

(declare-fun bs!1106 () Bool)

(declare-fun d!4617 () Bool)

(assert (= bs!1106 (and d!4617 b!5752)))

(assert (=> bs!1106 (= (dynLambda!28 lambda!92 (head!314 (tail!326 (toList!17 tree!30)))) (fromParenthesis!0 (head!314 (tail!326 (toList!17 tree!30)))))))

(declare-fun m!8291 () Bool)

(assert (=> bs!1106 m!8291))

(assert (=> b!5786 d!4617))

(declare-fun b_lambda!2633 () Bool)

(assert (= b_lambda!2605 (or d!4573 b_lambda!2633)))

(declare-fun bs!1107 () Bool)

(declare-fun d!4619 () Bool)

(assert (= bs!1107 (and d!4619 d!4573)))

(assert (=> bs!1107 (= (dynLambda!28 lambda!98 (head!314 (toList!17 tree!30))) (fromParenthesis!0 (head!314 (toList!17 tree!30))))))

(assert (=> bs!1107 m!8237))

(assert (=> b!5784 d!4619))

(declare-fun b_lambda!2635 () Bool)

(assert (= b_lambda!2611 (or b!5792 b_lambda!2635)))

(declare-fun bs!1108 () Bool)

(declare-fun d!4621 () Bool)

(assert (= bs!1108 (and d!4621 b!5792)))

(assert (=> bs!1108 (= (dynLambda!32 lambda!110) (fold!3 (left!245 (map!115 tree!30 lambda!104)) lambda!105))))

(declare-fun m!8293 () Bool)

(assert (=> bs!1108 m!8293))

(assert (=> b!5792 d!4621))

(declare-fun b_lambda!2637 () Bool)

(assert (= b_lambda!2617 (or b!5802 b_lambda!2637)))

(declare-fun bs!1109 () Bool)

(declare-fun d!4623 () Bool)

(assert (= bs!1109 (and d!4623 b!5802)))

(assert (=> bs!1109 (= (dynLambda!35 lambda!117) (map!115 (right!247 tree!30) lambda!104))))

(declare-fun m!8295 () Bool)

(assert (=> bs!1109 m!8295))

(assert (=> b!5802 d!4623))

(push 1)

(assert (not b!5772))

(assert (not bs!1105))

(assert (not bs!1103))

(assert (not b_lambda!2631))

(assert (not b_lambda!2601))

(assert (not bs!1101))

(assert (not b_lambda!2633))

(assert (not b_lambda!2623))

(assert (not b!5784))

(assert b_and!955)

(assert (not bs!1102))

(assert (not d!4587))

(assert (not d!4589))

(assert (not bs!1106))

(assert (not bs!1107))

(assert (not bs!1108))

(assert (not b_lambda!2627))

(assert (not b!5782))

(assert (not b_next!75))

(assert (not b_lambda!2625))

(assert (not b!5774))

(assert (not bs!1109))

(assert (not b_lambda!2629))

(assert (not bs!1104))

(assert (not b_lambda!2635))

(assert (not b!5786))

(assert (not b_lambda!2621))

(assert (not b!5776))

(assert (not b_lambda!2637))

(check-sat)

(pop 1)

(push 1)

(assert b_and!955)

(assert (not b_next!75))

(check-sat)

(pop 1)

