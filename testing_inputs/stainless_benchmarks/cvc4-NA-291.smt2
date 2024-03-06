; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2208 () Bool)

(assert start!2208)

(declare-fun b_free!1469 () Bool)

(declare-fun b_next!3545 () Bool)

(assert (=> start!2208 (= b_free!1469 (not b_next!3545))))

(declare-fun tp!2365 () Bool)

(declare-fun b_and!5085 () Bool)

(assert (=> start!2208 (= tp!2365 b_and!5085)))

(declare-fun b_free!1471 () Bool)

(declare-fun b_next!3547 () Bool)

(assert (=> start!2208 (= b_free!1471 (not b_next!3547))))

(declare-fun tp!2367 () Bool)

(declare-fun b_and!5087 () Bool)

(assert (=> start!2208 (= tp!2367 b_and!5087)))

(declare-fun b!10999 () Bool)

(declare-fun b_free!1473 () Bool)

(declare-fun b_next!3549 () Bool)

(assert (=> b!10999 (= b_free!1473 (not b_next!3549))))

(declare-fun tp!2366 () Bool)

(declare-fun b_and!5089 () Bool)

(assert (=> b!10999 (= tp!2366 b_and!5089)))

(declare-fun b_free!1475 () Bool)

(declare-fun b_next!3551 () Bool)

(assert (=> b!10999 (= b_free!1475 (not b_next!3551))))

(declare-fun tp!2368 () Bool)

(declare-fun b_and!5091 () Bool)

(assert (=> b!10999 (= tp!2368 b_and!5091)))

(declare-fun f!539 () Int)

(declare-fun lambda!2913 () Int)

(declare-fun b!11000 () Bool)

(declare-fun b_next!3553 () Bool)

(assert (=> start!2208 (= b_next!3545 (or (and b!11000 (= lambda!2913 f!539)) b_next!3553))))

(declare-fun f!564 () Int)

(declare-fun b_next!3555 () Bool)

(assert (=> start!2208 (= b_next!3547 (or (and b!11000 (= lambda!2913 f!564)) b_next!3555))))

(declare-fun b!10998 () Bool)

(assert (=> b!10998 true))

(declare-fun order!179 () Int)

(declare-fun lambda!2914 () Int)

(declare-fun order!181 () Int)

(declare-fun dynLambda!377 (Int Int) Int)

(declare-fun dynLambda!378 (Int Int) Int)

(assert (=> b!10998 (< (dynLambda!377 order!179 f!539) (dynLambda!378 order!181 lambda!2914))))

(assert (=> b!10998 true))

(assert (=> b!10998 true))

(declare-fun b_next!3557 () Bool)

(declare-datatypes () ((Balance!291 (Balance!292 (extraOpen!186 Int) (extraClose!186 Int)))))

(declare-datatypes () ((EqProof!106 (EqProof!107 (x!6139 Int) (y!624 Int)))))

(declare-fun thiss!748 () EqProof!106)

(assert (=> b!10999 (= b_next!3549 (or (and b!10998 (= lambda!2914 (x!6139 thiss!748))) b_next!3557))))

(declare-fun b_next!3559 () Bool)

(assert (=> b!10999 (= b_next!3551 (or (and b!10998 (= lambda!2914 (y!624 thiss!748))) b_next!3559))))

(declare-fun b!10993 () Bool)

(declare-fun res!3966 () Bool)

(declare-fun e!6296 () Bool)

(assert (=> b!10993 (=> (not res!3966) (not e!6296))))

(declare-datatypes () ((List!265 (Nil!263) (Cons!262 (head!480 Balance!291) (tail!492 List!265)))))

(declare-fun xs!292 () List!265)

(assert (=> b!10993 (= res!3966 (or (not (is-Cons!262 xs!292)) (not (is-Nil!263 (tail!492 xs!292)))))))

(declare-fun b!10994 () Bool)

(declare-fun res!3965 () Bool)

(assert (=> b!10994 (=> (not res!3965) (not e!6296))))

(declare-fun ys!54 () List!265)

(declare-datatypes () ((ProofOps!230 (ProofOps!231 (prop!248 Bool)))))

(declare-fun thiss!710 () ProofOps!230)

(declare-fun dynLambda!379 (Int Balance!291 Balance!291) Balance!291)

(declare-fun foldRight1!95 (List!265 Int) Balance!291)

(declare-fun append!114 (List!265 List!265) List!265)

(assert (=> b!10994 (= res!3965 (= thiss!710 (ProofOps!231 (= (dynLambda!379 f!539 (foldRight1!95 xs!292 f!539) (foldRight1!95 ys!54 f!539)) (foldRight1!95 (append!114 xs!292 ys!54) f!539)))))))

(declare-fun b!10995 () Bool)

(declare-fun res!3967 () Bool)

(assert (=> b!10995 (=> (not res!3967) (not e!6296))))

(declare-fun thiss!755 () List!265)

(assert (=> b!10995 (= res!3967 (and (= thiss!755 (tail!492 xs!292)) (= f!564 f!539)))))

(declare-fun b!10996 () Bool)

(declare-fun res!3968 () Bool)

(assert (=> b!10996 (=> (not res!3968) (not e!6296))))

(declare-fun isEmpty!193 (List!265) Bool)

(assert (=> b!10996 (= res!3968 (not (isEmpty!193 ys!54)))))

(declare-fun b!10997 () Bool)

(assert (=> b!10997 (= e!6296 (isEmpty!193 thiss!755))))

(declare-fun res!3970 () Bool)

(assert (=> b!10998 (=> (not res!3970) (not e!6296))))

(assert (=> b!10998 (= res!3970 (= thiss!748 (EqProof!107 lambda!2914 lambda!2914)))))

(declare-fun e!6297 () Bool)

(assert (=> b!10999 (= e!6297 (and tp!2366 tp!2368))))

(declare-fun res!3971 () Bool)

(assert (=> b!11000 (=> (not res!3971) (not e!6296))))

(assert (=> b!11000 (= res!3971 (= f!539 lambda!2913))))

(declare-fun res!3969 () Bool)

(assert (=> start!2208 (=> (not res!3969) (not e!6296))))

(assert (=> start!2208 (= res!3969 (not (isEmpty!193 xs!292)))))

(assert (=> start!2208 e!6296))

(assert (=> start!2208 tp!2365))

(assert (=> start!2208 true))

(assert (=> start!2208 tp!2367))

(declare-fun inv!369 (EqProof!106) Bool)

(assert (=> start!2208 (and (inv!369 thiss!748) e!6297)))

(assert (= (and start!2208 res!3969) b!10996))

(assert (= (and b!10996 res!3968) b!11000))

(assert (= (and b!11000 res!3971) b!10994))

(assert (= (and b!10994 res!3965) b!10993))

(assert (= (and b!10993 res!3966) b!10998))

(assert (= (and b!10998 res!3970) b!10995))

(assert (= (and b!10995 res!3967) b!10997))

(assert (= start!2208 b!10999))

(declare-fun b_lambda!5661 () Bool)

(assert (=> (not b_lambda!5661) (not b!10994)))

(declare-fun t!3029 () Bool)

(declare-fun tb!2689 () Bool)

(assert (=> (and start!2208 (= f!539 f!539) t!3029) tb!2689))

(declare-fun result!2741 () Bool)

(assert (=> tb!2689 (= result!2741 true)))

(assert (=> b!10994 t!3029))

(declare-fun b_and!5093 () Bool)

(assert (= b_and!5085 (and (=> t!3029 result!2741) b_and!5093)))

(declare-fun t!3031 () Bool)

(declare-fun tb!2691 () Bool)

(assert (=> (and start!2208 (= f!564 f!539) t!3031) tb!2691))

(declare-fun result!2743 () Bool)

(assert (=> tb!2691 (= result!2743 true)))

(assert (=> b!10994 t!3031))

(declare-fun b_and!5095 () Bool)

(assert (= b_and!5087 (and (=> t!3031 result!2743) b_and!5095)))

(declare-fun m!13955 () Bool)

(assert (=> b!10994 m!13955))

(declare-fun m!13957 () Bool)

(assert (=> b!10994 m!13957))

(declare-fun m!13959 () Bool)

(assert (=> b!10994 m!13959))

(assert (=> b!10994 m!13957))

(assert (=> b!10994 m!13959))

(declare-fun m!13961 () Bool)

(assert (=> b!10994 m!13961))

(assert (=> b!10994 m!13955))

(declare-fun m!13963 () Bool)

(assert (=> b!10994 m!13963))

(declare-fun m!13965 () Bool)

(assert (=> b!10996 m!13965))

(declare-fun m!13967 () Bool)

(assert (=> b!10997 m!13967))

(declare-fun m!13969 () Bool)

(assert (=> start!2208 m!13969))

(declare-fun m!13971 () Bool)

(assert (=> start!2208 m!13971))

(push 1)

(assert (not b_next!3557))

(assert (not b_next!3555))

(assert (not b!10996))

(assert b_and!5089)

(assert (not b_next!3559))

(assert b_and!5091)

(assert (not b!10997))

(assert (not b_next!3553))

(assert (not b!10994))

(assert b_and!5095)

(assert (not b_lambda!5661))

(assert b_and!5093)

(assert (not start!2208))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3557))

(assert (not b_next!3555))

(assert b_and!5089)

(assert (not b_next!3559))

(assert b_and!5091)

(assert (not b_next!3553))

(assert b_and!5095)

(assert b_and!5093)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5663 () Bool)

(assert (= b_lambda!5661 (or (and b!11000 (= lambda!2913 f!539)) (and start!2208 b_free!1469) (and start!2208 b_free!1471 (= f!564 f!539)) b_lambda!5663)))

(declare-fun bs!2849 () Bool)

(declare-fun d!8589 () Bool)

(assert (= bs!2849 (and d!8589 b!11000)))

(declare-fun ++!3 (Balance!291 Balance!291) Balance!291)

(assert (=> bs!2849 (= (dynLambda!379 lambda!2913 (foldRight1!95 xs!292 f!539) (foldRight1!95 ys!54 f!539)) (++!3 (foldRight1!95 xs!292 f!539) (foldRight1!95 ys!54 f!539)))))

(assert (=> bs!2849 m!13957))

(assert (=> bs!2849 m!13959))

(declare-fun m!13973 () Bool)

(assert (=> bs!2849 m!13973))

(assert (=> (and b!11000 (= lambda!2913 f!539) b!10994) d!8589))

(push 1)

(assert (not b_next!3557))

(assert (not b_next!3555))

(assert (not b!10996))

(assert b_and!5089)

(assert (not b_next!3559))

(assert (not b_lambda!5663))

(assert b_and!5091)

(assert (not b!10997))

(assert (not bs!2849))

(assert (not b_next!3553))

(assert (not b!10994))

(assert b_and!5095)

(assert b_and!5093)

(assert (not start!2208))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3557))

(assert (not b_next!3555))

(assert b_and!5089)

(assert (not b_next!3559))

(assert b_and!5091)

(assert (not b_next!3553))

(assert b_and!5095)

(assert b_and!5093)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8591 () Bool)

(assert (=> d!8591 (= (isEmpty!193 ys!54) (is-Nil!263 ys!54))))

(assert (=> b!10996 d!8591))

(declare-fun d!8593 () Bool)

(assert (=> d!8593 (= (isEmpty!193 xs!292) (is-Nil!263 xs!292))))

(assert (=> start!2208 d!8593))

(declare-fun d!8595 () Bool)

(declare-fun dynLambda!380 (Int) Balance!291)

(assert (=> d!8595 (= (inv!369 thiss!748) (= (dynLambda!380 (x!6139 thiss!748)) (dynLambda!380 (y!624 thiss!748))))))

(declare-fun b_lambda!5665 () Bool)

(assert (=> (not b_lambda!5665) (not d!8595)))

(declare-fun t!3033 () Bool)

(declare-fun tb!2693 () Bool)

(assert (=> (and b!10999 (= (x!6139 thiss!748) (x!6139 thiss!748)) t!3033) tb!2693))

(declare-fun result!2745 () Bool)

(assert (=> tb!2693 (= result!2745 true)))

(assert (=> d!8595 t!3033))

(declare-fun b_and!5097 () Bool)

(assert (= b_and!5089 (and (=> t!3033 result!2745) b_and!5097)))

(declare-fun t!3035 () Bool)

(declare-fun tb!2695 () Bool)

(assert (=> (and b!10999 (= (y!624 thiss!748) (x!6139 thiss!748)) t!3035) tb!2695))

(declare-fun result!2747 () Bool)

(assert (=> tb!2695 (= result!2747 true)))

(assert (=> d!8595 t!3035))

(declare-fun b_and!5099 () Bool)

(assert (= b_and!5091 (and (=> t!3035 result!2747) b_and!5099)))

(declare-fun b_lambda!5667 () Bool)

(assert (=> (not b_lambda!5667) (not d!8595)))

(declare-fun t!3037 () Bool)

(declare-fun tb!2697 () Bool)

(assert (=> (and b!10999 (= (x!6139 thiss!748) (y!624 thiss!748)) t!3037) tb!2697))

(declare-fun result!2749 () Bool)

(assert (=> tb!2697 (= result!2749 true)))

(assert (=> d!8595 t!3037))

(declare-fun b_and!5101 () Bool)

(assert (= b_and!5097 (and (=> t!3037 result!2749) b_and!5101)))

(declare-fun t!3039 () Bool)

(declare-fun tb!2699 () Bool)

(assert (=> (and b!10999 (= (y!624 thiss!748) (y!624 thiss!748)) t!3039) tb!2699))

(declare-fun result!2751 () Bool)

(assert (=> tb!2699 (= result!2751 true)))

(assert (=> d!8595 t!3039))

(declare-fun b_and!5103 () Bool)

(assert (= b_and!5099 (and (=> t!3039 result!2751) b_and!5103)))

(declare-fun m!13975 () Bool)

(assert (=> d!8595 m!13975))

(declare-fun m!13977 () Bool)

(assert (=> d!8595 m!13977))

(assert (=> start!2208 d!8595))

(declare-fun d!8597 () Bool)

(declare-fun c!3333 () Bool)

(assert (=> d!8597 (= c!3333 (and (is-Cons!262 xs!292) (is-Nil!263 (tail!492 xs!292))))))

(declare-fun e!6300 () Balance!291)

(assert (=> d!8597 (= (foldRight1!95 xs!292 f!539) e!6300)))

(declare-fun b!11009 () Bool)

(assert (=> b!11009 (= e!6300 (head!480 xs!292))))

(declare-fun b!11010 () Bool)

(assert (=> b!11010 (= e!6300 (dynLambda!379 f!539 (head!480 xs!292) (foldRight1!95 (tail!492 xs!292) f!539)))))

(assert (= (and d!8597 c!3333) b!11009))

(assert (= (and d!8597 (not c!3333)) b!11010))

(declare-fun b_lambda!5669 () Bool)

(assert (=> (not b_lambda!5669) (not b!11010)))

(declare-fun t!3041 () Bool)

(declare-fun tb!2701 () Bool)

(assert (=> (and start!2208 (= f!539 f!539) t!3041) tb!2701))

(declare-fun result!2753 () Bool)

(assert (=> tb!2701 (= result!2753 true)))

(assert (=> b!11010 t!3041))

(declare-fun b_and!5105 () Bool)

(assert (= b_and!5093 (and (=> t!3041 result!2753) b_and!5105)))

(declare-fun t!3043 () Bool)

(declare-fun tb!2703 () Bool)

(assert (=> (and start!2208 (= f!564 f!539) t!3043) tb!2703))

(declare-fun result!2755 () Bool)

(assert (=> tb!2703 (= result!2755 true)))

(assert (=> b!11010 t!3043))

(declare-fun b_and!5107 () Bool)

(assert (= b_and!5095 (and (=> t!3043 result!2755) b_and!5107)))

(declare-fun m!13979 () Bool)

(assert (=> b!11010 m!13979))

(assert (=> b!11010 m!13979))

(declare-fun m!13981 () Bool)

(assert (=> b!11010 m!13981))

(assert (=> b!10994 d!8597))

(declare-fun d!8599 () Bool)

(declare-fun c!3334 () Bool)

(assert (=> d!8599 (= c!3334 (and (is-Cons!262 ys!54) (is-Nil!263 (tail!492 ys!54))))))

(declare-fun e!6301 () Balance!291)

(assert (=> d!8599 (= (foldRight1!95 ys!54 f!539) e!6301)))

(declare-fun b!11011 () Bool)

(assert (=> b!11011 (= e!6301 (head!480 ys!54))))

(declare-fun b!11012 () Bool)

(assert (=> b!11012 (= e!6301 (dynLambda!379 f!539 (head!480 ys!54) (foldRight1!95 (tail!492 ys!54) f!539)))))

(assert (= (and d!8599 c!3334) b!11011))

(assert (= (and d!8599 (not c!3334)) b!11012))

(declare-fun b_lambda!5671 () Bool)

(assert (=> (not b_lambda!5671) (not b!11012)))

(declare-fun t!3045 () Bool)

(declare-fun tb!2705 () Bool)

(assert (=> (and start!2208 (= f!539 f!539) t!3045) tb!2705))

(declare-fun result!2757 () Bool)

(assert (=> tb!2705 (= result!2757 true)))

(assert (=> b!11012 t!3045))

(declare-fun b_and!5109 () Bool)

(assert (= b_and!5105 (and (=> t!3045 result!2757) b_and!5109)))

(declare-fun t!3047 () Bool)

(declare-fun tb!2707 () Bool)

(assert (=> (and start!2208 (= f!564 f!539) t!3047) tb!2707))

(declare-fun result!2759 () Bool)

(assert (=> tb!2707 (= result!2759 true)))

(assert (=> b!11012 t!3047))

(declare-fun b_and!5111 () Bool)

(assert (= b_and!5107 (and (=> t!3047 result!2759) b_and!5111)))

(declare-fun m!13983 () Bool)

(assert (=> b!11012 m!13983))

(assert (=> b!11012 m!13983))

(declare-fun m!13985 () Bool)

(assert (=> b!11012 m!13985))

(assert (=> b!10994 d!8599))

(declare-fun d!8601 () Bool)

(declare-fun c!3335 () Bool)

(assert (=> d!8601 (= c!3335 (and (is-Cons!262 (append!114 xs!292 ys!54)) (is-Nil!263 (tail!492 (append!114 xs!292 ys!54)))))))

(declare-fun e!6302 () Balance!291)

(assert (=> d!8601 (= (foldRight1!95 (append!114 xs!292 ys!54) f!539) e!6302)))

(declare-fun b!11013 () Bool)

(assert (=> b!11013 (= e!6302 (head!480 (append!114 xs!292 ys!54)))))

(declare-fun b!11014 () Bool)

(assert (=> b!11014 (= e!6302 (dynLambda!379 f!539 (head!480 (append!114 xs!292 ys!54)) (foldRight1!95 (tail!492 (append!114 xs!292 ys!54)) f!539)))))

(assert (= (and d!8601 c!3335) b!11013))

(assert (= (and d!8601 (not c!3335)) b!11014))

(declare-fun b_lambda!5673 () Bool)

(assert (=> (not b_lambda!5673) (not b!11014)))

(declare-fun t!3049 () Bool)

(declare-fun tb!2709 () Bool)

(assert (=> (and start!2208 (= f!539 f!539) t!3049) tb!2709))

(declare-fun result!2761 () Bool)

(assert (=> tb!2709 (= result!2761 true)))

(assert (=> b!11014 t!3049))

(declare-fun b_and!5113 () Bool)

(assert (= b_and!5109 (and (=> t!3049 result!2761) b_and!5113)))

(declare-fun tb!2711 () Bool)

(declare-fun t!3051 () Bool)

(assert (=> (and start!2208 (= f!564 f!539) t!3051) tb!2711))

(declare-fun result!2763 () Bool)

(assert (=> tb!2711 (= result!2763 true)))

(assert (=> b!11014 t!3051))

(declare-fun b_and!5115 () Bool)

(assert (= b_and!5111 (and (=> t!3051 result!2763) b_and!5115)))

(declare-fun m!13987 () Bool)

(assert (=> b!11014 m!13987))

(assert (=> b!11014 m!13987))

(declare-fun m!13989 () Bool)

(assert (=> b!11014 m!13989))

(assert (=> b!10994 d!8601))

(declare-fun d!8603 () Bool)

(declare-fun c!3338 () Bool)

(assert (=> d!8603 (= c!3338 (is-Nil!263 xs!292))))

(declare-fun e!6305 () List!265)

(assert (=> d!8603 (= (append!114 xs!292 ys!54) e!6305)))

(declare-fun b!11019 () Bool)

(assert (=> b!11019 (= e!6305 ys!54)))

(declare-fun b!11020 () Bool)

(assert (=> b!11020 (= e!6305 (Cons!262 (head!480 xs!292) (append!114 (tail!492 xs!292) ys!54)))))

(assert (= (and d!8603 c!3338) b!11019))

(assert (= (and d!8603 (not c!3338)) b!11020))

(declare-fun m!13991 () Bool)

(assert (=> b!11020 m!13991))

(assert (=> b!10994 d!8603))

(declare-fun d!8605 () Bool)

(assert (=> d!8605 (= (isEmpty!193 thiss!755) (is-Nil!263 thiss!755))))

(assert (=> b!10997 d!8605))

(declare-fun d!8607 () Bool)

(declare-fun lt!1748 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!8607 (= lt!1748 (min!4 (extraOpen!186 (foldRight1!95 xs!292 f!539)) (extraClose!186 (foldRight1!95 ys!54 f!539))))))

(assert (=> d!8607 (= (++!3 (foldRight1!95 xs!292 f!539) (foldRight1!95 ys!54 f!539)) (Balance!292 (- (+ (extraOpen!186 (foldRight1!95 xs!292 f!539)) (extraOpen!186 (foldRight1!95 ys!54 f!539))) lt!1748) (- (+ (extraClose!186 (foldRight1!95 xs!292 f!539)) (extraClose!186 (foldRight1!95 ys!54 f!539))) lt!1748)))))

(declare-fun bs!2850 () Bool)

(assert (= bs!2850 d!8607))

(declare-fun m!13993 () Bool)

(assert (=> bs!2850 m!13993))

(assert (=> bs!2849 d!8607))

(declare-fun b_lambda!5675 () Bool)

(assert (= b_lambda!5671 (or (and b!11000 (= lambda!2913 f!539)) (and start!2208 b_free!1469) (and start!2208 b_free!1471 (= f!564 f!539)) b_lambda!5675)))

(declare-fun bs!2851 () Bool)

(declare-fun d!8609 () Bool)

(assert (= bs!2851 (and d!8609 b!11000)))

(assert (=> bs!2851 (= (dynLambda!379 lambda!2913 (head!480 ys!54) (foldRight1!95 (tail!492 ys!54) f!539)) (++!3 (head!480 ys!54) (foldRight1!95 (tail!492 ys!54) f!539)))))

(assert (=> bs!2851 m!13983))

(declare-fun m!13995 () Bool)

(assert (=> bs!2851 m!13995))

(assert (=> (and b!11000 (= lambda!2913 f!539) b!11012) d!8609))

(declare-fun b_lambda!5677 () Bool)

(assert (= b_lambda!5665 (or (and b!10998 (= lambda!2914 (x!6139 thiss!748))) (and b!10999 b_free!1473) (and b!10999 b_free!1475 (= (y!624 thiss!748) (x!6139 thiss!748))) b_lambda!5677)))

(declare-fun bs!2852 () Bool)

(declare-fun d!8611 () Bool)

(assert (= bs!2852 (and d!8611 b!10998)))

(assert (=> bs!2852 (= (dynLambda!380 lambda!2914) (dynLambda!379 f!539 (foldRight1!95 xs!292 f!539) (foldRight1!95 ys!54 f!539)))))

(declare-fun b_lambda!5685 () Bool)

(assert (=> (not b_lambda!5685) (not bs!2852)))

(assert (=> bs!2852 t!3029))

(declare-fun b_and!5117 () Bool)

(assert (= b_and!5113 (and (=> t!3029 result!2741) b_and!5117)))

(assert (=> bs!2852 t!3031))

(declare-fun b_and!5119 () Bool)

(assert (= b_and!5115 (and (=> t!3031 result!2743) b_and!5119)))

(assert (=> bs!2852 m!13957))

(assert (=> bs!2852 m!13959))

(assert (=> bs!2852 m!13957))

(assert (=> bs!2852 m!13959))

(assert (=> bs!2852 m!13961))

(assert (=> (and b!10998 (= lambda!2914 (x!6139 thiss!748)) d!8595) d!8611))

(declare-fun b_lambda!5679 () Bool)

(assert (= b_lambda!5673 (or (and b!11000 (= lambda!2913 f!539)) (and start!2208 b_free!1469) (and start!2208 b_free!1471 (= f!564 f!539)) b_lambda!5679)))

(declare-fun bs!2853 () Bool)

(declare-fun d!8613 () Bool)

(assert (= bs!2853 (and d!8613 b!11000)))

(assert (=> bs!2853 (= (dynLambda!379 lambda!2913 (head!480 (append!114 xs!292 ys!54)) (foldRight1!95 (tail!492 (append!114 xs!292 ys!54)) f!539)) (++!3 (head!480 (append!114 xs!292 ys!54)) (foldRight1!95 (tail!492 (append!114 xs!292 ys!54)) f!539)))))

(assert (=> bs!2853 m!13987))

(declare-fun m!13997 () Bool)

(assert (=> bs!2853 m!13997))

(assert (=> (and b!11000 (= lambda!2913 f!539) b!11014) d!8613))

(declare-fun b_lambda!5681 () Bool)

(assert (= b_lambda!5667 (or (and b!10998 (= lambda!2914 (y!624 thiss!748))) (and b!10999 b_free!1473 (= (x!6139 thiss!748) (y!624 thiss!748))) (and b!10999 b_free!1475) b_lambda!5681)))

(declare-fun bs!2854 () Bool)

(declare-fun d!8615 () Bool)

(assert (= bs!2854 (and d!8615 b!10998)))

(assert (=> bs!2854 (= (dynLambda!380 lambda!2914) (dynLambda!379 f!539 (foldRight1!95 xs!292 f!539) (foldRight1!95 ys!54 f!539)))))

(declare-fun b_lambda!5687 () Bool)

(assert (=> (not b_lambda!5687) (not bs!2854)))

(assert (=> bs!2854 t!3029))

(declare-fun b_and!5121 () Bool)

(assert (= b_and!5117 (and (=> t!3029 result!2741) b_and!5121)))

(assert (=> bs!2854 t!3031))

(declare-fun b_and!5123 () Bool)

(assert (= b_and!5119 (and (=> t!3031 result!2743) b_and!5123)))

(assert (=> bs!2854 m!13957))

(assert (=> bs!2854 m!13959))

(assert (=> bs!2854 m!13957))

(assert (=> bs!2854 m!13959))

(assert (=> bs!2854 m!13961))

(assert (=> (and b!10998 (= lambda!2914 (y!624 thiss!748)) d!8595) d!8615))

(declare-fun b_lambda!5683 () Bool)

(assert (= b_lambda!5669 (or (and b!11000 (= lambda!2913 f!539)) (and start!2208 b_free!1469) (and start!2208 b_free!1471 (= f!564 f!539)) b_lambda!5683)))

(declare-fun bs!2855 () Bool)

(declare-fun d!8617 () Bool)

(assert (= bs!2855 (and d!8617 b!11000)))

(assert (=> bs!2855 (= (dynLambda!379 lambda!2913 (head!480 xs!292) (foldRight1!95 (tail!492 xs!292) f!539)) (++!3 (head!480 xs!292) (foldRight1!95 (tail!492 xs!292) f!539)))))

(assert (=> bs!2855 m!13979))

(declare-fun m!13999 () Bool)

(assert (=> bs!2855 m!13999))

(assert (=> (and b!11000 (= lambda!2913 f!539) b!11010) d!8617))

(push 1)

(assert b_and!5123)

(assert (not b_next!3557))

(assert (not b_next!3555))

(assert (not b_lambda!5675))

(assert (not b!11010))

(assert b_and!5103)

(assert (not bs!2851))

(assert (not b!11014))

(assert (not b!11012))

(assert (not b_lambda!5679))

(assert (not b_next!3559))

(assert (not b_lambda!5663))

(assert (not b_lambda!5677))

(assert (not bs!2852))

(assert (not b_lambda!5685))

(assert (not b!11020))

(assert b_and!5121)

(assert (not b_lambda!5683))

(assert (not bs!2853))

(assert (not b_lambda!5681))

(assert b_and!5101)

(assert (not b_lambda!5687))

(assert (not b_next!3553))

(assert (not d!8607))

(assert (not bs!2855))

(assert (not bs!2854))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5123)

(assert (not b_next!3557))

(assert (not b_next!3555))

(assert b_and!5103)

(assert (not b_next!3559))

(assert b_and!5121)

(assert b_and!5101)

(assert (not b_next!3553))

(check-sat)

(pop 1)

