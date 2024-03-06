; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1730 () Bool)

(assert start!1730)

(declare-fun b_free!829 () Bool)

(declare-fun b_next!1881 () Bool)

(assert (=> start!1730 (= b_free!829 (not b_next!1881))))

(declare-fun tp!1384 () Bool)

(declare-fun b_and!3205 () Bool)

(assert (=> start!1730 (= tp!1384 b_and!3205)))

(declare-fun b_free!831 () Bool)

(declare-fun b_next!1883 () Bool)

(assert (=> start!1730 (= b_free!831 (not b_next!1883))))

(declare-fun tp!1383 () Bool)

(declare-fun b_and!3207 () Bool)

(assert (=> start!1730 (= tp!1383 b_and!3207)))

(declare-fun b!8723 () Bool)

(declare-fun b_free!833 () Bool)

(declare-fun b_next!1885 () Bool)

(assert (=> b!8723 (= b_free!833 (not b_next!1885))))

(declare-fun tp!1381 () Bool)

(declare-fun b_and!3209 () Bool)

(assert (=> b!8723 (= tp!1381 b_and!3209)))

(declare-fun b_free!835 () Bool)

(declare-fun b_next!1887 () Bool)

(assert (=> b!8723 (= b_free!835 (not b_next!1887))))

(declare-fun tp!1380 () Bool)

(declare-fun b_and!3211 () Bool)

(assert (=> b!8723 (= tp!1380 b_and!3211)))

(declare-fun b_free!837 () Bool)

(declare-fun b_next!1889 () Bool)

(assert (=> b!8723 (= b_free!837 (not b_next!1889))))

(declare-fun tp!1382 () Bool)

(declare-fun b_and!3213 () Bool)

(assert (=> b!8723 (= tp!1382 b_and!3213)))

(declare-fun b!8726 () Bool)

(declare-fun b_free!839 () Bool)

(declare-fun b_next!1891 () Bool)

(assert (=> b!8726 (= b_free!839 (not b_next!1891))))

(declare-fun tp!1378 () Bool)

(declare-fun b_and!3215 () Bool)

(assert (=> b!8726 (= tp!1378 b_and!3215)))

(declare-fun b_free!841 () Bool)

(declare-fun b_next!1893 () Bool)

(assert (=> b!8726 (= b_free!841 (not b_next!1893))))

(declare-fun tp!1379 () Bool)

(declare-fun b_and!3217 () Bool)

(assert (=> b!8726 (= tp!1379 b_and!3217)))

(declare-fun f!585 () Int)

(declare-fun lambda!2041 () Int)

(declare-fun b_next!1895 () Bool)

(assert (=> start!1730 (= b_next!1881 (or (and start!1730 (= lambda!2041 f!585)) b_next!1895))))

(declare-fun b!8729 () Bool)

(assert (=> b!8729 true))

(declare-fun order!103 () Int)

(declare-fun order!101 () Int)

(declare-fun lambda!2042 () Int)

(declare-fun dynLambda!246 (Int Int) Int)

(declare-fun dynLambda!247 (Int Int) Int)

(assert (=> b!8729 (< (dynLambda!246 order!101 f!585) (dynLambda!247 order!103 lambda!2042))))

(assert (=> b!8729 true))

(declare-datatypes () ((Balance!169 (Balance!170 (extraOpen!125 Int) (extraClose!125 Int)))))

(declare-datatypes () ((EqEvidence!134 (EqEvidence!135 (x!4769 Int) (y!529 Int) (evidence!134 Int)))))

(declare-fun thiss!838 () EqEvidence!134)

(declare-fun b_next!1897 () Bool)

(assert (=> b!8723 (= b_next!1885 (or (and b!8729 (= lambda!2042 (x!4769 thiss!838))) b_next!1897))))

(declare-fun b_next!1899 () Bool)

(assert (=> b!8723 (= b_next!1887 (or (and b!8729 (= lambda!2042 (y!529 thiss!838))) b_next!1899))))

(declare-datatypes () ((EqProof!62 (EqProof!63 (x!4770 Int) (y!530 Int)))))

(declare-fun thiss!844 () EqProof!62)

(declare-fun b_next!1901 () Bool)

(assert (=> b!8726 (= b_next!1891 (or (and b!8729 (= lambda!2042 (x!4770 thiss!844))) b_next!1901))))

(declare-fun b_next!1903 () Bool)

(assert (=> b!8726 (= b_next!1893 (or (and b!8729 (= lambda!2042 (y!530 thiss!844))) b_next!1903))))

(declare-fun lambda!2043 () Int)

(assert (=> b!8729 (not (= lambda!2043 lambda!2042))))

(assert (=> b!8729 true))

(declare-fun dynLambda!248 (Int) Balance!169)

(assert (=> (and b!8723 b!8729 (= (dynLambda!248 lambda!2043) (dynLambda!248 (x!4769 thiss!838)))) (= lambda!2043 (x!4769 thiss!838))))

(assert (=> (and b!8723 b!8729 (= (dynLambda!248 lambda!2043) (dynLambda!248 (y!529 thiss!838)))) (= lambda!2043 (y!529 thiss!838))))

(assert (=> (and b!8726 b!8729 (= (dynLambda!248 lambda!2043) (dynLambda!248 (x!4770 thiss!844)))) (= lambda!2043 (x!4770 thiss!844))))

(assert (=> (and b!8726 b!8729 (= (dynLambda!248 lambda!2043) (dynLambda!248 (y!530 thiss!844)))) (= lambda!2043 (y!530 thiss!844))))

(declare-fun b_next!1905 () Bool)

(assert (=> b!8723 (= b_next!1897 (or (and b!8729 (= lambda!2043 (x!4769 thiss!838))) b_next!1905))))

(declare-fun b_next!1907 () Bool)

(assert (=> b!8723 (= b_next!1899 (or (and b!8729 (= lambda!2043 (y!529 thiss!838))) b_next!1907))))

(declare-fun b_next!1909 () Bool)

(assert (=> b!8726 (= b_next!1901 (or (and b!8729 (= lambda!2043 (x!4770 thiss!844))) b_next!1909))))

(declare-fun b_next!1911 () Bool)

(assert (=> b!8726 (= b_next!1903 (or (and b!8729 (= lambda!2043 (y!530 thiss!844))) b_next!1911))))

(declare-fun m!11605 () Bool)

(assert (=> b!8729 m!11605))

(declare-fun lambda!2044 () Int)

(declare-fun proof!234 () Int)

(declare-fun dynLambda!249 (Int) Bool)

(assert (=> (and start!1730 b!8729 (= (dynLambda!249 lambda!2044) (dynLambda!249 proof!234))) (= lambda!2044 proof!234)))

(assert (=> (and b!8723 b!8729 (= (dynLambda!249 lambda!2044) (dynLambda!249 (evidence!134 thiss!838)))) (= lambda!2044 (evidence!134 thiss!838))))

(declare-fun b_next!1913 () Bool)

(assert (=> start!1730 (= b_next!1883 (or (and b!8729 (= lambda!2044 proof!234)) b_next!1913))))

(declare-fun b_next!1915 () Bool)

(assert (=> b!8723 (= b_next!1889 (or (and b!8729 (= lambda!2044 (evidence!134 thiss!838))) b_next!1915))))

(declare-fun bs!2069 () Bool)

(declare-fun b!8727 () Bool)

(assert (= bs!2069 (and b!8727 b!8729)))

(declare-fun lambda!2045 () Int)

(assert (=> bs!2069 (not (= lambda!2045 lambda!2042))))

(assert (=> bs!2069 (not (= lambda!2045 lambda!2043))))

(assert (=> b!8727 true))

(assert (=> b!8727 (< (dynLambda!246 order!101 f!585) (dynLambda!247 order!103 lambda!2045))))

(assert (=> b!8727 true))

(declare-fun b_next!1917 () Bool)

(assert (=> b!8723 (= b_next!1905 (or (and b!8727 (= lambda!2045 (x!4769 thiss!838))) b_next!1917))))

(declare-fun b_next!1919 () Bool)

(assert (=> b!8723 (= b_next!1907 (or (and b!8727 (= lambda!2045 (y!529 thiss!838))) b_next!1919))))

(declare-fun b_next!1921 () Bool)

(assert (=> b!8726 (= b_next!1909 (or (and b!8727 (= lambda!2045 (x!4770 thiss!844))) b_next!1921))))

(declare-fun b_next!1923 () Bool)

(assert (=> b!8726 (= b_next!1911 (or (and b!8727 (= lambda!2045 (y!530 thiss!844))) b_next!1923))))

(declare-fun b!8722 () Bool)

(declare-fun res!2720 () Bool)

(declare-fun e!5063 () Bool)

(assert (=> b!8722 (=> (not res!2720) (not e!5063))))

(declare-datatypes () ((ProofOps!116 (ProofOps!117 (prop!172 Bool)))))

(declare-fun thiss!829 () ProofOps!116)

(declare-datatypes () ((Tree!47 (Branch!38 (left!391 Tree!47) (right!394 Tree!47)) (Leaf!120 (value!1289 Balance!169)))))

(declare-fun tree!25 () Tree!47)

(declare-fun fold!23 (Tree!47 Int) Balance!169)

(declare-datatypes () ((List!201 (Nil!199) (Cons!198 (head!416 Balance!169) (tail!428 List!201)))))

(declare-fun foldRight1!54 (List!201 Int) Balance!169)

(declare-fun toList!47 (Tree!47) List!201)

(assert (=> b!8722 (= res!2720 (= thiss!829 (ProofOps!117 (= (fold!23 tree!25 f!585) (foldRight1!54 (toList!47 tree!25) f!585)))))))

(declare-fun e!5062 () Bool)

(assert (=> b!8723 (= e!5062 (and tp!1381 tp!1380 tp!1382))))

(declare-fun b!8724 () Bool)

(declare-fun res!2718 () Bool)

(assert (=> b!8724 (=> (not res!2718) (not e!5063))))

(assert (=> b!8724 (= res!2718 (is-Leaf!120 tree!25))))

(declare-fun res!2719 () Bool)

(assert (=> start!1730 (=> (not res!2719) (not e!5063))))

(assert (=> start!1730 (= res!2719 (= f!585 lambda!2041))))

(assert (=> start!1730 e!5063))

(assert (=> start!1730 true))

(assert (=> start!1730 tp!1384))

(declare-fun inv!302 (EqEvidence!134) Bool)

(assert (=> start!1730 (and (inv!302 thiss!838) e!5062)))

(assert (=> start!1730 tp!1383))

(declare-fun e!5064 () Bool)

(declare-fun inv!303 (EqProof!62) Bool)

(assert (=> start!1730 (and (inv!303 thiss!844) e!5064)))

(declare-fun b!8725 () Bool)

(assert (=> b!8725 (= e!5063 (not (dynLambda!249 proof!234)))))

(assert (=> b!8726 (= e!5064 (and tp!1378 tp!1379))))

(declare-fun res!2722 () Bool)

(assert (=> b!8727 (=> (not res!2722) (not e!5063))))

(assert (=> b!8727 (= res!2722 (= thiss!844 (EqProof!63 lambda!2045 lambda!2045)))))

(declare-fun b!8728 () Bool)

(declare-fun res!2717 () Bool)

(assert (=> b!8728 (=> (not res!2717) (not e!5063))))

(assert (=> b!8728 (= res!2717 (= proof!234 lambda!2044))))

(declare-fun res!2721 () Bool)

(assert (=> b!8729 (=> (not res!2721) (not e!5063))))

(assert (=> b!8729 (= res!2721 (= thiss!838 (EqEvidence!135 lambda!2042 lambda!2043 lambda!2044)))))

(assert (= (and start!1730 res!2719) b!8722))

(assert (= (and b!8722 res!2720) b!8724))

(assert (= (and b!8724 res!2718) b!8729))

(assert (= (and b!8729 res!2721) b!8727))

(assert (= (and b!8727 res!2722) b!8728))

(assert (= (and b!8728 res!2717) b!8725))

(assert (= start!1730 b!8723))

(assert (= start!1730 b!8726))

(declare-fun b_lambda!4383 () Bool)

(assert (=> (not b_lambda!4383) (not b!8725)))

(declare-fun t!2095 () Bool)

(declare-fun tb!1755 () Bool)

(assert (=> (and start!1730 (= proof!234 proof!234) t!2095) tb!1755))

(declare-fun result!1795 () Bool)

(assert (=> tb!1755 (= result!1795 true)))

(assert (=> b!8725 t!2095))

(declare-fun b_and!3219 () Bool)

(assert (= b_and!3207 (and (=> t!2095 result!1795) b_and!3219)))

(declare-fun t!2097 () Bool)

(declare-fun tb!1757 () Bool)

(assert (=> (and b!8723 (= (evidence!134 thiss!838) proof!234) t!2097) tb!1757))

(declare-fun result!1797 () Bool)

(assert (=> tb!1757 (= result!1797 true)))

(assert (=> b!8725 t!2097))

(declare-fun b_and!3221 () Bool)

(assert (= b_and!3213 (and (=> t!2097 result!1797) b_and!3221)))

(declare-fun m!11607 () Bool)

(assert (=> b!8722 m!11607))

(declare-fun m!11609 () Bool)

(assert (=> b!8722 m!11609))

(assert (=> b!8722 m!11609))

(declare-fun m!11611 () Bool)

(assert (=> b!8722 m!11611))

(declare-fun m!11613 () Bool)

(assert (=> start!1730 m!11613))

(declare-fun m!11615 () Bool)

(assert (=> start!1730 m!11615))

(declare-fun m!11617 () Bool)

(assert (=> b!8725 m!11617))

(push 1)

(assert (not b_next!1915))

(assert (not b!8729))

(assert (not b_next!1895))

(assert (not b_next!1921))

(assert (not b_next!1919))

(assert b_and!3215)

(assert b_and!3217)

(assert b_and!3221)

(assert (not b_lambda!4383))

(assert (not b_next!1917))

(assert b_and!3209)

(assert (not b!8728))

(assert b_and!3219)

(assert b_and!3211)

(assert (not b!8722))

(assert (not start!1730))

(assert b_and!3205)

(assert (not b_next!1923))

(assert (not b_next!1913))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1915))

(assert (not b_next!1895))

(assert (not b_next!1921))

(assert (not b_next!1919))

(assert b_and!3215)

(assert b_and!3217)

(assert b_and!3221)

(assert (not b_next!1917))

(assert b_and!3209)

(assert b_and!3219)

(assert b_and!3211)

(assert b_and!3205)

(assert (not b_next!1923))

(assert (not b_next!1913))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4385 () Bool)

(assert (= b_lambda!4383 (or (and b!8729 (= lambda!2044 proof!234)) (and start!1730 b_free!831) (and b!8723 b_free!837 (= (evidence!134 thiss!838) proof!234)) b_lambda!4385)))

(declare-fun bs!2070 () Bool)

(declare-fun d!6849 () Bool)

(assert (= bs!2070 (and d!6849 b!8729)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2070 (= (dynLambda!249 lambda!2044) trivial!1)))

(assert (=> (and b!8729 (= lambda!2044 proof!234) b!8725) d!6849))

(push 1)

(assert (not b_next!1915))

(assert (not b!8729))

(assert (not b_next!1895))

(assert (not b_lambda!4385))

(assert (not b_next!1921))

(assert (not b_next!1919))

(assert b_and!3215)

(assert b_and!3217)

(assert b_and!3221)

(assert (not b_next!1917))

(assert b_and!3209)

(assert (not b!8728))

(assert b_and!3219)

(assert b_and!3211)

(assert (not b!8722))

(assert (not start!1730))

(assert b_and!3205)

(assert (not b_next!1923))

(assert (not b_next!1913))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1915))

(assert (not b_next!1895))

(assert (not b_next!1921))

(assert (not b_next!1919))

(assert b_and!3215)

(assert b_and!3217)

(assert b_and!3221)

(assert (not b_next!1917))

(assert b_and!3209)

(assert b_and!3219)

(assert b_and!3211)

(assert b_and!3205)

(assert (not b_next!1923))

(assert (not b_next!1913))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6851 () Bool)

(assert (=> d!6851 (= trivial!1 true)))

(assert (=> b!8729 d!6851))

(declare-fun d!6853 () Bool)

(declare-fun res!2725 () Bool)

(declare-fun e!5067 () Bool)

(assert (=> d!6853 (=> (not res!2725) (not e!5067))))

(assert (=> d!6853 (= res!2725 (= (dynLambda!248 (x!4769 thiss!838)) (dynLambda!248 (y!529 thiss!838))))))

(assert (=> d!6853 (= (inv!302 thiss!838) e!5067)))

(declare-fun b!8736 () Bool)

(assert (=> b!8736 (= e!5067 (dynLambda!249 (evidence!134 thiss!838)))))

(assert (= (and d!6853 res!2725) b!8736))

(declare-fun b_lambda!4387 () Bool)

(assert (=> (not b_lambda!4387) (not d!6853)))

(declare-fun t!2099 () Bool)

(declare-fun tb!1759 () Bool)

(assert (=> (and b!8723 (= (x!4769 thiss!838) (x!4769 thiss!838)) t!2099) tb!1759))

(declare-fun result!1799 () Bool)

(assert (=> tb!1759 (= result!1799 true)))

(assert (=> d!6853 t!2099))

(declare-fun b_and!3223 () Bool)

(assert (= b_and!3209 (and (=> t!2099 result!1799) b_and!3223)))

(declare-fun t!2101 () Bool)

(declare-fun tb!1761 () Bool)

(assert (=> (and b!8723 (= (y!529 thiss!838) (x!4769 thiss!838)) t!2101) tb!1761))

(declare-fun result!1801 () Bool)

(assert (=> tb!1761 (= result!1801 true)))

(assert (=> d!6853 t!2101))

(declare-fun b_and!3225 () Bool)

(assert (= b_and!3211 (and (=> t!2101 result!1801) b_and!3225)))

(declare-fun tb!1763 () Bool)

(declare-fun t!2103 () Bool)

(assert (=> (and b!8726 (= (x!4770 thiss!844) (x!4769 thiss!838)) t!2103) tb!1763))

(declare-fun result!1803 () Bool)

(assert (=> tb!1763 (= result!1803 true)))

(assert (=> d!6853 t!2103))

(declare-fun b_and!3227 () Bool)

(assert (= b_and!3215 (and (=> t!2103 result!1803) b_and!3227)))

(declare-fun tb!1765 () Bool)

(declare-fun t!2105 () Bool)

(assert (=> (and b!8726 (= (y!530 thiss!844) (x!4769 thiss!838)) t!2105) tb!1765))

(declare-fun result!1805 () Bool)

(assert (=> tb!1765 (= result!1805 true)))

(assert (=> d!6853 t!2105))

(declare-fun b_and!3229 () Bool)

(assert (= b_and!3217 (and (=> t!2105 result!1805) b_and!3229)))

(declare-fun b_lambda!4389 () Bool)

(assert (=> (not b_lambda!4389) (not d!6853)))

(declare-fun t!2107 () Bool)

(declare-fun tb!1767 () Bool)

(assert (=> (and b!8723 (= (x!4769 thiss!838) (y!529 thiss!838)) t!2107) tb!1767))

(declare-fun result!1807 () Bool)

(assert (=> tb!1767 (= result!1807 true)))

(assert (=> d!6853 t!2107))

(declare-fun b_and!3231 () Bool)

(assert (= b_and!3223 (and (=> t!2107 result!1807) b_and!3231)))

(declare-fun t!2109 () Bool)

(declare-fun tb!1769 () Bool)

(assert (=> (and b!8723 (= (y!529 thiss!838) (y!529 thiss!838)) t!2109) tb!1769))

(declare-fun result!1809 () Bool)

(assert (=> tb!1769 (= result!1809 true)))

(assert (=> d!6853 t!2109))

(declare-fun b_and!3233 () Bool)

(assert (= b_and!3225 (and (=> t!2109 result!1809) b_and!3233)))

(declare-fun t!2111 () Bool)

(declare-fun tb!1771 () Bool)

(assert (=> (and b!8726 (= (x!4770 thiss!844) (y!529 thiss!838)) t!2111) tb!1771))

(declare-fun result!1811 () Bool)

(assert (=> tb!1771 (= result!1811 true)))

(assert (=> d!6853 t!2111))

(declare-fun b_and!3235 () Bool)

(assert (= b_and!3227 (and (=> t!2111 result!1811) b_and!3235)))

(declare-fun t!2113 () Bool)

(declare-fun tb!1773 () Bool)

(assert (=> (and b!8726 (= (y!530 thiss!844) (y!529 thiss!838)) t!2113) tb!1773))

(declare-fun result!1813 () Bool)

(assert (=> tb!1773 (= result!1813 true)))

(assert (=> d!6853 t!2113))

(declare-fun b_and!3237 () Bool)

(assert (= b_and!3229 (and (=> t!2113 result!1813) b_and!3237)))

(declare-fun b_lambda!4391 () Bool)

(assert (=> (not b_lambda!4391) (not b!8736)))

(declare-fun t!2115 () Bool)

(declare-fun tb!1775 () Bool)

(assert (=> (and start!1730 (= proof!234 (evidence!134 thiss!838)) t!2115) tb!1775))

(declare-fun result!1815 () Bool)

(assert (=> tb!1775 (= result!1815 true)))

(assert (=> b!8736 t!2115))

(declare-fun b_and!3239 () Bool)

(assert (= b_and!3219 (and (=> t!2115 result!1815) b_and!3239)))

(declare-fun t!2117 () Bool)

(declare-fun tb!1777 () Bool)

(assert (=> (and b!8723 (= (evidence!134 thiss!838) (evidence!134 thiss!838)) t!2117) tb!1777))

(declare-fun result!1817 () Bool)

(assert (=> tb!1777 (= result!1817 true)))

(assert (=> b!8736 t!2117))

(declare-fun b_and!3241 () Bool)

(assert (= b_and!3221 (and (=> t!2117 result!1817) b_and!3241)))

(declare-fun m!11619 () Bool)

(assert (=> d!6853 m!11619))

(declare-fun m!11621 () Bool)

(assert (=> d!6853 m!11621))

(declare-fun m!11623 () Bool)

(assert (=> b!8736 m!11623))

(assert (=> start!1730 d!6853))

(declare-fun d!6855 () Bool)

(assert (=> d!6855 (= (inv!303 thiss!844) (= (dynLambda!248 (x!4770 thiss!844)) (dynLambda!248 (y!530 thiss!844))))))

(declare-fun b_lambda!4393 () Bool)

(assert (=> (not b_lambda!4393) (not d!6855)))

(declare-fun t!2119 () Bool)

(declare-fun tb!1779 () Bool)

(assert (=> (and b!8723 (= (x!4769 thiss!838) (x!4770 thiss!844)) t!2119) tb!1779))

(declare-fun result!1819 () Bool)

(assert (=> tb!1779 (= result!1819 true)))

(assert (=> d!6855 t!2119))

(declare-fun b_and!3243 () Bool)

(assert (= b_and!3231 (and (=> t!2119 result!1819) b_and!3243)))

(declare-fun tb!1781 () Bool)

(declare-fun t!2121 () Bool)

(assert (=> (and b!8723 (= (y!529 thiss!838) (x!4770 thiss!844)) t!2121) tb!1781))

(declare-fun result!1821 () Bool)

(assert (=> tb!1781 (= result!1821 true)))

(assert (=> d!6855 t!2121))

(declare-fun b_and!3245 () Bool)

(assert (= b_and!3233 (and (=> t!2121 result!1821) b_and!3245)))

(declare-fun t!2123 () Bool)

(declare-fun tb!1783 () Bool)

(assert (=> (and b!8726 (= (x!4770 thiss!844) (x!4770 thiss!844)) t!2123) tb!1783))

(declare-fun result!1823 () Bool)

(assert (=> tb!1783 (= result!1823 true)))

(assert (=> d!6855 t!2123))

(declare-fun b_and!3247 () Bool)

(assert (= b_and!3235 (and (=> t!2123 result!1823) b_and!3247)))

(declare-fun t!2125 () Bool)

(declare-fun tb!1785 () Bool)

(assert (=> (and b!8726 (= (y!530 thiss!844) (x!4770 thiss!844)) t!2125) tb!1785))

(declare-fun result!1825 () Bool)

(assert (=> tb!1785 (= result!1825 true)))

(assert (=> d!6855 t!2125))

(declare-fun b_and!3249 () Bool)

(assert (= b_and!3237 (and (=> t!2125 result!1825) b_and!3249)))

(declare-fun b_lambda!4395 () Bool)

(assert (=> (not b_lambda!4395) (not d!6855)))

(declare-fun t!2127 () Bool)

(declare-fun tb!1787 () Bool)

(assert (=> (and b!8723 (= (x!4769 thiss!838) (y!530 thiss!844)) t!2127) tb!1787))

(declare-fun result!1827 () Bool)

(assert (=> tb!1787 (= result!1827 true)))

(assert (=> d!6855 t!2127))

(declare-fun b_and!3251 () Bool)

(assert (= b_and!3243 (and (=> t!2127 result!1827) b_and!3251)))

(declare-fun t!2129 () Bool)

(declare-fun tb!1789 () Bool)

(assert (=> (and b!8723 (= (y!529 thiss!838) (y!530 thiss!844)) t!2129) tb!1789))

(declare-fun result!1829 () Bool)

(assert (=> tb!1789 (= result!1829 true)))

(assert (=> d!6855 t!2129))

(declare-fun b_and!3253 () Bool)

(assert (= b_and!3245 (and (=> t!2129 result!1829) b_and!3253)))

(declare-fun t!2131 () Bool)

(declare-fun tb!1791 () Bool)

(assert (=> (and b!8726 (= (x!4770 thiss!844) (y!530 thiss!844)) t!2131) tb!1791))

(declare-fun result!1831 () Bool)

(assert (=> tb!1791 (= result!1831 true)))

(assert (=> d!6855 t!2131))

(declare-fun b_and!3255 () Bool)

(assert (= b_and!3247 (and (=> t!2131 result!1831) b_and!3255)))

(declare-fun t!2133 () Bool)

(declare-fun tb!1793 () Bool)

(assert (=> (and b!8726 (= (y!530 thiss!844) (y!530 thiss!844)) t!2133) tb!1793))

(declare-fun result!1833 () Bool)

(assert (=> tb!1793 (= result!1833 true)))

(assert (=> d!6855 t!2133))

(declare-fun b_and!3257 () Bool)

(assert (= b_and!3249 (and (=> t!2133 result!1833) b_and!3257)))

(declare-fun m!11625 () Bool)

(assert (=> d!6855 m!11625))

(declare-fun m!11627 () Bool)

(assert (=> d!6855 m!11627))

(assert (=> start!1730 d!6855))

(assert (=> b!8728 d!6851))

(declare-fun bs!2071 () Bool)

(declare-fun b!8742 () Bool)

(assert (= bs!2071 (and b!8742 b!8729)))

(declare-fun lambda!2050 () Int)

(assert (=> bs!2071 (= (= (left!391 tree!25) tree!25) (= lambda!2050 lambda!2042))))

(assert (=> bs!2071 (not (= lambda!2050 lambda!2043))))

(declare-fun bs!2072 () Bool)

(assert (= bs!2072 (and b!8742 b!8727)))

(assert (=> bs!2072 (not (= lambda!2050 lambda!2045))))

(assert (=> b!8742 true))

(assert (=> b!8742 (< (dynLambda!246 order!101 f!585) (dynLambda!247 order!103 lambda!2050))))

(assert (=> b!8742 true))

(declare-fun b_next!1925 () Bool)

(assert (=> b!8723 (= b_next!1917 (or (and b!8742 (= lambda!2050 (x!4769 thiss!838))) b_next!1925))))

(declare-fun b_next!1927 () Bool)

(assert (=> b!8723 (= b_next!1919 (or (and b!8742 (= lambda!2050 (y!529 thiss!838))) b_next!1927))))

(declare-fun b_next!1929 () Bool)

(assert (=> b!8726 (= b_next!1921 (or (and b!8742 (= lambda!2050 (x!4770 thiss!844))) b_next!1929))))

(declare-fun b_next!1931 () Bool)

(assert (=> b!8726 (= b_next!1923 (or (and b!8742 (= lambda!2050 (y!530 thiss!844))) b_next!1931))))

(declare-fun lambda!2051 () Int)

(assert (=> bs!2071 (= (= (right!394 tree!25) tree!25) (= lambda!2051 lambda!2042))))

(assert (=> bs!2071 (not (= lambda!2051 lambda!2043))))

(assert (=> bs!2072 (not (= lambda!2051 lambda!2045))))

(assert (=> b!8742 (= (= (right!394 tree!25) (left!391 tree!25)) (= lambda!2051 lambda!2050))))

(assert (=> b!8742 true))

(assert (=> b!8742 (< (dynLambda!246 order!101 f!585) (dynLambda!247 order!103 lambda!2051))))

(assert (=> b!8742 true))

(declare-fun b_next!1933 () Bool)

(assert (=> b!8723 (= b_next!1925 (or (and b!8742 (= lambda!2051 (x!4769 thiss!838))) b_next!1933))))

(declare-fun b_next!1935 () Bool)

(assert (=> b!8723 (= b_next!1927 (or (and b!8742 (= lambda!2051 (y!529 thiss!838))) b_next!1935))))

(declare-fun b_next!1937 () Bool)

(assert (=> b!8726 (= b_next!1929 (or (and b!8742 (= lambda!2051 (x!4770 thiss!844))) b_next!1937))))

(declare-fun b_next!1939 () Bool)

(assert (=> b!8726 (= b_next!1931 (or (and b!8742 (= lambda!2051 (y!530 thiss!844))) b_next!1939))))

(declare-fun e!5086 () Balance!169)

(declare-datatypes () ((tuple2!64 (tuple2!65 (_1!32 Balance!169) (_2!32 Balance!169)))))

(declare-fun lt!1571 () tuple2!64)

(declare-fun dynLambda!250 (Int Balance!169 Balance!169) Balance!169)

(assert (=> b!8742 (= e!5086 (dynLambda!250 f!585 (_1!32 lt!1571) (_2!32 lt!1571)))))

(assert (=> b!8742 (= lt!1571 (tuple2!65 (dynLambda!248 lambda!2050) (dynLambda!248 lambda!2051)))))

(declare-fun d!6857 () Bool)

(declare-fun c!2938 () Bool)

(assert (=> d!6857 (= c!2938 (is-Leaf!120 tree!25))))

(assert (=> d!6857 (= (fold!23 tree!25 f!585) e!5086)))

(declare-fun b!8741 () Bool)

(assert (=> b!8741 (= e!5086 (value!1289 tree!25))))

(assert (= (and d!6857 c!2938) b!8741))

(assert (= (and d!6857 (not c!2938)) b!8742))

(declare-fun b_lambda!4397 () Bool)

(assert (=> (not b_lambda!4397) (not b!8742)))

(declare-fun t!2135 () Bool)

(declare-fun tb!1795 () Bool)

(assert (=> (and start!1730 (= f!585 f!585) t!2135) tb!1795))

(declare-fun result!1835 () Bool)

(assert (=> tb!1795 (= result!1835 true)))

(assert (=> b!8742 t!2135))

(declare-fun b_and!3259 () Bool)

(assert (= b_and!3205 (and (=> t!2135 result!1835) b_and!3259)))

(declare-fun b_lambda!4399 () Bool)

(assert (=> (not b_lambda!4399) (not b!8742)))

(declare-fun b_lambda!4401 () Bool)

(assert (=> (not b_lambda!4401) (not b!8742)))

(declare-fun m!11629 () Bool)

(assert (=> b!8742 m!11629))

(declare-fun m!11631 () Bool)

(assert (=> b!8742 m!11631))

(declare-fun m!11633 () Bool)

(assert (=> b!8742 m!11633))

(assert (=> b!8722 d!6857))

(declare-fun d!6859 () Bool)

(declare-fun c!2941 () Bool)

(assert (=> d!6859 (= c!2941 (and (is-Cons!198 (toList!47 tree!25)) (is-Nil!199 (tail!428 (toList!47 tree!25)))))))

(declare-fun e!5089 () Balance!169)

(assert (=> d!6859 (= (foldRight1!54 (toList!47 tree!25) f!585) e!5089)))

(declare-fun b!8747 () Bool)

(assert (=> b!8747 (= e!5089 (head!416 (toList!47 tree!25)))))

(declare-fun b!8748 () Bool)

(assert (=> b!8748 (= e!5089 (dynLambda!250 f!585 (head!416 (toList!47 tree!25)) (foldRight1!54 (tail!428 (toList!47 tree!25)) f!585)))))

(assert (= (and d!6859 c!2941) b!8747))

(assert (= (and d!6859 (not c!2941)) b!8748))

(declare-fun b_lambda!4403 () Bool)

(assert (=> (not b_lambda!4403) (not b!8748)))

(declare-fun t!2137 () Bool)

(declare-fun tb!1797 () Bool)

(assert (=> (and start!1730 (= f!585 f!585) t!2137) tb!1797))

(declare-fun result!1837 () Bool)

(assert (=> tb!1797 (= result!1837 true)))

(assert (=> b!8748 t!2137))

(declare-fun b_and!3261 () Bool)

(assert (= b_and!3259 (and (=> t!2137 result!1837) b_and!3261)))

(declare-fun m!11635 () Bool)

(assert (=> b!8748 m!11635))

(assert (=> b!8748 m!11635))

(declare-fun m!11637 () Bool)

(assert (=> b!8748 m!11637))

(assert (=> b!8722 d!6859))

(declare-fun d!6861 () Bool)

(declare-fun lt!1574 () List!201)

(declare-fun isEmpty!165 (List!201) Bool)

(assert (=> d!6861 (not (isEmpty!165 lt!1574))))

(declare-fun e!5092 () List!201)

(assert (=> d!6861 (= lt!1574 e!5092)))

(declare-fun c!2944 () Bool)

(assert (=> d!6861 (= c!2944 (is-Leaf!120 tree!25))))

(assert (=> d!6861 (= (toList!47 tree!25) lt!1574)))

(declare-fun b!8753 () Bool)

(assert (=> b!8753 (= e!5092 (Cons!198 (value!1289 tree!25) Nil!199))))

(declare-fun b!8754 () Bool)

(declare-fun append!86 (List!201 List!201) List!201)

(assert (=> b!8754 (= e!5092 (append!86 (toList!47 (left!391 tree!25)) (toList!47 (right!394 tree!25))))))

(assert (= (and d!6861 c!2944) b!8753))

(assert (= (and d!6861 (not c!2944)) b!8754))

(declare-fun m!11639 () Bool)

(assert (=> d!6861 m!11639))

(declare-fun m!11641 () Bool)

(assert (=> b!8754 m!11641))

(declare-fun m!11643 () Bool)

(assert (=> b!8754 m!11643))

(assert (=> b!8754 m!11641))

(assert (=> b!8754 m!11643))

(declare-fun m!11645 () Bool)

(assert (=> b!8754 m!11645))

(assert (=> b!8722 d!6861))

(declare-fun b_lambda!4405 () Bool)

(assert (= b_lambda!4401 (or b!8742 b_lambda!4405)))

(declare-fun bs!2073 () Bool)

(declare-fun d!6863 () Bool)

(assert (= bs!2073 (and d!6863 b!8742)))

(assert (=> bs!2073 (= (dynLambda!248 lambda!2051) (fold!23 (right!394 tree!25) f!585))))

(declare-fun m!11647 () Bool)

(assert (=> bs!2073 m!11647))

(assert (=> b!8742 d!6863))

(declare-fun b_lambda!4407 () Bool)

(assert (= b_lambda!4389 (or (and b!8729 (= lambda!2043 (y!529 thiss!838))) (and b!8729 (= lambda!2042 (y!529 thiss!838))) (and b!8727 (= lambda!2045 (y!529 thiss!838))) (and b!8723 b_free!833 (= (x!4769 thiss!838) (y!529 thiss!838))) (and b!8742 (= lambda!2051 (y!529 thiss!838))) (and b!8726 b_free!841 (= (y!530 thiss!844) (y!529 thiss!838))) (and b!8723 b_free!835) (and b!8726 b_free!839 (= (x!4770 thiss!844) (y!529 thiss!838))) (and b!8742 (= lambda!2050 (y!529 thiss!838))) b_lambda!4407)))

(declare-fun bs!2074 () Bool)

(declare-fun d!6865 () Bool)

(assert (= bs!2074 (and d!6865 b!8729)))

(assert (=> bs!2074 (= (dynLambda!248 lambda!2043) (value!1289 tree!25))))

(assert (=> (and b!8729 (= lambda!2043 (y!529 thiss!838)) d!6853) d!6865))

(declare-fun bs!2075 () Bool)

(declare-fun d!6867 () Bool)

(assert (= bs!2075 (and d!6867 b!8729)))

(assert (=> bs!2075 (= (dynLambda!248 lambda!2042) (fold!23 tree!25 f!585))))

(assert (=> bs!2075 m!11607))

(assert (=> (and b!8729 (= lambda!2042 (y!529 thiss!838)) d!6853) d!6867))

(declare-fun bs!2076 () Bool)

(declare-fun d!6869 () Bool)

(assert (= bs!2076 (and d!6869 b!8727)))

(assert (=> bs!2076 (= (dynLambda!248 lambda!2045) (foldRight1!54 (Cons!198 (value!1289 tree!25) Nil!199) f!585))))

(declare-fun m!11649 () Bool)

(assert (=> bs!2076 m!11649))

(assert (=> (and b!8727 (= lambda!2045 (y!529 thiss!838)) d!6853) d!6869))

(declare-fun bs!2077 () Bool)

(declare-fun d!6871 () Bool)

(assert (= bs!2077 (and d!6871 b!8742)))

(assert (=> bs!2077 (= (dynLambda!248 lambda!2051) (fold!23 (right!394 tree!25) f!585))))

(assert (=> bs!2077 m!11647))

(assert (=> (and b!8742 (= lambda!2051 (y!529 thiss!838)) d!6853) d!6871))

(declare-fun bs!2078 () Bool)

(declare-fun d!6873 () Bool)

(assert (= bs!2078 (and d!6873 b!8742)))

(assert (=> bs!2078 (= (dynLambda!248 lambda!2050) (fold!23 (left!391 tree!25) f!585))))

(declare-fun m!11651 () Bool)

(assert (=> bs!2078 m!11651))

(assert (=> (and b!8742 (= lambda!2050 (y!529 thiss!838)) d!6853) d!6873))

(declare-fun b_lambda!4409 () Bool)

(assert (= b_lambda!4395 (or (and b!8726 b_free!839 (= (x!4770 thiss!844) (y!530 thiss!844))) (and b!8727 (= lambda!2045 (y!530 thiss!844))) (and b!8723 b_free!835 (= (y!529 thiss!838) (y!530 thiss!844))) (and b!8742 (= lambda!2051 (y!530 thiss!844))) (and b!8729 (= lambda!2043 (y!530 thiss!844))) (and b!8729 (= lambda!2042 (y!530 thiss!844))) (and b!8726 b_free!841) (and b!8723 b_free!833 (= (x!4769 thiss!838) (y!530 thiss!844))) (and b!8742 (= lambda!2050 (y!530 thiss!844))) b_lambda!4409)))

(declare-fun bs!2079 () Bool)

(declare-fun d!6875 () Bool)

(assert (= bs!2079 (and d!6875 b!8742)))

(assert (=> bs!2079 (= (dynLambda!248 lambda!2051) (fold!23 (right!394 tree!25) f!585))))

(assert (=> bs!2079 m!11647))

(assert (=> (and b!8742 (= lambda!2051 (y!530 thiss!844)) d!6855) d!6875))

(declare-fun bs!2080 () Bool)

(declare-fun d!6877 () Bool)

(assert (= bs!2080 (and d!6877 b!8729)))

(assert (=> bs!2080 (= (dynLambda!248 lambda!2042) (fold!23 tree!25 f!585))))

(assert (=> bs!2080 m!11607))

(assert (=> (and b!8729 (= lambda!2042 (y!530 thiss!844)) d!6855) d!6877))

(declare-fun bs!2081 () Bool)

(declare-fun d!6879 () Bool)

(assert (= bs!2081 (and d!6879 b!8742)))

(assert (=> bs!2081 (= (dynLambda!248 lambda!2050) (fold!23 (left!391 tree!25) f!585))))

(assert (=> bs!2081 m!11651))

(assert (=> (and b!8742 (= lambda!2050 (y!530 thiss!844)) d!6855) d!6879))

(declare-fun bs!2082 () Bool)

(declare-fun d!6881 () Bool)

(assert (= bs!2082 (and d!6881 b!8729)))

(assert (=> bs!2082 (= (dynLambda!248 lambda!2043) (value!1289 tree!25))))

(assert (=> (and b!8729 (= lambda!2043 (y!530 thiss!844)) d!6855) d!6881))

(declare-fun bs!2083 () Bool)

(declare-fun d!6883 () Bool)

(assert (= bs!2083 (and d!6883 b!8727)))

(assert (=> bs!2083 (= (dynLambda!248 lambda!2045) (foldRight1!54 (Cons!198 (value!1289 tree!25) Nil!199) f!585))))

(assert (=> bs!2083 m!11649))

(assert (=> (and b!8727 (= lambda!2045 (y!530 thiss!844)) d!6855) d!6883))

(declare-fun b_lambda!4411 () Bool)

(assert (= b_lambda!4403 (or (and start!1730 (= lambda!2041 f!585)) (and start!1730 b_free!829) b_lambda!4411)))

(declare-fun bs!2084 () Bool)

(declare-fun d!6885 () Bool)

(assert (= bs!2084 (and d!6885 start!1730)))

(declare-fun ++!3 (Balance!169 Balance!169) Balance!169)

(assert (=> bs!2084 (= (dynLambda!250 lambda!2041 (head!416 (toList!47 tree!25)) (foldRight1!54 (tail!428 (toList!47 tree!25)) f!585)) (++!3 (head!416 (toList!47 tree!25)) (foldRight1!54 (tail!428 (toList!47 tree!25)) f!585)))))

(assert (=> bs!2084 m!11635))

(declare-fun m!11653 () Bool)

(assert (=> bs!2084 m!11653))

(assert (=> (and start!1730 (= lambda!2041 f!585) b!8748) d!6885))

(declare-fun b_lambda!4413 () Bool)

(assert (= b_lambda!4397 (or (and start!1730 (= lambda!2041 f!585)) (and start!1730 b_free!829) b_lambda!4413)))

(declare-fun bs!2085 () Bool)

(declare-fun d!6887 () Bool)

(assert (= bs!2085 (and d!6887 start!1730)))

(assert (=> bs!2085 (= (dynLambda!250 lambda!2041 (_1!32 lt!1571) (_2!32 lt!1571)) (++!3 (_1!32 lt!1571) (_2!32 lt!1571)))))

(declare-fun m!11655 () Bool)

(assert (=> bs!2085 m!11655))

(assert (=> (and start!1730 (= lambda!2041 f!585) b!8742) d!6887))

(declare-fun b_lambda!4415 () Bool)

(assert (= b_lambda!4393 (or (and b!8726 b_free!841 (= (y!530 thiss!844) (x!4770 thiss!844))) (and b!8742 (= lambda!2051 (x!4770 thiss!844))) (and b!8727 (= lambda!2045 (x!4770 thiss!844))) (and b!8723 b_free!833 (= (x!4769 thiss!838) (x!4770 thiss!844))) (and b!8726 b_free!839) (and b!8742 (= lambda!2050 (x!4770 thiss!844))) (and b!8729 (= lambda!2043 (x!4770 thiss!844))) (and b!8729 (= lambda!2042 (x!4770 thiss!844))) (and b!8723 b_free!835 (= (y!529 thiss!838) (x!4770 thiss!844))) b_lambda!4415)))

(declare-fun bs!2086 () Bool)

(declare-fun d!6889 () Bool)

(assert (= bs!2086 (and d!6889 b!8742)))

(assert (=> bs!2086 (= (dynLambda!248 lambda!2051) (fold!23 (right!394 tree!25) f!585))))

(assert (=> bs!2086 m!11647))

(assert (=> (and b!8742 (= lambda!2051 (x!4770 thiss!844)) d!6855) d!6889))

(declare-fun bs!2087 () Bool)

(declare-fun d!6891 () Bool)

(assert (= bs!2087 (and d!6891 b!8727)))

(assert (=> bs!2087 (= (dynLambda!248 lambda!2045) (foldRight1!54 (Cons!198 (value!1289 tree!25) Nil!199) f!585))))

(assert (=> bs!2087 m!11649))

(assert (=> (and b!8727 (= lambda!2045 (x!4770 thiss!844)) d!6855) d!6891))

(declare-fun bs!2088 () Bool)

(declare-fun d!6893 () Bool)

(assert (= bs!2088 (and d!6893 b!8742)))

(assert (=> bs!2088 (= (dynLambda!248 lambda!2050) (fold!23 (left!391 tree!25) f!585))))

(assert (=> bs!2088 m!11651))

(assert (=> (and b!8742 (= lambda!2050 (x!4770 thiss!844)) d!6855) d!6893))

(declare-fun bs!2089 () Bool)

(declare-fun d!6895 () Bool)

(assert (= bs!2089 (and d!6895 b!8729)))

(assert (=> bs!2089 (= (dynLambda!248 lambda!2042) (fold!23 tree!25 f!585))))

(assert (=> bs!2089 m!11607))

(assert (=> (and b!8729 (= lambda!2042 (x!4770 thiss!844)) d!6855) d!6895))

(declare-fun bs!2090 () Bool)

(declare-fun d!6897 () Bool)

(assert (= bs!2090 (and d!6897 b!8729)))

(assert (=> bs!2090 (= (dynLambda!248 lambda!2043) (value!1289 tree!25))))

(assert (=> (and b!8729 (= lambda!2043 (x!4770 thiss!844)) d!6855) d!6897))

(declare-fun b_lambda!4417 () Bool)

(assert (= b_lambda!4399 (or b!8742 b_lambda!4417)))

(declare-fun bs!2091 () Bool)

(declare-fun d!6899 () Bool)

(assert (= bs!2091 (and d!6899 b!8742)))

(assert (=> bs!2091 (= (dynLambda!248 lambda!2050) (fold!23 (left!391 tree!25) f!585))))

(assert (=> bs!2091 m!11651))

(assert (=> b!8742 d!6899))

(declare-fun b_lambda!4419 () Bool)

(assert (= b_lambda!4391 (or (and b!8729 (= lambda!2044 (evidence!134 thiss!838))) (and start!1730 b_free!831 (= proof!234 (evidence!134 thiss!838))) (and b!8723 b_free!837) b_lambda!4419)))

(declare-fun bs!2092 () Bool)

(declare-fun d!6901 () Bool)

(assert (= bs!2092 (and d!6901 b!8729)))

(assert (=> bs!2092 (= (dynLambda!249 lambda!2044) trivial!1)))

(assert (=> (and b!8729 (= lambda!2044 (evidence!134 thiss!838)) b!8736) d!6901))

(declare-fun b_lambda!4421 () Bool)

(assert (= b_lambda!4387 (or (and b!8723 b_free!833) (and b!8726 b_free!839 (= (x!4770 thiss!844) (x!4769 thiss!838))) (and b!8729 (= lambda!2042 (x!4769 thiss!838))) (and b!8742 (= lambda!2050 (x!4769 thiss!838))) (and b!8723 b_free!835 (= (y!529 thiss!838) (x!4769 thiss!838))) (and b!8742 (= lambda!2051 (x!4769 thiss!838))) (and b!8729 (= lambda!2043 (x!4769 thiss!838))) (and b!8727 (= lambda!2045 (x!4769 thiss!838))) (and b!8726 b_free!841 (= (y!530 thiss!844) (x!4769 thiss!838))) b_lambda!4421)))

(declare-fun bs!2093 () Bool)

(declare-fun d!6903 () Bool)

(assert (= bs!2093 (and d!6903 b!8742)))

(assert (=> bs!2093 (= (dynLambda!248 lambda!2051) (fold!23 (right!394 tree!25) f!585))))

(assert (=> bs!2093 m!11647))

(assert (=> (and b!8742 (= lambda!2051 (x!4769 thiss!838)) d!6853) d!6903))

(declare-fun bs!2094 () Bool)

(declare-fun d!6905 () Bool)

(assert (= bs!2094 (and d!6905 b!8742)))

(assert (=> bs!2094 (= (dynLambda!248 lambda!2050) (fold!23 (left!391 tree!25) f!585))))

(assert (=> bs!2094 m!11651))

(assert (=> (and b!8742 (= lambda!2050 (x!4769 thiss!838)) d!6853) d!6905))

(declare-fun bs!2095 () Bool)

(declare-fun d!6907 () Bool)

(assert (= bs!2095 (and d!6907 b!8729)))

(assert (=> bs!2095 (= (dynLambda!248 lambda!2042) (fold!23 tree!25 f!585))))

(assert (=> bs!2095 m!11607))

(assert (=> (and b!8729 (= lambda!2042 (x!4769 thiss!838)) d!6853) d!6907))

(declare-fun bs!2096 () Bool)

(declare-fun d!6909 () Bool)

(assert (= bs!2096 (and d!6909 b!8727)))

(assert (=> bs!2096 (= (dynLambda!248 lambda!2045) (foldRight1!54 (Cons!198 (value!1289 tree!25) Nil!199) f!585))))

(assert (=> bs!2096 m!11649))

(assert (=> (and b!8727 (= lambda!2045 (x!4769 thiss!838)) d!6853) d!6909))

(declare-fun bs!2097 () Bool)

(declare-fun d!6911 () Bool)

(assert (= bs!2097 (and d!6911 b!8729)))

(assert (=> bs!2097 (= (dynLambda!248 lambda!2043) (value!1289 tree!25))))

(assert (=> (and b!8729 (= lambda!2043 (x!4769 thiss!838)) d!6853) d!6911))

(push 1)

(assert (not bs!2095))

(assert (not b_next!1915))

(assert (not b!8754))

(assert (not bs!2081))

(assert (not b_next!1895))

(assert (not b_lambda!4385))

(assert (not bs!2091))

(assert b_and!3239)

(assert (not b_lambda!4409))

(assert (not bs!2086))

(assert (not bs!2093))

(assert (not b!8748))

(assert (not b_next!1939))

(assert (not b_lambda!4419))

(assert b_and!3261)

(assert b_and!3255)

(assert (not b_next!1935))

(assert (not b_lambda!4413))

(assert (not bs!2073))

(assert (not bs!2085))

(assert (not bs!2089))

(assert (not bs!2077))

(assert (not bs!2084))

(assert (not bs!2078))

(assert (not bs!2083))

(assert (not b_lambda!4405))

(assert (not bs!2088))

(assert (not bs!2087))

(assert (not b_lambda!4407))

(assert (not b_next!1933))

(assert b_and!3257)

(assert (not bs!2096))

(assert (not bs!2080))

(assert (not d!6861))

(assert (not bs!2094))

(assert (not b_lambda!4421))

(assert (not b_lambda!4411))

(assert (not bs!2079))

(assert (not bs!2076))

(assert b_and!3241)

(assert (not b_next!1913))

(assert (not b_lambda!4417))

(assert b_and!3251)

(assert b_and!3253)

(assert (not bs!2075))

(assert (not b_lambda!4415))

(assert (not b_next!1937))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1915))

(assert (not b_next!1895))

(assert b_and!3239)

(assert (not b_next!1939))

(assert b_and!3261)

(assert b_and!3255)

(assert (not b_next!1935))

(assert (not b_next!1933))

(assert b_and!3257)

(assert b_and!3241)

(assert (not b_next!1913))

(assert b_and!3251)

(assert b_and!3253)

(assert (not b_next!1937))

(check-sat)

(pop 1)

