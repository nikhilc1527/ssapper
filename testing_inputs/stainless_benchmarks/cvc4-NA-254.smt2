; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1938 () Bool)

(assert start!1938)

(declare-datatypes () ((Parenthesis!53 (CloseParenthesis!52) (OpenParenthesis!52))))

(declare-datatypes () ((List!230 (Nil!228) (Cons!227 (head!445 Parenthesis!53) (tail!457 List!230)))))

(declare-fun xs!362 () List!230)

(declare-datatypes () ((ProofOps!174 (ProofOps!175 (prop!211 Bool)))))

(declare-fun because!2 (ProofOps!174 Bool) Bool)

(declare-fun isMatched!0 (List!230) Bool)

(declare-fun isMatchedSequential!0 (List!230) Bool)

(declare-fun original_sequential_helper!0 (List!230) Bool)

(assert (=> start!1938 (not (because!2 (ProofOps!175 (= (isMatched!0 xs!362) (isMatchedSequential!0 xs!362))) (original_sequential_helper!0 xs!362)))))

(assert (=> start!1938 true))

(declare-fun bs!2625 () Bool)

(assert (= bs!2625 start!1938))

(declare-fun m!12825 () Bool)

(assert (=> bs!2625 m!12825))

(declare-fun m!12827 () Bool)

(assert (=> bs!2625 m!12827))

(declare-fun m!12829 () Bool)

(assert (=> bs!2625 m!12829))

(assert (=> bs!2625 m!12829))

(declare-fun m!12831 () Bool)

(assert (=> bs!2625 m!12831))

(push 1)

(assert (not start!1938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7973 () Bool)

(assert (=> d!7973 (= (because!2 (ProofOps!175 (= (isMatched!0 xs!362) (isMatchedSequential!0 xs!362))) (original_sequential_helper!0 xs!362)) (and (original_sequential_helper!0 xs!362) (prop!211 (ProofOps!175 (= (isMatched!0 xs!362) (isMatchedSequential!0 xs!362))))))))

(assert (=> start!1938 d!7973))

(declare-fun d!7975 () Bool)

(declare-fun lambda!2444 () Int)

(declare-fun foldRight!29 (List!230 Int Int) Int)

(assert (=> d!7975 (= (isMatched!0 xs!362) (= (foldRight!29 xs!362 0 lambda!2444) 0))))

(declare-fun bs!2626 () Bool)

(assert (= bs!2626 d!7975))

(declare-fun m!12833 () Bool)

(assert (=> bs!2626 m!12833))

(assert (=> start!1938 d!7975))

(declare-fun d!7977 () Bool)

(declare-fun lambda!2447 () Int)

(declare-datatypes () ((Balance!227 (Balance!228 (extraOpen!154 Int) (extraClose!154 Int)))))

(declare-fun isBalanced!0 (Balance!227) Bool)

(declare-fun foldRight!30 (List!230 Balance!227 Int) Balance!227)

(assert (=> d!7977 (= (isMatchedSequential!0 xs!362) (isBalanced!0 (foldRight!30 xs!362 (Balance!228 0 0) lambda!2447)))))

(declare-fun bs!2627 () Bool)

(assert (= bs!2627 d!7977))

(declare-fun m!12835 () Bool)

(assert (=> bs!2627 m!12835))

(assert (=> bs!2627 m!12835))

(declare-fun m!12837 () Bool)

(assert (=> bs!2627 m!12837))

(assert (=> start!1938 d!7977))

(declare-fun bs!2628 () Bool)

(declare-fun d!7979 () Bool)

(assert (= bs!2628 (and d!7979 d!7977)))

(declare-fun lambda!2454 () Int)

(assert (=> bs!2628 (= lambda!2454 lambda!2447)))

(declare-fun bs!2629 () Bool)

(assert (= bs!2629 (and d!7979 d!7975)))

(declare-fun lambda!2455 () Int)

(assert (=> bs!2629 (= lambda!2455 lambda!2444)))

(declare-fun b!9646 () Bool)

(declare-fun e!5746 () Bool)

(declare-fun e!5748 () Bool)

(assert (=> b!9646 (= e!5746 e!5748)))

(declare-fun res!3176 () Bool)

(assert (=> b!9646 (=> (not res!3176) (not e!5748))))

(assert (=> b!9646 (= res!3176 (original_sequential_helper!0 (tail!457 xs!362)))))

(declare-fun e!5747 () Bool)

(assert (=> d!7979 (because!2 (ProofOps!175 e!5747) e!5746)))

(declare-fun c!3103 () Bool)

(assert (=> d!7979 (= c!3103 (is-Nil!228 xs!362))))

(declare-fun res!3175 () Bool)

(assert (=> d!7979 (=> (not res!3175) (not e!5747))))

(declare-fun lt!1680 () Balance!227)

(declare-fun lt!1679 () Int)

(declare-fun balanceToCounter!0 (Balance!227) Int)

(assert (=> d!7979 (= res!3175 (= (balanceToCounter!0 lt!1680) lt!1679))))

(assert (=> d!7979 (= lt!1679 (foldRight!29 xs!362 0 lambda!2455))))

(assert (=> d!7979 (= lt!1680 (foldRight!30 xs!362 (Balance!228 0 0) lambda!2454))))

(assert (=> d!7979 (= (original_sequential_helper!0 xs!362) true)))

(declare-fun b!9647 () Bool)

(declare-fun nonNegative!0 (Balance!227) Bool)

(assert (=> b!9647 (= e!5747 (nonNegative!0 lt!1680))))

(declare-fun b!9648 () Bool)

(assert (=> b!9648 (= e!5748 true)))

(assert (=> b!9648 (= (balanceToCounter!0 lt!1680) lt!1679)))

(declare-fun b!9649 () Bool)

(declare-fun res!3174 () Bool)

(assert (=> b!9649 (=> (not res!3174) (not e!5748))))

(assert (=> b!9649 (= res!3174 (nonNegative!0 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454)))))

(declare-fun b!9650 () Bool)

(assert (=> b!9650 (= e!5746 true)))

(assert (= (and d!7979 res!3175) b!9647))

(assert (= (and b!9646 res!3176) b!9649))

(assert (= (and b!9649 res!3174) b!9648))

(assert (= (and d!7979 c!3103) b!9650))

(assert (= (and d!7979 (not c!3103)) b!9646))

(declare-fun m!12839 () Bool)

(assert (=> b!9648 m!12839))

(declare-fun m!12841 () Bool)

(assert (=> b!9647 m!12841))

(declare-fun m!12843 () Bool)

(assert (=> b!9649 m!12843))

(assert (=> b!9649 m!12843))

(declare-fun m!12845 () Bool)

(assert (=> b!9649 m!12845))

(declare-fun m!12847 () Bool)

(assert (=> b!9646 m!12847))

(declare-fun m!12849 () Bool)

(assert (=> d!7979 m!12849))

(assert (=> d!7979 m!12839))

(declare-fun m!12851 () Bool)

(assert (=> d!7979 m!12851))

(declare-fun m!12853 () Bool)

(assert (=> d!7979 m!12853))

(assert (=> start!1938 d!7979))

(push 1)

(assert (not b!9647))

(assert (not d!7979))

(assert (not d!7977))

(assert (not b!9646))

(assert (not d!7975))

(assert (not b!9648))

(assert (not b!9649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7981 () Bool)

(assert (=> d!7981 (= (nonNegative!0 lt!1680) (and (>= (extraOpen!154 lt!1680) 0) (>= (extraClose!154 lt!1680) 0)))))

(assert (=> b!9647 d!7981))

(declare-fun d!7983 () Bool)

(assert (=> d!7983 (= (isBalanced!0 (foldRight!30 xs!362 (Balance!228 0 0) lambda!2447)) (and (= (extraOpen!154 (foldRight!30 xs!362 (Balance!228 0 0) lambda!2447)) 0) (= (extraClose!154 (foldRight!30 xs!362 (Balance!228 0 0) lambda!2447)) 0)))))

(assert (=> d!7977 d!7983))

(declare-fun d!7985 () Bool)

(declare-fun c!3106 () Bool)

(assert (=> d!7985 (= c!3106 (is-Nil!228 xs!362))))

(declare-fun e!5751 () Balance!227)

(assert (=> d!7985 (= (foldRight!30 xs!362 (Balance!228 0 0) lambda!2447) e!5751)))

(declare-fun b!9655 () Bool)

(assert (=> b!9655 (= e!5751 (Balance!228 0 0))))

(declare-fun b!9656 () Bool)

(declare-fun dynLambda!315 (Int Parenthesis!53 Balance!227) Balance!227)

(assert (=> b!9656 (= e!5751 (dynLambda!315 lambda!2447 (head!445 xs!362) (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2447)))))

(assert (= (and d!7985 c!3106) b!9655))

(assert (= (and d!7985 (not c!3106)) b!9656))

(declare-fun b_lambda!5203 () Bool)

(assert (=> (not b_lambda!5203) (not b!9656)))

(declare-fun m!12855 () Bool)

(assert (=> b!9656 m!12855))

(assert (=> b!9656 m!12855))

(declare-fun m!12857 () Bool)

(assert (=> b!9656 m!12857))

(assert (=> d!7977 d!7985))

(declare-fun d!7987 () Bool)

(assert (=> d!7987 (= (because!2 (ProofOps!175 e!5747) e!5746) (and e!5746 (prop!211 (ProofOps!175 e!5747))))))

(assert (=> d!7979 d!7987))

(declare-fun d!7989 () Bool)

(assert (=> d!7989 (= (balanceToCounter!0 lt!1680) (ite (> (extraOpen!154 lt!1680) 0) (- 1) (ite (and (= (extraOpen!154 lt!1680) 0) (= (extraClose!154 lt!1680) 0)) 0 (ite (>= (extraClose!154 lt!1680) 0) (extraClose!154 lt!1680) (- 1)))))))

(assert (=> d!7979 d!7989))

(declare-fun d!7991 () Bool)

(declare-fun c!3109 () Bool)

(assert (=> d!7991 (= c!3109 (is-Nil!228 xs!362))))

(declare-fun e!5754 () Int)

(assert (=> d!7991 (= (foldRight!29 xs!362 0 lambda!2455) e!5754)))

(declare-fun b!9662 () Bool)

(assert (=> b!9662 (= e!5754 0)))

(declare-fun b!9663 () Bool)

(declare-fun dynLambda!316 (Int Parenthesis!53 Int) Int)

(assert (=> b!9663 (= e!5754 (dynLambda!316 lambda!2455 (head!445 xs!362) (foldRight!29 (tail!457 xs!362) 0 lambda!2455)))))

(assert (= (and d!7991 c!3109) b!9662))

(assert (= (and d!7991 (not c!3109)) b!9663))

(declare-fun b_lambda!5205 () Bool)

(assert (=> (not b_lambda!5205) (not b!9663)))

(declare-fun m!12859 () Bool)

(assert (=> b!9663 m!12859))

(assert (=> b!9663 m!12859))

(declare-fun m!12861 () Bool)

(assert (=> b!9663 m!12861))

(assert (=> d!7979 d!7991))

(declare-fun d!7993 () Bool)

(declare-fun c!3110 () Bool)

(assert (=> d!7993 (= c!3110 (is-Nil!228 xs!362))))

(declare-fun e!5755 () Balance!227)

(assert (=> d!7993 (= (foldRight!30 xs!362 (Balance!228 0 0) lambda!2454) e!5755)))

(declare-fun b!9664 () Bool)

(assert (=> b!9664 (= e!5755 (Balance!228 0 0))))

(declare-fun b!9665 () Bool)

(assert (=> b!9665 (= e!5755 (dynLambda!315 lambda!2454 (head!445 xs!362) (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454)))))

(assert (= (and d!7993 c!3110) b!9664))

(assert (= (and d!7993 (not c!3110)) b!9665))

(declare-fun b_lambda!5207 () Bool)

(assert (=> (not b_lambda!5207) (not b!9665)))

(assert (=> b!9665 m!12843))

(assert (=> b!9665 m!12843))

(declare-fun m!12863 () Bool)

(assert (=> b!9665 m!12863))

(assert (=> d!7979 d!7993))

(declare-fun bs!2630 () Bool)

(declare-fun d!7995 () Bool)

(assert (= bs!2630 (and d!7995 d!7977)))

(declare-fun lambda!2456 () Int)

(assert (=> bs!2630 (= lambda!2456 lambda!2447)))

(declare-fun bs!2631 () Bool)

(assert (= bs!2631 (and d!7995 d!7979)))

(assert (=> bs!2631 (= lambda!2456 lambda!2454)))

(declare-fun bs!2632 () Bool)

(assert (= bs!2632 (and d!7995 d!7975)))

(declare-fun lambda!2457 () Int)

(assert (=> bs!2632 (= lambda!2457 lambda!2444)))

(assert (=> bs!2631 (= lambda!2457 lambda!2455)))

(declare-fun b!9666 () Bool)

(declare-fun e!5756 () Bool)

(declare-fun e!5758 () Bool)

(assert (=> b!9666 (= e!5756 e!5758)))

(declare-fun res!3179 () Bool)

(assert (=> b!9666 (=> (not res!3179) (not e!5758))))

(assert (=> b!9666 (= res!3179 (original_sequential_helper!0 (tail!457 (tail!457 xs!362))))))

(declare-fun e!5757 () Bool)

(assert (=> d!7995 (because!2 (ProofOps!175 e!5757) e!5756)))

(declare-fun c!3111 () Bool)

(assert (=> d!7995 (= c!3111 (is-Nil!228 (tail!457 xs!362)))))

(declare-fun res!3178 () Bool)

(assert (=> d!7995 (=> (not res!3178) (not e!5757))))

(declare-fun lt!1682 () Balance!227)

(declare-fun lt!1681 () Int)

(assert (=> d!7995 (= res!3178 (= (balanceToCounter!0 lt!1682) lt!1681))))

(assert (=> d!7995 (= lt!1681 (foldRight!29 (tail!457 xs!362) 0 lambda!2457))))

(assert (=> d!7995 (= lt!1682 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2456))))

(assert (=> d!7995 (= (original_sequential_helper!0 (tail!457 xs!362)) true)))

(declare-fun b!9667 () Bool)

(assert (=> b!9667 (= e!5757 (nonNegative!0 lt!1682))))

(declare-fun b!9668 () Bool)

(assert (=> b!9668 (= e!5758 true)))

(assert (=> b!9668 (= (balanceToCounter!0 lt!1682) lt!1681)))

(declare-fun b!9669 () Bool)

(declare-fun res!3177 () Bool)

(assert (=> b!9669 (=> (not res!3177) (not e!5758))))

(assert (=> b!9669 (= res!3177 (nonNegative!0 (foldRight!30 (tail!457 (tail!457 xs!362)) (Balance!228 0 0) lambda!2456)))))

(declare-fun b!9670 () Bool)

(assert (=> b!9670 (= e!5756 true)))

(assert (= (and d!7995 res!3178) b!9667))

(assert (= (and b!9666 res!3179) b!9669))

(assert (= (and b!9669 res!3177) b!9668))

(assert (= (and d!7995 c!3111) b!9670))

(assert (= (and d!7995 (not c!3111)) b!9666))

(declare-fun m!12865 () Bool)

(assert (=> b!9668 m!12865))

(declare-fun m!12867 () Bool)

(assert (=> b!9667 m!12867))

(declare-fun m!12869 () Bool)

(assert (=> b!9669 m!12869))

(assert (=> b!9669 m!12869))

(declare-fun m!12871 () Bool)

(assert (=> b!9669 m!12871))

(declare-fun m!12873 () Bool)

(assert (=> b!9666 m!12873))

(declare-fun m!12875 () Bool)

(assert (=> d!7995 m!12875))

(assert (=> d!7995 m!12865))

(declare-fun m!12877 () Bool)

(assert (=> d!7995 m!12877))

(declare-fun m!12879 () Bool)

(assert (=> d!7995 m!12879))

(assert (=> b!9646 d!7995))

(declare-fun d!7997 () Bool)

(assert (=> d!7997 (= (nonNegative!0 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454)) (and (>= (extraOpen!154 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454)) 0) (>= (extraClose!154 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454)) 0)))))

(assert (=> b!9649 d!7997))

(declare-fun d!7999 () Bool)

(declare-fun c!3112 () Bool)

(assert (=> d!7999 (= c!3112 (is-Nil!228 (tail!457 xs!362)))))

(declare-fun e!5759 () Balance!227)

(assert (=> d!7999 (= (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454) e!5759)))

(declare-fun b!9671 () Bool)

(assert (=> b!9671 (= e!5759 (Balance!228 0 0))))

(declare-fun b!9672 () Bool)

(assert (=> b!9672 (= e!5759 (dynLambda!315 lambda!2454 (head!445 (tail!457 xs!362)) (foldRight!30 (tail!457 (tail!457 xs!362)) (Balance!228 0 0) lambda!2454)))))

(assert (= (and d!7999 c!3112) b!9671))

(assert (= (and d!7999 (not c!3112)) b!9672))

(declare-fun b_lambda!5209 () Bool)

(assert (=> (not b_lambda!5209) (not b!9672)))

(declare-fun m!12881 () Bool)

(assert (=> b!9672 m!12881))

(assert (=> b!9672 m!12881))

(declare-fun m!12883 () Bool)

(assert (=> b!9672 m!12883))

(assert (=> b!9649 d!7999))

(assert (=> b!9648 d!7989))

(declare-fun d!8001 () Bool)

(declare-fun c!3113 () Bool)

(assert (=> d!8001 (= c!3113 (is-Nil!228 xs!362))))

(declare-fun e!5760 () Int)

(assert (=> d!8001 (= (foldRight!29 xs!362 0 lambda!2444) e!5760)))

(declare-fun b!9673 () Bool)

(assert (=> b!9673 (= e!5760 0)))

(declare-fun b!9674 () Bool)

(assert (=> b!9674 (= e!5760 (dynLambda!316 lambda!2444 (head!445 xs!362) (foldRight!29 (tail!457 xs!362) 0 lambda!2444)))))

(assert (= (and d!8001 c!3113) b!9673))

(assert (= (and d!8001 (not c!3113)) b!9674))

(declare-fun b_lambda!5211 () Bool)

(assert (=> (not b_lambda!5211) (not b!9674)))

(declare-fun m!12885 () Bool)

(assert (=> b!9674 m!12885))

(assert (=> b!9674 m!12885))

(declare-fun m!12887 () Bool)

(assert (=> b!9674 m!12887))

(assert (=> d!7975 d!8001))

(declare-fun b_lambda!5213 () Bool)

(assert (= b_lambda!5205 (or d!7979 b_lambda!5213)))

(declare-fun bs!2633 () Bool)

(declare-fun d!8003 () Bool)

(assert (= bs!2633 (and d!8003 d!7979)))

(declare-fun updateCounter!0 (Parenthesis!53 Int) Int)

(assert (=> bs!2633 (= (dynLambda!316 lambda!2455 (head!445 xs!362) (foldRight!29 (tail!457 xs!362) 0 lambda!2455)) (updateCounter!0 (head!445 xs!362) (foldRight!29 (tail!457 xs!362) 0 lambda!2455)))))

(assert (=> bs!2633 m!12859))

(declare-fun m!12889 () Bool)

(assert (=> bs!2633 m!12889))

(assert (=> b!9663 d!8003))

(declare-fun b_lambda!5215 () Bool)

(assert (= b_lambda!5211 (or d!7975 b_lambda!5215)))

(declare-fun bs!2634 () Bool)

(declare-fun d!8005 () Bool)

(assert (= bs!2634 (and d!8005 d!7975)))

(assert (=> bs!2634 (= (dynLambda!316 lambda!2444 (head!445 xs!362) (foldRight!29 (tail!457 xs!362) 0 lambda!2444)) (updateCounter!0 (head!445 xs!362) (foldRight!29 (tail!457 xs!362) 0 lambda!2444)))))

(assert (=> bs!2634 m!12885))

(declare-fun m!12891 () Bool)

(assert (=> bs!2634 m!12891))

(assert (=> b!9674 d!8005))

(declare-fun b_lambda!5217 () Bool)

(assert (= b_lambda!5209 (or d!7979 b_lambda!5217)))

(declare-fun bs!2635 () Bool)

(declare-fun d!8007 () Bool)

(assert (= bs!2635 (and d!8007 d!7979)))

(declare-fun +$colon!0 (Balance!227 Parenthesis!53) Balance!227)

(assert (=> bs!2635 (= (dynLambda!315 lambda!2454 (head!445 (tail!457 xs!362)) (foldRight!30 (tail!457 (tail!457 xs!362)) (Balance!228 0 0) lambda!2454)) (+$colon!0 (foldRight!30 (tail!457 (tail!457 xs!362)) (Balance!228 0 0) lambda!2454) (head!445 (tail!457 xs!362))))))

(assert (=> bs!2635 m!12881))

(declare-fun m!12893 () Bool)

(assert (=> bs!2635 m!12893))

(assert (=> b!9672 d!8007))

(declare-fun b_lambda!5219 () Bool)

(assert (= b_lambda!5207 (or d!7979 b_lambda!5219)))

(declare-fun bs!2636 () Bool)

(declare-fun d!8009 () Bool)

(assert (= bs!2636 (and d!8009 d!7979)))

(assert (=> bs!2636 (= (dynLambda!315 lambda!2454 (head!445 xs!362) (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454)) (+$colon!0 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2454) (head!445 xs!362)))))

(assert (=> bs!2636 m!12843))

(declare-fun m!12895 () Bool)

(assert (=> bs!2636 m!12895))

(assert (=> b!9665 d!8009))

(declare-fun b_lambda!5221 () Bool)

(assert (= b_lambda!5203 (or d!7977 b_lambda!5221)))

(declare-fun bs!2637 () Bool)

(declare-fun d!8011 () Bool)

(assert (= bs!2637 (and d!8011 d!7977)))

(assert (=> bs!2637 (= (dynLambda!315 lambda!2447 (head!445 xs!362) (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2447)) (+$colon!0 (foldRight!30 (tail!457 xs!362) (Balance!228 0 0) lambda!2447) (head!445 xs!362)))))

(assert (=> bs!2637 m!12855))

(declare-fun m!12897 () Bool)

(assert (=> bs!2637 m!12897))

(assert (=> b!9656 d!8011))

(push 1)

(assert (not b!9674))

(assert (not b!9663))

(assert (not bs!2633))

(assert (not b!9666))

(assert (not d!7995))

(assert (not b!9667))

(assert (not b_lambda!5221))

(assert (not b!9668))

(assert (not b_lambda!5219))

(assert (not bs!2635))

(assert (not bs!2637))

(assert (not b_lambda!5213))

(assert (not b!9665))

(assert (not b_lambda!5215))

(assert (not bs!2636))

(assert (not b!9656))

(assert (not b!9672))

(assert (not bs!2634))

(assert (not b!9669))

(assert (not b_lambda!5217))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

