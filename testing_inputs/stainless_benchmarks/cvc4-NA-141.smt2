; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!786 () Bool)

(assert start!786)

(declare-fun res!1511 () Bool)

(declare-fun e!3267 () Bool)

(assert (=> start!786 (=> (not res!1511) (not e!3267))))

(declare-datatypes () ((Parenthesis!3 (CloseParenthesis!2) (OpenParenthesis!2))))

(declare-datatypes () ((Tree!12 (Branch!3 (left!237 Tree!12) (right!240 Tree!12)) (Leaf!85 (value!1254 Parenthesis!3)))))

(declare-fun tree!20 () Tree!12)

(declare-datatypes () ((List!96 (Nil!94) (Cons!93 (head!311 Parenthesis!3) (tail!323 List!96)))))

(declare-fun original_sequential_equivalence!0 (List!96) Bool)

(declare-fun toList!15 (Tree!12) List!96)

(assert (=> start!786 (= res!1511 (original_sequential_equivalence!0 (toList!15 tree!20)))))

(declare-datatypes () ((ProofOps!8 (ProofOps!9 (prop!101 Bool)))))

(declare-fun because!2 (ProofOps!8 Bool) Bool)

(declare-fun isMatched!0 (List!96) Bool)

(declare-fun isMatchedParallel!0 (Tree!12) Bool)

(assert (=> start!786 (not (because!2 (ProofOps!9 (= (isMatched!0 (toList!15 tree!20)) (isMatchedParallel!0 tree!20))) e!3267))))

(assert (=> start!786 true))

(declare-fun b!5652 () Bool)

(declare-fun res!1512 () Bool)

(assert (=> b!5652 (=> (not res!1512) (not e!3267))))

(declare-fun sequential_hybrid_equivalence!0 (List!96) Bool)

(assert (=> b!5652 (= res!1512 (sequential_hybrid_equivalence!0 (toList!15 tree!20)))))

(declare-fun b!5653 () Bool)

(declare-fun hybrid_parallel_equivalence!0 (Tree!12) Bool)

(assert (=> b!5653 (= e!3267 (hybrid_parallel_equivalence!0 tree!20))))

(assert (= (and start!786 res!1511) b!5652))

(assert (= (and b!5652 res!1512) b!5653))

(declare-fun m!8009 () Bool)

(assert (=> start!786 m!8009))

(declare-fun m!8011 () Bool)

(assert (=> start!786 m!8011))

(assert (=> start!786 m!8009))

(declare-fun m!8013 () Bool)

(assert (=> start!786 m!8013))

(assert (=> start!786 m!8009))

(declare-fun m!8015 () Bool)

(assert (=> start!786 m!8015))

(declare-fun m!8017 () Bool)

(assert (=> start!786 m!8017))

(assert (=> b!5652 m!8009))

(assert (=> b!5652 m!8009))

(declare-fun m!8019 () Bool)

(assert (=> b!5652 m!8019))

(declare-fun m!8021 () Bool)

(assert (=> b!5653 m!8021))

(push 1)

(assert (not b!5653))

(assert (not b!5652))

(assert (not start!786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4473 () Bool)

(declare-fun isMatchedHybid!0 (List!96) Bool)

(assert (=> d!4473 (because!2 (ProofOps!9 (= (isMatchedHybid!0 (toList!15 tree!20)) (isMatchedParallel!0 tree!20))) true)))

(declare-fun lambda!35 () Int)

(declare-fun lambda!36 () Int)

(declare-datatypes () ((Balance!5 (Balance!6 (extraOpen!43 Int) (extraClose!43 Int)))))

(declare-datatypes () ((List!97 (Nil!95) (Cons!94 (head!312 Balance!5) (tail!324 List!97)))))

(declare-fun foldRight1!1 (List!97 Int) Balance!5)

(declare-fun map!112 (List!96 Int) List!97)

(declare-datatypes () ((Tree!13 (Branch!4 (left!238 Tree!13) (right!241 Tree!13)) (Leaf!86 (value!1255 Balance!5)))))

(declare-fun fold!2 (Tree!13 Int) Balance!5)

(declare-fun map!113 (Tree!12 Int) Tree!13)

(assert (=> d!4473 (= (foldRight1!1 (map!112 (toList!15 tree!20) lambda!35) lambda!36) (fold!2 (map!113 tree!20 lambda!35) lambda!36))))

(assert (=> d!4473 (= (hybrid_parallel_equivalence!0 tree!20) true)))

(declare-fun bs!1054 () Bool)

(assert (= bs!1054 d!4473))

(assert (=> bs!1054 m!8009))

(declare-fun m!8023 () Bool)

(assert (=> bs!1054 m!8023))

(declare-fun m!8025 () Bool)

(assert (=> bs!1054 m!8025))

(declare-fun m!8027 () Bool)

(assert (=> bs!1054 m!8027))

(declare-fun m!8029 () Bool)

(assert (=> bs!1054 m!8029))

(assert (=> bs!1054 m!8009))

(declare-fun m!8031 () Bool)

(assert (=> bs!1054 m!8031))

(assert (=> bs!1054 m!8009))

(assert (=> bs!1054 m!8025))

(assert (=> bs!1054 m!8029))

(declare-fun m!8033 () Bool)

(assert (=> bs!1054 m!8033))

(assert (=> bs!1054 m!8011))

(assert (=> b!5653 d!4473))

(declare-fun bs!1055 () Bool)

(declare-fun d!4475 () Bool)

(assert (= bs!1055 (and d!4475 d!4473)))

(declare-fun lambda!44 () Int)

(assert (=> bs!1055 (= lambda!44 lambda!35)))

(declare-fun lambda!45 () Int)

(assert (=> bs!1055 (= lambda!45 lambda!36)))

(declare-fun isMatchedSequential!0 (List!96) Bool)

(assert (=> d!4475 (because!2 (ProofOps!9 (= (isMatchedSequential!0 (toList!15 tree!20)) (isMatchedHybid!0 (toList!15 tree!20)))) true)))

(declare-fun lambda!43 () Int)

(declare-fun foldRight!9 (List!96 Balance!5 Int) Balance!5)

(assert (=> d!4475 (= (foldRight!9 (toList!15 tree!20) (Balance!6 0 0) lambda!43) (foldRight1!1 (map!112 (toList!15 tree!20) lambda!44) lambda!45))))

(declare-fun isEmpty!94 (List!96) Bool)

(assert (=> d!4475 (not (isEmpty!94 (toList!15 tree!20)))))

(assert (=> d!4475 (= (sequential_hybrid_equivalence!0 (toList!15 tree!20)) true)))

(declare-fun bs!1056 () Bool)

(assert (= bs!1056 d!4475))

(assert (=> bs!1056 m!8009))

(declare-fun m!8035 () Bool)

(assert (=> bs!1056 m!8035))

(assert (=> bs!1056 m!8009))

(assert (=> bs!1056 m!8031))

(assert (=> bs!1056 m!8009))

(declare-fun m!8037 () Bool)

(assert (=> bs!1056 m!8037))

(declare-fun m!8039 () Bool)

(assert (=> bs!1056 m!8039))

(declare-fun m!8041 () Bool)

(assert (=> bs!1056 m!8041))

(assert (=> bs!1056 m!8009))

(declare-fun m!8043 () Bool)

(assert (=> bs!1056 m!8043))

(declare-fun m!8045 () Bool)

(assert (=> bs!1056 m!8045))

(assert (=> bs!1056 m!8009))

(assert (=> bs!1056 m!8039))

(assert (=> b!5652 d!4475))

(declare-fun d!4477 () Bool)

(declare-fun lt!1252 () List!96)

(assert (=> d!4477 (not (isEmpty!94 lt!1252))))

(declare-fun e!3270 () List!96)

(assert (=> d!4477 (= lt!1252 e!3270)))

(declare-fun c!2194 () Bool)

(assert (=> d!4477 (= c!2194 (is-Leaf!85 tree!20))))

(assert (=> d!4477 (= (toList!15 tree!20) lt!1252)))

(declare-fun b!5658 () Bool)

(assert (=> b!5658 (= e!3270 (Cons!93 (value!1254 tree!20) Nil!94))))

(declare-fun b!5659 () Bool)

(declare-fun append!33 (List!96 List!96) List!96)

(assert (=> b!5659 (= e!3270 (append!33 (toList!15 (left!237 tree!20)) (toList!15 (right!240 tree!20))))))

(assert (= (and d!4477 c!2194) b!5658))

(assert (= (and d!4477 (not c!2194)) b!5659))

(declare-fun m!8047 () Bool)

(assert (=> d!4477 m!8047))

(declare-fun m!8049 () Bool)

(assert (=> b!5659 m!8049))

(declare-fun m!8051 () Bool)

(assert (=> b!5659 m!8051))

(assert (=> b!5659 m!8049))

(assert (=> b!5659 m!8051))

(declare-fun m!8053 () Bool)

(assert (=> b!5659 m!8053))

(assert (=> b!5652 d!4477))

(declare-fun d!4479 () Bool)

(declare-fun original_sequential_helper!0 (List!96) Bool)

(assert (=> d!4479 (because!2 (ProofOps!9 (= (isMatched!0 (toList!15 tree!20)) (isMatchedSequential!0 (toList!15 tree!20)))) (original_sequential_helper!0 (toList!15 tree!20)))))

(assert (=> d!4479 (= (original_sequential_equivalence!0 (toList!15 tree!20)) true)))

(declare-fun bs!1057 () Bool)

(assert (= bs!1057 d!4479))

(assert (=> bs!1057 m!8009))

(assert (=> bs!1057 m!8015))

(assert (=> bs!1057 m!8009))

(assert (=> bs!1057 m!8043))

(assert (=> bs!1057 m!8009))

(declare-fun m!8055 () Bool)

(assert (=> bs!1057 m!8055))

(assert (=> bs!1057 m!8055))

(declare-fun m!8057 () Bool)

(assert (=> bs!1057 m!8057))

(assert (=> start!786 d!4479))

(declare-fun d!4481 () Bool)

(assert (=> d!4481 (= (because!2 (ProofOps!9 (= (isMatched!0 (toList!15 tree!20)) (isMatchedParallel!0 tree!20))) e!3267) (and e!3267 (prop!101 (ProofOps!9 (= (isMatched!0 (toList!15 tree!20)) (isMatchedParallel!0 tree!20))))))))

(assert (=> start!786 d!4481))

(declare-fun bs!1058 () Bool)

(declare-fun d!4483 () Bool)

(assert (= bs!1058 (and d!4483 d!4473)))

(declare-fun lambda!50 () Int)

(assert (=> bs!1058 (= lambda!50 lambda!35)))

(declare-fun bs!1059 () Bool)

(assert (= bs!1059 (and d!4483 d!4475)))

(assert (=> bs!1059 (= lambda!50 lambda!44)))

(declare-fun lambda!51 () Int)

(assert (=> bs!1058 (= lambda!51 lambda!36)))

(assert (=> bs!1059 (= lambda!51 lambda!45)))

(declare-fun isBalanced!0 (Balance!5) Bool)

(assert (=> d!4483 (= (isMatchedParallel!0 tree!20) (isBalanced!0 (fold!2 (map!113 tree!20 lambda!50) lambda!51)))))

(declare-fun bs!1060 () Bool)

(assert (= bs!1060 d!4483))

(declare-fun m!8059 () Bool)

(assert (=> bs!1060 m!8059))

(assert (=> bs!1060 m!8059))

(declare-fun m!8061 () Bool)

(assert (=> bs!1060 m!8061))

(assert (=> bs!1060 m!8061))

(declare-fun m!8063 () Bool)

(assert (=> bs!1060 m!8063))

(assert (=> start!786 d!4483))

(assert (=> start!786 d!4477))

(declare-fun d!4485 () Bool)

(declare-fun lambda!54 () Int)

(declare-fun foldRight!10 (List!96 Int Int) Int)

(assert (=> d!4485 (= (isMatched!0 (toList!15 tree!20)) (= (foldRight!10 (toList!15 tree!20) 0 lambda!54) 0))))

(declare-fun bs!1061 () Bool)

(assert (= bs!1061 d!4485))

(assert (=> bs!1061 m!8009))

(declare-fun m!8065 () Bool)

(assert (=> bs!1061 m!8065))

(assert (=> start!786 d!4485))

(push 1)

(assert (not d!4473))

(assert (not d!4477))

(assert (not d!4475))

(assert (not d!4479))

(assert (not b!5659))

(assert (not d!4483))

(assert (not d!4485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4487 () Bool)

(declare-fun c!2199 () Bool)

(assert (=> d!4487 (= c!2199 (is-Nil!94 (toList!15 tree!20)))))

(declare-fun e!3273 () Int)

(assert (=> d!4487 (= (foldRight!10 (toList!15 tree!20) 0 lambda!54) e!3273)))

(declare-fun b!5664 () Bool)

(assert (=> b!5664 (= e!3273 0)))

(declare-fun b!5665 () Bool)

(declare-fun dynLambda!18 (Int Parenthesis!3 Int) Int)

(assert (=> b!5665 (= e!3273 (dynLambda!18 lambda!54 (head!311 (toList!15 tree!20)) (foldRight!10 (tail!323 (toList!15 tree!20)) 0 lambda!54)))))

(assert (= (and d!4487 c!2199) b!5664))

(assert (= (and d!4487 (not c!2199)) b!5665))

(declare-fun b_lambda!2527 () Bool)

(assert (=> (not b_lambda!2527) (not b!5665)))

(declare-fun m!8067 () Bool)

(assert (=> b!5665 m!8067))

(assert (=> b!5665 m!8067))

(declare-fun m!8069 () Bool)

(assert (=> b!5665 m!8069))

(assert (=> d!4485 d!4487))

(declare-fun b!5671 () Bool)

(assert (=> b!5671 true))

(declare-fun order!11 () Int)

(declare-fun order!9 () Int)

(declare-fun lambda!59 () Int)

(declare-fun dynLambda!19 (Int Int) Int)

(declare-fun dynLambda!20 (Int Int) Int)

(assert (=> b!5671 (< (dynLambda!19 order!9 lambda!36) (dynLambda!20 order!11 lambda!59))))

(assert (=> b!5671 true))

(declare-fun lambda!60 () Int)

(assert (=> b!5671 (= (= (right!241 (map!113 tree!20 lambda!35)) (left!238 (map!113 tree!20 lambda!35))) (= lambda!60 lambda!59))))

(assert (=> b!5671 true))

(assert (=> b!5671 (< (dynLambda!19 order!9 lambda!36) (dynLambda!20 order!11 lambda!60))))

(assert (=> b!5671 true))

(declare-fun e!3292 () Balance!5)

(declare-datatypes () ((tuple2!18 (tuple2!19 (_1!9 Balance!5) (_2!9 Balance!5)))))

(declare-fun lt!1255 () tuple2!18)

(declare-fun dynLambda!21 (Int Balance!5 Balance!5) Balance!5)

(assert (=> b!5671 (= e!3292 (dynLambda!21 lambda!36 (_1!9 lt!1255) (_2!9 lt!1255)))))

(declare-fun dynLambda!22 (Int) Balance!5)

(assert (=> b!5671 (= lt!1255 (tuple2!19 (dynLambda!22 lambda!59) (dynLambda!22 lambda!60)))))

(declare-fun d!4489 () Bool)

(declare-fun c!2202 () Bool)

(assert (=> d!4489 (= c!2202 (is-Leaf!86 (map!113 tree!20 lambda!35)))))

(assert (=> d!4489 (= (fold!2 (map!113 tree!20 lambda!35) lambda!36) e!3292)))

(declare-fun b!5670 () Bool)

(assert (=> b!5670 (= e!3292 (value!1255 (map!113 tree!20 lambda!35)))))

(assert (= (and d!4489 c!2202) b!5670))

(assert (= (and d!4489 (not c!2202)) b!5671))

(declare-fun b_lambda!2529 () Bool)

(assert (=> (not b_lambda!2529) (not b!5671)))

(declare-fun b_lambda!2531 () Bool)

(assert (=> (not b_lambda!2531) (not b!5671)))

(declare-fun b_lambda!2533 () Bool)

(assert (=> (not b_lambda!2533) (not b!5671)))

(declare-fun m!8071 () Bool)

(assert (=> b!5671 m!8071))

(declare-fun m!8073 () Bool)

(assert (=> b!5671 m!8073))

(declare-fun m!8075 () Bool)

(assert (=> b!5671 m!8075))

(assert (=> d!4473 d!4489))

(declare-fun b!5681 () Bool)

(assert (=> b!5681 true))

(declare-fun order!15 () Int)

(declare-fun order!13 () Int)

(declare-fun lambda!65 () Int)

(declare-fun dynLambda!23 (Int Int) Int)

(declare-fun dynLambda!24 (Int Int) Int)

(assert (=> b!5681 (< (dynLambda!23 order!13 lambda!35) (dynLambda!24 order!15 lambda!65))))

(assert (=> b!5681 true))

(declare-fun lambda!66 () Int)

(assert (=> b!5681 (= (= (right!240 tree!20) (left!237 tree!20)) (= lambda!66 lambda!65))))

(assert (=> b!5681 true))

(assert (=> b!5681 (< (dynLambda!23 order!13 lambda!35) (dynLambda!24 order!15 lambda!66))))

(assert (=> b!5681 true))

(declare-fun e!3311 () Tree!13)

(declare-datatypes () ((tuple2!20 (tuple2!21 (_1!10 Tree!13) (_2!10 Tree!13)))))

(declare-fun lt!1258 () tuple2!20)

(assert (=> b!5681 (= e!3311 (Branch!4 (_1!10 lt!1258) (_2!10 lt!1258)))))

(declare-fun dynLambda!25 (Int) Tree!13)

(assert (=> b!5681 (= lt!1258 (tuple2!21 (dynLambda!25 lambda!65) (dynLambda!25 lambda!66)))))

(declare-fun d!4491 () Bool)

(declare-fun c!2205 () Bool)

(assert (=> d!4491 (= c!2205 (is-Leaf!85 tree!20))))

(assert (=> d!4491 (= (map!113 tree!20 lambda!35) e!3311)))

(declare-fun b!5680 () Bool)

(declare-fun dynLambda!26 (Int Parenthesis!3) Balance!5)

(assert (=> b!5680 (= e!3311 (Leaf!86 (dynLambda!26 lambda!35 (value!1254 tree!20))))))

(assert (= (and d!4491 c!2205) b!5680))

(assert (= (and d!4491 (not c!2205)) b!5681))

(declare-fun b_lambda!2535 () Bool)

(assert (=> (not b_lambda!2535) (not b!5681)))

(declare-fun b_lambda!2537 () Bool)

(assert (=> (not b_lambda!2537) (not b!5681)))

(declare-fun b_lambda!2539 () Bool)

(assert (=> (not b_lambda!2539) (not b!5680)))

(declare-fun m!8077 () Bool)

(assert (=> b!5681 m!8077))

(declare-fun m!8079 () Bool)

(assert (=> b!5681 m!8079))

(declare-fun m!8081 () Bool)

(assert (=> b!5680 m!8081))

(assert (=> d!4473 d!4491))

(declare-fun d!4493 () Bool)

(declare-fun c!2208 () Bool)

(assert (=> d!4493 (= c!2208 (and (is-Cons!94 (map!112 (toList!15 tree!20) lambda!35)) (is-Nil!95 (tail!324 (map!112 (toList!15 tree!20) lambda!35)))))))

(declare-fun e!3314 () Balance!5)

(assert (=> d!4493 (= (foldRight1!1 (map!112 (toList!15 tree!20) lambda!35) lambda!36) e!3314)))

(declare-fun b!5690 () Bool)

(assert (=> b!5690 (= e!3314 (head!312 (map!112 (toList!15 tree!20) lambda!35)))))

(declare-fun b!5691 () Bool)

(assert (=> b!5691 (= e!3314 (dynLambda!21 lambda!36 (head!312 (map!112 (toList!15 tree!20) lambda!35)) (foldRight1!1 (tail!324 (map!112 (toList!15 tree!20) lambda!35)) lambda!36)))))

(assert (= (and d!4493 c!2208) b!5690))

(assert (= (and d!4493 (not c!2208)) b!5691))

(declare-fun b_lambda!2541 () Bool)

(assert (=> (not b_lambda!2541) (not b!5691)))

(declare-fun m!8083 () Bool)

(assert (=> b!5691 m!8083))

(assert (=> b!5691 m!8083))

(declare-fun m!8085 () Bool)

(assert (=> b!5691 m!8085))

(assert (=> d!4473 d!4493))

(declare-fun d!4495 () Bool)

(assert (=> d!4495 (= (because!2 (ProofOps!9 (= (isMatchedHybid!0 (toList!15 tree!20)) (isMatchedParallel!0 tree!20))) true) (prop!101 (ProofOps!9 (= (isMatchedHybid!0 (toList!15 tree!20)) (isMatchedParallel!0 tree!20)))))))

(assert (=> d!4473 d!4495))

(declare-fun d!4497 () Bool)

(declare-fun c!2211 () Bool)

(assert (=> d!4497 (= c!2211 (is-Nil!94 (toList!15 tree!20)))))

(declare-fun e!3317 () List!97)

(assert (=> d!4497 (= (map!112 (toList!15 tree!20) lambda!35) e!3317)))

(declare-fun b!5696 () Bool)

(assert (=> b!5696 (= e!3317 Nil!95)))

(declare-fun b!5697 () Bool)

(assert (=> b!5697 (= e!3317 (Cons!94 (dynLambda!26 lambda!35 (head!311 (toList!15 tree!20))) (map!112 (tail!323 (toList!15 tree!20)) lambda!35)))))

(assert (= (and d!4497 c!2211) b!5696))

(assert (= (and d!4497 (not c!2211)) b!5697))

(declare-fun b_lambda!2543 () Bool)

(assert (=> (not b_lambda!2543) (not b!5697)))

(declare-fun m!8087 () Bool)

(assert (=> b!5697 m!8087))

(declare-fun m!8089 () Bool)

(assert (=> b!5697 m!8089))

(assert (=> d!4473 d!4497))

(assert (=> d!4473 d!4483))

(assert (=> d!4473 d!4477))

(declare-fun bs!1062 () Bool)

(declare-fun d!4499 () Bool)

(assert (= bs!1062 (and d!4499 d!4473)))

(declare-fun lambda!71 () Int)

(assert (=> bs!1062 (= lambda!71 lambda!35)))

(declare-fun bs!1063 () Bool)

(assert (= bs!1063 (and d!4499 d!4475)))

(assert (=> bs!1063 (= lambda!71 lambda!44)))

(declare-fun bs!1064 () Bool)

(assert (= bs!1064 (and d!4499 d!4483)))

(assert (=> bs!1064 (= lambda!71 lambda!50)))

(declare-fun lambda!72 () Int)

(assert (=> bs!1062 (= lambda!72 lambda!36)))

(assert (=> bs!1063 (= lambda!72 lambda!45)))

(assert (=> bs!1064 (= lambda!72 lambda!51)))

(assert (=> d!4499 (= (isMatchedHybid!0 (toList!15 tree!20)) (isBalanced!0 (foldRight1!1 (map!112 (toList!15 tree!20) lambda!71) lambda!72)))))

(declare-fun bs!1065 () Bool)

(assert (= bs!1065 d!4499))

(assert (=> bs!1065 m!8009))

(declare-fun m!8091 () Bool)

(assert (=> bs!1065 m!8091))

(assert (=> bs!1065 m!8091))

(declare-fun m!8093 () Bool)

(assert (=> bs!1065 m!8093))

(assert (=> bs!1065 m!8093))

(declare-fun m!8095 () Bool)

(assert (=> bs!1065 m!8095))

(assert (=> d!4473 d!4499))

(declare-fun d!4501 () Bool)

(declare-fun c!2212 () Bool)

(assert (=> d!4501 (= c!2212 (and (is-Cons!94 (map!112 (toList!15 tree!20) lambda!44)) (is-Nil!95 (tail!324 (map!112 (toList!15 tree!20) lambda!44)))))))

(declare-fun e!3318 () Balance!5)

(assert (=> d!4501 (= (foldRight1!1 (map!112 (toList!15 tree!20) lambda!44) lambda!45) e!3318)))

(declare-fun b!5698 () Bool)

(assert (=> b!5698 (= e!3318 (head!312 (map!112 (toList!15 tree!20) lambda!44)))))

(declare-fun b!5699 () Bool)

(assert (=> b!5699 (= e!3318 (dynLambda!21 lambda!45 (head!312 (map!112 (toList!15 tree!20) lambda!44)) (foldRight1!1 (tail!324 (map!112 (toList!15 tree!20) lambda!44)) lambda!45)))))

(assert (= (and d!4501 c!2212) b!5698))

(assert (= (and d!4501 (not c!2212)) b!5699))

(declare-fun b_lambda!2545 () Bool)

(assert (=> (not b_lambda!2545) (not b!5699)))

(declare-fun m!8097 () Bool)

(assert (=> b!5699 m!8097))

(assert (=> b!5699 m!8097))

(declare-fun m!8099 () Bool)

(assert (=> b!5699 m!8099))

(assert (=> d!4475 d!4501))

(declare-fun bs!1066 () Bool)

(declare-fun d!4503 () Bool)

(assert (= bs!1066 (and d!4503 d!4475)))

(declare-fun lambda!75 () Int)

(assert (=> bs!1066 (= lambda!75 lambda!43)))

(assert (=> d!4503 (= (isMatchedSequential!0 (toList!15 tree!20)) (isBalanced!0 (foldRight!9 (toList!15 tree!20) (Balance!6 0 0) lambda!75)))))

(declare-fun bs!1067 () Bool)

(assert (= bs!1067 d!4503))

(assert (=> bs!1067 m!8009))

(declare-fun m!8101 () Bool)

(assert (=> bs!1067 m!8101))

(assert (=> bs!1067 m!8101))

(declare-fun m!8103 () Bool)

(assert (=> bs!1067 m!8103))

(assert (=> d!4475 d!4503))

(declare-fun d!4505 () Bool)

(declare-fun c!2213 () Bool)

(assert (=> d!4505 (= c!2213 (is-Nil!94 (toList!15 tree!20)))))

(declare-fun e!3319 () List!97)

(assert (=> d!4505 (= (map!112 (toList!15 tree!20) lambda!44) e!3319)))

(declare-fun b!5700 () Bool)

(assert (=> b!5700 (= e!3319 Nil!95)))

(declare-fun b!5701 () Bool)

(assert (=> b!5701 (= e!3319 (Cons!94 (dynLambda!26 lambda!44 (head!311 (toList!15 tree!20))) (map!112 (tail!323 (toList!15 tree!20)) lambda!44)))))

(assert (= (and d!4505 c!2213) b!5700))

(assert (= (and d!4505 (not c!2213)) b!5701))

(declare-fun b_lambda!2547 () Bool)

(assert (=> (not b_lambda!2547) (not b!5701)))

(declare-fun m!8105 () Bool)

(assert (=> b!5701 m!8105))

(declare-fun m!8107 () Bool)

(assert (=> b!5701 m!8107))

(assert (=> d!4475 d!4505))

(declare-fun d!4507 () Bool)

(assert (=> d!4507 (= (because!2 (ProofOps!9 (= (isMatchedSequential!0 (toList!15 tree!20)) (isMatchedHybid!0 (toList!15 tree!20)))) true) (prop!101 (ProofOps!9 (= (isMatchedSequential!0 (toList!15 tree!20)) (isMatchedHybid!0 (toList!15 tree!20))))))))

(assert (=> d!4475 d!4507))

(declare-fun d!4509 () Bool)

(assert (=> d!4509 (= (isEmpty!94 (toList!15 tree!20)) (is-Nil!94 (toList!15 tree!20)))))

(assert (=> d!4475 d!4509))

(assert (=> d!4475 d!4499))

(declare-fun d!4511 () Bool)

(declare-fun c!2216 () Bool)

(assert (=> d!4511 (= c!2216 (is-Nil!94 (toList!15 tree!20)))))

(declare-fun e!3322 () Balance!5)

(assert (=> d!4511 (= (foldRight!9 (toList!15 tree!20) (Balance!6 0 0) lambda!43) e!3322)))

(declare-fun b!5706 () Bool)

(assert (=> b!5706 (= e!3322 (Balance!6 0 0))))

(declare-fun b!5707 () Bool)

(declare-fun dynLambda!27 (Int Parenthesis!3 Balance!5) Balance!5)

(assert (=> b!5707 (= e!3322 (dynLambda!27 lambda!43 (head!311 (toList!15 tree!20)) (foldRight!9 (tail!323 (toList!15 tree!20)) (Balance!6 0 0) lambda!43)))))

(assert (= (and d!4511 c!2216) b!5706))

(assert (= (and d!4511 (not c!2216)) b!5707))

(declare-fun b_lambda!2549 () Bool)

(assert (=> (not b_lambda!2549) (not b!5707)))

(declare-fun m!8109 () Bool)

(assert (=> b!5707 m!8109))

(assert (=> b!5707 m!8109))

(declare-fun m!8111 () Bool)

(assert (=> b!5707 m!8111))

(assert (=> d!4475 d!4511))

(declare-fun d!4513 () Bool)

(declare-fun c!2219 () Bool)

(assert (=> d!4513 (= c!2219 (is-Nil!94 (toList!15 (left!237 tree!20))))))

(declare-fun e!3325 () List!96)

(assert (=> d!4513 (= (append!33 (toList!15 (left!237 tree!20)) (toList!15 (right!240 tree!20))) e!3325)))

(declare-fun b!5712 () Bool)

(assert (=> b!5712 (= e!3325 (toList!15 (right!240 tree!20)))))

(declare-fun b!5713 () Bool)

(assert (=> b!5713 (= e!3325 (Cons!93 (head!311 (toList!15 (left!237 tree!20))) (append!33 (tail!323 (toList!15 (left!237 tree!20))) (toList!15 (right!240 tree!20)))))))

(assert (= (and d!4513 c!2219) b!5712))

(assert (= (and d!4513 (not c!2219)) b!5713))

(assert (=> b!5713 m!8051))

(declare-fun m!8113 () Bool)

(assert (=> b!5713 m!8113))

(assert (=> b!5659 d!4513))

(declare-fun d!4515 () Bool)

(declare-fun lt!1259 () List!96)

(assert (=> d!4515 (not (isEmpty!94 lt!1259))))

(declare-fun e!3326 () List!96)

(assert (=> d!4515 (= lt!1259 e!3326)))

(declare-fun c!2220 () Bool)

(assert (=> d!4515 (= c!2220 (is-Leaf!85 (left!237 tree!20)))))

(assert (=> d!4515 (= (toList!15 (left!237 tree!20)) lt!1259)))

(declare-fun b!5714 () Bool)

(assert (=> b!5714 (= e!3326 (Cons!93 (value!1254 (left!237 tree!20)) Nil!94))))

(declare-fun b!5715 () Bool)

(assert (=> b!5715 (= e!3326 (append!33 (toList!15 (left!237 (left!237 tree!20))) (toList!15 (right!240 (left!237 tree!20)))))))

(assert (= (and d!4515 c!2220) b!5714))

(assert (= (and d!4515 (not c!2220)) b!5715))

(declare-fun m!8115 () Bool)

(assert (=> d!4515 m!8115))

(declare-fun m!8117 () Bool)

(assert (=> b!5715 m!8117))

(declare-fun m!8119 () Bool)

(assert (=> b!5715 m!8119))

(assert (=> b!5715 m!8117))

(assert (=> b!5715 m!8119))

(declare-fun m!8121 () Bool)

(assert (=> b!5715 m!8121))

(assert (=> b!5659 d!4515))

(declare-fun d!4517 () Bool)

(declare-fun lt!1260 () List!96)

(assert (=> d!4517 (not (isEmpty!94 lt!1260))))

(declare-fun e!3327 () List!96)

(assert (=> d!4517 (= lt!1260 e!3327)))

(declare-fun c!2221 () Bool)

(assert (=> d!4517 (= c!2221 (is-Leaf!85 (right!240 tree!20)))))

(assert (=> d!4517 (= (toList!15 (right!240 tree!20)) lt!1260)))

(declare-fun b!5716 () Bool)

(assert (=> b!5716 (= e!3327 (Cons!93 (value!1254 (right!240 tree!20)) Nil!94))))

(declare-fun b!5717 () Bool)

(assert (=> b!5717 (= e!3327 (append!33 (toList!15 (left!237 (right!240 tree!20))) (toList!15 (right!240 (right!240 tree!20)))))))

(assert (= (and d!4517 c!2221) b!5716))

(assert (= (and d!4517 (not c!2221)) b!5717))

(declare-fun m!8123 () Bool)

(assert (=> d!4517 m!8123))

(declare-fun m!8125 () Bool)

(assert (=> b!5717 m!8125))

(declare-fun m!8127 () Bool)

(assert (=> b!5717 m!8127))

(assert (=> b!5717 m!8125))

(assert (=> b!5717 m!8127))

(declare-fun m!8129 () Bool)

(assert (=> b!5717 m!8129))

(assert (=> b!5659 d!4517))

(declare-fun d!4519 () Bool)

(assert (=> d!4519 (= (isBalanced!0 (fold!2 (map!113 tree!20 lambda!50) lambda!51)) (and (= (extraOpen!43 (fold!2 (map!113 tree!20 lambda!50) lambda!51)) 0) (= (extraClose!43 (fold!2 (map!113 tree!20 lambda!50) lambda!51)) 0)))))

(assert (=> d!4483 d!4519))

(declare-fun bs!1068 () Bool)

(declare-fun b!5719 () Bool)

(assert (= bs!1068 (and b!5719 b!5671)))

(declare-fun lambda!76 () Int)

(assert (=> bs!1068 (= (and (= (left!238 (map!113 tree!20 lambda!50)) (left!238 (map!113 tree!20 lambda!35))) (= lambda!51 lambda!36)) (= lambda!76 lambda!59))))

(assert (=> bs!1068 (= (and (= (left!238 (map!113 tree!20 lambda!50)) (right!241 (map!113 tree!20 lambda!35))) (= lambda!51 lambda!36)) (= lambda!76 lambda!60))))

(assert (=> b!5719 true))

(assert (=> b!5719 (< (dynLambda!19 order!9 lambda!51) (dynLambda!20 order!11 lambda!76))))

(assert (=> b!5719 true))

(declare-fun lambda!77 () Int)

(assert (=> bs!1068 (= (and (= (right!241 (map!113 tree!20 lambda!50)) (left!238 (map!113 tree!20 lambda!35))) (= lambda!51 lambda!36)) (= lambda!77 lambda!59))))

(assert (=> bs!1068 (= (and (= (right!241 (map!113 tree!20 lambda!50)) (right!241 (map!113 tree!20 lambda!35))) (= lambda!51 lambda!36)) (= lambda!77 lambda!60))))

(assert (=> b!5719 (= (= (right!241 (map!113 tree!20 lambda!50)) (left!238 (map!113 tree!20 lambda!50))) (= lambda!77 lambda!76))))

(assert (=> b!5719 true))

(assert (=> b!5719 (< (dynLambda!19 order!9 lambda!51) (dynLambda!20 order!11 lambda!77))))

(assert (=> b!5719 true))

(declare-fun e!3328 () Balance!5)

(declare-fun lt!1261 () tuple2!18)

(assert (=> b!5719 (= e!3328 (dynLambda!21 lambda!51 (_1!9 lt!1261) (_2!9 lt!1261)))))

(assert (=> b!5719 (= lt!1261 (tuple2!19 (dynLambda!22 lambda!76) (dynLambda!22 lambda!77)))))

(declare-fun d!4521 () Bool)

(declare-fun c!2222 () Bool)

(assert (=> d!4521 (= c!2222 (is-Leaf!86 (map!113 tree!20 lambda!50)))))

(assert (=> d!4521 (= (fold!2 (map!113 tree!20 lambda!50) lambda!51) e!3328)))

(declare-fun b!5718 () Bool)

(assert (=> b!5718 (= e!3328 (value!1255 (map!113 tree!20 lambda!50)))))

(assert (= (and d!4521 c!2222) b!5718))

(assert (= (and d!4521 (not c!2222)) b!5719))

(declare-fun b_lambda!2551 () Bool)

(assert (=> (not b_lambda!2551) (not b!5719)))

(declare-fun b_lambda!2553 () Bool)

(assert (=> (not b_lambda!2553) (not b!5719)))

(declare-fun b_lambda!2555 () Bool)

(assert (=> (not b_lambda!2555) (not b!5719)))

(declare-fun m!8131 () Bool)

(assert (=> b!5719 m!8131))

(declare-fun m!8133 () Bool)

(assert (=> b!5719 m!8133))

(declare-fun m!8135 () Bool)

(assert (=> b!5719 m!8135))

(assert (=> d!4483 d!4521))

(declare-fun bs!1069 () Bool)

(declare-fun b!5721 () Bool)

(assert (= bs!1069 (and b!5721 b!5681)))

(declare-fun lambda!78 () Int)

(assert (=> bs!1069 (= (= lambda!50 lambda!35) (= lambda!78 lambda!65))))

(assert (=> bs!1069 (= (and (= (left!237 tree!20) (right!240 tree!20)) (= lambda!50 lambda!35)) (= lambda!78 lambda!66))))

(assert (=> b!5721 true))

(assert (=> b!5721 (< (dynLambda!23 order!13 lambda!50) (dynLambda!24 order!15 lambda!78))))

(assert (=> b!5721 true))

(declare-fun lambda!79 () Int)

(assert (=> bs!1069 (= (and (= (right!240 tree!20) (left!237 tree!20)) (= lambda!50 lambda!35)) (= lambda!79 lambda!65))))

(assert (=> bs!1069 (= (= lambda!50 lambda!35) (= lambda!79 lambda!66))))

(assert (=> b!5721 (= (= (right!240 tree!20) (left!237 tree!20)) (= lambda!79 lambda!78))))

(assert (=> b!5721 true))

(assert (=> b!5721 (< (dynLambda!23 order!13 lambda!50) (dynLambda!24 order!15 lambda!79))))

(assert (=> b!5721 true))

(declare-fun e!3329 () Tree!13)

(declare-fun lt!1262 () tuple2!20)

(assert (=> b!5721 (= e!3329 (Branch!4 (_1!10 lt!1262) (_2!10 lt!1262)))))

(assert (=> b!5721 (= lt!1262 (tuple2!21 (dynLambda!25 lambda!78) (dynLambda!25 lambda!79)))))

(declare-fun d!4523 () Bool)

(declare-fun c!2223 () Bool)

(assert (=> d!4523 (= c!2223 (is-Leaf!85 tree!20))))

(assert (=> d!4523 (= (map!113 tree!20 lambda!50) e!3329)))

(declare-fun b!5720 () Bool)

(assert (=> b!5720 (= e!3329 (Leaf!86 (dynLambda!26 lambda!50 (value!1254 tree!20))))))

(assert (= (and d!4523 c!2223) b!5720))

(assert (= (and d!4523 (not c!2223)) b!5721))

(declare-fun b_lambda!2557 () Bool)

(assert (=> (not b_lambda!2557) (not b!5721)))

(declare-fun b_lambda!2559 () Bool)

(assert (=> (not b_lambda!2559) (not b!5721)))

(declare-fun b_lambda!2561 () Bool)

(assert (=> (not b_lambda!2561) (not b!5720)))

(declare-fun m!8137 () Bool)

(assert (=> b!5721 m!8137))

(declare-fun m!8139 () Bool)

(assert (=> b!5721 m!8139))

(declare-fun m!8141 () Bool)

(assert (=> b!5720 m!8141))

(assert (=> d!4483 d!4523))

(declare-fun d!4525 () Bool)

(assert (=> d!4525 (= (isEmpty!94 lt!1252) (is-Nil!94 lt!1252))))

(assert (=> d!4477 d!4525))

(declare-fun d!4527 () Bool)

(assert (=> d!4527 (= (because!2 (ProofOps!9 (= (isMatched!0 (toList!15 tree!20)) (isMatchedSequential!0 (toList!15 tree!20)))) (original_sequential_helper!0 (toList!15 tree!20))) (and (original_sequential_helper!0 (toList!15 tree!20)) (prop!101 (ProofOps!9 (= (isMatched!0 (toList!15 tree!20)) (isMatchedSequential!0 (toList!15 tree!20)))))))))

(assert (=> d!4479 d!4527))

(assert (=> d!4479 d!4485))

(assert (=> d!4479 d!4503))

(declare-fun bs!1070 () Bool)

(declare-fun d!4529 () Bool)

(assert (= bs!1070 (and d!4529 d!4475)))

(declare-fun lambda!86 () Int)

(assert (=> bs!1070 (= lambda!86 lambda!43)))

(declare-fun bs!1071 () Bool)

(assert (= bs!1071 (and d!4529 d!4503)))

(assert (=> bs!1071 (= lambda!86 lambda!75)))

(declare-fun bs!1072 () Bool)

(assert (= bs!1072 (and d!4529 d!4485)))

(declare-fun lambda!87 () Int)

(assert (=> bs!1072 (= lambda!87 lambda!54)))

(declare-fun b!5732 () Bool)

(declare-fun e!3337 () Bool)

(declare-fun e!3338 () Bool)

(assert (=> b!5732 (= e!3337 e!3338)))

(declare-fun res!1522 () Bool)

(assert (=> b!5732 (=> (not res!1522) (not e!3338))))

(assert (=> b!5732 (= res!1522 (original_sequential_helper!0 (tail!323 (toList!15 tree!20))))))

(declare-fun b!5733 () Bool)

(assert (=> b!5733 (= e!3338 true)))

(declare-fun lt!1268 () Balance!5)

(declare-fun lt!1267 () Int)

(declare-fun balanceToCounter!0 (Balance!5) Int)

(assert (=> b!5733 (= (balanceToCounter!0 lt!1268) lt!1267)))

(declare-fun b!5734 () Bool)

(declare-fun res!1521 () Bool)

(assert (=> b!5734 (=> (not res!1521) (not e!3338))))

(declare-fun nonNegative!0 (Balance!5) Bool)

(assert (=> b!5734 (= res!1521 (nonNegative!0 (foldRight!9 (tail!323 (toList!15 tree!20)) (Balance!6 0 0) lambda!86)))))

(declare-fun b!5735 () Bool)

(declare-fun e!3336 () Bool)

(assert (=> b!5735 (= e!3336 (nonNegative!0 lt!1268))))

(declare-fun b!5736 () Bool)

(assert (=> b!5736 (= e!3337 true)))

(assert (=> d!4529 (because!2 (ProofOps!9 e!3336) e!3337)))

(declare-fun c!2228 () Bool)

(assert (=> d!4529 (= c!2228 (is-Nil!94 (toList!15 tree!20)))))

(declare-fun res!1520 () Bool)

(assert (=> d!4529 (=> (not res!1520) (not e!3336))))

(assert (=> d!4529 (= res!1520 (= (balanceToCounter!0 lt!1268) lt!1267))))

(assert (=> d!4529 (= lt!1267 (foldRight!10 (toList!15 tree!20) 0 lambda!87))))

(assert (=> d!4529 (= lt!1268 (foldRight!9 (toList!15 tree!20) (Balance!6 0 0) lambda!86))))

(assert (=> d!4529 (= (original_sequential_helper!0 (toList!15 tree!20)) true)))

(assert (= (and d!4529 res!1520) b!5735))

(assert (= (and b!5732 res!1522) b!5734))

(assert (= (and b!5734 res!1521) b!5733))

(assert (= (and d!4529 c!2228) b!5736))

(assert (= (and d!4529 (not c!2228)) b!5732))

(declare-fun m!8143 () Bool)

(assert (=> b!5734 m!8143))

(assert (=> b!5734 m!8143))

(declare-fun m!8145 () Bool)

(assert (=> b!5734 m!8145))

(declare-fun m!8147 () Bool)

(assert (=> d!4529 m!8147))

(declare-fun m!8149 () Bool)

(assert (=> d!4529 m!8149))

(assert (=> d!4529 m!8009))

(declare-fun m!8151 () Bool)

(assert (=> d!4529 m!8151))

(assert (=> d!4529 m!8009))

(declare-fun m!8153 () Bool)

(assert (=> d!4529 m!8153))

(declare-fun m!8155 () Bool)

(assert (=> b!5732 m!8155))

(assert (=> b!5733 m!8149))

(declare-fun m!8157 () Bool)

(assert (=> b!5735 m!8157))

(assert (=> d!4479 d!4529))

(declare-fun b_lambda!2563 () Bool)

(assert (= b_lambda!2553 (or b!5719 b_lambda!2563)))

(declare-fun bs!1073 () Bool)

(declare-fun d!4531 () Bool)

(assert (= bs!1073 (and d!4531 b!5719)))

(assert (=> bs!1073 (= (dynLambda!22 lambda!76) (fold!2 (left!238 (map!113 tree!20 lambda!50)) lambda!51))))

(declare-fun m!8159 () Bool)

(assert (=> bs!1073 m!8159))

(assert (=> b!5719 d!4531))

(declare-fun b_lambda!2565 () Bool)

(assert (= b_lambda!2541 (or d!4473 b_lambda!2565)))

(declare-fun bs!1074 () Bool)

(declare-fun d!4533 () Bool)

(assert (= bs!1074 (and d!4533 d!4473)))

(declare-fun ++!3 (Balance!5 Balance!5) Balance!5)

(assert (=> bs!1074 (= (dynLambda!21 lambda!36 (head!312 (map!112 (toList!15 tree!20) lambda!35)) (foldRight1!1 (tail!324 (map!112 (toList!15 tree!20) lambda!35)) lambda!36)) (++!3 (head!312 (map!112 (toList!15 tree!20) lambda!35)) (foldRight1!1 (tail!324 (map!112 (toList!15 tree!20) lambda!35)) lambda!36)))))

(assert (=> bs!1074 m!8083))

(declare-fun m!8161 () Bool)

(assert (=> bs!1074 m!8161))

(assert (=> b!5691 d!4533))

(declare-fun b_lambda!2567 () Bool)

(assert (= b_lambda!2527 (or d!4485 b_lambda!2567)))

(declare-fun bs!1075 () Bool)

(declare-fun d!4535 () Bool)

(assert (= bs!1075 (and d!4535 d!4485)))

(declare-fun updateCounter!0 (Parenthesis!3 Int) Int)

(assert (=> bs!1075 (= (dynLambda!18 lambda!54 (head!311 (toList!15 tree!20)) (foldRight!10 (tail!323 (toList!15 tree!20)) 0 lambda!54)) (updateCounter!0 (head!311 (toList!15 tree!20)) (foldRight!10 (tail!323 (toList!15 tree!20)) 0 lambda!54)))))

(assert (=> bs!1075 m!8067))

(declare-fun m!8163 () Bool)

(assert (=> bs!1075 m!8163))

(assert (=> b!5665 d!4535))

(declare-fun b_lambda!2569 () Bool)

(assert (= b_lambda!2555 (or b!5719 b_lambda!2569)))

(declare-fun bs!1076 () Bool)

(declare-fun d!4537 () Bool)

(assert (= bs!1076 (and d!4537 b!5719)))

(assert (=> bs!1076 (= (dynLambda!22 lambda!77) (fold!2 (right!241 (map!113 tree!20 lambda!50)) lambda!51))))

(declare-fun m!8165 () Bool)

(assert (=> bs!1076 m!8165))

(assert (=> b!5719 d!4537))

(declare-fun b_lambda!2571 () Bool)

(assert (= b_lambda!2545 (or d!4475 b_lambda!2571)))

(declare-fun bs!1077 () Bool)

(declare-fun d!4539 () Bool)

(assert (= bs!1077 (and d!4539 d!4475)))

(assert (=> bs!1077 (= (dynLambda!21 lambda!45 (head!312 (map!112 (toList!15 tree!20) lambda!44)) (foldRight1!1 (tail!324 (map!112 (toList!15 tree!20) lambda!44)) lambda!45)) (++!3 (head!312 (map!112 (toList!15 tree!20) lambda!44)) (foldRight1!1 (tail!324 (map!112 (toList!15 tree!20) lambda!44)) lambda!45)))))

(assert (=> bs!1077 m!8097))

(declare-fun m!8167 () Bool)

(assert (=> bs!1077 m!8167))

(assert (=> b!5699 d!4539))

(declare-fun b_lambda!2573 () Bool)

(assert (= b_lambda!2557 (or b!5721 b_lambda!2573)))

(declare-fun bs!1078 () Bool)

(declare-fun d!4541 () Bool)

(assert (= bs!1078 (and d!4541 b!5721)))

(assert (=> bs!1078 (= (dynLambda!25 lambda!78) (map!113 (left!237 tree!20) lambda!50))))

(declare-fun m!8169 () Bool)

(assert (=> bs!1078 m!8169))

(assert (=> b!5721 d!4541))

(declare-fun b_lambda!2575 () Bool)

(assert (= b_lambda!2539 (or d!4473 b_lambda!2575)))

(declare-fun bs!1079 () Bool)

(declare-fun d!4543 () Bool)

(assert (= bs!1079 (and d!4543 d!4473)))

(declare-fun fromParenthesis!0 (Parenthesis!3) Balance!5)

(assert (=> bs!1079 (= (dynLambda!26 lambda!35 (value!1254 tree!20)) (fromParenthesis!0 (value!1254 tree!20)))))

(declare-fun m!8171 () Bool)

(assert (=> bs!1079 m!8171))

(assert (=> b!5680 d!4543))

(declare-fun b_lambda!2577 () Bool)

(assert (= b_lambda!2531 (or b!5671 b_lambda!2577)))

(declare-fun bs!1080 () Bool)

(declare-fun d!4545 () Bool)

(assert (= bs!1080 (and d!4545 b!5671)))

(assert (=> bs!1080 (= (dynLambda!22 lambda!59) (fold!2 (left!238 (map!113 tree!20 lambda!35)) lambda!36))))

(declare-fun m!8173 () Bool)

(assert (=> bs!1080 m!8173))

(assert (=> b!5671 d!4545))

(declare-fun b_lambda!2579 () Bool)

(assert (= b_lambda!2537 (or b!5681 b_lambda!2579)))

(declare-fun bs!1081 () Bool)

(declare-fun d!4547 () Bool)

(assert (= bs!1081 (and d!4547 b!5681)))

(assert (=> bs!1081 (= (dynLambda!25 lambda!66) (map!113 (right!240 tree!20) lambda!35))))

(declare-fun m!8175 () Bool)

(assert (=> bs!1081 m!8175))

(assert (=> b!5681 d!4547))

(declare-fun b_lambda!2581 () Bool)

(assert (= b_lambda!2543 (or d!4473 b_lambda!2581)))

(declare-fun bs!1082 () Bool)

(declare-fun d!4549 () Bool)

(assert (= bs!1082 (and d!4549 d!4473)))

(assert (=> bs!1082 (= (dynLambda!26 lambda!35 (head!311 (toList!15 tree!20))) (fromParenthesis!0 (head!311 (toList!15 tree!20))))))

(declare-fun m!8177 () Bool)

(assert (=> bs!1082 m!8177))

(assert (=> b!5697 d!4549))

(declare-fun b_lambda!2583 () Bool)

(assert (= b_lambda!2551 (or d!4483 b_lambda!2583)))

(declare-fun bs!1083 () Bool)

(declare-fun d!4551 () Bool)

(assert (= bs!1083 (and d!4551 d!4483)))

(assert (=> bs!1083 (= (dynLambda!21 lambda!51 (_1!9 lt!1261) (_2!9 lt!1261)) (++!3 (_1!9 lt!1261) (_2!9 lt!1261)))))

(declare-fun m!8179 () Bool)

(assert (=> bs!1083 m!8179))

(assert (=> b!5719 d!4551))

(declare-fun b_lambda!2585 () Bool)

(assert (= b_lambda!2547 (or d!4475 b_lambda!2585)))

(declare-fun bs!1084 () Bool)

(declare-fun d!4553 () Bool)

(assert (= bs!1084 (and d!4553 d!4475)))

(assert (=> bs!1084 (= (dynLambda!26 lambda!44 (head!311 (toList!15 tree!20))) (fromParenthesis!0 (head!311 (toList!15 tree!20))))))

(assert (=> bs!1084 m!8177))

(assert (=> b!5701 d!4553))

(declare-fun b_lambda!2587 () Bool)

(assert (= b_lambda!2559 (or b!5721 b_lambda!2587)))

(declare-fun bs!1085 () Bool)

(declare-fun d!4555 () Bool)

(assert (= bs!1085 (and d!4555 b!5721)))

(assert (=> bs!1085 (= (dynLambda!25 lambda!79) (map!113 (right!240 tree!20) lambda!50))))

(declare-fun m!8181 () Bool)

(assert (=> bs!1085 m!8181))

(assert (=> b!5721 d!4555))

(declare-fun b_lambda!2589 () Bool)

(assert (= b_lambda!2561 (or d!4483 b_lambda!2589)))

(declare-fun bs!1086 () Bool)

(declare-fun d!4557 () Bool)

(assert (= bs!1086 (and d!4557 d!4483)))

(assert (=> bs!1086 (= (dynLambda!26 lambda!50 (value!1254 tree!20)) (fromParenthesis!0 (value!1254 tree!20)))))

(assert (=> bs!1086 m!8171))

(assert (=> b!5720 d!4557))

(declare-fun b_lambda!2591 () Bool)

(assert (= b_lambda!2529 (or d!4473 b_lambda!2591)))

(declare-fun bs!1087 () Bool)

(declare-fun d!4559 () Bool)

(assert (= bs!1087 (and d!4559 d!4473)))

(assert (=> bs!1087 (= (dynLambda!21 lambda!36 (_1!9 lt!1255) (_2!9 lt!1255)) (++!3 (_1!9 lt!1255) (_2!9 lt!1255)))))

(declare-fun m!8183 () Bool)

(assert (=> bs!1087 m!8183))

(assert (=> b!5671 d!4559))

(declare-fun b_lambda!2593 () Bool)

(assert (= b_lambda!2533 (or b!5671 b_lambda!2593)))

(declare-fun bs!1088 () Bool)

(declare-fun d!4561 () Bool)

(assert (= bs!1088 (and d!4561 b!5671)))

(assert (=> bs!1088 (= (dynLambda!22 lambda!60) (fold!2 (right!241 (map!113 tree!20 lambda!35)) lambda!36))))

(declare-fun m!8185 () Bool)

(assert (=> bs!1088 m!8185))

(assert (=> b!5671 d!4561))

(declare-fun b_lambda!2595 () Bool)

(assert (= b_lambda!2549 (or d!4475 b_lambda!2595)))

(declare-fun bs!1089 () Bool)

(declare-fun d!4563 () Bool)

(assert (= bs!1089 (and d!4563 d!4475)))

(declare-fun +$colon!0 (Balance!5 Parenthesis!3) Balance!5)

(assert (=> bs!1089 (= (dynLambda!27 lambda!43 (head!311 (toList!15 tree!20)) (foldRight!9 (tail!323 (toList!15 tree!20)) (Balance!6 0 0) lambda!43)) (+$colon!0 (foldRight!9 (tail!323 (toList!15 tree!20)) (Balance!6 0 0) lambda!43) (head!311 (toList!15 tree!20))))))

(assert (=> bs!1089 m!8109))

(declare-fun m!8187 () Bool)

(assert (=> bs!1089 m!8187))

(assert (=> b!5707 d!4563))

(declare-fun b_lambda!2597 () Bool)

(assert (= b_lambda!2535 (or b!5681 b_lambda!2597)))

(declare-fun bs!1090 () Bool)

(declare-fun d!4565 () Bool)

(assert (= bs!1090 (and d!4565 b!5681)))

(assert (=> bs!1090 (= (dynLambda!25 lambda!65) (map!113 (left!237 tree!20) lambda!35))))

(declare-fun m!8189 () Bool)

(assert (=> bs!1090 m!8189))

(assert (=> b!5681 d!4565))

(push 1)

(assert (not bs!1088))

(assert (not b_lambda!2589))

(assert (not b!5717))

(assert (not d!4515))

(assert (not b_lambda!2597))

(assert (not b!5715))

(assert (not d!4499))

(assert (not b!5735))

(assert (not b_lambda!2567))

(assert (not bs!1086))

(assert (not b_lambda!2569))

(assert (not b!5733))

(assert (not bs!1075))

(assert (not b_lambda!2573))

(assert (not b_lambda!2587))

(assert (not bs!1090))

(assert (not b_lambda!2563))

(assert (not bs!1085))

(assert (not b_lambda!2575))

(assert (not bs!1078))

(assert (not b!5691))

(assert (not bs!1082))

(assert (not b_lambda!2585))

(assert (not bs!1087))

(assert (not bs!1079))

(assert (not b!5699))

(assert (not bs!1089))

(assert (not b_lambda!2571))

(assert (not bs!1076))

(assert (not b!5732))

(assert (not bs!1084))

(assert (not b!5697))

(assert (not b_lambda!2583))

(assert (not b!5701))

(assert (not bs!1081))

(assert (not b!5734))

(assert (not b_lambda!2581))

(assert (not b_lambda!2577))

(assert (not bs!1073))

(assert (not b_lambda!2591))

(assert (not b!5665))

(assert (not d!4517))

(assert (not b!5713))

(assert (not d!4529))

(assert (not b_lambda!2565))

(assert (not bs!1080))

(assert (not b_lambda!2593))

(assert (not d!4503))

(assert (not bs!1074))

(assert (not b_lambda!2579))

(assert (not bs!1077))

(assert (not b!5707))

(assert (not b_lambda!2595))

(assert (not bs!1083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

