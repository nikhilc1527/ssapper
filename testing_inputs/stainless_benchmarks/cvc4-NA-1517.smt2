; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10284 () Bool)

(assert start!10284)

(declare-fun res!37554 () Bool)

(declare-fun e!40856 () Bool)

(assert (=> start!10284 (=> (not res!37554) (not e!40856))))

(declare-datatypes () ((Formula!86 (Implies!90 (lhs!1371 Formula!86) (rhs!1371 Formula!86)) (And!90 (lhs!1372 Formula!86) (rhs!1372 Formula!86)) (Or!90 (lhs!1373 Formula!86) (rhs!1373 Formula!86)) (Literal!84 (id!4947 (_ BitVec 32))) (Not!90 (f!4704 Formula!86)))))

(declare-fun f!4460 () Formula!86)

(declare-fun isSimplified!0 (Formula!86) Bool)

(assert (=> start!10284 (= res!37554 (isSimplified!0 f!4460))))

(assert (=> start!10284 e!40856))

(assert (=> start!10284 true))

(declare-fun b!75607 () Bool)

(declare-fun res!37556 () Bool)

(assert (=> b!75607 (=> (not res!37556) (not e!40856))))

(declare-fun inductVal!689 () Bool)

(declare-fun simplifyIsStable!0 (Formula!86) Bool)

(assert (=> b!75607 (= res!37556 (= inductVal!689 (simplifyIsStable!0 (lhs!1371 f!4460))))))

(declare-fun b!75606 () Bool)

(declare-fun res!37553 () Bool)

(assert (=> b!75606 (=> (not res!37553) (not e!40856))))

(declare-fun inductVal!681 () Bool)

(assert (=> b!75606 (= res!37553 (= inductVal!681 (simplifyIsStable!0 (rhs!1371 f!4460))))))

(declare-fun b!75605 () Bool)

(declare-fun res!37555 () Bool)

(assert (=> b!75605 (=> (not res!37555) (not e!40856))))

(assert (=> b!75605 (= res!37555 (is-Implies!90 f!4460))))

(declare-fun b!75608 () Bool)

(declare-fun simplify!0 (Formula!86) Formula!86)

(assert (=> b!75608 (= e!40856 (not (= (simplify!0 f!4460) f!4460)))))

(assert (= (and start!10284 res!37554) b!75605))

(assert (= (and b!75605 res!37555) b!75606))

(assert (= (and b!75606 res!37553) b!75607))

(assert (= (and b!75607 res!37556) b!75608))

(declare-fun m!73138 () Bool)

(assert (=> start!10284 m!73138))

(declare-fun m!73140 () Bool)

(assert (=> b!75607 m!73140))

(declare-fun m!73142 () Bool)

(assert (=> b!75606 m!73142))

(declare-fun m!73144 () Bool)

(assert (=> b!75608 m!73144))

(push 1)

(assert (not b!75608))

(assert (not b!75607))

(assert (not b!75606))

(assert (not start!10284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75637 () Bool)

(declare-fun e!40873 () Formula!86)

(declare-fun lt!16544 () Formula!86)

(assert (=> b!75637 (= e!40873 lt!16544)))

(declare-fun b!75638 () Bool)

(declare-fun e!40877 () Formula!86)

(declare-fun lt!16548 () Formula!86)

(assert (=> b!75638 (= e!40877 lt!16548)))

(declare-fun b!75639 () Bool)

(declare-fun e!40872 () Formula!86)

(declare-fun lt!16549 () Formula!86)

(assert (=> b!75639 (= e!40872 (And!90 lt!16548 lt!16549))))

(declare-fun b!75640 () Bool)

(declare-fun e!40876 () Formula!86)

(declare-fun res!37586 () Formula!86)

(assert (=> b!75640 (= e!40876 res!37586)))

(assert (=> b!75640 true))

(declare-fun b!75641 () Bool)

(declare-fun e!40874 () Formula!86)

(declare-fun res!37584 () Formula!86)

(assert (=> b!75641 (= e!40874 res!37584)))

(assert (=> b!75641 true))

(declare-fun lt!16550 () Bool)

(declare-fun lt!16552 () Formula!86)

(declare-fun e!40871 () Formula!86)

(declare-fun lt!16546 () Formula!86)

(declare-fun b!75642 () Bool)

(assert (=> b!75642 (= e!40871 (ite lt!16550 (Or!90 (Not!90 lt!16552) lt!16546) (ite (is-Not!90 f!4460) (Not!90 lt!16552) f!4460)))))

(assert (=> b!75642 (= lt!16552 e!40873)))

(declare-fun c!18624 () Bool)

(assert (=> b!75642 (= c!18624 (or lt!16550 (is-Not!90 f!4460)))))

(assert (=> b!75642 (= lt!16550 (is-Implies!90 f!4460))))

(declare-fun d!54859 () Bool)

(declare-fun lt!16551 () Formula!86)

(assert (=> d!54859 (isSimplified!0 lt!16551)))

(assert (=> d!54859 (= lt!16551 e!40872)))

(declare-fun c!18625 () Bool)

(declare-fun lt!16547 () Bool)

(assert (=> d!54859 (= c!18625 lt!16547)))

(assert (=> d!54859 (= lt!16549 e!40874)))

(declare-fun c!18622 () Bool)

(assert (=> d!54859 (= c!18622 (or lt!16547 (is-Or!90 f!4460) (is-Implies!90 f!4460)))))

(assert (=> d!54859 (= lt!16548 e!40876)))

(declare-fun c!18626 () Bool)

(assert (=> d!54859 (= c!18626 (or lt!16547 (is-Or!90 f!4460) (is-Implies!90 f!4460) (is-Not!90 f!4460)))))

(assert (=> d!54859 (= lt!16547 (is-And!90 f!4460))))

(assert (=> d!54859 (= (simplify!0 f!4460) lt!16551)))

(declare-fun b!75643 () Bool)

(assert (=> b!75643 (= e!40872 e!40871)))

(declare-fun c!18623 () Bool)

(declare-fun lt!16545 () Bool)

(assert (=> b!75643 (= c!18623 lt!16545)))

(declare-fun e!40875 () Formula!86)

(assert (=> b!75643 (= lt!16546 e!40875)))

(declare-fun c!18628 () Bool)

(assert (=> b!75643 (= c!18628 (or lt!16545 (is-Implies!90 f!4460)))))

(assert (=> b!75643 (= lt!16544 e!40877)))

(declare-fun c!18627 () Bool)

(assert (=> b!75643 (= c!18627 (or lt!16545 (is-Implies!90 f!4460) (is-Not!90 f!4460)))))

(assert (=> b!75643 (= lt!16545 (is-Or!90 f!4460))))

(declare-fun b!75644 () Bool)

(declare-fun res!37583 () Formula!86)

(assert (=> b!75644 (= e!40873 res!37583)))

(assert (=> b!75644 true))

(assert (=> b!75644 true))

(declare-fun b!75645 () Bool)

(assert (=> b!75645 (= e!40876 (simplify!0 (ite lt!16547 (lhs!1372 f!4460) (ite (is-Or!90 f!4460) (lhs!1373 f!4460) (ite (is-Implies!90 f!4460) (lhs!1371 f!4460) (f!4704 f!4460))))))))

(declare-fun b!75646 () Bool)

(assert (=> b!75646 (= e!40875 lt!16549)))

(declare-fun b!75647 () Bool)

(assert (=> b!75647 (= e!40874 (simplify!0 (ite lt!16547 (rhs!1372 f!4460) (ite (is-Or!90 f!4460) (rhs!1373 f!4460) (rhs!1371 f!4460)))))))

(declare-fun b!75648 () Bool)

(declare-fun res!37585 () Formula!86)

(assert (=> b!75648 (= e!40877 res!37585)))

(assert (=> b!75648 true))

(declare-fun b!75649 () Bool)

(assert (=> b!75649 (= e!40871 (Or!90 lt!16544 lt!16546))))

(declare-fun b!75650 () Bool)

(declare-fun res!37582 () Formula!86)

(assert (=> b!75650 (= e!40875 res!37582)))

(assert (=> b!75650 true))

(assert (= (and d!54859 c!18626) b!75645))

(assert (= (and d!54859 (not c!18626)) b!75640))

(assert (= (and d!54859 c!18622) b!75647))

(assert (= (and d!54859 (not c!18622)) b!75641))

(assert (= (and b!75643 c!18627) b!75638))

(assert (= (and b!75643 (not c!18627)) b!75648))

(assert (= (and b!75643 c!18628) b!75646))

(assert (= (and b!75643 (not c!18628)) b!75650))

(assert (= (and b!75642 c!18624) b!75637))

(assert (= (and b!75642 (not c!18624)) b!75644))

(assert (= (and b!75643 c!18623) b!75649))

(assert (= (and b!75643 (not c!18623)) b!75642))

(assert (= (and d!54859 c!18625) b!75639))

(assert (= (and d!54859 (not c!18625)) b!75643))

(declare-fun m!73146 () Bool)

(assert (=> d!54859 m!73146))

(declare-fun m!73148 () Bool)

(assert (=> b!75645 m!73148))

(declare-fun m!73150 () Bool)

(assert (=> b!75647 m!73150))

(assert (=> b!75608 d!54859))

(declare-fun b!75675 () Bool)

(declare-fun e!40894 () Formula!86)

(declare-fun res!37616 () Formula!86)

(assert (=> b!75675 (= e!40894 res!37616)))

(assert (=> b!75675 true))

(assert (=> b!75675 true))

(declare-fun b!75676 () Bool)

(declare-fun e!40895 () Bool)

(assert (=> b!75676 (= e!40895 (= e!40894 (lhs!1371 f!4460)))))

(declare-fun c!18643 () Bool)

(declare-fun lt!16567 () Bool)

(assert (=> b!75676 (= c!18643 (or lt!16567 (is-Or!90 (lhs!1371 f!4460))))))

(declare-fun b!75677 () Bool)

(declare-fun e!40891 () Bool)

(declare-fun lt!16564 () Formula!86)

(assert (=> b!75677 (= e!40891 (= lt!16564 (lhs!1371 f!4460)))))

(declare-fun b!75678 () Bool)

(declare-fun e!40893 () Formula!86)

(declare-fun res!37618 () Formula!86)

(assert (=> b!75678 (= e!40893 res!37618)))

(assert (=> b!75678 true))

(declare-fun b!75679 () Bool)

(declare-fun e!40890 () Bool)

(declare-fun res!37619 () Bool)

(assert (=> b!75679 (= e!40890 res!37619)))

(assert (=> b!75679 true))

(declare-fun b!75680 () Bool)

(assert (=> b!75680 (= e!40893 (simplify!0 (lhs!1371 f!4460)))))

(declare-fun b!75681 () Bool)

(assert (=> b!75681 (= e!40891 e!40895)))

(declare-fun c!18645 () Bool)

(assert (=> b!75681 (= c!18645 (or lt!16567 (is-Or!90 (lhs!1371 f!4460))))))

(assert (=> b!75681 (= lt!16567 (is-And!90 (lhs!1371 f!4460)))))

(declare-fun b!75682 () Bool)

(declare-fun e!40892 () Bool)

(declare-fun lt!16566 () Bool)

(assert (=> b!75682 (= e!40892 (simplifyIsStable!0 (ite lt!16566 (rhs!1371 (lhs!1371 f!4460)) (ite (is-And!90 (lhs!1371 f!4460)) (rhs!1372 (lhs!1371 f!4460)) (ite (is-Or!90 (lhs!1371 f!4460)) (rhs!1373 (lhs!1371 f!4460)) (f!4704 (lhs!1371 f!4460)))))))))

(declare-fun b!75683 () Bool)

(assert (=> b!75683 (= e!40890 (simplifyIsStable!0 (ite lt!16566 (lhs!1371 (lhs!1371 f!4460)) (ite (is-And!90 (lhs!1371 f!4460)) (lhs!1372 (lhs!1371 f!4460)) (lhs!1373 (lhs!1371 f!4460))))))))

(declare-fun b!75684 () Bool)

(assert (=> b!75684 (= e!40894 lt!16564)))

(declare-fun d!54861 () Bool)

(assert (=> d!54861 e!40891))

(declare-fun c!18641 () Bool)

(assert (=> d!54861 (= c!18641 lt!16566)))

(assert (=> d!54861 (= lt!16564 e!40893)))

(declare-fun c!18642 () Bool)

(assert (=> d!54861 (= c!18642 (or lt!16566 (is-And!90 (lhs!1371 f!4460)) (is-Or!90 (lhs!1371 f!4460))))))

(declare-fun lt!16563 () Bool)

(assert (=> d!54861 (= lt!16563 e!40890)))

(declare-fun c!18644 () Bool)

(assert (=> d!54861 (= c!18644 (or lt!16566 (is-And!90 (lhs!1371 f!4460)) (is-Or!90 (lhs!1371 f!4460))))))

(declare-fun lt!16565 () Bool)

(assert (=> d!54861 (= lt!16565 e!40892)))

(declare-fun c!18646 () Bool)

(assert (=> d!54861 (= c!18646 (or lt!16566 (is-And!90 (lhs!1371 f!4460)) (is-Or!90 (lhs!1371 f!4460)) (not (is-Literal!84 (lhs!1371 f!4460)))))))

(assert (=> d!54861 (= lt!16566 (is-Implies!90 (lhs!1371 f!4460)))))

(assert (=> d!54861 (isSimplified!0 (lhs!1371 f!4460))))

(assert (=> d!54861 (= (simplifyIsStable!0 (lhs!1371 f!4460)) true)))

(declare-fun b!75685 () Bool)

(assert (=> b!75685 (= e!40895 (= (simplify!0 (lhs!1371 f!4460)) (lhs!1371 f!4460)))))

(declare-fun b!75686 () Bool)

(declare-fun res!37617 () Bool)

(assert (=> b!75686 (= e!40892 res!37617)))

(assert (=> b!75686 true))

(assert (= (and d!54861 c!18646) b!75682))

(assert (= (and d!54861 (not c!18646)) b!75686))

(assert (= (and d!54861 c!18644) b!75683))

(assert (= (and d!54861 (not c!18644)) b!75679))

(assert (= (and d!54861 c!18642) b!75680))

(assert (= (and d!54861 (not c!18642)) b!75678))

(assert (= (and b!75676 c!18643) b!75684))

(assert (= (and b!75676 (not c!18643)) b!75675))

(assert (= (and b!75681 c!18645) b!75676))

(assert (= (and b!75681 (not c!18645)) b!75685))

(assert (= (and d!54861 c!18641) b!75677))

(assert (= (and d!54861 (not c!18641)) b!75681))

(declare-fun m!73152 () Bool)

(assert (=> b!75685 m!73152))

(assert (=> b!75680 m!73152))

(declare-fun m!73154 () Bool)

(assert (=> b!75682 m!73154))

(declare-fun m!73156 () Bool)

(assert (=> b!75683 m!73156))

(declare-fun m!73158 () Bool)

(assert (=> d!54861 m!73158))

(assert (=> b!75607 d!54861))

(declare-fun b!75687 () Bool)

(declare-fun e!40900 () Formula!86)

(declare-fun res!37620 () Formula!86)

(assert (=> b!75687 (= e!40900 res!37620)))

(assert (=> b!75687 true))

(assert (=> b!75687 true))

(declare-fun b!75688 () Bool)

(declare-fun e!40901 () Bool)

(assert (=> b!75688 (= e!40901 (= e!40900 (rhs!1371 f!4460)))))

(declare-fun c!18649 () Bool)

(declare-fun lt!16572 () Bool)

(assert (=> b!75688 (= c!18649 (or lt!16572 (is-Or!90 (rhs!1371 f!4460))))))

(declare-fun b!75689 () Bool)

(declare-fun e!40897 () Bool)

(declare-fun lt!16569 () Formula!86)

(assert (=> b!75689 (= e!40897 (= lt!16569 (rhs!1371 f!4460)))))

(declare-fun b!75690 () Bool)

(declare-fun e!40899 () Formula!86)

(declare-fun res!37622 () Formula!86)

(assert (=> b!75690 (= e!40899 res!37622)))

(assert (=> b!75690 true))

(declare-fun b!75691 () Bool)

(declare-fun e!40896 () Bool)

(declare-fun res!37623 () Bool)

(assert (=> b!75691 (= e!40896 res!37623)))

(assert (=> b!75691 true))

(declare-fun b!75692 () Bool)

(assert (=> b!75692 (= e!40899 (simplify!0 (rhs!1371 f!4460)))))

(declare-fun b!75693 () Bool)

(assert (=> b!75693 (= e!40897 e!40901)))

(declare-fun c!18651 () Bool)

(assert (=> b!75693 (= c!18651 (or lt!16572 (is-Or!90 (rhs!1371 f!4460))))))

(assert (=> b!75693 (= lt!16572 (is-And!90 (rhs!1371 f!4460)))))

(declare-fun b!75694 () Bool)

(declare-fun e!40898 () Bool)

(declare-fun lt!16571 () Bool)

(assert (=> b!75694 (= e!40898 (simplifyIsStable!0 (ite lt!16571 (rhs!1371 (rhs!1371 f!4460)) (ite (is-And!90 (rhs!1371 f!4460)) (rhs!1372 (rhs!1371 f!4460)) (ite (is-Or!90 (rhs!1371 f!4460)) (rhs!1373 (rhs!1371 f!4460)) (f!4704 (rhs!1371 f!4460)))))))))

(declare-fun b!75695 () Bool)

(assert (=> b!75695 (= e!40896 (simplifyIsStable!0 (ite lt!16571 (lhs!1371 (rhs!1371 f!4460)) (ite (is-And!90 (rhs!1371 f!4460)) (lhs!1372 (rhs!1371 f!4460)) (lhs!1373 (rhs!1371 f!4460))))))))

(declare-fun b!75696 () Bool)

(assert (=> b!75696 (= e!40900 lt!16569)))

(declare-fun d!54863 () Bool)

(assert (=> d!54863 e!40897))

(declare-fun c!18647 () Bool)

(assert (=> d!54863 (= c!18647 lt!16571)))

(assert (=> d!54863 (= lt!16569 e!40899)))

(declare-fun c!18648 () Bool)

(assert (=> d!54863 (= c!18648 (or lt!16571 (is-And!90 (rhs!1371 f!4460)) (is-Or!90 (rhs!1371 f!4460))))))

(declare-fun lt!16568 () Bool)

(assert (=> d!54863 (= lt!16568 e!40896)))

(declare-fun c!18650 () Bool)

(assert (=> d!54863 (= c!18650 (or lt!16571 (is-And!90 (rhs!1371 f!4460)) (is-Or!90 (rhs!1371 f!4460))))))

(declare-fun lt!16570 () Bool)

(assert (=> d!54863 (= lt!16570 e!40898)))

(declare-fun c!18652 () Bool)

(assert (=> d!54863 (= c!18652 (or lt!16571 (is-And!90 (rhs!1371 f!4460)) (is-Or!90 (rhs!1371 f!4460)) (not (is-Literal!84 (rhs!1371 f!4460)))))))

(assert (=> d!54863 (= lt!16571 (is-Implies!90 (rhs!1371 f!4460)))))

(assert (=> d!54863 (isSimplified!0 (rhs!1371 f!4460))))

(assert (=> d!54863 (= (simplifyIsStable!0 (rhs!1371 f!4460)) true)))

(declare-fun b!75697 () Bool)

(assert (=> b!75697 (= e!40901 (= (simplify!0 (rhs!1371 f!4460)) (rhs!1371 f!4460)))))

(declare-fun b!75698 () Bool)

(declare-fun res!37621 () Bool)

(assert (=> b!75698 (= e!40898 res!37621)))

(assert (=> b!75698 true))

(assert (= (and d!54863 c!18652) b!75694))

(assert (= (and d!54863 (not c!18652)) b!75698))

(assert (= (and d!54863 c!18650) b!75695))

(assert (= (and d!54863 (not c!18650)) b!75691))

(assert (= (and d!54863 c!18648) b!75692))

(assert (= (and d!54863 (not c!18648)) b!75690))

(assert (= (and b!75688 c!18649) b!75696))

(assert (= (and b!75688 (not c!18649)) b!75687))

(assert (= (and b!75693 c!18651) b!75688))

(assert (= (and b!75693 (not c!18651)) b!75697))

(assert (= (and d!54863 c!18647) b!75689))

(assert (= (and d!54863 (not c!18647)) b!75693))

(declare-fun m!73160 () Bool)

(assert (=> b!75697 m!73160))

(assert (=> b!75692 m!73160))

(declare-fun m!73162 () Bool)

(assert (=> b!75694 m!73162))

(declare-fun m!73164 () Bool)

(assert (=> b!75695 m!73164))

(declare-fun m!73166 () Bool)

(assert (=> d!54863 m!73166))

(assert (=> b!75606 d!54863))

(declare-fun b!75725 () Bool)

(declare-fun e!40922 () Bool)

(declare-fun e!40924 () Bool)

(assert (=> b!75725 (= e!40922 e!40924)))

(declare-fun res!37650 () Bool)

(assert (=> b!75725 (=> (not res!37650) (not e!40924))))

(declare-fun lt!16591 () Bool)

(assert (=> b!75725 (= res!37650 lt!16591)))

(assert (=> b!75725 (= lt!16591 (is-Or!90 f!4460))))

(declare-fun b!75726 () Bool)

(declare-fun e!40921 () Bool)

(assert (=> b!75726 (= e!40924 e!40921)))

(declare-fun c!18665 () Bool)

(assert (=> b!75726 (= c!18665 (or lt!16591 (and (not (is-Implies!90 f!4460)) (is-Not!90 f!4460))))))

(declare-fun b!75727 () Bool)

(declare-fun e!40925 () Bool)

(declare-fun lt!16587 () Bool)

(assert (=> b!75727 (= e!40925 (isSimplified!0 (ite lt!16587 (lhs!1372 f!4460) (ite (is-Or!90 f!4460) (lhs!1373 f!4460) (f!4704 f!4460)))))))

(declare-fun b!75728 () Bool)

(declare-fun res!37649 () Bool)

(assert (=> b!75728 (= e!40925 res!37649)))

(assert (=> b!75728 true))

(declare-fun b!75729 () Bool)

(declare-fun e!40920 () Bool)

(declare-fun res!37654 () Bool)

(assert (=> b!75729 (= e!40920 res!37654)))

(assert (=> b!75729 true))

(assert (=> b!75729 true))

(declare-fun b!75730 () Bool)

(declare-fun lt!16590 () Bool)

(assert (=> b!75730 (= e!40921 lt!16590)))

(declare-fun b!75731 () Bool)

(declare-fun e!40919 () Bool)

(declare-fun lt!16588 () Bool)

(declare-fun lt!16593 () Bool)

(declare-fun lt!16589 () Bool)

(assert (=> b!75731 (= e!40919 (ite lt!16588 (and lt!16593 lt!16589) (and (not (is-Implies!90 f!4460)) (or (not (is-Not!90 f!4460)) lt!16593))))))

(assert (=> b!75731 (= lt!16593 e!40920)))

(declare-fun c!18664 () Bool)

(assert (=> b!75731 (= c!18664 (or lt!16588 (and (not (is-Implies!90 f!4460)) (is-Not!90 f!4460))))))

(assert (=> b!75731 (= lt!16588 (is-Or!90 f!4460))))

(declare-fun b!75732 () Bool)

(declare-fun res!37653 () Bool)

(assert (=> b!75732 (= e!40921 res!37653)))

(assert (=> b!75732 true))

(declare-fun b!75733 () Bool)

(assert (=> b!75733 (= e!40920 lt!16590)))

(declare-fun d!54865 () Bool)

(declare-fun c!18667 () Bool)

(assert (=> d!54865 (= c!18667 lt!16587)))

(declare-fun e!40923 () Bool)

(assert (=> d!54865 (= lt!16589 e!40923)))

(declare-fun c!18666 () Bool)

(declare-fun e!40918 () Bool)

(assert (=> d!54865 (= c!18666 e!40918)))

(declare-fun res!37655 () Bool)

(assert (=> d!54865 (=> res!37655 e!40918)))

(declare-fun lt!16592 () Bool)

(assert (=> d!54865 (= res!37655 lt!16592)))

(assert (=> d!54865 (= lt!16592 (and lt!16587 lt!16590))))

(assert (=> d!54865 (= lt!16590 e!40925)))

(declare-fun c!18663 () Bool)

(assert (=> d!54865 (= c!18663 (or lt!16587 (is-Or!90 f!4460) (and (not (is-Implies!90 f!4460)) (is-Not!90 f!4460))))))

(assert (=> d!54865 (= lt!16587 (is-And!90 f!4460))))

(assert (=> d!54865 (= (isSimplified!0 f!4460) e!40919)))

(declare-fun b!75734 () Bool)

(assert (=> b!75734 (= e!40918 e!40922)))

(declare-fun res!37652 () Bool)

(assert (=> b!75734 (=> (not res!37652) (not e!40922))))

(assert (=> b!75734 (= res!37652 (not lt!16587))))

(declare-fun b!75735 () Bool)

(declare-fun res!37651 () Bool)

(assert (=> b!75735 (= e!40923 res!37651)))

(assert (=> b!75735 true))

(declare-fun b!75736 () Bool)

(assert (=> b!75736 (= e!40923 (isSimplified!0 (ite lt!16592 (rhs!1372 f!4460) (rhs!1373 f!4460))))))

(declare-fun b!75737 () Bool)

(assert (=> b!75737 (= e!40919 (and lt!16590 lt!16589))))

(assert (= (and d!54865 c!18663) b!75727))

(assert (= (and d!54865 (not c!18663)) b!75728))

(assert (= (and d!54865 (not res!37655)) b!75734))

(assert (= (and b!75734 res!37652) b!75725))

(assert (= (and b!75725 res!37650) b!75726))

(assert (= (and b!75726 c!18665) b!75730))

(assert (= (and b!75726 (not c!18665)) b!75732))

(assert (= (and d!54865 c!18666) b!75736))

(assert (= (and d!54865 (not c!18666)) b!75735))

(assert (= (and b!75731 c!18664) b!75733))

(assert (= (and b!75731 (not c!18664)) b!75729))

(assert (= (and d!54865 c!18667) b!75737))

(assert (= (and d!54865 (not c!18667)) b!75731))

(declare-fun m!73168 () Bool)

(assert (=> b!75727 m!73168))

(declare-fun m!73170 () Bool)

(assert (=> b!75736 m!73170))

(assert (=> start!10284 d!54865))

(push 1)

(assert (not b!75680))

(assert (not b!75645))

(assert (not b!75736))

(assert (not d!54861))

(assert (not b!75682))

(assert (not b!75697))

(assert (not d!54863))

(assert (not b!75647))

(assert (not b!75692))

(assert (not b!75727))

(assert (not b!75683))

(assert (not d!54859))

(assert (not b!75695))

(assert (not b!75694))

(assert (not b!75685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

