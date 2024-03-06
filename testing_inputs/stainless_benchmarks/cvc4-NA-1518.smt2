; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10292 () Bool)

(assert start!10292)

(declare-fun res!37665 () Bool)

(declare-fun e!40928 () Bool)

(assert (=> start!10292 (=> (not res!37665) (not e!40928))))

(declare-datatypes () ((Formula!87 (Implies!91 (lhs!1374 Formula!87) (rhs!1374 Formula!87)) (And!91 (lhs!1375 Formula!87) (rhs!1375 Formula!87)) (Or!91 (lhs!1376 Formula!87) (rhs!1376 Formula!87)) (Literal!85 (id!4948 (_ BitVec 32))) (Not!91 (f!4708 Formula!87)))))

(declare-fun f!4460 () Formula!87)

(declare-fun isSimplified!0 (Formula!87) Bool)

(assert (=> start!10292 (= res!37665 (isSimplified!0 f!4460))))

(assert (=> start!10292 e!40928))

(assert (=> start!10292 true))

(declare-fun b!75749 () Bool)

(declare-fun simplify!0 (Formula!87) Formula!87)

(assert (=> b!75749 (= e!40928 (not (= (simplify!0 f!4460) f!4460)))))

(declare-fun b!75748 () Bool)

(declare-fun res!37667 () Bool)

(assert (=> b!75748 (=> (not res!37667) (not e!40928))))

(declare-fun inductVal!705 () Bool)

(declare-fun simplifyIsStable!0 (Formula!87) Bool)

(assert (=> b!75748 (= res!37667 (= inductVal!705 (simplifyIsStable!0 (lhs!1375 f!4460))))))

(declare-fun b!75747 () Bool)

(declare-fun res!37664 () Bool)

(assert (=> b!75747 (=> (not res!37664) (not e!40928))))

(declare-fun inductVal!697 () Bool)

(assert (=> b!75747 (= res!37664 (= inductVal!697 (simplifyIsStable!0 (rhs!1375 f!4460))))))

(declare-fun b!75746 () Bool)

(declare-fun res!37666 () Bool)

(assert (=> b!75746 (=> (not res!37666) (not e!40928))))

(assert (=> b!75746 (= res!37666 (and (not (is-Implies!91 f!4460)) (is-And!91 f!4460)))))

(assert (= (and start!10292 res!37665) b!75746))

(assert (= (and b!75746 res!37666) b!75747))

(assert (= (and b!75747 res!37664) b!75748))

(assert (= (and b!75748 res!37667) b!75749))

(declare-fun m!73172 () Bool)

(assert (=> start!10292 m!73172))

(declare-fun m!73174 () Bool)

(assert (=> b!75749 m!73174))

(declare-fun m!73176 () Bool)

(assert (=> b!75748 m!73176))

(declare-fun m!73178 () Bool)

(assert (=> b!75747 m!73178))

(push 1)

(assert (not b!75748))

(assert (not b!75747))

(assert (not start!10292))

(assert (not b!75749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75774 () Bool)

(declare-fun e!40941 () Bool)

(declare-fun res!37699 () Bool)

(assert (=> b!75774 (= e!40941 res!37699)))

(assert (=> b!75774 true))

(declare-fun b!75775 () Bool)

(declare-fun e!40944 () Formula!87)

(declare-fun res!37697 () Formula!87)

(assert (=> b!75775 (= e!40944 res!37697)))

(assert (=> b!75775 true))

(declare-fun b!75776 () Bool)

(declare-fun e!40946 () Bool)

(declare-fun res!37698 () Bool)

(assert (=> b!75776 (= e!40946 res!37698)))

(assert (=> b!75776 true))

(declare-fun b!75777 () Bool)

(declare-fun e!40945 () Bool)

(declare-fun e!40942 () Bool)

(assert (=> b!75777 (= e!40945 e!40942)))

(declare-fun c!18683 () Bool)

(declare-fun lt!16605 () Bool)

(assert (=> b!75777 (= c!18683 (or lt!16605 (is-Or!91 (lhs!1375 f!4460))))))

(assert (=> b!75777 (= lt!16605 (is-And!91 (lhs!1375 f!4460)))))

(declare-fun b!75778 () Bool)

(declare-fun lt!16608 () Bool)

(assert (=> b!75778 (= e!40946 (simplifyIsStable!0 (ite lt!16608 (lhs!1374 (lhs!1375 f!4460)) (ite (is-And!91 (lhs!1375 f!4460)) (lhs!1375 (lhs!1375 f!4460)) (lhs!1376 (lhs!1375 f!4460))))))))

(declare-fun b!75779 () Bool)

(declare-fun e!40943 () Formula!87)

(declare-fun lt!16606 () Formula!87)

(assert (=> b!75779 (= e!40943 lt!16606)))

(declare-fun b!75780 () Bool)

(assert (=> b!75780 (= e!40942 (= (simplify!0 (lhs!1375 f!4460)) (lhs!1375 f!4460)))))

(declare-fun b!75781 () Bool)

(declare-fun res!37700 () Formula!87)

(assert (=> b!75781 (= e!40943 res!37700)))

(assert (=> b!75781 true))

(assert (=> b!75781 true))

(declare-fun b!75782 () Bool)

(assert (=> b!75782 (= e!40941 (simplifyIsStable!0 (ite lt!16608 (rhs!1374 (lhs!1375 f!4460)) (ite (is-And!91 (lhs!1375 f!4460)) (rhs!1375 (lhs!1375 f!4460)) (ite (is-Or!91 (lhs!1375 f!4460)) (rhs!1376 (lhs!1375 f!4460)) (f!4708 (lhs!1375 f!4460)))))))))

(declare-fun b!75783 () Bool)

(assert (=> b!75783 (= e!40945 (= lt!16606 (lhs!1375 f!4460)))))

(declare-fun b!75784 () Bool)

(assert (=> b!75784 (= e!40944 (simplify!0 (lhs!1375 f!4460)))))

(declare-fun d!54867 () Bool)

(assert (=> d!54867 e!40945))

(declare-fun c!18685 () Bool)

(assert (=> d!54867 (= c!18685 lt!16608)))

(assert (=> d!54867 (= lt!16606 e!40944)))

(declare-fun c!18684 () Bool)

(assert (=> d!54867 (= c!18684 (or lt!16608 (is-And!91 (lhs!1375 f!4460)) (is-Or!91 (lhs!1375 f!4460))))))

(declare-fun lt!16604 () Bool)

(assert (=> d!54867 (= lt!16604 e!40946)))

(declare-fun c!18682 () Bool)

(assert (=> d!54867 (= c!18682 (or lt!16608 (is-And!91 (lhs!1375 f!4460)) (is-Or!91 (lhs!1375 f!4460))))))

(declare-fun lt!16607 () Bool)

(assert (=> d!54867 (= lt!16607 e!40941)))

(declare-fun c!18681 () Bool)

(assert (=> d!54867 (= c!18681 (or lt!16608 (is-And!91 (lhs!1375 f!4460)) (is-Or!91 (lhs!1375 f!4460)) (not (is-Literal!85 (lhs!1375 f!4460)))))))

(assert (=> d!54867 (= lt!16608 (is-Implies!91 (lhs!1375 f!4460)))))

(assert (=> d!54867 (isSimplified!0 (lhs!1375 f!4460))))

(assert (=> d!54867 (= (simplifyIsStable!0 (lhs!1375 f!4460)) true)))

(declare-fun b!75785 () Bool)

(assert (=> b!75785 (= e!40942 (= e!40943 (lhs!1375 f!4460)))))

(declare-fun c!18680 () Bool)

(assert (=> b!75785 (= c!18680 (or lt!16605 (is-Or!91 (lhs!1375 f!4460))))))

(assert (= (and d!54867 c!18681) b!75782))

(assert (= (and d!54867 (not c!18681)) b!75774))

(assert (= (and d!54867 c!18682) b!75778))

(assert (= (and d!54867 (not c!18682)) b!75776))

(assert (= (and d!54867 c!18684) b!75784))

(assert (= (and d!54867 (not c!18684)) b!75775))

(assert (= (and b!75785 c!18680) b!75779))

(assert (= (and b!75785 (not c!18680)) b!75781))

(assert (= (and b!75777 c!18683) b!75785))

(assert (= (and b!75777 (not c!18683)) b!75780))

(assert (= (and d!54867 c!18685) b!75783))

(assert (= (and d!54867 (not c!18685)) b!75777))

(declare-fun m!73180 () Bool)

(assert (=> b!75782 m!73180))

(declare-fun m!73182 () Bool)

(assert (=> b!75784 m!73182))

(declare-fun m!73184 () Bool)

(assert (=> d!54867 m!73184))

(declare-fun m!73186 () Bool)

(assert (=> b!75778 m!73186))

(assert (=> b!75780 m!73182))

(assert (=> b!75748 d!54867))

(declare-fun b!75786 () Bool)

(declare-fun e!40947 () Bool)

(declare-fun res!37703 () Bool)

(assert (=> b!75786 (= e!40947 res!37703)))

(assert (=> b!75786 true))

(declare-fun b!75787 () Bool)

(declare-fun e!40950 () Formula!87)

(declare-fun res!37701 () Formula!87)

(assert (=> b!75787 (= e!40950 res!37701)))

(assert (=> b!75787 true))

(declare-fun b!75788 () Bool)

(declare-fun e!40952 () Bool)

(declare-fun res!37702 () Bool)

(assert (=> b!75788 (= e!40952 res!37702)))

(assert (=> b!75788 true))

(declare-fun b!75789 () Bool)

(declare-fun e!40951 () Bool)

(declare-fun e!40948 () Bool)

(assert (=> b!75789 (= e!40951 e!40948)))

(declare-fun c!18689 () Bool)

(declare-fun lt!16610 () Bool)

(assert (=> b!75789 (= c!18689 (or lt!16610 (is-Or!91 (rhs!1375 f!4460))))))

(assert (=> b!75789 (= lt!16610 (is-And!91 (rhs!1375 f!4460)))))

(declare-fun b!75790 () Bool)

(declare-fun lt!16613 () Bool)

(assert (=> b!75790 (= e!40952 (simplifyIsStable!0 (ite lt!16613 (lhs!1374 (rhs!1375 f!4460)) (ite (is-And!91 (rhs!1375 f!4460)) (lhs!1375 (rhs!1375 f!4460)) (lhs!1376 (rhs!1375 f!4460))))))))

(declare-fun b!75791 () Bool)

(declare-fun e!40949 () Formula!87)

(declare-fun lt!16611 () Formula!87)

(assert (=> b!75791 (= e!40949 lt!16611)))

(declare-fun b!75792 () Bool)

(assert (=> b!75792 (= e!40948 (= (simplify!0 (rhs!1375 f!4460)) (rhs!1375 f!4460)))))

(declare-fun b!75793 () Bool)

(declare-fun res!37704 () Formula!87)

(assert (=> b!75793 (= e!40949 res!37704)))

(assert (=> b!75793 true))

(assert (=> b!75793 true))

(declare-fun b!75794 () Bool)

(assert (=> b!75794 (= e!40947 (simplifyIsStable!0 (ite lt!16613 (rhs!1374 (rhs!1375 f!4460)) (ite (is-And!91 (rhs!1375 f!4460)) (rhs!1375 (rhs!1375 f!4460)) (ite (is-Or!91 (rhs!1375 f!4460)) (rhs!1376 (rhs!1375 f!4460)) (f!4708 (rhs!1375 f!4460)))))))))

(declare-fun b!75795 () Bool)

(assert (=> b!75795 (= e!40951 (= lt!16611 (rhs!1375 f!4460)))))

(declare-fun b!75796 () Bool)

(assert (=> b!75796 (= e!40950 (simplify!0 (rhs!1375 f!4460)))))

(declare-fun d!54869 () Bool)

(assert (=> d!54869 e!40951))

(declare-fun c!18691 () Bool)

(assert (=> d!54869 (= c!18691 lt!16613)))

(assert (=> d!54869 (= lt!16611 e!40950)))

(declare-fun c!18690 () Bool)

(assert (=> d!54869 (= c!18690 (or lt!16613 (is-And!91 (rhs!1375 f!4460)) (is-Or!91 (rhs!1375 f!4460))))))

(declare-fun lt!16609 () Bool)

(assert (=> d!54869 (= lt!16609 e!40952)))

(declare-fun c!18688 () Bool)

(assert (=> d!54869 (= c!18688 (or lt!16613 (is-And!91 (rhs!1375 f!4460)) (is-Or!91 (rhs!1375 f!4460))))))

(declare-fun lt!16612 () Bool)

(assert (=> d!54869 (= lt!16612 e!40947)))

(declare-fun c!18687 () Bool)

(assert (=> d!54869 (= c!18687 (or lt!16613 (is-And!91 (rhs!1375 f!4460)) (is-Or!91 (rhs!1375 f!4460)) (not (is-Literal!85 (rhs!1375 f!4460)))))))

(assert (=> d!54869 (= lt!16613 (is-Implies!91 (rhs!1375 f!4460)))))

(assert (=> d!54869 (isSimplified!0 (rhs!1375 f!4460))))

(assert (=> d!54869 (= (simplifyIsStable!0 (rhs!1375 f!4460)) true)))

(declare-fun b!75797 () Bool)

(assert (=> b!75797 (= e!40948 (= e!40949 (rhs!1375 f!4460)))))

(declare-fun c!18686 () Bool)

(assert (=> b!75797 (= c!18686 (or lt!16610 (is-Or!91 (rhs!1375 f!4460))))))

(assert (= (and d!54869 c!18687) b!75794))

(assert (= (and d!54869 (not c!18687)) b!75786))

(assert (= (and d!54869 c!18688) b!75790))

(assert (= (and d!54869 (not c!18688)) b!75788))

(assert (= (and d!54869 c!18690) b!75796))

(assert (= (and d!54869 (not c!18690)) b!75787))

(assert (= (and b!75797 c!18686) b!75791))

(assert (= (and b!75797 (not c!18686)) b!75793))

(assert (= (and b!75789 c!18689) b!75797))

(assert (= (and b!75789 (not c!18689)) b!75792))

(assert (= (and d!54869 c!18691) b!75795))

(assert (= (and d!54869 (not c!18691)) b!75789))

(declare-fun m!73188 () Bool)

(assert (=> b!75794 m!73188))

(declare-fun m!73190 () Bool)

(assert (=> b!75796 m!73190))

(declare-fun m!73192 () Bool)

(assert (=> d!54869 m!73192))

(declare-fun m!73194 () Bool)

(assert (=> b!75790 m!73194))

(assert (=> b!75792 m!73190))

(assert (=> b!75747 d!54869))

(declare-fun b!75824 () Bool)

(declare-fun e!40972 () Bool)

(declare-fun lt!16632 () Bool)

(assert (=> b!75824 (= e!40972 lt!16632)))

(declare-fun b!75825 () Bool)

(declare-fun e!40975 () Bool)

(declare-fun e!40973 () Bool)

(assert (=> b!75825 (= e!40975 e!40973)))

(declare-fun c!18706 () Bool)

(declare-fun lt!16628 () Bool)

(assert (=> b!75825 (= c!18706 (or lt!16628 (and (not (is-Implies!91 f!4460)) (is-Not!91 f!4460))))))

(declare-fun b!75826 () Bool)

(declare-fun e!40969 () Bool)

(declare-fun res!37732 () Bool)

(assert (=> b!75826 (= e!40969 res!37732)))

(assert (=> b!75826 true))

(declare-fun b!75827 () Bool)

(declare-fun res!37730 () Bool)

(assert (=> b!75827 (= e!40973 res!37730)))

(assert (=> b!75827 true))

(declare-fun d!54871 () Bool)

(declare-fun c!18702 () Bool)

(declare-fun lt!16631 () Bool)

(assert (=> d!54871 (= c!18702 lt!16631)))

(declare-fun lt!16629 () Bool)

(declare-fun e!40974 () Bool)

(assert (=> d!54871 (= lt!16629 e!40974)))

(declare-fun c!18703 () Bool)

(declare-fun e!40970 () Bool)

(assert (=> d!54871 (= c!18703 e!40970)))

(declare-fun res!37733 () Bool)

(assert (=> d!54871 (=> res!37733 e!40970)))

(declare-fun lt!16634 () Bool)

(assert (=> d!54871 (= res!37733 lt!16634)))

(assert (=> d!54871 (= lt!16634 (and lt!16631 lt!16632))))

(assert (=> d!54871 (= lt!16632 e!40969)))

(declare-fun c!18705 () Bool)

(assert (=> d!54871 (= c!18705 (or lt!16631 (is-Or!91 f!4460) (and (not (is-Implies!91 f!4460)) (is-Not!91 f!4460))))))

(assert (=> d!54871 (= lt!16631 (is-And!91 f!4460))))

(declare-fun e!40971 () Bool)

(assert (=> d!54871 (= (isSimplified!0 f!4460) e!40971)))

(declare-fun b!75828 () Bool)

(assert (=> b!75828 (= e!40971 (and lt!16632 lt!16629))))

(declare-fun lt!16630 () Bool)

(declare-fun b!75829 () Bool)

(declare-fun lt!16633 () Bool)

(assert (=> b!75829 (= e!40971 (ite lt!16630 (and lt!16633 lt!16629) (and (not (is-Implies!91 f!4460)) (or (not (is-Not!91 f!4460)) lt!16633))))))

(assert (=> b!75829 (= lt!16633 e!40972)))

(declare-fun c!18704 () Bool)

(assert (=> b!75829 (= c!18704 (or lt!16630 (and (not (is-Implies!91 f!4460)) (is-Not!91 f!4460))))))

(assert (=> b!75829 (= lt!16630 (is-Or!91 f!4460))))

(declare-fun b!75830 () Bool)

(assert (=> b!75830 (= e!40969 (isSimplified!0 (ite lt!16631 (lhs!1375 f!4460) (ite (is-Or!91 f!4460) (lhs!1376 f!4460) (f!4708 f!4460)))))))

(declare-fun b!75831 () Bool)

(declare-fun e!40976 () Bool)

(assert (=> b!75831 (= e!40976 e!40975)))

(declare-fun res!37734 () Bool)

(assert (=> b!75831 (=> (not res!37734) (not e!40975))))

(assert (=> b!75831 (= res!37734 lt!16628)))

(assert (=> b!75831 (= lt!16628 (is-Or!91 f!4460))))

(declare-fun b!75832 () Bool)

(declare-fun res!37736 () Bool)

(assert (=> b!75832 (= e!40974 res!37736)))

(assert (=> b!75832 true))

(declare-fun b!75833 () Bool)

(assert (=> b!75833 (= e!40973 lt!16632)))

(declare-fun b!75834 () Bool)

(declare-fun res!37731 () Bool)

(assert (=> b!75834 (= e!40972 res!37731)))

(assert (=> b!75834 true))

(assert (=> b!75834 true))

(declare-fun b!75835 () Bool)

(assert (=> b!75835 (= e!40974 (isSimplified!0 (ite lt!16634 (rhs!1375 f!4460) (rhs!1376 f!4460))))))

(declare-fun b!75836 () Bool)

(assert (=> b!75836 (= e!40970 e!40976)))

(declare-fun res!37735 () Bool)

(assert (=> b!75836 (=> (not res!37735) (not e!40976))))

(assert (=> b!75836 (= res!37735 (not lt!16631))))

(assert (= (and d!54871 c!18705) b!75830))

(assert (= (and d!54871 (not c!18705)) b!75826))

(assert (= (and d!54871 (not res!37733)) b!75836))

(assert (= (and b!75836 res!37735) b!75831))

(assert (= (and b!75831 res!37734) b!75825))

(assert (= (and b!75825 c!18706) b!75833))

(assert (= (and b!75825 (not c!18706)) b!75827))

(assert (= (and d!54871 c!18703) b!75835))

(assert (= (and d!54871 (not c!18703)) b!75832))

(assert (= (and b!75829 c!18704) b!75824))

(assert (= (and b!75829 (not c!18704)) b!75834))

(assert (= (and d!54871 c!18702) b!75828))

(assert (= (and d!54871 (not c!18702)) b!75829))

(declare-fun m!73196 () Bool)

(assert (=> b!75830 m!73196))

(declare-fun m!73198 () Bool)

(assert (=> b!75835 m!73198))

(assert (=> start!10292 d!54871))

(declare-fun b!75865 () Bool)

(declare-fun e!40992 () Formula!87)

(declare-fun lt!16654 () Formula!87)

(assert (=> b!75865 (= e!40992 lt!16654)))

(declare-fun d!54873 () Bool)

(declare-fun lt!16661 () Formula!87)

(assert (=> d!54873 (isSimplified!0 lt!16661)))

(declare-fun e!40994 () Formula!87)

(assert (=> d!54873 (= lt!16661 e!40994)))

(declare-fun c!18724 () Bool)

(declare-fun lt!16658 () Bool)

(assert (=> d!54873 (= c!18724 lt!16658)))

(declare-fun lt!16656 () Formula!87)

(declare-fun e!40995 () Formula!87)

(assert (=> d!54873 (= lt!16656 e!40995)))

(declare-fun c!18726 () Bool)

(assert (=> d!54873 (= c!18726 (or lt!16658 (is-Or!91 f!4460) (is-Implies!91 f!4460)))))

(declare-fun e!40996 () Formula!87)

(assert (=> d!54873 (= lt!16654 e!40996)))

(declare-fun c!18723 () Bool)

(assert (=> d!54873 (= c!18723 (or lt!16658 (is-Or!91 f!4460) (is-Implies!91 f!4460) (is-Not!91 f!4460)))))

(assert (=> d!54873 (= lt!16658 (is-And!91 f!4460))))

(assert (=> d!54873 (= (simplify!0 f!4460) lt!16661)))

(declare-fun e!40997 () Formula!87)

(declare-fun b!75866 () Bool)

(declare-fun lt!16653 () Formula!87)

(declare-fun lt!16660 () Formula!87)

(declare-fun lt!16657 () Bool)

(assert (=> b!75866 (= e!40997 (ite lt!16657 (Or!91 (Not!91 lt!16660) lt!16653) (ite (is-Not!91 f!4460) (Not!91 lt!16660) f!4460)))))

(declare-fun e!40991 () Formula!87)

(assert (=> b!75866 (= lt!16660 e!40991)))

(declare-fun c!18721 () Bool)

(assert (=> b!75866 (= c!18721 (or lt!16657 (is-Not!91 f!4460)))))

(assert (=> b!75866 (= lt!16657 (is-Implies!91 f!4460))))

(declare-fun b!75867 () Bool)

(declare-fun lt!16659 () Formula!87)

(assert (=> b!75867 (= e!40991 lt!16659)))

(declare-fun b!75868 () Bool)

(declare-fun res!37765 () Formula!87)

(assert (=> b!75868 (= e!40992 res!37765)))

(assert (=> b!75868 true))

(declare-fun b!75869 () Bool)

(assert (=> b!75869 (= e!40994 e!40997)))

(declare-fun c!18722 () Bool)

(declare-fun lt!16655 () Bool)

(assert (=> b!75869 (= c!18722 lt!16655)))

(declare-fun e!40993 () Formula!87)

(assert (=> b!75869 (= lt!16653 e!40993)))

(declare-fun c!18727 () Bool)

(assert (=> b!75869 (= c!18727 (or lt!16655 (is-Implies!91 f!4460)))))

(assert (=> b!75869 (= lt!16659 e!40992)))

(declare-fun c!18725 () Bool)

(assert (=> b!75869 (= c!18725 (or lt!16655 (is-Implies!91 f!4460) (is-Not!91 f!4460)))))

(assert (=> b!75869 (= lt!16655 (is-Or!91 f!4460))))

(declare-fun b!75870 () Bool)

(declare-fun res!37763 () Formula!87)

(assert (=> b!75870 (= e!40993 res!37763)))

(assert (=> b!75870 true))

(declare-fun b!75871 () Bool)

(assert (=> b!75871 (= e!40997 (Or!91 lt!16659 lt!16653))))

(declare-fun b!75872 () Bool)

(declare-fun res!37762 () Formula!87)

(assert (=> b!75872 (= e!40996 res!37762)))

(assert (=> b!75872 true))

(declare-fun b!75873 () Bool)

(assert (=> b!75873 (= e!40996 (simplify!0 (ite lt!16658 (lhs!1375 f!4460) (ite (is-Or!91 f!4460) (lhs!1376 f!4460) (ite (is-Implies!91 f!4460) (lhs!1374 f!4460) (f!4708 f!4460))))))))

(declare-fun b!75874 () Bool)

(assert (=> b!75874 (= e!40993 lt!16656)))

(declare-fun b!75875 () Bool)

(declare-fun res!37766 () Formula!87)

(assert (=> b!75875 (= e!40995 res!37766)))

(assert (=> b!75875 true))

(declare-fun b!75876 () Bool)

(assert (=> b!75876 (= e!40994 (And!91 lt!16654 lt!16656))))

(declare-fun b!75877 () Bool)

(declare-fun res!37764 () Formula!87)

(assert (=> b!75877 (= e!40991 res!37764)))

(assert (=> b!75877 true))

(assert (=> b!75877 true))

(declare-fun b!75878 () Bool)

(assert (=> b!75878 (= e!40995 (simplify!0 (ite lt!16658 (rhs!1375 f!4460) (ite (is-Or!91 f!4460) (rhs!1376 f!4460) (rhs!1374 f!4460)))))))

(assert (= (and d!54873 c!18723) b!75873))

(assert (= (and d!54873 (not c!18723)) b!75872))

(assert (= (and d!54873 c!18726) b!75878))

(assert (= (and d!54873 (not c!18726)) b!75875))

(assert (= (and b!75869 c!18725) b!75865))

(assert (= (and b!75869 (not c!18725)) b!75868))

(assert (= (and b!75869 c!18727) b!75874))

(assert (= (and b!75869 (not c!18727)) b!75870))

(assert (= (and b!75866 c!18721) b!75867))

(assert (= (and b!75866 (not c!18721)) b!75877))

(assert (= (and b!75869 c!18722) b!75871))

(assert (= (and b!75869 (not c!18722)) b!75866))

(assert (= (and d!54873 c!18724) b!75876))

(assert (= (and d!54873 (not c!18724)) b!75869))

(declare-fun m!73200 () Bool)

(assert (=> d!54873 m!73200))

(declare-fun m!73202 () Bool)

(assert (=> b!75873 m!73202))

(declare-fun m!73204 () Bool)

(assert (=> b!75878 m!73204))

(assert (=> b!75749 d!54873))

(push 1)

(assert (not b!75784))

(assert (not b!75830))

(assert (not b!75873))

(assert (not b!75778))

(assert (not b!75780))

(assert (not d!54867))

(assert (not b!75796))

(assert (not d!54873))

(assert (not b!75835))

(assert (not b!75794))

(assert (not b!75782))

(assert (not b!75792))

(assert (not d!54869))

(assert (not b!75790))

(assert (not b!75878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

