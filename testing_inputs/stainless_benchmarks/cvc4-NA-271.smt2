; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2080 () Bool)

(assert start!2080)

(declare-fun b!10427 () Bool)

(declare-fun b_free!1373 () Bool)

(declare-fun b_next!3341 () Bool)

(assert (=> b!10427 (= b_free!1373 (not b_next!3341))))

(declare-fun tp!2191 () Bool)

(declare-fun b_and!4819 () Bool)

(assert (=> b!10427 (= tp!2191 b_and!4819)))

(declare-fun b_free!1375 () Bool)

(declare-fun b_next!3343 () Bool)

(assert (=> b!10427 (= b_free!1375 (not b_next!3343))))

(declare-fun tp!2190 () Bool)

(declare-fun b_and!4821 () Bool)

(assert (=> b!10427 (= tp!2190 b_and!4821)))

(declare-fun b_free!1377 () Bool)

(declare-fun b_next!3345 () Bool)

(assert (=> b!10427 (= b_free!1377 (not b_next!3345))))

(declare-fun tp!2193 () Bool)

(declare-fun b_and!4823 () Bool)

(assert (=> b!10427 (= tp!2193 b_and!4823)))

(declare-fun b!10428 () Bool)

(declare-fun b_free!1379 () Bool)

(declare-fun b_next!3347 () Bool)

(assert (=> b!10428 (= b_free!1379 (not b_next!3347))))

(declare-fun tp!2194 () Bool)

(declare-fun b_and!4825 () Bool)

(assert (=> b!10428 (= tp!2194 b_and!4825)))

(declare-fun b_free!1381 () Bool)

(declare-fun b_next!3349 () Bool)

(assert (=> b!10428 (= b_free!1381 (not b_next!3349))))

(declare-fun tp!2192 () Bool)

(declare-fun b_and!4827 () Bool)

(assert (=> b!10428 (= tp!2192 b_and!4827)))

(declare-fun b!10426 () Bool)

(declare-fun m!13467 () Bool)

(assert (=> b!10426 m!13467))

(assert (=> b!10426 true))

(declare-fun lambda!2805 () Int)

(declare-datatypes () ((EqEvidence!216 (EqEvidence!217 (x!5913 Int) (y!617 Int) (evidence!175 Int)))))

(declare-fun thiss!670 () EqEvidence!216)

(declare-fun dynLambda!345 (Int) Int)

(assert (=> (and b!10427 b!10426 (= (dynLambda!345 lambda!2805) (dynLambda!345 (x!5913 thiss!670)))) (= lambda!2805 (x!5913 thiss!670))))

(assert (=> (and b!10427 b!10426 (= (dynLambda!345 lambda!2805) (dynLambda!345 (y!617 thiss!670)))) (= lambda!2805 (y!617 thiss!670))))

(declare-datatypes () ((EqProof!100 (EqProof!101 (x!5914 Int) (y!618 Int)))))

(declare-fun that!171 () EqProof!100)

(assert (=> (and b!10428 b!10426 (= (dynLambda!345 lambda!2805) (dynLambda!345 (x!5914 that!171)))) (= lambda!2805 (x!5914 that!171))))

(assert (=> (and b!10428 b!10426 (= (dynLambda!345 lambda!2805) (dynLambda!345 (y!618 that!171)))) (= lambda!2805 (y!618 that!171))))

(declare-fun b_next!3351 () Bool)

(assert (=> b!10427 (= b_next!3341 (or (and b!10426 (= lambda!2805 (x!5913 thiss!670))) b_next!3351))))

(declare-fun b_next!3353 () Bool)

(assert (=> b!10427 (= b_next!3343 (or (and b!10426 (= lambda!2805 (y!617 thiss!670))) b_next!3353))))

(declare-fun b_next!3355 () Bool)

(assert (=> b!10428 (= b_next!3347 (or (and b!10426 (= lambda!2805 (x!5914 that!171))) b_next!3355))))

(declare-fun b_next!3357 () Bool)

(assert (=> b!10428 (= b_next!3349 (or (and b!10426 (= lambda!2805 (y!618 that!171))) b_next!3357))))

(declare-fun lambda!2806 () Int)

(assert (=> b!10426 (not (= lambda!2806 lambda!2805))))

(assert (=> b!10426 true))

(declare-fun b_next!3359 () Bool)

(assert (=> b!10427 (= b_next!3351 (or (and b!10426 (= lambda!2806 (x!5913 thiss!670))) b_next!3359))))

(declare-fun b_next!3361 () Bool)

(assert (=> b!10427 (= b_next!3353 (or (and b!10426 (= lambda!2806 (y!617 thiss!670))) b_next!3361))))

(declare-fun b_next!3363 () Bool)

(assert (=> b!10428 (= b_next!3355 (or (and b!10426 (= lambda!2806 (x!5914 that!171))) b_next!3363))))

(declare-fun b_next!3365 () Bool)

(assert (=> b!10428 (= b_next!3357 (or (and b!10426 (= lambda!2806 (y!618 that!171))) b_next!3365))))

(declare-fun m!13469 () Bool)

(assert (=> b!10426 m!13469))

(declare-fun lambda!2807 () Int)

(declare-fun dynLambda!346 (Int) Bool)

(assert (=> (and b!10427 b!10426 (= (dynLambda!346 lambda!2807) (dynLambda!346 (evidence!175 thiss!670)))) (= lambda!2807 (evidence!175 thiss!670))))

(declare-fun b_next!3367 () Bool)

(assert (=> b!10427 (= b_next!3345 (or (and b!10426 (= lambda!2807 (evidence!175 thiss!670))) b_next!3367))))

(declare-fun bs!2776 () Bool)

(declare-fun b!10420 () Bool)

(assert (= bs!2776 (and b!10420 b!10426)))

(declare-datatypes () ((Balance!261 (Balance!262 (extraOpen!171 Int) (extraClose!171 Int)))))

(declare-fun balance!3 () Balance!261)

(declare-fun lambda!2808 () Int)

(declare-fun counter!4 () Int)

(declare-fun balanceToCounter!0 (Balance!261) Int)

(assert (=> bs!2776 (= (= counter!4 (balanceToCounter!0 balance!3)) (= lambda!2808 lambda!2805))))

(assert (=> bs!2776 (not (= lambda!2808 lambda!2806))))

(assert (=> b!10420 true))

(assert (=> (and b!10427 b!10420 (= (dynLambda!345 lambda!2808) (dynLambda!345 (x!5913 thiss!670)))) (= lambda!2808 (x!5913 thiss!670))))

(assert (=> (and b!10427 b!10420 (= (dynLambda!345 lambda!2808) (dynLambda!345 (y!617 thiss!670)))) (= lambda!2808 (y!617 thiss!670))))

(assert (=> (and b!10428 b!10420 (= (dynLambda!345 lambda!2808) (dynLambda!345 (x!5914 that!171)))) (= lambda!2808 (x!5914 that!171))))

(assert (=> (and b!10428 b!10420 (= (dynLambda!345 lambda!2808) (dynLambda!345 (y!618 that!171)))) (= lambda!2808 (y!618 that!171))))

(declare-fun b_next!3369 () Bool)

(assert (=> b!10427 (= b_next!3359 (or (and b!10420 (= lambda!2808 (x!5913 thiss!670))) b_next!3369))))

(declare-fun b_next!3371 () Bool)

(assert (=> b!10427 (= b_next!3361 (or (and b!10420 (= lambda!2808 (y!617 thiss!670))) b_next!3371))))

(declare-fun b_next!3373 () Bool)

(assert (=> b!10428 (= b_next!3363 (or (and b!10420 (= lambda!2808 (x!5914 that!171))) b_next!3373))))

(declare-fun b_next!3375 () Bool)

(assert (=> b!10428 (= b_next!3365 (or (and b!10420 (= lambda!2808 (y!618 that!171))) b_next!3375))))

(declare-fun b!10417 () Bool)

(declare-fun res!3660 () Bool)

(declare-fun e!6074 () Bool)

(assert (=> b!10417 (=> (not res!3660) (not e!6074))))

(declare-datatypes () ((Parenthesis!70 (CloseParenthesis!69) (OpenParenthesis!69))))

(declare-datatypes () ((List!247 (Nil!245) (Cons!244 (head!462 Parenthesis!70) (tail!474 List!247)))))

(declare-fun xs!280 () List!247)

(declare-fun original_sequential_helper!0 (List!247) Bool)

(assert (=> b!10417 (= res!3660 (original_sequential_helper!0 (tail!474 xs!280)))))

(declare-fun b!10418 () Bool)

(declare-fun res!3665 () Bool)

(assert (=> b!10418 (=> (not res!3665) (not e!6074))))

(declare-fun lambda!2803 () Int)

(declare-fun nonNegative!0 (Balance!261) Bool)

(declare-fun foldRight!63 (List!247 Balance!261 Int) Balance!261)

(assert (=> b!10418 (= res!3665 (nonNegative!0 (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803)))))

(declare-fun b!10419 () Bool)

(declare-fun res!3657 () Bool)

(assert (=> b!10419 (=> (not res!3657) (not e!6074))))

(declare-datatypes () ((ProofOps!208 (ProofOps!209 (prop!235 Bool)))))

(declare-fun thiss!651 () ProofOps!208)

(declare-fun e!6076 () Bool)

(assert (=> b!10419 (= res!3657 (= thiss!651 (ProofOps!209 e!6076)))))

(declare-fun res!3656 () Bool)

(assert (=> b!10419 (=> (not res!3656) (not e!6076))))

(assert (=> b!10419 (= res!3656 (= (balanceToCounter!0 balance!3) counter!4))))

(declare-fun res!3664 () Bool)

(assert (=> b!10420 (=> (not res!3664) (not e!6074))))

(assert (=> b!10420 (= res!3664 (= that!171 (EqProof!101 lambda!2808 lambda!2808)))))

(declare-fun res!3661 () Bool)

(assert (=> start!2080 (=> (not res!3661) (not e!6074))))

(assert (=> start!2080 (= res!3661 (= balance!3 (foldRight!63 xs!280 (Balance!262 0 0) lambda!2803)))))

(assert (=> start!2080 e!6074))

(assert (=> start!2080 true))

(declare-fun e!6073 () Bool)

(declare-fun inv!362 (EqEvidence!216) Bool)

(assert (=> start!2080 (and (inv!362 thiss!670) e!6073)))

(declare-fun e!6075 () Bool)

(declare-fun inv!363 (EqProof!100) Bool)

(assert (=> start!2080 (and (inv!363 that!171) e!6075)))

(declare-fun b!10421 () Bool)

(assert (=> b!10421 (= e!6076 (nonNegative!0 balance!3))))

(declare-fun b!10422 () Bool)

(declare-fun res!3663 () Bool)

(assert (=> b!10422 (=> (not res!3663) (not e!6074))))

(assert (=> b!10422 (= res!3663 (dynLambda!346 (evidence!175 thiss!670)))))

(declare-fun b!10423 () Bool)

(declare-fun res!3662 () Bool)

(assert (=> b!10423 (=> (not res!3662) (not e!6074))))

(declare-fun lambda!2804 () Int)

(declare-fun foldRight!64 (List!247 Int Int) Int)

(assert (=> b!10423 (= res!3662 (= counter!4 (foldRight!64 xs!280 0 lambda!2804)))))

(declare-fun b!10424 () Bool)

(assert (=> b!10424 (= e!6074 (not (= (dynLambda!345 (y!617 thiss!670)) (dynLambda!345 (x!5914 that!171)))))))

(declare-fun b!10425 () Bool)

(declare-fun res!3658 () Bool)

(assert (=> b!10425 (=> (not res!3658) (not e!6074))))

(assert (=> b!10425 (= res!3658 (not (is-Nil!245 xs!280)))))

(declare-fun res!3659 () Bool)

(assert (=> b!10426 (=> (not res!3659) (not e!6074))))

(assert (=> b!10426 (= res!3659 (= thiss!670 (EqEvidence!217 lambda!2805 lambda!2806 lambda!2807)))))

(assert (=> b!10427 (= e!6073 (and tp!2191 tp!2190 tp!2193))))

(assert (=> b!10428 (= e!6075 (and tp!2194 tp!2192))))

(assert (= (and start!2080 res!3661) b!10423))

(assert (= (and b!10423 res!3662) b!10419))

(assert (= (and b!10419 res!3656) b!10421))

(assert (= (and b!10419 res!3657) b!10425))

(assert (= (and b!10425 res!3658) b!10417))

(assert (= (and b!10417 res!3660) b!10418))

(assert (= (and b!10418 res!3665) b!10426))

(assert (= (and b!10426 res!3659) b!10420))

(assert (= (and b!10420 res!3664) b!10422))

(assert (= (and b!10422 res!3663) b!10424))

(assert (= start!2080 b!10427))

(assert (= start!2080 b!10428))

(declare-fun b_lambda!5471 () Bool)

(assert (=> (not b_lambda!5471) (not b!10422)))

(declare-fun t!2897 () Bool)

(declare-fun tb!2557 () Bool)

(assert (=> (and b!10427 (= (evidence!175 thiss!670) (evidence!175 thiss!670)) t!2897) tb!2557))

(declare-fun result!2597 () Bool)

(assert (=> tb!2557 (= result!2597 true)))

(assert (=> b!10422 t!2897))

(declare-fun b_and!4829 () Bool)

(assert (= b_and!4823 (and (=> t!2897 result!2597) b_and!4829)))

(declare-fun b_lambda!5473 () Bool)

(assert (=> (not b_lambda!5473) (not b!10424)))

(declare-fun t!2899 () Bool)

(declare-fun tb!2559 () Bool)

(assert (=> (and b!10427 (= (x!5913 thiss!670) (y!617 thiss!670)) t!2899) tb!2559))

(declare-fun result!2599 () Bool)

(assert (=> tb!2559 (= result!2599 true)))

(assert (=> b!10424 t!2899))

(declare-fun b_and!4831 () Bool)

(assert (= b_and!4819 (and (=> t!2899 result!2599) b_and!4831)))

(declare-fun t!2901 () Bool)

(declare-fun tb!2561 () Bool)

(assert (=> (and b!10427 (= (y!617 thiss!670) (y!617 thiss!670)) t!2901) tb!2561))

(declare-fun result!2601 () Bool)

(assert (=> tb!2561 (= result!2601 true)))

(assert (=> b!10424 t!2901))

(declare-fun b_and!4833 () Bool)

(assert (= b_and!4821 (and (=> t!2901 result!2601) b_and!4833)))

(declare-fun t!2903 () Bool)

(declare-fun tb!2563 () Bool)

(assert (=> (and b!10428 (= (x!5914 that!171) (y!617 thiss!670)) t!2903) tb!2563))

(declare-fun result!2603 () Bool)

(assert (=> tb!2563 (= result!2603 true)))

(assert (=> b!10424 t!2903))

(declare-fun b_and!4835 () Bool)

(assert (= b_and!4825 (and (=> t!2903 result!2603) b_and!4835)))

(declare-fun tb!2565 () Bool)

(declare-fun t!2905 () Bool)

(assert (=> (and b!10428 (= (y!618 that!171) (y!617 thiss!670)) t!2905) tb!2565))

(declare-fun result!2605 () Bool)

(assert (=> tb!2565 (= result!2605 true)))

(assert (=> b!10424 t!2905))

(declare-fun b_and!4837 () Bool)

(assert (= b_and!4827 (and (=> t!2905 result!2605) b_and!4837)))

(declare-fun b_lambda!5475 () Bool)

(assert (=> (not b_lambda!5475) (not b!10424)))

(declare-fun tb!2567 () Bool)

(declare-fun t!2907 () Bool)

(assert (=> (and b!10427 (= (x!5913 thiss!670) (x!5914 that!171)) t!2907) tb!2567))

(declare-fun result!2607 () Bool)

(assert (=> tb!2567 (= result!2607 true)))

(assert (=> b!10424 t!2907))

(declare-fun b_and!4839 () Bool)

(assert (= b_and!4831 (and (=> t!2907 result!2607) b_and!4839)))

(declare-fun tb!2569 () Bool)

(declare-fun t!2909 () Bool)

(assert (=> (and b!10427 (= (y!617 thiss!670) (x!5914 that!171)) t!2909) tb!2569))

(declare-fun result!2609 () Bool)

(assert (=> tb!2569 (= result!2609 true)))

(assert (=> b!10424 t!2909))

(declare-fun b_and!4841 () Bool)

(assert (= b_and!4833 (and (=> t!2909 result!2609) b_and!4841)))

(declare-fun t!2911 () Bool)

(declare-fun tb!2571 () Bool)

(assert (=> (and b!10428 (= (x!5914 that!171) (x!5914 that!171)) t!2911) tb!2571))

(declare-fun result!2611 () Bool)

(assert (=> tb!2571 (= result!2611 true)))

(assert (=> b!10424 t!2911))

(declare-fun b_and!4843 () Bool)

(assert (= b_and!4835 (and (=> t!2911 result!2611) b_and!4843)))

(declare-fun t!2913 () Bool)

(declare-fun tb!2573 () Bool)

(assert (=> (and b!10428 (= (y!618 that!171) (x!5914 that!171)) t!2913) tb!2573))

(declare-fun result!2613 () Bool)

(assert (=> tb!2573 (= result!2613 true)))

(assert (=> b!10424 t!2913))

(declare-fun b_and!4845 () Bool)

(assert (= b_and!4837 (and (=> t!2913 result!2613) b_and!4845)))

(declare-fun m!13471 () Bool)

(assert (=> b!10417 m!13471))

(declare-fun m!13473 () Bool)

(assert (=> start!2080 m!13473))

(declare-fun m!13475 () Bool)

(assert (=> start!2080 m!13475))

(declare-fun m!13477 () Bool)

(assert (=> start!2080 m!13477))

(declare-fun m!13479 () Bool)

(assert (=> b!10421 m!13479))

(declare-fun m!13481 () Bool)

(assert (=> b!10422 m!13481))

(assert (=> b!10419 m!13467))

(declare-fun m!13483 () Bool)

(assert (=> b!10418 m!13483))

(assert (=> b!10418 m!13483))

(declare-fun m!13485 () Bool)

(assert (=> b!10418 m!13485))

(declare-fun m!13487 () Bool)

(assert (=> b!10424 m!13487))

(declare-fun m!13489 () Bool)

(assert (=> b!10424 m!13489))

(declare-fun m!13491 () Bool)

(assert (=> b!10423 m!13491))

(push 1)

(assert (not b_lambda!5475))

(assert b_and!4829)

(assert (not b!10418))

(assert (not start!2080))

(assert (not b_next!3369))

(assert (not b!10419))

(assert (not b_next!3375))

(assert (not b!10423))

(assert (not b_lambda!5471))

(assert (not b_next!3373))

(assert (not b_next!3367))

(assert b_and!4843)

(assert (not b!10421))

(assert b_and!4839)

(assert (not b_next!3371))

(assert b_and!4841)

(assert (not b!10426))

(assert b_and!4845)

(assert (not b!10417))

(assert (not b_lambda!5473))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4829)

(assert (not b_next!3369))

(assert (not b_next!3375))

(assert (not b_next!3373))

(assert (not b_next!3367))

(assert b_and!4843)

(assert b_and!4839)

(assert (not b_next!3371))

(assert b_and!4841)

(assert b_and!4845)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!5477 () Bool)

(assert (= b_lambda!5475 (or (and b!10420 (= lambda!2808 (x!5914 that!171))) (and b!10426 (= lambda!2805 (x!5914 that!171))) (and b!10426 (= lambda!2806 (x!5914 that!171))) (and b!10427 b_free!1375 (= (y!617 thiss!670) (x!5914 that!171))) (and b!10427 b_free!1373 (= (x!5913 thiss!670) (x!5914 that!171))) (and b!10428 b_free!1381 (= (y!618 that!171) (x!5914 that!171))) (and b!10428 b_free!1379) b_lambda!5477)))

(declare-fun bs!2777 () Bool)

(declare-fun d!8347 () Bool)

(assert (= bs!2777 (and d!8347 b!10420)))

(assert (=> bs!2777 (= (dynLambda!345 lambda!2808) counter!4)))

(assert (=> (and b!10420 (= lambda!2808 (x!5914 that!171)) b!10424) d!8347))

(declare-fun bs!2778 () Bool)

(declare-fun d!8349 () Bool)

(assert (= bs!2778 (and d!8349 b!10426)))

(assert (=> bs!2778 (= (dynLambda!345 lambda!2805) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10426 (= lambda!2805 (x!5914 that!171)) b!10424) d!8349))

(declare-fun bs!2779 () Bool)

(declare-fun d!8351 () Bool)

(assert (= bs!2779 (and d!8351 b!10426)))

(declare-fun updateCounter!0 (Parenthesis!70 Int) Int)

(assert (=> bs!2779 (= (dynLambda!345 lambda!2806) (updateCounter!0 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)))))

(declare-fun m!13493 () Bool)

(assert (=> bs!2779 m!13493))

(assert (=> bs!2779 m!13493))

(declare-fun m!13495 () Bool)

(assert (=> bs!2779 m!13495))

(assert (=> (and b!10426 (= lambda!2806 (x!5914 that!171)) b!10424) d!8351))

(declare-fun b_lambda!5479 () Bool)

(assert (= b_lambda!5473 (or (and b!10420 (= lambda!2808 (y!617 thiss!670))) (and b!10427 b_free!1375) (and b!10428 b_free!1381 (= (y!618 that!171) (y!617 thiss!670))) (and b!10428 b_free!1379 (= (x!5914 that!171) (y!617 thiss!670))) (and b!10426 (= lambda!2806 (y!617 thiss!670))) (and b!10427 b_free!1373 (= (x!5913 thiss!670) (y!617 thiss!670))) (and b!10426 (= lambda!2805 (y!617 thiss!670))) b_lambda!5479)))

(declare-fun bs!2780 () Bool)

(declare-fun d!8353 () Bool)

(assert (= bs!2780 (and d!8353 b!10426)))

(assert (=> bs!2780 (= (dynLambda!345 lambda!2805) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10426 (= lambda!2805 (y!617 thiss!670)) b!10424) d!8353))

(declare-fun bs!2781 () Bool)

(declare-fun d!8355 () Bool)

(assert (= bs!2781 (and d!8355 b!10426)))

(assert (=> bs!2781 (= (dynLambda!345 lambda!2806) (updateCounter!0 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)))))

(assert (=> bs!2781 m!13493))

(assert (=> bs!2781 m!13493))

(assert (=> bs!2781 m!13495))

(assert (=> (and b!10426 (= lambda!2806 (y!617 thiss!670)) b!10424) d!8355))

(declare-fun bs!2782 () Bool)

(declare-fun d!8357 () Bool)

(assert (= bs!2782 (and d!8357 b!10420)))

(assert (=> bs!2782 (= (dynLambda!345 lambda!2808) counter!4)))

(assert (=> (and b!10420 (= lambda!2808 (y!617 thiss!670)) b!10424) d!8357))

(declare-fun b_lambda!5481 () Bool)

(assert (= b_lambda!5471 (or (and b!10426 (= lambda!2807 (evidence!175 thiss!670))) (and b!10427 b_free!1377) b_lambda!5481)))

(declare-fun bs!2783 () Bool)

(declare-fun d!8359 () Bool)

(assert (= bs!2783 (and d!8359 b!10426)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2783 (= (dynLambda!346 lambda!2807) trivial!1)))

(assert (=> (and b!10426 (= lambda!2807 (evidence!175 thiss!670)) b!10422) d!8359))

(push 1)

(assert (not bs!2779))

(assert b_and!4829)

(assert (not b!10418))

(assert (not start!2080))

(assert (not b_next!3369))

(assert (not b!10419))

(assert (not b_next!3375))

(assert (not b!10423))

(assert (not b_next!3373))

(assert (not b_next!3367))

(assert b_and!4843)

(assert (not b!10421))

(assert b_and!4839)

(assert (not b_lambda!5481))

(assert (not bs!2781))

(assert (not b_next!3371))

(assert b_and!4841)

(assert (not b_lambda!5477))

(assert (not b_lambda!5479))

(assert (not b!10426))

(assert b_and!4845)

(assert (not b!10417))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4829)

(assert (not b_next!3369))

(assert (not b_next!3375))

(assert (not b_next!3373))

(assert (not b_next!3367))

(assert b_and!4843)

(assert b_and!4839)

(assert (not b_next!3371))

(assert b_and!4841)

(assert b_and!4845)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8361 () Bool)

(assert (=> d!8361 (= (updateCounter!0 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)) (ite (< (foldRight!64 (tail!474 xs!280) 0 lambda!2804) 0) (- 1) (ite (is-OpenParenthesis!69 (head!462 xs!280)) (- (foldRight!64 (tail!474 xs!280) 0 lambda!2804) 1) (+ (foldRight!64 (tail!474 xs!280) 0 lambda!2804) 1))))))

(assert (=> bs!2779 d!8361))

(declare-fun d!8363 () Bool)

(declare-fun c!3241 () Bool)

(assert (=> d!8363 (= c!3241 (is-Nil!245 (tail!474 xs!280)))))

(declare-fun e!6079 () Int)

(assert (=> d!8363 (= (foldRight!64 (tail!474 xs!280) 0 lambda!2804) e!6079)))

(declare-fun b!10439 () Bool)

(assert (=> b!10439 (= e!6079 0)))

(declare-fun b!10440 () Bool)

(declare-fun dynLambda!347 (Int Parenthesis!70 Int) Int)

(assert (=> b!10440 (= e!6079 (dynLambda!347 lambda!2804 (head!462 (tail!474 xs!280)) (foldRight!64 (tail!474 (tail!474 xs!280)) 0 lambda!2804)))))

(assert (= (and d!8363 c!3241) b!10439))

(assert (= (and d!8363 (not c!3241)) b!10440))

(declare-fun b_lambda!5483 () Bool)

(assert (=> (not b_lambda!5483) (not b!10440)))

(declare-fun m!13497 () Bool)

(assert (=> b!10440 m!13497))

(assert (=> b!10440 m!13497))

(declare-fun m!13499 () Bool)

(assert (=> b!10440 m!13499))

(assert (=> bs!2779 d!8363))

(declare-fun d!8365 () Bool)

(assert (=> d!8365 (= (balanceToCounter!0 balance!3) (ite (> (extraOpen!171 balance!3) 0) (- 1) (ite (and (= (extraOpen!171 balance!3) 0) (= (extraClose!171 balance!3) 0)) 0 (ite (>= (extraClose!171 balance!3) 0) (extraClose!171 balance!3) (- 1)))))))

(assert (=> b!10426 d!8365))

(declare-fun d!8367 () Bool)

(assert (=> d!8367 (= trivial!1 true)))

(assert (=> b!10426 d!8367))

(declare-fun d!8369 () Bool)

(assert (=> d!8369 (= (nonNegative!0 (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803)) (and (>= (extraOpen!171 (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803)) 0) (>= (extraClose!171 (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803)) 0)))))

(assert (=> b!10418 d!8369))

(declare-fun d!8371 () Bool)

(declare-fun c!3244 () Bool)

(assert (=> d!8371 (= c!3244 (is-Nil!245 (tail!474 xs!280)))))

(declare-fun e!6082 () Balance!261)

(assert (=> d!8371 (= (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803) e!6082)))

(declare-fun b!10446 () Bool)

(assert (=> b!10446 (= e!6082 (Balance!262 0 0))))

(declare-fun b!10447 () Bool)

(declare-fun dynLambda!348 (Int Parenthesis!70 Balance!261) Balance!261)

(assert (=> b!10447 (= e!6082 (dynLambda!348 lambda!2803 (head!462 (tail!474 xs!280)) (foldRight!63 (tail!474 (tail!474 xs!280)) (Balance!262 0 0) lambda!2803)))))

(assert (= (and d!8371 c!3244) b!10446))

(assert (= (and d!8371 (not c!3244)) b!10447))

(declare-fun b_lambda!5485 () Bool)

(assert (=> (not b_lambda!5485) (not b!10447)))

(declare-fun m!13501 () Bool)

(assert (=> b!10447 m!13501))

(assert (=> b!10447 m!13501))

(declare-fun m!13503 () Bool)

(assert (=> b!10447 m!13503))

(assert (=> b!10418 d!8371))

(assert (=> bs!2781 d!8361))

(assert (=> bs!2781 d!8363))

(declare-fun d!8373 () Bool)

(declare-fun c!3245 () Bool)

(assert (=> d!8373 (= c!3245 (is-Nil!245 xs!280))))

(declare-fun e!6083 () Balance!261)

(assert (=> d!8373 (= (foldRight!63 xs!280 (Balance!262 0 0) lambda!2803) e!6083)))

(declare-fun b!10448 () Bool)

(assert (=> b!10448 (= e!6083 (Balance!262 0 0))))

(declare-fun b!10449 () Bool)

(assert (=> b!10449 (= e!6083 (dynLambda!348 lambda!2803 (head!462 xs!280) (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803)))))

(assert (= (and d!8373 c!3245) b!10448))

(assert (= (and d!8373 (not c!3245)) b!10449))

(declare-fun b_lambda!5487 () Bool)

(assert (=> (not b_lambda!5487) (not b!10449)))

(assert (=> b!10449 m!13483))

(assert (=> b!10449 m!13483))

(declare-fun m!13505 () Bool)

(assert (=> b!10449 m!13505))

(assert (=> start!2080 d!8373))

(declare-fun d!8375 () Bool)

(declare-fun res!3668 () Bool)

(declare-fun e!6086 () Bool)

(assert (=> d!8375 (=> (not res!3668) (not e!6086))))

(assert (=> d!8375 (= res!3668 (= (dynLambda!345 (x!5913 thiss!670)) (dynLambda!345 (y!617 thiss!670))))))

(assert (=> d!8375 (= (inv!362 thiss!670) e!6086)))

(declare-fun b!10452 () Bool)

(assert (=> b!10452 (= e!6086 (dynLambda!346 (evidence!175 thiss!670)))))

(assert (= (and d!8375 res!3668) b!10452))

(declare-fun b_lambda!5489 () Bool)

(assert (=> (not b_lambda!5489) (not d!8375)))

(declare-fun t!2915 () Bool)

(declare-fun tb!2575 () Bool)

(assert (=> (and b!10427 (= (x!5913 thiss!670) (x!5913 thiss!670)) t!2915) tb!2575))

(declare-fun result!2615 () Bool)

(assert (=> tb!2575 (= result!2615 true)))

(assert (=> d!8375 t!2915))

(declare-fun b_and!4847 () Bool)

(assert (= b_and!4839 (and (=> t!2915 result!2615) b_and!4847)))

(declare-fun t!2917 () Bool)

(declare-fun tb!2577 () Bool)

(assert (=> (and b!10427 (= (y!617 thiss!670) (x!5913 thiss!670)) t!2917) tb!2577))

(declare-fun result!2617 () Bool)

(assert (=> tb!2577 (= result!2617 true)))

(assert (=> d!8375 t!2917))

(declare-fun b_and!4849 () Bool)

(assert (= b_and!4841 (and (=> t!2917 result!2617) b_and!4849)))

(declare-fun t!2919 () Bool)

(declare-fun tb!2579 () Bool)

(assert (=> (and b!10428 (= (x!5914 that!171) (x!5913 thiss!670)) t!2919) tb!2579))

(declare-fun result!2619 () Bool)

(assert (=> tb!2579 (= result!2619 true)))

(assert (=> d!8375 t!2919))

(declare-fun b_and!4851 () Bool)

(assert (= b_and!4843 (and (=> t!2919 result!2619) b_and!4851)))

(declare-fun tb!2581 () Bool)

(declare-fun t!2921 () Bool)

(assert (=> (and b!10428 (= (y!618 that!171) (x!5913 thiss!670)) t!2921) tb!2581))

(declare-fun result!2621 () Bool)

(assert (=> tb!2581 (= result!2621 true)))

(assert (=> d!8375 t!2921))

(declare-fun b_and!4853 () Bool)

(assert (= b_and!4845 (and (=> t!2921 result!2621) b_and!4853)))

(declare-fun b_lambda!5491 () Bool)

(assert (=> (not b_lambda!5491) (not d!8375)))

(assert (=> d!8375 t!2899))

(declare-fun b_and!4855 () Bool)

(assert (= b_and!4847 (and (=> t!2899 result!2599) b_and!4855)))

(assert (=> d!8375 t!2901))

(declare-fun b_and!4857 () Bool)

(assert (= b_and!4849 (and (=> t!2901 result!2601) b_and!4857)))

(assert (=> d!8375 t!2903))

(declare-fun b_and!4859 () Bool)

(assert (= b_and!4851 (and (=> t!2903 result!2603) b_and!4859)))

(assert (=> d!8375 t!2905))

(declare-fun b_and!4861 () Bool)

(assert (= b_and!4853 (and (=> t!2905 result!2605) b_and!4861)))

(declare-fun b_lambda!5493 () Bool)

(assert (=> (not b_lambda!5493) (not b!10452)))

(assert (=> b!10452 t!2897))

(declare-fun b_and!4863 () Bool)

(assert (= b_and!4829 (and (=> t!2897 result!2597) b_and!4863)))

(declare-fun m!13507 () Bool)

(assert (=> d!8375 m!13507))

(assert (=> d!8375 m!13487))

(assert (=> b!10452 m!13481))

(assert (=> start!2080 d!8375))

(declare-fun d!8377 () Bool)

(assert (=> d!8377 (= (inv!363 that!171) (= (dynLambda!345 (x!5914 that!171)) (dynLambda!345 (y!618 that!171))))))

(declare-fun b_lambda!5495 () Bool)

(assert (=> (not b_lambda!5495) (not d!8377)))

(assert (=> d!8377 t!2907))

(declare-fun b_and!4865 () Bool)

(assert (= b_and!4855 (and (=> t!2907 result!2607) b_and!4865)))

(assert (=> d!8377 t!2909))

(declare-fun b_and!4867 () Bool)

(assert (= b_and!4857 (and (=> t!2909 result!2609) b_and!4867)))

(assert (=> d!8377 t!2911))

(declare-fun b_and!4869 () Bool)

(assert (= b_and!4859 (and (=> t!2911 result!2611) b_and!4869)))

(assert (=> d!8377 t!2913))

(declare-fun b_and!4871 () Bool)

(assert (= b_and!4861 (and (=> t!2913 result!2613) b_and!4871)))

(declare-fun b_lambda!5497 () Bool)

(assert (=> (not b_lambda!5497) (not d!8377)))

(declare-fun tb!2583 () Bool)

(declare-fun t!2923 () Bool)

(assert (=> (and b!10427 (= (x!5913 thiss!670) (y!618 that!171)) t!2923) tb!2583))

(declare-fun result!2623 () Bool)

(assert (=> tb!2583 (= result!2623 true)))

(assert (=> d!8377 t!2923))

(declare-fun b_and!4873 () Bool)

(assert (= b_and!4865 (and (=> t!2923 result!2623) b_and!4873)))

(declare-fun t!2925 () Bool)

(declare-fun tb!2585 () Bool)

(assert (=> (and b!10427 (= (y!617 thiss!670) (y!618 that!171)) t!2925) tb!2585))

(declare-fun result!2625 () Bool)

(assert (=> tb!2585 (= result!2625 true)))

(assert (=> d!8377 t!2925))

(declare-fun b_and!4875 () Bool)

(assert (= b_and!4867 (and (=> t!2925 result!2625) b_and!4875)))

(declare-fun t!2927 () Bool)

(declare-fun tb!2587 () Bool)

(assert (=> (and b!10428 (= (x!5914 that!171) (y!618 that!171)) t!2927) tb!2587))

(declare-fun result!2627 () Bool)

(assert (=> tb!2587 (= result!2627 true)))

(assert (=> d!8377 t!2927))

(declare-fun b_and!4877 () Bool)

(assert (= b_and!4869 (and (=> t!2927 result!2627) b_and!4877)))

(declare-fun t!2929 () Bool)

(declare-fun tb!2589 () Bool)

(assert (=> (and b!10428 (= (y!618 that!171) (y!618 that!171)) t!2929) tb!2589))

(declare-fun result!2629 () Bool)

(assert (=> tb!2589 (= result!2629 true)))

(assert (=> d!8377 t!2929))

(declare-fun b_and!4879 () Bool)

(assert (= b_and!4871 (and (=> t!2929 result!2629) b_and!4879)))

(assert (=> d!8377 m!13489))

(declare-fun m!13509 () Bool)

(assert (=> d!8377 m!13509))

(assert (=> start!2080 d!8377))

(declare-fun d!8379 () Bool)

(declare-fun c!3246 () Bool)

(assert (=> d!8379 (= c!3246 (is-Nil!245 xs!280))))

(declare-fun e!6087 () Int)

(assert (=> d!8379 (= (foldRight!64 xs!280 0 lambda!2804) e!6087)))

(declare-fun b!10453 () Bool)

(assert (=> b!10453 (= e!6087 0)))

(declare-fun b!10454 () Bool)

(assert (=> b!10454 (= e!6087 (dynLambda!347 lambda!2804 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)))))

(assert (= (and d!8379 c!3246) b!10453))

(assert (= (and d!8379 (not c!3246)) b!10454))

(declare-fun b_lambda!5499 () Bool)

(assert (=> (not b_lambda!5499) (not b!10454)))

(assert (=> b!10454 m!13493))

(assert (=> b!10454 m!13493))

(declare-fun m!13511 () Bool)

(assert (=> b!10454 m!13511))

(assert (=> b!10423 d!8379))

(declare-fun bs!2784 () Bool)

(declare-fun d!8381 () Bool)

(assert (= bs!2784 (and d!8381 start!2080)))

(declare-fun lambda!2815 () Int)

(assert (=> bs!2784 (= lambda!2815 lambda!2803)))

(declare-fun bs!2785 () Bool)

(assert (= bs!2785 (and d!8381 b!10423)))

(declare-fun lambda!2816 () Int)

(assert (=> bs!2785 (= lambda!2816 lambda!2804)))

(declare-fun b!10465 () Bool)

(declare-fun e!6094 () Bool)

(assert (=> b!10465 (= e!6094 true)))

(declare-fun lt!1724 () Balance!261)

(declare-fun lt!1723 () Int)

(assert (=> b!10465 (= (balanceToCounter!0 lt!1724) lt!1723)))

(declare-fun b!10466 () Bool)

(declare-fun e!6095 () Bool)

(assert (=> b!10466 (= e!6095 true)))

(declare-fun b!10467 () Bool)

(assert (=> b!10467 (= e!6095 e!6094)))

(declare-fun res!3676 () Bool)

(assert (=> b!10467 (=> (not res!3676) (not e!6094))))

(assert (=> b!10467 (= res!3676 (original_sequential_helper!0 (tail!474 (tail!474 xs!280))))))

(declare-fun b!10468 () Bool)

(declare-fun res!3677 () Bool)

(assert (=> b!10468 (=> (not res!3677) (not e!6094))))

(assert (=> b!10468 (= res!3677 (nonNegative!0 (foldRight!63 (tail!474 (tail!474 xs!280)) (Balance!262 0 0) lambda!2815)))))

(declare-fun e!6096 () Bool)

(declare-fun because!2 (ProofOps!208 Bool) Bool)

(assert (=> d!8381 (because!2 (ProofOps!209 e!6096) e!6095)))

(declare-fun c!3251 () Bool)

(assert (=> d!8381 (= c!3251 (is-Nil!245 (tail!474 xs!280)))))

(declare-fun res!3675 () Bool)

(assert (=> d!8381 (=> (not res!3675) (not e!6096))))

(assert (=> d!8381 (= res!3675 (= (balanceToCounter!0 lt!1724) lt!1723))))

(assert (=> d!8381 (= lt!1723 (foldRight!64 (tail!474 xs!280) 0 lambda!2816))))

(assert (=> d!8381 (= lt!1724 (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2815))))

(assert (=> d!8381 (= (original_sequential_helper!0 (tail!474 xs!280)) true)))

(declare-fun b!10469 () Bool)

(assert (=> b!10469 (= e!6096 (nonNegative!0 lt!1724))))

(assert (= (and d!8381 res!3675) b!10469))

(assert (= (and b!10467 res!3676) b!10468))

(assert (= (and b!10468 res!3677) b!10465))

(assert (= (and d!8381 c!3251) b!10466))

(assert (= (and d!8381 (not c!3251)) b!10467))

(declare-fun m!13513 () Bool)

(assert (=> d!8381 m!13513))

(declare-fun m!13515 () Bool)

(assert (=> d!8381 m!13515))

(declare-fun m!13517 () Bool)

(assert (=> d!8381 m!13517))

(declare-fun m!13519 () Bool)

(assert (=> d!8381 m!13519))

(declare-fun m!13521 () Bool)

(assert (=> b!10469 m!13521))

(assert (=> b!10465 m!13515))

(declare-fun m!13523 () Bool)

(assert (=> b!10467 m!13523))

(declare-fun m!13525 () Bool)

(assert (=> b!10468 m!13525))

(assert (=> b!10468 m!13525))

(declare-fun m!13527 () Bool)

(assert (=> b!10468 m!13527))

(assert (=> b!10417 d!8381))

(declare-fun d!8383 () Bool)

(assert (=> d!8383 (= (nonNegative!0 balance!3) (and (>= (extraOpen!171 balance!3) 0) (>= (extraClose!171 balance!3) 0)))))

(assert (=> b!10421 d!8383))

(assert (=> b!10419 d!8365))

(declare-fun b_lambda!5501 () Bool)

(assert (= b_lambda!5495 (or (and b!10420 (= lambda!2808 (x!5914 that!171))) (and b!10426 (= lambda!2805 (x!5914 that!171))) (and b!10426 (= lambda!2806 (x!5914 that!171))) (and b!10427 b_free!1375 (= (y!617 thiss!670) (x!5914 that!171))) (and b!10427 b_free!1373 (= (x!5913 thiss!670) (x!5914 that!171))) (and b!10428 b_free!1381 (= (y!618 that!171) (x!5914 that!171))) (and b!10428 b_free!1379) b_lambda!5501)))

(assert (=> (and b!10420 (= lambda!2808 (x!5914 that!171)) d!8377) d!8347))

(assert (=> (and b!10426 (= lambda!2805 (x!5914 that!171)) d!8377) d!8349))

(assert (=> (and b!10426 (= lambda!2806 (x!5914 that!171)) d!8377) d!8351))

(declare-fun b_lambda!5503 () Bool)

(assert (= b_lambda!5487 (or start!2080 b_lambda!5503)))

(declare-fun bs!2786 () Bool)

(declare-fun d!8385 () Bool)

(assert (= bs!2786 (and d!8385 start!2080)))

(declare-fun +$colon!0 (Balance!261 Parenthesis!70) Balance!261)

(assert (=> bs!2786 (= (dynLambda!348 lambda!2803 (head!462 xs!280) (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803)) (+$colon!0 (foldRight!63 (tail!474 xs!280) (Balance!262 0 0) lambda!2803) (head!462 xs!280)))))

(assert (=> bs!2786 m!13483))

(declare-fun m!13529 () Bool)

(assert (=> bs!2786 m!13529))

(assert (=> b!10449 d!8385))

(declare-fun b_lambda!5505 () Bool)

(assert (= b_lambda!5489 (or (and b!10428 b_free!1379 (= (x!5914 that!171) (x!5913 thiss!670))) (and b!10427 b_free!1373) (and b!10426 (= lambda!2806 (x!5913 thiss!670))) (and b!10427 b_free!1375 (= (y!617 thiss!670) (x!5913 thiss!670))) (and b!10420 (= lambda!2808 (x!5913 thiss!670))) (and b!10426 (= lambda!2805 (x!5913 thiss!670))) (and b!10428 b_free!1381 (= (y!618 that!171) (x!5913 thiss!670))) b_lambda!5505)))

(declare-fun bs!2787 () Bool)

(declare-fun d!8387 () Bool)

(assert (= bs!2787 (and d!8387 b!10426)))

(assert (=> bs!2787 (= (dynLambda!345 lambda!2806) (updateCounter!0 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)))))

(assert (=> bs!2787 m!13493))

(assert (=> bs!2787 m!13493))

(assert (=> bs!2787 m!13495))

(assert (=> (and b!10426 (= lambda!2806 (x!5913 thiss!670)) d!8375) d!8387))

(declare-fun bs!2788 () Bool)

(declare-fun d!8389 () Bool)

(assert (= bs!2788 (and d!8389 b!10426)))

(assert (=> bs!2788 (= (dynLambda!345 lambda!2805) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10426 (= lambda!2805 (x!5913 thiss!670)) d!8375) d!8389))

(declare-fun bs!2789 () Bool)

(declare-fun d!8391 () Bool)

(assert (= bs!2789 (and d!8391 b!10420)))

(assert (=> bs!2789 (= (dynLambda!345 lambda!2808) counter!4)))

(assert (=> (and b!10420 (= lambda!2808 (x!5913 thiss!670)) d!8375) d!8391))

(declare-fun b_lambda!5507 () Bool)

(assert (= b_lambda!5499 (or b!10423 b_lambda!5507)))

(declare-fun bs!2790 () Bool)

(declare-fun d!8393 () Bool)

(assert (= bs!2790 (and d!8393 b!10423)))

(assert (=> bs!2790 (= (dynLambda!347 lambda!2804 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)) (updateCounter!0 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)))))

(assert (=> bs!2790 m!13493))

(assert (=> bs!2790 m!13495))

(assert (=> b!10454 d!8393))

(declare-fun b_lambda!5509 () Bool)

(assert (= b_lambda!5491 (or (and b!10420 (= lambda!2808 (y!617 thiss!670))) (and b!10427 b_free!1375) (and b!10428 b_free!1381 (= (y!618 that!171) (y!617 thiss!670))) (and b!10428 b_free!1379 (= (x!5914 that!171) (y!617 thiss!670))) (and b!10426 (= lambda!2806 (y!617 thiss!670))) (and b!10427 b_free!1373 (= (x!5913 thiss!670) (y!617 thiss!670))) (and b!10426 (= lambda!2805 (y!617 thiss!670))) b_lambda!5509)))

(assert (=> (and b!10426 (= lambda!2805 (y!617 thiss!670)) d!8375) d!8353))

(assert (=> (and b!10426 (= lambda!2806 (y!617 thiss!670)) d!8375) d!8355))

(assert (=> (and b!10420 (= lambda!2808 (y!617 thiss!670)) d!8375) d!8357))

(declare-fun b_lambda!5511 () Bool)

(assert (= b_lambda!5485 (or start!2080 b_lambda!5511)))

(declare-fun bs!2791 () Bool)

(declare-fun d!8395 () Bool)

(assert (= bs!2791 (and d!8395 start!2080)))

(assert (=> bs!2791 (= (dynLambda!348 lambda!2803 (head!462 (tail!474 xs!280)) (foldRight!63 (tail!474 (tail!474 xs!280)) (Balance!262 0 0) lambda!2803)) (+$colon!0 (foldRight!63 (tail!474 (tail!474 xs!280)) (Balance!262 0 0) lambda!2803) (head!462 (tail!474 xs!280))))))

(assert (=> bs!2791 m!13501))

(declare-fun m!13531 () Bool)

(assert (=> bs!2791 m!13531))

(assert (=> b!10447 d!8395))

(declare-fun b_lambda!5513 () Bool)

(assert (= b_lambda!5493 (or (and b!10426 (= lambda!2807 (evidence!175 thiss!670))) (and b!10427 b_free!1377) b_lambda!5513)))

(assert (=> (and b!10426 (= lambda!2807 (evidence!175 thiss!670)) b!10452) d!8359))

(declare-fun b_lambda!5515 () Bool)

(assert (= b_lambda!5483 (or b!10423 b_lambda!5515)))

(declare-fun bs!2792 () Bool)

(declare-fun d!8397 () Bool)

(assert (= bs!2792 (and d!8397 b!10423)))

(assert (=> bs!2792 (= (dynLambda!347 lambda!2804 (head!462 (tail!474 xs!280)) (foldRight!64 (tail!474 (tail!474 xs!280)) 0 lambda!2804)) (updateCounter!0 (head!462 (tail!474 xs!280)) (foldRight!64 (tail!474 (tail!474 xs!280)) 0 lambda!2804)))))

(assert (=> bs!2792 m!13497))

(declare-fun m!13533 () Bool)

(assert (=> bs!2792 m!13533))

(assert (=> b!10440 d!8397))

(declare-fun b_lambda!5517 () Bool)

(assert (= b_lambda!5497 (or (and b!10428 b_free!1381) (and b!10427 b_free!1375 (= (y!617 thiss!670) (y!618 that!171))) (and b!10426 (= lambda!2805 (y!618 that!171))) (and b!10427 b_free!1373 (= (x!5913 thiss!670) (y!618 that!171))) (and b!10428 b_free!1379 (= (x!5914 that!171) (y!618 that!171))) (and b!10426 (= lambda!2806 (y!618 that!171))) (and b!10420 (= lambda!2808 (y!618 that!171))) b_lambda!5517)))

(declare-fun bs!2793 () Bool)

(declare-fun d!8399 () Bool)

(assert (= bs!2793 (and d!8399 b!10426)))

(assert (=> bs!2793 (= (dynLambda!345 lambda!2805) (balanceToCounter!0 balance!3))))

(assert (=> (and b!10426 (= lambda!2805 (y!618 that!171)) d!8377) d!8399))

(declare-fun bs!2794 () Bool)

(declare-fun d!8401 () Bool)

(assert (= bs!2794 (and d!8401 b!10420)))

(assert (=> bs!2794 (= (dynLambda!345 lambda!2808) counter!4)))

(assert (=> (and b!10420 (= lambda!2808 (y!618 that!171)) d!8377) d!8401))

(declare-fun bs!2795 () Bool)

(declare-fun d!8403 () Bool)

(assert (= bs!2795 (and d!8403 b!10426)))

(assert (=> bs!2795 (= (dynLambda!345 lambda!2806) (updateCounter!0 (head!462 xs!280) (foldRight!64 (tail!474 xs!280) 0 lambda!2804)))))

(assert (=> bs!2795 m!13493))

(assert (=> bs!2795 m!13493))

(assert (=> bs!2795 m!13495))

(assert (=> (and b!10426 (= lambda!2806 (y!618 that!171)) d!8377) d!8403))

(push 1)

(assert (not b!10449))

(assert b_and!4879)

(assert (not b_lambda!5509))

(assert (not b_lambda!5505))

(assert b_and!4863)

(assert (not b!10454))

(assert (not b_next!3369))

(assert (not b_lambda!5511))

(assert (not b_next!3375))

(assert (not bs!2786))

(assert b_and!4875)

(assert (not b!10469))

(assert (not b_next!3373))

(assert (not b!10447))

(assert (not b!10467))

(assert (not b_next!3367))

(assert (not bs!2792))

(assert (not bs!2790))

(assert (not b_lambda!5513))

(assert (not bs!2791))

(assert (not b_lambda!5517))

(assert (not b_lambda!5503))

(assert (not b_lambda!5481))

(assert (not b_lambda!5501))

(assert (not b_next!3371))

(assert b_and!4877)

(assert (not bs!2787))

(assert (not d!8381))

(assert (not b_lambda!5515))

(assert (not b_lambda!5477))

(assert (not b_lambda!5479))

(assert (not b!10440))

(assert (not b!10465))

(assert (not b_lambda!5507))

(assert b_and!4873)

(assert (not b!10468))

(assert (not bs!2795))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4879)

(assert b_and!4863)

(assert (not b_next!3369))

(assert (not b_next!3375))

(assert b_and!4875)

(assert (not b_next!3373))

(assert (not b_next!3367))

(assert (not b_next!3371))

(assert b_and!4877)

(assert b_and!4873)

(check-sat)

(pop 1)

