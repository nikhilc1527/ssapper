; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2572 () Bool)

(assert start!2572)

(declare-fun b!12608 () Bool)

(declare-fun lambda!3411 () Int)

(declare-fun lambda!3410 () Int)

(assert (=> b!12608 (not (= lambda!3411 lambda!3410))))

(declare-fun res!4728 () Bool)

(declare-fun e!6910 () Bool)

(assert (=> start!2572 (=> (not res!4728) (not e!6910))))

(declare-datatypes () ((Parenthesis!73 (CloseParenthesis!72) (OpenParenthesis!72))))

(declare-datatypes () ((List!296 (Nil!294) (Cons!293 (head!511 Parenthesis!73) (tail!523 List!296)))))

(declare-fun xs!418 () List!296)

(assert (=> start!2572 (= res!4728 (is-Nil!294 xs!418))))

(assert (=> start!2572 e!6910))

(assert (=> start!2572 true))

(declare-datatypes () ((Balance!383 (Balance!384 (extraOpen!232 Int) (extraClose!232 Int)))))

(declare-fun foldRight!70 (List!296 Balance!383 Int) Balance!383)

(assert (=> b!12608 (= e!6910 (not (= (foldRight!70 xs!418 (Balance!384 0 0) lambda!3410) (foldRight!70 xs!418 (Balance!384 0 0) lambda!3411))))))

(assert (= (and start!2572 res!4728) b!12608))

(declare-fun m!15659 () Bool)

(assert (=> b!12608 m!15659))

(declare-fun m!15661 () Bool)

(assert (=> b!12608 m!15661))

(push 1)

(assert (not b!12608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9843 () Bool)

(declare-fun c!3542 () Bool)

(assert (=> d!9843 (= c!3542 (is-Nil!294 xs!418))))

(declare-fun e!6913 () Balance!383)

(assert (=> d!9843 (= (foldRight!70 xs!418 (Balance!384 0 0) lambda!3410) e!6913)))

(declare-fun b!12613 () Bool)

(assert (=> b!12613 (= e!6913 (Balance!384 0 0))))

(declare-fun b!12614 () Bool)

(declare-fun dynLambda!543 (Int Parenthesis!73 Balance!383) Balance!383)

(assert (=> b!12614 (= e!6913 (dynLambda!543 lambda!3410 (head!511 xs!418) (foldRight!70 (tail!523 xs!418) (Balance!384 0 0) lambda!3410)))))

(assert (= (and d!9843 c!3542) b!12613))

(assert (= (and d!9843 (not c!3542)) b!12614))

(declare-fun b_lambda!7129 () Bool)

(assert (=> (not b_lambda!7129) (not b!12614)))

(declare-fun m!15663 () Bool)

(assert (=> b!12614 m!15663))

(assert (=> b!12614 m!15663))

(declare-fun m!15665 () Bool)

(assert (=> b!12614 m!15665))

(assert (=> b!12608 d!9843))

(declare-fun d!9845 () Bool)

(declare-fun c!3543 () Bool)

(assert (=> d!9845 (= c!3543 (is-Nil!294 xs!418))))

(declare-fun e!6914 () Balance!383)

(assert (=> d!9845 (= (foldRight!70 xs!418 (Balance!384 0 0) lambda!3411) e!6914)))

(declare-fun b!12615 () Bool)

(assert (=> b!12615 (= e!6914 (Balance!384 0 0))))

(declare-fun b!12616 () Bool)

(assert (=> b!12616 (= e!6914 (dynLambda!543 lambda!3411 (head!511 xs!418) (foldRight!70 (tail!523 xs!418) (Balance!384 0 0) lambda!3411)))))

(assert (= (and d!9845 c!3543) b!12615))

(assert (= (and d!9845 (not c!3543)) b!12616))

(declare-fun b_lambda!7131 () Bool)

(assert (=> (not b_lambda!7131) (not b!12616)))

(declare-fun m!15667 () Bool)

(assert (=> b!12616 m!15667))

(assert (=> b!12616 m!15667))

(declare-fun m!15669 () Bool)

(assert (=> b!12616 m!15669))

(assert (=> b!12608 d!9845))

(declare-fun b_lambda!7133 () Bool)

(assert (= b_lambda!7129 (or b!12608 b_lambda!7133)))

(declare-fun bs!3328 () Bool)

(declare-fun d!9847 () Bool)

(assert (= bs!3328 (and d!9847 b!12608)))

(declare-fun ++!3 (Balance!383 Balance!383) Balance!383)

(declare-fun fromParenthesis!0 (Parenthesis!73) Balance!383)

(assert (=> bs!3328 (= (dynLambda!543 lambda!3410 (head!511 xs!418) (foldRight!70 (tail!523 xs!418) (Balance!384 0 0) lambda!3410)) (++!3 (fromParenthesis!0 (head!511 xs!418)) (foldRight!70 (tail!523 xs!418) (Balance!384 0 0) lambda!3410)))))

(declare-fun m!15671 () Bool)

(assert (=> bs!3328 m!15671))

(assert (=> bs!3328 m!15671))

(assert (=> bs!3328 m!15663))

(declare-fun m!15673 () Bool)

(assert (=> bs!3328 m!15673))

(assert (=> b!12614 d!9847))

(declare-fun b_lambda!7135 () Bool)

(assert (= b_lambda!7131 (or b!12608 b_lambda!7135)))

(declare-fun bs!3329 () Bool)

(declare-fun d!9849 () Bool)

(assert (= bs!3329 (and d!9849 b!12608)))

(declare-fun +$colon!0 (Balance!383 Parenthesis!73) Balance!383)

(assert (=> bs!3329 (= (dynLambda!543 lambda!3411 (head!511 xs!418) (foldRight!70 (tail!523 xs!418) (Balance!384 0 0) lambda!3411)) (+$colon!0 (foldRight!70 (tail!523 xs!418) (Balance!384 0 0) lambda!3411) (head!511 xs!418)))))

(assert (=> bs!3329 m!15667))

(declare-fun m!15675 () Bool)

(assert (=> bs!3329 m!15675))

(assert (=> b!12616 d!9849))

(push 1)

(assert (not b!12614))

(assert (not b_lambda!7135))

(assert (not b_lambda!7133))

(assert (not b!12616))

(assert (not bs!3329))

(assert (not bs!3328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

