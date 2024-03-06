; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10300 () Bool)

(assert start!10300)

(declare-fun res!37776 () Bool)

(declare-fun e!41000 () Bool)

(assert (=> start!10300 (=> (not res!37776) (not e!41000))))

(declare-datatypes () ((Formula!88 (Implies!92 (lhs!1377 Formula!88) (rhs!1377 Formula!88)) (And!92 (lhs!1378 Formula!88) (rhs!1378 Formula!88)) (Or!92 (lhs!1379 Formula!88) (rhs!1379 Formula!88)) (Literal!86 (id!4949 (_ BitVec 32))) (Not!92 (f!4712 Formula!88)))))

(declare-fun f!4460 () Formula!88)

(declare-fun isSimplified!0 (Formula!88) Bool)

(assert (=> start!10300 (= res!37776 (isSimplified!0 f!4460))))

(assert (=> start!10300 e!41000))

(assert (=> start!10300 true))

(declare-fun b!75888 () Bool)

(declare-fun res!37775 () Bool)

(assert (=> b!75888 (=> (not res!37775) (not e!41000))))

(declare-fun inductVal!713 () Bool)

(declare-fun simplifyIsStable!0 (Formula!88) Bool)

(assert (=> b!75888 (= res!37775 (= inductVal!713 (simplifyIsStable!0 (rhs!1379 f!4460))))))

(declare-fun b!75890 () Bool)

(declare-fun simplify!0 (Formula!88) Formula!88)

(assert (=> b!75890 (= e!41000 (not (= (simplify!0 f!4460) f!4460)))))

(declare-fun b!75889 () Bool)

(declare-fun res!37777 () Bool)

(assert (=> b!75889 (=> (not res!37777) (not e!41000))))

(declare-fun inductVal!721 () Bool)

(assert (=> b!75889 (= res!37777 (= inductVal!721 (simplifyIsStable!0 (lhs!1379 f!4460))))))

(declare-fun b!75887 () Bool)

(declare-fun res!37778 () Bool)

(assert (=> b!75887 (=> (not res!37778) (not e!41000))))

(assert (=> b!75887 (= res!37778 (and (not (is-Implies!92 f!4460)) (not (is-And!92 f!4460)) (is-Or!92 f!4460)))))

(assert (= (and start!10300 res!37776) b!75887))

(assert (= (and b!75887 res!37778) b!75888))

(assert (= (and b!75888 res!37775) b!75889))

(assert (= (and b!75889 res!37777) b!75890))

(declare-fun m!73206 () Bool)

(assert (=> start!10300 m!73206))

(declare-fun m!73208 () Bool)

(assert (=> b!75888 m!73208))

(declare-fun m!73210 () Bool)

(assert (=> b!75890 m!73210))

(declare-fun m!73212 () Bool)

(assert (=> b!75889 m!73212))

(push 1)

(assert (not b!75889))

(assert (not start!10300))

(assert (not b!75888))

(assert (not b!75890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75915 () Bool)

(declare-fun e!41015 () Bool)

(declare-fun res!37808 () Bool)

(assert (=> b!75915 (= e!41015 res!37808)))

(assert (=> b!75915 true))

(declare-fun b!75916 () Bool)

(declare-fun e!41016 () Formula!88)

(assert (=> b!75916 (= e!41016 (simplify!0 (lhs!1379 f!4460)))))

(declare-fun b!75917 () Bool)

(declare-fun res!37810 () Formula!88)

(assert (=> b!75917 (= e!41016 res!37810)))

(assert (=> b!75917 true))

(declare-fun b!75918 () Bool)

(declare-fun e!41014 () Bool)

(declare-fun lt!16673 () Bool)

(assert (=> b!75918 (= e!41014 (simplifyIsStable!0 (ite lt!16673 (rhs!1377 (lhs!1379 f!4460)) (ite (is-And!92 (lhs!1379 f!4460)) (rhs!1378 (lhs!1379 f!4460)) (ite (is-Or!92 (lhs!1379 f!4460)) (rhs!1379 (lhs!1379 f!4460)) (f!4712 (lhs!1379 f!4460)))))))))

(declare-fun b!75919 () Bool)

(declare-fun e!41017 () Bool)

(declare-fun e!41013 () Formula!88)

(assert (=> b!75919 (= e!41017 (= e!41013 (lhs!1379 f!4460)))))

(declare-fun c!18740 () Bool)

(declare-fun lt!16674 () Bool)

(assert (=> b!75919 (= c!18740 (or lt!16674 (is-Or!92 (lhs!1379 f!4460))))))

(declare-fun b!75920 () Bool)

(assert (=> b!75920 (= e!41015 (simplifyIsStable!0 (ite lt!16673 (lhs!1377 (lhs!1379 f!4460)) (ite (is-And!92 (lhs!1379 f!4460)) (lhs!1378 (lhs!1379 f!4460)) (lhs!1379 (lhs!1379 f!4460))))))))

(declare-fun b!75921 () Bool)

(declare-fun res!37809 () Formula!88)

(assert (=> b!75921 (= e!41013 res!37809)))

(assert (=> b!75921 true))

(assert (=> b!75921 true))

(declare-fun b!75922 () Bool)

(declare-fun res!37811 () Bool)

(assert (=> b!75922 (= e!41014 res!37811)))

(assert (=> b!75922 true))

(declare-fun b!75923 () Bool)

(declare-fun e!41018 () Bool)

(assert (=> b!75923 (= e!41018 e!41017)))

(declare-fun c!18745 () Bool)

(assert (=> b!75923 (= c!18745 (or lt!16674 (is-Or!92 (lhs!1379 f!4460))))))

(assert (=> b!75923 (= lt!16674 (is-And!92 (lhs!1379 f!4460)))))

(declare-fun b!75924 () Bool)

(declare-fun lt!16672 () Formula!88)

(assert (=> b!75924 (= e!41013 lt!16672)))

(declare-fun b!75925 () Bool)

(assert (=> b!75925 (= e!41018 (= lt!16672 (lhs!1379 f!4460)))))

(declare-fun b!75926 () Bool)

(assert (=> b!75926 (= e!41017 (= (simplify!0 (lhs!1379 f!4460)) (lhs!1379 f!4460)))))

(declare-fun d!54875 () Bool)

(assert (=> d!54875 e!41018))

(declare-fun c!18742 () Bool)

(assert (=> d!54875 (= c!18742 lt!16673)))

(assert (=> d!54875 (= lt!16672 e!41016)))

(declare-fun c!18744 () Bool)

(assert (=> d!54875 (= c!18744 (or lt!16673 (is-And!92 (lhs!1379 f!4460)) (is-Or!92 (lhs!1379 f!4460))))))

(declare-fun lt!16676 () Bool)

(assert (=> d!54875 (= lt!16676 e!41015)))

(declare-fun c!18741 () Bool)

(assert (=> d!54875 (= c!18741 (or lt!16673 (is-And!92 (lhs!1379 f!4460)) (is-Or!92 (lhs!1379 f!4460))))))

(declare-fun lt!16675 () Bool)

(assert (=> d!54875 (= lt!16675 e!41014)))

(declare-fun c!18743 () Bool)

(assert (=> d!54875 (= c!18743 (or lt!16673 (is-And!92 (lhs!1379 f!4460)) (is-Or!92 (lhs!1379 f!4460)) (not (is-Literal!86 (lhs!1379 f!4460)))))))

(assert (=> d!54875 (= lt!16673 (is-Implies!92 (lhs!1379 f!4460)))))

(assert (=> d!54875 (isSimplified!0 (lhs!1379 f!4460))))

(assert (=> d!54875 (= (simplifyIsStable!0 (lhs!1379 f!4460)) true)))

(assert (= (and d!54875 c!18743) b!75918))

(assert (= (and d!54875 (not c!18743)) b!75922))

(assert (= (and d!54875 c!18741) b!75920))

(assert (= (and d!54875 (not c!18741)) b!75915))

(assert (= (and d!54875 c!18744) b!75916))

(assert (= (and d!54875 (not c!18744)) b!75917))

(assert (= (and b!75919 c!18740) b!75924))

(assert (= (and b!75919 (not c!18740)) b!75921))

(assert (= (and b!75923 c!18745) b!75919))

(assert (= (and b!75923 (not c!18745)) b!75926))

(assert (= (and d!54875 c!18742) b!75925))

(assert (= (and d!54875 (not c!18742)) b!75923))

(declare-fun m!73214 () Bool)

(assert (=> d!54875 m!73214))

(declare-fun m!73216 () Bool)

(assert (=> b!75926 m!73216))

(declare-fun m!73218 () Bool)

(assert (=> b!75918 m!73218))

(declare-fun m!73220 () Bool)

(assert (=> b!75920 m!73220))

(assert (=> b!75916 m!73216))

(assert (=> b!75889 d!54875))

(declare-fun b!75953 () Bool)

(declare-fun e!41037 () Bool)

(declare-fun res!37842 () Bool)

(assert (=> b!75953 (= e!41037 res!37842)))

(assert (=> b!75953 true))

(declare-fun b!75954 () Bool)

(declare-fun e!41042 () Bool)

(declare-fun e!41036 () Bool)

(assert (=> b!75954 (= e!41042 e!41036)))

(declare-fun res!37841 () Bool)

(assert (=> b!75954 (=> (not res!37841) (not e!41036))))

(declare-fun lt!16695 () Bool)

(assert (=> b!75954 (= res!37841 lt!16695)))

(assert (=> b!75954 (= lt!16695 (is-Or!92 f!4460))))

(declare-fun b!75955 () Bool)

(declare-fun e!41040 () Bool)

(declare-fun res!37839 () Bool)

(assert (=> b!75955 (= e!41040 res!37839)))

(assert (=> b!75955 true))

(declare-fun b!75956 () Bool)

(assert (=> b!75956 (= e!41036 e!41037)))

(declare-fun c!18758 () Bool)

(assert (=> b!75956 (= c!18758 (or lt!16695 (and (not (is-Implies!92 f!4460)) (is-Not!92 f!4460))))))

(declare-fun b!75957 () Bool)

(declare-fun lt!16697 () Bool)

(assert (=> b!75957 (= e!41040 (isSimplified!0 (ite lt!16697 (rhs!1378 f!4460) (rhs!1379 f!4460))))))

(declare-fun d!54877 () Bool)

(declare-fun c!18759 () Bool)

(declare-fun lt!16694 () Bool)

(assert (=> d!54877 (= c!18759 lt!16694)))

(declare-fun lt!16692 () Bool)

(assert (=> d!54877 (= lt!16692 e!41040)))

(declare-fun c!18756 () Bool)

(declare-fun e!41039 () Bool)

(assert (=> d!54877 (= c!18756 e!41039)))

(declare-fun res!37843 () Bool)

(assert (=> d!54877 (=> res!37843 e!41039)))

(assert (=> d!54877 (= res!37843 lt!16697)))

(declare-fun lt!16693 () Bool)

(assert (=> d!54877 (= lt!16697 (and lt!16694 lt!16693))))

(declare-fun e!41041 () Bool)

(assert (=> d!54877 (= lt!16693 e!41041)))

(declare-fun c!18760 () Bool)

(assert (=> d!54877 (= c!18760 (or lt!16694 (is-Or!92 f!4460) (and (not (is-Implies!92 f!4460)) (is-Not!92 f!4460))))))

(assert (=> d!54877 (= lt!16694 (is-And!92 f!4460))))

(declare-fun e!41035 () Bool)

(assert (=> d!54877 (= (isSimplified!0 f!4460) e!41035)))

(declare-fun b!75958 () Bool)

(assert (=> b!75958 (= e!41035 (and lt!16693 lt!16692))))

(declare-fun b!75959 () Bool)

(declare-fun e!41038 () Bool)

(declare-fun res!37838 () Bool)

(assert (=> b!75959 (= e!41038 res!37838)))

(assert (=> b!75959 true))

(assert (=> b!75959 true))

(declare-fun b!75960 () Bool)

(assert (=> b!75960 (= e!41039 e!41042)))

(declare-fun res!37840 () Bool)

(assert (=> b!75960 (=> (not res!37840) (not e!41042))))

(assert (=> b!75960 (= res!37840 (not lt!16694))))

(declare-fun lt!16691 () Bool)

(declare-fun lt!16696 () Bool)

(declare-fun b!75961 () Bool)

(assert (=> b!75961 (= e!41035 (ite lt!16691 (and lt!16696 lt!16692) (and (not (is-Implies!92 f!4460)) (or (not (is-Not!92 f!4460)) lt!16696))))))

(assert (=> b!75961 (= lt!16696 e!41038)))

(declare-fun c!18757 () Bool)

(assert (=> b!75961 (= c!18757 (or lt!16691 (and (not (is-Implies!92 f!4460)) (is-Not!92 f!4460))))))

(assert (=> b!75961 (= lt!16691 (is-Or!92 f!4460))))

(declare-fun b!75962 () Bool)

(assert (=> b!75962 (= e!41037 lt!16693)))

(declare-fun b!75963 () Bool)

(assert (=> b!75963 (= e!41041 (isSimplified!0 (ite lt!16694 (lhs!1378 f!4460) (ite (is-Or!92 f!4460) (lhs!1379 f!4460) (f!4712 f!4460)))))))

(declare-fun b!75964 () Bool)

(declare-fun res!37837 () Bool)

(assert (=> b!75964 (= e!41041 res!37837)))

(assert (=> b!75964 true))

(declare-fun b!75965 () Bool)

(assert (=> b!75965 (= e!41038 lt!16693)))

(assert (= (and d!54877 c!18760) b!75963))

(assert (= (and d!54877 (not c!18760)) b!75964))

(assert (= (and d!54877 (not res!37843)) b!75960))

(assert (= (and b!75960 res!37840) b!75954))

(assert (= (and b!75954 res!37841) b!75956))

(assert (= (and b!75956 c!18758) b!75962))

(assert (= (and b!75956 (not c!18758)) b!75953))

(assert (= (and d!54877 c!18756) b!75957))

(assert (= (and d!54877 (not c!18756)) b!75955))

(assert (= (and b!75961 c!18757) b!75965))

(assert (= (and b!75961 (not c!18757)) b!75959))

(assert (= (and d!54877 c!18759) b!75958))

(assert (= (and d!54877 (not c!18759)) b!75961))

(declare-fun m!73222 () Bool)

(assert (=> b!75957 m!73222))

(declare-fun m!73224 () Bool)

(assert (=> b!75963 m!73224))

(assert (=> start!10300 d!54877))

(declare-fun b!75966 () Bool)

(declare-fun e!41045 () Bool)

(declare-fun res!37844 () Bool)

(assert (=> b!75966 (= e!41045 res!37844)))

(assert (=> b!75966 true))

(declare-fun b!75967 () Bool)

(declare-fun e!41046 () Formula!88)

(assert (=> b!75967 (= e!41046 (simplify!0 (rhs!1379 f!4460)))))

(declare-fun b!75968 () Bool)

(declare-fun res!37846 () Formula!88)

(assert (=> b!75968 (= e!41046 res!37846)))

(assert (=> b!75968 true))

(declare-fun b!75969 () Bool)

(declare-fun e!41044 () Bool)

(declare-fun lt!16699 () Bool)

(assert (=> b!75969 (= e!41044 (simplifyIsStable!0 (ite lt!16699 (rhs!1377 (rhs!1379 f!4460)) (ite (is-And!92 (rhs!1379 f!4460)) (rhs!1378 (rhs!1379 f!4460)) (ite (is-Or!92 (rhs!1379 f!4460)) (rhs!1379 (rhs!1379 f!4460)) (f!4712 (rhs!1379 f!4460)))))))))

(declare-fun b!75970 () Bool)

(declare-fun e!41047 () Bool)

(declare-fun e!41043 () Formula!88)

(assert (=> b!75970 (= e!41047 (= e!41043 (rhs!1379 f!4460)))))

(declare-fun c!18761 () Bool)

(declare-fun lt!16700 () Bool)

(assert (=> b!75970 (= c!18761 (or lt!16700 (is-Or!92 (rhs!1379 f!4460))))))

(declare-fun b!75971 () Bool)

(assert (=> b!75971 (= e!41045 (simplifyIsStable!0 (ite lt!16699 (lhs!1377 (rhs!1379 f!4460)) (ite (is-And!92 (rhs!1379 f!4460)) (lhs!1378 (rhs!1379 f!4460)) (lhs!1379 (rhs!1379 f!4460))))))))

(declare-fun b!75972 () Bool)

(declare-fun res!37845 () Formula!88)

(assert (=> b!75972 (= e!41043 res!37845)))

(assert (=> b!75972 true))

(assert (=> b!75972 true))

(declare-fun b!75973 () Bool)

(declare-fun res!37847 () Bool)

(assert (=> b!75973 (= e!41044 res!37847)))

(assert (=> b!75973 true))

(declare-fun b!75974 () Bool)

(declare-fun e!41048 () Bool)

(assert (=> b!75974 (= e!41048 e!41047)))

(declare-fun c!18766 () Bool)

(assert (=> b!75974 (= c!18766 (or lt!16700 (is-Or!92 (rhs!1379 f!4460))))))

(assert (=> b!75974 (= lt!16700 (is-And!92 (rhs!1379 f!4460)))))

(declare-fun b!75975 () Bool)

(declare-fun lt!16698 () Formula!88)

(assert (=> b!75975 (= e!41043 lt!16698)))

(declare-fun b!75976 () Bool)

(assert (=> b!75976 (= e!41048 (= lt!16698 (rhs!1379 f!4460)))))

(declare-fun b!75977 () Bool)

(assert (=> b!75977 (= e!41047 (= (simplify!0 (rhs!1379 f!4460)) (rhs!1379 f!4460)))))

(declare-fun d!54879 () Bool)

(assert (=> d!54879 e!41048))

(declare-fun c!18763 () Bool)

(assert (=> d!54879 (= c!18763 lt!16699)))

(assert (=> d!54879 (= lt!16698 e!41046)))

(declare-fun c!18765 () Bool)

(assert (=> d!54879 (= c!18765 (or lt!16699 (is-And!92 (rhs!1379 f!4460)) (is-Or!92 (rhs!1379 f!4460))))))

(declare-fun lt!16702 () Bool)

(assert (=> d!54879 (= lt!16702 e!41045)))

(declare-fun c!18762 () Bool)

(assert (=> d!54879 (= c!18762 (or lt!16699 (is-And!92 (rhs!1379 f!4460)) (is-Or!92 (rhs!1379 f!4460))))))

(declare-fun lt!16701 () Bool)

(assert (=> d!54879 (= lt!16701 e!41044)))

(declare-fun c!18764 () Bool)

(assert (=> d!54879 (= c!18764 (or lt!16699 (is-And!92 (rhs!1379 f!4460)) (is-Or!92 (rhs!1379 f!4460)) (not (is-Literal!86 (rhs!1379 f!4460)))))))

(assert (=> d!54879 (= lt!16699 (is-Implies!92 (rhs!1379 f!4460)))))

(assert (=> d!54879 (isSimplified!0 (rhs!1379 f!4460))))

(assert (=> d!54879 (= (simplifyIsStable!0 (rhs!1379 f!4460)) true)))

(assert (= (and d!54879 c!18764) b!75969))

(assert (= (and d!54879 (not c!18764)) b!75973))

(assert (= (and d!54879 c!18762) b!75971))

(assert (= (and d!54879 (not c!18762)) b!75966))

(assert (= (and d!54879 c!18765) b!75967))

(assert (= (and d!54879 (not c!18765)) b!75968))

(assert (= (and b!75970 c!18761) b!75975))

(assert (= (and b!75970 (not c!18761)) b!75972))

(assert (= (and b!75974 c!18766) b!75970))

(assert (= (and b!75974 (not c!18766)) b!75977))

(assert (= (and d!54879 c!18763) b!75976))

(assert (= (and d!54879 (not c!18763)) b!75974))

(declare-fun m!73226 () Bool)

(assert (=> d!54879 m!73226))

(declare-fun m!73228 () Bool)

(assert (=> b!75977 m!73228))

(declare-fun m!73230 () Bool)

(assert (=> b!75969 m!73230))

(declare-fun m!73232 () Bool)

(assert (=> b!75971 m!73232))

(assert (=> b!75967 m!73228))

(assert (=> b!75888 d!54879))

(declare-fun b!76006 () Bool)

(declare-fun e!41066 () Formula!88)

(declare-fun lt!16725 () Bool)

(assert (=> b!76006 (= e!41066 (simplify!0 (ite lt!16725 (rhs!1378 f!4460) (ite (is-Or!92 f!4460) (rhs!1379 f!4460) (rhs!1377 f!4460)))))))

(declare-fun b!76007 () Bool)

(declare-fun e!41069 () Formula!88)

(declare-fun lt!16722 () Bool)

(declare-fun lt!16724 () Formula!88)

(declare-fun lt!16727 () Formula!88)

(assert (=> b!76007 (= e!41069 (ite lt!16722 (Or!92 (Not!92 lt!16724) lt!16727) (ite (is-Not!92 f!4460) (Not!92 lt!16724) f!4460)))))

(declare-fun e!41068 () Formula!88)

(assert (=> b!76007 (= lt!16724 e!41068)))

(declare-fun c!18787 () Bool)

(assert (=> b!76007 (= c!18787 (or lt!16722 (is-Not!92 f!4460)))))

(assert (=> b!76007 (= lt!16722 (is-Implies!92 f!4460))))

(declare-fun b!76008 () Bool)

(declare-fun e!41067 () Formula!88)

(assert (=> b!76008 (= e!41067 (simplify!0 (ite lt!16725 (lhs!1378 f!4460) (ite (is-Or!92 f!4460) (lhs!1379 f!4460) (ite (is-Implies!92 f!4460) (lhs!1377 f!4460) (f!4712 f!4460))))))))

(declare-fun b!76009 () Bool)

(declare-fun e!41063 () Formula!88)

(declare-fun lt!16728 () Formula!88)

(declare-fun lt!16723 () Formula!88)

(assert (=> b!76009 (= e!41063 (And!92 lt!16728 lt!16723))))

(declare-fun b!76010 () Bool)

(declare-fun res!37874 () Formula!88)

(assert (=> b!76010 (= e!41066 res!37874)))

(assert (=> b!76010 true))

(declare-fun b!76011 () Bool)

(declare-fun e!41065 () Formula!88)

(declare-fun res!37873 () Formula!88)

(assert (=> b!76011 (= e!41065 res!37873)))

(assert (=> b!76011 true))

(declare-fun b!76012 () Bool)

(declare-fun lt!16726 () Formula!88)

(assert (=> b!76012 (= e!41068 lt!16726)))

(declare-fun b!76013 () Bool)

(declare-fun res!37877 () Formula!88)

(assert (=> b!76013 (= e!41068 res!37877)))

(assert (=> b!76013 true))

(assert (=> b!76013 true))

(declare-fun b!76014 () Bool)

(assert (=> b!76014 (= e!41065 lt!16728)))

(declare-fun b!76015 () Bool)

(assert (=> b!76015 (= e!41069 (Or!92 lt!16726 lt!16727))))

(declare-fun b!76016 () Bool)

(declare-fun e!41064 () Formula!88)

(declare-fun res!37875 () Formula!88)

(assert (=> b!76016 (= e!41064 res!37875)))

(assert (=> b!76016 true))

(declare-fun b!76017 () Bool)

(assert (=> b!76017 (= e!41063 e!41069)))

(declare-fun c!18784 () Bool)

(declare-fun lt!16729 () Bool)

(assert (=> b!76017 (= c!18784 lt!16729)))

(assert (=> b!76017 (= lt!16727 e!41064)))

(declare-fun c!18781 () Bool)

(assert (=> b!76017 (= c!18781 (or lt!16729 (is-Implies!92 f!4460)))))

(assert (=> b!76017 (= lt!16726 e!41065)))

(declare-fun c!18782 () Bool)

(assert (=> b!76017 (= c!18782 (or lt!16729 (is-Implies!92 f!4460) (is-Not!92 f!4460)))))

(assert (=> b!76017 (= lt!16729 (is-Or!92 f!4460))))

(declare-fun b!76018 () Bool)

(assert (=> b!76018 (= e!41064 lt!16723)))

(declare-fun b!76019 () Bool)

(declare-fun res!37876 () Formula!88)

(assert (=> b!76019 (= e!41067 res!37876)))

(assert (=> b!76019 true))

(declare-fun d!54881 () Bool)

(declare-fun lt!16721 () Formula!88)

(assert (=> d!54881 (isSimplified!0 lt!16721)))

(assert (=> d!54881 (= lt!16721 e!41063)))

(declare-fun c!18786 () Bool)

(assert (=> d!54881 (= c!18786 lt!16725)))

(assert (=> d!54881 (= lt!16723 e!41066)))

(declare-fun c!18785 () Bool)

(assert (=> d!54881 (= c!18785 (or lt!16725 (is-Or!92 f!4460) (is-Implies!92 f!4460)))))

(assert (=> d!54881 (= lt!16728 e!41067)))

(declare-fun c!18783 () Bool)

(assert (=> d!54881 (= c!18783 (or lt!16725 (is-Or!92 f!4460) (is-Implies!92 f!4460) (is-Not!92 f!4460)))))

(assert (=> d!54881 (= lt!16725 (is-And!92 f!4460))))

(assert (=> d!54881 (= (simplify!0 f!4460) lt!16721)))

(assert (= (and d!54881 c!18783) b!76008))

(assert (= (and d!54881 (not c!18783)) b!76019))

(assert (= (and d!54881 c!18785) b!76006))

(assert (= (and d!54881 (not c!18785)) b!76010))

(assert (= (and b!76017 c!18782) b!76014))

(assert (= (and b!76017 (not c!18782)) b!76011))

(assert (= (and b!76017 c!18781) b!76018))

(assert (= (and b!76017 (not c!18781)) b!76016))

(assert (= (and b!76007 c!18787) b!76012))

(assert (= (and b!76007 (not c!18787)) b!76013))

(assert (= (and b!76017 c!18784) b!76015))

(assert (= (and b!76017 (not c!18784)) b!76007))

(assert (= (and d!54881 c!18786) b!76009))

(assert (= (and d!54881 (not c!18786)) b!76017))

(declare-fun m!73234 () Bool)

(assert (=> b!76006 m!73234))

(declare-fun m!73236 () Bool)

(assert (=> b!76008 m!73236))

(declare-fun m!73238 () Bool)

(assert (=> d!54881 m!73238))

(assert (=> b!75890 d!54881))

(push 1)

(assert (not b!75977))

(assert (not b!75918))

(assert (not b!76008))

(assert (not b!75969))

(assert (not d!54875))

(assert (not b!75957))

(assert (not b!75920))

(assert (not b!75967))

(assert (not b!75963))

(assert (not d!54881))

(assert (not b!76006))

(assert (not d!54879))

(assert (not b!75916))

(assert (not b!75971))

(assert (not b!75926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

