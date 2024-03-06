; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2522 () Bool)

(assert start!2522)

(declare-fun b_free!1999 () Bool)

(declare-fun b_next!4665 () Bool)

(assert (=> start!2522 (= b_free!1999 (not b_next!4665))))

(declare-fun tp!3165 () Bool)

(declare-fun b_and!6959 () Bool)

(assert (=> start!2522 (= tp!3165 b_and!6959)))

(declare-fun b!12488 () Bool)

(declare-fun b_free!2001 () Bool)

(declare-fun b_next!4667 () Bool)

(assert (=> b!12488 (= b_free!2001 (not b_next!4667))))

(declare-fun tp!3166 () Bool)

(declare-fun b_and!6961 () Bool)

(assert (=> b!12488 (= tp!3166 b_and!6961)))

(declare-fun b_free!2003 () Bool)

(declare-fun b_next!4669 () Bool)

(assert (=> b!12488 (= b_free!2003 (not b_next!4669))))

(declare-fun tp!3164 () Bool)

(declare-fun b_and!6963 () Bool)

(assert (=> b!12488 (= tp!3164 b_and!6963)))

(declare-fun b_free!2005 () Bool)

(declare-fun b_next!4671 () Bool)

(assert (=> b!12488 (= b_free!2005 (not b_next!4671))))

(declare-fun tp!3167 () Bool)

(declare-fun b_and!6965 () Bool)

(assert (=> b!12488 (= tp!3167 b_and!6965)))

(declare-fun b!12480 () Bool)

(declare-fun b_free!2007 () Bool)

(declare-fun b_next!4673 () Bool)

(assert (=> b!12480 (= b_free!2007 (not b_next!4673))))

(declare-fun tp!3168 () Bool)

(declare-fun b_and!6967 () Bool)

(assert (=> b!12480 (= tp!3168 b_and!6967)))

(declare-fun b_free!2009 () Bool)

(declare-fun b_next!4675 () Bool)

(assert (=> b!12480 (= b_free!2009 (not b_next!4675))))

(declare-fun tp!3169 () Bool)

(declare-fun b_and!6969 () Bool)

(assert (=> b!12480 (= tp!3169 b_and!6969)))

(declare-fun f!539 () Int)

(declare-fun b_next!4677 () Bool)

(declare-fun lambda!3395 () Int)

(declare-fun b!12481 () Bool)

(assert (=> start!2522 (= b_next!4665 (or (and b!12481 (= lambda!3395 f!539)) b_next!4677))))

(declare-fun b!12483 () Bool)

(assert (=> b!12483 true))

(declare-fun order!337 () Int)

(declare-fun lambda!3396 () Int)

(declare-fun order!339 () Int)

(declare-fun dynLambda!536 (Int Int) Int)

(declare-fun dynLambda!537 (Int Int) Int)

(assert (=> b!12483 (< (dynLambda!536 order!337 f!539) (dynLambda!537 order!339 lambda!3396))))

(assert (=> b!12483 true))

(assert (=> b!12483 true))

(declare-fun b_next!4679 () Bool)

(declare-datatypes () ((Balance!375 (Balance!376 (extraOpen!228 Int) (extraClose!228 Int)))))

(declare-datatypes () ((EqEvidence!302 (EqEvidence!303 (x!7196 Int) (y!680 Int) (evidence!218 Int)))))

(declare-fun thiss!743 () EqEvidence!302)

(assert (=> b!12488 (= b_next!4667 (or (and b!12483 (= lambda!3396 (x!7196 thiss!743))) b_next!4679))))

(declare-fun b_next!4681 () Bool)

(assert (=> b!12488 (= b_next!4669 (or (and b!12483 (= lambda!3396 (y!680 thiss!743))) b_next!4681))))

(declare-fun b_next!4683 () Bool)

(declare-datatypes () ((EqProof!140 (EqProof!141 (x!7197 Int) (y!681 Int)))))

(declare-fun that!199 () EqProof!140)

(assert (=> b!12480 (= b_next!4673 (or (and b!12483 (= lambda!3396 (x!7197 that!199))) b_next!4683))))

(declare-fun b_next!4685 () Bool)

(assert (=> b!12480 (= b_next!4675 (or (and b!12483 (= lambda!3396 (y!681 that!199))) b_next!4685))))

(declare-fun lambda!3397 () Int)

(assert (=> b!12483 (not (= lambda!3397 lambda!3396))))

(assert (=> b!12483 true))

(assert (=> b!12483 (< (dynLambda!536 order!337 f!539) (dynLambda!537 order!339 lambda!3397))))

(assert (=> b!12483 true))

(assert (=> b!12483 true))

(declare-fun b_next!4687 () Bool)

(assert (=> b!12488 (= b_next!4679 (or (and b!12483 (= lambda!3397 (x!7196 thiss!743))) b_next!4687))))

(declare-fun b_next!4689 () Bool)

(assert (=> b!12488 (= b_next!4681 (or (and b!12483 (= lambda!3397 (y!680 thiss!743))) b_next!4689))))

(declare-fun b_next!4691 () Bool)

(assert (=> b!12480 (= b_next!4683 (or (and b!12483 (= lambda!3397 (x!7197 that!199))) b_next!4691))))

(declare-fun b_next!4693 () Bool)

(assert (=> b!12480 (= b_next!4685 (or (and b!12483 (= lambda!3397 (y!681 that!199))) b_next!4693))))

(declare-fun m!15495 () Bool)

(assert (=> b!12483 m!15495))

(declare-fun lambda!3398 () Int)

(declare-fun dynLambda!538 (Int) Bool)

(assert (=> (and b!12488 b!12483 (= (dynLambda!538 lambda!3398) (dynLambda!538 (evidence!218 thiss!743)))) (= lambda!3398 (evidence!218 thiss!743))))

(declare-fun b_next!4695 () Bool)

(assert (=> b!12488 (= b_next!4671 (or (and b!12483 (= lambda!3398 (evidence!218 thiss!743))) b_next!4695))))

(declare-fun bs!3287 () Bool)

(declare-fun b!12484 () Bool)

(assert (= bs!3287 (and b!12484 b!12483)))

(declare-fun lambda!3399 () Int)

(assert (=> bs!3287 (not (= lambda!3399 lambda!3396))))

(assert (=> bs!3287 (not (= lambda!3399 lambda!3397))))

(assert (=> b!12484 true))

(assert (=> b!12484 (< (dynLambda!536 order!337 f!539) (dynLambda!537 order!339 lambda!3399))))

(assert (=> b!12484 true))

(assert (=> b!12484 true))

(declare-fun b_next!4697 () Bool)

(assert (=> b!12488 (= b_next!4687 (or (and b!12484 (= lambda!3399 (x!7196 thiss!743))) b_next!4697))))

(declare-fun b_next!4699 () Bool)

(assert (=> b!12488 (= b_next!4689 (or (and b!12484 (= lambda!3399 (y!680 thiss!743))) b_next!4699))))

(declare-fun b_next!4701 () Bool)

(assert (=> b!12480 (= b_next!4691 (or (and b!12484 (= lambda!3399 (x!7197 that!199))) b_next!4701))))

(declare-fun b_next!4703 () Bool)

(assert (=> b!12480 (= b_next!4693 (or (and b!12484 (= lambda!3399 (y!681 that!199))) b_next!4703))))

(declare-fun e!6847 () Bool)

(assert (=> b!12480 (= e!6847 (and tp!3168 tp!3169))))

(declare-fun res!4673 () Bool)

(declare-fun e!6846 () Bool)

(assert (=> b!12481 (=> (not res!4673) (not e!6846))))

(assert (=> b!12481 (= res!4673 (= f!539 lambda!3395))))

(declare-fun b!12482 () Bool)

(declare-fun res!4670 () Bool)

(assert (=> b!12482 (=> (not res!4670) (not e!6846))))

(declare-datatypes () ((List!291 (Nil!289) (Cons!288 (head!506 Balance!375) (tail!518 List!291)))))

(declare-fun xs!292 () List!291)

(assert (=> b!12482 (= res!4670 (or (not (is-Cons!288 xs!292)) (not (is-Nil!289 (tail!518 xs!292)))))))

(declare-fun res!4674 () Bool)

(assert (=> b!12483 (=> (not res!4674) (not e!6846))))

(assert (=> b!12483 (= res!4674 (= thiss!743 (EqEvidence!303 lambda!3396 lambda!3397 lambda!3398)))))

(declare-fun res!4671 () Bool)

(assert (=> b!12484 (=> (not res!4671) (not e!6846))))

(assert (=> b!12484 (= res!4671 (= that!199 (EqProof!141 lambda!3399 lambda!3399)))))

(declare-fun b!12485 () Bool)

(declare-fun res!4677 () Bool)

(assert (=> b!12485 (=> (not res!4677) (not e!6846))))

(assert (=> b!12485 (= res!4677 (dynLambda!538 (evidence!218 thiss!743)))))

(declare-fun res!4676 () Bool)

(assert (=> start!2522 (=> (not res!4676) (not e!6846))))

(declare-fun isEmpty!219 (List!291) Bool)

(assert (=> start!2522 (= res!4676 (not (isEmpty!219 xs!292)))))

(assert (=> start!2522 e!6846))

(assert (=> start!2522 tp!3165))

(assert (=> start!2522 true))

(declare-fun e!6845 () Bool)

(declare-fun inv!425 (EqEvidence!302) Bool)

(assert (=> start!2522 (and (inv!425 thiss!743) e!6845)))

(declare-fun inv!426 (EqProof!140) Bool)

(assert (=> start!2522 (and (inv!426 that!199) e!6847)))

(declare-fun b!12486 () Bool)

(declare-fun res!4675 () Bool)

(assert (=> b!12486 (=> (not res!4675) (not e!6846))))

(declare-fun ys!54 () List!291)

(assert (=> b!12486 (= res!4675 (not (isEmpty!219 ys!54)))))

(declare-fun b!12487 () Bool)

(declare-fun res!4672 () Bool)

(assert (=> b!12487 (=> (not res!4672) (not e!6846))))

(declare-datatypes () ((ProofOps!282 (ProofOps!283 (prop!278 Bool)))))

(declare-fun thiss!710 () ProofOps!282)

(declare-fun dynLambda!539 (Int Balance!375 Balance!375) Balance!375)

(declare-fun foldRight1!121 (List!291 Int) Balance!375)

(declare-fun append!140 (List!291 List!291) List!291)

(assert (=> b!12487 (= res!4672 (= thiss!710 (ProofOps!283 (= (dynLambda!539 f!539 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)) (foldRight1!121 (append!140 xs!292 ys!54) f!539)))))))

(assert (=> b!12488 (= e!6845 (and tp!3166 tp!3164 tp!3167))))

(declare-fun b!12489 () Bool)

(declare-fun dynLambda!540 (Int) Balance!375)

(assert (=> b!12489 (= e!6846 (not (= (dynLambda!540 (y!680 thiss!743)) (dynLambda!540 (x!7197 that!199)))))))

(assert (= (and start!2522 res!4676) b!12486))

(assert (= (and b!12486 res!4675) b!12481))

(assert (= (and b!12481 res!4673) b!12487))

(assert (= (and b!12487 res!4672) b!12482))

(assert (= (and b!12482 res!4670) b!12483))

(assert (= (and b!12483 res!4674) b!12484))

(assert (= (and b!12484 res!4671) b!12485))

(assert (= (and b!12485 res!4677) b!12489))

(assert (= start!2522 b!12488))

(assert (= start!2522 b!12480))

(declare-fun b_lambda!7033 () Bool)

(assert (=> (not b_lambda!7033) (not b!12485)))

(declare-fun t!3957 () Bool)

(declare-fun tb!3617 () Bool)

(assert (=> (and b!12488 (= (evidence!218 thiss!743) (evidence!218 thiss!743)) t!3957) tb!3617))

(declare-fun result!3669 () Bool)

(assert (=> tb!3617 (= result!3669 true)))

(assert (=> b!12485 t!3957))

(declare-fun b_and!6971 () Bool)

(assert (= b_and!6965 (and (=> t!3957 result!3669) b_and!6971)))

(declare-fun b_lambda!7035 () Bool)

(assert (=> (not b_lambda!7035) (not b!12487)))

(declare-fun t!3959 () Bool)

(declare-fun tb!3619 () Bool)

(assert (=> (and start!2522 (= f!539 f!539) t!3959) tb!3619))

(declare-fun result!3671 () Bool)

(assert (=> tb!3619 (= result!3671 true)))

(assert (=> b!12487 t!3959))

(declare-fun b_and!6973 () Bool)

(assert (= b_and!6959 (and (=> t!3959 result!3671) b_and!6973)))

(declare-fun b_lambda!7037 () Bool)

(assert (=> (not b_lambda!7037) (not b!12489)))

(declare-fun t!3961 () Bool)

(declare-fun tb!3621 () Bool)

(assert (=> (and b!12488 (= (x!7196 thiss!743) (y!680 thiss!743)) t!3961) tb!3621))

(declare-fun result!3673 () Bool)

(assert (=> tb!3621 (= result!3673 true)))

(assert (=> b!12489 t!3961))

(declare-fun b_and!6975 () Bool)

(assert (= b_and!6961 (and (=> t!3961 result!3673) b_and!6975)))

(declare-fun t!3963 () Bool)

(declare-fun tb!3623 () Bool)

(assert (=> (and b!12488 (= (y!680 thiss!743) (y!680 thiss!743)) t!3963) tb!3623))

(declare-fun result!3675 () Bool)

(assert (=> tb!3623 (= result!3675 true)))

(assert (=> b!12489 t!3963))

(declare-fun b_and!6977 () Bool)

(assert (= b_and!6963 (and (=> t!3963 result!3675) b_and!6977)))

(declare-fun tb!3625 () Bool)

(declare-fun t!3965 () Bool)

(assert (=> (and b!12480 (= (x!7197 that!199) (y!680 thiss!743)) t!3965) tb!3625))

(declare-fun result!3677 () Bool)

(assert (=> tb!3625 (= result!3677 true)))

(assert (=> b!12489 t!3965))

(declare-fun b_and!6979 () Bool)

(assert (= b_and!6967 (and (=> t!3965 result!3677) b_and!6979)))

(declare-fun t!3967 () Bool)

(declare-fun tb!3627 () Bool)

(assert (=> (and b!12480 (= (y!681 that!199) (y!680 thiss!743)) t!3967) tb!3627))

(declare-fun result!3679 () Bool)

(assert (=> tb!3627 (= result!3679 true)))

(assert (=> b!12489 t!3967))

(declare-fun b_and!6981 () Bool)

(assert (= b_and!6969 (and (=> t!3967 result!3679) b_and!6981)))

(declare-fun b_lambda!7039 () Bool)

(assert (=> (not b_lambda!7039) (not b!12489)))

(declare-fun t!3969 () Bool)

(declare-fun tb!3629 () Bool)

(assert (=> (and b!12488 (= (x!7196 thiss!743) (x!7197 that!199)) t!3969) tb!3629))

(declare-fun result!3681 () Bool)

(assert (=> tb!3629 (= result!3681 true)))

(assert (=> b!12489 t!3969))

(declare-fun b_and!6983 () Bool)

(assert (= b_and!6975 (and (=> t!3969 result!3681) b_and!6983)))

(declare-fun tb!3631 () Bool)

(declare-fun t!3971 () Bool)

(assert (=> (and b!12488 (= (y!680 thiss!743) (x!7197 that!199)) t!3971) tb!3631))

(declare-fun result!3683 () Bool)

(assert (=> tb!3631 (= result!3683 true)))

(assert (=> b!12489 t!3971))

(declare-fun b_and!6985 () Bool)

(assert (= b_and!6977 (and (=> t!3971 result!3683) b_and!6985)))

(declare-fun t!3973 () Bool)

(declare-fun tb!3633 () Bool)

(assert (=> (and b!12480 (= (x!7197 that!199) (x!7197 that!199)) t!3973) tb!3633))

(declare-fun result!3685 () Bool)

(assert (=> tb!3633 (= result!3685 true)))

(assert (=> b!12489 t!3973))

(declare-fun b_and!6987 () Bool)

(assert (= b_and!6979 (and (=> t!3973 result!3685) b_and!6987)))

(declare-fun t!3975 () Bool)

(declare-fun tb!3635 () Bool)

(assert (=> (and b!12480 (= (y!681 that!199) (x!7197 that!199)) t!3975) tb!3635))

(declare-fun result!3687 () Bool)

(assert (=> tb!3635 (= result!3687 true)))

(assert (=> b!12489 t!3975))

(declare-fun b_and!6989 () Bool)

(assert (= b_and!6981 (and (=> t!3975 result!3687) b_and!6989)))

(declare-fun m!15497 () Bool)

(assert (=> b!12485 m!15497))

(declare-fun m!15499 () Bool)

(assert (=> b!12487 m!15499))

(declare-fun m!15501 () Bool)

(assert (=> b!12487 m!15501))

(declare-fun m!15503 () Bool)

(assert (=> b!12487 m!15503))

(assert (=> b!12487 m!15501))

(assert (=> b!12487 m!15503))

(declare-fun m!15505 () Bool)

(assert (=> b!12487 m!15505))

(assert (=> b!12487 m!15499))

(declare-fun m!15507 () Bool)

(assert (=> b!12487 m!15507))

(declare-fun m!15509 () Bool)

(assert (=> b!12486 m!15509))

(declare-fun m!15511 () Bool)

(assert (=> b!12489 m!15511))

(declare-fun m!15513 () Bool)

(assert (=> b!12489 m!15513))

(declare-fun m!15515 () Bool)

(assert (=> start!2522 m!15515))

(declare-fun m!15517 () Bool)

(assert (=> start!2522 m!15517))

(declare-fun m!15519 () Bool)

(assert (=> start!2522 m!15519))

(push 1)

(assert (not b_next!4677))

(assert b_and!6973)

(assert (not b_lambda!7033))

(assert (not b!12483))

(assert (not b_next!4695))

(assert (not b_lambda!7035))

(assert (not start!2522))

(assert (not b!12487))

(assert (not b_next!4703))

(assert (not b_lambda!7037))

(assert (not b_lambda!7039))

(assert (not b!12486))

(assert b_and!6971)

(assert (not b_next!4701))

(assert (not b_next!4699))

(assert b_and!6983)

(assert b_and!6985)

(assert b_and!6987)

(assert b_and!6989)

(assert (not b_next!4697))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4677))

(assert b_and!6973)

(assert (not b_next!4695))

(assert (not b_next!4703))

(assert b_and!6971)

(assert (not b_next!4701))

(assert (not b_next!4699))

(assert b_and!6983)

(assert b_and!6985)

(assert b_and!6987)

(assert b_and!6989)

(assert (not b_next!4697))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7041 () Bool)

(assert (= b_lambda!7037 (or (and b!12488 b_free!2001 (= (x!7196 thiss!743) (y!680 thiss!743))) (and b!12483 (= lambda!3396 (y!680 thiss!743))) (and b!12488 b_free!2003) (and b!12483 (= lambda!3397 (y!680 thiss!743))) (and b!12484 (= lambda!3399 (y!680 thiss!743))) (and b!12480 b_free!2009 (= (y!681 that!199) (y!680 thiss!743))) (and b!12480 b_free!2007 (= (x!7197 that!199) (y!680 thiss!743))) b_lambda!7041)))

(declare-fun bs!3288 () Bool)

(declare-fun d!9715 () Bool)

(assert (= bs!3288 (and d!9715 b!12483)))

(assert (=> bs!3288 (= (dynLambda!540 lambda!3396) (dynLambda!539 f!539 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)))))

(declare-fun b_lambda!7049 () Bool)

(assert (=> (not b_lambda!7049) (not bs!3288)))

(assert (=> bs!3288 t!3959))

(declare-fun b_and!6991 () Bool)

(assert (= b_and!6973 (and (=> t!3959 result!3671) b_and!6991)))

(assert (=> bs!3288 m!15501))

(assert (=> bs!3288 m!15503))

(assert (=> bs!3288 m!15501))

(assert (=> bs!3288 m!15503))

(assert (=> bs!3288 m!15505))

(assert (=> (and b!12483 (= lambda!3396 (y!680 thiss!743)) b!12489) d!9715))

(declare-fun bs!3289 () Bool)

(declare-fun d!9717 () Bool)

(assert (= bs!3289 (and d!9717 b!12483)))

(assert (=> bs!3289 (= (dynLambda!540 lambda!3397) (foldRight1!121 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54)) f!539))))

(declare-fun m!15521 () Bool)

(assert (=> bs!3289 m!15521))

(declare-fun m!15523 () Bool)

(assert (=> bs!3289 m!15523))

(assert (=> (and b!12483 (= lambda!3397 (y!680 thiss!743)) b!12489) d!9717))

(declare-fun bs!3290 () Bool)

(declare-fun d!9719 () Bool)

(assert (= bs!3290 (and d!9719 b!12484)))

(assert (=> bs!3290 (= (dynLambda!540 lambda!3399) (foldRight1!121 (append!140 xs!292 ys!54) f!539))))

(assert (=> bs!3290 m!15499))

(assert (=> bs!3290 m!15499))

(assert (=> bs!3290 m!15507))

(assert (=> (and b!12484 (= lambda!3399 (y!680 thiss!743)) b!12489) d!9719))

(declare-fun b_lambda!7043 () Bool)

(assert (= b_lambda!7039 (or (and b!12484 (= lambda!3399 (x!7197 that!199))) (and b!12480 b_free!2007) (and b!12488 b_free!2003 (= (y!680 thiss!743) (x!7197 that!199))) (and b!12480 b_free!2009 (= (y!681 that!199) (x!7197 that!199))) (and b!12483 (= lambda!3397 (x!7197 that!199))) (and b!12483 (= lambda!3396 (x!7197 that!199))) (and b!12488 b_free!2001 (= (x!7196 thiss!743) (x!7197 that!199))) b_lambda!7043)))

(declare-fun bs!3291 () Bool)

(declare-fun d!9721 () Bool)

(assert (= bs!3291 (and d!9721 b!12484)))

(assert (=> bs!3291 (= (dynLambda!540 lambda!3399) (foldRight1!121 (append!140 xs!292 ys!54) f!539))))

(assert (=> bs!3291 m!15499))

(assert (=> bs!3291 m!15499))

(assert (=> bs!3291 m!15507))

(assert (=> (and b!12484 (= lambda!3399 (x!7197 that!199)) b!12489) d!9721))

(declare-fun bs!3292 () Bool)

(declare-fun d!9723 () Bool)

(assert (= bs!3292 (and d!9723 b!12483)))

(assert (=> bs!3292 (= (dynLambda!540 lambda!3396) (dynLambda!539 f!539 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)))))

(declare-fun b_lambda!7051 () Bool)

(assert (=> (not b_lambda!7051) (not bs!3292)))

(assert (=> bs!3292 t!3959))

(declare-fun b_and!6993 () Bool)

(assert (= b_and!6991 (and (=> t!3959 result!3671) b_and!6993)))

(assert (=> bs!3292 m!15501))

(assert (=> bs!3292 m!15503))

(assert (=> bs!3292 m!15501))

(assert (=> bs!3292 m!15503))

(assert (=> bs!3292 m!15505))

(assert (=> (and b!12483 (= lambda!3396 (x!7197 that!199)) b!12489) d!9723))

(declare-fun bs!3293 () Bool)

(declare-fun d!9725 () Bool)

(assert (= bs!3293 (and d!9725 b!12483)))

(assert (=> bs!3293 (= (dynLambda!540 lambda!3397) (foldRight1!121 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54)) f!539))))

(assert (=> bs!3293 m!15521))

(assert (=> bs!3293 m!15523))

(assert (=> (and b!12483 (= lambda!3397 (x!7197 that!199)) b!12489) d!9725))

(declare-fun b_lambda!7045 () Bool)

(assert (= b_lambda!7033 (or (and b!12483 (= lambda!3398 (evidence!218 thiss!743))) (and b!12488 b_free!2005) b_lambda!7045)))

(declare-fun bs!3294 () Bool)

(declare-fun d!9727 () Bool)

(assert (= bs!3294 (and d!9727 b!12483)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!3294 (= (dynLambda!538 lambda!3398) trivial!1)))

(assert (=> (and b!12483 (= lambda!3398 (evidence!218 thiss!743)) b!12485) d!9727))

(declare-fun b_lambda!7047 () Bool)

(assert (= b_lambda!7035 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7047)))

(declare-fun bs!3295 () Bool)

(declare-fun d!9729 () Bool)

(assert (= bs!3295 (and d!9729 b!12481)))

(declare-fun ++!3 (Balance!375 Balance!375) Balance!375)

(assert (=> bs!3295 (= (dynLambda!539 lambda!3395 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)) (++!3 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)))))

(assert (=> bs!3295 m!15501))

(assert (=> bs!3295 m!15503))

(declare-fun m!15525 () Bool)

(assert (=> bs!3295 m!15525))

(assert (=> (and b!12481 (= lambda!3395 f!539) b!12487) d!9729))

(push 1)

(assert (not b_lambda!7049))

(assert (not b_lambda!7051))

(assert (not b_next!4677))

(assert (not bs!3292))

(assert (not bs!3288))

(assert (not b!12483))

(assert (not b_next!4695))

(assert (not bs!3295))

(assert (not start!2522))

(assert (not b!12487))

(assert (not b_next!4703))

(assert (not b_lambda!7041))

(assert (not b_lambda!7045))

(assert (not b!12486))

(assert (not b_lambda!7043))

(assert (not bs!3289))

(assert (not bs!3290))

(assert b_and!6971)

(assert b_and!6993)

(assert (not b_lambda!7047))

(assert (not b_next!4701))

(assert (not bs!3293))

(assert (not b_next!4699))

(assert b_and!6983)

(assert b_and!6985)

(assert b_and!6987)

(assert (not bs!3291))

(assert b_and!6989)

(assert (not b_next!4697))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4677))

(assert (not b_next!4695))

(assert (not b_next!4703))

(assert b_and!6971)

(assert b_and!6993)

(assert (not b_next!4701))

(assert (not b_next!4699))

(assert b_and!6983)

(assert b_and!6985)

(assert b_and!6987)

(assert b_and!6989)

(assert (not b_next!4697))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!7053 () Bool)

(assert (= b_lambda!7049 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7053)))

(assert (=> (and b!12481 (= lambda!3395 f!539) bs!3288) d!9729))

(declare-fun b_lambda!7055 () Bool)

(assert (= b_lambda!7051 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7055)))

(assert (=> (and b!12481 (= lambda!3395 f!539) bs!3292) d!9729))

(push 1)

(assert (not b_lambda!7055))

(assert (not b_next!4677))

(assert (not bs!3292))

(assert (not bs!3288))

(assert (not b!12483))

(assert (not b_next!4695))

(assert (not b_lambda!7053))

(assert (not bs!3295))

(assert (not start!2522))

(assert (not b!12487))

(assert (not b_next!4703))

(assert (not b_lambda!7041))

(assert (not b_lambda!7045))

(assert (not b!12486))

(assert (not b_lambda!7043))

(assert (not bs!3289))

(assert (not bs!3290))

(assert b_and!6971)

(assert b_and!6993)

(assert (not b_lambda!7047))

(assert (not b_next!4701))

(assert (not bs!3293))

(assert (not b_next!4699))

(assert b_and!6983)

(assert b_and!6985)

(assert b_and!6987)

(assert (not bs!3291))

(assert b_and!6989)

(assert (not b_next!4697))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4677))

(assert (not b_next!4695))

(assert (not b_next!4703))

(assert b_and!6971)

(assert b_and!6993)

(assert (not b_next!4701))

(assert (not b_next!4699))

(assert b_and!6983)

(assert b_and!6985)

(assert b_and!6987)

(assert b_and!6989)

(assert (not b_next!4697))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9731 () Bool)

(declare-fun c!3513 () Bool)

(assert (=> d!9731 (= c!3513 (and (is-Cons!288 (append!140 xs!292 ys!54)) (is-Nil!289 (tail!518 (append!140 xs!292 ys!54)))))))

(declare-fun e!6850 () Balance!375)

(assert (=> d!9731 (= (foldRight1!121 (append!140 xs!292 ys!54) f!539) e!6850)))

(declare-fun b!12498 () Bool)

(assert (=> b!12498 (= e!6850 (head!506 (append!140 xs!292 ys!54)))))

(declare-fun b!12499 () Bool)

(assert (=> b!12499 (= e!6850 (dynLambda!539 f!539 (head!506 (append!140 xs!292 ys!54)) (foldRight1!121 (tail!518 (append!140 xs!292 ys!54)) f!539)))))

(assert (= (and d!9731 c!3513) b!12498))

(assert (= (and d!9731 (not c!3513)) b!12499))

(declare-fun b_lambda!7057 () Bool)

(assert (=> (not b_lambda!7057) (not b!12499)))

(declare-fun t!3977 () Bool)

(declare-fun tb!3637 () Bool)

(assert (=> (and start!2522 (= f!539 f!539) t!3977) tb!3637))

(declare-fun result!3689 () Bool)

(assert (=> tb!3637 (= result!3689 true)))

(assert (=> b!12499 t!3977))

(declare-fun b_and!6995 () Bool)

(assert (= b_and!6993 (and (=> t!3977 result!3689) b_and!6995)))

(declare-fun m!15527 () Bool)

(assert (=> b!12499 m!15527))

(assert (=> b!12499 m!15527))

(declare-fun m!15529 () Bool)

(assert (=> b!12499 m!15529))

(assert (=> bs!3290 d!9731))

(declare-fun d!9733 () Bool)

(declare-fun c!3516 () Bool)

(assert (=> d!9733 (= c!3516 (is-Nil!289 xs!292))))

(declare-fun e!6853 () List!291)

(assert (=> d!9733 (= (append!140 xs!292 ys!54) e!6853)))

(declare-fun b!12504 () Bool)

(assert (=> b!12504 (= e!6853 ys!54)))

(declare-fun b!12505 () Bool)

(assert (=> b!12505 (= e!6853 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54)))))

(assert (= (and d!9733 c!3516) b!12504))

(assert (= (and d!9733 (not c!3516)) b!12505))

(assert (=> b!12505 m!15521))

(assert (=> bs!3290 d!9733))

(declare-fun d!9735 () Bool)

(assert (=> d!9735 (= trivial!1 true)))

(assert (=> b!12483 d!9735))

(assert (=> bs!3291 d!9731))

(assert (=> bs!3291 d!9733))

(declare-fun d!9737 () Bool)

(declare-fun lt!1809 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9737 (= lt!1809 (min!4 (extraOpen!228 (foldRight1!121 xs!292 f!539)) (extraClose!228 (foldRight1!121 ys!54 f!539))))))

(assert (=> d!9737 (= (++!3 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)) (Balance!376 (- (+ (extraOpen!228 (foldRight1!121 xs!292 f!539)) (extraOpen!228 (foldRight1!121 ys!54 f!539))) lt!1809) (- (+ (extraClose!228 (foldRight1!121 xs!292 f!539)) (extraClose!228 (foldRight1!121 ys!54 f!539))) lt!1809)))))

(declare-fun bs!3296 () Bool)

(assert (= bs!3296 d!9737))

(declare-fun m!15531 () Bool)

(assert (=> bs!3296 m!15531))

(assert (=> bs!3295 d!9737))

(declare-fun d!9739 () Bool)

(assert (=> d!9739 (= (isEmpty!219 ys!54) (is-Nil!289 ys!54))))

(assert (=> b!12486 d!9739))

(declare-fun d!9741 () Bool)

(declare-fun c!3517 () Bool)

(assert (=> d!9741 (= c!3517 (and (is-Cons!288 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) (is-Nil!289 (tail!518 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))))))))

(declare-fun e!6854 () Balance!375)

(assert (=> d!9741 (= (foldRight1!121 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54)) f!539) e!6854)))

(declare-fun b!12506 () Bool)

(assert (=> b!12506 (= e!6854 (head!506 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))))))

(declare-fun b!12507 () Bool)

(assert (=> b!12507 (= e!6854 (dynLambda!539 f!539 (head!506 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) (foldRight1!121 (tail!518 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) f!539)))))

(assert (= (and d!9741 c!3517) b!12506))

(assert (= (and d!9741 (not c!3517)) b!12507))

(declare-fun b_lambda!7059 () Bool)

(assert (=> (not b_lambda!7059) (not b!12507)))

(declare-fun t!3979 () Bool)

(declare-fun tb!3639 () Bool)

(assert (=> (and start!2522 (= f!539 f!539) t!3979) tb!3639))

(declare-fun result!3691 () Bool)

(assert (=> tb!3639 (= result!3691 true)))

(assert (=> b!12507 t!3979))

(declare-fun b_and!6997 () Bool)

(assert (= b_and!6995 (and (=> t!3979 result!3691) b_and!6997)))

(declare-fun m!15533 () Bool)

(assert (=> b!12507 m!15533))

(assert (=> b!12507 m!15533))

(declare-fun m!15535 () Bool)

(assert (=> b!12507 m!15535))

(assert (=> bs!3293 d!9741))

(declare-fun d!9743 () Bool)

(declare-fun c!3518 () Bool)

(assert (=> d!9743 (= c!3518 (is-Nil!289 (tail!518 xs!292)))))

(declare-fun e!6855 () List!291)

(assert (=> d!9743 (= (append!140 (tail!518 xs!292) ys!54) e!6855)))

(declare-fun b!12508 () Bool)

(assert (=> b!12508 (= e!6855 ys!54)))

(declare-fun b!12509 () Bool)

(assert (=> b!12509 (= e!6855 (Cons!288 (head!506 (tail!518 xs!292)) (append!140 (tail!518 (tail!518 xs!292)) ys!54)))))

(assert (= (and d!9743 c!3518) b!12508))

(assert (= (and d!9743 (not c!3518)) b!12509))

(declare-fun m!15537 () Bool)

(assert (=> b!12509 m!15537))

(assert (=> bs!3293 d!9743))

(declare-fun d!9745 () Bool)

(assert (=> d!9745 (= (isEmpty!219 xs!292) (is-Nil!289 xs!292))))

(assert (=> start!2522 d!9745))

(declare-fun d!9747 () Bool)

(declare-fun res!4680 () Bool)

(declare-fun e!6858 () Bool)

(assert (=> d!9747 (=> (not res!4680) (not e!6858))))

(assert (=> d!9747 (= res!4680 (= (dynLambda!540 (x!7196 thiss!743)) (dynLambda!540 (y!680 thiss!743))))))

(assert (=> d!9747 (= (inv!425 thiss!743) e!6858)))

(declare-fun b!12512 () Bool)

(assert (=> b!12512 (= e!6858 (dynLambda!538 (evidence!218 thiss!743)))))

(assert (= (and d!9747 res!4680) b!12512))

(declare-fun b_lambda!7061 () Bool)

(assert (=> (not b_lambda!7061) (not d!9747)))

(declare-fun t!3981 () Bool)

(declare-fun tb!3641 () Bool)

(assert (=> (and b!12488 (= (x!7196 thiss!743) (x!7196 thiss!743)) t!3981) tb!3641))

(declare-fun result!3693 () Bool)

(assert (=> tb!3641 (= result!3693 true)))

(assert (=> d!9747 t!3981))

(declare-fun b_and!6999 () Bool)

(assert (= b_and!6983 (and (=> t!3981 result!3693) b_and!6999)))

(declare-fun t!3983 () Bool)

(declare-fun tb!3643 () Bool)

(assert (=> (and b!12488 (= (y!680 thiss!743) (x!7196 thiss!743)) t!3983) tb!3643))

(declare-fun result!3695 () Bool)

(assert (=> tb!3643 (= result!3695 true)))

(assert (=> d!9747 t!3983))

(declare-fun b_and!7001 () Bool)

(assert (= b_and!6985 (and (=> t!3983 result!3695) b_and!7001)))

(declare-fun tb!3645 () Bool)

(declare-fun t!3985 () Bool)

(assert (=> (and b!12480 (= (x!7197 that!199) (x!7196 thiss!743)) t!3985) tb!3645))

(declare-fun result!3697 () Bool)

(assert (=> tb!3645 (= result!3697 true)))

(assert (=> d!9747 t!3985))

(declare-fun b_and!7003 () Bool)

(assert (= b_and!6987 (and (=> t!3985 result!3697) b_and!7003)))

(declare-fun tb!3647 () Bool)

(declare-fun t!3987 () Bool)

(assert (=> (and b!12480 (= (y!681 that!199) (x!7196 thiss!743)) t!3987) tb!3647))

(declare-fun result!3699 () Bool)

(assert (=> tb!3647 (= result!3699 true)))

(assert (=> d!9747 t!3987))

(declare-fun b_and!7005 () Bool)

(assert (= b_and!6989 (and (=> t!3987 result!3699) b_and!7005)))

(declare-fun b_lambda!7063 () Bool)

(assert (=> (not b_lambda!7063) (not d!9747)))

(assert (=> d!9747 t!3961))

(declare-fun b_and!7007 () Bool)

(assert (= b_and!6999 (and (=> t!3961 result!3673) b_and!7007)))

(assert (=> d!9747 t!3963))

(declare-fun b_and!7009 () Bool)

(assert (= b_and!7001 (and (=> t!3963 result!3675) b_and!7009)))

(assert (=> d!9747 t!3965))

(declare-fun b_and!7011 () Bool)

(assert (= b_and!7003 (and (=> t!3965 result!3677) b_and!7011)))

(assert (=> d!9747 t!3967))

(declare-fun b_and!7013 () Bool)

(assert (= b_and!7005 (and (=> t!3967 result!3679) b_and!7013)))

(declare-fun b_lambda!7065 () Bool)

(assert (=> (not b_lambda!7065) (not b!12512)))

(assert (=> b!12512 t!3957))

(declare-fun b_and!7015 () Bool)

(assert (= b_and!6971 (and (=> t!3957 result!3669) b_and!7015)))

(declare-fun m!15539 () Bool)

(assert (=> d!9747 m!15539))

(assert (=> d!9747 m!15511))

(assert (=> b!12512 m!15497))

(assert (=> start!2522 d!9747))

(declare-fun d!9749 () Bool)

(assert (=> d!9749 (= (inv!426 that!199) (= (dynLambda!540 (x!7197 that!199)) (dynLambda!540 (y!681 that!199))))))

(declare-fun b_lambda!7067 () Bool)

(assert (=> (not b_lambda!7067) (not d!9749)))

(assert (=> d!9749 t!3969))

(declare-fun b_and!7017 () Bool)

(assert (= b_and!7007 (and (=> t!3969 result!3681) b_and!7017)))

(assert (=> d!9749 t!3971))

(declare-fun b_and!7019 () Bool)

(assert (= b_and!7009 (and (=> t!3971 result!3683) b_and!7019)))

(assert (=> d!9749 t!3973))

(declare-fun b_and!7021 () Bool)

(assert (= b_and!7011 (and (=> t!3973 result!3685) b_and!7021)))

(assert (=> d!9749 t!3975))

(declare-fun b_and!7023 () Bool)

(assert (= b_and!7013 (and (=> t!3975 result!3687) b_and!7023)))

(declare-fun b_lambda!7069 () Bool)

(assert (=> (not b_lambda!7069) (not d!9749)))

(declare-fun tb!3649 () Bool)

(declare-fun t!3989 () Bool)

(assert (=> (and b!12488 (= (x!7196 thiss!743) (y!681 that!199)) t!3989) tb!3649))

(declare-fun result!3701 () Bool)

(assert (=> tb!3649 (= result!3701 true)))

(assert (=> d!9749 t!3989))

(declare-fun b_and!7025 () Bool)

(assert (= b_and!7017 (and (=> t!3989 result!3701) b_and!7025)))

(declare-fun tb!3651 () Bool)

(declare-fun t!3991 () Bool)

(assert (=> (and b!12488 (= (y!680 thiss!743) (y!681 that!199)) t!3991) tb!3651))

(declare-fun result!3703 () Bool)

(assert (=> tb!3651 (= result!3703 true)))

(assert (=> d!9749 t!3991))

(declare-fun b_and!7027 () Bool)

(assert (= b_and!7019 (and (=> t!3991 result!3703) b_and!7027)))

(declare-fun t!3993 () Bool)

(declare-fun tb!3653 () Bool)

(assert (=> (and b!12480 (= (x!7197 that!199) (y!681 that!199)) t!3993) tb!3653))

(declare-fun result!3705 () Bool)

(assert (=> tb!3653 (= result!3705 true)))

(assert (=> d!9749 t!3993))

(declare-fun b_and!7029 () Bool)

(assert (= b_and!7021 (and (=> t!3993 result!3705) b_and!7029)))

(declare-fun t!3995 () Bool)

(declare-fun tb!3655 () Bool)

(assert (=> (and b!12480 (= (y!681 that!199) (y!681 that!199)) t!3995) tb!3655))

(declare-fun result!3707 () Bool)

(assert (=> tb!3655 (= result!3707 true)))

(assert (=> d!9749 t!3995))

(declare-fun b_and!7031 () Bool)

(assert (= b_and!7023 (and (=> t!3995 result!3707) b_and!7031)))

(assert (=> d!9749 m!15513))

(declare-fun m!15541 () Bool)

(assert (=> d!9749 m!15541))

(assert (=> start!2522 d!9749))

(declare-fun d!9751 () Bool)

(declare-fun c!3519 () Bool)

(assert (=> d!9751 (= c!3519 (and (is-Cons!288 xs!292) (is-Nil!289 (tail!518 xs!292))))))

(declare-fun e!6859 () Balance!375)

(assert (=> d!9751 (= (foldRight1!121 xs!292 f!539) e!6859)))

(declare-fun b!12513 () Bool)

(assert (=> b!12513 (= e!6859 (head!506 xs!292))))

(declare-fun b!12514 () Bool)

(assert (=> b!12514 (= e!6859 (dynLambda!539 f!539 (head!506 xs!292) (foldRight1!121 (tail!518 xs!292) f!539)))))

(assert (= (and d!9751 c!3519) b!12513))

(assert (= (and d!9751 (not c!3519)) b!12514))

(declare-fun b_lambda!7071 () Bool)

(assert (=> (not b_lambda!7071) (not b!12514)))

(declare-fun t!3997 () Bool)

(declare-fun tb!3657 () Bool)

(assert (=> (and start!2522 (= f!539 f!539) t!3997) tb!3657))

(declare-fun result!3709 () Bool)

(assert (=> tb!3657 (= result!3709 true)))

(assert (=> b!12514 t!3997))

(declare-fun b_and!7033 () Bool)

(assert (= b_and!6997 (and (=> t!3997 result!3709) b_and!7033)))

(declare-fun m!15543 () Bool)

(assert (=> b!12514 m!15543))

(assert (=> b!12514 m!15543))

(declare-fun m!15545 () Bool)

(assert (=> b!12514 m!15545))

(assert (=> bs!3288 d!9751))

(declare-fun d!9753 () Bool)

(declare-fun c!3520 () Bool)

(assert (=> d!9753 (= c!3520 (and (is-Cons!288 ys!54) (is-Nil!289 (tail!518 ys!54))))))

(declare-fun e!6860 () Balance!375)

(assert (=> d!9753 (= (foldRight1!121 ys!54 f!539) e!6860)))

(declare-fun b!12515 () Bool)

(assert (=> b!12515 (= e!6860 (head!506 ys!54))))

(declare-fun b!12516 () Bool)

(assert (=> b!12516 (= e!6860 (dynLambda!539 f!539 (head!506 ys!54) (foldRight1!121 (tail!518 ys!54) f!539)))))

(assert (= (and d!9753 c!3520) b!12515))

(assert (= (and d!9753 (not c!3520)) b!12516))

(declare-fun b_lambda!7073 () Bool)

(assert (=> (not b_lambda!7073) (not b!12516)))

(declare-fun t!3999 () Bool)

(declare-fun tb!3659 () Bool)

(assert (=> (and start!2522 (= f!539 f!539) t!3999) tb!3659))

(declare-fun result!3711 () Bool)

(assert (=> tb!3659 (= result!3711 true)))

(assert (=> b!12516 t!3999))

(declare-fun b_and!7035 () Bool)

(assert (= b_and!7033 (and (=> t!3999 result!3711) b_and!7035)))

(declare-fun m!15547 () Bool)

(assert (=> b!12516 m!15547))

(assert (=> b!12516 m!15547))

(declare-fun m!15549 () Bool)

(assert (=> b!12516 m!15549))

(assert (=> bs!3288 d!9753))

(assert (=> b!12487 d!9751))

(assert (=> b!12487 d!9753))

(assert (=> b!12487 d!9731))

(assert (=> b!12487 d!9733))

(assert (=> bs!3289 d!9741))

(assert (=> bs!3289 d!9743))

(assert (=> bs!3292 d!9751))

(assert (=> bs!3292 d!9753))

(declare-fun b_lambda!7075 () Bool)

(assert (= b_lambda!7057 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7075)))

(declare-fun bs!3297 () Bool)

(declare-fun d!9755 () Bool)

(assert (= bs!3297 (and d!9755 b!12481)))

(assert (=> bs!3297 (= (dynLambda!539 lambda!3395 (head!506 (append!140 xs!292 ys!54)) (foldRight1!121 (tail!518 (append!140 xs!292 ys!54)) f!539)) (++!3 (head!506 (append!140 xs!292 ys!54)) (foldRight1!121 (tail!518 (append!140 xs!292 ys!54)) f!539)))))

(assert (=> bs!3297 m!15527))

(declare-fun m!15551 () Bool)

(assert (=> bs!3297 m!15551))

(assert (=> (and b!12481 (= lambda!3395 f!539) b!12499) d!9755))

(declare-fun b_lambda!7077 () Bool)

(assert (= b_lambda!7071 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7077)))

(declare-fun bs!3298 () Bool)

(declare-fun d!9757 () Bool)

(assert (= bs!3298 (and d!9757 b!12481)))

(assert (=> bs!3298 (= (dynLambda!539 lambda!3395 (head!506 xs!292) (foldRight1!121 (tail!518 xs!292) f!539)) (++!3 (head!506 xs!292) (foldRight1!121 (tail!518 xs!292) f!539)))))

(assert (=> bs!3298 m!15543))

(declare-fun m!15553 () Bool)

(assert (=> bs!3298 m!15553))

(assert (=> (and b!12481 (= lambda!3395 f!539) b!12514) d!9757))

(declare-fun b_lambda!7079 () Bool)

(assert (= b_lambda!7063 (or (and b!12488 b_free!2001 (= (x!7196 thiss!743) (y!680 thiss!743))) (and b!12483 (= lambda!3396 (y!680 thiss!743))) (and b!12488 b_free!2003) (and b!12483 (= lambda!3397 (y!680 thiss!743))) (and b!12484 (= lambda!3399 (y!680 thiss!743))) (and b!12480 b_free!2009 (= (y!681 that!199) (y!680 thiss!743))) (and b!12480 b_free!2007 (= (x!7197 that!199) (y!680 thiss!743))) b_lambda!7079)))

(assert (=> (and b!12483 (= lambda!3396 (y!680 thiss!743)) d!9747) d!9715))

(assert (=> (and b!12483 (= lambda!3397 (y!680 thiss!743)) d!9747) d!9717))

(assert (=> (and b!12484 (= lambda!3399 (y!680 thiss!743)) d!9747) d!9719))

(declare-fun b_lambda!7081 () Bool)

(assert (= b_lambda!7061 (or (and b!12480 b_free!2009 (= (y!681 that!199) (x!7196 thiss!743))) (and b!12488 b_free!2001) (and b!12480 b_free!2007 (= (x!7197 that!199) (x!7196 thiss!743))) (and b!12483 (= lambda!3397 (x!7196 thiss!743))) (and b!12488 b_free!2003 (= (y!680 thiss!743) (x!7196 thiss!743))) (and b!12483 (= lambda!3396 (x!7196 thiss!743))) (and b!12484 (= lambda!3399 (x!7196 thiss!743))) b_lambda!7081)))

(declare-fun bs!3299 () Bool)

(declare-fun d!9759 () Bool)

(assert (= bs!3299 (and d!9759 b!12483)))

(assert (=> bs!3299 (= (dynLambda!540 lambda!3397) (foldRight1!121 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54)) f!539))))

(assert (=> bs!3299 m!15521))

(assert (=> bs!3299 m!15523))

(assert (=> (and b!12483 (= lambda!3397 (x!7196 thiss!743)) d!9747) d!9759))

(declare-fun bs!3300 () Bool)

(declare-fun d!9761 () Bool)

(assert (= bs!3300 (and d!9761 b!12484)))

(assert (=> bs!3300 (= (dynLambda!540 lambda!3399) (foldRight1!121 (append!140 xs!292 ys!54) f!539))))

(assert (=> bs!3300 m!15499))

(assert (=> bs!3300 m!15499))

(assert (=> bs!3300 m!15507))

(assert (=> (and b!12484 (= lambda!3399 (x!7196 thiss!743)) d!9747) d!9761))

(declare-fun bs!3301 () Bool)

(declare-fun d!9763 () Bool)

(assert (= bs!3301 (and d!9763 b!12483)))

(assert (=> bs!3301 (= (dynLambda!540 lambda!3396) (dynLambda!539 f!539 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)))))

(declare-fun b_lambda!7093 () Bool)

(assert (=> (not b_lambda!7093) (not bs!3301)))

(assert (=> bs!3301 t!3959))

(declare-fun b_and!7037 () Bool)

(assert (= b_and!7035 (and (=> t!3959 result!3671) b_and!7037)))

(assert (=> bs!3301 m!15501))

(assert (=> bs!3301 m!15503))

(assert (=> bs!3301 m!15501))

(assert (=> bs!3301 m!15503))

(assert (=> bs!3301 m!15505))

(assert (=> (and b!12483 (= lambda!3396 (x!7196 thiss!743)) d!9747) d!9763))

(declare-fun b_lambda!7083 () Bool)

(assert (= b_lambda!7059 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7083)))

(declare-fun bs!3302 () Bool)

(declare-fun d!9765 () Bool)

(assert (= bs!3302 (and d!9765 b!12481)))

(assert (=> bs!3302 (= (dynLambda!539 lambda!3395 (head!506 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) (foldRight1!121 (tail!518 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) f!539)) (++!3 (head!506 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) (foldRight1!121 (tail!518 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54))) f!539)))))

(assert (=> bs!3302 m!15533))

(declare-fun m!15555 () Bool)

(assert (=> bs!3302 m!15555))

(assert (=> (and b!12481 (= lambda!3395 f!539) b!12507) d!9765))

(declare-fun b_lambda!7085 () Bool)

(assert (= b_lambda!7073 (or (and b!12481 (= lambda!3395 f!539)) (and start!2522 b_free!1999) b_lambda!7085)))

(declare-fun bs!3303 () Bool)

(declare-fun d!9767 () Bool)

(assert (= bs!3303 (and d!9767 b!12481)))

(assert (=> bs!3303 (= (dynLambda!539 lambda!3395 (head!506 ys!54) (foldRight1!121 (tail!518 ys!54) f!539)) (++!3 (head!506 ys!54) (foldRight1!121 (tail!518 ys!54) f!539)))))

(assert (=> bs!3303 m!15547))

(declare-fun m!15557 () Bool)

(assert (=> bs!3303 m!15557))

(assert (=> (and b!12481 (= lambda!3395 f!539) b!12516) d!9767))

(declare-fun b_lambda!7087 () Bool)

(assert (= b_lambda!7067 (or (and b!12484 (= lambda!3399 (x!7197 that!199))) (and b!12480 b_free!2007) (and b!12488 b_free!2003 (= (y!680 thiss!743) (x!7197 that!199))) (and b!12480 b_free!2009 (= (y!681 that!199) (x!7197 that!199))) (and b!12483 (= lambda!3397 (x!7197 that!199))) (and b!12483 (= lambda!3396 (x!7197 that!199))) (and b!12488 b_free!2001 (= (x!7196 thiss!743) (x!7197 that!199))) b_lambda!7087)))

(assert (=> (and b!12484 (= lambda!3399 (x!7197 that!199)) d!9749) d!9721))

(assert (=> (and b!12483 (= lambda!3396 (x!7197 that!199)) d!9749) d!9723))

(assert (=> (and b!12483 (= lambda!3397 (x!7197 that!199)) d!9749) d!9725))

(declare-fun b_lambda!7089 () Bool)

(assert (= b_lambda!7069 (or (and b!12483 (= lambda!3396 (y!681 that!199))) (and b!12480 b_free!2009) (and b!12484 (= lambda!3399 (y!681 that!199))) (and b!12483 (= lambda!3397 (y!681 that!199))) (and b!12488 b_free!2003 (= (y!680 thiss!743) (y!681 that!199))) (and b!12488 b_free!2001 (= (x!7196 thiss!743) (y!681 that!199))) (and b!12480 b_free!2007 (= (x!7197 that!199) (y!681 that!199))) b_lambda!7089)))

(declare-fun bs!3304 () Bool)

(declare-fun d!9769 () Bool)

(assert (= bs!3304 (and d!9769 b!12483)))

(assert (=> bs!3304 (= (dynLambda!540 lambda!3397) (foldRight1!121 (Cons!288 (head!506 xs!292) (append!140 (tail!518 xs!292) ys!54)) f!539))))

(assert (=> bs!3304 m!15521))

(assert (=> bs!3304 m!15523))

(assert (=> (and b!12483 (= lambda!3397 (y!681 that!199)) d!9749) d!9769))

(declare-fun bs!3305 () Bool)

(declare-fun d!9771 () Bool)

(assert (= bs!3305 (and d!9771 b!12484)))

(assert (=> bs!3305 (= (dynLambda!540 lambda!3399) (foldRight1!121 (append!140 xs!292 ys!54) f!539))))

(assert (=> bs!3305 m!15499))

(assert (=> bs!3305 m!15499))

(assert (=> bs!3305 m!15507))

(assert (=> (and b!12484 (= lambda!3399 (y!681 that!199)) d!9749) d!9771))

(declare-fun bs!3306 () Bool)

(declare-fun d!9773 () Bool)

(assert (= bs!3306 (and d!9773 b!12483)))

(assert (=> bs!3306 (= (dynLambda!540 lambda!3396) (dynLambda!539 f!539 (foldRight1!121 xs!292 f!539) (foldRight1!121 ys!54 f!539)))))

(declare-fun b_lambda!7095 () Bool)

(assert (=> (not b_lambda!7095) (not bs!3306)))

(assert (=> bs!3306 t!3959))

(declare-fun b_and!7039 () Bool)

(assert (= b_and!7037 (and (=> t!3959 result!3671) b_and!7039)))

(assert (=> bs!3306 m!15501))

(assert (=> bs!3306 m!15503))

(assert (=> bs!3306 m!15501))

(assert (=> bs!3306 m!15503))

(assert (=> bs!3306 m!15505))

(assert (=> (and b!12483 (= lambda!3396 (y!681 that!199)) d!9749) d!9773))

(declare-fun b_lambda!7091 () Bool)

(assert (= b_lambda!7065 (or (and b!12483 (= lambda!3398 (evidence!218 thiss!743))) (and b!12488 b_free!2005) b_lambda!7091)))

(assert (=> (and b!12483 (= lambda!3398 (evidence!218 thiss!743)) b!12512) d!9727))

(push 1)

(assert (not b!12499))

(assert b_and!7029)

(assert (not b!12514))

(assert (not b_lambda!7091))

(assert (not b_lambda!7093))

(assert (not b_lambda!7055))

(assert (not b_next!4677))

(assert (not bs!3298))

(assert (not b_lambda!7075))

(assert (not bs!3306))

(assert (not bs!3304))

(assert (not b!12507))

(assert (not b_next!4695))

(assert (not b_lambda!7053))

(assert (not b_lambda!7085))

(assert (not b_next!4703))

(assert (not bs!3299))

(assert (not b_lambda!7041))

(assert (not bs!3300))

(assert (not b_lambda!7045))

(assert (not b_lambda!7095))

(assert (not b_lambda!7043))

(assert (not b_lambda!7077))

(assert (not b!12516))

(assert b_and!7031)

(assert (not bs!3305))

(assert (not b_lambda!7047))

(assert b_and!7039)

(assert (not bs!3297))

(assert (not b_lambda!7081))

(assert (not b_next!4701))

(assert (not bs!3302))

(assert (not bs!3303))

(assert (not b_lambda!7089))

(assert (not b_lambda!7079))

(assert (not b_next!4699))

(assert (not b_lambda!7087))

(assert b_and!7015)

(assert (not b!12505))

(assert (not d!9737))

(assert b_and!7027)

(assert b_and!7025)

(assert (not b_lambda!7083))

(assert (not b!12509))

(assert (not bs!3301))

(assert (not b_next!4697))

(check-sat)

(pop 1)

(push 1)

(assert b_and!7029)

(assert (not b_next!4677))

(assert (not b_next!4695))

(assert (not b_next!4703))

(assert b_and!7031)

(assert b_and!7039)

(assert (not b_next!4701))

(assert (not b_next!4699))

(assert b_and!7015)

(assert b_and!7027)

(assert b_and!7025)

(assert (not b_next!4697))

(check-sat)

(pop 1)

