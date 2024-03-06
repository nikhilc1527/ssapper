; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2576 () Bool)

(assert start!2576)

(declare-fun b!12622 () Bool)

(declare-fun lambda!3417 () Int)

(declare-fun lambda!3416 () Int)

(assert (=> b!12622 (not (= lambda!3417 lambda!3416))))

(declare-fun res!4733 () Bool)

(declare-fun e!6917 () Bool)

(assert (=> start!2576 (=> (not res!4733) (not e!6917))))

(declare-datatypes () ((Parenthesis!74 (CloseParenthesis!73) (OpenParenthesis!73))))

(declare-datatypes () ((List!297 (Nil!295) (Cons!294 (head!512 Parenthesis!74) (tail!524 List!297)))))

(declare-fun xs!418 () List!297)

(assert (=> start!2576 (= res!4733 (not (is-Nil!295 xs!418)))))

(assert (=> start!2576 e!6917))

(assert (=> start!2576 true))

(declare-fun b!12621 () Bool)

(declare-fun res!4734 () Bool)

(assert (=> b!12621 (=> (not res!4734) (not e!6917))))

(declare-fun inductVal!32 () Bool)

(declare-fun folds_equivalence!0 (List!297) Bool)

(assert (=> b!12621 (= res!4734 (= inductVal!32 (folds_equivalence!0 (tail!524 xs!418))))))

(declare-datatypes () ((Balance!385 (Balance!386 (extraOpen!233 Int) (extraClose!233 Int)))))

(declare-fun foldRight!71 (List!297 Balance!385 Int) Balance!385)

(assert (=> b!12622 (= e!6917 (not (= (foldRight!71 xs!418 (Balance!386 0 0) lambda!3416) (foldRight!71 xs!418 (Balance!386 0 0) lambda!3417))))))

(assert (= (and start!2576 res!4733) b!12621))

(assert (= (and b!12621 res!4734) b!12622))

(declare-fun m!15677 () Bool)

(assert (=> b!12621 m!15677))

(declare-fun m!15679 () Bool)

(assert (=> b!12622 m!15679))

(declare-fun m!15681 () Bool)

(assert (=> b!12622 m!15681))

(push 1)

(assert (not b!12622))

(assert (not b!12621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9851 () Bool)

(declare-fun c!3546 () Bool)

(assert (=> d!9851 (= c!3546 (is-Nil!295 xs!418))))

(declare-fun e!6920 () Balance!385)

(assert (=> d!9851 (= (foldRight!71 xs!418 (Balance!386 0 0) lambda!3416) e!6920)))

(declare-fun b!12627 () Bool)

(assert (=> b!12627 (= e!6920 (Balance!386 0 0))))

(declare-fun b!12628 () Bool)

(declare-fun dynLambda!544 (Int Parenthesis!74 Balance!385) Balance!385)

(assert (=> b!12628 (= e!6920 (dynLambda!544 lambda!3416 (head!512 xs!418) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416)))))

(assert (= (and d!9851 c!3546) b!12627))

(assert (= (and d!9851 (not c!3546)) b!12628))

(declare-fun b_lambda!7137 () Bool)

(assert (=> (not b_lambda!7137) (not b!12628)))

(declare-fun m!15683 () Bool)

(assert (=> b!12628 m!15683))

(assert (=> b!12628 m!15683))

(declare-fun m!15685 () Bool)

(assert (=> b!12628 m!15685))

(assert (=> b!12622 d!9851))

(declare-fun d!9853 () Bool)

(declare-fun c!3547 () Bool)

(assert (=> d!9853 (= c!3547 (is-Nil!295 xs!418))))

(declare-fun e!6921 () Balance!385)

(assert (=> d!9853 (= (foldRight!71 xs!418 (Balance!386 0 0) lambda!3417) e!6921)))

(declare-fun b!12629 () Bool)

(assert (=> b!12629 (= e!6921 (Balance!386 0 0))))

(declare-fun b!12630 () Bool)

(assert (=> b!12630 (= e!6921 (dynLambda!544 lambda!3417 (head!512 xs!418) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)))))

(assert (= (and d!9853 c!3547) b!12629))

(assert (= (and d!9853 (not c!3547)) b!12630))

(declare-fun b_lambda!7139 () Bool)

(assert (=> (not b_lambda!7139) (not b!12630)))

(declare-fun m!15687 () Bool)

(assert (=> b!12630 m!15687))

(assert (=> b!12630 m!15687))

(declare-fun m!15689 () Bool)

(assert (=> b!12630 m!15689))

(assert (=> b!12622 d!9853))

(declare-fun bs!3331 () Bool)

(declare-fun b!12635 () Bool)

(assert (= bs!3331 (and b!12635 b!12622)))

(declare-fun lambda!3426 () Int)

(assert (=> bs!3331 (= lambda!3426 lambda!3416)))

(assert (=> bs!3331 (not (= lambda!3426 lambda!3417))))

(declare-fun lambda!3427 () Int)

(assert (=> bs!3331 (not (= lambda!3427 lambda!3416))))

(assert (=> bs!3331 (= lambda!3427 lambda!3417)))

(assert (=> b!12635 (not (= lambda!3427 lambda!3426))))

(declare-fun bs!3332 () Bool)

(declare-fun b!12636 () Bool)

(assert (= bs!3332 (and b!12636 b!12622)))

(declare-fun lambda!3428 () Int)

(assert (=> bs!3332 (= lambda!3428 lambda!3416)))

(assert (=> bs!3332 (not (= lambda!3428 lambda!3417))))

(declare-fun bs!3333 () Bool)

(assert (= bs!3333 (and b!12636 b!12635)))

(assert (=> bs!3333 (= lambda!3428 lambda!3426)))

(assert (=> bs!3333 (not (= lambda!3428 lambda!3427))))

(declare-fun lambda!3429 () Int)

(assert (=> bs!3333 (= lambda!3429 lambda!3427)))

(assert (=> bs!3332 (= lambda!3429 lambda!3417)))

(assert (=> bs!3333 (not (= lambda!3429 lambda!3426))))

(assert (=> bs!3332 (not (= lambda!3429 lambda!3416))))

(assert (=> b!12636 (not (= lambda!3429 lambda!3428))))

(declare-fun e!6924 () Bool)

(assert (=> b!12636 (= e!6924 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3428) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3429)))))

(declare-fun lt!1827 () Bool)

(assert (=> b!12636 (= lt!1827 (folds_equivalence!0 (tail!524 (tail!524 xs!418))))))

(declare-fun d!9855 () Bool)

(assert (=> d!9855 e!6924))

(declare-fun c!3550 () Bool)

(assert (=> d!9855 (= c!3550 (is-Nil!295 (tail!524 xs!418)))))

(assert (=> d!9855 (= (folds_equivalence!0 (tail!524 xs!418)) true)))

(assert (=> b!12635 (= e!6924 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3426) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3427)))))

(assert (= (and d!9855 c!3550) b!12635))

(assert (= (and d!9855 (not c!3550)) b!12636))

(declare-fun m!15691 () Bool)

(assert (=> b!12636 m!15691))

(declare-fun m!15693 () Bool)

(assert (=> b!12636 m!15693))

(declare-fun m!15695 () Bool)

(assert (=> b!12636 m!15695))

(declare-fun m!15697 () Bool)

(assert (=> b!12635 m!15697))

(declare-fun m!15699 () Bool)

(assert (=> b!12635 m!15699))

(assert (=> b!12621 d!9855))

(declare-fun b_lambda!7141 () Bool)

(assert (= b_lambda!7139 (or b!12622 b_lambda!7141)))

(declare-fun bs!3334 () Bool)

(declare-fun d!9857 () Bool)

(assert (= bs!3334 (and d!9857 b!12622)))

(declare-fun +$colon!0 (Balance!385 Parenthesis!74) Balance!385)

(assert (=> bs!3334 (= (dynLambda!544 lambda!3417 (head!512 xs!418) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) (+$colon!0 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417) (head!512 xs!418)))))

(assert (=> bs!3334 m!15687))

(declare-fun m!15701 () Bool)

(assert (=> bs!3334 m!15701))

(assert (=> b!12630 d!9857))

(declare-fun b_lambda!7143 () Bool)

(assert (= b_lambda!7137 (or b!12622 b_lambda!7143)))

(declare-fun bs!3335 () Bool)

(declare-fun d!9859 () Bool)

(assert (= bs!3335 (and d!9859 b!12622)))

(declare-fun ++!3 (Balance!385 Balance!385) Balance!385)

(declare-fun fromParenthesis!0 (Parenthesis!74) Balance!385)

(assert (=> bs!3335 (= (dynLambda!544 lambda!3416 (head!512 xs!418) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416)) (++!3 (fromParenthesis!0 (head!512 xs!418)) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416)))))

(declare-fun m!15703 () Bool)

(assert (=> bs!3335 m!15703))

(assert (=> bs!3335 m!15703))

(assert (=> bs!3335 m!15683))

(declare-fun m!15705 () Bool)

(assert (=> bs!3335 m!15705))

(assert (=> b!12628 d!9859))

(push 1)

(assert (not b!12636))

(assert (not b_lambda!7143))

(assert (not b!12630))

(assert (not b!12635))

(assert (not b!12628))

(assert (not b_lambda!7141))

(assert (not bs!3334))

(assert (not bs!3335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9861 () Bool)

(declare-fun c!3551 () Bool)

(assert (=> d!9861 (= c!3551 (is-Nil!295 (tail!524 xs!418)))))

(declare-fun e!6925 () Balance!385)

(assert (=> d!9861 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416) e!6925)))

(declare-fun b!12637 () Bool)

(assert (=> b!12637 (= e!6925 (Balance!386 0 0))))

(declare-fun b!12638 () Bool)

(assert (=> b!12638 (= e!6925 (dynLambda!544 lambda!3416 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416)))))

(assert (= (and d!9861 c!3551) b!12637))

(assert (= (and d!9861 (not c!3551)) b!12638))

(declare-fun b_lambda!7145 () Bool)

(assert (=> (not b_lambda!7145) (not b!12638)))

(declare-fun m!15707 () Bool)

(assert (=> b!12638 m!15707))

(assert (=> b!12638 m!15707))

(declare-fun m!15709 () Bool)

(assert (=> b!12638 m!15709))

(assert (=> b!12628 d!9861))

(declare-fun d!9863 () Bool)

(declare-fun c!3552 () Bool)

(assert (=> d!9863 (= c!3552 (is-Nil!295 (tail!524 xs!418)))))

(declare-fun e!6926 () Balance!385)

(assert (=> d!9863 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3428) e!6926)))

(declare-fun b!12639 () Bool)

(assert (=> b!12639 (= e!6926 (Balance!386 0 0))))

(declare-fun b!12640 () Bool)

(assert (=> b!12640 (= e!6926 (dynLambda!544 lambda!3428 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428)))))

(assert (= (and d!9863 c!3552) b!12639))

(assert (= (and d!9863 (not c!3552)) b!12640))

(declare-fun b_lambda!7147 () Bool)

(assert (=> (not b_lambda!7147) (not b!12640)))

(declare-fun m!15711 () Bool)

(assert (=> b!12640 m!15711))

(assert (=> b!12640 m!15711))

(declare-fun m!15713 () Bool)

(assert (=> b!12640 m!15713))

(assert (=> b!12636 d!9863))

(declare-fun d!9865 () Bool)

(declare-fun c!3553 () Bool)

(assert (=> d!9865 (= c!3553 (is-Nil!295 (tail!524 xs!418)))))

(declare-fun e!6927 () Balance!385)

(assert (=> d!9865 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3429) e!6927)))

(declare-fun b!12641 () Bool)

(assert (=> b!12641 (= e!6927 (Balance!386 0 0))))

(declare-fun b!12642 () Bool)

(assert (=> b!12642 (= e!6927 (dynLambda!544 lambda!3429 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)))))

(assert (= (and d!9865 c!3553) b!12641))

(assert (= (and d!9865 (not c!3553)) b!12642))

(declare-fun b_lambda!7149 () Bool)

(assert (=> (not b_lambda!7149) (not b!12642)))

(declare-fun m!15715 () Bool)

(assert (=> b!12642 m!15715))

(assert (=> b!12642 m!15715))

(declare-fun m!15717 () Bool)

(assert (=> b!12642 m!15717))

(assert (=> b!12636 d!9865))

(declare-fun bs!3336 () Bool)

(declare-fun b!12643 () Bool)

(assert (= bs!3336 (and b!12643 b!12635)))

(declare-fun lambda!3430 () Int)

(assert (=> bs!3336 (not (= lambda!3430 lambda!3427))))

(declare-fun bs!3337 () Bool)

(assert (= bs!3337 (and b!12643 b!12622)))

(assert (=> bs!3337 (not (= lambda!3430 lambda!3417))))

(assert (=> bs!3336 (= lambda!3430 lambda!3426)))

(assert (=> bs!3337 (= lambda!3430 lambda!3416)))

(declare-fun bs!3338 () Bool)

(assert (= bs!3338 (and b!12643 b!12636)))

(assert (=> bs!3338 (= lambda!3430 lambda!3428)))

(assert (=> bs!3338 (not (= lambda!3430 lambda!3429))))

(declare-fun lambda!3431 () Int)

(assert (=> bs!3336 (= lambda!3431 lambda!3427)))

(assert (=> bs!3337 (= lambda!3431 lambda!3417)))

(assert (=> b!12643 (not (= lambda!3431 lambda!3430))))

(assert (=> bs!3336 (not (= lambda!3431 lambda!3426))))

(assert (=> bs!3337 (not (= lambda!3431 lambda!3416))))

(assert (=> bs!3338 (not (= lambda!3431 lambda!3428))))

(assert (=> bs!3338 (= lambda!3431 lambda!3429)))

(declare-fun bs!3339 () Bool)

(declare-fun b!12644 () Bool)

(assert (= bs!3339 (and b!12644 b!12635)))

(declare-fun lambda!3432 () Int)

(assert (=> bs!3339 (not (= lambda!3432 lambda!3427))))

(declare-fun bs!3340 () Bool)

(assert (= bs!3340 (and b!12644 b!12622)))

(assert (=> bs!3340 (not (= lambda!3432 lambda!3417))))

(declare-fun bs!3341 () Bool)

(assert (= bs!3341 (and b!12644 b!12643)))

(assert (=> bs!3341 (= lambda!3432 lambda!3430)))

(assert (=> bs!3339 (= lambda!3432 lambda!3426)))

(assert (=> bs!3340 (= lambda!3432 lambda!3416)))

(declare-fun bs!3342 () Bool)

(assert (= bs!3342 (and b!12644 b!12636)))

(assert (=> bs!3342 (= lambda!3432 lambda!3428)))

(assert (=> bs!3342 (not (= lambda!3432 lambda!3429))))

(assert (=> bs!3341 (not (= lambda!3432 lambda!3431))))

(declare-fun lambda!3433 () Int)

(assert (=> bs!3339 (= lambda!3433 lambda!3427)))

(assert (=> bs!3340 (= lambda!3433 lambda!3417)))

(assert (=> bs!3341 (not (= lambda!3433 lambda!3430))))

(assert (=> bs!3339 (not (= lambda!3433 lambda!3426))))

(assert (=> bs!3340 (not (= lambda!3433 lambda!3416))))

(assert (=> bs!3342 (not (= lambda!3433 lambda!3428))))

(assert (=> bs!3342 (= lambda!3433 lambda!3429)))

(assert (=> b!12644 (not (= lambda!3433 lambda!3432))))

(assert (=> bs!3341 (= lambda!3433 lambda!3431)))

(declare-fun e!6928 () Bool)

(assert (=> b!12644 (= e!6928 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3432) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3433)))))

(declare-fun lt!1828 () Bool)

(assert (=> b!12644 (= lt!1828 (folds_equivalence!0 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun d!9867 () Bool)

(assert (=> d!9867 e!6928))

(declare-fun c!3554 () Bool)

(assert (=> d!9867 (= c!3554 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(assert (=> d!9867 (= (folds_equivalence!0 (tail!524 (tail!524 xs!418))) true)))

(assert (=> b!12643 (= e!6928 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3430) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3431)))))

(assert (= (and d!9867 c!3554) b!12643))

(assert (= (and d!9867 (not c!3554)) b!12644))

(declare-fun m!15719 () Bool)

(assert (=> b!12644 m!15719))

(declare-fun m!15721 () Bool)

(assert (=> b!12644 m!15721))

(declare-fun m!15723 () Bool)

(assert (=> b!12644 m!15723))

(declare-fun m!15725 () Bool)

(assert (=> b!12643 m!15725))

(declare-fun m!15727 () Bool)

(assert (=> b!12643 m!15727))

(assert (=> b!12636 d!9867))

(declare-fun d!9869 () Bool)

(declare-fun c!3555 () Bool)

(assert (=> d!9869 (= c!3555 (is-Nil!295 (tail!524 xs!418)))))

(declare-fun e!6929 () Balance!385)

(assert (=> d!9869 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417) e!6929)))

(declare-fun b!12645 () Bool)

(assert (=> b!12645 (= e!6929 (Balance!386 0 0))))

(declare-fun b!12646 () Bool)

(assert (=> b!12646 (= e!6929 (dynLambda!544 lambda!3417 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)))))

(assert (= (and d!9869 c!3555) b!12645))

(assert (= (and d!9869 (not c!3555)) b!12646))

(declare-fun b_lambda!7151 () Bool)

(assert (=> (not b_lambda!7151) (not b!12646)))

(declare-fun m!15729 () Bool)

(assert (=> b!12646 m!15729))

(assert (=> b!12646 m!15729))

(declare-fun m!15731 () Bool)

(assert (=> b!12646 m!15731))

(assert (=> b!12630 d!9869))

(declare-fun d!9871 () Bool)

(declare-fun lt!1831 () Int)

(declare-fun min!4 (Int Int) Int)

(assert (=> d!9871 (= lt!1831 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 xs!418))) (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416))))))

(assert (=> d!9871 (= (++!3 (fromParenthesis!0 (head!512 xs!418)) (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 xs!418))) (extraOpen!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416))) lt!1831) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 xs!418))) (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416))) lt!1831)))))

(declare-fun bs!3343 () Bool)

(assert (= bs!3343 d!9871))

(declare-fun m!15733 () Bool)

(assert (=> bs!3343 m!15733))

(assert (=> bs!3335 d!9871))

(declare-fun d!9873 () Bool)

(assert (=> d!9873 (= (fromParenthesis!0 (head!512 xs!418)) (ite (is-OpenParenthesis!73 (head!512 xs!418)) (Balance!386 1 0) (Balance!386 0 1)))))

(assert (=> bs!3335 d!9873))

(declare-fun d!9875 () Bool)

(assert (=> d!9875 (= (+$colon!0 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417) (head!512 xs!418)) (ite (and (is-OpenParenthesis!73 (head!512 xs!418)) (> (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) (- (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) 1)) (ite (is-OpenParenthesis!73 (head!512 xs!418)) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) 1) (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) (+ (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3417)) 1)))))))

(assert (=> bs!3334 d!9875))

(declare-fun d!9877 () Bool)

(declare-fun c!3556 () Bool)

(assert (=> d!9877 (= c!3556 (is-Nil!295 (tail!524 xs!418)))))

(declare-fun e!6930 () Balance!385)

(assert (=> d!9877 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3426) e!6930)))

(declare-fun b!12647 () Bool)

(assert (=> b!12647 (= e!6930 (Balance!386 0 0))))

(declare-fun b!12648 () Bool)

(assert (=> b!12648 (= e!6930 (dynLambda!544 lambda!3426 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426)))))

(assert (= (and d!9877 c!3556) b!12647))

(assert (= (and d!9877 (not c!3556)) b!12648))

(declare-fun b_lambda!7153 () Bool)

(assert (=> (not b_lambda!7153) (not b!12648)))

(declare-fun m!15735 () Bool)

(assert (=> b!12648 m!15735))

(assert (=> b!12648 m!15735))

(declare-fun m!15737 () Bool)

(assert (=> b!12648 m!15737))

(assert (=> b!12635 d!9877))

(declare-fun d!9879 () Bool)

(declare-fun c!3557 () Bool)

(assert (=> d!9879 (= c!3557 (is-Nil!295 (tail!524 xs!418)))))

(declare-fun e!6931 () Balance!385)

(assert (=> d!9879 (= (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3427) e!6931)))

(declare-fun b!12649 () Bool)

(assert (=> b!12649 (= e!6931 (Balance!386 0 0))))

(declare-fun b!12650 () Bool)

(assert (=> b!12650 (= e!6931 (dynLambda!544 lambda!3427 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)))))

(assert (= (and d!9879 c!3557) b!12649))

(assert (= (and d!9879 (not c!3557)) b!12650))

(declare-fun b_lambda!7155 () Bool)

(assert (=> (not b_lambda!7155) (not b!12650)))

(declare-fun m!15739 () Bool)

(assert (=> b!12650 m!15739))

(assert (=> b!12650 m!15739))

(declare-fun m!15741 () Bool)

(assert (=> b!12650 m!15741))

(assert (=> b!12635 d!9879))

(declare-fun b_lambda!7157 () Bool)

(assert (= b_lambda!7149 (or b!12636 b_lambda!7157)))

(declare-fun bs!3344 () Bool)

(declare-fun d!9881 () Bool)

(assert (= bs!3344 (and d!9881 b!12636)))

(assert (=> bs!3344 (= (dynLambda!544 lambda!3429 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429) (head!512 (tail!524 xs!418))))))

(assert (=> bs!3344 m!15715))

(declare-fun m!15743 () Bool)

(assert (=> bs!3344 m!15743))

(assert (=> b!12642 d!9881))

(declare-fun b_lambda!7159 () Bool)

(assert (= b_lambda!7151 (or b!12622 b_lambda!7159)))

(declare-fun bs!3345 () Bool)

(declare-fun d!9883 () Bool)

(assert (= bs!3345 (and d!9883 b!12622)))

(assert (=> bs!3345 (= (dynLambda!544 lambda!3417 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417) (head!512 (tail!524 xs!418))))))

(assert (=> bs!3345 m!15729))

(declare-fun m!15745 () Bool)

(assert (=> bs!3345 m!15745))

(assert (=> b!12646 d!9883))

(declare-fun b_lambda!7161 () Bool)

(assert (= b_lambda!7147 (or b!12636 b_lambda!7161)))

(declare-fun bs!3346 () Bool)

(declare-fun d!9885 () Bool)

(assert (= bs!3346 (and d!9885 b!12636)))

(assert (=> bs!3346 (= (dynLambda!544 lambda!3428 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428)) (++!3 (fromParenthesis!0 (head!512 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428)))))

(declare-fun m!15747 () Bool)

(assert (=> bs!3346 m!15747))

(assert (=> bs!3346 m!15747))

(assert (=> bs!3346 m!15711))

(declare-fun m!15749 () Bool)

(assert (=> bs!3346 m!15749))

(assert (=> b!12640 d!9885))

(declare-fun b_lambda!7163 () Bool)

(assert (= b_lambda!7153 (or b!12635 b_lambda!7163)))

(declare-fun bs!3347 () Bool)

(declare-fun d!9887 () Bool)

(assert (= bs!3347 (and d!9887 b!12635)))

(assert (=> bs!3347 (= (dynLambda!544 lambda!3426 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426)) (++!3 (fromParenthesis!0 (head!512 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426)))))

(assert (=> bs!3347 m!15747))

(assert (=> bs!3347 m!15747))

(assert (=> bs!3347 m!15735))

(declare-fun m!15751 () Bool)

(assert (=> bs!3347 m!15751))

(assert (=> b!12648 d!9887))

(declare-fun b_lambda!7165 () Bool)

(assert (= b_lambda!7155 (or b!12635 b_lambda!7165)))

(declare-fun bs!3348 () Bool)

(declare-fun d!9889 () Bool)

(assert (= bs!3348 (and d!9889 b!12635)))

(assert (=> bs!3348 (= (dynLambda!544 lambda!3427 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427) (head!512 (tail!524 xs!418))))))

(assert (=> bs!3348 m!15739))

(declare-fun m!15753 () Bool)

(assert (=> bs!3348 m!15753))

(assert (=> b!12650 d!9889))

(declare-fun b_lambda!7167 () Bool)

(assert (= b_lambda!7145 (or b!12622 b_lambda!7167)))

(declare-fun bs!3349 () Bool)

(declare-fun d!9891 () Bool)

(assert (= bs!3349 (and d!9891 b!12622)))

(assert (=> bs!3349 (= (dynLambda!544 lambda!3416 (head!512 (tail!524 xs!418)) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416)) (++!3 (fromParenthesis!0 (head!512 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416)))))

(assert (=> bs!3349 m!15747))

(assert (=> bs!3349 m!15747))

(assert (=> bs!3349 m!15707))

(declare-fun m!15755 () Bool)

(assert (=> bs!3349 m!15755))

(assert (=> b!12638 d!9891))

(push 1)

(assert (not b_lambda!7157))

(assert (not b!12650))

(assert (not bs!3348))

(assert (not b_lambda!7165))

(assert (not b_lambda!7161))

(assert (not b!12644))

(assert (not bs!3349))

(assert (not b_lambda!7143))

(assert (not bs!3347))

(assert (not b!12648))

(assert (not b_lambda!7159))

(assert (not b!12642))

(assert (not bs!3344))

(assert (not b!12640))

(assert (not b!12646))

(assert (not b_lambda!7167))

(assert (not bs!3345))

(assert (not b!12643))

(assert (not b!12638))

(assert (not b_lambda!7141))

(assert (not b_lambda!7163))

(assert (not bs!3346))

(assert (not d!9871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9893 () Bool)

(declare-fun lt!1832 () Int)

(assert (=> d!9893 (= lt!1832 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428))))))

(assert (=> d!9893 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428))) lt!1832) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428))) lt!1832)))))

(declare-fun bs!3350 () Bool)

(assert (= bs!3350 d!9893))

(declare-fun m!15757 () Bool)

(assert (=> bs!3350 m!15757))

(assert (=> bs!3346 d!9893))

(declare-fun d!9895 () Bool)

(assert (=> d!9895 (= (fromParenthesis!0 (head!512 (tail!524 xs!418))) (ite (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (Balance!386 1 0) (Balance!386 0 1)))))

(assert (=> bs!3346 d!9895))

(declare-fun d!9897 () Bool)

(declare-fun c!3558 () Bool)

(assert (=> d!9897 (= c!3558 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6932 () Balance!385)

(assert (=> d!9897 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3430) e!6932)))

(declare-fun b!12651 () Bool)

(assert (=> b!12651 (= e!6932 (Balance!386 0 0))))

(declare-fun b!12652 () Bool)

(assert (=> b!12652 (= e!6932 (dynLambda!544 lambda!3430 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430)))))

(assert (= (and d!9897 c!3558) b!12651))

(assert (= (and d!9897 (not c!3558)) b!12652))

(declare-fun b_lambda!7169 () Bool)

(assert (=> (not b_lambda!7169) (not b!12652)))

(declare-fun m!15759 () Bool)

(assert (=> b!12652 m!15759))

(assert (=> b!12652 m!15759))

(declare-fun m!15761 () Bool)

(assert (=> b!12652 m!15761))

(assert (=> b!12643 d!9897))

(declare-fun d!9899 () Bool)

(declare-fun c!3559 () Bool)

(assert (=> d!9899 (= c!3559 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6933 () Balance!385)

(assert (=> d!9899 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3431) e!6933)))

(declare-fun b!12653 () Bool)

(assert (=> b!12653 (= e!6933 (Balance!386 0 0))))

(declare-fun b!12654 () Bool)

(assert (=> b!12654 (= e!6933 (dynLambda!544 lambda!3431 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)))))

(assert (= (and d!9899 c!3559) b!12653))

(assert (= (and d!9899 (not c!3559)) b!12654))

(declare-fun b_lambda!7171 () Bool)

(assert (=> (not b_lambda!7171) (not b!12654)))

(declare-fun m!15763 () Bool)

(assert (=> b!12654 m!15763))

(assert (=> b!12654 m!15763))

(declare-fun m!15765 () Bool)

(assert (=> b!12654 m!15765))

(assert (=> b!12643 d!9899))

(declare-fun d!9901 () Bool)

(assert (=> d!9901 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417) (head!512 (tail!524 xs!418))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417)) 1)))))))

(assert (=> bs!3345 d!9901))

(declare-fun d!9903 () Bool)

(assert (=> d!9903 (= (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 xs!418))) (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416))) (ite (<= (extraOpen!233 (fromParenthesis!0 (head!512 xs!418))) (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416))) (extraOpen!233 (fromParenthesis!0 (head!512 xs!418))) (extraClose!233 (foldRight!71 (tail!524 xs!418) (Balance!386 0 0) lambda!3416))))))

(assert (=> d!9871 d!9903))

(declare-fun d!9905 () Bool)

(declare-fun lt!1833 () Int)

(assert (=> d!9905 (= lt!1833 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426))))))

(assert (=> d!9905 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426))) lt!1833) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426))) lt!1833)))))

(declare-fun bs!3351 () Bool)

(assert (= bs!3351 d!9905))

(declare-fun m!15767 () Bool)

(assert (=> bs!3351 m!15767))

(assert (=> bs!3347 d!9905))

(assert (=> bs!3347 d!9895))

(declare-fun d!9907 () Bool)

(declare-fun c!3560 () Bool)

(assert (=> d!9907 (= c!3560 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6934 () Balance!385)

(assert (=> d!9907 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416) e!6934)))

(declare-fun b!12656 () Bool)

(assert (=> b!12656 (= e!6934 (Balance!386 0 0))))

(declare-fun b!12657 () Bool)

(assert (=> b!12657 (= e!6934 (dynLambda!544 lambda!3416 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416)))))

(assert (= (and d!9907 c!3560) b!12656))

(assert (= (and d!9907 (not c!3560)) b!12657))

(declare-fun b_lambda!7173 () Bool)

(assert (=> (not b_lambda!7173) (not b!12657)))

(declare-fun m!15769 () Bool)

(assert (=> b!12657 m!15769))

(assert (=> b!12657 m!15769))

(declare-fun m!15771 () Bool)

(assert (=> b!12657 m!15771))

(assert (=> b!12638 d!9907))

(declare-fun d!9909 () Bool)

(declare-fun c!3561 () Bool)

(assert (=> d!9909 (= c!3561 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6935 () Balance!385)

(assert (=> d!9909 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3432) e!6935)))

(declare-fun b!12658 () Bool)

(assert (=> b!12658 (= e!6935 (Balance!386 0 0))))

(declare-fun b!12659 () Bool)

(assert (=> b!12659 (= e!6935 (dynLambda!544 lambda!3432 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432)))))

(assert (= (and d!9909 c!3561) b!12658))

(assert (= (and d!9909 (not c!3561)) b!12659))

(declare-fun b_lambda!7175 () Bool)

(assert (=> (not b_lambda!7175) (not b!12659)))

(declare-fun m!15773 () Bool)

(assert (=> b!12659 m!15773))

(assert (=> b!12659 m!15773))

(declare-fun m!15775 () Bool)

(assert (=> b!12659 m!15775))

(assert (=> b!12644 d!9909))

(declare-fun d!9911 () Bool)

(declare-fun c!3562 () Bool)

(assert (=> d!9911 (= c!3562 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6936 () Balance!385)

(assert (=> d!9911 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3433) e!6936)))

(declare-fun b!12660 () Bool)

(assert (=> b!12660 (= e!6936 (Balance!386 0 0))))

(declare-fun b!12661 () Bool)

(assert (=> b!12661 (= e!6936 (dynLambda!544 lambda!3433 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)))))

(assert (= (and d!9911 c!3562) b!12660))

(assert (= (and d!9911 (not c!3562)) b!12661))

(declare-fun b_lambda!7177 () Bool)

(assert (=> (not b_lambda!7177) (not b!12661)))

(declare-fun m!15777 () Bool)

(assert (=> b!12661 m!15777))

(assert (=> b!12661 m!15777))

(declare-fun m!15779 () Bool)

(assert (=> b!12661 m!15779))

(assert (=> b!12644 d!9911))

(declare-fun bs!3352 () Bool)

(declare-fun b!12662 () Bool)

(assert (= bs!3352 (and b!12662 b!12635)))

(declare-fun lambda!3434 () Int)

(assert (=> bs!3352 (not (= lambda!3434 lambda!3427))))

(declare-fun bs!3353 () Bool)

(assert (= bs!3353 (and b!12662 b!12622)))

(assert (=> bs!3353 (not (= lambda!3434 lambda!3417))))

(declare-fun bs!3354 () Bool)

(assert (= bs!3354 (and b!12662 b!12643)))

(assert (=> bs!3354 (= lambda!3434 lambda!3430)))

(assert (=> bs!3352 (= lambda!3434 lambda!3426)))

(assert (=> bs!3353 (= lambda!3434 lambda!3416)))

(declare-fun bs!3355 () Bool)

(assert (= bs!3355 (and b!12662 b!12644)))

(assert (=> bs!3355 (not (= lambda!3434 lambda!3433))))

(declare-fun bs!3356 () Bool)

(assert (= bs!3356 (and b!12662 b!12636)))

(assert (=> bs!3356 (= lambda!3434 lambda!3428)))

(assert (=> bs!3356 (not (= lambda!3434 lambda!3429))))

(assert (=> bs!3355 (= lambda!3434 lambda!3432)))

(assert (=> bs!3354 (not (= lambda!3434 lambda!3431))))

(declare-fun lambda!3435 () Int)

(assert (=> bs!3352 (= lambda!3435 lambda!3427)))

(assert (=> b!12662 (not (= lambda!3435 lambda!3434))))

(assert (=> bs!3353 (= lambda!3435 lambda!3417)))

(assert (=> bs!3354 (not (= lambda!3435 lambda!3430))))

(assert (=> bs!3352 (not (= lambda!3435 lambda!3426))))

(assert (=> bs!3353 (not (= lambda!3435 lambda!3416))))

(assert (=> bs!3355 (= lambda!3435 lambda!3433)))

(assert (=> bs!3356 (not (= lambda!3435 lambda!3428))))

(assert (=> bs!3356 (= lambda!3435 lambda!3429)))

(assert (=> bs!3355 (not (= lambda!3435 lambda!3432))))

(assert (=> bs!3354 (= lambda!3435 lambda!3431)))

(declare-fun bs!3357 () Bool)

(declare-fun b!12663 () Bool)

(assert (= bs!3357 (and b!12663 b!12662)))

(declare-fun lambda!3436 () Int)

(assert (=> bs!3357 (not (= lambda!3436 lambda!3435))))

(declare-fun bs!3358 () Bool)

(assert (= bs!3358 (and b!12663 b!12635)))

(assert (=> bs!3358 (not (= lambda!3436 lambda!3427))))

(assert (=> bs!3357 (= lambda!3436 lambda!3434)))

(declare-fun bs!3359 () Bool)

(assert (= bs!3359 (and b!12663 b!12622)))

(assert (=> bs!3359 (not (= lambda!3436 lambda!3417))))

(declare-fun bs!3360 () Bool)

(assert (= bs!3360 (and b!12663 b!12643)))

(assert (=> bs!3360 (= lambda!3436 lambda!3430)))

(assert (=> bs!3358 (= lambda!3436 lambda!3426)))

(assert (=> bs!3359 (= lambda!3436 lambda!3416)))

(declare-fun bs!3361 () Bool)

(assert (= bs!3361 (and b!12663 b!12644)))

(assert (=> bs!3361 (not (= lambda!3436 lambda!3433))))

(declare-fun bs!3362 () Bool)

(assert (= bs!3362 (and b!12663 b!12636)))

(assert (=> bs!3362 (= lambda!3436 lambda!3428)))

(assert (=> bs!3362 (not (= lambda!3436 lambda!3429))))

(assert (=> bs!3361 (= lambda!3436 lambda!3432)))

(assert (=> bs!3360 (not (= lambda!3436 lambda!3431))))

(declare-fun lambda!3437 () Int)

(assert (=> bs!3357 (= lambda!3437 lambda!3435)))

(assert (=> bs!3358 (= lambda!3437 lambda!3427)))

(assert (=> bs!3357 (not (= lambda!3437 lambda!3434))))

(assert (=> bs!3359 (= lambda!3437 lambda!3417)))

(assert (=> bs!3360 (not (= lambda!3437 lambda!3430))))

(assert (=> bs!3358 (not (= lambda!3437 lambda!3426))))

(assert (=> bs!3359 (not (= lambda!3437 lambda!3416))))

(assert (=> bs!3361 (= lambda!3437 lambda!3433)))

(assert (=> b!12663 (not (= lambda!3437 lambda!3436))))

(assert (=> bs!3362 (not (= lambda!3437 lambda!3428))))

(assert (=> bs!3362 (= lambda!3437 lambda!3429)))

(assert (=> bs!3361 (not (= lambda!3437 lambda!3432))))

(assert (=> bs!3360 (= lambda!3437 lambda!3431)))

(declare-fun e!6937 () Bool)

(assert (=> b!12663 (= e!6937 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3436) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3437)))))

(declare-fun lt!1834 () Bool)

(assert (=> b!12663 (= lt!1834 (folds_equivalence!0 (tail!524 (tail!524 (tail!524 (tail!524 xs!418))))))))

(declare-fun d!9913 () Bool)

(assert (=> d!9913 e!6937))

(declare-fun c!3563 () Bool)

(assert (=> d!9913 (= c!3563 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(assert (=> d!9913 (= (folds_equivalence!0 (tail!524 (tail!524 (tail!524 xs!418)))) true)))

(assert (=> b!12662 (= e!6937 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3434) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3435)))))

(assert (= (and d!9913 c!3563) b!12662))

(assert (= (and d!9913 (not c!3563)) b!12663))

(declare-fun m!15781 () Bool)

(assert (=> b!12663 m!15781))

(declare-fun m!15783 () Bool)

(assert (=> b!12663 m!15783))

(declare-fun m!15785 () Bool)

(assert (=> b!12663 m!15785))

(declare-fun m!15787 () Bool)

(assert (=> b!12662 m!15787))

(declare-fun m!15789 () Bool)

(assert (=> b!12662 m!15789))

(assert (=> b!12644 d!9913))

(declare-fun d!9915 () Bool)

(declare-fun c!3564 () Bool)

(assert (=> d!9915 (= c!3564 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6938 () Balance!385)

(assert (=> d!9915 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429) e!6938)))

(declare-fun b!12664 () Bool)

(assert (=> b!12664 (= e!6938 (Balance!386 0 0))))

(declare-fun b!12665 () Bool)

(assert (=> b!12665 (= e!6938 (dynLambda!544 lambda!3429 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)))))

(assert (= (and d!9915 c!3564) b!12664))

(assert (= (and d!9915 (not c!3564)) b!12665))

(declare-fun b_lambda!7179 () Bool)

(assert (=> (not b_lambda!7179) (not b!12665)))

(declare-fun m!15791 () Bool)

(assert (=> b!12665 m!15791))

(assert (=> b!12665 m!15791))

(declare-fun m!15793 () Bool)

(assert (=> b!12665 m!15793))

(assert (=> b!12642 d!9915))

(declare-fun d!9917 () Bool)

(declare-fun c!3565 () Bool)

(assert (=> d!9917 (= c!3565 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6939 () Balance!385)

(assert (=> d!9917 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3417) e!6939)))

(declare-fun b!12666 () Bool)

(assert (=> b!12666 (= e!6939 (Balance!386 0 0))))

(declare-fun b!12667 () Bool)

(assert (=> b!12667 (= e!6939 (dynLambda!544 lambda!3417 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)))))

(assert (= (and d!9917 c!3565) b!12666))

(assert (= (and d!9917 (not c!3565)) b!12667))

(declare-fun b_lambda!7181 () Bool)

(assert (=> (not b_lambda!7181) (not b!12667)))

(declare-fun m!15795 () Bool)

(assert (=> b!12667 m!15795))

(assert (=> b!12667 m!15795))

(declare-fun m!15797 () Bool)

(assert (=> b!12667 m!15797))

(assert (=> b!12646 d!9917))

(declare-fun d!9919 () Bool)

(declare-fun c!3566 () Bool)

(assert (=> d!9919 (= c!3566 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6940 () Balance!385)

(assert (=> d!9919 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428) e!6940)))

(declare-fun b!12668 () Bool)

(assert (=> b!12668 (= e!6940 (Balance!386 0 0))))

(declare-fun b!12669 () Bool)

(assert (=> b!12669 (= e!6940 (dynLambda!544 lambda!3428 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428)))))

(assert (= (and d!9919 c!3566) b!12668))

(assert (= (and d!9919 (not c!3566)) b!12669))

(declare-fun b_lambda!7183 () Bool)

(assert (=> (not b_lambda!7183) (not b!12669)))

(declare-fun m!15799 () Bool)

(assert (=> b!12669 m!15799))

(assert (=> b!12669 m!15799))

(declare-fun m!15801 () Bool)

(assert (=> b!12669 m!15801))

(assert (=> b!12640 d!9919))

(declare-fun d!9921 () Bool)

(declare-fun lt!1835 () Int)

(assert (=> d!9921 (= lt!1835 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416))))))

(assert (=> d!9921 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416))) lt!1835) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416))) lt!1835)))))

(declare-fun bs!3363 () Bool)

(assert (= bs!3363 d!9921))

(declare-fun m!15803 () Bool)

(assert (=> bs!3363 m!15803))

(assert (=> bs!3349 d!9921))

(assert (=> bs!3349 d!9895))

(declare-fun d!9923 () Bool)

(declare-fun c!3567 () Bool)

(assert (=> d!9923 (= c!3567 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6941 () Balance!385)

(assert (=> d!9923 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427) e!6941)))

(declare-fun b!12670 () Bool)

(assert (=> b!12670 (= e!6941 (Balance!386 0 0))))

(declare-fun b!12671 () Bool)

(assert (=> b!12671 (= e!6941 (dynLambda!544 lambda!3427 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)))))

(assert (= (and d!9923 c!3567) b!12670))

(assert (= (and d!9923 (not c!3567)) b!12671))

(declare-fun b_lambda!7185 () Bool)

(assert (=> (not b_lambda!7185) (not b!12671)))

(declare-fun m!15805 () Bool)

(assert (=> b!12671 m!15805))

(assert (=> b!12671 m!15805))

(declare-fun m!15807 () Bool)

(assert (=> b!12671 m!15807))

(assert (=> b!12650 d!9923))

(declare-fun d!9925 () Bool)

(assert (=> d!9925 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427) (head!512 (tail!524 xs!418))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3427)) 1)))))))

(assert (=> bs!3348 d!9925))

(declare-fun d!9927 () Bool)

(assert (=> d!9927 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429) (head!512 (tail!524 xs!418))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 xs!418))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3429)) 1)))))))

(assert (=> bs!3344 d!9927))

(declare-fun d!9929 () Bool)

(declare-fun c!3568 () Bool)

(assert (=> d!9929 (= c!3568 (is-Nil!295 (tail!524 (tail!524 xs!418))))))

(declare-fun e!6942 () Balance!385)

(assert (=> d!9929 (= (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426) e!6942)))

(declare-fun b!12672 () Bool)

(assert (=> b!12672 (= e!6942 (Balance!386 0 0))))

(declare-fun b!12673 () Bool)

(assert (=> b!12673 (= e!6942 (dynLambda!544 lambda!3426 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426)))))

(assert (= (and d!9929 c!3568) b!12672))

(assert (= (and d!9929 (not c!3568)) b!12673))

(declare-fun b_lambda!7187 () Bool)

(assert (=> (not b_lambda!7187) (not b!12673)))

(declare-fun m!15809 () Bool)

(assert (=> b!12673 m!15809))

(assert (=> b!12673 m!15809))

(declare-fun m!15811 () Bool)

(assert (=> b!12673 m!15811))

(assert (=> b!12648 d!9929))

(declare-fun b_lambda!7189 () Bool)

(assert (= b_lambda!7171 (or b!12643 b_lambda!7189)))

(declare-fun bs!3364 () Bool)

(declare-fun d!9931 () Bool)

(assert (= bs!3364 (and d!9931 b!12643)))

(assert (=> bs!3364 (= (dynLambda!544 lambda!3431 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431) (head!512 (tail!524 (tail!524 xs!418)))))))

(assert (=> bs!3364 m!15763))

(declare-fun m!15813 () Bool)

(assert (=> bs!3364 m!15813))

(assert (=> b!12654 d!9931))

(declare-fun b_lambda!7191 () Bool)

(assert (= b_lambda!7181 (or b!12622 b_lambda!7191)))

(declare-fun bs!3365 () Bool)

(declare-fun d!9933 () Bool)

(assert (= bs!3365 (and d!9933 b!12622)))

(assert (=> bs!3365 (= (dynLambda!544 lambda!3417 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417) (head!512 (tail!524 (tail!524 xs!418)))))))

(assert (=> bs!3365 m!15795))

(declare-fun m!15815 () Bool)

(assert (=> bs!3365 m!15815))

(assert (=> b!12667 d!9933))

(declare-fun b_lambda!7193 () Bool)

(assert (= b_lambda!7173 (or b!12622 b_lambda!7193)))

(declare-fun bs!3366 () Bool)

(declare-fun d!9935 () Bool)

(assert (= bs!3366 (and d!9935 b!12622)))

(assert (=> bs!3366 (= (dynLambda!544 lambda!3416 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416)))))

(declare-fun m!15817 () Bool)

(assert (=> bs!3366 m!15817))

(assert (=> bs!3366 m!15817))

(assert (=> bs!3366 m!15769))

(declare-fun m!15819 () Bool)

(assert (=> bs!3366 m!15819))

(assert (=> b!12657 d!9935))

(declare-fun b_lambda!7195 () Bool)

(assert (= b_lambda!7175 (or b!12644 b_lambda!7195)))

(declare-fun bs!3367 () Bool)

(declare-fun d!9937 () Bool)

(assert (= bs!3367 (and d!9937 b!12644)))

(assert (=> bs!3367 (= (dynLambda!544 lambda!3432 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432)))))

(assert (=> bs!3367 m!15817))

(assert (=> bs!3367 m!15817))

(assert (=> bs!3367 m!15773))

(declare-fun m!15821 () Bool)

(assert (=> bs!3367 m!15821))

(assert (=> b!12659 d!9937))

(declare-fun b_lambda!7197 () Bool)

(assert (= b_lambda!7179 (or b!12636 b_lambda!7197)))

(declare-fun bs!3368 () Bool)

(declare-fun d!9939 () Bool)

(assert (= bs!3368 (and d!9939 b!12636)))

(assert (=> bs!3368 (= (dynLambda!544 lambda!3429 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429) (head!512 (tail!524 (tail!524 xs!418)))))))

(assert (=> bs!3368 m!15791))

(declare-fun m!15823 () Bool)

(assert (=> bs!3368 m!15823))

(assert (=> b!12665 d!9939))

(declare-fun b_lambda!7199 () Bool)

(assert (= b_lambda!7187 (or b!12635 b_lambda!7199)))

(declare-fun bs!3369 () Bool)

(declare-fun d!9941 () Bool)

(assert (= bs!3369 (and d!9941 b!12635)))

(assert (=> bs!3369 (= (dynLambda!544 lambda!3426 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426)))))

(assert (=> bs!3369 m!15817))

(assert (=> bs!3369 m!15817))

(assert (=> bs!3369 m!15809))

(declare-fun m!15825 () Bool)

(assert (=> bs!3369 m!15825))

(assert (=> b!12673 d!9941))

(declare-fun b_lambda!7201 () Bool)

(assert (= b_lambda!7169 (or b!12643 b_lambda!7201)))

(declare-fun bs!3370 () Bool)

(declare-fun d!9943 () Bool)

(assert (= bs!3370 (and d!9943 b!12643)))

(assert (=> bs!3370 (= (dynLambda!544 lambda!3430 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430)))))

(assert (=> bs!3370 m!15817))

(assert (=> bs!3370 m!15817))

(assert (=> bs!3370 m!15759))

(declare-fun m!15827 () Bool)

(assert (=> bs!3370 m!15827))

(assert (=> b!12652 d!9943))

(declare-fun b_lambda!7203 () Bool)

(assert (= b_lambda!7177 (or b!12644 b_lambda!7203)))

(declare-fun bs!3371 () Bool)

(declare-fun d!9945 () Bool)

(assert (= bs!3371 (and d!9945 b!12644)))

(assert (=> bs!3371 (= (dynLambda!544 lambda!3433 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433) (head!512 (tail!524 (tail!524 xs!418)))))))

(assert (=> bs!3371 m!15777))

(declare-fun m!15829 () Bool)

(assert (=> bs!3371 m!15829))

(assert (=> b!12661 d!9945))

(declare-fun b_lambda!7205 () Bool)

(assert (= b_lambda!7183 (or b!12636 b_lambda!7205)))

(declare-fun bs!3372 () Bool)

(declare-fun d!9947 () Bool)

(assert (= bs!3372 (and d!9947 b!12636)))

(assert (=> bs!3372 (= (dynLambda!544 lambda!3428 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428)))))

(assert (=> bs!3372 m!15817))

(assert (=> bs!3372 m!15817))

(assert (=> bs!3372 m!15799))

(declare-fun m!15831 () Bool)

(assert (=> bs!3372 m!15831))

(assert (=> b!12669 d!9947))

(declare-fun b_lambda!7207 () Bool)

(assert (= b_lambda!7185 (or b!12635 b_lambda!7207)))

(declare-fun bs!3373 () Bool)

(declare-fun d!9949 () Bool)

(assert (= bs!3373 (and d!9949 b!12635)))

(assert (=> bs!3373 (= (dynLambda!544 lambda!3427 (head!512 (tail!524 (tail!524 xs!418))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427) (head!512 (tail!524 (tail!524 xs!418)))))))

(assert (=> bs!3373 m!15805))

(declare-fun m!15833 () Bool)

(assert (=> bs!3373 m!15833))

(assert (=> b!12671 d!9949))

(push 1)

(assert (not b_lambda!7157))

(assert (not b_lambda!7203))

(assert (not b_lambda!7199))

(assert (not bs!3371))

(assert (not b_lambda!7165))

(assert (not bs!3369))

(assert (not b_lambda!7161))

(assert (not bs!3372))

(assert (not b!12654))

(assert (not bs!3373))

(assert (not bs!3365))

(assert (not b_lambda!7143))

(assert (not b!12661))

(assert (not bs!3368))

(assert (not b_lambda!7159))

(assert (not bs!3366))

(assert (not b!12659))

(assert (not b!12665))

(assert (not bs!3370))

(assert (not d!9893))

(assert (not b_lambda!7167))

(assert (not b_lambda!7205))

(assert (not b!12662))

(assert (not d!9921))

(assert (not b!12671))

(assert (not b_lambda!7191))

(assert (not b_lambda!7141))

(assert (not bs!3364))

(assert (not b!12657))

(assert (not b_lambda!7195))

(assert (not b_lambda!7163))

(assert (not bs!3367))

(assert (not b_lambda!7189))

(assert (not b!12667))

(assert (not b_lambda!7193))

(assert (not b!12652))

(assert (not b_lambda!7197))

(assert (not b_lambda!7201))

(assert (not b!12669))

(assert (not b_lambda!7207))

(assert (not b!12673))

(assert (not b!12663))

(assert (not d!9905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9951 () Bool)

(declare-fun c!3569 () Bool)

(assert (=> d!9951 (= c!3569 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6943 () Balance!385)

(assert (=> d!9951 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430) e!6943)))

(declare-fun b!12674 () Bool)

(assert (=> b!12674 (= e!6943 (Balance!386 0 0))))

(declare-fun b!12675 () Bool)

(assert (=> b!12675 (= e!6943 (dynLambda!544 lambda!3430 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3430)))))

(assert (= (and d!9951 c!3569) b!12674))

(assert (= (and d!9951 (not c!3569)) b!12675))

(declare-fun b_lambda!7209 () Bool)

(assert (=> (not b_lambda!7209) (not b!12675)))

(declare-fun m!15835 () Bool)

(assert (=> b!12675 m!15835))

(assert (=> b!12675 m!15835))

(declare-fun m!15837 () Bool)

(assert (=> b!12675 m!15837))

(assert (=> b!12652 d!9951))

(declare-fun d!9953 () Bool)

(declare-fun lt!1836 () Int)

(assert (=> d!9953 (= lt!1836 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430))))))

(assert (=> d!9953 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430))) lt!1836) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3430))) lt!1836)))))

(declare-fun bs!3374 () Bool)

(assert (= bs!3374 d!9953))

(declare-fun m!15839 () Bool)

(assert (=> bs!3374 m!15839))

(assert (=> bs!3370 d!9953))

(declare-fun d!9955 () Bool)

(assert (=> d!9955 (= (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (ite (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (Balance!386 1 0) (Balance!386 0 1)))))

(assert (=> bs!3370 d!9955))

(declare-fun d!9957 () Bool)

(declare-fun c!3570 () Bool)

(assert (=> d!9957 (= c!3570 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6944 () Balance!385)

(assert (=> d!9957 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427) e!6944)))

(declare-fun b!12676 () Bool)

(assert (=> b!12676 (= e!6944 (Balance!386 0 0))))

(declare-fun b!12677 () Bool)

(assert (=> b!12677 (= e!6944 (dynLambda!544 lambda!3427 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3427)))))

(assert (= (and d!9957 c!3570) b!12676))

(assert (= (and d!9957 (not c!3570)) b!12677))

(declare-fun b_lambda!7211 () Bool)

(assert (=> (not b_lambda!7211) (not b!12677)))

(declare-fun m!15841 () Bool)

(assert (=> b!12677 m!15841))

(assert (=> b!12677 m!15841))

(declare-fun m!15843 () Bool)

(assert (=> b!12677 m!15843))

(assert (=> b!12671 d!9957))

(declare-fun d!9959 () Bool)

(declare-fun lt!1837 () Int)

(assert (=> d!9959 (= lt!1837 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432))))))

(assert (=> d!9959 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432))) lt!1837) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432))) lt!1837)))))

(declare-fun bs!3375 () Bool)

(assert (= bs!3375 d!9959))

(declare-fun m!15845 () Bool)

(assert (=> bs!3375 m!15845))

(assert (=> bs!3367 d!9959))

(assert (=> bs!3367 d!9955))

(declare-fun d!9961 () Bool)

(declare-fun c!3571 () Bool)

(assert (=> d!9961 (= c!3571 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6945 () Balance!385)

(assert (=> d!9961 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429) e!6945)))

(declare-fun b!12678 () Bool)

(assert (=> b!12678 (= e!6945 (Balance!386 0 0))))

(declare-fun b!12679 () Bool)

(assert (=> b!12679 (= e!6945 (dynLambda!544 lambda!3429 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3429)))))

(assert (= (and d!9961 c!3571) b!12678))

(assert (= (and d!9961 (not c!3571)) b!12679))

(declare-fun b_lambda!7213 () Bool)

(assert (=> (not b_lambda!7213) (not b!12679)))

(declare-fun m!15847 () Bool)

(assert (=> b!12679 m!15847))

(assert (=> b!12679 m!15847))

(declare-fun m!15849 () Bool)

(assert (=> b!12679 m!15849))

(assert (=> b!12665 d!9961))

(declare-fun d!9963 () Bool)

(assert (=> d!9963 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429) (head!512 (tail!524 (tail!524 xs!418)))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3429)) 1)))))))

(assert (=> bs!3368 d!9963))

(declare-fun d!9965 () Bool)

(declare-fun lt!1838 () Int)

(assert (=> d!9965 (= lt!1838 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428))))))

(assert (=> d!9965 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428))) lt!1838) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428))) lt!1838)))))

(declare-fun bs!3376 () Bool)

(assert (= bs!3376 d!9965))

(declare-fun m!15851 () Bool)

(assert (=> bs!3376 m!15851))

(assert (=> bs!3372 d!9965))

(assert (=> bs!3372 d!9955))

(declare-fun d!9967 () Bool)

(assert (=> d!9967 (= (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426))) (ite (<= (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426))) (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3426))))))

(assert (=> d!9905 d!9967))

(declare-fun d!9969 () Bool)

(declare-fun c!3572 () Bool)

(assert (=> d!9969 (= c!3572 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6946 () Balance!385)

(assert (=> d!9969 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417) e!6946)))

(declare-fun b!12680 () Bool)

(assert (=> b!12680 (= e!6946 (Balance!386 0 0))))

(declare-fun b!12681 () Bool)

(assert (=> b!12681 (= e!6946 (dynLambda!544 lambda!3417 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3417)))))

(assert (= (and d!9969 c!3572) b!12680))

(assert (= (and d!9969 (not c!3572)) b!12681))

(declare-fun b_lambda!7215 () Bool)

(assert (=> (not b_lambda!7215) (not b!12681)))

(declare-fun m!15853 () Bool)

(assert (=> b!12681 m!15853))

(assert (=> b!12681 m!15853))

(declare-fun m!15855 () Bool)

(assert (=> b!12681 m!15855))

(assert (=> b!12667 d!9969))

(declare-fun d!9971 () Bool)

(assert (=> d!9971 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431) (head!512 (tail!524 (tail!524 xs!418)))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431)) 1)))))))

(assert (=> bs!3364 d!9971))

(declare-fun d!9973 () Bool)

(declare-fun lt!1839 () Int)

(assert (=> d!9973 (= lt!1839 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416))))))

(assert (=> d!9973 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416))) lt!1839) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416))) lt!1839)))))

(declare-fun bs!3377 () Bool)

(assert (= bs!3377 d!9973))

(declare-fun m!15857 () Bool)

(assert (=> bs!3377 m!15857))

(assert (=> bs!3366 d!9973))

(assert (=> bs!3366 d!9955))

(declare-fun d!9975 () Bool)

(declare-fun c!3573 () Bool)

(assert (=> d!9975 (= c!3573 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6947 () Balance!385)

(assert (=> d!9975 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3416) e!6947)))

(declare-fun b!12682 () Bool)

(assert (=> b!12682 (= e!6947 (Balance!386 0 0))))

(declare-fun b!12683 () Bool)

(assert (=> b!12683 (= e!6947 (dynLambda!544 lambda!3416 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3416)))))

(assert (= (and d!9975 c!3573) b!12682))

(assert (= (and d!9975 (not c!3573)) b!12683))

(declare-fun b_lambda!7217 () Bool)

(assert (=> (not b_lambda!7217) (not b!12683)))

(declare-fun m!15859 () Bool)

(assert (=> b!12683 m!15859))

(assert (=> b!12683 m!15859))

(declare-fun m!15861 () Bool)

(assert (=> b!12683 m!15861))

(assert (=> b!12657 d!9975))

(declare-fun d!9977 () Bool)

(declare-fun c!3574 () Bool)

(assert (=> d!9977 (= c!3574 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6948 () Balance!385)

(assert (=> d!9977 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3436) e!6948)))

(declare-fun b!12684 () Bool)

(assert (=> b!12684 (= e!6948 (Balance!386 0 0))))

(declare-fun b!12685 () Bool)

(assert (=> b!12685 (= e!6948 (dynLambda!544 lambda!3436 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3436)))))

(assert (= (and d!9977 c!3574) b!12684))

(assert (= (and d!9977 (not c!3574)) b!12685))

(declare-fun b_lambda!7219 () Bool)

(assert (=> (not b_lambda!7219) (not b!12685)))

(declare-fun m!15863 () Bool)

(assert (=> b!12685 m!15863))

(assert (=> b!12685 m!15863))

(declare-fun m!15865 () Bool)

(assert (=> b!12685 m!15865))

(assert (=> b!12663 d!9977))

(declare-fun d!9979 () Bool)

(declare-fun c!3575 () Bool)

(assert (=> d!9979 (= c!3575 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6949 () Balance!385)

(assert (=> d!9979 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3437) e!6949)))

(declare-fun b!12686 () Bool)

(assert (=> b!12686 (= e!6949 (Balance!386 0 0))))

(declare-fun b!12687 () Bool)

(assert (=> b!12687 (= e!6949 (dynLambda!544 lambda!3437 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3437)))))

(assert (= (and d!9979 c!3575) b!12686))

(assert (= (and d!9979 (not c!3575)) b!12687))

(declare-fun b_lambda!7221 () Bool)

(assert (=> (not b_lambda!7221) (not b!12687)))

(declare-fun m!15867 () Bool)

(assert (=> b!12687 m!15867))

(assert (=> b!12687 m!15867))

(declare-fun m!15869 () Bool)

(assert (=> b!12687 m!15869))

(assert (=> b!12663 d!9979))

(declare-fun bs!3378 () Bool)

(declare-fun b!12688 () Bool)

(assert (= bs!3378 (and b!12688 b!12662)))

(declare-fun lambda!3438 () Int)

(assert (=> bs!3378 (not (= lambda!3438 lambda!3435))))

(declare-fun bs!3379 () Bool)

(assert (= bs!3379 (and b!12688 b!12635)))

(assert (=> bs!3379 (not (= lambda!3438 lambda!3427))))

(assert (=> bs!3378 (= lambda!3438 lambda!3434)))

(declare-fun bs!3380 () Bool)

(assert (= bs!3380 (and b!12688 b!12622)))

(assert (=> bs!3380 (not (= lambda!3438 lambda!3417))))

(declare-fun bs!3381 () Bool)

(assert (= bs!3381 (and b!12688 b!12643)))

(assert (=> bs!3381 (= lambda!3438 lambda!3430)))

(assert (=> bs!3379 (= lambda!3438 lambda!3426)))

(assert (=> bs!3380 (= lambda!3438 lambda!3416)))

(declare-fun bs!3382 () Bool)

(assert (= bs!3382 (and b!12688 b!12663)))

(assert (=> bs!3382 (not (= lambda!3438 lambda!3437))))

(declare-fun bs!3383 () Bool)

(assert (= bs!3383 (and b!12688 b!12644)))

(assert (=> bs!3383 (not (= lambda!3438 lambda!3433))))

(assert (=> bs!3382 (= lambda!3438 lambda!3436)))

(declare-fun bs!3384 () Bool)

(assert (= bs!3384 (and b!12688 b!12636)))

(assert (=> bs!3384 (= lambda!3438 lambda!3428)))

(assert (=> bs!3384 (not (= lambda!3438 lambda!3429))))

(assert (=> bs!3383 (= lambda!3438 lambda!3432)))

(assert (=> bs!3381 (not (= lambda!3438 lambda!3431))))

(declare-fun lambda!3439 () Int)

(assert (=> bs!3378 (= lambda!3439 lambda!3435)))

(assert (=> b!12688 (not (= lambda!3439 lambda!3438))))

(assert (=> bs!3379 (= lambda!3439 lambda!3427)))

(assert (=> bs!3378 (not (= lambda!3439 lambda!3434))))

(assert (=> bs!3380 (= lambda!3439 lambda!3417)))

(assert (=> bs!3381 (not (= lambda!3439 lambda!3430))))

(assert (=> bs!3379 (not (= lambda!3439 lambda!3426))))

(assert (=> bs!3380 (not (= lambda!3439 lambda!3416))))

(assert (=> bs!3382 (= lambda!3439 lambda!3437)))

(assert (=> bs!3383 (= lambda!3439 lambda!3433)))

(assert (=> bs!3382 (not (= lambda!3439 lambda!3436))))

(assert (=> bs!3384 (not (= lambda!3439 lambda!3428))))

(assert (=> bs!3384 (= lambda!3439 lambda!3429)))

(assert (=> bs!3383 (not (= lambda!3439 lambda!3432))))

(assert (=> bs!3381 (= lambda!3439 lambda!3431)))

(declare-fun bs!3385 () Bool)

(declare-fun b!12689 () Bool)

(assert (= bs!3385 (and b!12689 b!12688)))

(declare-fun lambda!3440 () Int)

(assert (=> bs!3385 (not (= lambda!3440 lambda!3439))))

(declare-fun bs!3386 () Bool)

(assert (= bs!3386 (and b!12689 b!12662)))

(assert (=> bs!3386 (not (= lambda!3440 lambda!3435))))

(assert (=> bs!3385 (= lambda!3440 lambda!3438)))

(declare-fun bs!3387 () Bool)

(assert (= bs!3387 (and b!12689 b!12635)))

(assert (=> bs!3387 (not (= lambda!3440 lambda!3427))))

(assert (=> bs!3386 (= lambda!3440 lambda!3434)))

(declare-fun bs!3388 () Bool)

(assert (= bs!3388 (and b!12689 b!12622)))

(assert (=> bs!3388 (not (= lambda!3440 lambda!3417))))

(declare-fun bs!3389 () Bool)

(assert (= bs!3389 (and b!12689 b!12643)))

(assert (=> bs!3389 (= lambda!3440 lambda!3430)))

(assert (=> bs!3387 (= lambda!3440 lambda!3426)))

(assert (=> bs!3388 (= lambda!3440 lambda!3416)))

(declare-fun bs!3390 () Bool)

(assert (= bs!3390 (and b!12689 b!12663)))

(assert (=> bs!3390 (not (= lambda!3440 lambda!3437))))

(declare-fun bs!3391 () Bool)

(assert (= bs!3391 (and b!12689 b!12644)))

(assert (=> bs!3391 (not (= lambda!3440 lambda!3433))))

(assert (=> bs!3390 (= lambda!3440 lambda!3436)))

(declare-fun bs!3392 () Bool)

(assert (= bs!3392 (and b!12689 b!12636)))

(assert (=> bs!3392 (= lambda!3440 lambda!3428)))

(assert (=> bs!3392 (not (= lambda!3440 lambda!3429))))

(assert (=> bs!3391 (= lambda!3440 lambda!3432)))

(assert (=> bs!3389 (not (= lambda!3440 lambda!3431))))

(declare-fun lambda!3441 () Int)

(assert (=> b!12689 (not (= lambda!3441 lambda!3440))))

(assert (=> bs!3385 (= lambda!3441 lambda!3439)))

(assert (=> bs!3386 (= lambda!3441 lambda!3435)))

(assert (=> bs!3385 (not (= lambda!3441 lambda!3438))))

(assert (=> bs!3387 (= lambda!3441 lambda!3427)))

(assert (=> bs!3386 (not (= lambda!3441 lambda!3434))))

(assert (=> bs!3388 (= lambda!3441 lambda!3417)))

(assert (=> bs!3389 (not (= lambda!3441 lambda!3430))))

(assert (=> bs!3387 (not (= lambda!3441 lambda!3426))))

(assert (=> bs!3388 (not (= lambda!3441 lambda!3416))))

(assert (=> bs!3390 (= lambda!3441 lambda!3437)))

(assert (=> bs!3391 (= lambda!3441 lambda!3433)))

(assert (=> bs!3390 (not (= lambda!3441 lambda!3436))))

(assert (=> bs!3392 (not (= lambda!3441 lambda!3428))))

(assert (=> bs!3392 (= lambda!3441 lambda!3429)))

(assert (=> bs!3391 (not (= lambda!3441 lambda!3432))))

(assert (=> bs!3389 (= lambda!3441 lambda!3431)))

(declare-fun e!6950 () Bool)

(assert (=> b!12689 (= e!6950 (= (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3440) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3441)))))

(declare-fun lt!1840 () Bool)

(assert (=> b!12689 (= lt!1840 (folds_equivalence!0 (tail!524 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))))))))

(declare-fun d!9981 () Bool)

(assert (=> d!9981 e!6950))

(declare-fun c!3576 () Bool)

(assert (=> d!9981 (= c!3576 (is-Nil!295 (tail!524 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> d!9981 (= (folds_equivalence!0 (tail!524 (tail!524 (tail!524 (tail!524 xs!418))))) true)))

(assert (=> b!12688 (= e!6950 (= (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3438) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3439)))))

(assert (= (and d!9981 c!3576) b!12688))

(assert (= (and d!9981 (not c!3576)) b!12689))

(declare-fun m!15871 () Bool)

(assert (=> b!12689 m!15871))

(declare-fun m!15873 () Bool)

(assert (=> b!12689 m!15873))

(declare-fun m!15875 () Bool)

(assert (=> b!12689 m!15875))

(declare-fun m!15877 () Bool)

(assert (=> b!12688 m!15877))

(declare-fun m!15879 () Bool)

(assert (=> b!12688 m!15879))

(assert (=> b!12663 d!9981))

(declare-fun d!9983 () Bool)

(declare-fun c!3577 () Bool)

(assert (=> d!9983 (= c!3577 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6951 () Balance!385)

(assert (=> d!9983 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3431) e!6951)))

(declare-fun b!12690 () Bool)

(assert (=> b!12690 (= e!6951 (Balance!386 0 0))))

(declare-fun b!12691 () Bool)

(assert (=> b!12691 (= e!6951 (dynLambda!544 lambda!3431 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3431)))))

(assert (= (and d!9983 c!3577) b!12690))

(assert (= (and d!9983 (not c!3577)) b!12691))

(declare-fun b_lambda!7223 () Bool)

(assert (=> (not b_lambda!7223) (not b!12691)))

(declare-fun m!15881 () Bool)

(assert (=> b!12691 m!15881))

(assert (=> b!12691 m!15881))

(declare-fun m!15883 () Bool)

(assert (=> b!12691 m!15883))

(assert (=> b!12654 d!9983))

(declare-fun d!9985 () Bool)

(assert (=> d!9985 (= (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416))) (ite (<= (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416))) (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3416))))))

(assert (=> d!9921 d!9985))

(declare-fun d!9987 () Bool)

(assert (=> d!9987 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427) (head!512 (tail!524 (tail!524 xs!418)))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3427)) 1)))))))

(assert (=> bs!3373 d!9987))

(declare-fun d!9989 () Bool)

(declare-fun c!3578 () Bool)

(assert (=> d!9989 (= c!3578 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6952 () Balance!385)

(assert (=> d!9989 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3432) e!6952)))

(declare-fun b!12692 () Bool)

(assert (=> b!12692 (= e!6952 (Balance!386 0 0))))

(declare-fun b!12693 () Bool)

(assert (=> b!12693 (= e!6952 (dynLambda!544 lambda!3432 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3432)))))

(assert (= (and d!9989 c!3578) b!12692))

(assert (= (and d!9989 (not c!3578)) b!12693))

(declare-fun b_lambda!7225 () Bool)

(assert (=> (not b_lambda!7225) (not b!12693)))

(declare-fun m!15885 () Bool)

(assert (=> b!12693 m!15885))

(assert (=> b!12693 m!15885))

(declare-fun m!15887 () Bool)

(assert (=> b!12693 m!15887))

(assert (=> b!12659 d!9989))

(declare-fun d!9991 () Bool)

(declare-fun c!3579 () Bool)

(assert (=> d!9991 (= c!3579 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6953 () Balance!385)

(assert (=> d!9991 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3434) e!6953)))

(declare-fun b!12694 () Bool)

(assert (=> b!12694 (= e!6953 (Balance!386 0 0))))

(declare-fun b!12695 () Bool)

(assert (=> b!12695 (= e!6953 (dynLambda!544 lambda!3434 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3434)))))

(assert (= (and d!9991 c!3579) b!12694))

(assert (= (and d!9991 (not c!3579)) b!12695))

(declare-fun b_lambda!7227 () Bool)

(assert (=> (not b_lambda!7227) (not b!12695)))

(declare-fun m!15889 () Bool)

(assert (=> b!12695 m!15889))

(assert (=> b!12695 m!15889))

(declare-fun m!15891 () Bool)

(assert (=> b!12695 m!15891))

(assert (=> b!12662 d!9991))

(declare-fun d!9993 () Bool)

(declare-fun c!3580 () Bool)

(assert (=> d!9993 (= c!3580 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6954 () Balance!385)

(assert (=> d!9993 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3435) e!6954)))

(declare-fun b!12696 () Bool)

(assert (=> b!12696 (= e!6954 (Balance!386 0 0))))

(declare-fun b!12697 () Bool)

(assert (=> b!12697 (= e!6954 (dynLambda!544 lambda!3435 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3435)))))

(assert (= (and d!9993 c!3580) b!12696))

(assert (= (and d!9993 (not c!3580)) b!12697))

(declare-fun b_lambda!7229 () Bool)

(assert (=> (not b_lambda!7229) (not b!12697)))

(declare-fun m!15893 () Bool)

(assert (=> b!12697 m!15893))

(assert (=> b!12697 m!15893))

(declare-fun m!15895 () Bool)

(assert (=> b!12697 m!15895))

(assert (=> b!12662 d!9993))

(declare-fun d!9995 () Bool)

(declare-fun c!3581 () Bool)

(assert (=> d!9995 (= c!3581 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6955 () Balance!385)

(assert (=> d!9995 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3428) e!6955)))

(declare-fun b!12698 () Bool)

(assert (=> b!12698 (= e!6955 (Balance!386 0 0))))

(declare-fun b!12699 () Bool)

(assert (=> b!12699 (= e!6955 (dynLambda!544 lambda!3428 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3428)))))

(assert (= (and d!9995 c!3581) b!12698))

(assert (= (and d!9995 (not c!3581)) b!12699))

(declare-fun b_lambda!7231 () Bool)

(assert (=> (not b_lambda!7231) (not b!12699)))

(declare-fun m!15897 () Bool)

(assert (=> b!12699 m!15897))

(assert (=> b!12699 m!15897))

(declare-fun m!15899 () Bool)

(assert (=> b!12699 m!15899))

(assert (=> b!12669 d!9995))

(declare-fun d!9997 () Bool)

(declare-fun lt!1841 () Int)

(assert (=> d!9997 (= lt!1841 (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426))))))

(assert (=> d!9997 (= (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426)) (Balance!386 (- (+ (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426))) lt!1841) (- (+ (extraClose!233 (fromParenthesis!0 (head!512 (tail!524 (tail!524 xs!418))))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426))) lt!1841)))))

(declare-fun bs!3393 () Bool)

(assert (= bs!3393 d!9997))

(declare-fun m!15901 () Bool)

(assert (=> bs!3393 m!15901))

(assert (=> bs!3369 d!9997))

(assert (=> bs!3369 d!9955))

(declare-fun d!9999 () Bool)

(declare-fun c!3582 () Bool)

(assert (=> d!9999 (= c!3582 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6956 () Balance!385)

(assert (=> d!9999 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3426) e!6956)))

(declare-fun b!12700 () Bool)

(assert (=> b!12700 (= e!6956 (Balance!386 0 0))))

(declare-fun b!12701 () Bool)

(assert (=> b!12701 (= e!6956 (dynLambda!544 lambda!3426 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3426)))))

(assert (= (and d!9999 c!3582) b!12700))

(assert (= (and d!9999 (not c!3582)) b!12701))

(declare-fun b_lambda!7233 () Bool)

(assert (=> (not b_lambda!7233) (not b!12701)))

(declare-fun m!15903 () Bool)

(assert (=> b!12701 m!15903))

(assert (=> b!12701 m!15903))

(declare-fun m!15905 () Bool)

(assert (=> b!12701 m!15905))

(assert (=> b!12673 d!9999))

(declare-fun d!10001 () Bool)

(assert (=> d!10001 (= (min!4 (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428))) (ite (<= (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428))) (extraOpen!233 (fromParenthesis!0 (head!512 (tail!524 xs!418)))) (extraClose!233 (foldRight!71 (tail!524 (tail!524 xs!418)) (Balance!386 0 0) lambda!3428))))))

(assert (=> d!9893 d!10001))

(declare-fun d!10003 () Bool)

(declare-fun c!3583 () Bool)

(assert (=> d!10003 (= c!3583 (is-Nil!295 (tail!524 (tail!524 (tail!524 xs!418)))))))

(declare-fun e!6957 () Balance!385)

(assert (=> d!10003 (= (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433) e!6957)))

(declare-fun b!12702 () Bool)

(assert (=> b!12702 (= e!6957 (Balance!386 0 0))))

(declare-fun b!12703 () Bool)

(assert (=> b!12703 (= e!6957 (dynLambda!544 lambda!3433 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3433)))))

(assert (= (and d!10003 c!3583) b!12702))

(assert (= (and d!10003 (not c!3583)) b!12703))

(declare-fun b_lambda!7235 () Bool)

(assert (=> (not b_lambda!7235) (not b!12703)))

(declare-fun m!15907 () Bool)

(assert (=> b!12703 m!15907))

(assert (=> b!12703 m!15907))

(declare-fun m!15909 () Bool)

(assert (=> b!12703 m!15909))

(assert (=> b!12661 d!10003))

(declare-fun d!10005 () Bool)

(assert (=> d!10005 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433) (head!512 (tail!524 (tail!524 xs!418)))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3433)) 1)))))))

(assert (=> bs!3371 d!10005))

(declare-fun d!10007 () Bool)

(assert (=> d!10007 (= (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417) (head!512 (tail!524 (tail!524 xs!418)))) (ite (and (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (> (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) 0)) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) (- (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) 1)) (ite (is-OpenParenthesis!73 (head!512 (tail!524 (tail!524 xs!418)))) (Balance!386 (+ (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) 1) (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417))) (Balance!386 (extraOpen!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) (+ (extraClose!233 (foldRight!71 (tail!524 (tail!524 (tail!524 xs!418))) (Balance!386 0 0) lambda!3417)) 1)))))))

(assert (=> bs!3365 d!10007))

(declare-fun b_lambda!7237 () Bool)

(assert (= b_lambda!7235 (or b!12644 b_lambda!7237)))

(declare-fun bs!3394 () Bool)

(declare-fun d!10009 () Bool)

(assert (= bs!3394 (and d!10009 b!12644)))

(assert (=> bs!3394 (= (dynLambda!544 lambda!3433 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3433)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3433) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3394 m!15907))

(declare-fun m!15911 () Bool)

(assert (=> bs!3394 m!15911))

(assert (=> b!12703 d!10009))

(declare-fun b_lambda!7239 () Bool)

(assert (= b_lambda!7225 (or b!12644 b_lambda!7239)))

(declare-fun bs!3395 () Bool)

(declare-fun d!10011 () Bool)

(assert (= bs!3395 (and d!10011 b!12644)))

(assert (=> bs!3395 (= (dynLambda!544 lambda!3432 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3432)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3432)))))

(declare-fun m!15913 () Bool)

(assert (=> bs!3395 m!15913))

(assert (=> bs!3395 m!15913))

(assert (=> bs!3395 m!15885))

(declare-fun m!15915 () Bool)

(assert (=> bs!3395 m!15915))

(assert (=> b!12693 d!10011))

(declare-fun b_lambda!7241 () Bool)

(assert (= b_lambda!7209 (or b!12643 b_lambda!7241)))

(declare-fun bs!3396 () Bool)

(declare-fun d!10013 () Bool)

(assert (= bs!3396 (and d!10013 b!12643)))

(assert (=> bs!3396 (= (dynLambda!544 lambda!3430 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3430)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3430)))))

(assert (=> bs!3396 m!15913))

(assert (=> bs!3396 m!15913))

(assert (=> bs!3396 m!15835))

(declare-fun m!15917 () Bool)

(assert (=> bs!3396 m!15917))

(assert (=> b!12675 d!10013))

(declare-fun b_lambda!7243 () Bool)

(assert (= b_lambda!7213 (or b!12636 b_lambda!7243)))

(declare-fun bs!3397 () Bool)

(declare-fun d!10015 () Bool)

(assert (= bs!3397 (and d!10015 b!12636)))

(assert (=> bs!3397 (= (dynLambda!544 lambda!3429 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3429)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3429) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3397 m!15847))

(declare-fun m!15919 () Bool)

(assert (=> bs!3397 m!15919))

(assert (=> b!12679 d!10015))

(declare-fun b_lambda!7245 () Bool)

(assert (= b_lambda!7217 (or b!12622 b_lambda!7245)))

(declare-fun bs!3398 () Bool)

(declare-fun d!10017 () Bool)

(assert (= bs!3398 (and d!10017 b!12622)))

(assert (=> bs!3398 (= (dynLambda!544 lambda!3416 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3416)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3416)))))

(assert (=> bs!3398 m!15913))

(assert (=> bs!3398 m!15913))

(assert (=> bs!3398 m!15859))

(declare-fun m!15921 () Bool)

(assert (=> bs!3398 m!15921))

(assert (=> b!12683 d!10017))

(declare-fun b_lambda!7247 () Bool)

(assert (= b_lambda!7221 (or b!12663 b_lambda!7247)))

(declare-fun bs!3399 () Bool)

(declare-fun d!10019 () Bool)

(assert (= bs!3399 (and d!10019 b!12663)))

(assert (=> bs!3399 (= (dynLambda!544 lambda!3437 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3437)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3437) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3399 m!15867))

(declare-fun m!15923 () Bool)

(assert (=> bs!3399 m!15923))

(assert (=> b!12687 d!10019))

(declare-fun b_lambda!7249 () Bool)

(assert (= b_lambda!7223 (or b!12643 b_lambda!7249)))

(declare-fun bs!3400 () Bool)

(declare-fun d!10021 () Bool)

(assert (= bs!3400 (and d!10021 b!12643)))

(assert (=> bs!3400 (= (dynLambda!544 lambda!3431 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3431)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3431) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3400 m!15881))

(declare-fun m!15925 () Bool)

(assert (=> bs!3400 m!15925))

(assert (=> b!12691 d!10021))

(declare-fun b_lambda!7251 () Bool)

(assert (= b_lambda!7233 (or b!12635 b_lambda!7251)))

(declare-fun bs!3401 () Bool)

(declare-fun d!10023 () Bool)

(assert (= bs!3401 (and d!10023 b!12635)))

(assert (=> bs!3401 (= (dynLambda!544 lambda!3426 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3426)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3426)))))

(assert (=> bs!3401 m!15913))

(assert (=> bs!3401 m!15913))

(assert (=> bs!3401 m!15903))

(declare-fun m!15927 () Bool)

(assert (=> bs!3401 m!15927))

(assert (=> b!12701 d!10023))

(declare-fun b_lambda!7253 () Bool)

(assert (= b_lambda!7229 (or b!12662 b_lambda!7253)))

(declare-fun bs!3402 () Bool)

(declare-fun d!10025 () Bool)

(assert (= bs!3402 (and d!10025 b!12662)))

(assert (=> bs!3402 (= (dynLambda!544 lambda!3435 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3435)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3435) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3402 m!15893))

(declare-fun m!15929 () Bool)

(assert (=> bs!3402 m!15929))

(assert (=> b!12697 d!10025))

(declare-fun b_lambda!7255 () Bool)

(assert (= b_lambda!7215 (or b!12622 b_lambda!7255)))

(declare-fun bs!3403 () Bool)

(declare-fun d!10027 () Bool)

(assert (= bs!3403 (and d!10027 b!12622)))

(assert (=> bs!3403 (= (dynLambda!544 lambda!3417 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3417)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3417) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3403 m!15853))

(declare-fun m!15931 () Bool)

(assert (=> bs!3403 m!15931))

(assert (=> b!12681 d!10027))

(declare-fun b_lambda!7257 () Bool)

(assert (= b_lambda!7211 (or b!12635 b_lambda!7257)))

(declare-fun bs!3404 () Bool)

(declare-fun d!10029 () Bool)

(assert (= bs!3404 (and d!10029 b!12635)))

(assert (=> bs!3404 (= (dynLambda!544 lambda!3427 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3427)) (+$colon!0 (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3427) (head!512 (tail!524 (tail!524 (tail!524 xs!418))))))))

(assert (=> bs!3404 m!15841))

(declare-fun m!15933 () Bool)

(assert (=> bs!3404 m!15933))

(assert (=> b!12677 d!10029))

(declare-fun b_lambda!7259 () Bool)

(assert (= b_lambda!7219 (or b!12663 b_lambda!7259)))

(declare-fun bs!3405 () Bool)

(declare-fun d!10031 () Bool)

(assert (= bs!3405 (and d!10031 b!12663)))

(assert (=> bs!3405 (= (dynLambda!544 lambda!3436 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3436)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3436)))))

(assert (=> bs!3405 m!15913))

(assert (=> bs!3405 m!15913))

(assert (=> bs!3405 m!15863))

(declare-fun m!15935 () Bool)

(assert (=> bs!3405 m!15935))

(assert (=> b!12685 d!10031))

(declare-fun b_lambda!7261 () Bool)

(assert (= b_lambda!7227 (or b!12662 b_lambda!7261)))

(declare-fun bs!3406 () Bool)

(declare-fun d!10033 () Bool)

(assert (= bs!3406 (and d!10033 b!12662)))

(assert (=> bs!3406 (= (dynLambda!544 lambda!3434 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3434)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3434)))))

(assert (=> bs!3406 m!15913))

(assert (=> bs!3406 m!15913))

(assert (=> bs!3406 m!15889))

(declare-fun m!15937 () Bool)

(assert (=> bs!3406 m!15937))

(assert (=> b!12695 d!10033))

(declare-fun b_lambda!7263 () Bool)

(assert (= b_lambda!7231 (or b!12636 b_lambda!7263)))

(declare-fun bs!3407 () Bool)

(declare-fun d!10035 () Bool)

(assert (= bs!3407 (and d!10035 b!12636)))

(assert (=> bs!3407 (= (dynLambda!544 lambda!3428 (head!512 (tail!524 (tail!524 (tail!524 xs!418)))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3428)) (++!3 (fromParenthesis!0 (head!512 (tail!524 (tail!524 (tail!524 xs!418))))) (foldRight!71 (tail!524 (tail!524 (tail!524 (tail!524 xs!418)))) (Balance!386 0 0) lambda!3428)))))

(assert (=> bs!3407 m!15913))

(assert (=> bs!3407 m!15913))

(assert (=> bs!3407 m!15897))

(declare-fun m!15939 () Bool)

(assert (=> bs!3407 m!15939))

(assert (=> b!12699 d!10035))

(push 1)

(assert (not b_lambda!7157))

(assert (not b_lambda!7203))

(assert (not b_lambda!7259))

(assert (not b_lambda!7199))

(assert (not bs!3396))

(assert (not b_lambda!7165))

(assert (not d!9997))

(assert (not b_lambda!7161))

(assert (not b!12683))

(assert (not b!12691))

(assert (not b_lambda!7255))

(assert (not b_lambda!7253))

(assert (not b_lambda!7143))

(assert (not bs!3399))

(assert (not bs!3401))

(assert (not b_lambda!7159))

(assert (not d!9959))

(assert (not b!12688))

(assert (not b_lambda!7239))

(assert (not bs!3397))

(assert (not bs!3406))

(assert (not bs!3400))

(assert (not b!12675))

(assert (not b!12703))

(assert (not b_lambda!7249))

(assert (not b!12695))

(assert (not bs!3394))

(assert (not b!12685))

(assert (not d!9953))

(assert (not b_lambda!7167))

(assert (not b_lambda!7245))

(assert (not b_lambda!7205))

(assert (not bs!3407))

(assert (not bs!3398))

(assert (not b!12679))

(assert (not b!12701))

(assert (not b_lambda!7241))

(assert (not b_lambda!7191))

(assert (not b_lambda!7141))

(assert (not bs!3403))

(assert (not b_lambda!7195))

(assert (not b!12693))

(assert (not bs!3405))

(assert (not b_lambda!7163))

(assert (not b_lambda!7243))

(assert (not b!12689))

(assert (not bs!3402))

(assert (not b_lambda!7261))

(assert (not b_lambda!7247))

(assert (not b_lambda!7189))

(assert (not b!12677))

(assert (not bs!3404))

(assert (not d!9965))

(assert (not b_lambda!7257))

(assert (not b_lambda!7193))

(assert (not b_lambda!7251))

(assert (not b_lambda!7197))

(assert (not b_lambda!7201))

(assert (not b!12699))

(assert (not b_lambda!7237))

(assert (not b_lambda!7207))

(assert (not b!12681))

(assert (not bs!3395))

(assert (not b!12697))

(assert (not b!12687))

(assert (not d!9973))

(assert (not b_lambda!7263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

