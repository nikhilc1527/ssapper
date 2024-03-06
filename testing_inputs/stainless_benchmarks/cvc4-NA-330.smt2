; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2506 () Bool)

(assert start!2506)

(declare-fun b_free!1961 () Bool)

(declare-fun b_next!4597 () Bool)

(assert (=> start!2506 (= b_free!1961 (not b_next!4597))))

(declare-fun tp!3109 () Bool)

(declare-fun b_and!6833 () Bool)

(assert (=> start!2506 (= tp!3109 b_and!6833)))

(declare-fun b!12411 () Bool)

(declare-fun b_free!1963 () Bool)

(declare-fun b_next!4599 () Bool)

(assert (=> b!12411 (= b_free!1963 (not b_next!4599))))

(declare-fun tp!3114 () Bool)

(declare-fun b_and!6835 () Bool)

(assert (=> b!12411 (= tp!3114 b_and!6835)))

(declare-fun b_free!1965 () Bool)

(declare-fun b_next!4601 () Bool)

(assert (=> b!12411 (= b_free!1965 (not b_next!4601))))

(declare-fun tp!3113 () Bool)

(declare-fun b_and!6837 () Bool)

(assert (=> b!12411 (= tp!3113 b_and!6837)))

(declare-fun b_free!1967 () Bool)

(declare-fun b_next!4603 () Bool)

(assert (=> b!12411 (= b_free!1967 (not b_next!4603))))

(declare-fun tp!3112 () Bool)

(declare-fun b_and!6839 () Bool)

(assert (=> b!12411 (= tp!3112 b_and!6839)))

(declare-fun b!12413 () Bool)

(declare-fun b_free!1969 () Bool)

(declare-fun b_next!4605 () Bool)

(assert (=> b!12413 (= b_free!1969 (not b_next!4605))))

(declare-fun tp!3115 () Bool)

(declare-fun b_and!6841 () Bool)

(assert (=> b!12413 (= tp!3115 b_and!6841)))

(declare-fun b_free!1971 () Bool)

(declare-fun b_next!4607 () Bool)

(assert (=> b!12413 (= b_free!1971 (not b_next!4607))))

(declare-fun tp!3111 () Bool)

(declare-fun b_and!6843 () Bool)

(assert (=> b!12413 (= tp!3111 b_and!6843)))

(declare-fun b_free!1973 () Bool)

(declare-fun b_next!4609 () Bool)

(assert (=> b!12413 (= b_free!1973 (not b_next!4609))))

(declare-fun tp!3110 () Bool)

(declare-fun b_and!6845 () Bool)

(assert (=> b!12413 (= tp!3110 b_and!6845)))

(declare-fun f!539 () Int)

(declare-fun b_next!4611 () Bool)

(declare-fun b!12412 () Bool)

(declare-fun lambda!3378 () Int)

(assert (=> start!2506 (= b_next!4597 (or (and b!12412 (= lambda!3378 f!539)) b_next!4611))))

(declare-fun b!12417 () Bool)

(assert (=> b!12417 true))

(declare-fun order!335 () Int)

(declare-fun order!333 () Int)

(declare-fun lambda!3379 () Int)

(declare-fun dynLambda!531 (Int Int) Int)

(declare-fun dynLambda!532 (Int Int) Int)

(assert (=> b!12417 (< (dynLambda!531 order!333 f!539) (dynLambda!532 order!335 lambda!3379))))

(assert (=> b!12417 true))

(assert (=> b!12417 true))

(declare-datatypes () ((Balance!369 (Balance!370 (extraOpen!225 Int) (extraClose!225 Int)))))

(declare-datatypes () ((EqEvidence!296 (EqEvidence!297 (x!7167 Int) (y!675 Int) (evidence!215 Int)))))

(declare-fun thiss!744 () EqEvidence!296)

(declare-fun b_next!4613 () Bool)

(assert (=> b!12411 (= b_next!4599 (or (and b!12417 (= lambda!3379 (x!7167 thiss!744))) b_next!4613))))

(declare-fun b_next!4615 () Bool)

(assert (=> b!12411 (= b_next!4601 (or (and b!12417 (= lambda!3379 (y!675 thiss!744))) b_next!4615))))

(declare-fun b_next!4617 () Bool)

(declare-fun that!196 () EqEvidence!296)

(assert (=> b!12413 (= b_next!4605 (or (and b!12417 (= lambda!3379 (x!7167 that!196))) b_next!4617))))

(declare-fun b_next!4619 () Bool)

(assert (=> b!12413 (= b_next!4607 (or (and b!12417 (= lambda!3379 (y!675 that!196))) b_next!4619))))

(declare-fun lambda!3380 () Int)

(assert (=> b!12417 (not (= lambda!3380 lambda!3379))))

(assert (=> b!12417 true))

(assert (=> b!12417 (< (dynLambda!531 order!333 f!539) (dynLambda!532 order!335 lambda!3380))))

(assert (=> b!12417 true))

(assert (=> b!12417 true))

(declare-fun b_next!4621 () Bool)

(assert (=> b!12411 (= b_next!4613 (or (and b!12417 (= lambda!3380 (x!7167 thiss!744))) b_next!4621))))

(declare-fun b_next!4623 () Bool)

(assert (=> b!12411 (= b_next!4615 (or (and b!12417 (= lambda!3380 (y!675 thiss!744))) b_next!4623))))

(declare-fun b_next!4625 () Bool)

(assert (=> b!12413 (= b_next!4617 (or (and b!12417 (= lambda!3380 (x!7167 that!196))) b_next!4625))))

(declare-fun b_next!4627 () Bool)

(assert (=> b!12413 (= b_next!4619 (or (and b!12417 (= lambda!3380 (y!675 that!196))) b_next!4627))))

(declare-fun m!15409 () Bool)

(assert (=> b!12417 m!15409))

(declare-fun lambda!3381 () Int)

(declare-fun dynLambda!533 (Int) Bool)

(assert (=> (and b!12411 b!12417 (= (dynLambda!533 lambda!3381) (dynLambda!533 (evidence!215 thiss!744)))) (= lambda!3381 (evidence!215 thiss!744))))

(assert (=> (and b!12413 b!12417 (= (dynLambda!533 lambda!3381) (dynLambda!533 (evidence!215 that!196)))) (= lambda!3381 (evidence!215 that!196))))

(declare-fun b_next!4629 () Bool)

(assert (=> b!12411 (= b_next!4603 (or (and b!12417 (= lambda!3381 (evidence!215 thiss!744))) b_next!4629))))

(declare-fun b_next!4631 () Bool)

(assert (=> b!12413 (= b_next!4609 (or (and b!12417 (= lambda!3381 (evidence!215 that!196))) b_next!4631))))

(declare-fun bs!3261 () Bool)

(declare-fun b!12409 () Bool)

(assert (= bs!3261 (and b!12409 b!12417)))

(declare-fun lambda!3382 () Int)

(assert (=> bs!3261 (not (= lambda!3382 lambda!3379))))

(assert (=> bs!3261 (not (= lambda!3382 lambda!3380))))

(assert (=> b!12409 true))

(assert (=> b!12409 (< (dynLambda!531 order!333 f!539) (dynLambda!532 order!335 lambda!3382))))

(assert (=> b!12409 true))

(assert (=> b!12409 true))

(declare-fun b_next!4633 () Bool)

(assert (=> b!12411 (= b_next!4621 (or (and b!12409 (= lambda!3382 (x!7167 thiss!744))) b_next!4633))))

(declare-fun b_next!4635 () Bool)

(assert (=> b!12411 (= b_next!4623 (or (and b!12409 (= lambda!3382 (y!675 thiss!744))) b_next!4635))))

(declare-fun b_next!4637 () Bool)

(assert (=> b!12413 (= b_next!4625 (or (and b!12409 (= lambda!3382 (x!7167 that!196))) b_next!4637))))

(declare-fun b_next!4639 () Bool)

(assert (=> b!12413 (= b_next!4627 (or (and b!12409 (= lambda!3382 (y!675 that!196))) b_next!4639))))

(declare-fun b!12408 () Bool)

(declare-fun res!4647 () Bool)

(declare-fun e!6809 () Bool)

(assert (=> b!12408 (=> (not res!4647) (not e!6809))))

(declare-datatypes () ((List!290 (Nil!288) (Cons!287 (head!505 Balance!369) (tail!517 List!290)))))

(declare-fun ys!54 () List!290)

(declare-fun isEmpty!218 (List!290) Bool)

(assert (=> b!12408 (= res!4647 (not (isEmpty!218 ys!54)))))

(declare-fun res!4642 () Bool)

(assert (=> b!12409 (=> (not res!4642) (not e!6809))))

(assert (=> b!12409 (= res!4642 (= that!196 (EqEvidence!297 lambda!3382 lambda!3382 lambda!3381)))))

(declare-fun b!12410 () Bool)

(declare-fun res!4646 () Bool)

(assert (=> b!12410 (=> (not res!4646) (not e!6809))))

(assert (=> b!12410 (= res!4646 (dynLambda!533 (evidence!215 thiss!744)))))

(declare-fun e!6810 () Bool)

(assert (=> b!12411 (= e!6810 (and tp!3114 tp!3113 tp!3112))))

(declare-fun res!4645 () Bool)

(assert (=> b!12412 (=> (not res!4645) (not e!6809))))

(assert (=> b!12412 (= res!4645 (= f!539 lambda!3378))))

(declare-fun res!4649 () Bool)

(assert (=> start!2506 (=> (not res!4649) (not e!6809))))

(declare-fun xs!292 () List!290)

(assert (=> start!2506 (= res!4649 (not (isEmpty!218 xs!292)))))

(assert (=> start!2506 e!6809))

(assert (=> start!2506 tp!3109))

(assert (=> start!2506 true))

(declare-fun inv!420 (EqEvidence!296) Bool)

(assert (=> start!2506 (and (inv!420 thiss!744) e!6810)))

(declare-fun e!6811 () Bool)

(assert (=> start!2506 (and (inv!420 that!196) e!6811)))

(assert (=> b!12413 (= e!6811 (and tp!3115 tp!3111 tp!3110))))

(declare-fun b!12414 () Bool)

(declare-fun res!4643 () Bool)

(assert (=> b!12414 (=> (not res!4643) (not e!6809))))

(assert (=> b!12414 (= res!4643 (or (not (is-Cons!287 xs!292)) (not (is-Nil!288 (tail!517 xs!292)))))))

(declare-fun b!12415 () Bool)

(declare-fun dynLambda!534 (Int) Balance!369)

(assert (=> b!12415 (= e!6809 (not (= (dynLambda!534 (y!675 thiss!744)) (dynLambda!534 (x!7167 that!196)))))))

(declare-fun b!12416 () Bool)

(declare-fun res!4648 () Bool)

(assert (=> b!12416 (=> (not res!4648) (not e!6809))))

(declare-datatypes () ((ProofOps!280 (ProofOps!281 (prop!277 Bool)))))

(declare-fun thiss!710 () ProofOps!280)

(declare-fun dynLambda!535 (Int Balance!369 Balance!369) Balance!369)

(declare-fun foldRight1!120 (List!290 Int) Balance!369)

(declare-fun append!139 (List!290 List!290) List!290)

(assert (=> b!12416 (= res!4648 (= thiss!710 (ProofOps!281 (= (dynLambda!535 f!539 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)) (foldRight1!120 (append!139 xs!292 ys!54) f!539)))))))

(declare-fun res!4644 () Bool)

(assert (=> b!12417 (=> (not res!4644) (not e!6809))))

(assert (=> b!12417 (= res!4644 (= thiss!744 (EqEvidence!297 lambda!3379 lambda!3380 lambda!3381)))))

(assert (= (and start!2506 res!4649) b!12408))

(assert (= (and b!12408 res!4647) b!12412))

(assert (= (and b!12412 res!4645) b!12416))

(assert (= (and b!12416 res!4648) b!12414))

(assert (= (and b!12414 res!4643) b!12417))

(assert (= (and b!12417 res!4644) b!12409))

(assert (= (and b!12409 res!4642) b!12410))

(assert (= (and b!12410 res!4646) b!12415))

(assert (= start!2506 b!12411))

(assert (= start!2506 b!12413))

(declare-fun b_lambda!6949 () Bool)

(assert (=> (not b_lambda!6949) (not b!12410)))

(declare-fun t!3903 () Bool)

(declare-fun tb!3563 () Bool)

(assert (=> (and b!12411 (= (evidence!215 thiss!744) (evidence!215 thiss!744)) t!3903) tb!3563))

(declare-fun result!3615 () Bool)

(assert (=> tb!3563 (= result!3615 true)))

(assert (=> b!12410 t!3903))

(declare-fun b_and!6847 () Bool)

(assert (= b_and!6839 (and (=> t!3903 result!3615) b_and!6847)))

(declare-fun t!3905 () Bool)

(declare-fun tb!3565 () Bool)

(assert (=> (and b!12413 (= (evidence!215 that!196) (evidence!215 thiss!744)) t!3905) tb!3565))

(declare-fun result!3617 () Bool)

(assert (=> tb!3565 (= result!3617 true)))

(assert (=> b!12410 t!3905))

(declare-fun b_and!6849 () Bool)

(assert (= b_and!6845 (and (=> t!3905 result!3617) b_and!6849)))

(declare-fun b_lambda!6951 () Bool)

(assert (=> (not b_lambda!6951) (not b!12415)))

(declare-fun t!3907 () Bool)

(declare-fun tb!3567 () Bool)

(assert (=> (and b!12411 (= (x!7167 thiss!744) (y!675 thiss!744)) t!3907) tb!3567))

(declare-fun result!3619 () Bool)

(assert (=> tb!3567 (= result!3619 true)))

(assert (=> b!12415 t!3907))

(declare-fun b_and!6851 () Bool)

(assert (= b_and!6835 (and (=> t!3907 result!3619) b_and!6851)))

(declare-fun t!3909 () Bool)

(declare-fun tb!3569 () Bool)

(assert (=> (and b!12411 (= (y!675 thiss!744) (y!675 thiss!744)) t!3909) tb!3569))

(declare-fun result!3621 () Bool)

(assert (=> tb!3569 (= result!3621 true)))

(assert (=> b!12415 t!3909))

(declare-fun b_and!6853 () Bool)

(assert (= b_and!6837 (and (=> t!3909 result!3621) b_and!6853)))

(declare-fun t!3911 () Bool)

(declare-fun tb!3571 () Bool)

(assert (=> (and b!12413 (= (x!7167 that!196) (y!675 thiss!744)) t!3911) tb!3571))

(declare-fun result!3623 () Bool)

(assert (=> tb!3571 (= result!3623 true)))

(assert (=> b!12415 t!3911))

(declare-fun b_and!6855 () Bool)

(assert (= b_and!6841 (and (=> t!3911 result!3623) b_and!6855)))

(declare-fun tb!3573 () Bool)

(declare-fun t!3913 () Bool)

(assert (=> (and b!12413 (= (y!675 that!196) (y!675 thiss!744)) t!3913) tb!3573))

(declare-fun result!3625 () Bool)

(assert (=> tb!3573 (= result!3625 true)))

(assert (=> b!12415 t!3913))

(declare-fun b_and!6857 () Bool)

(assert (= b_and!6843 (and (=> t!3913 result!3625) b_and!6857)))

(declare-fun b_lambda!6953 () Bool)

(assert (=> (not b_lambda!6953) (not b!12415)))

(declare-fun t!3915 () Bool)

(declare-fun tb!3575 () Bool)

(assert (=> (and b!12411 (= (x!7167 thiss!744) (x!7167 that!196)) t!3915) tb!3575))

(declare-fun result!3627 () Bool)

(assert (=> tb!3575 (= result!3627 true)))

(assert (=> b!12415 t!3915))

(declare-fun b_and!6859 () Bool)

(assert (= b_and!6851 (and (=> t!3915 result!3627) b_and!6859)))

(declare-fun t!3917 () Bool)

(declare-fun tb!3577 () Bool)

(assert (=> (and b!12411 (= (y!675 thiss!744) (x!7167 that!196)) t!3917) tb!3577))

(declare-fun result!3629 () Bool)

(assert (=> tb!3577 (= result!3629 true)))

(assert (=> b!12415 t!3917))

(declare-fun b_and!6861 () Bool)

(assert (= b_and!6853 (and (=> t!3917 result!3629) b_and!6861)))

(declare-fun t!3919 () Bool)

(declare-fun tb!3579 () Bool)

(assert (=> (and b!12413 (= (x!7167 that!196) (x!7167 that!196)) t!3919) tb!3579))

(declare-fun result!3631 () Bool)

(assert (=> tb!3579 (= result!3631 true)))

(assert (=> b!12415 t!3919))

(declare-fun b_and!6863 () Bool)

(assert (= b_and!6855 (and (=> t!3919 result!3631) b_and!6863)))

(declare-fun t!3921 () Bool)

(declare-fun tb!3581 () Bool)

(assert (=> (and b!12413 (= (y!675 that!196) (x!7167 that!196)) t!3921) tb!3581))

(declare-fun result!3633 () Bool)

(assert (=> tb!3581 (= result!3633 true)))

(assert (=> b!12415 t!3921))

(declare-fun b_and!6865 () Bool)

(assert (= b_and!6857 (and (=> t!3921 result!3633) b_and!6865)))

(declare-fun b_lambda!6955 () Bool)

(assert (=> (not b_lambda!6955) (not b!12416)))

(declare-fun t!3923 () Bool)

(declare-fun tb!3583 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3923) tb!3583))

(declare-fun result!3635 () Bool)

(assert (=> tb!3583 (= result!3635 true)))

(assert (=> b!12416 t!3923))

(declare-fun b_and!6867 () Bool)

(assert (= b_and!6833 (and (=> t!3923 result!3635) b_and!6867)))

(declare-fun m!15411 () Bool)

(assert (=> b!12415 m!15411))

(declare-fun m!15413 () Bool)

(assert (=> b!12415 m!15413))

(declare-fun m!15415 () Bool)

(assert (=> start!2506 m!15415))

(declare-fun m!15417 () Bool)

(assert (=> start!2506 m!15417))

(declare-fun m!15419 () Bool)

(assert (=> start!2506 m!15419))

(declare-fun m!15421 () Bool)

(assert (=> b!12408 m!15421))

(declare-fun m!15423 () Bool)

(assert (=> b!12410 m!15423))

(declare-fun m!15425 () Bool)

(assert (=> b!12416 m!15425))

(declare-fun m!15427 () Bool)

(assert (=> b!12416 m!15427))

(declare-fun m!15429 () Bool)

(assert (=> b!12416 m!15429))

(assert (=> b!12416 m!15427))

(assert (=> b!12416 m!15429))

(declare-fun m!15431 () Bool)

(assert (=> b!12416 m!15431))

(assert (=> b!12416 m!15425))

(declare-fun m!15433 () Bool)

(assert (=> b!12416 m!15433))

(push 1)

(assert (not b!12417))

(assert (not b_next!4637))

(assert b_and!6859)

(assert (not b_next!4631))

(assert (not start!2506))

(assert (not b_next!4639))

(assert (not b!12408))

(assert (not b_lambda!6955))

(assert (not b_next!4611))

(assert b_and!6861)

(assert (not b_lambda!6949))

(assert (not b_next!4629))

(assert b_and!6849)

(assert b_and!6867)

(assert (not b_lambda!6951))

(assert (not b_next!4635))

(assert b_and!6847)

(assert (not b_lambda!6953))

(assert b_and!6863)

(assert (not b!12416))

(assert b_and!6865)

(assert (not b!12409))

(assert (not b_next!4633))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4637))

(assert b_and!6859)

(assert (not b_next!4631))

(assert (not b_next!4639))

(assert (not b_next!4611))

(assert b_and!6861)

(assert (not b_next!4629))

(assert b_and!6849)

(assert b_and!6867)

(assert (not b_next!4635))

(assert b_and!6847)

(assert b_and!6863)

(assert b_and!6865)

(assert (not b_next!4633))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6957 () Bool)

(assert (= b_lambda!6953 (or (and b!12409 (= lambda!3382 (x!7167 that!196))) (and b!12417 (= lambda!3379 (x!7167 that!196))) (and b!12411 b_free!1965 (= (y!675 thiss!744) (x!7167 that!196))) (and b!12413 b_free!1971 (= (y!675 that!196) (x!7167 that!196))) (and b!12413 b_free!1969) (and b!12411 b_free!1963 (= (x!7167 thiss!744) (x!7167 that!196))) (and b!12417 (= lambda!3380 (x!7167 that!196))) b_lambda!6957)))

(declare-fun bs!3262 () Bool)

(declare-fun d!9647 () Bool)

(assert (= bs!3262 (and d!9647 b!12417)))

(assert (=> bs!3262 (= (dynLambda!534 lambda!3380) (dynLambda!535 f!539 (head!505 xs!292) (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6965 () Bool)

(assert (=> (not b_lambda!6965) (not bs!3262)))

(declare-fun t!3925 () Bool)

(declare-fun tb!3585 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3925) tb!3585))

(declare-fun result!3637 () Bool)

(assert (=> tb!3585 (= result!3637 true)))

(assert (=> bs!3262 t!3925))

(declare-fun b_and!6869 () Bool)

(assert (= b_and!6867 (and (=> t!3925 result!3637) b_and!6869)))

(declare-fun m!15435 () Bool)

(assert (=> bs!3262 m!15435))

(assert (=> bs!3262 m!15435))

(declare-fun m!15437 () Bool)

(assert (=> bs!3262 m!15437))

(assert (=> bs!3262 m!15437))

(declare-fun m!15439 () Bool)

(assert (=> bs!3262 m!15439))

(assert (=> (and b!12417 (= lambda!3380 (x!7167 that!196)) b!12415) d!9647))

(declare-fun bs!3263 () Bool)

(declare-fun d!9649 () Bool)

(assert (= bs!3263 (and d!9649 b!12417)))

(assert (=> bs!3263 (= (dynLambda!534 lambda!3379) (dynLambda!535 f!539 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)))))

(declare-fun b_lambda!6967 () Bool)

(assert (=> (not b_lambda!6967) (not bs!3263)))

(assert (=> bs!3263 t!3923))

(declare-fun b_and!6871 () Bool)

(assert (= b_and!6869 (and (=> t!3923 result!3635) b_and!6871)))

(assert (=> bs!3263 m!15427))

(assert (=> bs!3263 m!15429))

(assert (=> bs!3263 m!15427))

(assert (=> bs!3263 m!15429))

(assert (=> bs!3263 m!15431))

(assert (=> (and b!12417 (= lambda!3379 (x!7167 that!196)) b!12415) d!9649))

(declare-fun bs!3264 () Bool)

(declare-fun d!9651 () Bool)

(assert (= bs!3264 (and d!9651 b!12409)))

(assert (=> bs!3264 (= (dynLambda!534 lambda!3382) (foldRight1!120 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54)) f!539))))

(assert (=> bs!3264 m!15435))

(declare-fun m!15441 () Bool)

(assert (=> bs!3264 m!15441))

(assert (=> (and b!12409 (= lambda!3382 (x!7167 that!196)) b!12415) d!9651))

(declare-fun b_lambda!6959 () Bool)

(assert (= b_lambda!6951 (or (and b!12409 (= lambda!3382 (y!675 thiss!744))) (and b!12417 (= lambda!3379 (y!675 thiss!744))) (and b!12413 b_free!1971 (= (y!675 that!196) (y!675 thiss!744))) (and b!12411 b_free!1963 (= (x!7167 thiss!744) (y!675 thiss!744))) (and b!12413 b_free!1969 (= (x!7167 that!196) (y!675 thiss!744))) (and b!12411 b_free!1965) (and b!12417 (= lambda!3380 (y!675 thiss!744))) b_lambda!6959)))

(declare-fun bs!3265 () Bool)

(declare-fun d!9653 () Bool)

(assert (= bs!3265 (and d!9653 b!12417)))

(assert (=> bs!3265 (= (dynLambda!534 lambda!3379) (dynLambda!535 f!539 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)))))

(declare-fun b_lambda!6969 () Bool)

(assert (=> (not b_lambda!6969) (not bs!3265)))

(assert (=> bs!3265 t!3923))

(declare-fun b_and!6873 () Bool)

(assert (= b_and!6871 (and (=> t!3923 result!3635) b_and!6873)))

(assert (=> bs!3265 m!15427))

(assert (=> bs!3265 m!15429))

(assert (=> bs!3265 m!15427))

(assert (=> bs!3265 m!15429))

(assert (=> bs!3265 m!15431))

(assert (=> (and b!12417 (= lambda!3379 (y!675 thiss!744)) b!12415) d!9653))

(declare-fun bs!3266 () Bool)

(declare-fun d!9655 () Bool)

(assert (= bs!3266 (and d!9655 b!12409)))

(assert (=> bs!3266 (= (dynLambda!534 lambda!3382) (foldRight1!120 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54)) f!539))))

(assert (=> bs!3266 m!15435))

(assert (=> bs!3266 m!15441))

(assert (=> (and b!12409 (= lambda!3382 (y!675 thiss!744)) b!12415) d!9655))

(declare-fun bs!3267 () Bool)

(declare-fun d!9657 () Bool)

(assert (= bs!3267 (and d!9657 b!12417)))

(assert (=> bs!3267 (= (dynLambda!534 lambda!3380) (dynLambda!535 f!539 (head!505 xs!292) (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!6971 () Bool)

(assert (=> (not b_lambda!6971) (not bs!3267)))

(assert (=> bs!3267 t!3925))

(declare-fun b_and!6875 () Bool)

(assert (= b_and!6873 (and (=> t!3925 result!3637) b_and!6875)))

(assert (=> bs!3267 m!15435))

(assert (=> bs!3267 m!15435))

(assert (=> bs!3267 m!15437))

(assert (=> bs!3267 m!15437))

(assert (=> bs!3267 m!15439))

(assert (=> (and b!12417 (= lambda!3380 (y!675 thiss!744)) b!12415) d!9657))

(declare-fun b_lambda!6961 () Bool)

(assert (= b_lambda!6949 (or (and b!12417 (= lambda!3381 (evidence!215 thiss!744))) (and b!12411 b_free!1967) (and b!12413 b_free!1973 (= (evidence!215 that!196) (evidence!215 thiss!744))) b_lambda!6961)))

(declare-fun bs!3268 () Bool)

(declare-fun d!9659 () Bool)

(assert (= bs!3268 (and d!9659 b!12417)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!3268 (= (dynLambda!533 lambda!3381) trivial!1)))

(assert (=> (and b!12417 (= lambda!3381 (evidence!215 thiss!744)) b!12410) d!9659))

(declare-fun b_lambda!6963 () Bool)

(assert (= b_lambda!6955 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!6963)))

(declare-fun bs!3269 () Bool)

(declare-fun d!9661 () Bool)

(assert (= bs!3269 (and d!9661 b!12412)))

(declare-fun ++!3 (Balance!369 Balance!369) Balance!369)

(assert (=> bs!3269 (= (dynLambda!535 lambda!3378 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)) (++!3 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)))))

(assert (=> bs!3269 m!15427))

(assert (=> bs!3269 m!15429))

(declare-fun m!15443 () Bool)

(assert (=> bs!3269 m!15443))

(assert (=> (and b!12412 (= lambda!3378 f!539) b!12416) d!9661))

(push 1)

(assert (not b_lambda!6967))

(assert (not b!12417))

(assert (not b_next!4637))

(assert b_and!6859)

(assert (not b_lambda!6971))

(assert (not b_next!4631))

(assert (not b_lambda!6961))

(assert (not start!2506))

(assert (not b_next!4639))

(assert (not b!12408))

(assert (not b_next!4611))

(assert (not bs!3266))

(assert b_and!6861)

(assert (not b_next!4629))

(assert (not bs!3262))

(assert b_and!6849)

(assert (not b_next!4635))

(assert (not bs!3264))

(assert b_and!6847)

(assert (not b_lambda!6969))

(assert (not b_lambda!6959))

(assert (not bs!3267))

(assert b_and!6863)

(assert (not bs!3265))

(assert (not b!12416))

(assert b_and!6865)

(assert (not bs!3269))

(assert (not b!12409))

(assert (not bs!3263))

(assert (not b_lambda!6965))

(assert (not b_lambda!6963))

(assert (not b_next!4633))

(assert b_and!6875)

(assert (not b_lambda!6957))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4637))

(assert b_and!6859)

(assert (not b_next!4631))

(assert (not b_next!4639))

(assert (not b_next!4611))

(assert b_and!6861)

(assert (not b_next!4629))

(assert b_and!6849)

(assert (not b_next!4635))

(assert b_and!6847)

(assert b_and!6863)

(assert b_and!6865)

(assert (not b_next!4633))

(assert b_and!6875)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!6973 () Bool)

(assert (= b_lambda!6971 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!6973)))

(declare-fun bs!3270 () Bool)

(declare-fun d!9663 () Bool)

(assert (= bs!3270 (and d!9663 b!12412)))

(assert (=> bs!3270 (= (dynLambda!535 lambda!3378 (head!505 xs!292) (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539)) (++!3 (head!505 xs!292) (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539)))))

(assert (=> bs!3270 m!15437))

(declare-fun m!15445 () Bool)

(assert (=> bs!3270 m!15445))

(assert (=> (and b!12412 (= lambda!3378 f!539) bs!3267) d!9663))

(declare-fun b_lambda!6975 () Bool)

(assert (= b_lambda!6969 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!6975)))

(assert (=> (and b!12412 (= lambda!3378 f!539) bs!3265) d!9661))

(declare-fun b_lambda!6977 () Bool)

(assert (= b_lambda!6967 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!6977)))

(assert (=> (and b!12412 (= lambda!3378 f!539) bs!3263) d!9661))

(declare-fun b_lambda!6979 () Bool)

(assert (= b_lambda!6965 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!6979)))

(assert (=> (and b!12412 (= lambda!3378 f!539) bs!3262) d!9663))

(push 1)

(assert (not b!12417))

(assert (not b_next!4637))

(assert b_and!6859)

(assert (not b_lambda!6977))

(assert (not b_next!4631))

(assert (not b_lambda!6961))

(assert (not start!2506))

(assert (not b_lambda!6979))

(assert (not b_next!4639))

(assert (not b!12408))

(assert (not b_lambda!6975))

(assert (not b_next!4611))

(assert (not bs!3266))

(assert b_and!6861)

(assert (not b_next!4629))

(assert (not bs!3262))

(assert b_and!6849)

(assert (not b_next!4635))

(assert (not bs!3264))

(assert b_and!6847)

(assert (not b_lambda!6959))

(assert (not bs!3267))

(assert b_and!6863)

(assert (not bs!3265))

(assert (not b!12416))

(assert b_and!6865)

(assert (not bs!3269))

(assert (not b_lambda!6973))

(assert (not b!12409))

(assert (not bs!3263))

(assert (not b_lambda!6963))

(assert (not b_next!4633))

(assert b_and!6875)

(assert (not bs!3270))

(assert (not b_lambda!6957))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4637))

(assert b_and!6859)

(assert (not b_next!4631))

(assert (not b_next!4639))

(assert (not b_next!4611))

(assert b_and!6861)

(assert (not b_next!4629))

(assert b_and!6849)

(assert (not b_next!4635))

(assert b_and!6847)

(assert b_and!6863)

(assert b_and!6865)

(assert (not b_next!4633))

(assert b_and!6875)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9665 () Bool)

(declare-fun lt!1806 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9665 (= lt!1806 (min!4 (extraOpen!225 (foldRight1!120 xs!292 f!539)) (extraClose!225 (foldRight1!120 ys!54 f!539))))))

(assert (=> d!9665 (= (++!3 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)) (Balance!370 (- (+ (extraOpen!225 (foldRight1!120 xs!292 f!539)) (extraOpen!225 (foldRight1!120 ys!54 f!539))) lt!1806) (- (+ (extraClose!225 (foldRight1!120 xs!292 f!539)) (extraClose!225 (foldRight1!120 ys!54 f!539))) lt!1806)))))

(declare-fun bs!3271 () Bool)

(assert (= bs!3271 d!9665))

(declare-fun m!15447 () Bool)

(assert (=> bs!3271 m!15447))

(assert (=> bs!3269 d!9665))

(declare-fun d!9667 () Bool)

(declare-fun c!3502 () Bool)

(assert (=> d!9667 (= c!3502 (and (is-Cons!287 xs!292) (is-Nil!288 (tail!517 xs!292))))))

(declare-fun e!6814 () Balance!369)

(assert (=> d!9667 (= (foldRight1!120 xs!292 f!539) e!6814)))

(declare-fun b!12426 () Bool)

(assert (=> b!12426 (= e!6814 (head!505 xs!292))))

(declare-fun b!12427 () Bool)

(assert (=> b!12427 (= e!6814 (dynLambda!535 f!539 (head!505 xs!292) (foldRight1!120 (tail!517 xs!292) f!539)))))

(assert (= (and d!9667 c!3502) b!12426))

(assert (= (and d!9667 (not c!3502)) b!12427))

(declare-fun b_lambda!6981 () Bool)

(assert (=> (not b_lambda!6981) (not b!12427)))

(declare-fun t!3927 () Bool)

(declare-fun tb!3587 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3927) tb!3587))

(declare-fun result!3639 () Bool)

(assert (=> tb!3587 (= result!3639 true)))

(assert (=> b!12427 t!3927))

(declare-fun b_and!6877 () Bool)

(assert (= b_and!6875 (and (=> t!3927 result!3639) b_and!6877)))

(declare-fun m!15449 () Bool)

(assert (=> b!12427 m!15449))

(assert (=> b!12427 m!15449))

(declare-fun m!15451 () Bool)

(assert (=> b!12427 m!15451))

(assert (=> bs!3263 d!9667))

(declare-fun d!9669 () Bool)

(declare-fun c!3503 () Bool)

(assert (=> d!9669 (= c!3503 (and (is-Cons!287 ys!54) (is-Nil!288 (tail!517 ys!54))))))

(declare-fun e!6815 () Balance!369)

(assert (=> d!9669 (= (foldRight1!120 ys!54 f!539) e!6815)))

(declare-fun b!12428 () Bool)

(assert (=> b!12428 (= e!6815 (head!505 ys!54))))

(declare-fun b!12429 () Bool)

(assert (=> b!12429 (= e!6815 (dynLambda!535 f!539 (head!505 ys!54) (foldRight1!120 (tail!517 ys!54) f!539)))))

(assert (= (and d!9669 c!3503) b!12428))

(assert (= (and d!9669 (not c!3503)) b!12429))

(declare-fun b_lambda!6983 () Bool)

(assert (=> (not b_lambda!6983) (not b!12429)))

(declare-fun t!3929 () Bool)

(declare-fun tb!3589 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3929) tb!3589))

(declare-fun result!3641 () Bool)

(assert (=> tb!3589 (= result!3641 true)))

(assert (=> b!12429 t!3929))

(declare-fun b_and!6879 () Bool)

(assert (= b_and!6877 (and (=> t!3929 result!3641) b_and!6879)))

(declare-fun m!15453 () Bool)

(assert (=> b!12429 m!15453))

(assert (=> b!12429 m!15453))

(declare-fun m!15455 () Bool)

(assert (=> b!12429 m!15455))

(assert (=> bs!3263 d!9669))

(declare-fun d!9671 () Bool)

(declare-fun c!3504 () Bool)

(assert (=> d!9671 (= c!3504 (and (is-Cons!287 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) (is-Nil!288 (tail!517 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))))))))

(declare-fun e!6816 () Balance!369)

(assert (=> d!9671 (= (foldRight1!120 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54)) f!539) e!6816)))

(declare-fun b!12430 () Bool)

(assert (=> b!12430 (= e!6816 (head!505 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))))))

(declare-fun b!12431 () Bool)

(assert (=> b!12431 (= e!6816 (dynLambda!535 f!539 (head!505 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) (foldRight1!120 (tail!517 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) f!539)))))

(assert (= (and d!9671 c!3504) b!12430))

(assert (= (and d!9671 (not c!3504)) b!12431))

(declare-fun b_lambda!6985 () Bool)

(assert (=> (not b_lambda!6985) (not b!12431)))

(declare-fun t!3931 () Bool)

(declare-fun tb!3591 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3931) tb!3591))

(declare-fun result!3643 () Bool)

(assert (=> tb!3591 (= result!3643 true)))

(assert (=> b!12431 t!3931))

(declare-fun b_and!6881 () Bool)

(assert (= b_and!6879 (and (=> t!3931 result!3643) b_and!6881)))

(declare-fun m!15457 () Bool)

(assert (=> b!12431 m!15457))

(assert (=> b!12431 m!15457))

(declare-fun m!15459 () Bool)

(assert (=> b!12431 m!15459))

(assert (=> bs!3264 d!9671))

(declare-fun d!9673 () Bool)

(declare-fun c!3507 () Bool)

(assert (=> d!9673 (= c!3507 (is-Nil!288 (tail!517 xs!292)))))

(declare-fun e!6819 () List!290)

(assert (=> d!9673 (= (append!139 (tail!517 xs!292) ys!54) e!6819)))

(declare-fun b!12436 () Bool)

(assert (=> b!12436 (= e!6819 ys!54)))

(declare-fun b!12437 () Bool)

(assert (=> b!12437 (= e!6819 (Cons!287 (head!505 (tail!517 xs!292)) (append!139 (tail!517 (tail!517 xs!292)) ys!54)))))

(assert (= (and d!9673 c!3507) b!12436))

(assert (= (and d!9673 (not c!3507)) b!12437))

(declare-fun m!15461 () Bool)

(assert (=> b!12437 m!15461))

(assert (=> bs!3264 d!9673))

(declare-fun d!9675 () Bool)

(assert (=> d!9675 (= trivial!1 true)))

(assert (=> b!12409 d!9675))

(assert (=> bs!3265 d!9667))

(assert (=> bs!3265 d!9669))

(declare-fun d!9677 () Bool)

(declare-fun c!3508 () Bool)

(assert (=> d!9677 (= c!3508 (and (is-Cons!287 (append!139 (tail!517 xs!292) ys!54)) (is-Nil!288 (tail!517 (append!139 (tail!517 xs!292) ys!54)))))))

(declare-fun e!6820 () Balance!369)

(assert (=> d!9677 (= (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539) e!6820)))

(declare-fun b!12438 () Bool)

(assert (=> b!12438 (= e!6820 (head!505 (append!139 (tail!517 xs!292) ys!54)))))

(declare-fun b!12439 () Bool)

(assert (=> b!12439 (= e!6820 (dynLambda!535 f!539 (head!505 (append!139 (tail!517 xs!292) ys!54)) (foldRight1!120 (tail!517 (append!139 (tail!517 xs!292) ys!54)) f!539)))))

(assert (= (and d!9677 c!3508) b!12438))

(assert (= (and d!9677 (not c!3508)) b!12439))

(declare-fun b_lambda!6987 () Bool)

(assert (=> (not b_lambda!6987) (not b!12439)))

(declare-fun t!3933 () Bool)

(declare-fun tb!3593 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3933) tb!3593))

(declare-fun result!3645 () Bool)

(assert (=> tb!3593 (= result!3645 true)))

(assert (=> b!12439 t!3933))

(declare-fun b_and!6883 () Bool)

(assert (= b_and!6881 (and (=> t!3933 result!3645) b_and!6883)))

(declare-fun m!15463 () Bool)

(assert (=> b!12439 m!15463))

(assert (=> b!12439 m!15463))

(declare-fun m!15465 () Bool)

(assert (=> b!12439 m!15465))

(assert (=> bs!3262 d!9677))

(assert (=> bs!3262 d!9673))

(assert (=> bs!3267 d!9677))

(assert (=> bs!3267 d!9673))

(assert (=> bs!3266 d!9671))

(assert (=> bs!3266 d!9673))

(assert (=> b!12416 d!9667))

(assert (=> b!12416 d!9669))

(declare-fun d!9679 () Bool)

(declare-fun c!3509 () Bool)

(assert (=> d!9679 (= c!3509 (and (is-Cons!287 (append!139 xs!292 ys!54)) (is-Nil!288 (tail!517 (append!139 xs!292 ys!54)))))))

(declare-fun e!6821 () Balance!369)

(assert (=> d!9679 (= (foldRight1!120 (append!139 xs!292 ys!54) f!539) e!6821)))

(declare-fun b!12440 () Bool)

(assert (=> b!12440 (= e!6821 (head!505 (append!139 xs!292 ys!54)))))

(declare-fun b!12441 () Bool)

(assert (=> b!12441 (= e!6821 (dynLambda!535 f!539 (head!505 (append!139 xs!292 ys!54)) (foldRight1!120 (tail!517 (append!139 xs!292 ys!54)) f!539)))))

(assert (= (and d!9679 c!3509) b!12440))

(assert (= (and d!9679 (not c!3509)) b!12441))

(declare-fun b_lambda!6989 () Bool)

(assert (=> (not b_lambda!6989) (not b!12441)))

(declare-fun t!3935 () Bool)

(declare-fun tb!3595 () Bool)

(assert (=> (and start!2506 (= f!539 f!539) t!3935) tb!3595))

(declare-fun result!3647 () Bool)

(assert (=> tb!3595 (= result!3647 true)))

(assert (=> b!12441 t!3935))

(declare-fun b_and!6885 () Bool)

(assert (= b_and!6883 (and (=> t!3935 result!3647) b_and!6885)))

(declare-fun m!15467 () Bool)

(assert (=> b!12441 m!15467))

(assert (=> b!12441 m!15467))

(declare-fun m!15469 () Bool)

(assert (=> b!12441 m!15469))

(assert (=> b!12416 d!9679))

(declare-fun d!9681 () Bool)

(declare-fun c!3510 () Bool)

(assert (=> d!9681 (= c!3510 (is-Nil!288 xs!292))))

(declare-fun e!6822 () List!290)

(assert (=> d!9681 (= (append!139 xs!292 ys!54) e!6822)))

(declare-fun b!12442 () Bool)

(assert (=> b!12442 (= e!6822 ys!54)))

(declare-fun b!12443 () Bool)

(assert (=> b!12443 (= e!6822 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54)))))

(assert (= (and d!9681 c!3510) b!12442))

(assert (= (and d!9681 (not c!3510)) b!12443))

(assert (=> b!12443 m!15435))

(assert (=> b!12416 d!9681))

(declare-fun d!9683 () Bool)

(assert (=> d!9683 (= (isEmpty!218 xs!292) (is-Nil!288 xs!292))))

(assert (=> start!2506 d!9683))

(declare-fun d!9685 () Bool)

(declare-fun res!4652 () Bool)

(declare-fun e!6825 () Bool)

(assert (=> d!9685 (=> (not res!4652) (not e!6825))))

(assert (=> d!9685 (= res!4652 (= (dynLambda!534 (x!7167 thiss!744)) (dynLambda!534 (y!675 thiss!744))))))

(assert (=> d!9685 (= (inv!420 thiss!744) e!6825)))

(declare-fun b!12446 () Bool)

(assert (=> b!12446 (= e!6825 (dynLambda!533 (evidence!215 thiss!744)))))

(assert (= (and d!9685 res!4652) b!12446))

(declare-fun b_lambda!6991 () Bool)

(assert (=> (not b_lambda!6991) (not d!9685)))

(declare-fun t!3937 () Bool)

(declare-fun tb!3597 () Bool)

(assert (=> (and b!12411 (= (x!7167 thiss!744) (x!7167 thiss!744)) t!3937) tb!3597))

(declare-fun result!3649 () Bool)

(assert (=> tb!3597 (= result!3649 true)))

(assert (=> d!9685 t!3937))

(declare-fun b_and!6887 () Bool)

(assert (= b_and!6859 (and (=> t!3937 result!3649) b_and!6887)))

(declare-fun t!3939 () Bool)

(declare-fun tb!3599 () Bool)

(assert (=> (and b!12411 (= (y!675 thiss!744) (x!7167 thiss!744)) t!3939) tb!3599))

(declare-fun result!3651 () Bool)

(assert (=> tb!3599 (= result!3651 true)))

(assert (=> d!9685 t!3939))

(declare-fun b_and!6889 () Bool)

(assert (= b_and!6861 (and (=> t!3939 result!3651) b_and!6889)))

(declare-fun tb!3601 () Bool)

(declare-fun t!3941 () Bool)

(assert (=> (and b!12413 (= (x!7167 that!196) (x!7167 thiss!744)) t!3941) tb!3601))

(declare-fun result!3653 () Bool)

(assert (=> tb!3601 (= result!3653 true)))

(assert (=> d!9685 t!3941))

(declare-fun b_and!6891 () Bool)

(assert (= b_and!6863 (and (=> t!3941 result!3653) b_and!6891)))

(declare-fun tb!3603 () Bool)

(declare-fun t!3943 () Bool)

(assert (=> (and b!12413 (= (y!675 that!196) (x!7167 thiss!744)) t!3943) tb!3603))

(declare-fun result!3655 () Bool)

(assert (=> tb!3603 (= result!3655 true)))

(assert (=> d!9685 t!3943))

(declare-fun b_and!6893 () Bool)

(assert (= b_and!6865 (and (=> t!3943 result!3655) b_and!6893)))

(declare-fun b_lambda!6993 () Bool)

(assert (=> (not b_lambda!6993) (not d!9685)))

(assert (=> d!9685 t!3907))

(declare-fun b_and!6895 () Bool)

(assert (= b_and!6887 (and (=> t!3907 result!3619) b_and!6895)))

(assert (=> d!9685 t!3909))

(declare-fun b_and!6897 () Bool)

(assert (= b_and!6889 (and (=> t!3909 result!3621) b_and!6897)))

(assert (=> d!9685 t!3911))

(declare-fun b_and!6899 () Bool)

(assert (= b_and!6891 (and (=> t!3911 result!3623) b_and!6899)))

(assert (=> d!9685 t!3913))

(declare-fun b_and!6901 () Bool)

(assert (= b_and!6893 (and (=> t!3913 result!3625) b_and!6901)))

(declare-fun b_lambda!6995 () Bool)

(assert (=> (not b_lambda!6995) (not b!12446)))

(assert (=> b!12446 t!3903))

(declare-fun b_and!6903 () Bool)

(assert (= b_and!6847 (and (=> t!3903 result!3615) b_and!6903)))

(assert (=> b!12446 t!3905))

(declare-fun b_and!6905 () Bool)

(assert (= b_and!6849 (and (=> t!3905 result!3617) b_and!6905)))

(declare-fun m!15471 () Bool)

(assert (=> d!9685 m!15471))

(assert (=> d!9685 m!15411))

(assert (=> b!12446 m!15423))

(assert (=> start!2506 d!9685))

(declare-fun d!9687 () Bool)

(declare-fun res!4653 () Bool)

(declare-fun e!6826 () Bool)

(assert (=> d!9687 (=> (not res!4653) (not e!6826))))

(assert (=> d!9687 (= res!4653 (= (dynLambda!534 (x!7167 that!196)) (dynLambda!534 (y!675 that!196))))))

(assert (=> d!9687 (= (inv!420 that!196) e!6826)))

(declare-fun b!12447 () Bool)

(assert (=> b!12447 (= e!6826 (dynLambda!533 (evidence!215 that!196)))))

(assert (= (and d!9687 res!4653) b!12447))

(declare-fun b_lambda!6997 () Bool)

(assert (=> (not b_lambda!6997) (not d!9687)))

(assert (=> d!9687 t!3915))

(declare-fun b_and!6907 () Bool)

(assert (= b_and!6895 (and (=> t!3915 result!3627) b_and!6907)))

(assert (=> d!9687 t!3917))

(declare-fun b_and!6909 () Bool)

(assert (= b_and!6897 (and (=> t!3917 result!3629) b_and!6909)))

(assert (=> d!9687 t!3919))

(declare-fun b_and!6911 () Bool)

(assert (= b_and!6899 (and (=> t!3919 result!3631) b_and!6911)))

(assert (=> d!9687 t!3921))

(declare-fun b_and!6913 () Bool)

(assert (= b_and!6901 (and (=> t!3921 result!3633) b_and!6913)))

(declare-fun b_lambda!6999 () Bool)

(assert (=> (not b_lambda!6999) (not d!9687)))

(declare-fun tb!3605 () Bool)

(declare-fun t!3945 () Bool)

(assert (=> (and b!12411 (= (x!7167 thiss!744) (y!675 that!196)) t!3945) tb!3605))

(declare-fun result!3657 () Bool)

(assert (=> tb!3605 (= result!3657 true)))

(assert (=> d!9687 t!3945))

(declare-fun b_and!6915 () Bool)

(assert (= b_and!6907 (and (=> t!3945 result!3657) b_and!6915)))

(declare-fun t!3947 () Bool)

(declare-fun tb!3607 () Bool)

(assert (=> (and b!12411 (= (y!675 thiss!744) (y!675 that!196)) t!3947) tb!3607))

(declare-fun result!3659 () Bool)

(assert (=> tb!3607 (= result!3659 true)))

(assert (=> d!9687 t!3947))

(declare-fun b_and!6917 () Bool)

(assert (= b_and!6909 (and (=> t!3947 result!3659) b_and!6917)))

(declare-fun t!3949 () Bool)

(declare-fun tb!3609 () Bool)

(assert (=> (and b!12413 (= (x!7167 that!196) (y!675 that!196)) t!3949) tb!3609))

(declare-fun result!3661 () Bool)

(assert (=> tb!3609 (= result!3661 true)))

(assert (=> d!9687 t!3949))

(declare-fun b_and!6919 () Bool)

(assert (= b_and!6911 (and (=> t!3949 result!3661) b_and!6919)))

(declare-fun t!3951 () Bool)

(declare-fun tb!3611 () Bool)

(assert (=> (and b!12413 (= (y!675 that!196) (y!675 that!196)) t!3951) tb!3611))

(declare-fun result!3663 () Bool)

(assert (=> tb!3611 (= result!3663 true)))

(assert (=> d!9687 t!3951))

(declare-fun b_and!6921 () Bool)

(assert (= b_and!6913 (and (=> t!3951 result!3663) b_and!6921)))

(declare-fun b_lambda!7001 () Bool)

(assert (=> (not b_lambda!7001) (not b!12447)))

(declare-fun t!3953 () Bool)

(declare-fun tb!3613 () Bool)

(assert (=> (and b!12411 (= (evidence!215 thiss!744) (evidence!215 that!196)) t!3953) tb!3613))

(declare-fun result!3665 () Bool)

(assert (=> tb!3613 (= result!3665 true)))

(assert (=> b!12447 t!3953))

(declare-fun b_and!6923 () Bool)

(assert (= b_and!6903 (and (=> t!3953 result!3665) b_and!6923)))

(declare-fun t!3955 () Bool)

(declare-fun tb!3615 () Bool)

(assert (=> (and b!12413 (= (evidence!215 that!196) (evidence!215 that!196)) t!3955) tb!3615))

(declare-fun result!3667 () Bool)

(assert (=> tb!3615 (= result!3667 true)))

(assert (=> b!12447 t!3955))

(declare-fun b_and!6925 () Bool)

(assert (= b_and!6905 (and (=> t!3955 result!3667) b_and!6925)))

(assert (=> d!9687 m!15413))

(declare-fun m!15473 () Bool)

(assert (=> d!9687 m!15473))

(declare-fun m!15475 () Bool)

(assert (=> b!12447 m!15475))

(assert (=> start!2506 d!9687))

(declare-fun d!9689 () Bool)

(assert (=> d!9689 (= (isEmpty!218 ys!54) (is-Nil!288 ys!54))))

(assert (=> b!12408 d!9689))

(assert (=> b!12417 d!9675))

(declare-fun b_lambda!7003 () Bool)

(assert (= b_lambda!6995 (or (and b!12417 (= lambda!3381 (evidence!215 thiss!744))) (and b!12411 b_free!1967) (and b!12413 b_free!1973 (= (evidence!215 that!196) (evidence!215 thiss!744))) b_lambda!7003)))

(assert (=> (and b!12417 (= lambda!3381 (evidence!215 thiss!744)) b!12446) d!9659))

(declare-fun b_lambda!7005 () Bool)

(assert (= b_lambda!6997 (or (and b!12409 (= lambda!3382 (x!7167 that!196))) (and b!12417 (= lambda!3379 (x!7167 that!196))) (and b!12411 b_free!1965 (= (y!675 thiss!744) (x!7167 that!196))) (and b!12413 b_free!1971 (= (y!675 that!196) (x!7167 that!196))) (and b!12413 b_free!1969) (and b!12411 b_free!1963 (= (x!7167 thiss!744) (x!7167 that!196))) (and b!12417 (= lambda!3380 (x!7167 that!196))) b_lambda!7005)))

(assert (=> (and b!12417 (= lambda!3380 (x!7167 that!196)) d!9687) d!9647))

(assert (=> (and b!12417 (= lambda!3379 (x!7167 that!196)) d!9687) d!9649))

(assert (=> (and b!12409 (= lambda!3382 (x!7167 that!196)) d!9687) d!9651))

(declare-fun b_lambda!7007 () Bool)

(assert (= b_lambda!6993 (or (and b!12409 (= lambda!3382 (y!675 thiss!744))) (and b!12417 (= lambda!3379 (y!675 thiss!744))) (and b!12413 b_free!1971 (= (y!675 that!196) (y!675 thiss!744))) (and b!12411 b_free!1963 (= (x!7167 thiss!744) (y!675 thiss!744))) (and b!12413 b_free!1969 (= (x!7167 that!196) (y!675 thiss!744))) (and b!12411 b_free!1965) (and b!12417 (= lambda!3380 (y!675 thiss!744))) b_lambda!7007)))

(assert (=> (and b!12417 (= lambda!3379 (y!675 thiss!744)) d!9685) d!9653))

(assert (=> (and b!12409 (= lambda!3382 (y!675 thiss!744)) d!9685) d!9655))

(assert (=> (and b!12417 (= lambda!3380 (y!675 thiss!744)) d!9685) d!9657))

(declare-fun b_lambda!7009 () Bool)

(assert (= b_lambda!6983 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!7009)))

(declare-fun bs!3272 () Bool)

(declare-fun d!9691 () Bool)

(assert (= bs!3272 (and d!9691 b!12412)))

(assert (=> bs!3272 (= (dynLambda!535 lambda!3378 (head!505 ys!54) (foldRight1!120 (tail!517 ys!54) f!539)) (++!3 (head!505 ys!54) (foldRight1!120 (tail!517 ys!54) f!539)))))

(assert (=> bs!3272 m!15453))

(declare-fun m!15477 () Bool)

(assert (=> bs!3272 m!15477))

(assert (=> (and b!12412 (= lambda!3378 f!539) b!12429) d!9691))

(declare-fun b_lambda!7011 () Bool)

(assert (= b_lambda!6981 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!7011)))

(declare-fun bs!3273 () Bool)

(declare-fun d!9693 () Bool)

(assert (= bs!3273 (and d!9693 b!12412)))

(assert (=> bs!3273 (= (dynLambda!535 lambda!3378 (head!505 xs!292) (foldRight1!120 (tail!517 xs!292) f!539)) (++!3 (head!505 xs!292) (foldRight1!120 (tail!517 xs!292) f!539)))))

(assert (=> bs!3273 m!15449))

(declare-fun m!15479 () Bool)

(assert (=> bs!3273 m!15479))

(assert (=> (and b!12412 (= lambda!3378 f!539) b!12427) d!9693))

(declare-fun b_lambda!7013 () Bool)

(assert (= b_lambda!6991 (or (and b!12411 b_free!1965 (= (y!675 thiss!744) (x!7167 thiss!744))) (and b!12409 (= lambda!3382 (x!7167 thiss!744))) (and b!12411 b_free!1963) (and b!12413 b_free!1969 (= (x!7167 that!196) (x!7167 thiss!744))) (and b!12417 (= lambda!3379 (x!7167 thiss!744))) (and b!12413 b_free!1971 (= (y!675 that!196) (x!7167 thiss!744))) (and b!12417 (= lambda!3380 (x!7167 thiss!744))) b_lambda!7013)))

(declare-fun bs!3274 () Bool)

(declare-fun d!9695 () Bool)

(assert (= bs!3274 (and d!9695 b!12417)))

(assert (=> bs!3274 (= (dynLambda!534 lambda!3380) (dynLambda!535 f!539 (head!505 xs!292) (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!7025 () Bool)

(assert (=> (not b_lambda!7025) (not bs!3274)))

(assert (=> bs!3274 t!3925))

(declare-fun b_and!6927 () Bool)

(assert (= b_and!6885 (and (=> t!3925 result!3637) b_and!6927)))

(assert (=> bs!3274 m!15435))

(assert (=> bs!3274 m!15435))

(assert (=> bs!3274 m!15437))

(assert (=> bs!3274 m!15437))

(assert (=> bs!3274 m!15439))

(assert (=> (and b!12417 (= lambda!3380 (x!7167 thiss!744)) d!9685) d!9695))

(declare-fun bs!3275 () Bool)

(declare-fun d!9697 () Bool)

(assert (= bs!3275 (and d!9697 b!12409)))

(assert (=> bs!3275 (= (dynLambda!534 lambda!3382) (foldRight1!120 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54)) f!539))))

(assert (=> bs!3275 m!15435))

(assert (=> bs!3275 m!15441))

(assert (=> (and b!12409 (= lambda!3382 (x!7167 thiss!744)) d!9685) d!9697))

(declare-fun bs!3276 () Bool)

(declare-fun d!9699 () Bool)

(assert (= bs!3276 (and d!9699 b!12417)))

(assert (=> bs!3276 (= (dynLambda!534 lambda!3379) (dynLambda!535 f!539 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)))))

(declare-fun b_lambda!7027 () Bool)

(assert (=> (not b_lambda!7027) (not bs!3276)))

(assert (=> bs!3276 t!3923))

(declare-fun b_and!6929 () Bool)

(assert (= b_and!6927 (and (=> t!3923 result!3635) b_and!6929)))

(assert (=> bs!3276 m!15427))

(assert (=> bs!3276 m!15429))

(assert (=> bs!3276 m!15427))

(assert (=> bs!3276 m!15429))

(assert (=> bs!3276 m!15431))

(assert (=> (and b!12417 (= lambda!3379 (x!7167 thiss!744)) d!9685) d!9699))

(declare-fun b_lambda!7015 () Bool)

(assert (= b_lambda!7001 (or (and b!12417 (= lambda!3381 (evidence!215 that!196))) (and b!12411 b_free!1967 (= (evidence!215 thiss!744) (evidence!215 that!196))) (and b!12413 b_free!1973) b_lambda!7015)))

(declare-fun bs!3277 () Bool)

(declare-fun d!9701 () Bool)

(assert (= bs!3277 (and d!9701 b!12417)))

(assert (=> bs!3277 (= (dynLambda!533 lambda!3381) trivial!1)))

(assert (=> (and b!12417 (= lambda!3381 (evidence!215 that!196)) b!12447) d!9701))

(declare-fun b_lambda!7017 () Bool)

(assert (= b_lambda!6999 (or (and b!12409 (= lambda!3382 (y!675 that!196))) (and b!12413 b_free!1971) (and b!12411 b_free!1965 (= (y!675 thiss!744) (y!675 that!196))) (and b!12413 b_free!1969 (= (x!7167 that!196) (y!675 that!196))) (and b!12411 b_free!1963 (= (x!7167 thiss!744) (y!675 that!196))) (and b!12417 (= lambda!3380 (y!675 that!196))) (and b!12417 (= lambda!3379 (y!675 that!196))) b_lambda!7017)))

(declare-fun bs!3278 () Bool)

(declare-fun d!9703 () Bool)

(assert (= bs!3278 (and d!9703 b!12409)))

(assert (=> bs!3278 (= (dynLambda!534 lambda!3382) (foldRight1!120 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54)) f!539))))

(assert (=> bs!3278 m!15435))

(assert (=> bs!3278 m!15441))

(assert (=> (and b!12409 (= lambda!3382 (y!675 that!196)) d!9687) d!9703))

(declare-fun bs!3279 () Bool)

(declare-fun d!9705 () Bool)

(assert (= bs!3279 (and d!9705 b!12417)))

(assert (=> bs!3279 (= (dynLambda!534 lambda!3380) (dynLambda!535 f!539 (head!505 xs!292) (foldRight1!120 (append!139 (tail!517 xs!292) ys!54) f!539)))))

(declare-fun b_lambda!7029 () Bool)

(assert (=> (not b_lambda!7029) (not bs!3279)))

(assert (=> bs!3279 t!3925))

(declare-fun b_and!6931 () Bool)

(assert (= b_and!6929 (and (=> t!3925 result!3637) b_and!6931)))

(assert (=> bs!3279 m!15435))

(assert (=> bs!3279 m!15435))

(assert (=> bs!3279 m!15437))

(assert (=> bs!3279 m!15437))

(assert (=> bs!3279 m!15439))

(assert (=> (and b!12417 (= lambda!3380 (y!675 that!196)) d!9687) d!9705))

(declare-fun bs!3280 () Bool)

(declare-fun d!9707 () Bool)

(assert (= bs!3280 (and d!9707 b!12417)))

(assert (=> bs!3280 (= (dynLambda!534 lambda!3379) (dynLambda!535 f!539 (foldRight1!120 xs!292 f!539) (foldRight1!120 ys!54 f!539)))))

(declare-fun b_lambda!7031 () Bool)

(assert (=> (not b_lambda!7031) (not bs!3280)))

(assert (=> bs!3280 t!3923))

(declare-fun b_and!6933 () Bool)

(assert (= b_and!6931 (and (=> t!3923 result!3635) b_and!6933)))

(assert (=> bs!3280 m!15427))

(assert (=> bs!3280 m!15429))

(assert (=> bs!3280 m!15427))

(assert (=> bs!3280 m!15429))

(assert (=> bs!3280 m!15431))

(assert (=> (and b!12417 (= lambda!3379 (y!675 that!196)) d!9687) d!9707))

(declare-fun b_lambda!7019 () Bool)

(assert (= b_lambda!6987 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!7019)))

(declare-fun bs!3281 () Bool)

(declare-fun d!9709 () Bool)

(assert (= bs!3281 (and d!9709 b!12412)))

(assert (=> bs!3281 (= (dynLambda!535 lambda!3378 (head!505 (append!139 (tail!517 xs!292) ys!54)) (foldRight1!120 (tail!517 (append!139 (tail!517 xs!292) ys!54)) f!539)) (++!3 (head!505 (append!139 (tail!517 xs!292) ys!54)) (foldRight1!120 (tail!517 (append!139 (tail!517 xs!292) ys!54)) f!539)))))

(assert (=> bs!3281 m!15463))

(declare-fun m!15481 () Bool)

(assert (=> bs!3281 m!15481))

(assert (=> (and b!12412 (= lambda!3378 f!539) b!12439) d!9709))

(declare-fun b_lambda!7021 () Bool)

(assert (= b_lambda!6985 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!7021)))

(declare-fun bs!3282 () Bool)

(declare-fun d!9711 () Bool)

(assert (= bs!3282 (and d!9711 b!12412)))

(assert (=> bs!3282 (= (dynLambda!535 lambda!3378 (head!505 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) (foldRight1!120 (tail!517 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) f!539)) (++!3 (head!505 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) (foldRight1!120 (tail!517 (Cons!287 (head!505 xs!292) (append!139 (tail!517 xs!292) ys!54))) f!539)))))

(assert (=> bs!3282 m!15457))

(declare-fun m!15483 () Bool)

(assert (=> bs!3282 m!15483))

(assert (=> (and b!12412 (= lambda!3378 f!539) b!12431) d!9711))

(declare-fun b_lambda!7023 () Bool)

(assert (= b_lambda!6989 (or (and b!12412 (= lambda!3378 f!539)) (and start!2506 b_free!1961) b_lambda!7023)))

(declare-fun bs!3283 () Bool)

(declare-fun d!9713 () Bool)

(assert (= bs!3283 (and d!9713 b!12412)))

(assert (=> bs!3283 (= (dynLambda!535 lambda!3378 (head!505 (append!139 xs!292 ys!54)) (foldRight1!120 (tail!517 (append!139 xs!292 ys!54)) f!539)) (++!3 (head!505 (append!139 xs!292 ys!54)) (foldRight1!120 (tail!517 (append!139 xs!292 ys!54)) f!539)))))

(assert (=> bs!3283 m!15467))

(declare-fun m!15485 () Bool)

(assert (=> bs!3283 m!15485))

(assert (=> (and b!12412 (= lambda!3378 f!539) b!12441) d!9713))

(push 1)

(assert (not b_next!4637))

(assert (not b_lambda!7021))

(assert (not d!9665))

(assert b_and!6923)

(assert (not bs!3283))

(assert (not b_lambda!7007))

(assert (not bs!3273))

(assert (not b_lambda!6977))

(assert (not b_lambda!7005))

(assert (not b_lambda!7027))

(assert (not b_next!4631))

(assert b_and!6921)

(assert (not b!12439))

(assert b_and!6919)

(assert (not b_lambda!7029))

(assert (not bs!3276))

(assert (not b!12443))

(assert (not b!12437))

(assert (not b_lambda!6961))

(assert (not b_lambda!7003))

(assert (not b_lambda!6979))

(assert (not b_next!4639))

(assert (not b_lambda!6975))

(assert (not bs!3280))

(assert b_and!6925)

(assert (not bs!3279))

(assert (not b!12431))

(assert b_and!6915)

(assert (not b_lambda!7013))

(assert (not b_lambda!7011))

(assert (not b_next!4611))

(assert (not bs!3282))

(assert (not b_lambda!7017))

(assert (not b_next!4629))

(assert (not b!12429))

(assert (not b_lambda!7009))

(assert (not b_next!4635))

(assert (not b_lambda!7023))

(assert (not b!12427))

(assert (not bs!3278))

(assert (not b_lambda!6959))

(assert (not b_lambda!7025))

(assert (not b_lambda!7031))

(assert b_and!6917)

(assert (not bs!3275))

(assert (not bs!3281))

(assert b_and!6933)

(assert (not b_lambda!6973))

(assert (not b_lambda!7019))

(assert (not bs!3272))

(assert (not b_lambda!7015))

(assert (not b_lambda!6963))

(assert (not b_next!4633))

(assert (not bs!3270))

(assert (not bs!3274))

(assert (not b!12441))

(assert (not b_lambda!6957))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4637))

(assert b_and!6923)

(assert (not b_next!4631))

(assert b_and!6921)

(assert b_and!6919)

(assert (not b_next!4639))

(assert b_and!6925)

(assert b_and!6915)

(assert (not b_next!4611))

(assert (not b_next!4629))

(assert (not b_next!4635))

(assert b_and!6917)

(assert b_and!6933)

(assert (not b_next!4633))

(check-sat)

(pop 1)

