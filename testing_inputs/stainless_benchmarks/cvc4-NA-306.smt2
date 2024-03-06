; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2344 () Bool)

(assert start!2344)

(declare-fun b_free!1637 () Bool)

(declare-fun b_next!3917 () Bool)

(assert (=> start!2344 (= b_free!1637 (not b_next!3917))))

(declare-fun tp!2627 () Bool)

(declare-fun b_and!5741 () Bool)

(assert (=> start!2344 (= tp!2627 b_and!5741)))

(declare-fun b!11678 () Bool)

(declare-fun b_free!1639 () Bool)

(declare-fun b_next!3919 () Bool)

(assert (=> b!11678 (= b_free!1639 (not b_next!3919))))

(declare-fun tp!2626 () Bool)

(declare-fun b_and!5743 () Bool)

(assert (=> b!11678 (= tp!2626 b_and!5743)))

(declare-fun b_free!1641 () Bool)

(declare-fun b_next!3921 () Bool)

(assert (=> b!11678 (= b_free!1641 (not b_next!3921))))

(declare-fun tp!2625 () Bool)

(declare-fun b_and!5745 () Bool)

(assert (=> b!11678 (= tp!2625 b_and!5745)))

(declare-fun b_free!1643 () Bool)

(declare-fun b_next!3923 () Bool)

(assert (=> b!11678 (= b_free!1643 (not b_next!3923))))

(declare-fun tp!2628 () Bool)

(declare-fun b_and!5747 () Bool)

(assert (=> b!11678 (= tp!2628 b_and!5747)))

(declare-fun b!11671 () Bool)

(declare-fun b_free!1645 () Bool)

(declare-fun b_next!3925 () Bool)

(assert (=> b!11671 (= b_free!1645 (not b_next!3925))))

(declare-fun tp!2623 () Bool)

(declare-fun b_and!5749 () Bool)

(assert (=> b!11671 (= tp!2623 b_and!5749)))

(declare-fun b_free!1647 () Bool)

(declare-fun b_next!3927 () Bool)

(assert (=> b!11671 (= b_free!1647 (not b_next!3927))))

(declare-fun tp!2629 () Bool)

(declare-fun b_and!5751 () Bool)

(assert (=> b!11671 (= tp!2629 b_and!5751)))

(declare-fun b_free!1649 () Bool)

(declare-fun b_next!3929 () Bool)

(assert (=> b!11671 (= b_free!1649 (not b_next!3929))))

(declare-fun tp!2624 () Bool)

(declare-fun b_and!5753 () Bool)

(assert (=> b!11671 (= tp!2624 b_and!5753)))

(declare-fun f!539 () Int)

(declare-fun b_next!3931 () Bool)

(declare-fun b!11675 () Bool)

(declare-fun lambda!3119 () Int)

(assert (=> start!2344 (= b_next!3917 (or (and b!11675 (= lambda!3119 f!539)) b_next!3931))))

(declare-fun b!11672 () Bool)

(assert (=> b!11672 true))

(declare-fun order!265 () Int)

(declare-fun order!263 () Int)

(declare-fun lambda!3120 () Int)

(declare-fun dynLambda!455 (Int Int) Int)

(declare-fun dynLambda!456 (Int Int) Int)

(assert (=> b!11672 (< (dynLambda!455 order!263 f!539) (dynLambda!456 order!265 lambda!3120))))

(assert (=> b!11672 true))

(assert (=> b!11672 true))

(declare-datatypes () ((Balance!321 (Balance!322 (extraOpen!201 Int) (extraClose!201 Int)))))

(declare-datatypes () ((EqEvidence!250 (EqEvidence!251 (x!6622 Int) (y!643 Int) (evidence!192 Int)))))

(declare-fun thiss!722 () EqEvidence!250)

(declare-fun b_next!3933 () Bool)

(assert (=> b!11678 (= b_next!3919 (or (and b!11672 (= lambda!3120 (x!6622 thiss!722))) b_next!3933))))

(declare-fun b_next!3935 () Bool)

(assert (=> b!11678 (= b_next!3921 (or (and b!11672 (= lambda!3120 (y!643 thiss!722))) b_next!3935))))

(declare-fun b_next!3937 () Bool)

(declare-fun that!176 () EqEvidence!250)

(assert (=> b!11671 (= b_next!3925 (or (and b!11672 (= lambda!3120 (x!6622 that!176))) b_next!3937))))

(declare-fun b_next!3939 () Bool)

(assert (=> b!11671 (= b_next!3927 (or (and b!11672 (= lambda!3120 (y!643 that!176))) b_next!3939))))

(assert (=> b!11672 true))

(declare-fun lambda!3121 () Int)

(declare-fun order!267 () Int)

(declare-fun dynLambda!457 (Int Int) Int)

(assert (=> b!11672 (< (dynLambda!455 order!263 f!539) (dynLambda!457 order!267 lambda!3121))))

(assert (=> b!11672 true))

(declare-fun b_next!3941 () Bool)

(assert (=> b!11678 (= b_next!3923 (or (and b!11672 (= lambda!3121 (evidence!192 thiss!722))) b_next!3941))))

(declare-fun b_next!3943 () Bool)

(assert (=> b!11671 (= b_next!3929 (or (and b!11672 (= lambda!3121 (evidence!192 that!176))) b_next!3943))))

(declare-fun bs!2981 () Bool)

(declare-fun b!11669 () Bool)

(assert (= bs!2981 (and b!11669 b!11672)))

(declare-fun lambda!3122 () Int)

(assert (=> bs!2981 (not (= lambda!3122 lambda!3120))))

(assert (=> b!11669 true))

(assert (=> b!11669 (< (dynLambda!455 order!263 f!539) (dynLambda!456 order!265 lambda!3122))))

(assert (=> b!11669 true))

(assert (=> b!11669 true))

(declare-fun b_next!3945 () Bool)

(assert (=> b!11678 (= b_next!3933 (or (and b!11669 (= lambda!3122 (x!6622 thiss!722))) b_next!3945))))

(declare-fun b_next!3947 () Bool)

(assert (=> b!11678 (= b_next!3935 (or (and b!11669 (= lambda!3122 (y!643 thiss!722))) b_next!3947))))

(declare-fun b_next!3949 () Bool)

(assert (=> b!11671 (= b_next!3937 (or (and b!11669 (= lambda!3122 (x!6622 that!176))) b_next!3949))))

(declare-fun b_next!3951 () Bool)

(assert (=> b!11671 (= b_next!3939 (or (and b!11669 (= lambda!3122 (y!643 that!176))) b_next!3951))))

(declare-fun m!14563 () Bool)

(assert (=> b!11669 m!14563))

(declare-fun lambda!3123 () Int)

(assert (=> bs!2981 (not (= lambda!3123 lambda!3121))))

(declare-fun dynLambda!458 (Int) Bool)

(assert (=> (and b!11678 b!11669 (= (dynLambda!458 lambda!3123) (dynLambda!458 (evidence!192 thiss!722)))) (= lambda!3123 (evidence!192 thiss!722))))

(assert (=> (and b!11671 b!11669 (= (dynLambda!458 lambda!3123) (dynLambda!458 (evidence!192 that!176)))) (= lambda!3123 (evidence!192 that!176))))

(declare-fun b_next!3953 () Bool)

(assert (=> b!11678 (= b_next!3941 (or (and b!11669 (= lambda!3123 (evidence!192 thiss!722))) b_next!3953))))

(declare-fun b_next!3955 () Bool)

(assert (=> b!11671 (= b_next!3943 (or (and b!11669 (= lambda!3123 (evidence!192 that!176))) b_next!3955))))

(declare-fun res!4294 () Bool)

(declare-fun e!6511 () Bool)

(assert (=> start!2344 (=> (not res!4294) (not e!6511))))

(declare-datatypes () ((List!278 (Nil!276) (Cons!275 (head!493 Balance!321) (tail!505 List!278)))))

(declare-fun xs!292 () List!278)

(declare-fun isEmpty!206 (List!278) Bool)

(assert (=> start!2344 (= res!4294 (not (isEmpty!206 xs!292)))))

(assert (=> start!2344 e!6511))

(assert (=> start!2344 tp!2627))

(declare-fun e!6509 () Bool)

(declare-fun inv!388 (EqEvidence!250) Bool)

(assert (=> start!2344 (and (inv!388 thiss!722) e!6509)))

(assert (=> start!2344 true))

(declare-fun e!6510 () Bool)

(assert (=> start!2344 (and (inv!388 that!176) e!6510)))

(declare-fun res!4298 () Bool)

(assert (=> b!11669 (=> (not res!4298) (not e!6511))))

(assert (=> b!11669 (= res!4298 (= that!176 (EqEvidence!251 lambda!3122 lambda!3122 lambda!3123)))))

(declare-fun b!11670 () Bool)

(declare-fun res!4301 () Bool)

(assert (=> b!11670 (=> (not res!4301) (not e!6511))))

(declare-fun ys!54 () List!278)

(assert (=> b!11670 (= res!4301 (not (isEmpty!206 ys!54)))))

(assert (=> b!11671 (= e!6510 (and tp!2623 tp!2629 tp!2624))))

(declare-fun res!4299 () Bool)

(assert (=> b!11672 (=> (not res!4299) (not e!6511))))

(assert (=> b!11672 (= res!4299 (= thiss!722 (EqEvidence!251 lambda!3120 lambda!3120 lambda!3121)))))

(declare-fun b!11673 () Bool)

(declare-fun res!4296 () Bool)

(assert (=> b!11673 (=> (not res!4296) (not e!6511))))

(assert (=> b!11673 (= res!4296 (and (is-Cons!275 xs!292) (is-Nil!276 (tail!505 xs!292))))))

(declare-fun b!11674 () Bool)

(declare-fun dynLambda!459 (Int) Balance!321)

(assert (=> b!11674 (= e!6511 (not (= (dynLambda!459 (y!643 thiss!722)) (dynLambda!459 (x!6622 that!176)))))))

(declare-fun res!4295 () Bool)

(assert (=> b!11675 (=> (not res!4295) (not e!6511))))

(assert (=> b!11675 (= res!4295 (= f!539 lambda!3119))))

(declare-fun b!11676 () Bool)

(declare-fun res!4300 () Bool)

(assert (=> b!11676 (=> (not res!4300) (not e!6511))))

(assert (=> b!11676 (= res!4300 (dynLambda!458 (evidence!192 thiss!722)))))

(declare-fun b!11677 () Bool)

(declare-fun res!4297 () Bool)

(assert (=> b!11677 (=> (not res!4297) (not e!6511))))

(declare-datatypes () ((ProofOps!256 (ProofOps!257 (prop!261 Bool)))))

(declare-fun thiss!710 () ProofOps!256)

(declare-fun dynLambda!460 (Int Balance!321 Balance!321) Balance!321)

(declare-fun foldRight1!108 (List!278 Int) Balance!321)

(declare-fun append!127 (List!278 List!278) List!278)

(assert (=> b!11677 (= res!4297 (= thiss!710 (ProofOps!257 (= (dynLambda!460 f!539 (foldRight1!108 xs!292 f!539) (foldRight1!108 ys!54 f!539)) (foldRight1!108 (append!127 xs!292 ys!54) f!539)))))))

(assert (=> b!11678 (= e!6509 (and tp!2626 tp!2625 tp!2628))))

(assert (= (and start!2344 res!4294) b!11670))

(assert (= (and b!11670 res!4301) b!11675))

(assert (= (and b!11675 res!4295) b!11677))

(assert (= (and b!11677 res!4297) b!11673))

(assert (= (and b!11673 res!4296) b!11672))

(assert (= (and b!11672 res!4299) b!11669))

(assert (= (and b!11669 res!4298) b!11676))

(assert (= (and b!11676 res!4300) b!11674))

(assert (= start!2344 b!11678))

(assert (= start!2344 b!11671))

(declare-fun b_lambda!6103 () Bool)

(assert (=> (not b_lambda!6103) (not b!11674)))

(declare-fun t!3381 () Bool)

(declare-fun tb!3041 () Bool)

(assert (=> (and b!11678 (= (x!6622 thiss!722) (y!643 thiss!722)) t!3381) tb!3041))

(declare-fun result!3093 () Bool)

(assert (=> tb!3041 (= result!3093 true)))

(assert (=> b!11674 t!3381))

(declare-fun b_and!5755 () Bool)

(assert (= b_and!5743 (and (=> t!3381 result!3093) b_and!5755)))

(declare-fun t!3383 () Bool)

(declare-fun tb!3043 () Bool)

(assert (=> (and b!11678 (= (y!643 thiss!722) (y!643 thiss!722)) t!3383) tb!3043))

(declare-fun result!3095 () Bool)

(assert (=> tb!3043 (= result!3095 true)))

(assert (=> b!11674 t!3383))

(declare-fun b_and!5757 () Bool)

(assert (= b_and!5745 (and (=> t!3383 result!3095) b_and!5757)))

(declare-fun t!3385 () Bool)

(declare-fun tb!3045 () Bool)

(assert (=> (and b!11671 (= (x!6622 that!176) (y!643 thiss!722)) t!3385) tb!3045))

(declare-fun result!3097 () Bool)

(assert (=> tb!3045 (= result!3097 true)))

(assert (=> b!11674 t!3385))

(declare-fun b_and!5759 () Bool)

(assert (= b_and!5749 (and (=> t!3385 result!3097) b_and!5759)))

(declare-fun t!3387 () Bool)

(declare-fun tb!3047 () Bool)

(assert (=> (and b!11671 (= (y!643 that!176) (y!643 thiss!722)) t!3387) tb!3047))

(declare-fun result!3099 () Bool)

(assert (=> tb!3047 (= result!3099 true)))

(assert (=> b!11674 t!3387))

(declare-fun b_and!5761 () Bool)

(assert (= b_and!5751 (and (=> t!3387 result!3099) b_and!5761)))

(declare-fun b_lambda!6105 () Bool)

(assert (=> (not b_lambda!6105) (not b!11674)))

(declare-fun t!3389 () Bool)

(declare-fun tb!3049 () Bool)

(assert (=> (and b!11678 (= (x!6622 thiss!722) (x!6622 that!176)) t!3389) tb!3049))

(declare-fun result!3101 () Bool)

(assert (=> tb!3049 (= result!3101 true)))

(assert (=> b!11674 t!3389))

(declare-fun b_and!5763 () Bool)

(assert (= b_and!5755 (and (=> t!3389 result!3101) b_and!5763)))

(declare-fun t!3391 () Bool)

(declare-fun tb!3051 () Bool)

(assert (=> (and b!11678 (= (y!643 thiss!722) (x!6622 that!176)) t!3391) tb!3051))

(declare-fun result!3103 () Bool)

(assert (=> tb!3051 (= result!3103 true)))

(assert (=> b!11674 t!3391))

(declare-fun b_and!5765 () Bool)

(assert (= b_and!5757 (and (=> t!3391 result!3103) b_and!5765)))

(declare-fun t!3393 () Bool)

(declare-fun tb!3053 () Bool)

(assert (=> (and b!11671 (= (x!6622 that!176) (x!6622 that!176)) t!3393) tb!3053))

(declare-fun result!3105 () Bool)

(assert (=> tb!3053 (= result!3105 true)))

(assert (=> b!11674 t!3393))

(declare-fun b_and!5767 () Bool)

(assert (= b_and!5759 (and (=> t!3393 result!3105) b_and!5767)))

(declare-fun t!3395 () Bool)

(declare-fun tb!3055 () Bool)

(assert (=> (and b!11671 (= (y!643 that!176) (x!6622 that!176)) t!3395) tb!3055))

(declare-fun result!3107 () Bool)

(assert (=> tb!3055 (= result!3107 true)))

(assert (=> b!11674 t!3395))

(declare-fun b_and!5769 () Bool)

(assert (= b_and!5761 (and (=> t!3395 result!3107) b_and!5769)))

(declare-fun b_lambda!6107 () Bool)

(assert (=> (not b_lambda!6107) (not b!11676)))

(declare-fun t!3397 () Bool)

(declare-fun tb!3057 () Bool)

(assert (=> (and b!11678 (= (evidence!192 thiss!722) (evidence!192 thiss!722)) t!3397) tb!3057))

(declare-fun result!3109 () Bool)

(assert (=> tb!3057 (= result!3109 true)))

(assert (=> b!11676 t!3397))

(declare-fun b_and!5771 () Bool)

(assert (= b_and!5747 (and (=> t!3397 result!3109) b_and!5771)))

(declare-fun t!3399 () Bool)

(declare-fun tb!3059 () Bool)

(assert (=> (and b!11671 (= (evidence!192 that!176) (evidence!192 thiss!722)) t!3399) tb!3059))

(declare-fun result!3111 () Bool)

(assert (=> tb!3059 (= result!3111 true)))

(assert (=> b!11676 t!3399))

(declare-fun b_and!5773 () Bool)

(assert (= b_and!5753 (and (=> t!3399 result!3111) b_and!5773)))

(declare-fun b_lambda!6109 () Bool)

(assert (=> (not b_lambda!6109) (not b!11677)))

(declare-fun t!3401 () Bool)

(declare-fun tb!3061 () Bool)

(assert (=> (and start!2344 (= f!539 f!539) t!3401) tb!3061))

(declare-fun result!3113 () Bool)

(assert (=> tb!3061 (= result!3113 true)))

(assert (=> b!11677 t!3401))

(declare-fun b_and!5775 () Bool)

(assert (= b_and!5741 (and (=> t!3401 result!3113) b_and!5775)))

(declare-fun m!14565 () Bool)

(assert (=> b!11677 m!14565))

(declare-fun m!14567 () Bool)

(assert (=> b!11677 m!14567))

(declare-fun m!14569 () Bool)

(assert (=> b!11677 m!14569))

(assert (=> b!11677 m!14567))

(assert (=> b!11677 m!14569))

(declare-fun m!14571 () Bool)

(assert (=> b!11677 m!14571))

(assert (=> b!11677 m!14565))

(declare-fun m!14573 () Bool)

(assert (=> b!11677 m!14573))

(declare-fun m!14575 () Bool)

(assert (=> start!2344 m!14575))

(declare-fun m!14577 () Bool)

(assert (=> start!2344 m!14577))

(declare-fun m!14579 () Bool)

(assert (=> start!2344 m!14579))

(declare-fun m!14581 () Bool)

(assert (=> b!11674 m!14581))

(declare-fun m!14583 () Bool)

(assert (=> b!11674 m!14583))

(declare-fun m!14585 () Bool)

(assert (=> b!11676 m!14585))

(declare-fun m!14587 () Bool)

(assert (=> b!11670 m!14587))

(push 1)

(assert (not b_lambda!6107))

(assert (not b_next!3955))

(assert (not b!11670))

(assert b_and!5763)

(assert (not b_next!3949))

(assert b_and!5773)

(assert b_and!5771)

(assert (not start!2344))

(assert (not b_lambda!6103))

(assert (not b!11677))

(assert (not b_lambda!6105))

(assert (not b_next!3947))

(assert b_and!5775)

(assert b_and!5765)

(assert (not b_next!3945))

(assert (not b_next!3931))

(assert (not b_next!3953))

(assert (not b_next!3951))

(assert (not b_lambda!6109))

(assert b_and!5769)

(assert b_and!5767)

(assert (not b!11669))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3955))

(assert b_and!5763)

(assert (not b_next!3949))

(assert b_and!5773)

(assert b_and!5771)

(assert (not b_next!3947))

(assert b_and!5775)

(assert b_and!5765)

(assert (not b_next!3945))

(assert (not b_next!3931))

(assert (not b_next!3953))

(assert (not b_next!3951))

(assert b_and!5769)

(assert b_and!5767)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6111 () Bool)

(assert (= b_lambda!6103 (or (and b!11671 b_free!1647 (= (y!643 that!176) (y!643 thiss!722))) (and b!11678 b_free!1641) (and b!11678 b_free!1639 (= (x!6622 thiss!722) (y!643 thiss!722))) (and b!11671 b_free!1645 (= (x!6622 that!176) (y!643 thiss!722))) (and b!11672 (= lambda!3120 (y!643 thiss!722))) (and b!11669 (= lambda!3122 (y!643 thiss!722))) b_lambda!6111)))

(declare-fun bs!2982 () Bool)

(declare-fun d!8987 () Bool)

(assert (= bs!2982 (and d!8987 b!11672)))

(assert (=> bs!2982 (= (dynLambda!459 lambda!3120) (dynLambda!460 f!539 (foldRight1!108 xs!292 f!539) (foldRight1!108 ys!54 f!539)))))

(declare-fun b_lambda!6119 () Bool)

(assert (=> (not b_lambda!6119) (not bs!2982)))

(assert (=> bs!2982 t!3401))

(declare-fun b_and!5777 () Bool)

(assert (= b_and!5775 (and (=> t!3401 result!3113) b_and!5777)))

(assert (=> bs!2982 m!14567))

(assert (=> bs!2982 m!14569))

(assert (=> bs!2982 m!14567))

(assert (=> bs!2982 m!14569))

(assert (=> bs!2982 m!14571))

(assert (=> (and b!11672 (= lambda!3120 (y!643 thiss!722)) b!11674) d!8987))

(declare-fun bs!2983 () Bool)

(declare-fun d!8989 () Bool)

(assert (= bs!2983 (and d!8989 b!11669)))

(assert (=> bs!2983 (= (dynLambda!459 lambda!3122) (dynLambda!460 f!539 (head!493 xs!292) (foldRight1!108 ys!54 f!539)))))

(declare-fun b_lambda!6121 () Bool)

(assert (=> (not b_lambda!6121) (not bs!2983)))

(declare-fun t!3403 () Bool)

(declare-fun tb!3063 () Bool)

(assert (=> (and start!2344 (= f!539 f!539) t!3403) tb!3063))

(declare-fun result!3115 () Bool)

(assert (=> tb!3063 (= result!3115 true)))

(assert (=> bs!2983 t!3403))

(declare-fun b_and!5779 () Bool)

(assert (= b_and!5777 (and (=> t!3403 result!3115) b_and!5779)))

(assert (=> bs!2983 m!14569))

(assert (=> bs!2983 m!14569))

(declare-fun m!14589 () Bool)

(assert (=> bs!2983 m!14589))

(assert (=> (and b!11669 (= lambda!3122 (y!643 thiss!722)) b!11674) d!8989))

(declare-fun b_lambda!6113 () Bool)

(assert (= b_lambda!6109 (or (and b!11675 (= lambda!3119 f!539)) (and start!2344 b_free!1637) b_lambda!6113)))

(declare-fun bs!2984 () Bool)

(declare-fun d!8991 () Bool)

(assert (= bs!2984 (and d!8991 b!11675)))

(declare-fun ++!3 (Balance!321 Balance!321) Balance!321)

(assert (=> bs!2984 (= (dynLambda!460 lambda!3119 (foldRight1!108 xs!292 f!539) (foldRight1!108 ys!54 f!539)) (++!3 (foldRight1!108 xs!292 f!539) (foldRight1!108 ys!54 f!539)))))

(assert (=> bs!2984 m!14567))

(assert (=> bs!2984 m!14569))

(declare-fun m!14591 () Bool)

(assert (=> bs!2984 m!14591))

(assert (=> (and b!11675 (= lambda!3119 f!539) b!11677) d!8991))

(declare-fun b_lambda!6115 () Bool)

(assert (= b_lambda!6107 (or (and b!11672 (= lambda!3121 (evidence!192 thiss!722))) (and b!11669 (= lambda!3123 (evidence!192 thiss!722))) (and b!11678 b_free!1643) (and b!11671 b_free!1649 (= (evidence!192 that!176) (evidence!192 thiss!722))) b_lambda!6115)))

(declare-fun bs!2985 () Bool)

(declare-fun d!8993 () Bool)

(assert (= bs!2985 (and d!8993 b!11672)))

(assert (=> bs!2985 (= (dynLambda!458 lambda!3121) (= (foldRight1!108 xs!292 f!539) (head!493 xs!292)))))

(assert (=> bs!2985 m!14567))

(assert (=> (and b!11672 (= lambda!3121 (evidence!192 thiss!722)) b!11676) d!8993))

(declare-fun bs!2986 () Bool)

(declare-fun d!8995 () Bool)

(assert (= bs!2986 (and d!8995 b!11669)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2986 (= (dynLambda!458 lambda!3123) trivial!1)))

(assert (=> (and b!11669 (= lambda!3123 (evidence!192 thiss!722)) b!11676) d!8995))

(declare-fun b_lambda!6117 () Bool)

(assert (= b_lambda!6105 (or (and b!11671 b_free!1645) (and b!11678 b_free!1639 (= (x!6622 thiss!722) (x!6622 that!176))) (and b!11669 (= lambda!3122 (x!6622 that!176))) (and b!11671 b_free!1647 (= (y!643 that!176) (x!6622 that!176))) (and b!11678 b_free!1641 (= (y!643 thiss!722) (x!6622 that!176))) (and b!11672 (= lambda!3120 (x!6622 that!176))) b_lambda!6117)))

(declare-fun bs!2987 () Bool)

(declare-fun d!8997 () Bool)

(assert (= bs!2987 (and d!8997 b!11669)))

(assert (=> bs!2987 (= (dynLambda!459 lambda!3122) (dynLambda!460 f!539 (head!493 xs!292) (foldRight1!108 ys!54 f!539)))))

(declare-fun b_lambda!6123 () Bool)

(assert (=> (not b_lambda!6123) (not bs!2987)))

(assert (=> bs!2987 t!3403))

(declare-fun b_and!5781 () Bool)

(assert (= b_and!5779 (and (=> t!3403 result!3115) b_and!5781)))

(assert (=> bs!2987 m!14569))

(assert (=> bs!2987 m!14569))

(assert (=> bs!2987 m!14589))

(assert (=> (and b!11669 (= lambda!3122 (x!6622 that!176)) b!11674) d!8997))

(declare-fun bs!2988 () Bool)

(declare-fun d!8999 () Bool)

(assert (= bs!2988 (and d!8999 b!11672)))

(assert (=> bs!2988 (= (dynLambda!459 lambda!3120) (dynLambda!460 f!539 (foldRight1!108 xs!292 f!539) (foldRight1!108 ys!54 f!539)))))

(declare-fun b_lambda!6125 () Bool)

(assert (=> (not b_lambda!6125) (not bs!2988)))

(assert (=> bs!2988 t!3401))

(declare-fun b_and!5783 () Bool)

(assert (= b_and!5781 (and (=> t!3401 result!3113) b_and!5783)))

(assert (=> bs!2988 m!14567))

(assert (=> bs!2988 m!14569))

(assert (=> bs!2988 m!14567))

(assert (=> bs!2988 m!14569))

(assert (=> bs!2988 m!14571))

(assert (=> (and b!11672 (= lambda!3120 (x!6622 that!176)) b!11674) d!8999))

(push 1)

(assert (not b_lambda!6117))

(assert (not b_next!3955))

(assert (not bs!2985))

(assert (not b!11670))

(assert (not b_lambda!6125))

(assert b_and!5763)

(assert (not bs!2987))

(assert (not b_next!3949))

(assert b_and!5773)

(assert b_and!5771)

(assert (not start!2344))

(assert (not bs!2984))

(assert (not b!11677))

(assert (not b_lambda!6113))

(assert (not b_next!3947))

(assert (not bs!2983))

(assert b_and!5765)

(assert (not b_next!3945))

(assert (not b_next!3931))

(assert (not b_lambda!6119))

(assert (not b_next!3953))

(assert (not b_lambda!6123))

(assert (not b_lambda!6111))

(assert (not bs!2988))

(assert (not b_next!3951))

(assert b_and!5783)

(assert b_and!5769)

(assert (not b_lambda!6115))

(assert (not bs!2982))

(assert b_and!5767)

(assert (not b!11669))

(assert (not b_lambda!6121))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3955))

(assert b_and!5763)

(assert (not b_next!3949))

(assert b_and!5773)

(assert b_and!5771)

(assert (not b_next!3947))

(assert b_and!5765)

(assert (not b_next!3945))

(assert (not b_next!3931))

(assert (not b_next!3953))

(assert (not b_next!3951))

(assert b_and!5783)

(assert b_and!5769)

(assert b_and!5767)

(check-sat)

(pop 1)

