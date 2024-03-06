; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9388 () Bool)

(assert start!9388)

(declare-fun b!67896 () Bool)

(declare-fun res!32625 () Bool)

(declare-fun e!36750 () Bool)

(assert (=> b!67896 (=> (not res!32625) (not e!36750))))

(declare-fun inductVal!212 () Bool)

(declare-datatypes () ((Formula!37 (And!42 (lhs!914 Formula!37) (rhs!914 Formula!37)) (Literal!36 (id!4817 Int)) (Implies!42 (lhs!915 Formula!37) (rhs!915 Formula!37)) (Or!42 (lhs!916 Formula!37) (rhs!916 Formula!37)) (Not!42 (f!4168 Formula!37)))))

(declare-fun f!3683 () Formula!37)

(declare-fun simplifyIsStable!1 (Formula!37) Bool)

(assert (=> b!67896 (= res!32625 (= inductVal!212 (simplifyIsStable!1 (rhs!915 f!3683))))))

(declare-fun res!32627 () Bool)

(assert (=> start!9388 (=> (not res!32627) (not e!36750))))

(declare-fun isSimplified!1 (Formula!37) Bool)

(assert (=> start!9388 (= res!32627 (isSimplified!1 f!3683))))

(assert (=> start!9388 e!36750))

(assert (=> start!9388 true))

(declare-fun b!67898 () Bool)

(declare-fun f!3703 () Formula!37)

(assert (=> b!67898 (= e!36750 (not (isSimplified!1 f!3703)))))

(declare-fun b!67897 () Bool)

(declare-fun res!32626 () Bool)

(assert (=> b!67897 (=> (not res!32626) (not e!36750))))

(assert (=> b!67897 (= res!32626 (= f!3703 (lhs!915 f!3683)))))

(declare-fun b!67895 () Bool)

(declare-fun res!32628 () Bool)

(assert (=> b!67895 (=> (not res!32628) (not e!36750))))

(assert (=> b!67895 (= res!32628 (and (not (is-And!42 f!3683)) (not (is-Literal!36 f!3683)) (is-Implies!42 f!3683)))))

(assert (= (and start!9388 res!32627) b!67895))

(assert (= (and b!67895 res!32628) b!67896))

(assert (= (and b!67896 res!32625) b!67897))

(assert (= (and b!67897 res!32626) b!67898))

(declare-fun m!70121 () Bool)

(assert (=> b!67896 m!70121))

(declare-fun m!70123 () Bool)

(assert (=> start!9388 m!70123))

(declare-fun m!70125 () Bool)

(assert (=> b!67898 m!70125))

(push 1)

(assert (not start!9388))

(assert (not b!67896))

(assert (not b!67898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!67925 () Bool)

(declare-fun e!36768 () Bool)

(declare-fun res!32656 () Bool)

(assert (=> b!67925 (= e!36768 res!32656)))

(assert (=> b!67925 true))

(assert (=> b!67925 true))

(declare-fun b!67926 () Bool)

(declare-fun e!36770 () Bool)

(declare-fun res!32660 () Bool)

(assert (=> b!67926 (= e!36770 res!32660)))

(assert (=> b!67926 true))

(declare-fun d!53532 () Bool)

(declare-fun c!15716 () Bool)

(declare-fun lt!13671 () Bool)

(assert (=> d!53532 (= c!15716 lt!13671)))

(declare-fun lt!13670 () Bool)

(assert (=> d!53532 (= lt!13670 e!36770)))

(declare-fun c!15714 () Bool)

(declare-fun e!36774 () Bool)

(assert (=> d!53532 (= c!15714 e!36774)))

(declare-fun res!32657 () Bool)

(assert (=> d!53532 (=> res!32657 e!36774)))

(declare-fun lt!13669 () Bool)

(assert (=> d!53532 (= res!32657 lt!13669)))

(declare-fun lt!13666 () Bool)

(assert (=> d!53532 (= lt!13669 (and lt!13671 lt!13666))))

(declare-fun e!36769 () Bool)

(assert (=> d!53532 (= lt!13666 e!36769)))

(declare-fun c!15713 () Bool)

(assert (=> d!53532 (= c!15713 (or lt!13671 (is-Or!42 f!3683) (and (not (is-Implies!42 f!3683)) (is-Not!42 f!3683))))))

(assert (=> d!53532 (= lt!13671 (is-And!42 f!3683))))

(declare-fun e!36772 () Bool)

(assert (=> d!53532 (= (isSimplified!1 f!3683) e!36772)))

(declare-fun b!67927 () Bool)

(declare-fun e!36771 () Bool)

(assert (=> b!67927 (= e!36771 lt!13666)))

(declare-fun b!67928 () Bool)

(assert (=> b!67928 (= e!36768 lt!13666)))

(declare-fun b!67929 () Bool)

(declare-fun e!36773 () Bool)

(assert (=> b!67929 (= e!36774 e!36773)))

(declare-fun res!32659 () Bool)

(assert (=> b!67929 (=> (not res!32659) (not e!36773))))

(assert (=> b!67929 (= res!32659 (not lt!13671))))

(declare-fun b!67930 () Bool)

(declare-fun res!32654 () Bool)

(assert (=> b!67930 (= e!36769 res!32654)))

(assert (=> b!67930 true))

(declare-fun b!67931 () Bool)

(assert (=> b!67931 (= e!36772 (and lt!13666 lt!13670))))

(declare-fun b!67932 () Bool)

(assert (=> b!67932 (= e!36770 (isSimplified!1 (ite lt!13669 (rhs!914 f!3683) (rhs!916 f!3683))))))

(declare-fun lt!13672 () Bool)

(declare-fun lt!13668 () Bool)

(declare-fun b!67933 () Bool)

(assert (=> b!67933 (= e!36772 (ite lt!13668 (and lt!13672 lt!13670) (and (not (is-Implies!42 f!3683)) (or (not (is-Not!42 f!3683)) lt!13672))))))

(assert (=> b!67933 (= lt!13672 e!36768)))

(declare-fun c!15715 () Bool)

(assert (=> b!67933 (= c!15715 (or lt!13668 (and (not (is-Implies!42 f!3683)) (is-Not!42 f!3683))))))

(assert (=> b!67933 (= lt!13668 (is-Or!42 f!3683))))

(declare-fun b!67934 () Bool)

(declare-fun e!36767 () Bool)

(assert (=> b!67934 (= e!36773 e!36767)))

(declare-fun res!32658 () Bool)

(assert (=> b!67934 (=> (not res!32658) (not e!36767))))

(declare-fun lt!13667 () Bool)

(assert (=> b!67934 (= res!32658 lt!13667)))

(assert (=> b!67934 (= lt!13667 (is-Or!42 f!3683))))

(declare-fun b!67935 () Bool)

(assert (=> b!67935 (= e!36769 (isSimplified!1 (ite lt!13671 (lhs!914 f!3683) (ite (is-Or!42 f!3683) (lhs!916 f!3683) (f!4168 f!3683)))))))

(declare-fun b!67936 () Bool)

(declare-fun res!32655 () Bool)

(assert (=> b!67936 (= e!36771 res!32655)))

(assert (=> b!67936 true))

(declare-fun b!67937 () Bool)

(assert (=> b!67937 (= e!36767 e!36771)))

(declare-fun c!15717 () Bool)

(assert (=> b!67937 (= c!15717 (or lt!13667 (and (not (is-Implies!42 f!3683)) (is-Not!42 f!3683))))))

(assert (= (and d!53532 c!15713) b!67935))

(assert (= (and d!53532 (not c!15713)) b!67930))

(assert (= (and d!53532 (not res!32657)) b!67929))

(assert (= (and b!67929 res!32659) b!67934))

(assert (= (and b!67934 res!32658) b!67937))

(assert (= (and b!67937 c!15717) b!67927))

(assert (= (and b!67937 (not c!15717)) b!67936))

(assert (= (and d!53532 c!15714) b!67932))

(assert (= (and d!53532 (not c!15714)) b!67926))

(assert (= (and b!67933 c!15715) b!67928))

(assert (= (and b!67933 (not c!15715)) b!67925))

(assert (= (and d!53532 c!15716) b!67931))

(assert (= (and d!53532 (not c!15716)) b!67933))

(declare-fun m!70127 () Bool)

(assert (=> b!67932 m!70127))

(declare-fun m!70129 () Bool)

(assert (=> b!67935 m!70129))

(assert (=> start!9388 d!53532))

(declare-fun b!67962 () Bool)

(declare-fun e!36789 () Formula!37)

(declare-fun simplify!1 (Formula!37) Formula!37)

(assert (=> b!67962 (= e!36789 (simplify!1 (rhs!915 f!3683)))))

(declare-fun b!67963 () Bool)

(declare-fun e!36790 () Bool)

(assert (=> b!67963 (= e!36790 (= (simplify!1 (rhs!915 f!3683)) (rhs!915 f!3683)))))

(declare-fun b!67964 () Bool)

(declare-fun e!36788 () Bool)

(declare-fun lt!13685 () Bool)

(assert (=> b!67964 (= e!36788 (simplifyIsStable!1 (ite lt!13685 (rhs!914 (rhs!915 f!3683)) (ite (is-Implies!42 (rhs!915 f!3683)) (rhs!915 (rhs!915 f!3683)) (ite (is-Or!42 (rhs!915 f!3683)) (rhs!916 (rhs!915 f!3683)) (f!4168 (rhs!915 f!3683)))))))))

(declare-fun b!67965 () Bool)

(declare-fun res!32692 () Formula!37)

(assert (=> b!67965 (= e!36789 res!32692)))

(assert (=> b!67965 true))

(declare-fun b!67966 () Bool)

(declare-fun e!36791 () Bool)

(assert (=> b!67966 (= e!36791 (simplifyIsStable!1 (ite lt!13685 (lhs!914 (rhs!915 f!3683)) (ite (is-Implies!42 (rhs!915 f!3683)) (lhs!915 (rhs!915 f!3683)) (lhs!916 (rhs!915 f!3683))))))))

(declare-fun b!67967 () Bool)

(declare-fun e!36792 () Formula!37)

(assert (=> b!67967 (= e!36792 (simplify!1 (rhs!915 f!3683)))))

(declare-fun b!67968 () Bool)

(declare-fun res!32690 () Formula!37)

(assert (=> b!67968 (= e!36792 res!32690)))

(assert (=> b!67968 true))

(assert (=> b!67968 true))

(declare-fun b!67969 () Bool)

(declare-fun res!32691 () Bool)

(assert (=> b!67969 (= e!36788 res!32691)))

(assert (=> b!67969 true))

(declare-fun b!67970 () Bool)

(declare-fun e!36787 () Bool)

(assert (=> b!67970 (= e!36787 e!36790)))

(declare-fun c!15734 () Bool)

(declare-fun lt!13690 () Bool)

(assert (=> b!67970 (= c!15734 (or lt!13690 (is-Or!42 (rhs!915 f!3683))))))

(declare-fun lt!13686 () Formula!37)

(assert (=> b!67970 (= lt!13686 e!36792)))

(declare-fun c!15733 () Bool)

(assert (=> b!67970 (= c!15733 (or lt!13690 (is-Or!42 (rhs!915 f!3683))))))

(assert (=> b!67970 (= lt!13690 (is-Implies!42 (rhs!915 f!3683)))))

(declare-fun d!53534 () Bool)

(assert (=> d!53534 e!36787))

(declare-fun c!15735 () Bool)

(assert (=> d!53534 (= c!15735 (or lt!13685 (is-Literal!36 (rhs!915 f!3683))))))

(declare-fun lt!13688 () Formula!37)

(assert (=> d!53534 (= lt!13688 e!36789)))

(declare-fun c!15731 () Bool)

(assert (=> d!53534 (= c!15731 (or lt!13685 (is-Literal!36 (rhs!915 f!3683))))))

(declare-fun lt!13689 () Bool)

(assert (=> d!53534 (= lt!13689 e!36791)))

(declare-fun c!15730 () Bool)

(assert (=> d!53534 (= c!15730 (or lt!13685 (and (not (is-Literal!36 (rhs!915 f!3683))) (or (is-Implies!42 (rhs!915 f!3683)) (is-Or!42 (rhs!915 f!3683))))))))

(declare-fun lt!13687 () Bool)

(assert (=> d!53534 (= lt!13687 e!36788)))

(declare-fun c!15732 () Bool)

(assert (=> d!53534 (= c!15732 (or lt!13685 (not (is-Literal!36 (rhs!915 f!3683)))))))

(assert (=> d!53534 (= lt!13685 (is-And!42 (rhs!915 f!3683)))))

(assert (=> d!53534 (isSimplified!1 (rhs!915 f!3683))))

(assert (=> d!53534 (= (simplifyIsStable!1 (rhs!915 f!3683)) true)))

(declare-fun b!67971 () Bool)

(assert (=> b!67971 (= e!36787 (= lt!13688 (rhs!915 f!3683)))))

(declare-fun b!67972 () Bool)

(assert (=> b!67972 (= e!36790 (= lt!13686 (rhs!915 f!3683)))))

(declare-fun b!67973 () Bool)

(declare-fun res!32693 () Bool)

(assert (=> b!67973 (= e!36791 res!32693)))

(assert (=> b!67973 true))

(assert (= (and d!53534 c!15732) b!67964))

(assert (= (and d!53534 (not c!15732)) b!67969))

(assert (= (and d!53534 c!15730) b!67966))

(assert (= (and d!53534 (not c!15730)) b!67973))

(assert (= (and d!53534 c!15731) b!67962))

(assert (= (and d!53534 (not c!15731)) b!67965))

(assert (= (and b!67970 c!15733) b!67967))

(assert (= (and b!67970 (not c!15733)) b!67968))

(assert (= (and b!67970 c!15734) b!67972))

(assert (= (and b!67970 (not c!15734)) b!67963))

(assert (= (and d!53534 c!15735) b!67971))

(assert (= (and d!53534 (not c!15735)) b!67970))

(declare-fun m!70131 () Bool)

(assert (=> b!67963 m!70131))

(declare-fun m!70133 () Bool)

(assert (=> b!67964 m!70133))

(declare-fun m!70135 () Bool)

(assert (=> b!67966 m!70135))

(assert (=> b!67962 m!70131))

(declare-fun m!70137 () Bool)

(assert (=> d!53534 m!70137))

(assert (=> b!67967 m!70131))

(assert (=> b!67896 d!53534))

(declare-fun b!67974 () Bool)

(declare-fun e!36794 () Bool)

(declare-fun res!32696 () Bool)

(assert (=> b!67974 (= e!36794 res!32696)))

(assert (=> b!67974 true))

(assert (=> b!67974 true))

(declare-fun b!67975 () Bool)

(declare-fun e!36796 () Bool)

(declare-fun res!32700 () Bool)

(assert (=> b!67975 (= e!36796 res!32700)))

(assert (=> b!67975 true))

(declare-fun d!53536 () Bool)

(declare-fun c!15739 () Bool)

(declare-fun lt!13696 () Bool)

(assert (=> d!53536 (= c!15739 lt!13696)))

(declare-fun lt!13695 () Bool)

(assert (=> d!53536 (= lt!13695 e!36796)))

(declare-fun c!15737 () Bool)

(declare-fun e!36800 () Bool)

(assert (=> d!53536 (= c!15737 e!36800)))

(declare-fun res!32697 () Bool)

(assert (=> d!53536 (=> res!32697 e!36800)))

(declare-fun lt!13694 () Bool)

(assert (=> d!53536 (= res!32697 lt!13694)))

(declare-fun lt!13691 () Bool)

(assert (=> d!53536 (= lt!13694 (and lt!13696 lt!13691))))

(declare-fun e!36795 () Bool)

(assert (=> d!53536 (= lt!13691 e!36795)))

(declare-fun c!15736 () Bool)

(assert (=> d!53536 (= c!15736 (or lt!13696 (is-Or!42 f!3703) (and (not (is-Implies!42 f!3703)) (is-Not!42 f!3703))))))

(assert (=> d!53536 (= lt!13696 (is-And!42 f!3703))))

(declare-fun e!36798 () Bool)

(assert (=> d!53536 (= (isSimplified!1 f!3703) e!36798)))

(declare-fun b!67976 () Bool)

(declare-fun e!36797 () Bool)

(assert (=> b!67976 (= e!36797 lt!13691)))

(declare-fun b!67977 () Bool)

(assert (=> b!67977 (= e!36794 lt!13691)))

(declare-fun b!67978 () Bool)

(declare-fun e!36799 () Bool)

(assert (=> b!67978 (= e!36800 e!36799)))

(declare-fun res!32699 () Bool)

(assert (=> b!67978 (=> (not res!32699) (not e!36799))))

(assert (=> b!67978 (= res!32699 (not lt!13696))))

(declare-fun b!67979 () Bool)

(declare-fun res!32694 () Bool)

(assert (=> b!67979 (= e!36795 res!32694)))

(assert (=> b!67979 true))

(declare-fun b!67980 () Bool)

(assert (=> b!67980 (= e!36798 (and lt!13691 lt!13695))))

(declare-fun b!67981 () Bool)

(assert (=> b!67981 (= e!36796 (isSimplified!1 (ite lt!13694 (rhs!914 f!3703) (rhs!916 f!3703))))))

(declare-fun b!67982 () Bool)

(declare-fun lt!13697 () Bool)

(declare-fun lt!13693 () Bool)

(assert (=> b!67982 (= e!36798 (ite lt!13693 (and lt!13697 lt!13695) (and (not (is-Implies!42 f!3703)) (or (not (is-Not!42 f!3703)) lt!13697))))))

(assert (=> b!67982 (= lt!13697 e!36794)))

(declare-fun c!15738 () Bool)

(assert (=> b!67982 (= c!15738 (or lt!13693 (and (not (is-Implies!42 f!3703)) (is-Not!42 f!3703))))))

(assert (=> b!67982 (= lt!13693 (is-Or!42 f!3703))))

(declare-fun b!67983 () Bool)

(declare-fun e!36793 () Bool)

(assert (=> b!67983 (= e!36799 e!36793)))

(declare-fun res!32698 () Bool)

(assert (=> b!67983 (=> (not res!32698) (not e!36793))))

(declare-fun lt!13692 () Bool)

(assert (=> b!67983 (= res!32698 lt!13692)))

(assert (=> b!67983 (= lt!13692 (is-Or!42 f!3703))))

(declare-fun b!67984 () Bool)

(assert (=> b!67984 (= e!36795 (isSimplified!1 (ite lt!13696 (lhs!914 f!3703) (ite (is-Or!42 f!3703) (lhs!916 f!3703) (f!4168 f!3703)))))))

(declare-fun b!67985 () Bool)

(declare-fun res!32695 () Bool)

(assert (=> b!67985 (= e!36797 res!32695)))

(assert (=> b!67985 true))

(declare-fun b!67986 () Bool)

(assert (=> b!67986 (= e!36793 e!36797)))

(declare-fun c!15740 () Bool)

(assert (=> b!67986 (= c!15740 (or lt!13692 (and (not (is-Implies!42 f!3703)) (is-Not!42 f!3703))))))

(assert (= (and d!53536 c!15736) b!67984))

(assert (= (and d!53536 (not c!15736)) b!67979))

(assert (= (and d!53536 (not res!32697)) b!67978))

(assert (= (and b!67978 res!32699) b!67983))

(assert (= (and b!67983 res!32698) b!67986))

(assert (= (and b!67986 c!15740) b!67976))

(assert (= (and b!67986 (not c!15740)) b!67985))

(assert (= (and d!53536 c!15737) b!67981))

(assert (= (and d!53536 (not c!15737)) b!67975))

(assert (= (and b!67982 c!15738) b!67977))

(assert (= (and b!67982 (not c!15738)) b!67974))

(assert (= (and d!53536 c!15739) b!67980))

(assert (= (and d!53536 (not c!15739)) b!67982))

(declare-fun m!70139 () Bool)

(assert (=> b!67981 m!70139))

(declare-fun m!70141 () Bool)

(assert (=> b!67984 m!70141))

(assert (=> b!67898 d!53536))

(push 1)

(assert (not b!67964))

(assert (not b!67962))

(assert (not b!67963))

(assert (not b!67935))

(assert (not b!67981))

(assert (not d!53534))

(assert (not b!67984))

(assert (not b!67967))

(assert (not b!67932))

(assert (not b!67966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

