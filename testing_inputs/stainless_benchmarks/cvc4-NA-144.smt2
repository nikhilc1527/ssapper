; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!858 () Bool)

(assert start!858)

(declare-fun b_free!67 () Bool)

(declare-fun b_next!77 () Bool)

(assert (=> start!858 (= b_free!67 (not b_next!77))))

(declare-fun tp!231 () Bool)

(declare-fun b_and!957 () Bool)

(assert (=> start!858 (= tp!231 b_and!957)))

(declare-fun b!5821 () Bool)

(declare-fun b_free!69 () Bool)

(declare-fun b_next!79 () Bool)

(assert (=> b!5821 (= b_free!69 (not b_next!79))))

(declare-fun tp!232 () Bool)

(declare-fun b_and!959 () Bool)

(assert (=> b!5821 (= tp!232 b_and!959)))

(declare-fun b_free!71 () Bool)

(declare-fun b_next!81 () Bool)

(assert (=> b!5821 (= b_free!71 (not b_next!81))))

(declare-fun tp!230 () Bool)

(declare-fun b_and!961 () Bool)

(assert (=> b!5821 (= tp!230 b_and!961)))

(declare-fun b_free!73 () Bool)

(declare-fun b_next!83 () Bool)

(assert (=> b!5821 (= b_free!73 (not b_next!83))))

(declare-fun tp!229 () Bool)

(declare-fun b_and!963 () Bool)

(assert (=> b!5821 (= tp!229 b_and!963)))

(declare-fun b!5819 () Bool)

(declare-fun b_next!85 () Bool)

(declare-fun lambda!139 () Int)

(declare-fun f!659 () Int)

(assert (=> start!858 (= b_next!77 (or (and b!5819 (= lambda!139 f!659)) b_next!85))))

(assert (=> b!5819 true))

(declare-fun lambda!138 () Int)

(declare-fun b_next!87 () Bool)

(declare-datatypes () ((Balance!9 (Balance!10 (extraOpen!45 Int) (extraClose!45 Int)))))

(declare-datatypes () ((EqEvidence!4 (EqEvidence!5 (x!2978 Int) (y!397 Int) (evidence!69 Int)))))

(declare-fun thiss!1014 () EqEvidence!4)

(assert (=> b!5821 (= b_next!79 (or (and b!5819 (= lambda!138 (x!2978 thiss!1014))) b_next!87))))

(declare-fun b_next!89 () Bool)

(assert (=> b!5821 (= b_next!81 (or (and b!5819 (= lambda!138 (y!397 thiss!1014))) b_next!89))))

(assert (=> b!5819 true))

(declare-fun lambda!141 () Int)

(declare-fun b_next!91 () Bool)

(assert (=> b!5821 (= b_next!83 (or (and b!5819 (= lambda!141 (evidence!69 thiss!1014))) b_next!91))))

(declare-fun b!5817 () Bool)

(declare-fun res!1547 () Bool)

(declare-fun e!3407 () Bool)

(assert (=> b!5817 (=> (not res!1547) (not e!3407))))

(assert (=> b!5817 (= res!1547 (= f!659 lambda!139))))

(declare-fun b!5818 () Bool)

(declare-datatypes () ((List!101 (Nil!99) (Cons!98 (head!316 Balance!9) (tail!328 List!101)))))

(declare-fun thiss!1025 () List!101)

(declare-fun isEmpty!98 (List!101) Bool)

(assert (=> b!5818 (= e!3407 (isEmpty!98 thiss!1025))))

(declare-fun res!1548 () Bool)

(assert (=> b!5819 (=> (not res!1548) (not e!3407))))

(assert (=> b!5819 (= res!1548 (= thiss!1014 (EqEvidence!5 lambda!138 lambda!138 lambda!141)))))

(declare-fun res!1545 () Bool)

(assert (=> start!858 (=> (not res!1545) (not e!3407))))

(declare-datatypes () ((ProofOps!12 (ProofOps!13 (prop!107 Bool)))))

(declare-fun thiss!1009 () ProofOps!12)

(declare-datatypes () ((Parenthesis!6 (CloseParenthesis!5) (OpenParenthesis!5))))

(declare-datatypes () ((Tree!17 (Branch!8 (left!252 Tree!17) (right!255 Tree!17)) (Leaf!90 (value!1259 Parenthesis!6)))))

(declare-fun tree!30 () Tree!17)

(declare-datatypes () ((List!102 (Nil!100) (Cons!99 (head!317 Parenthesis!6) (tail!329 List!102)))))

(declare-fun isMatchedHybid!0 (List!102) Bool)

(declare-fun toList!18 (Tree!17) List!102)

(declare-fun isMatchedParallel!0 (Tree!17) Bool)

(assert (=> start!858 (= res!1545 (= thiss!1009 (ProofOps!13 (= (isMatchedHybid!0 (toList!18 tree!30)) (isMatchedParallel!0 tree!30)))))))

(assert (=> start!858 e!3407))

(assert (=> start!858 true))

(assert (=> start!858 tp!231))

(declare-fun e!3406 () Bool)

(declare-fun inv!208 (EqEvidence!4) Bool)

(assert (=> start!858 (and (inv!208 thiss!1014) e!3406)))

(declare-fun b!5820 () Bool)

(declare-fun res!1546 () Bool)

(assert (=> b!5820 (=> (not res!1546) (not e!3407))))

(declare-fun lambda!140 () Int)

(declare-datatypes () ((Tree!18 (Branch!9 (left!253 Tree!18) (right!256 Tree!18)) (Leaf!91 (value!1260 Balance!9)))))

(declare-fun toList!19 (Tree!18) List!101)

(declare-fun map!116 (Tree!17 Int) Tree!18)

(assert (=> b!5820 (= res!1546 (= thiss!1025 (toList!19 (map!116 tree!30 lambda!140))))))

(assert (=> b!5821 (= e!3406 (and tp!232 tp!230 tp!229))))

(assert (= (and start!858 res!1545) b!5819))

(assert (= (and b!5819 res!1548) b!5820))

(assert (= (and b!5820 res!1546) b!5817))

(assert (= (and b!5817 res!1547) b!5818))

(assert (= start!858 b!5821))

(declare-fun m!8297 () Bool)

(assert (=> b!5818 m!8297))

(declare-fun m!8299 () Bool)

(assert (=> start!858 m!8299))

(assert (=> start!858 m!8299))

(declare-fun m!8301 () Bool)

(assert (=> start!858 m!8301))

(declare-fun m!8303 () Bool)

(assert (=> start!858 m!8303))

(declare-fun m!8305 () Bool)

(assert (=> start!858 m!8305))

(declare-fun m!8307 () Bool)

(assert (=> b!5820 m!8307))

(assert (=> b!5820 m!8307))

(declare-fun m!8309 () Bool)

(assert (=> b!5820 m!8309))

(push 1)

(assert (not b_next!87))

(assert (not b!5818))

(assert b_and!959)

(assert b_and!963)

(assert b_and!961)

(assert b_and!957)

(assert (not b_next!89))

(assert (not b_next!91))

(assert (not b_next!85))

(assert (not start!858))

(assert (not b!5820))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87))

(assert b_and!959)

(assert b_and!963)

(assert b_and!961)

(assert b_and!957)

(assert (not b_next!89))

(assert (not b_next!91))

(assert (not b_next!85))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4625 () Bool)

(assert (=> d!4625 (= (isEmpty!98 thiss!1025) (is-Nil!99 thiss!1025))))

(assert (=> b!5818 d!4625))

(declare-fun d!4627 () Bool)

(declare-fun lt!1285 () List!101)

(assert (=> d!4627 (not (isEmpty!98 lt!1285))))

(declare-fun e!3410 () List!101)

(assert (=> d!4627 (= lt!1285 e!3410)))

(declare-fun c!2256 () Bool)

(assert (=> d!4627 (= c!2256 (is-Leaf!91 (map!116 tree!30 lambda!140)))))

(assert (=> d!4627 (= (toList!19 (map!116 tree!30 lambda!140)) lt!1285)))

(declare-fun b!5830 () Bool)

(assert (=> b!5830 (= e!3410 (Cons!98 (value!1260 (map!116 tree!30 lambda!140)) Nil!99))))

(declare-fun b!5831 () Bool)

(declare-fun append!36 (List!101 List!101) List!101)

(assert (=> b!5831 (= e!3410 (append!36 (toList!19 (left!253 (map!116 tree!30 lambda!140))) (toList!19 (right!256 (map!116 tree!30 lambda!140)))))))

(assert (= (and d!4627 c!2256) b!5830))

(assert (= (and d!4627 (not c!2256)) b!5831))

(declare-fun m!8311 () Bool)

(assert (=> d!4627 m!8311))

(declare-fun m!8313 () Bool)

(assert (=> b!5831 m!8313))

(declare-fun m!8315 () Bool)

(assert (=> b!5831 m!8315))

(assert (=> b!5831 m!8313))

(assert (=> b!5831 m!8315))

(declare-fun m!8317 () Bool)

(assert (=> b!5831 m!8317))

(assert (=> b!5820 d!4627))

(declare-fun b!5837 () Bool)

(assert (=> b!5837 true))

(declare-fun order!25 () Int)

(declare-fun lambda!146 () Int)

(declare-fun order!27 () Int)

(declare-fun dynLambda!36 (Int Int) Int)

(declare-fun dynLambda!37 (Int Int) Int)

(assert (=> b!5837 (< (dynLambda!36 order!25 lambda!140) (dynLambda!37 order!27 lambda!146))))

(assert (=> b!5837 true))

(declare-fun lambda!147 () Int)

(assert (=> b!5837 (= (= (right!255 tree!30) (left!252 tree!30)) (= lambda!147 lambda!146))))

(assert (=> b!5837 true))

(assert (=> b!5837 (< (dynLambda!36 order!25 lambda!140) (dynLambda!37 order!27 lambda!147))))

(assert (=> b!5837 true))

(declare-fun e!3429 () Tree!18)

(declare-datatypes () ((tuple2!26 (tuple2!27 (_1!13 Tree!18) (_2!13 Tree!18)))))

(declare-fun lt!1288 () tuple2!26)

(assert (=> b!5837 (= e!3429 (Branch!9 (_1!13 lt!1288) (_2!13 lt!1288)))))

(declare-fun dynLambda!38 (Int) Tree!18)

(assert (=> b!5837 (= lt!1288 (tuple2!27 (dynLambda!38 lambda!146) (dynLambda!38 lambda!147)))))

(declare-fun d!4629 () Bool)

(declare-fun c!2259 () Bool)

(assert (=> d!4629 (= c!2259 (is-Leaf!90 tree!30))))

(assert (=> d!4629 (= (map!116 tree!30 lambda!140) e!3429)))

(declare-fun b!5836 () Bool)

(declare-fun dynLambda!39 (Int Parenthesis!6) Balance!9)

(assert (=> b!5836 (= e!3429 (Leaf!91 (dynLambda!39 lambda!140 (value!1259 tree!30))))))

(assert (= (and d!4629 c!2259) b!5836))

(assert (= (and d!4629 (not c!2259)) b!5837))

(declare-fun b_lambda!2639 () Bool)

(assert (=> (not b_lambda!2639) (not b!5837)))

(declare-fun b_lambda!2641 () Bool)

(assert (=> (not b_lambda!2641) (not b!5837)))

(declare-fun b_lambda!2643 () Bool)

(assert (=> (not b_lambda!2643) (not b!5836)))

(declare-fun m!8319 () Bool)

(assert (=> b!5837 m!8319))

(declare-fun m!8321 () Bool)

(assert (=> b!5837 m!8321))

(declare-fun m!8323 () Bool)

(assert (=> b!5836 m!8323))

(assert (=> b!5820 d!4629))

(declare-fun bs!1111 () Bool)

(declare-fun d!4631 () Bool)

(assert (= bs!1111 (and d!4631 b!5819)))

(declare-fun lambda!152 () Int)

(assert (=> bs!1111 (= lambda!152 lambda!140)))

(declare-fun lambda!153 () Int)

(assert (=> bs!1111 (= lambda!153 lambda!139)))

(declare-fun b_next!93 () Bool)

(assert (=> start!858 (= b_next!85 (or (and d!4631 (= lambda!153 f!659)) b_next!93))))

(declare-fun isBalanced!0 (Balance!9) Bool)

(declare-fun foldRight1!3 (List!101 Int) Balance!9)

(declare-fun map!117 (List!102 Int) List!101)

(assert (=> d!4631 (= (isMatchedHybid!0 (toList!18 tree!30)) (isBalanced!0 (foldRight1!3 (map!117 (toList!18 tree!30) lambda!152) lambda!153)))))

(declare-fun bs!1112 () Bool)

(assert (= bs!1112 d!4631))

(assert (=> bs!1112 m!8299))

(declare-fun m!8325 () Bool)

(assert (=> bs!1112 m!8325))

(assert (=> bs!1112 m!8325))

(declare-fun m!8327 () Bool)

(assert (=> bs!1112 m!8327))

(assert (=> bs!1112 m!8327))

(declare-fun m!8329 () Bool)

(assert (=> bs!1112 m!8329))

(assert (=> start!858 d!4631))

(declare-fun d!4633 () Bool)

(declare-fun lt!1291 () List!102)

(declare-fun isEmpty!99 (List!102) Bool)

(assert (=> d!4633 (not (isEmpty!99 lt!1291))))

(declare-fun e!3432 () List!102)

(assert (=> d!4633 (= lt!1291 e!3432)))

(declare-fun c!2262 () Bool)

(assert (=> d!4633 (= c!2262 (is-Leaf!90 tree!30))))

(assert (=> d!4633 (= (toList!18 tree!30) lt!1291)))

(declare-fun b!5846 () Bool)

(assert (=> b!5846 (= e!3432 (Cons!99 (value!1259 tree!30) Nil!100))))

(declare-fun b!5847 () Bool)

(declare-fun append!37 (List!102 List!102) List!102)

(assert (=> b!5847 (= e!3432 (append!37 (toList!18 (left!252 tree!30)) (toList!18 (right!255 tree!30))))))

(assert (= (and d!4633 c!2262) b!5846))

(assert (= (and d!4633 (not c!2262)) b!5847))

(declare-fun m!8331 () Bool)

(assert (=> d!4633 m!8331))

(declare-fun m!8333 () Bool)

(assert (=> b!5847 m!8333))

(declare-fun m!8335 () Bool)

(assert (=> b!5847 m!8335))

(assert (=> b!5847 m!8333))

(assert (=> b!5847 m!8335))

(declare-fun m!8337 () Bool)

(assert (=> b!5847 m!8337))

(assert (=> start!858 d!4633))

(declare-fun bs!1113 () Bool)

(declare-fun d!4635 () Bool)

(assert (= bs!1113 (and d!4635 b!5819)))

(declare-fun lambda!158 () Int)

(assert (=> bs!1113 (= lambda!158 lambda!140)))

(declare-fun bs!1114 () Bool)

(assert (= bs!1114 (and d!4635 d!4631)))

(assert (=> bs!1114 (= lambda!158 lambda!152)))

(declare-fun lambda!159 () Int)

(assert (=> bs!1113 (= lambda!159 lambda!139)))

(assert (=> bs!1114 (= lambda!159 lambda!153)))

(declare-fun b_next!95 () Bool)

(assert (=> start!858 (= b_next!93 (or (and d!4635 (= lambda!159 f!659)) b_next!95))))

(declare-fun fold!4 (Tree!18 Int) Balance!9)

(assert (=> d!4635 (= (isMatchedParallel!0 tree!30) (isBalanced!0 (fold!4 (map!116 tree!30 lambda!158) lambda!159)))))

(declare-fun bs!1115 () Bool)

(assert (= bs!1115 d!4635))

(declare-fun m!8339 () Bool)

(assert (=> bs!1115 m!8339))

(assert (=> bs!1115 m!8339))

(declare-fun m!8341 () Bool)

(assert (=> bs!1115 m!8341))

(assert (=> bs!1115 m!8341))

(declare-fun m!8343 () Bool)

(assert (=> bs!1115 m!8343))

(assert (=> start!858 d!4635))

(declare-fun d!4637 () Bool)

(declare-fun res!1553 () Bool)

(declare-fun e!3435 () Bool)

(assert (=> d!4637 (=> (not res!1553) (not e!3435))))

(declare-fun dynLambda!40 (Int) Balance!9)

(assert (=> d!4637 (= res!1553 (= (dynLambda!40 (x!2978 thiss!1014)) (dynLambda!40 (y!397 thiss!1014))))))

(assert (=> d!4637 (= (inv!208 thiss!1014) e!3435)))

(declare-fun b!5850 () Bool)

(declare-fun dynLambda!41 (Int) Bool)

(assert (=> b!5850 (= e!3435 (dynLambda!41 (evidence!69 thiss!1014)))))

(assert (= (and d!4637 res!1553) b!5850))

(declare-fun b_lambda!2645 () Bool)

(assert (=> (not b_lambda!2645) (not d!4637)))

(declare-fun t!889 () Bool)

(declare-fun tb!549 () Bool)

(assert (=> (and b!5821 (= (x!2978 thiss!1014) (x!2978 thiss!1014)) t!889) tb!549))

(declare-fun result!589 () Bool)

(assert (=> tb!549 (= result!589 true)))

(assert (=> d!4637 t!889))

(declare-fun b_and!965 () Bool)

(assert (= b_and!959 (and (=> t!889 result!589) b_and!965)))

(declare-fun t!891 () Bool)

(declare-fun tb!551 () Bool)

(assert (=> (and b!5821 (= (y!397 thiss!1014) (x!2978 thiss!1014)) t!891) tb!551))

(declare-fun result!591 () Bool)

(assert (=> tb!551 (= result!591 true)))

(assert (=> d!4637 t!891))

(declare-fun b_and!967 () Bool)

(assert (= b_and!961 (and (=> t!891 result!591) b_and!967)))

(declare-fun b_lambda!2647 () Bool)

(assert (=> (not b_lambda!2647) (not d!4637)))

(declare-fun t!893 () Bool)

(declare-fun tb!553 () Bool)

(assert (=> (and b!5821 (= (x!2978 thiss!1014) (y!397 thiss!1014)) t!893) tb!553))

(declare-fun result!593 () Bool)

(assert (=> tb!553 (= result!593 true)))

(assert (=> d!4637 t!893))

(declare-fun b_and!969 () Bool)

(assert (= b_and!965 (and (=> t!893 result!593) b_and!969)))

(declare-fun t!895 () Bool)

(declare-fun tb!555 () Bool)

(assert (=> (and b!5821 (= (y!397 thiss!1014) (y!397 thiss!1014)) t!895) tb!555))

(declare-fun result!595 () Bool)

(assert (=> tb!555 (= result!595 true)))

(assert (=> d!4637 t!895))

(declare-fun b_and!971 () Bool)

(assert (= b_and!967 (and (=> t!895 result!595) b_and!971)))

(declare-fun b_lambda!2649 () Bool)

(assert (=> (not b_lambda!2649) (not b!5850)))

(declare-fun t!897 () Bool)

(declare-fun tb!557 () Bool)

(assert (=> (and b!5821 (= (evidence!69 thiss!1014) (evidence!69 thiss!1014)) t!897) tb!557))

(declare-fun result!597 () Bool)

(assert (=> tb!557 (= result!597 true)))

(assert (=> b!5850 t!897))

(declare-fun b_and!973 () Bool)

(assert (= b_and!963 (and (=> t!897 result!597) b_and!973)))

(declare-fun m!8345 () Bool)

(assert (=> d!4637 m!8345))

(declare-fun m!8347 () Bool)

(assert (=> d!4637 m!8347))

(declare-fun m!8349 () Bool)

(assert (=> b!5850 m!8349))

(assert (=> start!858 d!4637))

(declare-fun b_lambda!2651 () Bool)

(assert (= b_lambda!2647 (or (and b!5819 (= lambda!138 (y!397 thiss!1014))) (and b!5821 b_free!69 (= (x!2978 thiss!1014) (y!397 thiss!1014))) (and b!5821 b_free!71) b_lambda!2651)))

(declare-fun bs!1116 () Bool)

(declare-fun d!4639 () Bool)

(assert (= bs!1116 (and d!4639 b!5819)))

(assert (=> bs!1116 (= (dynLambda!40 lambda!138) (foldRight1!3 (map!117 (toList!18 tree!30) lambda!140) lambda!139))))

(assert (=> bs!1116 m!8299))

(assert (=> bs!1116 m!8299))

(declare-fun m!8351 () Bool)

(assert (=> bs!1116 m!8351))

(assert (=> bs!1116 m!8351))

(declare-fun m!8353 () Bool)

(assert (=> bs!1116 m!8353))

(assert (=> (and b!5819 (= lambda!138 (y!397 thiss!1014)) d!4637) d!4639))

(declare-fun b_lambda!2653 () Bool)

(assert (= b_lambda!2649 (or (and b!5819 (= lambda!141 (evidence!69 thiss!1014))) (and b!5821 b_free!73) b_lambda!2653)))

(declare-fun bs!1117 () Bool)

(declare-fun d!4641 () Bool)

(assert (= bs!1117 (and d!4641 b!5819)))

(declare-fun toList_map_commutativity!0 (Tree!17 Int) Bool)

(assert (=> bs!1117 (= (dynLambda!41 lambda!141) (toList_map_commutativity!0 tree!30 lambda!140))))

(declare-fun m!8355 () Bool)

(assert (=> bs!1117 m!8355))

(assert (=> (and b!5819 (= lambda!141 (evidence!69 thiss!1014)) b!5850) d!4641))

(declare-fun b_lambda!2655 () Bool)

(assert (= b_lambda!2641 (or b!5837 b_lambda!2655)))

(declare-fun bs!1118 () Bool)

(declare-fun d!4643 () Bool)

(assert (= bs!1118 (and d!4643 b!5837)))

(assert (=> bs!1118 (= (dynLambda!38 lambda!147) (map!116 (right!255 tree!30) lambda!140))))

(declare-fun m!8357 () Bool)

(assert (=> bs!1118 m!8357))

(assert (=> b!5837 d!4643))

(declare-fun b_lambda!2657 () Bool)

(assert (= b_lambda!2643 (or b!5819 b_lambda!2657)))

(declare-fun bs!1119 () Bool)

(declare-fun d!4645 () Bool)

(assert (= bs!1119 (and d!4645 b!5819)))

(declare-fun fromParenthesis!0 (Parenthesis!6) Balance!9)

(assert (=> bs!1119 (= (dynLambda!39 lambda!140 (value!1259 tree!30)) (fromParenthesis!0 (value!1259 tree!30)))))

(declare-fun m!8359 () Bool)

(assert (=> bs!1119 m!8359))

(assert (=> b!5836 d!4645))

(declare-fun b_lambda!2659 () Bool)

(assert (= b_lambda!2639 (or b!5837 b_lambda!2659)))

(declare-fun bs!1120 () Bool)

(declare-fun d!4647 () Bool)

(assert (= bs!1120 (and d!4647 b!5837)))

(assert (=> bs!1120 (= (dynLambda!38 lambda!146) (map!116 (left!252 tree!30) lambda!140))))

(declare-fun m!8361 () Bool)

(assert (=> bs!1120 m!8361))

(assert (=> b!5837 d!4647))

(declare-fun b_lambda!2661 () Bool)

(assert (= b_lambda!2645 (or (and b!5819 (= lambda!138 (x!2978 thiss!1014))) (and b!5821 b_free!69) (and b!5821 b_free!71 (= (y!397 thiss!1014) (x!2978 thiss!1014))) b_lambda!2661)))

(declare-fun bs!1121 () Bool)

(declare-fun d!4649 () Bool)

(assert (= bs!1121 (and d!4649 b!5819)))

(assert (=> bs!1121 (= (dynLambda!40 lambda!138) (foldRight1!3 (map!117 (toList!18 tree!30) lambda!140) lambda!139))))

(assert (=> bs!1121 m!8299))

(assert (=> bs!1121 m!8299))

(assert (=> bs!1121 m!8351))

(assert (=> bs!1121 m!8351))

(assert (=> bs!1121 m!8353))

(assert (=> (and b!5819 (= lambda!138 (x!2978 thiss!1014)) d!4637) d!4649))

(push 1)

(assert (not b_next!87))

(assert (not b_lambda!2651))

(assert (not b!5847))

(assert b_and!969)

(assert (not d!4635))

(assert b_and!971)

(assert (not b_lambda!2657))

(assert (not bs!1116))

(assert (not b_lambda!2653))

(assert (not bs!1118))

(assert (not bs!1119))

(assert b_and!957)

(assert (not b_lambda!2661))

(assert (not bs!1117))

(assert (not d!4627))

(assert (not b_next!89))

(assert (not b_next!91))

(assert b_and!973)

(assert (not d!4631))

(assert (not b_lambda!2655))

(assert (not b_lambda!2659))

(assert (not b_next!95))

(assert (not bs!1121))

(assert (not b!5831))

(assert (not bs!1120))

(assert (not d!4633))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87))

(assert b_and!969)

(assert b_and!971)

(assert b_and!957)

(assert (not b_next!89))

(assert (not b_next!91))

(assert b_and!973)

(assert (not b_next!95))

(check-sat)

(pop 1)

