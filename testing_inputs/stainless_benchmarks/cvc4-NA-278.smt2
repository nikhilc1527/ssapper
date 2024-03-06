; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2150 () Bool)

(assert start!2150)

(declare-fun b_free!1393 () Bool)

(declare-fun b_next!3387 () Bool)

(assert (=> start!2150 (= b_free!1393 (not b_next!3387))))

(declare-fun tp!2241 () Bool)

(declare-fun b_and!4895 () Bool)

(assert (=> start!2150 (= tp!2241 b_and!4895)))

(declare-fun res!3737 () Bool)

(declare-fun e!6193 () Bool)

(assert (=> start!2150 (=> (not res!3737) (not e!6193))))

(declare-datatypes () ((A!932 (A!933 (val!17 Int)))))

(declare-datatypes () ((List!252 (Nil!250) (Cons!249 (head!467 A!932) (tail!479 List!252)))))

(declare-fun xs!433 () List!252)

(assert (=> start!2150 (= res!3737 (not (is-Nil!250 xs!433)))))

(assert (=> start!2150 e!6193))

(declare-fun e!6194 () Bool)

(assert (=> start!2150 e!6194))

(assert (=> start!2150 true))

(declare-fun tp_is_empty!33 () Bool)

(assert (=> start!2150 tp_is_empty!33))

(assert (=> start!2150 tp!2241))

(declare-fun b!10640 () Bool)

(declare-fun res!3736 () Bool)

(assert (=> b!10640 (=> (not res!3736) (not e!6193))))

(declare-fun z!121 () A!932)

(declare-fun f!759 () Int)

(declare-fun inductVal!35 () Bool)

(declare-fun foldRight_accumulator_equivalence!7 (List!252 A!932 Int) Bool)

(assert (=> b!10640 (= res!3736 (= inductVal!35 (foldRight_accumulator_equivalence!7 (tail!479 xs!433) z!121 f!759)))))

(declare-fun b!10641 () Bool)

(declare-fun foldRight!69 (List!252 A!932 Int) A!932)

(declare-fun foldRight1!85 (List!252 Int) A!932)

(declare-fun append!103 (List!252 List!252) List!252)

(assert (=> b!10641 (= e!6193 (not (= (foldRight!69 xs!433 z!121 f!759) (foldRight1!85 (append!103 xs!433 (Cons!249 z!121 Nil!250)) f!759))))))

(declare-fun b!10642 () Bool)

(declare-fun tp!2240 () Bool)

(assert (=> b!10642 (= e!6194 (and tp_is_empty!33 tp!2240))))

(assert (= (and start!2150 res!3737) b!10640))

(assert (= (and b!10640 res!3736) b!10641))

(assert (= (and start!2150 (is-Cons!249 xs!433)) b!10642))

(declare-fun m!13673 () Bool)

(assert (=> b!10640 m!13673))

(declare-fun m!13675 () Bool)

(assert (=> b!10641 m!13675))

(declare-fun m!13677 () Bool)

(assert (=> b!10641 m!13677))

(assert (=> b!10641 m!13677))

(declare-fun m!13679 () Bool)

(assert (=> b!10641 m!13679))

(push 1)

(assert (not b!10641))

(assert tp_is_empty!33)

(assert b_and!4895)

(assert (not b_next!3387))

(assert (not b!10640))

(assert (not b!10642))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4895)

(assert (not b_next!3387))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8489 () Bool)

(declare-fun c!3297 () Bool)

(assert (=> d!8489 (= c!3297 (is-Nil!250 xs!433))))

(declare-fun e!6197 () A!932)

(assert (=> d!8489 (= (foldRight!69 xs!433 z!121 f!759) e!6197)))

(declare-fun b!10647 () Bool)

(assert (=> b!10647 (= e!6197 z!121)))

(declare-fun b!10648 () Bool)

(declare-fun dynLambda!352 (Int A!932 A!932) A!932)

(assert (=> b!10648 (= e!6197 (dynLambda!352 f!759 (head!467 xs!433) (foldRight!69 (tail!479 xs!433) z!121 f!759)))))

(assert (= (and d!8489 c!3297) b!10647))

(assert (= (and d!8489 (not c!3297)) b!10648))

(declare-fun b_lambda!5559 () Bool)

(assert (=> (not b_lambda!5559) (not b!10648)))

(declare-fun t!2935 () Bool)

(declare-fun tb!2595 () Bool)

(assert (=> (and start!2150 (= f!759 f!759) t!2935) tb!2595))

(declare-fun result!2643 () Bool)

(assert (=> tb!2595 (= result!2643 tp_is_empty!33)))

(assert (=> b!10648 t!2935))

(declare-fun b_and!4897 () Bool)

(assert (= b_and!4895 (and (=> t!2935 result!2643) b_and!4897)))

(declare-fun m!13681 () Bool)

(assert (=> b!10648 m!13681))

(assert (=> b!10648 m!13681))

(declare-fun m!13683 () Bool)

(assert (=> b!10648 m!13683))

(assert (=> b!10641 d!8489))

(declare-fun d!8491 () Bool)

(declare-fun c!3300 () Bool)

(assert (=> d!8491 (= c!3300 (and (is-Cons!249 (append!103 xs!433 (Cons!249 z!121 Nil!250))) (is-Nil!250 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250))))))))

(declare-fun e!6200 () A!932)

(assert (=> d!8491 (= (foldRight1!85 (append!103 xs!433 (Cons!249 z!121 Nil!250)) f!759) e!6200)))

(declare-fun b!10655 () Bool)

(assert (=> b!10655 (= e!6200 (head!467 (append!103 xs!433 (Cons!249 z!121 Nil!250))))))

(declare-fun b!10656 () Bool)

(assert (=> b!10656 (= e!6200 (dynLambda!352 f!759 (head!467 (append!103 xs!433 (Cons!249 z!121 Nil!250))) (foldRight1!85 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250))) f!759)))))

(assert (= (and d!8491 c!3300) b!10655))

(assert (= (and d!8491 (not c!3300)) b!10656))

(declare-fun b_lambda!5561 () Bool)

(assert (=> (not b_lambda!5561) (not b!10656)))

(declare-fun t!2937 () Bool)

(declare-fun tb!2597 () Bool)

(assert (=> (and start!2150 (= f!759 f!759) t!2937) tb!2597))

(declare-fun result!2647 () Bool)

(assert (=> tb!2597 (= result!2647 tp_is_empty!33)))

(assert (=> b!10656 t!2937))

(declare-fun b_and!4899 () Bool)

(assert (= b_and!4897 (and (=> t!2937 result!2647) b_and!4899)))

(declare-fun m!13685 () Bool)

(assert (=> b!10656 m!13685))

(assert (=> b!10656 m!13685))

(declare-fun m!13687 () Bool)

(assert (=> b!10656 m!13687))

(assert (=> b!10641 d!8491))

(declare-fun d!8493 () Bool)

(declare-fun c!3303 () Bool)

(assert (=> d!8493 (= c!3303 (is-Nil!250 xs!433))))

(declare-fun e!6203 () List!252)

(assert (=> d!8493 (= (append!103 xs!433 (Cons!249 z!121 Nil!250)) e!6203)))

(declare-fun b!10661 () Bool)

(assert (=> b!10661 (= e!6203 (Cons!249 z!121 Nil!250))))

(declare-fun b!10662 () Bool)

(assert (=> b!10662 (= e!6203 (Cons!249 (head!467 xs!433) (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250))))))

(assert (= (and d!8493 c!3303) b!10661))

(assert (= (and d!8493 (not c!3303)) b!10662))

(declare-fun m!13689 () Bool)

(assert (=> b!10662 m!13689))

(assert (=> b!10641 d!8493))

(declare-fun b!10668 () Bool)

(declare-fun e!6206 () Bool)

(assert (=> b!10668 (= e!6206 (= (foldRight!69 (tail!479 xs!433) z!121 f!759) (foldRight1!85 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250)) f!759)))))

(declare-fun lt!1738 () Bool)

(assert (=> b!10668 (= lt!1738 (foldRight_accumulator_equivalence!7 (tail!479 (tail!479 xs!433)) z!121 f!759))))

(declare-fun d!8495 () Bool)

(assert (=> d!8495 e!6206))

(declare-fun c!3306 () Bool)

(assert (=> d!8495 (= c!3306 (is-Nil!250 (tail!479 xs!433)))))

(assert (=> d!8495 (= (foldRight_accumulator_equivalence!7 (tail!479 xs!433) z!121 f!759) true)))

(declare-fun b!10667 () Bool)

(assert (=> b!10667 (= e!6206 (= (foldRight!69 (tail!479 xs!433) z!121 f!759) (foldRight1!85 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250)) f!759)))))

(assert (= (and d!8495 c!3306) b!10667))

(assert (= (and d!8495 (not c!3306)) b!10668))

(assert (=> b!10668 m!13681))

(assert (=> b!10668 m!13689))

(assert (=> b!10668 m!13689))

(declare-fun m!13691 () Bool)

(assert (=> b!10668 m!13691))

(declare-fun m!13693 () Bool)

(assert (=> b!10668 m!13693))

(assert (=> b!10667 m!13681))

(assert (=> b!10667 m!13689))

(assert (=> b!10667 m!13689))

(assert (=> b!10667 m!13691))

(assert (=> b!10640 d!8495))

(declare-fun b!10673 () Bool)

(declare-fun e!6209 () Bool)

(declare-fun tp!2244 () Bool)

(assert (=> b!10673 (= e!6209 (and tp_is_empty!33 tp!2244))))

(assert (=> b!10642 (= tp!2240 e!6209)))

(assert (= (and b!10642 (is-Cons!249 (tail!479 xs!433))) b!10673))

(declare-fun b_lambda!5563 () Bool)

(assert (= b_lambda!5559 (or (and start!2150 b_free!1393) b_lambda!5563)))

(declare-fun b_lambda!5565 () Bool)

(assert (= b_lambda!5561 (or (and start!2150 b_free!1393) b_lambda!5565)))

(push 1)

(assert b_and!4899)

(assert (not b_lambda!5565))

(assert (not b!10648))

(assert (not b_lambda!5563))

(assert tp_is_empty!33)

(assert (not b!10656))

(assert (not b_next!3387))

(assert (not b!10662))

(assert (not b!10668))

(assert (not b!10673))

(assert (not b!10667))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4899)

(assert (not b_next!3387))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8497 () Bool)

(declare-fun c!3307 () Bool)

(assert (=> d!8497 (= c!3307 (is-Nil!250 (tail!479 xs!433)))))

(declare-fun e!6210 () A!932)

(assert (=> d!8497 (= (foldRight!69 (tail!479 xs!433) z!121 f!759) e!6210)))

(declare-fun b!10674 () Bool)

(assert (=> b!10674 (= e!6210 z!121)))

(declare-fun b!10675 () Bool)

(assert (=> b!10675 (= e!6210 (dynLambda!352 f!759 (head!467 (tail!479 xs!433)) (foldRight!69 (tail!479 (tail!479 xs!433)) z!121 f!759)))))

(assert (= (and d!8497 c!3307) b!10674))

(assert (= (and d!8497 (not c!3307)) b!10675))

(declare-fun b_lambda!5567 () Bool)

(assert (=> (not b_lambda!5567) (not b!10675)))

(declare-fun t!2939 () Bool)

(declare-fun tb!2599 () Bool)

(assert (=> (and start!2150 (= f!759 f!759) t!2939) tb!2599))

(declare-fun result!2651 () Bool)

(assert (=> tb!2599 (= result!2651 tp_is_empty!33)))

(assert (=> b!10675 t!2939))

(declare-fun b_and!4901 () Bool)

(assert (= b_and!4899 (and (=> t!2939 result!2651) b_and!4901)))

(declare-fun m!13695 () Bool)

(assert (=> b!10675 m!13695))

(assert (=> b!10675 m!13695))

(declare-fun m!13697 () Bool)

(assert (=> b!10675 m!13697))

(assert (=> b!10668 d!8497))

(declare-fun d!8499 () Bool)

(declare-fun c!3308 () Bool)

(assert (=> d!8499 (= c!3308 (and (is-Cons!249 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250))) (is-Nil!250 (tail!479 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250))))))))

(declare-fun e!6211 () A!932)

(assert (=> d!8499 (= (foldRight1!85 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250)) f!759) e!6211)))

(declare-fun b!10676 () Bool)

(assert (=> b!10676 (= e!6211 (head!467 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250))))))

(declare-fun b!10677 () Bool)

(assert (=> b!10677 (= e!6211 (dynLambda!352 f!759 (head!467 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250))) (foldRight1!85 (tail!479 (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250))) f!759)))))

(assert (= (and d!8499 c!3308) b!10676))

(assert (= (and d!8499 (not c!3308)) b!10677))

(declare-fun b_lambda!5569 () Bool)

(assert (=> (not b_lambda!5569) (not b!10677)))

(declare-fun t!2941 () Bool)

(declare-fun tb!2601 () Bool)

(assert (=> (and start!2150 (= f!759 f!759) t!2941) tb!2601))

(declare-fun result!2653 () Bool)

(assert (=> tb!2601 (= result!2653 tp_is_empty!33)))

(assert (=> b!10677 t!2941))

(declare-fun b_and!4903 () Bool)

(assert (= b_and!4901 (and (=> t!2941 result!2653) b_and!4903)))

(declare-fun m!13699 () Bool)

(assert (=> b!10677 m!13699))

(assert (=> b!10677 m!13699))

(declare-fun m!13701 () Bool)

(assert (=> b!10677 m!13701))

(assert (=> b!10668 d!8499))

(declare-fun d!8501 () Bool)

(declare-fun c!3309 () Bool)

(assert (=> d!8501 (= c!3309 (is-Nil!250 (tail!479 xs!433)))))

(declare-fun e!6212 () List!252)

(assert (=> d!8501 (= (append!103 (tail!479 xs!433) (Cons!249 z!121 Nil!250)) e!6212)))

(declare-fun b!10678 () Bool)

(assert (=> b!10678 (= e!6212 (Cons!249 z!121 Nil!250))))

(declare-fun b!10679 () Bool)

(assert (=> b!10679 (= e!6212 (Cons!249 (head!467 (tail!479 xs!433)) (append!103 (tail!479 (tail!479 xs!433)) (Cons!249 z!121 Nil!250))))))

(assert (= (and d!8501 c!3309) b!10678))

(assert (= (and d!8501 (not c!3309)) b!10679))

(declare-fun m!13703 () Bool)

(assert (=> b!10679 m!13703))

(assert (=> b!10668 d!8501))

(declare-fun e!6213 () Bool)

(declare-fun b!10681 () Bool)

(assert (=> b!10681 (= e!6213 (= (foldRight!69 (tail!479 (tail!479 xs!433)) z!121 f!759) (foldRight1!85 (append!103 (tail!479 (tail!479 xs!433)) (Cons!249 z!121 Nil!250)) f!759)))))

(declare-fun lt!1739 () Bool)

(assert (=> b!10681 (= lt!1739 (foldRight_accumulator_equivalence!7 (tail!479 (tail!479 (tail!479 xs!433))) z!121 f!759))))

(declare-fun d!8503 () Bool)

(assert (=> d!8503 e!6213))

(declare-fun c!3310 () Bool)

(assert (=> d!8503 (= c!3310 (is-Nil!250 (tail!479 (tail!479 xs!433))))))

(assert (=> d!8503 (= (foldRight_accumulator_equivalence!7 (tail!479 (tail!479 xs!433)) z!121 f!759) true)))

(declare-fun b!10680 () Bool)

(assert (=> b!10680 (= e!6213 (= (foldRight!69 (tail!479 (tail!479 xs!433)) z!121 f!759) (foldRight1!85 (append!103 (tail!479 (tail!479 xs!433)) (Cons!249 z!121 Nil!250)) f!759)))))

(assert (= (and d!8503 c!3310) b!10680))

(assert (= (and d!8503 (not c!3310)) b!10681))

(assert (=> b!10681 m!13695))

(assert (=> b!10681 m!13703))

(assert (=> b!10681 m!13703))

(declare-fun m!13705 () Bool)

(assert (=> b!10681 m!13705))

(declare-fun m!13707 () Bool)

(assert (=> b!10681 m!13707))

(assert (=> b!10680 m!13695))

(assert (=> b!10680 m!13703))

(assert (=> b!10680 m!13703))

(assert (=> b!10680 m!13705))

(assert (=> b!10668 d!8503))

(assert (=> b!10662 d!8501))

(assert (=> b!10667 d!8497))

(assert (=> b!10667 d!8499))

(assert (=> b!10667 d!8501))

(assert (=> b!10648 d!8497))

(declare-fun d!8505 () Bool)

(declare-fun c!3311 () Bool)

(assert (=> d!8505 (= c!3311 (and (is-Cons!249 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250)))) (is-Nil!250 (tail!479 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250)))))))))

(declare-fun e!6214 () A!932)

(assert (=> d!8505 (= (foldRight1!85 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250))) f!759) e!6214)))

(declare-fun b!10682 () Bool)

(assert (=> b!10682 (= e!6214 (head!467 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250)))))))

(declare-fun b!10683 () Bool)

(assert (=> b!10683 (= e!6214 (dynLambda!352 f!759 (head!467 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250)))) (foldRight1!85 (tail!479 (tail!479 (append!103 xs!433 (Cons!249 z!121 Nil!250)))) f!759)))))

(assert (= (and d!8505 c!3311) b!10682))

(assert (= (and d!8505 (not c!3311)) b!10683))

(declare-fun b_lambda!5571 () Bool)

(assert (=> (not b_lambda!5571) (not b!10683)))

(declare-fun t!2943 () Bool)

(declare-fun tb!2603 () Bool)

(assert (=> (and start!2150 (= f!759 f!759) t!2943) tb!2603))

(declare-fun result!2655 () Bool)

(assert (=> tb!2603 (= result!2655 tp_is_empty!33)))

(assert (=> b!10683 t!2943))

(declare-fun b_and!4905 () Bool)

(assert (= b_and!4903 (and (=> t!2943 result!2655) b_and!4905)))

(declare-fun m!13709 () Bool)

(assert (=> b!10683 m!13709))

(assert (=> b!10683 m!13709))

(declare-fun m!13711 () Bool)

(assert (=> b!10683 m!13711))

(assert (=> b!10656 d!8505))

(declare-fun b!10684 () Bool)

(declare-fun e!6215 () Bool)

(declare-fun tp!2245 () Bool)

(assert (=> b!10684 (= e!6215 (and tp_is_empty!33 tp!2245))))

(assert (=> b!10673 (= tp!2244 e!6215)))

(assert (= (and b!10673 (is-Cons!249 (tail!479 (tail!479 xs!433)))) b!10684))

(declare-fun b_lambda!5573 () Bool)

(assert (= b_lambda!5569 (or (and start!2150 b_free!1393) b_lambda!5573)))

(declare-fun b_lambda!5575 () Bool)

(assert (= b_lambda!5567 (or (and start!2150 b_free!1393) b_lambda!5575)))

(declare-fun b_lambda!5577 () Bool)

(assert (= b_lambda!5571 (or (and start!2150 b_free!1393) b_lambda!5577)))

(push 1)

(assert (not b_lambda!5573))

(assert (not b_lambda!5565))

(assert (not b!10677))

(assert b_and!4905)

(assert (not b_lambda!5563))

(assert tp_is_empty!33)

(assert (not b!10675))

(assert (not b!10684))

(assert (not b_next!3387))

(assert (not b!10679))

(assert (not b!10683))

(assert (not b!10681))

(assert (not b_lambda!5575))

(assert (not b!10680))

(assert (not b_lambda!5577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4905)

(assert (not b_next!3387))

(check-sat)

(pop 1)

