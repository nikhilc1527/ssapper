; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9378 () Bool)

(assert start!9378)

(declare-fun b!67738 () Bool)

(declare-fun res!32497 () Bool)

(declare-fun e!36662 () Bool)

(assert (=> b!67738 (=> (not res!32497) (not e!36662))))

(declare-fun inductVal!196 () Bool)

(declare-datatypes () ((Formula!35 (And!40 (lhs!908 Formula!35) (rhs!908 Formula!35)) (Literal!34 (id!4815 Int)) (Implies!40 (lhs!909 Formula!35) (rhs!909 Formula!35)) (Or!40 (lhs!910 Formula!35) (rhs!910 Formula!35)) (Not!40 (f!4163 Formula!35)))))

(declare-fun f!3683 () Formula!35)

(declare-fun simplifyIsStable!1 (Formula!35) Bool)

(assert (=> b!67738 (= res!32497 (= inductVal!196 (simplifyIsStable!1 (rhs!908 f!3683))))))

(declare-fun b!67739 () Bool)

(declare-fun res!32496 () Bool)

(assert (=> b!67739 (=> (not res!32496) (not e!36662))))

(declare-fun f!3691 () Formula!35)

(assert (=> b!67739 (= res!32496 (= f!3691 (lhs!908 f!3683)))))

(declare-fun b!67737 () Bool)

(declare-fun res!32498 () Bool)

(assert (=> b!67737 (=> (not res!32498) (not e!36662))))

(assert (=> b!67737 (= res!32498 (is-And!40 f!3683))))

(declare-fun res!32499 () Bool)

(assert (=> start!9378 (=> (not res!32499) (not e!36662))))

(declare-fun isSimplified!1 (Formula!35) Bool)

(assert (=> start!9378 (= res!32499 (isSimplified!1 f!3683))))

(assert (=> start!9378 e!36662))

(assert (=> start!9378 true))

(declare-fun b!67740 () Bool)

(assert (=> b!67740 (= e!36662 (not (isSimplified!1 f!3691)))))

(assert (= (and start!9378 res!32499) b!67737))

(assert (= (and b!67737 res!32498) b!67738))

(assert (= (and b!67738 res!32497) b!67739))

(assert (= (and b!67739 res!32496) b!67740))

(declare-fun m!70087 () Bool)

(assert (=> b!67738 m!70087))

(declare-fun m!70089 () Bool)

(assert (=> start!9378 m!70089))

(declare-fun m!70091 () Bool)

(assert (=> b!67740 m!70091))

(push 1)

(assert (not b!67738))

(assert (not b!67740))

(assert (not start!9378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53522 () Bool)

(declare-fun e!36678 () Bool)

(assert (=> d!53522 e!36678))

(declare-fun c!15660 () Bool)

(declare-fun lt!13592 () Bool)

(assert (=> d!53522 (= c!15660 (or lt!13592 (is-Literal!34 (rhs!908 f!3683))))))

(declare-fun lt!13590 () Formula!35)

(declare-fun e!36680 () Formula!35)

(assert (=> d!53522 (= lt!13590 e!36680)))

(declare-fun c!15659 () Bool)

(assert (=> d!53522 (= c!15659 (or lt!13592 (is-Literal!34 (rhs!908 f!3683))))))

(declare-fun lt!13593 () Bool)

(declare-fun e!36679 () Bool)

(assert (=> d!53522 (= lt!13593 e!36679)))

(declare-fun c!15662 () Bool)

(assert (=> d!53522 (= c!15662 (or lt!13592 (and (not (is-Literal!34 (rhs!908 f!3683))) (or (is-Implies!40 (rhs!908 f!3683)) (is-Or!40 (rhs!908 f!3683))))))))

(declare-fun lt!13594 () Bool)

(declare-fun e!36676 () Bool)

(assert (=> d!53522 (= lt!13594 e!36676)))

(declare-fun c!15658 () Bool)

(assert (=> d!53522 (= c!15658 (or lt!13592 (not (is-Literal!34 (rhs!908 f!3683)))))))

(assert (=> d!53522 (= lt!13592 (is-And!40 (rhs!908 f!3683)))))

(assert (=> d!53522 (isSimplified!1 (rhs!908 f!3683))))

(assert (=> d!53522 (= (simplifyIsStable!1 (rhs!908 f!3683)) true)))

(declare-fun b!67765 () Bool)

(declare-fun e!36675 () Bool)

(assert (=> b!67765 (= e!36678 e!36675)))

(declare-fun c!15657 () Bool)

(declare-fun lt!13595 () Bool)

(assert (=> b!67765 (= c!15657 (or lt!13595 (is-Or!40 (rhs!908 f!3683))))))

(declare-fun lt!13591 () Formula!35)

(declare-fun e!36677 () Formula!35)

(assert (=> b!67765 (= lt!13591 e!36677)))

(declare-fun c!15661 () Bool)

(assert (=> b!67765 (= c!15661 (or lt!13595 (is-Or!40 (rhs!908 f!3683))))))

(assert (=> b!67765 (= lt!13595 (is-Implies!40 (rhs!908 f!3683)))))

(declare-fun b!67766 () Bool)

(assert (=> b!67766 (= e!36678 (= lt!13590 (rhs!908 f!3683)))))

(declare-fun b!67767 () Bool)

(declare-fun res!32530 () Formula!35)

(assert (=> b!67767 (= e!36677 res!32530)))

(assert (=> b!67767 true))

(assert (=> b!67767 true))

(declare-fun b!67768 () Bool)

(declare-fun res!32532 () Bool)

(assert (=> b!67768 (= e!36679 res!32532)))

(assert (=> b!67768 true))

(declare-fun b!67769 () Bool)

(declare-fun simplify!1 (Formula!35) Formula!35)

(assert (=> b!67769 (= e!36675 (= (simplify!1 (rhs!908 f!3683)) (rhs!908 f!3683)))))

(declare-fun b!67770 () Bool)

(assert (=> b!67770 (= e!36677 (simplify!1 (rhs!908 f!3683)))))

(declare-fun b!67771 () Bool)

(declare-fun res!32529 () Formula!35)

(assert (=> b!67771 (= e!36680 res!32529)))

(assert (=> b!67771 true))

(declare-fun b!67772 () Bool)

(assert (=> b!67772 (= e!36675 (= lt!13591 (rhs!908 f!3683)))))

(declare-fun b!67773 () Bool)

(assert (=> b!67773 (= e!36676 (simplifyIsStable!1 (ite lt!13592 (rhs!908 (rhs!908 f!3683)) (ite (is-Implies!40 (rhs!908 f!3683)) (rhs!909 (rhs!908 f!3683)) (ite (is-Or!40 (rhs!908 f!3683)) (rhs!910 (rhs!908 f!3683)) (f!4163 (rhs!908 f!3683)))))))))

(declare-fun b!67774 () Bool)

(assert (=> b!67774 (= e!36679 (simplifyIsStable!1 (ite lt!13592 (lhs!908 (rhs!908 f!3683)) (ite (is-Implies!40 (rhs!908 f!3683)) (lhs!909 (rhs!908 f!3683)) (lhs!910 (rhs!908 f!3683))))))))

(declare-fun b!67775 () Bool)

(declare-fun res!32531 () Bool)

(assert (=> b!67775 (= e!36676 res!32531)))

(assert (=> b!67775 true))

(declare-fun b!67776 () Bool)

(assert (=> b!67776 (= e!36680 (simplify!1 (rhs!908 f!3683)))))

(assert (= (and d!53522 c!15658) b!67773))

(assert (= (and d!53522 (not c!15658)) b!67775))

(assert (= (and d!53522 c!15662) b!67774))

(assert (= (and d!53522 (not c!15662)) b!67768))

(assert (= (and d!53522 c!15659) b!67776))

(assert (= (and d!53522 (not c!15659)) b!67771))

(assert (= (and b!67765 c!15661) b!67770))

(assert (= (and b!67765 (not c!15661)) b!67767))

(assert (= (and b!67765 c!15657) b!67772))

(assert (= (and b!67765 (not c!15657)) b!67769))

(assert (= (and d!53522 c!15660) b!67766))

(assert (= (and d!53522 (not c!15660)) b!67765))

(declare-fun m!70093 () Bool)

(assert (=> b!67776 m!70093))

(declare-fun m!70095 () Bool)

(assert (=> d!53522 m!70095))

(declare-fun m!70097 () Bool)

(assert (=> b!67774 m!70097))

(declare-fun m!70099 () Bool)

(assert (=> b!67773 m!70099))

(assert (=> b!67769 m!70093))

(assert (=> b!67770 m!70093))

(assert (=> b!67738 d!53522))

(declare-fun b!67803 () Bool)

(declare-fun e!36701 () Bool)

(declare-fun res!32562 () Bool)

(assert (=> b!67803 (= e!36701 res!32562)))

(assert (=> b!67803 true))

(assert (=> b!67803 true))

(declare-fun b!67804 () Bool)

(declare-fun e!36703 () Bool)

(declare-fun res!32563 () Bool)

(assert (=> b!67804 (= e!36703 res!32563)))

(assert (=> b!67804 true))

(declare-fun b!67805 () Bool)

(declare-fun lt!13611 () Bool)

(assert (=> b!67805 (= e!36701 lt!13611)))

(declare-fun b!67806 () Bool)

(declare-fun e!36699 () Bool)

(declare-fun e!36704 () Bool)

(assert (=> b!67806 (= e!36699 e!36704)))

(declare-fun c!15676 () Bool)

(declare-fun lt!13612 () Bool)

(assert (=> b!67806 (= c!15676 (or lt!13612 (and (not (is-Implies!40 f!3691)) (is-Not!40 f!3691))))))

(declare-fun b!67807 () Bool)

(declare-fun e!36700 () Bool)

(declare-fun lt!13615 () Bool)

(assert (=> b!67807 (= e!36700 (and lt!13611 lt!13615))))

(declare-fun b!67808 () Bool)

(declare-fun e!36698 () Bool)

(declare-fun res!32560 () Bool)

(assert (=> b!67808 (= e!36698 res!32560)))

(assert (=> b!67808 true))

(declare-fun b!67809 () Bool)

(declare-fun res!32561 () Bool)

(assert (=> b!67809 (= e!36704 res!32561)))

(assert (=> b!67809 true))

(declare-fun b!67810 () Bool)

(declare-fun e!36697 () Bool)

(assert (=> b!67810 (= e!36697 e!36699)))

(declare-fun res!32564 () Bool)

(assert (=> b!67810 (=> (not res!32564) (not e!36699))))

(assert (=> b!67810 (= res!32564 lt!13612)))

(assert (=> b!67810 (= lt!13612 (is-Or!40 f!3691))))

(declare-fun b!67811 () Bool)

(assert (=> b!67811 (= e!36704 lt!13611)))

(declare-fun b!67812 () Bool)

(declare-fun lt!13616 () Bool)

(assert (=> b!67812 (= e!36698 (isSimplified!1 (ite lt!13616 (lhs!908 f!3691) (ite (is-Or!40 f!3691) (lhs!910 f!3691) (f!4163 f!3691)))))))

(declare-fun lt!13613 () Bool)

(declare-fun b!67813 () Bool)

(declare-fun lt!13610 () Bool)

(assert (=> b!67813 (= e!36700 (ite lt!13613 (and lt!13610 lt!13615) (and (not (is-Implies!40 f!3691)) (or (not (is-Not!40 f!3691)) lt!13610))))))

(assert (=> b!67813 (= lt!13610 e!36701)))

(declare-fun c!15675 () Bool)

(assert (=> b!67813 (= c!15675 (or lt!13613 (and (not (is-Implies!40 f!3691)) (is-Not!40 f!3691))))))

(assert (=> b!67813 (= lt!13613 (is-Or!40 f!3691))))

(declare-fun b!67814 () Bool)

(declare-fun e!36702 () Bool)

(assert (=> b!67814 (= e!36702 e!36697)))

(declare-fun res!32559 () Bool)

(assert (=> b!67814 (=> (not res!32559) (not e!36697))))

(assert (=> b!67814 (= res!32559 (not lt!13616))))

(declare-fun d!53524 () Bool)

(declare-fun c!15673 () Bool)

(assert (=> d!53524 (= c!15673 lt!13616)))

(assert (=> d!53524 (= lt!13615 e!36703)))

(declare-fun c!15674 () Bool)

(assert (=> d!53524 (= c!15674 e!36702)))

(declare-fun res!32558 () Bool)

(assert (=> d!53524 (=> res!32558 e!36702)))

(declare-fun lt!13614 () Bool)

(assert (=> d!53524 (= res!32558 lt!13614)))

(assert (=> d!53524 (= lt!13614 (and lt!13616 lt!13611))))

(assert (=> d!53524 (= lt!13611 e!36698)))

(declare-fun c!15677 () Bool)

(assert (=> d!53524 (= c!15677 (or lt!13616 (is-Or!40 f!3691) (and (not (is-Implies!40 f!3691)) (is-Not!40 f!3691))))))

(assert (=> d!53524 (= lt!13616 (is-And!40 f!3691))))

(assert (=> d!53524 (= (isSimplified!1 f!3691) e!36700)))

(declare-fun b!67815 () Bool)

(assert (=> b!67815 (= e!36703 (isSimplified!1 (ite lt!13614 (rhs!908 f!3691) (rhs!910 f!3691))))))

(assert (= (and d!53524 c!15677) b!67812))

(assert (= (and d!53524 (not c!15677)) b!67808))

(assert (= (and d!53524 (not res!32558)) b!67814))

(assert (= (and b!67814 res!32559) b!67810))

(assert (= (and b!67810 res!32564) b!67806))

(assert (= (and b!67806 c!15676) b!67811))

(assert (= (and b!67806 (not c!15676)) b!67809))

(assert (= (and d!53524 c!15674) b!67815))

(assert (= (and d!53524 (not c!15674)) b!67804))

(assert (= (and b!67813 c!15675) b!67805))

(assert (= (and b!67813 (not c!15675)) b!67803))

(assert (= (and d!53524 c!15673) b!67807))

(assert (= (and d!53524 (not c!15673)) b!67813))

(declare-fun m!70101 () Bool)

(assert (=> b!67812 m!70101))

(declare-fun m!70103 () Bool)

(assert (=> b!67815 m!70103))

(assert (=> b!67740 d!53524))

(declare-fun b!67816 () Bool)

(declare-fun e!36709 () Bool)

(declare-fun res!32569 () Bool)

(assert (=> b!67816 (= e!36709 res!32569)))

(assert (=> b!67816 true))

(assert (=> b!67816 true))

(declare-fun b!67817 () Bool)

(declare-fun e!36711 () Bool)

(declare-fun res!32570 () Bool)

(assert (=> b!67817 (= e!36711 res!32570)))

(assert (=> b!67817 true))

(declare-fun b!67818 () Bool)

(declare-fun lt!13618 () Bool)

(assert (=> b!67818 (= e!36709 lt!13618)))

(declare-fun b!67819 () Bool)

(declare-fun e!36707 () Bool)

(declare-fun e!36712 () Bool)

(assert (=> b!67819 (= e!36707 e!36712)))

(declare-fun c!15681 () Bool)

(declare-fun lt!13619 () Bool)

(assert (=> b!67819 (= c!15681 (or lt!13619 (and (not (is-Implies!40 f!3683)) (is-Not!40 f!3683))))))

(declare-fun b!67820 () Bool)

(declare-fun e!36708 () Bool)

(declare-fun lt!13622 () Bool)

(assert (=> b!67820 (= e!36708 (and lt!13618 lt!13622))))

(declare-fun b!67821 () Bool)

(declare-fun e!36706 () Bool)

(declare-fun res!32567 () Bool)

(assert (=> b!67821 (= e!36706 res!32567)))

(assert (=> b!67821 true))

(declare-fun b!67822 () Bool)

(declare-fun res!32568 () Bool)

(assert (=> b!67822 (= e!36712 res!32568)))

(assert (=> b!67822 true))

(declare-fun b!67823 () Bool)

(declare-fun e!36705 () Bool)

(assert (=> b!67823 (= e!36705 e!36707)))

(declare-fun res!32571 () Bool)

(assert (=> b!67823 (=> (not res!32571) (not e!36707))))

(assert (=> b!67823 (= res!32571 lt!13619)))

(assert (=> b!67823 (= lt!13619 (is-Or!40 f!3683))))

(declare-fun b!67824 () Bool)

(assert (=> b!67824 (= e!36712 lt!13618)))

(declare-fun b!67825 () Bool)

(declare-fun lt!13623 () Bool)

(assert (=> b!67825 (= e!36706 (isSimplified!1 (ite lt!13623 (lhs!908 f!3683) (ite (is-Or!40 f!3683) (lhs!910 f!3683) (f!4163 f!3683)))))))

(declare-fun lt!13617 () Bool)

(declare-fun b!67826 () Bool)

(declare-fun lt!13620 () Bool)

(assert (=> b!67826 (= e!36708 (ite lt!13620 (and lt!13617 lt!13622) (and (not (is-Implies!40 f!3683)) (or (not (is-Not!40 f!3683)) lt!13617))))))

(assert (=> b!67826 (= lt!13617 e!36709)))

(declare-fun c!15680 () Bool)

(assert (=> b!67826 (= c!15680 (or lt!13620 (and (not (is-Implies!40 f!3683)) (is-Not!40 f!3683))))))

(assert (=> b!67826 (= lt!13620 (is-Or!40 f!3683))))

(declare-fun b!67827 () Bool)

(declare-fun e!36710 () Bool)

(assert (=> b!67827 (= e!36710 e!36705)))

(declare-fun res!32566 () Bool)

(assert (=> b!67827 (=> (not res!32566) (not e!36705))))

(assert (=> b!67827 (= res!32566 (not lt!13623))))

(declare-fun d!53526 () Bool)

(declare-fun c!15678 () Bool)

(assert (=> d!53526 (= c!15678 lt!13623)))

(assert (=> d!53526 (= lt!13622 e!36711)))

(declare-fun c!15679 () Bool)

(assert (=> d!53526 (= c!15679 e!36710)))

(declare-fun res!32565 () Bool)

(assert (=> d!53526 (=> res!32565 e!36710)))

(declare-fun lt!13621 () Bool)

(assert (=> d!53526 (= res!32565 lt!13621)))

(assert (=> d!53526 (= lt!13621 (and lt!13623 lt!13618))))

(assert (=> d!53526 (= lt!13618 e!36706)))

(declare-fun c!15682 () Bool)

(assert (=> d!53526 (= c!15682 (or lt!13623 (is-Or!40 f!3683) (and (not (is-Implies!40 f!3683)) (is-Not!40 f!3683))))))

(assert (=> d!53526 (= lt!13623 (is-And!40 f!3683))))

(assert (=> d!53526 (= (isSimplified!1 f!3683) e!36708)))

(declare-fun b!67828 () Bool)

(assert (=> b!67828 (= e!36711 (isSimplified!1 (ite lt!13621 (rhs!908 f!3683) (rhs!910 f!3683))))))

(assert (= (and d!53526 c!15682) b!67825))

(assert (= (and d!53526 (not c!15682)) b!67821))

(assert (= (and d!53526 (not res!32565)) b!67827))

(assert (= (and b!67827 res!32566) b!67823))

(assert (= (and b!67823 res!32571) b!67819))

(assert (= (and b!67819 c!15681) b!67824))

(assert (= (and b!67819 (not c!15681)) b!67822))

(assert (= (and d!53526 c!15679) b!67828))

(assert (= (and d!53526 (not c!15679)) b!67817))

(assert (= (and b!67826 c!15680) b!67818))

(assert (= (and b!67826 (not c!15680)) b!67816))

(assert (= (and d!53526 c!15678) b!67820))

(assert (= (and d!53526 (not c!15678)) b!67826))

(declare-fun m!70105 () Bool)

(assert (=> b!67825 m!70105))

(declare-fun m!70107 () Bool)

(assert (=> b!67828 m!70107))

(assert (=> start!9378 d!53526))

(push 1)

(assert (not b!67769))

(assert (not b!67812))

(assert (not b!67774))

(assert (not d!53522))

(assert (not b!67825))

(assert (not b!67776))

(assert (not b!67770))

(assert (not b!67815))

(assert (not b!67828))

(assert (not b!67773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

