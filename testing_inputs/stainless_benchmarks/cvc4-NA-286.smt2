; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2178 () Bool)

(assert start!2178)

(declare-fun b_free!1433 () Bool)

(declare-fun b_next!3465 () Bool)

(assert (=> start!2178 (= b_free!1433 (not b_next!3465))))

(declare-fun tp!2316 () Bool)

(declare-fun b_and!4961 () Bool)

(assert (=> start!2178 (= tp!2316 b_and!4961)))

(declare-fun b_free!1435 () Bool)

(declare-fun b_next!3467 () Bool)

(assert (=> start!2178 (= b_free!1435 (not b_next!3467))))

(declare-fun tp!2315 () Bool)

(declare-fun b_and!4963 () Bool)

(assert (=> start!2178 (= tp!2315 b_and!4963)))

(declare-fun b!10838 () Bool)

(declare-fun b_free!1437 () Bool)

(declare-fun b_next!3469 () Bool)

(assert (=> b!10838 (= b_free!1437 (not b_next!3469))))

(declare-fun tp!2317 () Bool)

(declare-fun b_and!4965 () Bool)

(assert (=> b!10838 (= tp!2317 b_and!4965)))

(declare-fun b_free!1439 () Bool)

(declare-fun b_next!3471 () Bool)

(assert (=> b!10838 (= b_free!1439 (not b_next!3471))))

(declare-fun tp!2313 () Bool)

(declare-fun b_and!4967 () Bool)

(assert (=> b!10838 (= tp!2313 b_and!4967)))

(declare-fun b_free!1441 () Bool)

(declare-fun b_next!3473 () Bool)

(assert (=> b!10838 (= b_free!1441 (not b_next!3473))))

(declare-fun tp!2314 () Bool)

(declare-fun b_and!4969 () Bool)

(assert (=> b!10838 (= tp!2314 b_and!4969)))

(declare-fun f!539 () Int)

(declare-fun b_next!3475 () Bool)

(declare-fun b!10837 () Bool)

(declare-fun lambda!2877 () Int)

(assert (=> start!2178 (= b_next!3465 (or (and b!10837 (= lambda!2877 f!539)) b_next!3475))))

(declare-fun f!554 () Int)

(declare-fun b_next!3477 () Bool)

(assert (=> start!2178 (= b_next!3467 (or (and b!10837 (= lambda!2877 f!554)) b_next!3477))))

(declare-fun b!10842 () Bool)

(assert (=> b!10842 true))

(declare-fun order!169 () Int)

(declare-fun lambda!2878 () Int)

(declare-fun order!167 () Int)

(declare-fun dynLambda!362 (Int Int) Int)

(declare-fun dynLambda!363 (Int Int) Int)

(assert (=> b!10842 (< (dynLambda!362 order!167 f!539) (dynLambda!363 order!169 lambda!2878))))

(assert (=> b!10842 true))

(assert (=> b!10842 true))

(declare-fun b_next!3479 () Bool)

(declare-datatypes () ((Balance!281 (Balance!282 (extraOpen!181 Int) (extraClose!181 Int)))))

(declare-datatypes () ((EqEvidence!220 (EqEvidence!221 (x!6072 Int) (y!621 Int) (evidence!177 Int)))))

(declare-fun thiss!721 () EqEvidence!220)

(assert (=> b!10838 (= b_next!3469 (or (and b!10842 (= lambda!2878 (x!6072 thiss!721))) b_next!3479))))

(declare-fun b_next!3481 () Bool)

(assert (=> b!10838 (= b_next!3471 (or (and b!10842 (= lambda!2878 (y!621 thiss!721))) b_next!3481))))

(declare-fun lambda!2879 () Int)

(assert (=> b!10842 (not (= lambda!2879 lambda!2878))))

(assert (=> b!10842 true))

(assert (=> b!10842 (< (dynLambda!362 order!167 f!539) (dynLambda!363 order!169 lambda!2879))))

(assert (=> b!10842 true))

(assert (=> b!10842 true))

(declare-fun b_next!3483 () Bool)

(assert (=> b!10838 (= b_next!3479 (or (and b!10842 (= lambda!2879 (x!6072 thiss!721))) b_next!3483))))

(declare-fun b_next!3485 () Bool)

(assert (=> b!10838 (= b_next!3481 (or (and b!10842 (= lambda!2879 (y!621 thiss!721))) b_next!3485))))

(declare-fun m!13803 () Bool)

(assert (=> b!10842 m!13803))

(declare-fun lambda!2880 () Int)

(declare-fun dynLambda!364 (Int) Bool)

(assert (=> (and b!10838 b!10842 (= (dynLambda!364 lambda!2880) (dynLambda!364 (evidence!177 thiss!721)))) (= lambda!2880 (evidence!177 thiss!721))))

(declare-fun b_next!3487 () Bool)

(assert (=> b!10838 (= b_next!3473 (or (and b!10842 (= lambda!2880 (evidence!177 thiss!721))) b_next!3487))))

(declare-fun res!3865 () Bool)

(declare-fun e!6251 () Bool)

(assert (=> start!2178 (=> (not res!3865) (not e!6251))))

(declare-datatypes () ((List!260 (Nil!258) (Cons!257 (head!475 Balance!281) (tail!487 List!260)))))

(declare-fun xs!292 () List!260)

(declare-fun isEmpty!188 (List!260) Bool)

(assert (=> start!2178 (= res!3865 (not (isEmpty!188 xs!292)))))

(assert (=> start!2178 e!6251))

(assert (=> start!2178 tp!2316))

(assert (=> start!2178 true))

(assert (=> start!2178 tp!2315))

(declare-fun e!6250 () Bool)

(declare-fun inv!366 (EqEvidence!220) Bool)

(assert (=> start!2178 (and (inv!366 thiss!721) e!6250)))

(declare-fun b!10836 () Bool)

(declare-fun thiss!734 () List!260)

(assert (=> b!10836 (= e!6251 (isEmpty!188 thiss!734))))

(declare-fun res!3869 () Bool)

(assert (=> b!10837 (=> (not res!3869) (not e!6251))))

(assert (=> b!10837 (= res!3869 (= f!539 lambda!2877))))

(assert (=> b!10838 (= e!6250 (and tp!2317 tp!2313 tp!2314))))

(declare-fun b!10839 () Bool)

(declare-fun res!3868 () Bool)

(assert (=> b!10839 (=> (not res!3868) (not e!6251))))

(declare-fun ys!54 () List!260)

(assert (=> b!10839 (= res!3868 (and (= thiss!734 (Cons!257 (head!475 xs!292) ys!54)) (= f!554 f!539)))))

(declare-fun b!10840 () Bool)

(declare-fun res!3864 () Bool)

(assert (=> b!10840 (=> (not res!3864) (not e!6251))))

(declare-datatypes () ((ProofOps!220 (ProofOps!221 (prop!243 Bool)))))

(declare-fun thiss!710 () ProofOps!220)

(declare-fun dynLambda!365 (Int Balance!281 Balance!281) Balance!281)

(declare-fun foldRight1!90 (List!260 Int) Balance!281)

(declare-fun append!109 (List!260 List!260) List!260)

(assert (=> b!10840 (= res!3864 (= thiss!710 (ProofOps!221 (= (dynLambda!365 f!539 (foldRight1!90 xs!292 f!539) (foldRight1!90 ys!54 f!539)) (foldRight1!90 (append!109 xs!292 ys!54) f!539)))))))

(declare-fun b!10841 () Bool)

(declare-fun res!3863 () Bool)

(assert (=> b!10841 (=> (not res!3863) (not e!6251))))

(assert (=> b!10841 (= res!3863 (not (isEmpty!188 ys!54)))))

(declare-fun res!3867 () Bool)

(assert (=> b!10842 (=> (not res!3867) (not e!6251))))

(assert (=> b!10842 (= res!3867 (= thiss!721 (EqEvidence!221 lambda!2878 lambda!2879 lambda!2880)))))

(declare-fun b!10843 () Bool)

(declare-fun res!3866 () Bool)

(assert (=> b!10843 (=> (not res!3866) (not e!6251))))

(assert (=> b!10843 (= res!3866 (and (is-Cons!257 xs!292) (is-Nil!258 (tail!487 xs!292))))))

(assert (= (and start!2178 res!3865) b!10841))

(assert (= (and b!10841 res!3863) b!10837))

(assert (= (and b!10837 res!3869) b!10840))

(assert (= (and b!10840 res!3864) b!10843))

(assert (= (and b!10843 res!3866) b!10842))

(assert (= (and b!10842 res!3867) b!10839))

(assert (= (and b!10839 res!3868) b!10836))

(assert (= start!2178 b!10838))

(declare-fun b_lambda!5587 () Bool)

(assert (=> (not b_lambda!5587) (not b!10840)))

(declare-fun t!2961 () Bool)

(declare-fun tb!2621 () Bool)

(assert (=> (and start!2178 (= f!539 f!539) t!2961) tb!2621))

(declare-fun result!2673 () Bool)

(assert (=> tb!2621 (= result!2673 true)))

(assert (=> b!10840 t!2961))

(declare-fun b_and!4971 () Bool)

(assert (= b_and!4961 (and (=> t!2961 result!2673) b_and!4971)))

(declare-fun tb!2623 () Bool)

(declare-fun t!2963 () Bool)

(assert (=> (and start!2178 (= f!554 f!539) t!2963) tb!2623))

(declare-fun result!2675 () Bool)

(assert (=> tb!2623 (= result!2675 true)))

(assert (=> b!10840 t!2963))

(declare-fun b_and!4973 () Bool)

(assert (= b_and!4963 (and (=> t!2963 result!2675) b_and!4973)))

(declare-fun m!13805 () Bool)

(assert (=> start!2178 m!13805))

(declare-fun m!13807 () Bool)

(assert (=> start!2178 m!13807))

(declare-fun m!13809 () Bool)

(assert (=> b!10836 m!13809))

(declare-fun m!13811 () Bool)

(assert (=> b!10840 m!13811))

(declare-fun m!13813 () Bool)

(assert (=> b!10840 m!13813))

(declare-fun m!13815 () Bool)

(assert (=> b!10840 m!13815))

(assert (=> b!10840 m!13813))

(assert (=> b!10840 m!13815))

(declare-fun m!13817 () Bool)

(assert (=> b!10840 m!13817))

(assert (=> b!10840 m!13811))

(declare-fun m!13819 () Bool)

(assert (=> b!10840 m!13819))

(declare-fun m!13821 () Bool)

(assert (=> b!10841 m!13821))

(push 1)

(assert (not b!10841))

(assert (not b!10836))

(assert (not b_next!3475))

(assert (not b_next!3483))

(assert (not b!10842))

(assert b_and!4971)

(assert (not b_next!3487))

(assert (not b!10840))

(assert (not b_next!3485))

(assert (not b_next!3477))

(assert b_and!4965)

(assert b_and!4967)

(assert b_and!4969)

(assert b_and!4973)

(assert (not start!2178))

(assert (not b_lambda!5587))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3475))

(assert (not b_next!3483))

(assert b_and!4971)

(assert (not b_next!3487))

(assert (not b_next!3485))

(assert (not b_next!3477))

(assert b_and!4965)

(assert b_and!4967)

(assert b_and!4969)

(assert b_and!4973)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5589 () Bool)

(assert (= b_lambda!5587 (or (and b!10837 (= lambda!2877 f!539)) (and start!2178 b_free!1433) (and start!2178 b_free!1435 (= f!554 f!539)) b_lambda!5589)))

(declare-fun bs!2824 () Bool)

(declare-fun d!8515 () Bool)

(assert (= bs!2824 (and d!8515 b!10837)))

(declare-fun ++!3 (Balance!281 Balance!281) Balance!281)

(assert (=> bs!2824 (= (dynLambda!365 lambda!2877 (foldRight1!90 xs!292 f!539) (foldRight1!90 ys!54 f!539)) (++!3 (foldRight1!90 xs!292 f!539) (foldRight1!90 ys!54 f!539)))))

(assert (=> bs!2824 m!13813))

(assert (=> bs!2824 m!13815))

(declare-fun m!13823 () Bool)

(assert (=> bs!2824 m!13823))

(assert (=> (and b!10837 (= lambda!2877 f!539) b!10840) d!8515))

(push 1)

(assert (not b!10841))

(assert (not b!10836))

(assert (not b_next!3475))

(assert (not b_next!3483))

(assert (not b_lambda!5589))

(assert (not b!10842))

(assert b_and!4971)

(assert (not b_next!3487))

(assert (not b!10840))

(assert (not b_next!3485))

(assert (not b_next!3477))

(assert b_and!4965)

(assert b_and!4967)

(assert (not bs!2824))

(assert b_and!4969)

(assert b_and!4973)

(assert (not start!2178))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3475))

(assert (not b_next!3483))

(assert b_and!4971)

(assert (not b_next!3487))

(assert (not b_next!3485))

(assert (not b_next!3477))

(assert b_and!4965)

(assert b_and!4967)

(assert b_and!4969)

(assert b_and!4973)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8517 () Bool)

(assert (=> d!8517 (= (isEmpty!188 thiss!734) (is-Nil!258 thiss!734))))

(assert (=> b!10836 d!8517))

(declare-fun d!8519 () Bool)

(declare-fun lt!1742 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8519 (= lt!1742 (min!4 (extraOpen!181 (foldRight1!90 xs!292 f!539)) (extraClose!181 (foldRight1!90 ys!54 f!539))))))

(assert (=> d!8519 (= (++!3 (foldRight1!90 xs!292 f!539) (foldRight1!90 ys!54 f!539)) (Balance!282 (- (+ (extraOpen!181 (foldRight1!90 xs!292 f!539)) (extraOpen!181 (foldRight1!90 ys!54 f!539))) lt!1742) (- (+ (extraClose!181 (foldRight1!90 xs!292 f!539)) (extraClose!181 (foldRight1!90 ys!54 f!539))) lt!1742)))))

(declare-fun bs!2825 () Bool)

(assert (= bs!2825 d!8519))

(declare-fun m!13825 () Bool)

(assert (=> bs!2825 m!13825))

(assert (=> bs!2824 d!8519))

(declare-fun d!8521 () Bool)

(assert (=> d!8521 (= (isEmpty!188 ys!54) (is-Nil!258 ys!54))))

(assert (=> b!10841 d!8521))

(declare-fun d!8523 () Bool)

(assert (=> d!8523 (= (isEmpty!188 xs!292) (is-Nil!258 xs!292))))

(assert (=> start!2178 d!8523))

(declare-fun d!8525 () Bool)

(declare-fun res!3872 () Bool)

(declare-fun e!6254 () Bool)

(assert (=> d!8525 (=> (not res!3872) (not e!6254))))

(declare-fun dynLambda!366 (Int) Balance!281)

(assert (=> d!8525 (= res!3872 (= (dynLambda!366 (x!6072 thiss!721)) (dynLambda!366 (y!621 thiss!721))))))

(assert (=> d!8525 (= (inv!366 thiss!721) e!6254)))

(declare-fun b!10850 () Bool)

(assert (=> b!10850 (= e!6254 (dynLambda!364 (evidence!177 thiss!721)))))

(assert (= (and d!8525 res!3872) b!10850))

(declare-fun b_lambda!5591 () Bool)

(assert (=> (not b_lambda!5591) (not d!8525)))

(declare-fun t!2965 () Bool)

(declare-fun tb!2625 () Bool)

(assert (=> (and b!10838 (= (x!6072 thiss!721) (x!6072 thiss!721)) t!2965) tb!2625))

(declare-fun result!2677 () Bool)

(assert (=> tb!2625 (= result!2677 true)))

(assert (=> d!8525 t!2965))

(declare-fun b_and!4975 () Bool)

(assert (= b_and!4965 (and (=> t!2965 result!2677) b_and!4975)))

(declare-fun t!2967 () Bool)

(declare-fun tb!2627 () Bool)

(assert (=> (and b!10838 (= (y!621 thiss!721) (x!6072 thiss!721)) t!2967) tb!2627))

(declare-fun result!2679 () Bool)

(assert (=> tb!2627 (= result!2679 true)))

(assert (=> d!8525 t!2967))

(declare-fun b_and!4977 () Bool)

(assert (= b_and!4967 (and (=> t!2967 result!2679) b_and!4977)))

(declare-fun b_lambda!5593 () Bool)

(assert (=> (not b_lambda!5593) (not d!8525)))

(declare-fun t!2969 () Bool)

(declare-fun tb!2629 () Bool)

(assert (=> (and b!10838 (= (x!6072 thiss!721) (y!621 thiss!721)) t!2969) tb!2629))

(declare-fun result!2681 () Bool)

(assert (=> tb!2629 (= result!2681 true)))

(assert (=> d!8525 t!2969))

(declare-fun b_and!4979 () Bool)

(assert (= b_and!4975 (and (=> t!2969 result!2681) b_and!4979)))

(declare-fun t!2971 () Bool)

(declare-fun tb!2631 () Bool)

(assert (=> (and b!10838 (= (y!621 thiss!721) (y!621 thiss!721)) t!2971) tb!2631))

(declare-fun result!2683 () Bool)

(assert (=> tb!2631 (= result!2683 true)))

(assert (=> d!8525 t!2971))

(declare-fun b_and!4981 () Bool)

(assert (= b_and!4977 (and (=> t!2971 result!2683) b_and!4981)))

(declare-fun b_lambda!5595 () Bool)

(assert (=> (not b_lambda!5595) (not b!10850)))

(declare-fun t!2973 () Bool)

(declare-fun tb!2633 () Bool)

(assert (=> (and b!10838 (= (evidence!177 thiss!721) (evidence!177 thiss!721)) t!2973) tb!2633))

(declare-fun result!2685 () Bool)

(assert (=> tb!2633 (= result!2685 true)))

(assert (=> b!10850 t!2973))

(declare-fun b_and!4983 () Bool)

(assert (= b_and!4969 (and (=> t!2973 result!2685) b_and!4983)))

(declare-fun m!13827 () Bool)

(assert (=> d!8525 m!13827))

(declare-fun m!13829 () Bool)

(assert (=> d!8525 m!13829))

(declare-fun m!13831 () Bool)

(assert (=> b!10850 m!13831))

(assert (=> start!2178 d!8525))

(declare-fun d!8527 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!8527 (= trivial!1 true)))

(assert (=> b!10842 d!8527))

(declare-fun d!8529 () Bool)

(declare-fun c!3317 () Bool)

(assert (=> d!8529 (= c!3317 (and (is-Cons!257 xs!292) (is-Nil!258 (tail!487 xs!292))))))

(declare-fun e!6257 () Balance!281)

(assert (=> d!8529 (= (foldRight1!90 xs!292 f!539) e!6257)))

(declare-fun b!10855 () Bool)

(assert (=> b!10855 (= e!6257 (head!475 xs!292))))

(declare-fun b!10856 () Bool)

(assert (=> b!10856 (= e!6257 (dynLambda!365 f!539 (head!475 xs!292) (foldRight1!90 (tail!487 xs!292) f!539)))))

(assert (= (and d!8529 c!3317) b!10855))

(assert (= (and d!8529 (not c!3317)) b!10856))

(declare-fun b_lambda!5597 () Bool)

(assert (=> (not b_lambda!5597) (not b!10856)))

(declare-fun t!2975 () Bool)

(declare-fun tb!2635 () Bool)

(assert (=> (and start!2178 (= f!539 f!539) t!2975) tb!2635))

(declare-fun result!2687 () Bool)

(assert (=> tb!2635 (= result!2687 true)))

(assert (=> b!10856 t!2975))

(declare-fun b_and!4985 () Bool)

(assert (= b_and!4971 (and (=> t!2975 result!2687) b_and!4985)))

(declare-fun t!2977 () Bool)

(declare-fun tb!2637 () Bool)

(assert (=> (and start!2178 (= f!554 f!539) t!2977) tb!2637))

(declare-fun result!2689 () Bool)

(assert (=> tb!2637 (= result!2689 true)))

(assert (=> b!10856 t!2977))

(declare-fun b_and!4987 () Bool)

(assert (= b_and!4973 (and (=> t!2977 result!2689) b_and!4987)))

(declare-fun m!13833 () Bool)

(assert (=> b!10856 m!13833))

(assert (=> b!10856 m!13833))

(declare-fun m!13835 () Bool)

(assert (=> b!10856 m!13835))

(assert (=> b!10840 d!8529))

(declare-fun d!8531 () Bool)

(declare-fun c!3318 () Bool)

(assert (=> d!8531 (= c!3318 (and (is-Cons!257 ys!54) (is-Nil!258 (tail!487 ys!54))))))

(declare-fun e!6258 () Balance!281)

(assert (=> d!8531 (= (foldRight1!90 ys!54 f!539) e!6258)))

(declare-fun b!10857 () Bool)

(assert (=> b!10857 (= e!6258 (head!475 ys!54))))

(declare-fun b!10858 () Bool)

(assert (=> b!10858 (= e!6258 (dynLambda!365 f!539 (head!475 ys!54) (foldRight1!90 (tail!487 ys!54) f!539)))))

(assert (= (and d!8531 c!3318) b!10857))

(assert (= (and d!8531 (not c!3318)) b!10858))

(declare-fun b_lambda!5599 () Bool)

(assert (=> (not b_lambda!5599) (not b!10858)))

(declare-fun t!2979 () Bool)

(declare-fun tb!2639 () Bool)

(assert (=> (and start!2178 (= f!539 f!539) t!2979) tb!2639))

(declare-fun result!2691 () Bool)

(assert (=> tb!2639 (= result!2691 true)))

(assert (=> b!10858 t!2979))

(declare-fun b_and!4989 () Bool)

(assert (= b_and!4985 (and (=> t!2979 result!2691) b_and!4989)))

(declare-fun tb!2641 () Bool)

(declare-fun t!2981 () Bool)

(assert (=> (and start!2178 (= f!554 f!539) t!2981) tb!2641))

(declare-fun result!2693 () Bool)

(assert (=> tb!2641 (= result!2693 true)))

(assert (=> b!10858 t!2981))

(declare-fun b_and!4991 () Bool)

(assert (= b_and!4987 (and (=> t!2981 result!2693) b_and!4991)))

(declare-fun m!13837 () Bool)

(assert (=> b!10858 m!13837))

(assert (=> b!10858 m!13837))

(declare-fun m!13839 () Bool)

(assert (=> b!10858 m!13839))

(assert (=> b!10840 d!8531))

(declare-fun d!8533 () Bool)

(declare-fun c!3319 () Bool)

(assert (=> d!8533 (= c!3319 (and (is-Cons!257 (append!109 xs!292 ys!54)) (is-Nil!258 (tail!487 (append!109 xs!292 ys!54)))))))

(declare-fun e!6259 () Balance!281)

(assert (=> d!8533 (= (foldRight1!90 (append!109 xs!292 ys!54) f!539) e!6259)))

(declare-fun b!10859 () Bool)

(assert (=> b!10859 (= e!6259 (head!475 (append!109 xs!292 ys!54)))))

(declare-fun b!10860 () Bool)

(assert (=> b!10860 (= e!6259 (dynLambda!365 f!539 (head!475 (append!109 xs!292 ys!54)) (foldRight1!90 (tail!487 (append!109 xs!292 ys!54)) f!539)))))

(assert (= (and d!8533 c!3319) b!10859))

(assert (= (and d!8533 (not c!3319)) b!10860))

(declare-fun b_lambda!5601 () Bool)

(assert (=> (not b_lambda!5601) (not b!10860)))

(declare-fun t!2983 () Bool)

(declare-fun tb!2643 () Bool)

(assert (=> (and start!2178 (= f!539 f!539) t!2983) tb!2643))

(declare-fun result!2695 () Bool)

(assert (=> tb!2643 (= result!2695 true)))

(assert (=> b!10860 t!2983))

(declare-fun b_and!4993 () Bool)

(assert (= b_and!4989 (and (=> t!2983 result!2695) b_and!4993)))

(declare-fun t!2985 () Bool)

(declare-fun tb!2645 () Bool)

(assert (=> (and start!2178 (= f!554 f!539) t!2985) tb!2645))

(declare-fun result!2697 () Bool)

(assert (=> tb!2645 (= result!2697 true)))

(assert (=> b!10860 t!2985))

(declare-fun b_and!4995 () Bool)

(assert (= b_and!4991 (and (=> t!2985 result!2697) b_and!4995)))

(declare-fun m!13841 () Bool)

(assert (=> b!10860 m!13841))

(assert (=> b!10860 m!13841))

(declare-fun m!13843 () Bool)

(assert (=> b!10860 m!13843))

(assert (=> b!10840 d!8533))

(declare-fun d!8535 () Bool)

(declare-fun c!3322 () Bool)

(assert (=> d!8535 (= c!3322 (is-Nil!258 xs!292))))

(declare-fun e!6262 () List!260)

(assert (=> d!8535 (= (append!109 xs!292 ys!54) e!6262)))

(declare-fun b!10865 () Bool)

(assert (=> b!10865 (= e!6262 ys!54)))

(declare-fun b!10866 () Bool)

(assert (=> b!10866 (= e!6262 (Cons!257 (head!475 xs!292) (append!109 (tail!487 xs!292) ys!54)))))

(assert (= (and d!8535 c!3322) b!10865))

(assert (= (and d!8535 (not c!3322)) b!10866))

(declare-fun m!13845 () Bool)

(assert (=> b!10866 m!13845))

(assert (=> b!10840 d!8535))

(declare-fun b_lambda!5603 () Bool)

(assert (= b_lambda!5597 (or (and b!10837 (= lambda!2877 f!539)) (and start!2178 b_free!1433) (and start!2178 b_free!1435 (= f!554 f!539)) b_lambda!5603)))

(declare-fun bs!2826 () Bool)

(declare-fun d!8537 () Bool)

(assert (= bs!2826 (and d!8537 b!10837)))

(assert (=> bs!2826 (= (dynLambda!365 lambda!2877 (head!475 xs!292) (foldRight1!90 (tail!487 xs!292) f!539)) (++!3 (head!475 xs!292) (foldRight1!90 (tail!487 xs!292) f!539)))))

(assert (=> bs!2826 m!13833))

(declare-fun m!13847 () Bool)

(assert (=> bs!2826 m!13847))

(assert (=> (and b!10837 (= lambda!2877 f!539) b!10856) d!8537))

(declare-fun b_lambda!5605 () Bool)

(assert (= b_lambda!5593 (or (and b!10842 (= lambda!2878 (y!621 thiss!721))) (and b!10842 (= lambda!2879 (y!621 thiss!721))) (and b!10838 b_free!1437 (= (x!6072 thiss!721) (y!621 thiss!721))) (and b!10838 b_free!1439) b_lambda!5605)))

(declare-fun bs!2827 () Bool)

(declare-fun d!8539 () Bool)

(assert (= bs!2827 (and d!8539 b!10842)))

(assert (=> bs!2827 (= (dynLambda!366 lambda!2878) (dynLambda!365 f!539 (foldRight1!90 xs!292 f!539) (foldRight1!90 ys!54 f!539)))))

(declare-fun b_lambda!5615 () Bool)

(assert (=> (not b_lambda!5615) (not bs!2827)))

(assert (=> bs!2827 t!2961))

(declare-fun b_and!4997 () Bool)

(assert (= b_and!4993 (and (=> t!2961 result!2673) b_and!4997)))

(assert (=> bs!2827 t!2963))

(declare-fun b_and!4999 () Bool)

(assert (= b_and!4995 (and (=> t!2963 result!2675) b_and!4999)))

(assert (=> bs!2827 m!13813))

(assert (=> bs!2827 m!13815))

(assert (=> bs!2827 m!13813))

(assert (=> bs!2827 m!13815))

(assert (=> bs!2827 m!13817))

(assert (=> (and b!10842 (= lambda!2878 (y!621 thiss!721)) d!8525) d!8539))

(declare-fun bs!2828 () Bool)

(declare-fun d!8541 () Bool)

(assert (= bs!2828 (and d!8541 b!10842)))

(assert (=> bs!2828 (= (dynLambda!366 lambda!2879) (dynLambda!365 f!539 (head!475 xs!292) (foldRight1!90 ys!54 f!539)))))

(declare-fun b_lambda!5617 () Bool)

(assert (=> (not b_lambda!5617) (not bs!2828)))

(declare-fun t!2987 () Bool)

(declare-fun tb!2647 () Bool)

(assert (=> (and start!2178 (= f!539 f!539) t!2987) tb!2647))

(declare-fun result!2699 () Bool)

(assert (=> tb!2647 (= result!2699 true)))

(assert (=> bs!2828 t!2987))

(declare-fun b_and!5001 () Bool)

(assert (= b_and!4997 (and (=> t!2987 result!2699) b_and!5001)))

(declare-fun tb!2649 () Bool)

(declare-fun t!2989 () Bool)

(assert (=> (and start!2178 (= f!554 f!539) t!2989) tb!2649))

(declare-fun result!2701 () Bool)

(assert (=> tb!2649 (= result!2701 true)))

(assert (=> bs!2828 t!2989))

(declare-fun b_and!5003 () Bool)

(assert (= b_and!4999 (and (=> t!2989 result!2701) b_and!5003)))

(assert (=> bs!2828 m!13815))

(assert (=> bs!2828 m!13815))

(declare-fun m!13849 () Bool)

(assert (=> bs!2828 m!13849))

(assert (=> (and b!10842 (= lambda!2879 (y!621 thiss!721)) d!8525) d!8541))

(declare-fun b_lambda!5607 () Bool)

(assert (= b_lambda!5591 (or (and b!10842 (= lambda!2878 (x!6072 thiss!721))) (and b!10842 (= lambda!2879 (x!6072 thiss!721))) (and b!10838 b_free!1437) (and b!10838 b_free!1439 (= (y!621 thiss!721) (x!6072 thiss!721))) b_lambda!5607)))

(declare-fun bs!2829 () Bool)

(declare-fun d!8543 () Bool)

(assert (= bs!2829 (and d!8543 b!10842)))

(assert (=> bs!2829 (= (dynLambda!366 lambda!2878) (dynLambda!365 f!539 (foldRight1!90 xs!292 f!539) (foldRight1!90 ys!54 f!539)))))

(declare-fun b_lambda!5619 () Bool)

(assert (=> (not b_lambda!5619) (not bs!2829)))

(assert (=> bs!2829 t!2961))

(declare-fun b_and!5005 () Bool)

(assert (= b_and!5001 (and (=> t!2961 result!2673) b_and!5005)))

(assert (=> bs!2829 t!2963))

(declare-fun b_and!5007 () Bool)

(assert (= b_and!5003 (and (=> t!2963 result!2675) b_and!5007)))

(assert (=> bs!2829 m!13813))

(assert (=> bs!2829 m!13815))

(assert (=> bs!2829 m!13813))

(assert (=> bs!2829 m!13815))

(assert (=> bs!2829 m!13817))

(assert (=> (and b!10842 (= lambda!2878 (x!6072 thiss!721)) d!8525) d!8543))

(declare-fun bs!2830 () Bool)

(declare-fun d!8545 () Bool)

(assert (= bs!2830 (and d!8545 b!10842)))

(assert (=> bs!2830 (= (dynLambda!366 lambda!2879) (dynLambda!365 f!539 (head!475 xs!292) (foldRight1!90 ys!54 f!539)))))

(declare-fun b_lambda!5621 () Bool)

(assert (=> (not b_lambda!5621) (not bs!2830)))

(assert (=> bs!2830 t!2987))

(declare-fun b_and!5009 () Bool)

(assert (= b_and!5005 (and (=> t!2987 result!2699) b_and!5009)))

(assert (=> bs!2830 t!2989))

(declare-fun b_and!5011 () Bool)

(assert (= b_and!5007 (and (=> t!2989 result!2701) b_and!5011)))

(assert (=> bs!2830 m!13815))

(assert (=> bs!2830 m!13815))

(assert (=> bs!2830 m!13849))

(assert (=> (and b!10842 (= lambda!2879 (x!6072 thiss!721)) d!8525) d!8545))

(declare-fun b_lambda!5609 () Bool)

(assert (= b_lambda!5601 (or (and b!10837 (= lambda!2877 f!539)) (and start!2178 b_free!1433) (and start!2178 b_free!1435 (= f!554 f!539)) b_lambda!5609)))

(declare-fun bs!2831 () Bool)

(declare-fun d!8547 () Bool)

(assert (= bs!2831 (and d!8547 b!10837)))

(assert (=> bs!2831 (= (dynLambda!365 lambda!2877 (head!475 (append!109 xs!292 ys!54)) (foldRight1!90 (tail!487 (append!109 xs!292 ys!54)) f!539)) (++!3 (head!475 (append!109 xs!292 ys!54)) (foldRight1!90 (tail!487 (append!109 xs!292 ys!54)) f!539)))))

(assert (=> bs!2831 m!13841))

(declare-fun m!13851 () Bool)

(assert (=> bs!2831 m!13851))

(assert (=> (and b!10837 (= lambda!2877 f!539) b!10860) d!8547))

(declare-fun b_lambda!5611 () Bool)

(assert (= b_lambda!5599 (or (and b!10837 (= lambda!2877 f!539)) (and start!2178 b_free!1433) (and start!2178 b_free!1435 (= f!554 f!539)) b_lambda!5611)))

(declare-fun bs!2832 () Bool)

(declare-fun d!8549 () Bool)

(assert (= bs!2832 (and d!8549 b!10837)))

(assert (=> bs!2832 (= (dynLambda!365 lambda!2877 (head!475 ys!54) (foldRight1!90 (tail!487 ys!54) f!539)) (++!3 (head!475 ys!54) (foldRight1!90 (tail!487 ys!54) f!539)))))

(assert (=> bs!2832 m!13837))

(declare-fun m!13853 () Bool)

(assert (=> bs!2832 m!13853))

(assert (=> (and b!10837 (= lambda!2877 f!539) b!10858) d!8549))

(declare-fun b_lambda!5613 () Bool)

(assert (= b_lambda!5595 (or (and b!10842 (= lambda!2880 (evidence!177 thiss!721))) (and b!10838 b_free!1441) b_lambda!5613)))

(declare-fun bs!2833 () Bool)

(declare-fun d!8551 () Bool)

(assert (= bs!2833 (and d!8551 b!10842)))

(assert (=> bs!2833 (= (dynLambda!364 lambda!2880) trivial!1)))

(assert (=> (and b!10842 (= lambda!2880 (evidence!177 thiss!721)) b!10850) d!8551))

(push 1)

(assert (not b_lambda!5605))

(assert (not b!10858))

(assert (not b_lambda!5607))

(assert (not b_lambda!5603))

(assert (not b_lambda!5617))

(assert (not bs!2826))

(assert (not b_next!3475))

(assert (not b_next!3483))

(assert b_and!4981)

(assert (not b_lambda!5589))

(assert (not b!10860))

(assert (not b_lambda!5611))

(assert (not bs!2831))

(assert (not b!10866))

(assert (not b_lambda!5621))

(assert b_and!4983)

(assert b_and!4979)

(assert (not b_next!3487))

(assert b_and!5011)

(assert (not b_lambda!5613))

(assert (not b_lambda!5609))

(assert (not d!8519))

(assert (not b_lambda!5615))

(assert (not b_next!3485))

(assert (not b_next!3477))

(assert (not bs!2830))

(assert (not bs!2829))

(assert (not bs!2832))

(assert (not b_lambda!5619))

(assert (not bs!2827))

(assert (not bs!2828))

(assert b_and!5009)

(assert (not b!10856))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3475))

(assert (not b_next!3483))

(assert b_and!4981)

(assert b_and!4983)

(assert b_and!4979)

(assert (not b_next!3487))

(assert b_and!5011)

(assert (not b_next!3485))

(assert (not b_next!3477))

(assert b_and!5009)

(check-sat)

(pop 1)

