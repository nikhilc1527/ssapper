; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10202 () Bool)

(assert start!10202)

(declare-fun b!73756 () Bool)

(declare-fun res!36217 () Bool)

(declare-fun e!39866 () Bool)

(assert (=> b!73756 (=> (not res!36217) (not e!39866))))

(declare-datatypes () ((Formula!72 (Implies!76 (lhs!1329 Formula!72) (rhs!1329 Formula!72)) (And!76 (lhs!1330 Formula!72) (rhs!1330 Formula!72)) (Or!76 (lhs!1331 Formula!72) (rhs!1331 Formula!72)) (Literal!70 (id!4933 (_ BitVec 32))) (Not!76 (f!4668 Formula!72)))))

(declare-fun f!4611 () Formula!72)

(assert (=> b!73756 (= res!36217 (and (not (is-Implies!76 f!4611)) (not (is-And!76 f!4611)) (is-Or!76 f!4611)))))

(declare-fun b!73759 () Bool)

(declare-fun f!4632 () Formula!72)

(declare-fun isNNF!0 (Formula!72) Bool)

(assert (=> b!73759 (= e!39866 (not (isNNF!0 f!4632)))))

(declare-fun res!36218 () Bool)

(assert (=> start!10202 (=> (not res!36218) (not e!39866))))

(assert (=> start!10202 (= res!36218 (isNNF!0 f!4611))))

(assert (=> start!10202 e!39866))

(assert (=> start!10202 true))

(declare-fun b!73757 () Bool)

(declare-fun res!36219 () Bool)

(assert (=> b!73757 (=> (not res!36219) (not e!39866))))

(declare-fun inductVal!769 () Bool)

(declare-fun nnfIsStable!0 (Formula!72) Bool)

(assert (=> b!73757 (= res!36219 (= inductVal!769 (nnfIsStable!0 (rhs!1331 f!4611))))))

(declare-fun b!73758 () Bool)

(declare-fun res!36220 () Bool)

(assert (=> b!73758 (=> (not res!36220) (not e!39866))))

(assert (=> b!73758 (= res!36220 (= f!4632 (lhs!1331 f!4611)))))

(assert (= (and start!10202 res!36218) b!73756))

(assert (= (and b!73756 res!36217) b!73757))

(assert (= (and b!73757 res!36219) b!73758))

(assert (= (and b!73758 res!36220) b!73759))

(declare-fun m!72850 () Bool)

(assert (=> b!73759 m!72850))

(declare-fun m!72852 () Bool)

(assert (=> start!10202 m!72852))

(declare-fun m!72854 () Bool)

(assert (=> b!73757 m!72854))

(push 1)

(assert (not b!73759))

(assert (not start!10202))

(assert (not b!73757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!73808 () Bool)

(declare-fun e!39901 () Bool)

(declare-fun lt!15740 () Bool)

(assert (=> b!73808 (= e!39901 lt!15740)))

(declare-fun b!73809 () Bool)

(declare-fun e!39908 () Bool)

(declare-fun e!39900 () Bool)

(assert (=> b!73809 (= e!39908 e!39900)))

(declare-fun res!36263 () Bool)

(assert (=> b!73809 (=> (not res!36263) (not e!39900))))

(declare-fun lt!15738 () Bool)

(assert (=> b!73809 (= res!36263 lt!15738)))

(declare-fun b!73810 () Bool)

(declare-fun e!39902 () Bool)

(declare-fun res!36261 () Bool)

(assert (=> b!73810 (= e!39902 res!36261)))

(assert (=> b!73810 true))

(declare-fun b!73811 () Bool)

(declare-fun e!39904 () Bool)

(declare-fun lt!15743 () Bool)

(assert (=> b!73811 (= e!39904 lt!15743)))

(declare-fun b!73812 () Bool)

(declare-fun res!36256 () Bool)

(assert (=> b!73812 (= e!39904 res!36256)))

(assert (=> b!73812 true))

(declare-fun b!73813 () Bool)

(declare-fun e!39895 () Bool)

(declare-fun res!36255 () Bool)

(assert (=> b!73813 (= e!39895 res!36255)))

(assert (=> b!73813 true))

(declare-fun b!73814 () Bool)

(declare-fun e!39896 () Formula!72)

(declare-fun e!39903 () Formula!72)

(assert (=> b!73814 (= e!39896 e!39903)))

(declare-fun c!17861 () Bool)

(declare-fun e!39897 () Bool)

(assert (=> b!73814 (= c!17861 e!39897)))

(declare-fun res!36258 () Bool)

(assert (=> b!73814 (=> (not res!36258) (not e!39897))))

(declare-fun lt!15744 () Bool)

(assert (=> b!73814 (= res!36258 lt!15744)))

(assert (=> b!73814 (= lt!15744 (is-Or!76 f!4632))))

(declare-fun b!73815 () Bool)

(declare-fun e!39907 () Bool)

(assert (=> b!73815 (= e!39907 e!39908)))

(declare-fun c!17856 () Bool)

(declare-fun lt!15739 () Bool)

(assert (=> b!73815 (= c!17856 (or lt!15739 (is-Implies!76 f!4632)))))

(declare-fun e!39905 () Bool)

(assert (=> b!73815 (= lt!15738 e!39905)))

(declare-fun c!17865 () Bool)

(assert (=> b!73815 (= c!17865 (or lt!15739 (is-Implies!76 f!4632)))))

(assert (=> b!73815 (= lt!15739 (is-Or!76 f!4632))))

(declare-fun d!54781 () Bool)

(declare-fun c!17857 () Bool)

(declare-fun lt!15737 () Bool)

(assert (=> d!54781 (= c!17857 lt!15737)))

(assert (=> d!54781 (= lt!15740 e!39902)))

(declare-fun c!17858 () Bool)

(declare-fun e!39898 () Bool)

(assert (=> d!54781 (= c!17858 e!39898)))

(declare-fun res!36264 () Bool)

(assert (=> d!54781 (=> res!36264 e!39898)))

(declare-fun lt!15742 () Bool)

(assert (=> d!54781 (= res!36264 lt!15742)))

(assert (=> d!54781 (= lt!15742 (and lt!15737 lt!15743))))

(assert (=> d!54781 (= lt!15743 e!39895)))

(declare-fun c!17864 () Bool)

(assert (=> d!54781 (= c!17864 (or lt!15737 (is-Or!76 f!4632) (is-Implies!76 f!4632)))))

(assert (=> d!54781 (= lt!15737 (is-And!76 f!4632))))

(assert (=> d!54781 (= (isNNF!0 f!4632) e!39907)))

(declare-fun b!73816 () Bool)

(assert (=> b!73816 (= e!39902 (isNNF!0 e!39896))))

(declare-fun c!17862 () Bool)

(assert (=> b!73816 (= c!17862 lt!15742)))

(declare-fun b!73817 () Bool)

(assert (=> b!73817 (= e!39908 (or (and (is-Not!76 f!4632) (is-Literal!70 (f!4668 f!4632))) (not (is-Not!76 f!4632))))))

(declare-fun b!73818 () Bool)

(assert (=> b!73818 (= e!39903 (rhs!1331 f!4632))))

(declare-fun e!39906 () Bool)

(declare-fun lt!15741 () Bool)

(declare-fun lt!15736 () Bool)

(declare-fun b!73819 () Bool)

(assert (=> b!73819 (= e!39906 (or (and lt!15736 lt!15741) (and (not lt!15736) (is-Implies!76 f!4632) lt!15741)))))

(declare-fun e!39899 () Bool)

(assert (=> b!73819 (= lt!15741 e!39899)))

(declare-fun c!17863 () Bool)

(assert (=> b!73819 (= c!17863 (or lt!15736 (is-Implies!76 f!4632)))))

(assert (=> b!73819 (= lt!15736 (is-Or!76 f!4632))))

(declare-fun b!73820 () Bool)

(assert (=> b!73820 (= e!39907 (and lt!15743 lt!15740))))

(declare-fun b!73821 () Bool)

(assert (=> b!73821 (= e!39895 (isNNF!0 (ite lt!15737 (lhs!1330 f!4632) (ite (is-Or!76 f!4632) (lhs!1331 f!4632) (lhs!1329 f!4632)))))))

(declare-fun b!73822 () Bool)

(assert (=> b!73822 (= e!39897 e!39904)))

(declare-fun c!17860 () Bool)

(assert (=> b!73822 (= c!17860 (or lt!15744 (is-Implies!76 f!4632)))))

(declare-fun b!73823 () Bool)

(assert (=> b!73823 (= e!39903 (rhs!1329 f!4632))))

(declare-fun b!73824 () Bool)

(declare-fun res!36257 () Bool)

(assert (=> b!73824 (= e!39901 res!36257)))

(assert (=> b!73824 true))

(assert (=> b!73824 true))

(declare-fun b!73825 () Bool)

(assert (=> b!73825 (= e!39896 (rhs!1330 f!4632))))

(declare-fun b!73826 () Bool)

(assert (=> b!73826 (= e!39905 lt!15743)))

(declare-fun b!73827 () Bool)

(assert (=> b!73827 (= e!39898 e!39906)))

(declare-fun res!36262 () Bool)

(assert (=> b!73827 (=> (not res!36262) (not e!39906))))

(assert (=> b!73827 (= res!36262 (not lt!15737))))

(declare-fun b!73828 () Bool)

(declare-fun res!36259 () Bool)

(assert (=> b!73828 (= e!39905 res!36259)))

(assert (=> b!73828 true))

(declare-fun b!73829 () Bool)

(declare-fun res!36260 () Bool)

(assert (=> b!73829 (= e!39899 res!36260)))

(assert (=> b!73829 true))

(declare-fun b!73830 () Bool)

(assert (=> b!73830 (= e!39900 e!39901)))

(declare-fun c!17859 () Bool)

(assert (=> b!73830 (= c!17859 (or (and lt!15739 lt!15738) (and (not lt!15739) (is-Implies!76 f!4632) lt!15738)))))

(declare-fun b!73831 () Bool)

(assert (=> b!73831 (= e!39899 lt!15743)))

(assert (= (and d!54781 c!17864) b!73821))

(assert (= (and d!54781 (not c!17864)) b!73813))

(assert (= (and d!54781 (not res!36264)) b!73827))

(assert (= (and b!73827 res!36262) b!73819))

(assert (= (and b!73819 c!17863) b!73831))

(assert (= (and b!73819 (not c!17863)) b!73829))

(assert (= (and b!73814 res!36258) b!73822))

(assert (= (and b!73822 c!17860) b!73811))

(assert (= (and b!73822 (not c!17860)) b!73812))

(assert (= (and b!73814 c!17861) b!73818))

(assert (= (and b!73814 (not c!17861)) b!73823))

(assert (= (and b!73816 c!17862) b!73825))

(assert (= (and b!73816 (not c!17862)) b!73814))

(assert (= (and d!54781 c!17858) b!73816))

(assert (= (and d!54781 (not c!17858)) b!73810))

(assert (= (and b!73815 c!17865) b!73826))

(assert (= (and b!73815 (not c!17865)) b!73828))

(assert (= (and b!73809 res!36263) b!73830))

(assert (= (and b!73830 c!17859) b!73808))

(assert (= (and b!73830 (not c!17859)) b!73824))

(assert (= (and b!73815 c!17856) b!73809))

(assert (= (and b!73815 (not c!17856)) b!73817))

(assert (= (and d!54781 c!17857) b!73820))

(assert (= (and d!54781 (not c!17857)) b!73815))

(declare-fun m!72856 () Bool)

(assert (=> b!73816 m!72856))

(declare-fun m!72858 () Bool)

(assert (=> b!73821 m!72858))

(assert (=> b!73759 d!54781))

(declare-fun b!73832 () Bool)

(declare-fun e!39915 () Bool)

(declare-fun lt!15749 () Bool)

(assert (=> b!73832 (= e!39915 lt!15749)))

(declare-fun b!73833 () Bool)

(declare-fun e!39922 () Bool)

(declare-fun e!39914 () Bool)

(assert (=> b!73833 (= e!39922 e!39914)))

(declare-fun res!36273 () Bool)

(assert (=> b!73833 (=> (not res!36273) (not e!39914))))

(declare-fun lt!15747 () Bool)

(assert (=> b!73833 (= res!36273 lt!15747)))

(declare-fun b!73834 () Bool)

(declare-fun e!39916 () Bool)

(declare-fun res!36271 () Bool)

(assert (=> b!73834 (= e!39916 res!36271)))

(assert (=> b!73834 true))

(declare-fun b!73835 () Bool)

(declare-fun e!39918 () Bool)

(declare-fun lt!15752 () Bool)

(assert (=> b!73835 (= e!39918 lt!15752)))

(declare-fun b!73836 () Bool)

(declare-fun res!36266 () Bool)

(assert (=> b!73836 (= e!39918 res!36266)))

(assert (=> b!73836 true))

(declare-fun b!73837 () Bool)

(declare-fun e!39909 () Bool)

(declare-fun res!36265 () Bool)

(assert (=> b!73837 (= e!39909 res!36265)))

(assert (=> b!73837 true))

(declare-fun b!73838 () Bool)

(declare-fun e!39910 () Formula!72)

(declare-fun e!39917 () Formula!72)

(assert (=> b!73838 (= e!39910 e!39917)))

(declare-fun c!17871 () Bool)

(declare-fun e!39911 () Bool)

(assert (=> b!73838 (= c!17871 e!39911)))

(declare-fun res!36268 () Bool)

(assert (=> b!73838 (=> (not res!36268) (not e!39911))))

(declare-fun lt!15753 () Bool)

(assert (=> b!73838 (= res!36268 lt!15753)))

(assert (=> b!73838 (= lt!15753 (is-Or!76 f!4611))))

(declare-fun b!73839 () Bool)

(declare-fun e!39921 () Bool)

(assert (=> b!73839 (= e!39921 e!39922)))

(declare-fun c!17866 () Bool)

(declare-fun lt!15748 () Bool)

(assert (=> b!73839 (= c!17866 (or lt!15748 (is-Implies!76 f!4611)))))

(declare-fun e!39919 () Bool)

(assert (=> b!73839 (= lt!15747 e!39919)))

(declare-fun c!17875 () Bool)

(assert (=> b!73839 (= c!17875 (or lt!15748 (is-Implies!76 f!4611)))))

(assert (=> b!73839 (= lt!15748 (is-Or!76 f!4611))))

(declare-fun d!54783 () Bool)

(declare-fun c!17867 () Bool)

(declare-fun lt!15746 () Bool)

(assert (=> d!54783 (= c!17867 lt!15746)))

(assert (=> d!54783 (= lt!15749 e!39916)))

(declare-fun c!17868 () Bool)

(declare-fun e!39912 () Bool)

(assert (=> d!54783 (= c!17868 e!39912)))

(declare-fun res!36274 () Bool)

(assert (=> d!54783 (=> res!36274 e!39912)))

(declare-fun lt!15751 () Bool)

(assert (=> d!54783 (= res!36274 lt!15751)))

(assert (=> d!54783 (= lt!15751 (and lt!15746 lt!15752))))

(assert (=> d!54783 (= lt!15752 e!39909)))

(declare-fun c!17874 () Bool)

(assert (=> d!54783 (= c!17874 (or lt!15746 (is-Or!76 f!4611) (is-Implies!76 f!4611)))))

(assert (=> d!54783 (= lt!15746 (is-And!76 f!4611))))

(assert (=> d!54783 (= (isNNF!0 f!4611) e!39921)))

(declare-fun b!73840 () Bool)

(assert (=> b!73840 (= e!39916 (isNNF!0 e!39910))))

(declare-fun c!17872 () Bool)

(assert (=> b!73840 (= c!17872 lt!15751)))

(declare-fun b!73841 () Bool)

(assert (=> b!73841 (= e!39922 (or (and (is-Not!76 f!4611) (is-Literal!70 (f!4668 f!4611))) (not (is-Not!76 f!4611))))))

(declare-fun b!73842 () Bool)

(assert (=> b!73842 (= e!39917 (rhs!1331 f!4611))))

(declare-fun b!73843 () Bool)

(declare-fun lt!15745 () Bool)

(declare-fun lt!15750 () Bool)

(declare-fun e!39920 () Bool)

(assert (=> b!73843 (= e!39920 (or (and lt!15745 lt!15750) (and (not lt!15745) (is-Implies!76 f!4611) lt!15750)))))

(declare-fun e!39913 () Bool)

(assert (=> b!73843 (= lt!15750 e!39913)))

(declare-fun c!17873 () Bool)

(assert (=> b!73843 (= c!17873 (or lt!15745 (is-Implies!76 f!4611)))))

(assert (=> b!73843 (= lt!15745 (is-Or!76 f!4611))))

(declare-fun b!73844 () Bool)

(assert (=> b!73844 (= e!39921 (and lt!15752 lt!15749))))

(declare-fun b!73845 () Bool)

(assert (=> b!73845 (= e!39909 (isNNF!0 (ite lt!15746 (lhs!1330 f!4611) (ite (is-Or!76 f!4611) (lhs!1331 f!4611) (lhs!1329 f!4611)))))))

(declare-fun b!73846 () Bool)

(assert (=> b!73846 (= e!39911 e!39918)))

(declare-fun c!17870 () Bool)

(assert (=> b!73846 (= c!17870 (or lt!15753 (is-Implies!76 f!4611)))))

(declare-fun b!73847 () Bool)

(assert (=> b!73847 (= e!39917 (rhs!1329 f!4611))))

(declare-fun b!73848 () Bool)

(declare-fun res!36267 () Bool)

(assert (=> b!73848 (= e!39915 res!36267)))

(assert (=> b!73848 true))

(assert (=> b!73848 true))

(declare-fun b!73849 () Bool)

(assert (=> b!73849 (= e!39910 (rhs!1330 f!4611))))

(declare-fun b!73850 () Bool)

(assert (=> b!73850 (= e!39919 lt!15752)))

(declare-fun b!73851 () Bool)

(assert (=> b!73851 (= e!39912 e!39920)))

(declare-fun res!36272 () Bool)

(assert (=> b!73851 (=> (not res!36272) (not e!39920))))

(assert (=> b!73851 (= res!36272 (not lt!15746))))

(declare-fun b!73852 () Bool)

(declare-fun res!36269 () Bool)

(assert (=> b!73852 (= e!39919 res!36269)))

(assert (=> b!73852 true))

(declare-fun b!73853 () Bool)

(declare-fun res!36270 () Bool)

(assert (=> b!73853 (= e!39913 res!36270)))

(assert (=> b!73853 true))

(declare-fun b!73854 () Bool)

(assert (=> b!73854 (= e!39914 e!39915)))

(declare-fun c!17869 () Bool)

(assert (=> b!73854 (= c!17869 (or (and lt!15748 lt!15747) (and (not lt!15748) (is-Implies!76 f!4611) lt!15747)))))

(declare-fun b!73855 () Bool)

(assert (=> b!73855 (= e!39913 lt!15752)))

(assert (= (and d!54783 c!17874) b!73845))

(assert (= (and d!54783 (not c!17874)) b!73837))

(assert (= (and d!54783 (not res!36274)) b!73851))

(assert (= (and b!73851 res!36272) b!73843))

(assert (= (and b!73843 c!17873) b!73855))

(assert (= (and b!73843 (not c!17873)) b!73853))

(assert (= (and b!73838 res!36268) b!73846))

(assert (= (and b!73846 c!17870) b!73835))

(assert (= (and b!73846 (not c!17870)) b!73836))

(assert (= (and b!73838 c!17871) b!73842))

(assert (= (and b!73838 (not c!17871)) b!73847))

(assert (= (and b!73840 c!17872) b!73849))

(assert (= (and b!73840 (not c!17872)) b!73838))

(assert (= (and d!54783 c!17868) b!73840))

(assert (= (and d!54783 (not c!17868)) b!73834))

(assert (= (and b!73839 c!17875) b!73850))

(assert (= (and b!73839 (not c!17875)) b!73852))

(assert (= (and b!73833 res!36273) b!73854))

(assert (= (and b!73854 c!17869) b!73832))

(assert (= (and b!73854 (not c!17869)) b!73848))

(assert (= (and b!73839 c!17866) b!73833))

(assert (= (and b!73839 (not c!17866)) b!73841))

(assert (= (and d!54783 c!17867) b!73844))

(assert (= (and d!54783 (not c!17867)) b!73839))

(declare-fun m!72860 () Bool)

(assert (=> b!73840 m!72860))

(declare-fun m!72862 () Bool)

(assert (=> b!73845 m!72862))

(assert (=> start!10202 d!54783))

(declare-fun b!73880 () Bool)

(declare-fun e!39939 () Bool)

(declare-fun res!36307 () Bool)

(assert (=> b!73880 (= e!39939 res!36307)))

(assert (=> b!73880 true))

(declare-fun b!73881 () Bool)

(declare-fun e!39936 () Formula!72)

(declare-fun res!36305 () Formula!72)

(assert (=> b!73881 (= e!39936 res!36305)))

(assert (=> b!73881 true))

(assert (=> b!73881 true))

(declare-fun b!73882 () Bool)

(declare-fun e!39938 () Formula!72)

(declare-fun nnf!0 (Formula!72) Formula!72)

(assert (=> b!73882 (= e!39938 (nnf!0 (rhs!1331 f!4611)))))

(declare-fun b!73883 () Bool)

(declare-fun e!39940 () Bool)

(assert (=> b!73883 (= e!39940 (= e!39936 (rhs!1331 f!4611)))))

(declare-fun c!17888 () Bool)

(declare-fun lt!15766 () Bool)

(assert (=> b!73883 (= c!17888 (or lt!15766 (is-Or!76 (rhs!1331 f!4611))))))

(declare-fun b!73884 () Bool)

(declare-fun lt!15765 () Bool)

(assert (=> b!73884 (= e!39939 (nnfIsStable!0 (ite lt!15765 (lhs!1329 (rhs!1331 f!4611)) (ite (is-And!76 (rhs!1331 f!4611)) (lhs!1330 (rhs!1331 f!4611)) (lhs!1331 (rhs!1331 f!4611))))))))

(declare-fun b!73885 () Bool)

(declare-fun res!36306 () Formula!72)

(assert (=> b!73885 (= e!39938 res!36306)))

(assert (=> b!73885 true))

(declare-fun b!73886 () Bool)

(declare-fun lt!15767 () Formula!72)

(assert (=> b!73886 (= e!39936 lt!15767)))

(declare-fun b!73887 () Bool)

(declare-fun e!39935 () Bool)

(assert (=> b!73887 (= e!39935 e!39940)))

(declare-fun c!17892 () Bool)

(assert (=> b!73887 (= c!17892 (or lt!15766 (is-Or!76 (rhs!1331 f!4611))))))

(assert (=> b!73887 (= lt!15766 (is-And!76 (rhs!1331 f!4611)))))

(declare-fun b!73888 () Bool)

(assert (=> b!73888 (= e!39935 (= lt!15767 (rhs!1331 f!4611)))))

(declare-fun b!73889 () Bool)

(declare-fun e!39937 () Bool)

(assert (=> b!73889 (= e!39937 (nnfIsStable!0 (ite lt!15765 (rhs!1329 (rhs!1331 f!4611)) (ite (is-And!76 (rhs!1331 f!4611)) (rhs!1330 (rhs!1331 f!4611)) (ite (is-Or!76 (rhs!1331 f!4611)) (rhs!1331 (rhs!1331 f!4611)) (f!4668 (rhs!1331 f!4611)))))))))

(declare-fun d!54785 () Bool)

(assert (=> d!54785 e!39935))

(declare-fun c!17889 () Bool)

(assert (=> d!54785 (= c!17889 lt!15765)))

(assert (=> d!54785 (= lt!15767 e!39938)))

(declare-fun c!17893 () Bool)

(assert (=> d!54785 (= c!17893 (or lt!15765 (is-And!76 (rhs!1331 f!4611)) (is-Or!76 (rhs!1331 f!4611))))))

(declare-fun lt!15768 () Bool)

(assert (=> d!54785 (= lt!15768 e!39939)))

(declare-fun c!17890 () Bool)

(assert (=> d!54785 (= c!17890 (or lt!15765 (is-And!76 (rhs!1331 f!4611)) (is-Or!76 (rhs!1331 f!4611))))))

(declare-fun lt!15764 () Bool)

(assert (=> d!54785 (= lt!15764 e!39937)))

(declare-fun c!17891 () Bool)

(assert (=> d!54785 (= c!17891 (or lt!15765 (is-And!76 (rhs!1331 f!4611)) (is-Or!76 (rhs!1331 f!4611)) (not (is-Literal!70 (rhs!1331 f!4611)))))))

(assert (=> d!54785 (= lt!15765 (is-Implies!76 (rhs!1331 f!4611)))))

(assert (=> d!54785 (isNNF!0 (rhs!1331 f!4611))))

(assert (=> d!54785 (= (nnfIsStable!0 (rhs!1331 f!4611)) true)))

(declare-fun b!73890 () Bool)

(assert (=> b!73890 (= e!39940 (= (nnf!0 (rhs!1331 f!4611)) (rhs!1331 f!4611)))))

(declare-fun b!73891 () Bool)

(declare-fun res!36304 () Bool)

(assert (=> b!73891 (= e!39937 res!36304)))

(assert (=> b!73891 true))

(assert (= (and d!54785 c!17891) b!73889))

(assert (= (and d!54785 (not c!17891)) b!73891))

(assert (= (and d!54785 c!17890) b!73884))

(assert (= (and d!54785 (not c!17890)) b!73880))

(assert (= (and d!54785 c!17893) b!73882))

(assert (= (and d!54785 (not c!17893)) b!73885))

(assert (= (and b!73883 c!17888) b!73886))

(assert (= (and b!73883 (not c!17888)) b!73881))

(assert (= (and b!73887 c!17892) b!73883))

(assert (= (and b!73887 (not c!17892)) b!73890))

(assert (= (and d!54785 c!17889) b!73888))

(assert (= (and d!54785 (not c!17889)) b!73887))

(declare-fun m!72864 () Bool)

(assert (=> b!73882 m!72864))

(declare-fun m!72866 () Bool)

(assert (=> b!73884 m!72866))

(assert (=> b!73890 m!72864))

(declare-fun m!72868 () Bool)

(assert (=> d!54785 m!72868))

(declare-fun m!72870 () Bool)

(assert (=> b!73889 m!72870))

(assert (=> b!73757 d!54785))

(push 1)

(assert (not b!73840))

(assert (not b!73884))

(assert (not b!73821))

(assert (not b!73890))

(assert (not b!73845))

(assert (not d!54785))

(assert (not b!73816))

(assert (not b!73889))

(assert (not b!73882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

