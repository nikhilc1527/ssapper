; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9256 () Bool)

(assert start!9256)

(declare-fun b!65602 () Bool)

(declare-fun e!35583 () Bool)

(declare-datatypes () ((Formula!17 (And!22 (lhs!854 Formula!17) (rhs!854 Formula!17)) (Literal!16 (id!4797 Int)) (Implies!22 (lhs!855 Formula!17) (rhs!855 Formula!17)) (Or!22 (lhs!856 Formula!17) (rhs!856 Formula!17)) (Not!22 (f!4108 Formula!17)))))

(declare-fun f!3805 () Formula!17)

(declare-fun isNNF!1 (Formula!17) Bool)

(assert (=> b!65602 (= e!35583 (not (isNNF!1 f!3805)))))

(declare-fun res!30913 () Bool)

(assert (=> start!9256 (=> (not res!30913) (not e!35583))))

(declare-fun f!3790 () Formula!17)

(assert (=> start!9256 (= res!30913 (isNNF!1 f!3790))))

(assert (=> start!9256 e!35583))

(assert (=> start!9256 true))

(declare-fun b!65599 () Bool)

(declare-fun res!30910 () Bool)

(assert (=> b!65599 (=> (not res!30910) (not e!35583))))

(assert (=> b!65599 (= res!30910 (and (not (is-And!22 f!3790)) (not (is-Literal!16 f!3790)) (is-Implies!22 f!3790)))))

(declare-fun b!65601 () Bool)

(declare-fun res!30911 () Bool)

(assert (=> b!65601 (=> (not res!30911) (not e!35583))))

(assert (=> b!65601 (= res!30911 (= f!3805 (lhs!855 f!3790)))))

(declare-fun b!65600 () Bool)

(declare-fun res!30912 () Bool)

(assert (=> b!65600 (=> (not res!30912) (not e!35583))))

(declare-fun inductVal!324 () Bool)

(declare-fun nnfIsStable!1 (Formula!17) Bool)

(assert (=> b!65600 (= res!30912 (= inductVal!324 (nnfIsStable!1 (rhs!855 f!3790))))))

(assert (= (and start!9256 res!30913) b!65599))

(assert (= (and b!65599 res!30910) b!65600))

(assert (= (and b!65600 res!30912) b!65601))

(assert (= (and b!65601 res!30911) b!65602))

(declare-fun m!69489 () Bool)

(assert (=> b!65602 m!69489))

(declare-fun m!69491 () Bool)

(assert (=> start!9256 m!69491))

(declare-fun m!69493 () Bool)

(assert (=> b!65600 m!69493))

(push 1)

(assert (not b!65600))

(assert (not b!65602))

(assert (not start!9256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!65627 () Bool)

(declare-fun e!35599 () Formula!17)

(declare-fun res!30945 () Formula!17)

(assert (=> b!65627 (= e!35599 res!30945)))

(assert (=> b!65627 true))

(declare-fun b!65628 () Bool)

(declare-fun e!35601 () Bool)

(declare-fun e!35596 () Bool)

(assert (=> b!65628 (= e!35601 e!35596)))

(declare-fun c!14726 () Bool)

(declare-fun lt!12632 () Bool)

(assert (=> b!65628 (= c!14726 (or lt!12632 (is-Or!22 (rhs!855 f!3790))))))

(declare-fun lt!12633 () Formula!17)

(declare-fun e!35600 () Formula!17)

(assert (=> b!65628 (= lt!12633 e!35600)))

(declare-fun c!14728 () Bool)

(assert (=> b!65628 (= c!14728 (or lt!12632 (is-Or!22 (rhs!855 f!3790))))))

(assert (=> b!65628 (= lt!12632 (is-Implies!22 (rhs!855 f!3790)))))

(declare-fun b!65629 () Bool)

(declare-fun nnf!1 (Formula!17) Formula!17)

(assert (=> b!65629 (= e!35599 (nnf!1 (rhs!855 f!3790)))))

(declare-fun b!65630 () Bool)

(declare-fun e!35598 () Bool)

(declare-fun res!30946 () Bool)

(assert (=> b!65630 (= e!35598 res!30946)))

(assert (=> b!65630 true))

(declare-fun b!65631 () Bool)

(declare-fun lt!12629 () Bool)

(assert (=> b!65631 (= e!35598 (nnfIsStable!1 (ite lt!12629 (lhs!854 (rhs!855 f!3790)) (ite (is-Implies!22 (rhs!855 f!3790)) (lhs!855 (rhs!855 f!3790)) (lhs!856 (rhs!855 f!3790))))))))

(declare-fun b!65632 () Bool)

(declare-fun res!30944 () Formula!17)

(assert (=> b!65632 (= e!35600 res!30944)))

(assert (=> b!65632 true))

(assert (=> b!65632 true))

(declare-fun b!65633 () Bool)

(assert (=> b!65633 (= e!35600 (nnf!1 (rhs!855 f!3790)))))

(declare-fun b!65634 () Bool)

(assert (=> b!65634 (= e!35596 (= lt!12633 (rhs!855 f!3790)))))

(declare-fun b!65635 () Bool)

(assert (=> b!65635 (= e!35596 (= (nnf!1 (rhs!855 f!3790)) (rhs!855 f!3790)))))

(declare-fun b!65636 () Bool)

(declare-fun e!35597 () Bool)

(declare-fun res!30943 () Bool)

(assert (=> b!65636 (= e!35597 res!30943)))

(assert (=> b!65636 true))

(declare-fun b!65637 () Bool)

(declare-fun lt!12631 () Formula!17)

(assert (=> b!65637 (= e!35601 (= lt!12631 (rhs!855 f!3790)))))

(declare-fun b!65638 () Bool)

(assert (=> b!65638 (= e!35597 (nnfIsStable!1 (ite lt!12629 (rhs!854 (rhs!855 f!3790)) (ite (is-Implies!22 (rhs!855 f!3790)) (rhs!855 (rhs!855 f!3790)) (ite (is-Or!22 (rhs!855 f!3790)) (rhs!856 (rhs!855 f!3790)) (f!4108 (rhs!855 f!3790)))))))))

(declare-fun d!53374 () Bool)

(assert (=> d!53374 e!35601))

(declare-fun c!14725 () Bool)

(assert (=> d!53374 (= c!14725 (or lt!12629 (is-Literal!16 (rhs!855 f!3790))))))

(assert (=> d!53374 (= lt!12631 e!35599)))

(declare-fun c!14729 () Bool)

(assert (=> d!53374 (= c!14729 (or lt!12629 (is-Literal!16 (rhs!855 f!3790))))))

(declare-fun lt!12630 () Bool)

(assert (=> d!53374 (= lt!12630 e!35598)))

(declare-fun c!14727 () Bool)

(assert (=> d!53374 (= c!14727 (or lt!12629 (and (not (is-Literal!16 (rhs!855 f!3790))) (or (is-Implies!22 (rhs!855 f!3790)) (is-Or!22 (rhs!855 f!3790))))))))

(declare-fun lt!12634 () Bool)

(assert (=> d!53374 (= lt!12634 e!35597)))

(declare-fun c!14724 () Bool)

(assert (=> d!53374 (= c!14724 (or lt!12629 (not (is-Literal!16 (rhs!855 f!3790)))))))

(assert (=> d!53374 (= lt!12629 (is-And!22 (rhs!855 f!3790)))))

(assert (=> d!53374 (isNNF!1 (rhs!855 f!3790))))

(assert (=> d!53374 (= (nnfIsStable!1 (rhs!855 f!3790)) true)))

(assert (= (and d!53374 c!14724) b!65638))

(assert (= (and d!53374 (not c!14724)) b!65636))

(assert (= (and d!53374 c!14727) b!65631))

(assert (= (and d!53374 (not c!14727)) b!65630))

(assert (= (and d!53374 c!14729) b!65629))

(assert (= (and d!53374 (not c!14729)) b!65627))

(assert (= (and b!65628 c!14728) b!65633))

(assert (= (and b!65628 (not c!14728)) b!65632))

(assert (= (and b!65628 c!14726) b!65634))

(assert (= (and b!65628 (not c!14726)) b!65635))

(assert (= (and d!53374 c!14725) b!65637))

(assert (= (and d!53374 (not c!14725)) b!65628))

(declare-fun m!69495 () Bool)

(assert (=> b!65631 m!69495))

(declare-fun m!69497 () Bool)

(assert (=> b!65638 m!69497))

(declare-fun m!69499 () Bool)

(assert (=> b!65629 m!69499))

(assert (=> b!65635 m!69499))

(declare-fun m!69501 () Bool)

(assert (=> d!53374 m!69501))

(assert (=> b!65633 m!69499))

(assert (=> b!65600 d!53374))

(declare-fun d!53376 () Bool)

(declare-fun c!14738 () Bool)

(declare-fun lt!12643 () Bool)

(assert (=> d!53376 (= c!14738 (or lt!12643 (is-Or!22 f!3805)))))

(declare-fun lt!12642 () Bool)

(declare-fun lt!12641 () Bool)

(assert (=> d!53376 (= lt!12642 (and lt!12643 lt!12641))))

(declare-fun e!35610 () Bool)

(assert (=> d!53376 (= lt!12641 e!35610)))

(declare-fun c!14736 () Bool)

(assert (=> d!53376 (= c!14736 (or lt!12643 (is-Or!22 f!3805)))))

(assert (=> d!53376 (= lt!12643 (is-And!22 f!3805))))

(declare-fun e!35613 () Bool)

(assert (=> d!53376 (= (isNNF!1 f!3805) e!35613)))

(declare-fun b!65653 () Bool)

(declare-fun e!35611 () Bool)

(declare-fun e!35612 () Bool)

(assert (=> b!65653 (= e!35611 e!35612)))

(declare-fun c!14737 () Bool)

(assert (=> b!65653 (= c!14737 (or lt!12642 (and (not lt!12643) (is-Or!22 f!3805) lt!12641)))))

(declare-fun b!65654 () Bool)

(assert (=> b!65654 (= e!35613 (and (not (is-Implies!22 f!3805)) (or (and (is-Not!22 f!3805) (is-Literal!16 (f!4108 f!3805))) (not (is-Not!22 f!3805)))))))

(declare-fun b!65655 () Bool)

(assert (=> b!65655 (= e!35610 (isNNF!1 (ite lt!12643 (lhs!854 f!3805) (lhs!856 f!3805))))))

(declare-fun b!65656 () Bool)

(assert (=> b!65656 (= e!35613 e!35611)))

(declare-fun res!30959 () Bool)

(assert (=> b!65656 (=> (not res!30959) (not e!35611))))

(assert (=> b!65656 (= res!30959 lt!12641)))

(declare-fun b!65657 () Bool)

(declare-fun res!30961 () Bool)

(assert (=> b!65657 (= e!35612 res!30961)))

(assert (=> b!65657 true))

(assert (=> b!65657 true))

(declare-fun b!65658 () Bool)

(declare-fun res!30960 () Bool)

(assert (=> b!65658 (= e!35610 res!30960)))

(assert (=> b!65658 true))

(declare-fun b!65659 () Bool)

(assert (=> b!65659 (= e!35612 (isNNF!1 (ite lt!12642 (rhs!854 f!3805) (rhs!856 f!3805))))))

(assert (= (and d!53376 c!14736) b!65655))

(assert (= (and d!53376 (not c!14736)) b!65658))

(assert (= (and b!65656 res!30959) b!65653))

(assert (= (and b!65653 c!14737) b!65659))

(assert (= (and b!65653 (not c!14737)) b!65657))

(assert (= (and d!53376 c!14738) b!65656))

(assert (= (and d!53376 (not c!14738)) b!65654))

(declare-fun m!69503 () Bool)

(assert (=> b!65655 m!69503))

(declare-fun m!69505 () Bool)

(assert (=> b!65659 m!69505))

(assert (=> b!65602 d!53376))

(declare-fun d!53378 () Bool)

(declare-fun c!14741 () Bool)

(declare-fun lt!12646 () Bool)

(assert (=> d!53378 (= c!14741 (or lt!12646 (is-Or!22 f!3790)))))

(declare-fun lt!12645 () Bool)

(declare-fun lt!12644 () Bool)

(assert (=> d!53378 (= lt!12645 (and lt!12646 lt!12644))))

(declare-fun e!35614 () Bool)

(assert (=> d!53378 (= lt!12644 e!35614)))

(declare-fun c!14739 () Bool)

(assert (=> d!53378 (= c!14739 (or lt!12646 (is-Or!22 f!3790)))))

(assert (=> d!53378 (= lt!12646 (is-And!22 f!3790))))

(declare-fun e!35617 () Bool)

(assert (=> d!53378 (= (isNNF!1 f!3790) e!35617)))

(declare-fun b!65660 () Bool)

(declare-fun e!35615 () Bool)

(declare-fun e!35616 () Bool)

(assert (=> b!65660 (= e!35615 e!35616)))

(declare-fun c!14740 () Bool)

(assert (=> b!65660 (= c!14740 (or lt!12645 (and (not lt!12646) (is-Or!22 f!3790) lt!12644)))))

(declare-fun b!65661 () Bool)

(assert (=> b!65661 (= e!35617 (and (not (is-Implies!22 f!3790)) (or (and (is-Not!22 f!3790) (is-Literal!16 (f!4108 f!3790))) (not (is-Not!22 f!3790)))))))

(declare-fun b!65662 () Bool)

(assert (=> b!65662 (= e!35614 (isNNF!1 (ite lt!12646 (lhs!854 f!3790) (lhs!856 f!3790))))))

(declare-fun b!65663 () Bool)

(assert (=> b!65663 (= e!35617 e!35615)))

(declare-fun res!30962 () Bool)

(assert (=> b!65663 (=> (not res!30962) (not e!35615))))

(assert (=> b!65663 (= res!30962 lt!12644)))

(declare-fun b!65664 () Bool)

(declare-fun res!30964 () Bool)

(assert (=> b!65664 (= e!35616 res!30964)))

(assert (=> b!65664 true))

(assert (=> b!65664 true))

(declare-fun b!65665 () Bool)

(declare-fun res!30963 () Bool)

(assert (=> b!65665 (= e!35614 res!30963)))

(assert (=> b!65665 true))

(declare-fun b!65666 () Bool)

(assert (=> b!65666 (= e!35616 (isNNF!1 (ite lt!12645 (rhs!854 f!3790) (rhs!856 f!3790))))))

(assert (= (and d!53378 c!14739) b!65662))

(assert (= (and d!53378 (not c!14739)) b!65665))

(assert (= (and b!65663 res!30962) b!65660))

(assert (= (and b!65660 c!14740) b!65666))

(assert (= (and b!65660 (not c!14740)) b!65664))

(assert (= (and d!53378 c!14741) b!65663))

(assert (= (and d!53378 (not c!14741)) b!65661))

(declare-fun m!69507 () Bool)

(assert (=> b!65662 m!69507))

(declare-fun m!69509 () Bool)

(assert (=> b!65666 m!69509))

(assert (=> start!9256 d!53378))

(push 1)

(assert (not b!65662))

(assert (not d!53374))

(assert (not b!65638))

(assert (not b!65629))

(assert (not b!65635))

(assert (not b!65655))

(assert (not b!65659))

(assert (not b!65633))

(assert (not b!65631))

(assert (not b!65666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

