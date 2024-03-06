; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1720 () Bool)

(assert start!1720)

(declare-fun b_free!815 () Bool)

(declare-fun b_next!1829 () Bool)

(assert (=> start!1720 (= b_free!815 (not b_next!1829))))

(declare-fun tp!1360 () Bool)

(declare-fun b_and!3127 () Bool)

(assert (=> start!1720 (= tp!1360 b_and!3127)))

(declare-fun b!8674 () Bool)

(declare-fun b_free!817 () Bool)

(declare-fun b_next!1831 () Bool)

(assert (=> b!8674 (= b_free!817 (not b_next!1831))))

(declare-fun tp!1363 () Bool)

(declare-fun b_and!3129 () Bool)

(assert (=> b!8674 (= tp!1363 b_and!3129)))

(declare-fun b_free!819 () Bool)

(declare-fun b_next!1833 () Bool)

(assert (=> b!8674 (= b_free!819 (not b_next!1833))))

(declare-fun tp!1357 () Bool)

(declare-fun b_and!3131 () Bool)

(assert (=> b!8674 (= tp!1357 b_and!3131)))

(declare-fun b_free!821 () Bool)

(declare-fun b_next!1835 () Bool)

(assert (=> b!8674 (= b_free!821 (not b_next!1835))))

(declare-fun tp!1361 () Bool)

(declare-fun b_and!3133 () Bool)

(assert (=> b!8674 (= tp!1361 b_and!3133)))

(declare-fun b!8677 () Bool)

(declare-fun b_free!823 () Bool)

(declare-fun b_next!1837 () Bool)

(assert (=> b!8677 (= b_free!823 (not b_next!1837))))

(declare-fun tp!1362 () Bool)

(declare-fun b_and!3135 () Bool)

(assert (=> b!8677 (= tp!1362 b_and!3135)))

(declare-fun b_free!825 () Bool)

(declare-fun b_next!1839 () Bool)

(assert (=> b!8677 (= b_free!825 (not b_next!1839))))

(declare-fun tp!1359 () Bool)

(declare-fun b_and!3137 () Bool)

(assert (=> b!8677 (= tp!1359 b_and!3137)))

(declare-fun b_free!827 () Bool)

(declare-fun b_next!1841 () Bool)

(assert (=> b!8677 (= b_free!827 (not b_next!1841))))

(declare-fun tp!1358 () Bool)

(declare-fun b_and!3139 () Bool)

(assert (=> b!8677 (= tp!1358 b_and!3139)))

(declare-fun lambda!2017 () Int)

(declare-fun f!585 () Int)

(declare-fun b_next!1843 () Bool)

(assert (=> start!1720 (= b_next!1829 (or (and start!1720 (= lambda!2017 f!585)) b_next!1843))))

(declare-fun b!8672 () Bool)

(assert (=> b!8672 true))

(declare-fun lambda!2018 () Int)

(declare-fun order!99 () Int)

(declare-fun order!97 () Int)

(declare-fun dynLambda!241 (Int Int) Int)

(declare-fun dynLambda!242 (Int Int) Int)

(assert (=> b!8672 (< (dynLambda!241 order!97 f!585) (dynLambda!242 order!99 lambda!2018))))

(assert (=> b!8672 true))

(declare-datatypes () ((Balance!167 (Balance!168 (extraOpen!124 Int) (extraClose!124 Int)))))

(declare-datatypes () ((EqEvidence!132 (EqEvidence!133 (x!4737 Int) (y!526 Int) (evidence!133 Int)))))

(declare-fun thiss!839 () EqEvidence!132)

(declare-fun b_next!1845 () Bool)

(assert (=> b!8674 (= b_next!1831 (or (and b!8672 (= lambda!2018 (x!4737 thiss!839))) b_next!1845))))

(declare-fun b_next!1847 () Bool)

(assert (=> b!8674 (= b_next!1833 (or (and b!8672 (= lambda!2018 (y!526 thiss!839))) b_next!1847))))

(declare-fun b_next!1849 () Bool)

(declare-fun that!211 () EqEvidence!132)

(assert (=> b!8677 (= b_next!1837 (or (and b!8672 (= lambda!2018 (x!4737 that!211))) b_next!1849))))

(declare-fun b_next!1851 () Bool)

(assert (=> b!8677 (= b_next!1839 (or (and b!8672 (= lambda!2018 (y!526 that!211))) b_next!1851))))

(declare-fun m!11555 () Bool)

(assert (=> b!8672 m!11555))

(declare-fun lambda!2019 () Int)

(declare-fun dynLambda!243 (Int) Bool)

(assert (=> (and b!8674 b!8672 (= (dynLambda!243 lambda!2019) (dynLambda!243 (evidence!133 thiss!839)))) (= lambda!2019 (evidence!133 thiss!839))))

(assert (=> (and b!8677 b!8672 (= (dynLambda!243 lambda!2019) (dynLambda!243 (evidence!133 that!211)))) (= lambda!2019 (evidence!133 that!211))))

(declare-fun b_next!1853 () Bool)

(assert (=> b!8674 (= b_next!1835 (or (and b!8672 (= lambda!2019 (evidence!133 thiss!839))) b_next!1853))))

(declare-fun b_next!1855 () Bool)

(assert (=> b!8677 (= b_next!1841 (or (and b!8672 (= lambda!2019 (evidence!133 that!211))) b_next!1855))))

(declare-fun bs!2043 () Bool)

(declare-fun b!8675 () Bool)

(assert (= bs!2043 (and b!8675 b!8672)))

(declare-fun lambda!2020 () Int)

(assert (=> bs!2043 (not (= lambda!2020 lambda!2018))))

(assert (=> b!8675 true))

(declare-fun dynLambda!244 (Int) Balance!167)

(assert (=> (and b!8674 b!8675 (= (dynLambda!244 lambda!2020) (dynLambda!244 (x!4737 thiss!839)))) (= lambda!2020 (x!4737 thiss!839))))

(assert (=> (and b!8674 b!8675 (= (dynLambda!244 lambda!2020) (dynLambda!244 (y!526 thiss!839)))) (= lambda!2020 (y!526 thiss!839))))

(assert (=> (and b!8677 b!8675 (= (dynLambda!244 lambda!2020) (dynLambda!244 (x!4737 that!211)))) (= lambda!2020 (x!4737 that!211))))

(assert (=> (and b!8677 b!8675 (= (dynLambda!244 lambda!2020) (dynLambda!244 (y!526 that!211)))) (= lambda!2020 (y!526 that!211))))

(declare-fun b_next!1857 () Bool)

(assert (=> b!8674 (= b_next!1845 (or (and b!8675 (= lambda!2020 (x!4737 thiss!839))) b_next!1857))))

(declare-fun b_next!1859 () Bool)

(assert (=> b!8674 (= b_next!1847 (or (and b!8675 (= lambda!2020 (y!526 thiss!839))) b_next!1859))))

(declare-fun b_next!1861 () Bool)

(assert (=> b!8677 (= b_next!1849 (or (and b!8675 (= lambda!2020 (x!4737 that!211))) b_next!1861))))

(declare-fun b_next!1863 () Bool)

(assert (=> b!8677 (= b_next!1851 (or (and b!8675 (= lambda!2020 (y!526 that!211))) b_next!1863))))

(declare-fun res!2695 () Bool)

(declare-fun e!5025 () Bool)

(assert (=> b!8672 (=> (not res!2695) (not e!5025))))

(assert (=> b!8672 (= res!2695 (= thiss!839 (EqEvidence!133 lambda!2018 lambda!2018 lambda!2019)))))

(declare-fun b!8673 () Bool)

(declare-fun res!2694 () Bool)

(assert (=> b!8673 (=> (not res!2694) (not e!5025))))

(assert (=> b!8673 (= res!2694 (dynLambda!243 (evidence!133 thiss!839)))))

(declare-fun e!5024 () Bool)

(assert (=> b!8674 (= e!5024 (and tp!1363 tp!1357 tp!1361))))

(declare-fun res!2696 () Bool)

(assert (=> b!8675 (=> (not res!2696) (not e!5025))))

(assert (=> b!8675 (= res!2696 (= that!211 (EqEvidence!133 lambda!2020 lambda!2020 lambda!2019)))))

(declare-fun b!8676 () Bool)

(declare-fun res!2697 () Bool)

(assert (=> b!8676 (=> (not res!2697) (not e!5025))))

(declare-datatypes () ((ProofOps!114 (ProofOps!115 (prop!171 Bool)))))

(declare-fun thiss!829 () ProofOps!114)

(declare-datatypes () ((Tree!46 (Branch!37 (left!387 Tree!46) (right!390 Tree!46)) (Leaf!119 (value!1288 Balance!167)))))

(declare-fun tree!25 () Tree!46)

(declare-fun fold!22 (Tree!46 Int) Balance!167)

(declare-datatypes () ((List!200 (Nil!198) (Cons!197 (head!415 Balance!167) (tail!427 List!200)))))

(declare-fun foldRight1!53 (List!200 Int) Balance!167)

(declare-fun toList!46 (Tree!46) List!200)

(assert (=> b!8676 (= res!2697 (= thiss!829 (ProofOps!115 (= (fold!22 tree!25 f!585) (foldRight1!53 (toList!46 tree!25) f!585)))))))

(declare-fun res!2698 () Bool)

(assert (=> start!1720 (=> (not res!2698) (not e!5025))))

(assert (=> start!1720 (= res!2698 (= f!585 lambda!2017))))

(assert (=> start!1720 e!5025))

(assert (=> start!1720 true))

(assert (=> start!1720 tp!1360))

(declare-fun inv!301 (EqEvidence!132) Bool)

(assert (=> start!1720 (and (inv!301 thiss!839) e!5024)))

(declare-fun e!5026 () Bool)

(assert (=> start!1720 (and (inv!301 that!211) e!5026)))

(assert (=> b!8677 (= e!5026 (and tp!1362 tp!1359 tp!1358))))

(declare-fun b!8678 () Bool)

(assert (=> b!8678 (= e!5025 (not (= (dynLambda!244 (y!526 thiss!839)) (dynLambda!244 (x!4737 that!211)))))))

(declare-fun b!8679 () Bool)

(declare-fun res!2699 () Bool)

(assert (=> b!8679 (=> (not res!2699) (not e!5025))))

(assert (=> b!8679 (= res!2699 (is-Leaf!119 tree!25))))

(assert (= (and start!1720 res!2698) b!8676))

(assert (= (and b!8676 res!2697) b!8679))

(assert (= (and b!8679 res!2699) b!8672))

(assert (= (and b!8672 res!2695) b!8675))

(assert (= (and b!8675 res!2696) b!8673))

(assert (= (and b!8673 res!2694) b!8678))

(assert (= start!1720 b!8674))

(assert (= start!1720 b!8677))

(declare-fun b_lambda!4331 () Bool)

(assert (=> (not b_lambda!4331) (not b!8673)))

(declare-fun t!2051 () Bool)

(declare-fun tb!1711 () Bool)

(assert (=> (and b!8674 (= (evidence!133 thiss!839) (evidence!133 thiss!839)) t!2051) tb!1711))

(declare-fun result!1751 () Bool)

(assert (=> tb!1711 (= result!1751 true)))

(assert (=> b!8673 t!2051))

(declare-fun b_and!3141 () Bool)

(assert (= b_and!3133 (and (=> t!2051 result!1751) b_and!3141)))

(declare-fun tb!1713 () Bool)

(declare-fun t!2053 () Bool)

(assert (=> (and b!8677 (= (evidence!133 that!211) (evidence!133 thiss!839)) t!2053) tb!1713))

(declare-fun result!1753 () Bool)

(assert (=> tb!1713 (= result!1753 true)))

(assert (=> b!8673 t!2053))

(declare-fun b_and!3143 () Bool)

(assert (= b_and!3139 (and (=> t!2053 result!1753) b_and!3143)))

(declare-fun b_lambda!4333 () Bool)

(assert (=> (not b_lambda!4333) (not b!8678)))

(declare-fun t!2055 () Bool)

(declare-fun tb!1715 () Bool)

(assert (=> (and b!8674 (= (x!4737 thiss!839) (y!526 thiss!839)) t!2055) tb!1715))

(declare-fun result!1755 () Bool)

(assert (=> tb!1715 (= result!1755 true)))

(assert (=> b!8678 t!2055))

(declare-fun b_and!3145 () Bool)

(assert (= b_and!3129 (and (=> t!2055 result!1755) b_and!3145)))

(declare-fun t!2057 () Bool)

(declare-fun tb!1717 () Bool)

(assert (=> (and b!8674 (= (y!526 thiss!839) (y!526 thiss!839)) t!2057) tb!1717))

(declare-fun result!1757 () Bool)

(assert (=> tb!1717 (= result!1757 true)))

(assert (=> b!8678 t!2057))

(declare-fun b_and!3147 () Bool)

(assert (= b_and!3131 (and (=> t!2057 result!1757) b_and!3147)))

(declare-fun t!2059 () Bool)

(declare-fun tb!1719 () Bool)

(assert (=> (and b!8677 (= (x!4737 that!211) (y!526 thiss!839)) t!2059) tb!1719))

(declare-fun result!1759 () Bool)

(assert (=> tb!1719 (= result!1759 true)))

(assert (=> b!8678 t!2059))

(declare-fun b_and!3149 () Bool)

(assert (= b_and!3135 (and (=> t!2059 result!1759) b_and!3149)))

(declare-fun t!2061 () Bool)

(declare-fun tb!1721 () Bool)

(assert (=> (and b!8677 (= (y!526 that!211) (y!526 thiss!839)) t!2061) tb!1721))

(declare-fun result!1761 () Bool)

(assert (=> tb!1721 (= result!1761 true)))

(assert (=> b!8678 t!2061))

(declare-fun b_and!3151 () Bool)

(assert (= b_and!3137 (and (=> t!2061 result!1761) b_and!3151)))

(declare-fun b_lambda!4335 () Bool)

(assert (=> (not b_lambda!4335) (not b!8678)))

(declare-fun t!2063 () Bool)

(declare-fun tb!1723 () Bool)

(assert (=> (and b!8674 (= (x!4737 thiss!839) (x!4737 that!211)) t!2063) tb!1723))

(declare-fun result!1763 () Bool)

(assert (=> tb!1723 (= result!1763 true)))

(assert (=> b!8678 t!2063))

(declare-fun b_and!3153 () Bool)

(assert (= b_and!3145 (and (=> t!2063 result!1763) b_and!3153)))

(declare-fun t!2065 () Bool)

(declare-fun tb!1725 () Bool)

(assert (=> (and b!8674 (= (y!526 thiss!839) (x!4737 that!211)) t!2065) tb!1725))

(declare-fun result!1765 () Bool)

(assert (=> tb!1725 (= result!1765 true)))

(assert (=> b!8678 t!2065))

(declare-fun b_and!3155 () Bool)

(assert (= b_and!3147 (and (=> t!2065 result!1765) b_and!3155)))

(declare-fun t!2067 () Bool)

(declare-fun tb!1727 () Bool)

(assert (=> (and b!8677 (= (x!4737 that!211) (x!4737 that!211)) t!2067) tb!1727))

(declare-fun result!1767 () Bool)

(assert (=> tb!1727 (= result!1767 true)))

(assert (=> b!8678 t!2067))

(declare-fun b_and!3157 () Bool)

(assert (= b_and!3149 (and (=> t!2067 result!1767) b_and!3157)))

(declare-fun t!2069 () Bool)

(declare-fun tb!1729 () Bool)

(assert (=> (and b!8677 (= (y!526 that!211) (x!4737 that!211)) t!2069) tb!1729))

(declare-fun result!1769 () Bool)

(assert (=> tb!1729 (= result!1769 true)))

(assert (=> b!8678 t!2069))

(declare-fun b_and!3159 () Bool)

(assert (= b_and!3151 (and (=> t!2069 result!1769) b_and!3159)))

(declare-fun m!11557 () Bool)

(assert (=> b!8673 m!11557))

(declare-fun m!11559 () Bool)

(assert (=> b!8676 m!11559))

(declare-fun m!11561 () Bool)

(assert (=> b!8676 m!11561))

(assert (=> b!8676 m!11561))

(declare-fun m!11563 () Bool)

(assert (=> b!8676 m!11563))

(declare-fun m!11565 () Bool)

(assert (=> start!1720 m!11565))

(declare-fun m!11567 () Bool)

(assert (=> start!1720 m!11567))

(declare-fun m!11569 () Bool)

(assert (=> b!8678 m!11569))

(declare-fun m!11571 () Bool)

(assert (=> b!8678 m!11571))

(push 1)

(assert (not b_next!1859))

(assert b_and!3157)

(assert (not b_next!1853))

(assert b_and!3127)

(assert (not start!1720))

(assert (not b_next!1843))

(assert b_and!3141)

(assert (not b!8676))

(assert (not b_lambda!4335))

(assert b_and!3143)

(assert (not b!8672))

(assert (not b_lambda!4331))

(assert (not b_next!1857))

(assert (not b_next!1861))

(assert (not b_lambda!4333))

(assert (not b_next!1863))

(assert b_and!3159)

(assert (not b!8675))

(assert b_and!3155)

(assert b_and!3153)

(assert (not b_next!1855))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1859))

(assert b_and!3157)

(assert (not b_next!1853))

(assert b_and!3127)

(assert (not b_next!1843))

(assert b_and!3141)

(assert b_and!3143)

(assert (not b_next!1857))

(assert (not b_next!1861))

(assert (not b_next!1863))

(assert b_and!3159)

(assert b_and!3155)

(assert b_and!3153)

(assert (not b_next!1855))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4337 () Bool)

(assert (= b_lambda!4333 (or (and b!8672 (= lambda!2018 (y!526 thiss!839))) (and b!8675 (= lambda!2020 (y!526 thiss!839))) (and b!8674 b_free!819) (and b!8677 b_free!823 (= (x!4737 that!211) (y!526 thiss!839))) (and b!8677 b_free!825 (= (y!526 that!211) (y!526 thiss!839))) (and b!8674 b_free!817 (= (x!4737 thiss!839) (y!526 thiss!839))) b_lambda!4337)))

(declare-fun bs!2044 () Bool)

(declare-fun d!6793 () Bool)

(assert (= bs!2044 (and d!6793 b!8675)))

(assert (=> bs!2044 (= (dynLambda!244 lambda!2020) (value!1288 tree!25))))

(assert (=> (and b!8675 (= lambda!2020 (y!526 thiss!839)) b!8678) d!6793))

(declare-fun bs!2045 () Bool)

(declare-fun d!6795 () Bool)

(assert (= bs!2045 (and d!6795 b!8672)))

(assert (=> bs!2045 (= (dynLambda!244 lambda!2018) (fold!22 tree!25 f!585))))

(assert (=> bs!2045 m!11559))

(assert (=> (and b!8672 (= lambda!2018 (y!526 thiss!839)) b!8678) d!6795))

(declare-fun b_lambda!4339 () Bool)

(assert (= b_lambda!4335 (or (and b!8677 b_free!823) (and b!8675 (= lambda!2020 (x!4737 that!211))) (and b!8672 (= lambda!2018 (x!4737 that!211))) (and b!8674 b_free!819 (= (y!526 thiss!839) (x!4737 that!211))) (and b!8674 b_free!817 (= (x!4737 thiss!839) (x!4737 that!211))) (and b!8677 b_free!825 (= (y!526 that!211) (x!4737 that!211))) b_lambda!4339)))

(declare-fun bs!2046 () Bool)

(declare-fun d!6797 () Bool)

(assert (= bs!2046 (and d!6797 b!8672)))

(assert (=> bs!2046 (= (dynLambda!244 lambda!2018) (fold!22 tree!25 f!585))))

(assert (=> bs!2046 m!11559))

(assert (=> (and b!8672 (= lambda!2018 (x!4737 that!211)) b!8678) d!6797))

(declare-fun bs!2047 () Bool)

(declare-fun d!6799 () Bool)

(assert (= bs!2047 (and d!6799 b!8675)))

(assert (=> bs!2047 (= (dynLambda!244 lambda!2020) (value!1288 tree!25))))

(assert (=> (and b!8675 (= lambda!2020 (x!4737 that!211)) b!8678) d!6799))

(declare-fun b_lambda!4341 () Bool)

(assert (= b_lambda!4331 (or (and b!8672 (= lambda!2019 (evidence!133 thiss!839))) (and b!8674 b_free!821) (and b!8677 b_free!827 (= (evidence!133 that!211) (evidence!133 thiss!839))) b_lambda!4341)))

(declare-fun bs!2048 () Bool)

(declare-fun d!6801 () Bool)

(assert (= bs!2048 (and d!6801 b!8672)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2048 (= (dynLambda!243 lambda!2019) trivial!1)))

(assert (=> (and b!8672 (= lambda!2019 (evidence!133 thiss!839)) b!8673) d!6801))

(push 1)

(assert (not b_next!1859))

(assert b_and!3157)

(assert (not b_next!1853))

(assert b_and!3127)

(assert (not b_lambda!4337))

(assert (not start!1720))

(assert (not bs!2045))

(assert (not b_next!1843))

(assert (not b_lambda!4341))

(assert b_and!3141)

(assert (not b!8676))

(assert (not bs!2046))

(assert b_and!3143)

(assert (not b_lambda!4339))

(assert (not b!8672))

(assert (not b_next!1857))

(assert (not b_next!1861))

(assert (not b_next!1863))

(assert b_and!3159)

(assert (not b!8675))

(assert b_and!3155)

(assert b_and!3153)

(assert (not b_next!1855))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1859))

(assert b_and!3157)

(assert (not b_next!1853))

(assert b_and!3127)

(assert (not b_next!1843))

(assert b_and!3141)

(assert b_and!3143)

(assert (not b_next!1857))

(assert (not b_next!1861))

(assert (not b_next!1863))

(assert b_and!3159)

(assert b_and!3155)

(assert b_and!3153)

(assert (not b_next!1855))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6803 () Bool)

(assert (=> d!6803 (= trivial!1 true)))

(assert (=> b!8672 d!6803))

(declare-fun bs!2049 () Bool)

(declare-fun b!8689 () Bool)

(assert (= bs!2049 (and b!8689 b!8672)))

(declare-fun lambda!2025 () Int)

(assert (=> bs!2049 (= (= (left!387 tree!25) tree!25) (= lambda!2025 lambda!2018))))

(declare-fun bs!2050 () Bool)

(assert (= bs!2050 (and b!8689 b!8675)))

(assert (=> bs!2050 (not (= lambda!2025 lambda!2020))))

(assert (=> b!8689 true))

(assert (=> b!8689 (< (dynLambda!241 order!97 f!585) (dynLambda!242 order!99 lambda!2025))))

(assert (=> b!8689 true))

(declare-fun b_next!1865 () Bool)

(assert (=> b!8674 (= b_next!1857 (or (and b!8689 (= lambda!2025 (x!4737 thiss!839))) b_next!1865))))

(declare-fun b_next!1867 () Bool)

(assert (=> b!8674 (= b_next!1859 (or (and b!8689 (= lambda!2025 (y!526 thiss!839))) b_next!1867))))

(declare-fun b_next!1869 () Bool)

(assert (=> b!8677 (= b_next!1861 (or (and b!8689 (= lambda!2025 (x!4737 that!211))) b_next!1869))))

(declare-fun b_next!1871 () Bool)

(assert (=> b!8677 (= b_next!1863 (or (and b!8689 (= lambda!2025 (y!526 that!211))) b_next!1871))))

(declare-fun lambda!2026 () Int)

(assert (=> bs!2049 (= (= (right!390 tree!25) tree!25) (= lambda!2026 lambda!2018))))

(assert (=> bs!2050 (not (= lambda!2026 lambda!2020))))

(assert (=> b!8689 (= (= (right!390 tree!25) (left!387 tree!25)) (= lambda!2026 lambda!2025))))

(assert (=> b!8689 true))

(assert (=> b!8689 (< (dynLambda!241 order!97 f!585) (dynLambda!242 order!99 lambda!2026))))

(assert (=> b!8689 true))

(declare-fun b_next!1873 () Bool)

(assert (=> b!8674 (= b_next!1865 (or (and b!8689 (= lambda!2026 (x!4737 thiss!839))) b_next!1873))))

(declare-fun b_next!1875 () Bool)

(assert (=> b!8674 (= b_next!1867 (or (and b!8689 (= lambda!2026 (y!526 thiss!839))) b_next!1875))))

(declare-fun b_next!1877 () Bool)

(assert (=> b!8677 (= b_next!1869 (or (and b!8689 (= lambda!2026 (x!4737 that!211))) b_next!1877))))

(declare-fun b_next!1879 () Bool)

(assert (=> b!8677 (= b_next!1871 (or (and b!8689 (= lambda!2026 (y!526 that!211))) b_next!1879))))

(declare-fun e!5045 () Balance!167)

(declare-datatypes () ((tuple2!62 (tuple2!63 (_1!31 Balance!167) (_2!31 Balance!167)))))

(declare-fun lt!1565 () tuple2!62)

(declare-fun dynLambda!245 (Int Balance!167 Balance!167) Balance!167)

(assert (=> b!8689 (= e!5045 (dynLambda!245 f!585 (_1!31 lt!1565) (_2!31 lt!1565)))))

(assert (=> b!8689 (= lt!1565 (tuple2!63 (dynLambda!244 lambda!2025) (dynLambda!244 lambda!2026)))))

(declare-fun d!6805 () Bool)

(declare-fun c!2929 () Bool)

(assert (=> d!6805 (= c!2929 (is-Leaf!119 tree!25))))

(assert (=> d!6805 (= (fold!22 tree!25 f!585) e!5045)))

(declare-fun b!8688 () Bool)

(assert (=> b!8688 (= e!5045 (value!1288 tree!25))))

(assert (= (and d!6805 c!2929) b!8688))

(assert (= (and d!6805 (not c!2929)) b!8689))

(declare-fun b_lambda!4343 () Bool)

(assert (=> (not b_lambda!4343) (not b!8689)))

(declare-fun t!2071 () Bool)

(declare-fun tb!1731 () Bool)

(assert (=> (and start!1720 (= f!585 f!585) t!2071) tb!1731))

(declare-fun result!1771 () Bool)

(assert (=> tb!1731 (= result!1771 true)))

(assert (=> b!8689 t!2071))

(declare-fun b_and!3161 () Bool)

(assert (= b_and!3127 (and (=> t!2071 result!1771) b_and!3161)))

(declare-fun b_lambda!4345 () Bool)

(assert (=> (not b_lambda!4345) (not b!8689)))

(declare-fun b_lambda!4347 () Bool)

(assert (=> (not b_lambda!4347) (not b!8689)))

(declare-fun m!11573 () Bool)

(assert (=> b!8689 m!11573))

(declare-fun m!11575 () Bool)

(assert (=> b!8689 m!11575))

(declare-fun m!11577 () Bool)

(assert (=> b!8689 m!11577))

(assert (=> b!8676 d!6805))

(declare-fun d!6807 () Bool)

(declare-fun c!2932 () Bool)

(assert (=> d!6807 (= c!2932 (and (is-Cons!197 (toList!46 tree!25)) (is-Nil!198 (tail!427 (toList!46 tree!25)))))))

(declare-fun e!5048 () Balance!167)

(assert (=> d!6807 (= (foldRight1!53 (toList!46 tree!25) f!585) e!5048)))

(declare-fun b!8694 () Bool)

(assert (=> b!8694 (= e!5048 (head!415 (toList!46 tree!25)))))

(declare-fun b!8695 () Bool)

(assert (=> b!8695 (= e!5048 (dynLambda!245 f!585 (head!415 (toList!46 tree!25)) (foldRight1!53 (tail!427 (toList!46 tree!25)) f!585)))))

(assert (= (and d!6807 c!2932) b!8694))

(assert (= (and d!6807 (not c!2932)) b!8695))

(declare-fun b_lambda!4349 () Bool)

(assert (=> (not b_lambda!4349) (not b!8695)))

(declare-fun t!2073 () Bool)

(declare-fun tb!1733 () Bool)

(assert (=> (and start!1720 (= f!585 f!585) t!2073) tb!1733))

(declare-fun result!1773 () Bool)

(assert (=> tb!1733 (= result!1773 true)))

(assert (=> b!8695 t!2073))

(declare-fun b_and!3163 () Bool)

(assert (= b_and!3161 (and (=> t!2073 result!1773) b_and!3163)))

(declare-fun m!11579 () Bool)

(assert (=> b!8695 m!11579))

(assert (=> b!8695 m!11579))

(declare-fun m!11581 () Bool)

(assert (=> b!8695 m!11581))

(assert (=> b!8676 d!6807))

(declare-fun d!6809 () Bool)

(declare-fun lt!1568 () List!200)

(declare-fun isEmpty!164 (List!200) Bool)

(assert (=> d!6809 (not (isEmpty!164 lt!1568))))

(declare-fun e!5051 () List!200)

(assert (=> d!6809 (= lt!1568 e!5051)))

(declare-fun c!2935 () Bool)

(assert (=> d!6809 (= c!2935 (is-Leaf!119 tree!25))))

(assert (=> d!6809 (= (toList!46 tree!25) lt!1568)))

(declare-fun b!8700 () Bool)

(assert (=> b!8700 (= e!5051 (Cons!197 (value!1288 tree!25) Nil!198))))

(declare-fun b!8701 () Bool)

(declare-fun append!85 (List!200 List!200) List!200)

(assert (=> b!8701 (= e!5051 (append!85 (toList!46 (left!387 tree!25)) (toList!46 (right!390 tree!25))))))

(assert (= (and d!6809 c!2935) b!8700))

(assert (= (and d!6809 (not c!2935)) b!8701))

(declare-fun m!11583 () Bool)

(assert (=> d!6809 m!11583))

(declare-fun m!11585 () Bool)

(assert (=> b!8701 m!11585))

(declare-fun m!11587 () Bool)

(assert (=> b!8701 m!11587))

(assert (=> b!8701 m!11585))

(assert (=> b!8701 m!11587))

(declare-fun m!11589 () Bool)

(assert (=> b!8701 m!11589))

(assert (=> b!8676 d!6809))

(assert (=> bs!2046 d!6805))

(assert (=> b!8675 d!6803))

(declare-fun d!6811 () Bool)

(declare-fun res!2703 () Bool)

(declare-fun e!5054 () Bool)

(assert (=> d!6811 (=> (not res!2703) (not e!5054))))

(assert (=> d!6811 (= res!2703 (= (dynLambda!244 (x!4737 thiss!839)) (dynLambda!244 (y!526 thiss!839))))))

(assert (=> d!6811 (= (inv!301 thiss!839) e!5054)))

(declare-fun b!8704 () Bool)

(assert (=> b!8704 (= e!5054 (dynLambda!243 (evidence!133 thiss!839)))))

(assert (= (and d!6811 res!2703) b!8704))

(declare-fun b_lambda!4351 () Bool)

(assert (=> (not b_lambda!4351) (not d!6811)))

(declare-fun t!2075 () Bool)

(declare-fun tb!1735 () Bool)

(assert (=> (and b!8674 (= (x!4737 thiss!839) (x!4737 thiss!839)) t!2075) tb!1735))

(declare-fun result!1775 () Bool)

(assert (=> tb!1735 (= result!1775 true)))

(assert (=> d!6811 t!2075))

(declare-fun b_and!3165 () Bool)

(assert (= b_and!3153 (and (=> t!2075 result!1775) b_and!3165)))

(declare-fun t!2077 () Bool)

(declare-fun tb!1737 () Bool)

(assert (=> (and b!8674 (= (y!526 thiss!839) (x!4737 thiss!839)) t!2077) tb!1737))

(declare-fun result!1777 () Bool)

(assert (=> tb!1737 (= result!1777 true)))

(assert (=> d!6811 t!2077))

(declare-fun b_and!3167 () Bool)

(assert (= b_and!3155 (and (=> t!2077 result!1777) b_and!3167)))

(declare-fun tb!1739 () Bool)

(declare-fun t!2079 () Bool)

(assert (=> (and b!8677 (= (x!4737 that!211) (x!4737 thiss!839)) t!2079) tb!1739))

(declare-fun result!1779 () Bool)

(assert (=> tb!1739 (= result!1779 true)))

(assert (=> d!6811 t!2079))

(declare-fun b_and!3169 () Bool)

(assert (= b_and!3157 (and (=> t!2079 result!1779) b_and!3169)))

(declare-fun t!2081 () Bool)

(declare-fun tb!1741 () Bool)

(assert (=> (and b!8677 (= (y!526 that!211) (x!4737 thiss!839)) t!2081) tb!1741))

(declare-fun result!1781 () Bool)

(assert (=> tb!1741 (= result!1781 true)))

(assert (=> d!6811 t!2081))

(declare-fun b_and!3171 () Bool)

(assert (= b_and!3159 (and (=> t!2081 result!1781) b_and!3171)))

(declare-fun b_lambda!4353 () Bool)

(assert (=> (not b_lambda!4353) (not d!6811)))

(assert (=> d!6811 t!2055))

(declare-fun b_and!3173 () Bool)

(assert (= b_and!3165 (and (=> t!2055 result!1755) b_and!3173)))

(assert (=> d!6811 t!2057))

(declare-fun b_and!3175 () Bool)

(assert (= b_and!3167 (and (=> t!2057 result!1757) b_and!3175)))

(assert (=> d!6811 t!2059))

(declare-fun b_and!3177 () Bool)

(assert (= b_and!3169 (and (=> t!2059 result!1759) b_and!3177)))

(assert (=> d!6811 t!2061))

(declare-fun b_and!3179 () Bool)

(assert (= b_and!3171 (and (=> t!2061 result!1761) b_and!3179)))

(declare-fun b_lambda!4355 () Bool)

(assert (=> (not b_lambda!4355) (not b!8704)))

(assert (=> b!8704 t!2051))

(declare-fun b_and!3181 () Bool)

(assert (= b_and!3141 (and (=> t!2051 result!1751) b_and!3181)))

(assert (=> b!8704 t!2053))

(declare-fun b_and!3183 () Bool)

(assert (= b_and!3143 (and (=> t!2053 result!1753) b_and!3183)))

(declare-fun m!11591 () Bool)

(assert (=> d!6811 m!11591))

(assert (=> d!6811 m!11569))

(assert (=> b!8704 m!11557))

(assert (=> start!1720 d!6811))

(declare-fun d!6813 () Bool)

(declare-fun res!2704 () Bool)

(declare-fun e!5055 () Bool)

(assert (=> d!6813 (=> (not res!2704) (not e!5055))))

(assert (=> d!6813 (= res!2704 (= (dynLambda!244 (x!4737 that!211)) (dynLambda!244 (y!526 that!211))))))

(assert (=> d!6813 (= (inv!301 that!211) e!5055)))

(declare-fun b!8705 () Bool)

(assert (=> b!8705 (= e!5055 (dynLambda!243 (evidence!133 that!211)))))

(assert (= (and d!6813 res!2704) b!8705))

(declare-fun b_lambda!4357 () Bool)

(assert (=> (not b_lambda!4357) (not d!6813)))

(assert (=> d!6813 t!2063))

(declare-fun b_and!3185 () Bool)

(assert (= b_and!3173 (and (=> t!2063 result!1763) b_and!3185)))

(assert (=> d!6813 t!2065))

(declare-fun b_and!3187 () Bool)

(assert (= b_and!3175 (and (=> t!2065 result!1765) b_and!3187)))

(assert (=> d!6813 t!2067))

(declare-fun b_and!3189 () Bool)

(assert (= b_and!3177 (and (=> t!2067 result!1767) b_and!3189)))

(assert (=> d!6813 t!2069))

(declare-fun b_and!3191 () Bool)

(assert (= b_and!3179 (and (=> t!2069 result!1769) b_and!3191)))

(declare-fun b_lambda!4359 () Bool)

(assert (=> (not b_lambda!4359) (not d!6813)))

(declare-fun t!2083 () Bool)

(declare-fun tb!1743 () Bool)

(assert (=> (and b!8674 (= (x!4737 thiss!839) (y!526 that!211)) t!2083) tb!1743))

(declare-fun result!1783 () Bool)

(assert (=> tb!1743 (= result!1783 true)))

(assert (=> d!6813 t!2083))

(declare-fun b_and!3193 () Bool)

(assert (= b_and!3185 (and (=> t!2083 result!1783) b_and!3193)))

(declare-fun tb!1745 () Bool)

(declare-fun t!2085 () Bool)

(assert (=> (and b!8674 (= (y!526 thiss!839) (y!526 that!211)) t!2085) tb!1745))

(declare-fun result!1785 () Bool)

(assert (=> tb!1745 (= result!1785 true)))

(assert (=> d!6813 t!2085))

(declare-fun b_and!3195 () Bool)

(assert (= b_and!3187 (and (=> t!2085 result!1785) b_and!3195)))

(declare-fun t!2087 () Bool)

(declare-fun tb!1747 () Bool)

(assert (=> (and b!8677 (= (x!4737 that!211) (y!526 that!211)) t!2087) tb!1747))

(declare-fun result!1787 () Bool)

(assert (=> tb!1747 (= result!1787 true)))

(assert (=> d!6813 t!2087))

(declare-fun b_and!3197 () Bool)

(assert (= b_and!3189 (and (=> t!2087 result!1787) b_and!3197)))

(declare-fun t!2089 () Bool)

(declare-fun tb!1749 () Bool)

(assert (=> (and b!8677 (= (y!526 that!211) (y!526 that!211)) t!2089) tb!1749))

(declare-fun result!1789 () Bool)

(assert (=> tb!1749 (= result!1789 true)))

(assert (=> d!6813 t!2089))

(declare-fun b_and!3199 () Bool)

(assert (= b_and!3191 (and (=> t!2089 result!1789) b_and!3199)))

(declare-fun b_lambda!4361 () Bool)

(assert (=> (not b_lambda!4361) (not b!8705)))

(declare-fun tb!1751 () Bool)

(declare-fun t!2091 () Bool)

(assert (=> (and b!8674 (= (evidence!133 thiss!839) (evidence!133 that!211)) t!2091) tb!1751))

(declare-fun result!1791 () Bool)

(assert (=> tb!1751 (= result!1791 true)))

(assert (=> b!8705 t!2091))

(declare-fun b_and!3201 () Bool)

(assert (= b_and!3181 (and (=> t!2091 result!1791) b_and!3201)))

(declare-fun t!2093 () Bool)

(declare-fun tb!1753 () Bool)

(assert (=> (and b!8677 (= (evidence!133 that!211) (evidence!133 that!211)) t!2093) tb!1753))

(declare-fun result!1793 () Bool)

(assert (=> tb!1753 (= result!1793 true)))

(assert (=> b!8705 t!2093))

(declare-fun b_and!3203 () Bool)

(assert (= b_and!3183 (and (=> t!2093 result!1793) b_and!3203)))

(assert (=> d!6813 m!11571))

(declare-fun m!11593 () Bool)

(assert (=> d!6813 m!11593))

(declare-fun m!11595 () Bool)

(assert (=> b!8705 m!11595))

(assert (=> start!1720 d!6813))

(assert (=> bs!2045 d!6805))

(declare-fun b_lambda!4363 () Bool)

(assert (= b_lambda!4359 (or (and b!8674 b_free!817 (= (x!4737 thiss!839) (y!526 that!211))) (and b!8677 b_free!823 (= (x!4737 that!211) (y!526 that!211))) (and b!8689 (= lambda!2025 (y!526 that!211))) (and b!8689 (= lambda!2026 (y!526 that!211))) (and b!8674 b_free!819 (= (y!526 thiss!839) (y!526 that!211))) (and b!8672 (= lambda!2018 (y!526 that!211))) (and b!8675 (= lambda!2020 (y!526 that!211))) (and b!8677 b_free!825) b_lambda!4363)))

(declare-fun bs!2051 () Bool)

(declare-fun d!6815 () Bool)

(assert (= bs!2051 (and d!6815 b!8675)))

(assert (=> bs!2051 (= (dynLambda!244 lambda!2020) (value!1288 tree!25))))

(assert (=> (and b!8675 (= lambda!2020 (y!526 that!211)) d!6813) d!6815))

(declare-fun bs!2052 () Bool)

(declare-fun d!6817 () Bool)

(assert (= bs!2052 (and d!6817 b!8672)))

(assert (=> bs!2052 (= (dynLambda!244 lambda!2018) (fold!22 tree!25 f!585))))

(assert (=> bs!2052 m!11559))

(assert (=> (and b!8672 (= lambda!2018 (y!526 that!211)) d!6813) d!6817))

(declare-fun bs!2053 () Bool)

(declare-fun d!6819 () Bool)

(assert (= bs!2053 (and d!6819 b!8689)))

(assert (=> bs!2053 (= (dynLambda!244 lambda!2026) (fold!22 (right!390 tree!25) f!585))))

(declare-fun m!11597 () Bool)

(assert (=> bs!2053 m!11597))

(assert (=> (and b!8689 (= lambda!2026 (y!526 that!211)) d!6813) d!6819))

(declare-fun bs!2054 () Bool)

(declare-fun d!6821 () Bool)

(assert (= bs!2054 (and d!6821 b!8689)))

(assert (=> bs!2054 (= (dynLambda!244 lambda!2025) (fold!22 (left!387 tree!25) f!585))))

(declare-fun m!11599 () Bool)

(assert (=> bs!2054 m!11599))

(assert (=> (and b!8689 (= lambda!2025 (y!526 that!211)) d!6813) d!6821))

(declare-fun b_lambda!4365 () Bool)

(assert (= b_lambda!4355 (or (and b!8672 (= lambda!2019 (evidence!133 thiss!839))) (and b!8674 b_free!821) (and b!8677 b_free!827 (= (evidence!133 that!211) (evidence!133 thiss!839))) b_lambda!4365)))

(assert (=> (and b!8672 (= lambda!2019 (evidence!133 thiss!839)) b!8704) d!6801))

(declare-fun b_lambda!4367 () Bool)

(assert (= b_lambda!4351 (or (and b!8677 b_free!825 (= (y!526 that!211) (x!4737 thiss!839))) (and b!8675 (= lambda!2020 (x!4737 thiss!839))) (and b!8674 b_free!819 (= (y!526 thiss!839) (x!4737 thiss!839))) (and b!8672 (= lambda!2018 (x!4737 thiss!839))) (and b!8674 b_free!817) (and b!8689 (= lambda!2026 (x!4737 thiss!839))) (and b!8689 (= lambda!2025 (x!4737 thiss!839))) (and b!8677 b_free!823 (= (x!4737 that!211) (x!4737 thiss!839))) b_lambda!4367)))

(declare-fun bs!2055 () Bool)

(declare-fun d!6823 () Bool)

(assert (= bs!2055 (and d!6823 b!8672)))

(assert (=> bs!2055 (= (dynLambda!244 lambda!2018) (fold!22 tree!25 f!585))))

(assert (=> bs!2055 m!11559))

(assert (=> (and b!8672 (= lambda!2018 (x!4737 thiss!839)) d!6811) d!6823))

(declare-fun bs!2056 () Bool)

(declare-fun d!6825 () Bool)

(assert (= bs!2056 (and d!6825 b!8675)))

(assert (=> bs!2056 (= (dynLambda!244 lambda!2020) (value!1288 tree!25))))

(assert (=> (and b!8675 (= lambda!2020 (x!4737 thiss!839)) d!6811) d!6825))

(declare-fun bs!2057 () Bool)

(declare-fun d!6827 () Bool)

(assert (= bs!2057 (and d!6827 b!8689)))

(assert (=> bs!2057 (= (dynLambda!244 lambda!2026) (fold!22 (right!390 tree!25) f!585))))

(assert (=> bs!2057 m!11597))

(assert (=> (and b!8689 (= lambda!2026 (x!4737 thiss!839)) d!6811) d!6827))

(declare-fun bs!2058 () Bool)

(declare-fun d!6829 () Bool)

(assert (= bs!2058 (and d!6829 b!8689)))

(assert (=> bs!2058 (= (dynLambda!244 lambda!2025) (fold!22 (left!387 tree!25) f!585))))

(assert (=> bs!2058 m!11599))

(assert (=> (and b!8689 (= lambda!2025 (x!4737 thiss!839)) d!6811) d!6829))

(declare-fun b_lambda!4369 () Bool)

(assert (= b_lambda!4353 (or (and b!8672 (= lambda!2018 (y!526 thiss!839))) (and b!8675 (= lambda!2020 (y!526 thiss!839))) (and b!8674 b_free!819) (and b!8677 b_free!823 (= (x!4737 that!211) (y!526 thiss!839))) (and b!8677 b_free!825 (= (y!526 that!211) (y!526 thiss!839))) (and b!8689 (= lambda!2026 (y!526 thiss!839))) (and b!8674 b_free!817 (= (x!4737 thiss!839) (y!526 thiss!839))) (and b!8689 (= lambda!2025 (y!526 thiss!839))) b_lambda!4369)))

(declare-fun bs!2059 () Bool)

(declare-fun d!6831 () Bool)

(assert (= bs!2059 (and d!6831 b!8689)))

(assert (=> bs!2059 (= (dynLambda!244 lambda!2026) (fold!22 (right!390 tree!25) f!585))))

(assert (=> bs!2059 m!11597))

(assert (=> (and b!8689 (= lambda!2026 (y!526 thiss!839)) d!6811) d!6831))

(declare-fun bs!2060 () Bool)

(declare-fun d!6833 () Bool)

(assert (= bs!2060 (and d!6833 b!8689)))

(assert (=> bs!2060 (= (dynLambda!244 lambda!2025) (fold!22 (left!387 tree!25) f!585))))

(assert (=> bs!2060 m!11599))

(assert (=> (and b!8689 (= lambda!2025 (y!526 thiss!839)) d!6811) d!6833))

(assert (=> (and b!8675 (= lambda!2020 (y!526 thiss!839)) d!6811) d!6793))

(assert (=> (and b!8672 (= lambda!2018 (y!526 thiss!839)) d!6811) d!6795))

(declare-fun b_lambda!4371 () Bool)

(assert (= b_lambda!4345 (or b!8689 b_lambda!4371)))

(declare-fun bs!2061 () Bool)

(declare-fun d!6835 () Bool)

(assert (= bs!2061 (and d!6835 b!8689)))

(assert (=> bs!2061 (= (dynLambda!244 lambda!2025) (fold!22 (left!387 tree!25) f!585))))

(assert (=> bs!2061 m!11599))

(assert (=> b!8689 d!6835))

(declare-fun b_lambda!4373 () Bool)

(assert (= b_lambda!4357 (or (and b!8677 b_free!823) (and b!8675 (= lambda!2020 (x!4737 that!211))) (and b!8689 (= lambda!2026 (x!4737 that!211))) (and b!8672 (= lambda!2018 (x!4737 that!211))) (and b!8689 (= lambda!2025 (x!4737 that!211))) (and b!8674 b_free!819 (= (y!526 thiss!839) (x!4737 that!211))) (and b!8674 b_free!817 (= (x!4737 thiss!839) (x!4737 that!211))) (and b!8677 b_free!825 (= (y!526 that!211) (x!4737 that!211))) b_lambda!4373)))

(declare-fun bs!2062 () Bool)

(declare-fun d!6837 () Bool)

(assert (= bs!2062 (and d!6837 b!8689)))

(assert (=> bs!2062 (= (dynLambda!244 lambda!2025) (fold!22 (left!387 tree!25) f!585))))

(assert (=> bs!2062 m!11599))

(assert (=> (and b!8689 (= lambda!2025 (x!4737 that!211)) d!6813) d!6837))

(declare-fun bs!2063 () Bool)

(declare-fun d!6839 () Bool)

(assert (= bs!2063 (and d!6839 b!8689)))

(assert (=> bs!2063 (= (dynLambda!244 lambda!2026) (fold!22 (right!390 tree!25) f!585))))

(assert (=> bs!2063 m!11597))

(assert (=> (and b!8689 (= lambda!2026 (x!4737 that!211)) d!6813) d!6839))

(assert (=> (and b!8672 (= lambda!2018 (x!4737 that!211)) d!6813) d!6797))

(assert (=> (and b!8675 (= lambda!2020 (x!4737 that!211)) d!6813) d!6799))

(declare-fun b_lambda!4375 () Bool)

(assert (= b_lambda!4347 (or b!8689 b_lambda!4375)))

(declare-fun bs!2064 () Bool)

(declare-fun d!6841 () Bool)

(assert (= bs!2064 (and d!6841 b!8689)))

(assert (=> bs!2064 (= (dynLambda!244 lambda!2026) (fold!22 (right!390 tree!25) f!585))))

(assert (=> bs!2064 m!11597))

(assert (=> b!8689 d!6841))

(declare-fun b_lambda!4377 () Bool)

(assert (= b_lambda!4343 (or (and start!1720 (= lambda!2017 f!585)) (and start!1720 b_free!815) b_lambda!4377)))

(declare-fun bs!2065 () Bool)

(declare-fun d!6843 () Bool)

(assert (= bs!2065 (and d!6843 start!1720)))

(declare-fun ++!3 (Balance!167 Balance!167) Balance!167)

(assert (=> bs!2065 (= (dynLambda!245 lambda!2017 (_1!31 lt!1565) (_2!31 lt!1565)) (++!3 (_1!31 lt!1565) (_2!31 lt!1565)))))

(declare-fun m!11601 () Bool)

(assert (=> bs!2065 m!11601))

(assert (=> (and start!1720 (= lambda!2017 f!585) b!8689) d!6843))

(declare-fun b_lambda!4379 () Bool)

(assert (= b_lambda!4349 (or (and start!1720 (= lambda!2017 f!585)) (and start!1720 b_free!815) b_lambda!4379)))

(declare-fun bs!2066 () Bool)

(declare-fun d!6845 () Bool)

(assert (= bs!2066 (and d!6845 start!1720)))

(assert (=> bs!2066 (= (dynLambda!245 lambda!2017 (head!415 (toList!46 tree!25)) (foldRight1!53 (tail!427 (toList!46 tree!25)) f!585)) (++!3 (head!415 (toList!46 tree!25)) (foldRight1!53 (tail!427 (toList!46 tree!25)) f!585)))))

(assert (=> bs!2066 m!11579))

(declare-fun m!11603 () Bool)

(assert (=> bs!2066 m!11603))

(assert (=> (and start!1720 (= lambda!2017 f!585) b!8695) d!6845))

(declare-fun b_lambda!4381 () Bool)

(assert (= b_lambda!4361 (or (and b!8672 (= lambda!2019 (evidence!133 that!211))) (and b!8674 b_free!821 (= (evidence!133 thiss!839) (evidence!133 that!211))) (and b!8677 b_free!827) b_lambda!4381)))

(declare-fun bs!2067 () Bool)

(declare-fun d!6847 () Bool)

(assert (= bs!2067 (and d!6847 b!8672)))

(assert (=> bs!2067 (= (dynLambda!243 lambda!2019) trivial!1)))

(assert (=> (and b!8672 (= lambda!2019 (evidence!133 that!211)) b!8705) d!6847))

(push 1)

(assert b_and!3203)

(assert b_and!3193)

(assert (not b_next!1853))

(assert (not b_lambda!4337))

(assert (not b_next!1875))

(assert (not b_lambda!4367))

(assert (not bs!2065))

(assert (not b_lambda!4375))

(assert (not bs!2060))

(assert (not b!8701))

(assert (not bs!2062))

(assert (not b_lambda!4377))

(assert (not b_next!1877))

(assert (not b_next!1843))

(assert (not b_lambda!4363))

(assert (not b_lambda!4341))

(assert (not bs!2059))

(assert b_and!3163)

(assert (not bs!2057))

(assert (not b_next!1879))

(assert (not bs!2054))

(assert (not bs!2055))

(assert (not b_lambda!4365))

(assert (not b_lambda!4379))

(assert (not bs!2066))

(assert (not bs!2064))

(assert b_and!3201)

(assert (not bs!2063))

(assert (not b_lambda!4339))

(assert (not b_lambda!4381))

(assert (not bs!2061))

(assert (not bs!2053))

(assert (not d!6809))

(assert (not bs!2052))

(assert (not b_next!1873))

(assert (not b_lambda!4373))

(assert b_and!3197)

(assert (not b!8695))

(assert (not b_lambda!4371))

(assert b_and!3199)

(assert (not b_lambda!4369))

(assert (not bs!2058))

(assert (not b_next!1855))

(assert b_and!3195)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3203)

(assert b_and!3193)

(assert (not b_next!1853))

(assert (not b_next!1875))

(assert (not b_next!1877))

(assert (not b_next!1843))

(assert b_and!3163)

(assert (not b_next!1879))

(assert b_and!3201)

(assert (not b_next!1873))

(assert b_and!3197)

(assert b_and!3199)

(assert (not b_next!1855))

(assert b_and!3195)

(check-sat)

(pop 1)

