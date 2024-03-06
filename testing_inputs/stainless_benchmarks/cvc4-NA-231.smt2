; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1760 () Bool)

(assert start!1760)

(declare-fun b!8874 () Bool)

(declare-fun b_free!909 () Bool)

(declare-fun b_next!2061 () Bool)

(assert (=> b!8874 (= b_free!909 (not b_next!2061))))

(declare-fun tp!1497 () Bool)

(declare-fun b_and!3395 () Bool)

(assert (=> b!8874 (= tp!1497 b_and!3395)))

(declare-fun b_free!911 () Bool)

(declare-fun b_next!2063 () Bool)

(assert (=> b!8874 (= b_free!911 (not b_next!2063))))

(declare-fun tp!1499 () Bool)

(declare-fun b_and!3397 () Bool)

(assert (=> b!8874 (= tp!1499 b_and!3397)))

(declare-fun b_free!913 () Bool)

(declare-fun b_next!2065 () Bool)

(assert (=> b!8874 (= b_free!913 (not b_next!2065))))

(declare-fun tp!1501 () Bool)

(declare-fun b_and!3399 () Bool)

(assert (=> b!8874 (= tp!1501 b_and!3399)))

(declare-fun b_free!915 () Bool)

(declare-fun b_next!2067 () Bool)

(assert (=> start!1760 (= b_free!915 (not b_next!2067))))

(declare-fun tp!1496 () Bool)

(declare-fun b_and!3401 () Bool)

(assert (=> start!1760 (= tp!1496 b_and!3401)))

(declare-fun b!8878 () Bool)

(declare-fun b_free!917 () Bool)

(declare-fun b_next!2069 () Bool)

(assert (=> b!8878 (= b_free!917 (not b_next!2069))))

(declare-fun tp!1500 () Bool)

(declare-fun b_and!3403 () Bool)

(assert (=> b!8878 (= tp!1500 b_and!3403)))

(declare-fun b_free!919 () Bool)

(declare-fun b_next!2071 () Bool)

(assert (=> b!8878 (= b_free!919 (not b_next!2071))))

(declare-fun tp!1498 () Bool)

(declare-fun b_and!3405 () Bool)

(assert (=> b!8878 (= tp!1498 b_and!3405)))

(declare-fun lambda!2101 () Int)

(declare-fun f!585 () Int)

(declare-fun b_next!2073 () Bool)

(assert (=> start!1760 (= b_next!2067 (or (and start!1760 (= lambda!2101 f!585)) b_next!2073))))

(declare-fun b!8873 () Bool)

(assert (=> b!8873 true))

(declare-fun order!109 () Int)

(declare-fun order!111 () Int)

(declare-fun lambda!2102 () Int)

(declare-fun dynLambda!256 (Int Int) Int)

(declare-fun dynLambda!257 (Int Int) Int)

(assert (=> b!8873 (< (dynLambda!256 order!109 f!585) (dynLambda!257 order!111 lambda!2102))))

(assert (=> b!8873 true))

(declare-datatypes () ((Balance!181 (Balance!182 (extraOpen!131 Int) (extraClose!131 Int)))))

(declare-datatypes () ((EqEvidence!146 (EqEvidence!147 (x!4856 Int) (y!542 Int) (evidence!140 Int)))))

(declare-fun thiss!837 () EqEvidence!146)

(declare-fun b_next!2075 () Bool)

(assert (=> b!8874 (= b_next!2061 (or (and b!8873 (= lambda!2102 (x!4856 thiss!837))) b_next!2075))))

(declare-fun b_next!2077 () Bool)

(assert (=> b!8874 (= b_next!2063 (or (and b!8873 (= lambda!2102 (y!542 thiss!837))) b_next!2077))))

(declare-fun b_next!2079 () Bool)

(declare-datatypes () ((EqProof!68 (EqProof!69 (x!4857 Int) (y!543 Int)))))

(declare-fun that!213 () EqProof!68)

(assert (=> b!8878 (= b_next!2069 (or (and b!8873 (= lambda!2102 (x!4857 that!213))) b_next!2079))))

(declare-fun b_next!2081 () Bool)

(assert (=> b!8878 (= b_next!2071 (or (and b!8873 (= lambda!2102 (y!543 that!213))) b_next!2081))))

(declare-fun lambda!2103 () Int)

(assert (=> b!8873 (not (= lambda!2103 lambda!2102))))

(assert (=> b!8873 true))

(assert (=> b!8873 (< (dynLambda!256 order!109 f!585) (dynLambda!257 order!111 lambda!2103))))

(assert (=> b!8873 true))

(declare-fun b_next!2083 () Bool)

(assert (=> b!8874 (= b_next!2075 (or (and b!8873 (= lambda!2103 (x!4856 thiss!837))) b_next!2083))))

(declare-fun b_next!2085 () Bool)

(assert (=> b!8874 (= b_next!2077 (or (and b!8873 (= lambda!2103 (y!542 thiss!837))) b_next!2085))))

(declare-fun b_next!2087 () Bool)

(assert (=> b!8878 (= b_next!2079 (or (and b!8873 (= lambda!2103 (x!4857 that!213))) b_next!2087))))

(declare-fun b_next!2089 () Bool)

(assert (=> b!8878 (= b_next!2081 (or (and b!8873 (= lambda!2103 (y!543 that!213))) b_next!2089))))

(declare-fun m!11755 () Bool)

(assert (=> b!8873 m!11755))

(declare-fun lambda!2104 () Int)

(declare-fun dynLambda!258 (Int) Bool)

(assert (=> (and b!8874 b!8873 (= (dynLambda!258 lambda!2104) (dynLambda!258 (evidence!140 thiss!837)))) (= lambda!2104 (evidence!140 thiss!837))))

(declare-fun b_next!2091 () Bool)

(assert (=> b!8874 (= b_next!2065 (or (and b!8873 (= lambda!2104 (evidence!140 thiss!837))) b_next!2091))))

(declare-fun bs!2134 () Bool)

(declare-fun b!8872 () Bool)

(assert (= bs!2134 (and b!8872 b!8873)))

(declare-fun lambda!2105 () Int)

(assert (=> bs!2134 (not (= lambda!2105 lambda!2102))))

(assert (=> bs!2134 (not (= lambda!2105 lambda!2103))))

(assert (=> b!8872 true))

(assert (=> b!8872 (< (dynLambda!256 order!109 f!585) (dynLambda!257 order!111 lambda!2105))))

(assert (=> b!8872 true))

(declare-fun b_next!2093 () Bool)

(assert (=> b!8874 (= b_next!2083 (or (and b!8872 (= lambda!2105 (x!4856 thiss!837))) b_next!2093))))

(declare-fun b_next!2095 () Bool)

(assert (=> b!8874 (= b_next!2085 (or (and b!8872 (= lambda!2105 (y!542 thiss!837))) b_next!2095))))

(declare-fun b_next!2097 () Bool)

(assert (=> b!8878 (= b_next!2087 (or (and b!8872 (= lambda!2105 (x!4857 that!213))) b_next!2097))))

(declare-fun b_next!2099 () Bool)

(assert (=> b!8878 (= b_next!2089 (or (and b!8872 (= lambda!2105 (y!543 that!213))) b_next!2099))))

(declare-fun b!8871 () Bool)

(declare-fun res!2787 () Bool)

(declare-fun e!5176 () Bool)

(assert (=> b!8871 (=> (not res!2787) (not e!5176))))

(declare-datatypes () ((ProofOps!128 (ProofOps!129 (prop!178 Bool)))))

(declare-fun thiss!829 () ProofOps!128)

(declare-datatypes () ((Tree!53 (Branch!44 (left!403 Tree!53) (right!406 Tree!53)) (Leaf!126 (value!1295 Balance!181)))))

(declare-fun tree!25 () Tree!53)

(declare-fun fold!29 (Tree!53 Int) Balance!181)

(declare-datatypes () ((List!207 (Nil!205) (Cons!204 (head!422 Balance!181) (tail!434 List!207)))))

(declare-fun foldRight1!60 (List!207 Int) Balance!181)

(declare-fun toList!53 (Tree!53) List!207)

(assert (=> b!8871 (= res!2787 (= thiss!829 (ProofOps!129 (= (fold!29 tree!25 f!585) (foldRight1!60 (toList!53 tree!25) f!585)))))))

(declare-fun res!2791 () Bool)

(assert (=> b!8872 (=> (not res!2791) (not e!5176))))

(assert (=> b!8872 (= res!2791 (= that!213 (EqProof!69 lambda!2105 lambda!2105)))))

(declare-fun res!2786 () Bool)

(assert (=> b!8873 (=> (not res!2786) (not e!5176))))

(assert (=> b!8873 (= res!2786 (= thiss!837 (EqEvidence!147 lambda!2102 lambda!2103 lambda!2104)))))

(declare-fun e!5174 () Bool)

(assert (=> b!8874 (= e!5174 (and tp!1497 tp!1499 tp!1501))))

(declare-fun b!8875 () Bool)

(declare-fun dynLambda!259 (Int) Balance!181)

(assert (=> b!8875 (= e!5176 (not (= (dynLambda!259 (y!542 thiss!837)) (dynLambda!259 (x!4857 that!213)))))))

(declare-fun b!8876 () Bool)

(declare-fun res!2788 () Bool)

(assert (=> b!8876 (=> (not res!2788) (not e!5176))))

(assert (=> b!8876 (= res!2788 (dynLambda!258 (evidence!140 thiss!837)))))

(declare-fun b!8877 () Bool)

(declare-fun res!2790 () Bool)

(assert (=> b!8877 (=> (not res!2790) (not e!5176))))

(assert (=> b!8877 (= res!2790 (is-Leaf!126 tree!25))))

(declare-fun e!5175 () Bool)

(assert (=> b!8878 (= e!5175 (and tp!1500 tp!1498))))

(declare-fun res!2789 () Bool)

(assert (=> start!1760 (=> (not res!2789) (not e!5176))))

(assert (=> start!1760 (= res!2789 (= f!585 lambda!2101))))

(assert (=> start!1760 e!5176))

(assert (=> start!1760 true))

(declare-fun inv!311 (EqEvidence!146) Bool)

(assert (=> start!1760 (and (inv!311 thiss!837) e!5174)))

(assert (=> start!1760 tp!1496))

(declare-fun inv!312 (EqProof!68) Bool)

(assert (=> start!1760 (and (inv!312 that!213) e!5175)))

(assert (= (and start!1760 res!2789) b!8871))

(assert (= (and b!8871 res!2787) b!8877))

(assert (= (and b!8877 res!2790) b!8873))

(assert (= (and b!8873 res!2786) b!8872))

(assert (= (and b!8872 res!2791) b!8876))

(assert (= (and b!8876 res!2788) b!8875))

(assert (= start!1760 b!8874))

(assert (= start!1760 b!8878))

(declare-fun b_lambda!4479 () Bool)

(assert (=> (not b_lambda!4479) (not b!8875)))

(declare-fun t!2185 () Bool)

(declare-fun tb!1845 () Bool)

(assert (=> (and b!8874 (= (x!4856 thiss!837) (y!542 thiss!837)) t!2185) tb!1845))

(declare-fun result!1885 () Bool)

(assert (=> tb!1845 (= result!1885 true)))

(assert (=> b!8875 t!2185))

(declare-fun b_and!3407 () Bool)

(assert (= b_and!3395 (and (=> t!2185 result!1885) b_and!3407)))

(declare-fun t!2187 () Bool)

(declare-fun tb!1847 () Bool)

(assert (=> (and b!8874 (= (y!542 thiss!837) (y!542 thiss!837)) t!2187) tb!1847))

(declare-fun result!1887 () Bool)

(assert (=> tb!1847 (= result!1887 true)))

(assert (=> b!8875 t!2187))

(declare-fun b_and!3409 () Bool)

(assert (= b_and!3397 (and (=> t!2187 result!1887) b_and!3409)))

(declare-fun t!2189 () Bool)

(declare-fun tb!1849 () Bool)

(assert (=> (and b!8878 (= (x!4857 that!213) (y!542 thiss!837)) t!2189) tb!1849))

(declare-fun result!1889 () Bool)

(assert (=> tb!1849 (= result!1889 true)))

(assert (=> b!8875 t!2189))

(declare-fun b_and!3411 () Bool)

(assert (= b_and!3403 (and (=> t!2189 result!1889) b_and!3411)))

(declare-fun tb!1851 () Bool)

(declare-fun t!2191 () Bool)

(assert (=> (and b!8878 (= (y!543 that!213) (y!542 thiss!837)) t!2191) tb!1851))

(declare-fun result!1891 () Bool)

(assert (=> tb!1851 (= result!1891 true)))

(assert (=> b!8875 t!2191))

(declare-fun b_and!3413 () Bool)

(assert (= b_and!3405 (and (=> t!2191 result!1891) b_and!3413)))

(declare-fun b_lambda!4481 () Bool)

(assert (=> (not b_lambda!4481) (not b!8875)))

(declare-fun tb!1853 () Bool)

(declare-fun t!2193 () Bool)

(assert (=> (and b!8874 (= (x!4856 thiss!837) (x!4857 that!213)) t!2193) tb!1853))

(declare-fun result!1893 () Bool)

(assert (=> tb!1853 (= result!1893 true)))

(assert (=> b!8875 t!2193))

(declare-fun b_and!3415 () Bool)

(assert (= b_and!3407 (and (=> t!2193 result!1893) b_and!3415)))

(declare-fun t!2195 () Bool)

(declare-fun tb!1855 () Bool)

(assert (=> (and b!8874 (= (y!542 thiss!837) (x!4857 that!213)) t!2195) tb!1855))

(declare-fun result!1895 () Bool)

(assert (=> tb!1855 (= result!1895 true)))

(assert (=> b!8875 t!2195))

(declare-fun b_and!3417 () Bool)

(assert (= b_and!3409 (and (=> t!2195 result!1895) b_and!3417)))

(declare-fun t!2197 () Bool)

(declare-fun tb!1857 () Bool)

(assert (=> (and b!8878 (= (x!4857 that!213) (x!4857 that!213)) t!2197) tb!1857))

(declare-fun result!1897 () Bool)

(assert (=> tb!1857 (= result!1897 true)))

(assert (=> b!8875 t!2197))

(declare-fun b_and!3419 () Bool)

(assert (= b_and!3411 (and (=> t!2197 result!1897) b_and!3419)))

(declare-fun t!2199 () Bool)

(declare-fun tb!1859 () Bool)

(assert (=> (and b!8878 (= (y!543 that!213) (x!4857 that!213)) t!2199) tb!1859))

(declare-fun result!1899 () Bool)

(assert (=> tb!1859 (= result!1899 true)))

(assert (=> b!8875 t!2199))

(declare-fun b_and!3421 () Bool)

(assert (= b_and!3413 (and (=> t!2199 result!1899) b_and!3421)))

(declare-fun b_lambda!4483 () Bool)

(assert (=> (not b_lambda!4483) (not b!8876)))

(declare-fun t!2201 () Bool)

(declare-fun tb!1861 () Bool)

(assert (=> (and b!8874 (= (evidence!140 thiss!837) (evidence!140 thiss!837)) t!2201) tb!1861))

(declare-fun result!1901 () Bool)

(assert (=> tb!1861 (= result!1901 true)))

(assert (=> b!8876 t!2201))

(declare-fun b_and!3423 () Bool)

(assert (= b_and!3399 (and (=> t!2201 result!1901) b_and!3423)))

(declare-fun m!11757 () Bool)

(assert (=> b!8871 m!11757))

(declare-fun m!11759 () Bool)

(assert (=> b!8871 m!11759))

(assert (=> b!8871 m!11759))

(declare-fun m!11761 () Bool)

(assert (=> b!8871 m!11761))

(declare-fun m!11763 () Bool)

(assert (=> b!8875 m!11763))

(declare-fun m!11765 () Bool)

(assert (=> b!8875 m!11765))

(declare-fun m!11767 () Bool)

(assert (=> b!8876 m!11767))

(declare-fun m!11769 () Bool)

(assert (=> start!1760 m!11769))

(declare-fun m!11771 () Bool)

(assert (=> start!1760 m!11771))

(push 1)

(assert (not b_lambda!4483))

(assert b_and!3417)

(assert b_and!3401)

(assert (not b_lambda!4479))

(assert (not b_next!2073))

(assert (not b_next!2091))

(assert b_and!3423)

(assert (not b_next!2097))

(assert (not b!8871))

(assert b_and!3419)

(assert (not b_lambda!4481))

(assert (not b_next!2095))

(assert (not b_next!2093))

(assert (not b_next!2099))

(assert (not start!1760))

(assert (not b!8873))

(assert b_and!3415)

(assert b_and!3421)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3417)

(assert b_and!3401)

(assert (not b_next!2073))

(assert (not b_next!2091))

(assert b_and!3423)

(assert (not b_next!2097))

(assert b_and!3419)

(assert (not b_next!2095))

(assert (not b_next!2093))

(assert (not b_next!2099))

(assert b_and!3415)

(assert b_and!3421)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4485 () Bool)

(assert (= b_lambda!4483 (or (and b!8873 (= lambda!2104 (evidence!140 thiss!837))) (and b!8874 b_free!913) b_lambda!4485)))

(declare-fun bs!2135 () Bool)

(declare-fun d!6981 () Bool)

(assert (= bs!2135 (and d!6981 b!8873)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2135 (= (dynLambda!258 lambda!2104) trivial!1)))

(assert (=> (and b!8873 (= lambda!2104 (evidence!140 thiss!837)) b!8876) d!6981))

(declare-fun b_lambda!4487 () Bool)

(assert (= b_lambda!4479 (or (and b!8874 b_free!911) (and b!8873 (= lambda!2103 (y!542 thiss!837))) (and b!8878 b_free!919 (= (y!543 that!213) (y!542 thiss!837))) (and b!8873 (= lambda!2102 (y!542 thiss!837))) (and b!8874 b_free!909 (= (x!4856 thiss!837) (y!542 thiss!837))) (and b!8878 b_free!917 (= (x!4857 that!213) (y!542 thiss!837))) (and b!8872 (= lambda!2105 (y!542 thiss!837))) b_lambda!4487)))

(declare-fun bs!2136 () Bool)

(declare-fun d!6983 () Bool)

(assert (= bs!2136 (and d!6983 b!8872)))

(assert (=> bs!2136 (= (dynLambda!259 lambda!2105) (foldRight1!60 (toList!53 tree!25) f!585))))

(assert (=> bs!2136 m!11759))

(assert (=> bs!2136 m!11759))

(assert (=> bs!2136 m!11761))

(assert (=> (and b!8872 (= lambda!2105 (y!542 thiss!837)) b!8875) d!6983))

(declare-fun bs!2137 () Bool)

(declare-fun d!6985 () Bool)

(assert (= bs!2137 (and d!6985 b!8873)))

(assert (=> bs!2137 (= (dynLambda!259 lambda!2102) (fold!29 tree!25 f!585))))

(assert (=> bs!2137 m!11757))

(assert (=> (and b!8873 (= lambda!2102 (y!542 thiss!837)) b!8875) d!6985))

(declare-fun bs!2138 () Bool)

(declare-fun d!6987 () Bool)

(assert (= bs!2138 (and d!6987 b!8873)))

(assert (=> bs!2138 (= (dynLambda!259 lambda!2103) (foldRight1!60 (Cons!204 (value!1295 tree!25) Nil!205) f!585))))

(declare-fun m!11773 () Bool)

(assert (=> bs!2138 m!11773))

(assert (=> (and b!8873 (= lambda!2103 (y!542 thiss!837)) b!8875) d!6987))

(declare-fun b_lambda!4489 () Bool)

(assert (= b_lambda!4481 (or (and b!8873 (= lambda!2103 (x!4857 that!213))) (and b!8872 (= lambda!2105 (x!4857 that!213))) (and b!8878 b_free!919 (= (y!543 that!213) (x!4857 that!213))) (and b!8874 b_free!909 (= (x!4856 thiss!837) (x!4857 that!213))) (and b!8878 b_free!917) (and b!8873 (= lambda!2102 (x!4857 that!213))) (and b!8874 b_free!911 (= (y!542 thiss!837) (x!4857 that!213))) b_lambda!4489)))

(declare-fun bs!2139 () Bool)

(declare-fun d!6989 () Bool)

(assert (= bs!2139 (and d!6989 b!8873)))

(assert (=> bs!2139 (= (dynLambda!259 lambda!2103) (foldRight1!60 (Cons!204 (value!1295 tree!25) Nil!205) f!585))))

(assert (=> bs!2139 m!11773))

(assert (=> (and b!8873 (= lambda!2103 (x!4857 that!213)) b!8875) d!6989))

(declare-fun bs!2140 () Bool)

(declare-fun d!6991 () Bool)

(assert (= bs!2140 (and d!6991 b!8872)))

(assert (=> bs!2140 (= (dynLambda!259 lambda!2105) (foldRight1!60 (toList!53 tree!25) f!585))))

(assert (=> bs!2140 m!11759))

(assert (=> bs!2140 m!11759))

(assert (=> bs!2140 m!11761))

(assert (=> (and b!8872 (= lambda!2105 (x!4857 that!213)) b!8875) d!6991))

(declare-fun bs!2141 () Bool)

(declare-fun d!6993 () Bool)

(assert (= bs!2141 (and d!6993 b!8873)))

(assert (=> bs!2141 (= (dynLambda!259 lambda!2102) (fold!29 tree!25 f!585))))

(assert (=> bs!2141 m!11757))

(assert (=> (and b!8873 (= lambda!2102 (x!4857 that!213)) b!8875) d!6993))

(push 1)

(assert (not bs!2138))

(assert (not bs!2140))

(assert (not b_lambda!4485))

(assert b_and!3417)

(assert (not b_lambda!4487))

(assert b_and!3401)

(assert (not b_next!2073))

(assert (not b_next!2091))

(assert b_and!3423)

(assert (not bs!2139))

(assert (not b_next!2097))

(assert (not b!8871))

(assert b_and!3419)

(assert (not bs!2136))

(assert (not b_next!2095))

(assert (not b_lambda!4489))

(assert (not b_next!2093))

(assert (not bs!2141))

(assert (not bs!2137))

(assert (not b_next!2099))

(assert (not start!1760))

(assert (not b!8873))

(assert b_and!3415)

(assert b_and!3421)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3417)

(assert b_and!3401)

(assert (not b_next!2073))

(assert (not b_next!2091))

(assert b_and!3423)

(assert (not b_next!2097))

(assert b_and!3419)

(assert (not b_next!2095))

(assert (not b_next!2093))

(assert (not b_next!2099))

(assert b_and!3415)

(assert b_and!3421)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6995 () Bool)

(declare-fun c!2957 () Bool)

(assert (=> d!6995 (= c!2957 (and (is-Cons!204 (toList!53 tree!25)) (is-Nil!205 (tail!434 (toList!53 tree!25)))))))

(declare-fun e!5179 () Balance!181)

(assert (=> d!6995 (= (foldRight1!60 (toList!53 tree!25) f!585) e!5179)))

(declare-fun b!8887 () Bool)

(assert (=> b!8887 (= e!5179 (head!422 (toList!53 tree!25)))))

(declare-fun b!8888 () Bool)

(declare-fun dynLambda!260 (Int Balance!181 Balance!181) Balance!181)

(assert (=> b!8888 (= e!5179 (dynLambda!260 f!585 (head!422 (toList!53 tree!25)) (foldRight1!60 (tail!434 (toList!53 tree!25)) f!585)))))

(assert (= (and d!6995 c!2957) b!8887))

(assert (= (and d!6995 (not c!2957)) b!8888))

(declare-fun b_lambda!4491 () Bool)

(assert (=> (not b_lambda!4491) (not b!8888)))

(declare-fun t!2203 () Bool)

(declare-fun tb!1863 () Bool)

(assert (=> (and start!1760 (= f!585 f!585) t!2203) tb!1863))

(declare-fun result!1903 () Bool)

(assert (=> tb!1863 (= result!1903 true)))

(assert (=> b!8888 t!2203))

(declare-fun b_and!3425 () Bool)

(assert (= b_and!3401 (and (=> t!2203 result!1903) b_and!3425)))

(declare-fun m!11775 () Bool)

(assert (=> b!8888 m!11775))

(assert (=> b!8888 m!11775))

(declare-fun m!11777 () Bool)

(assert (=> b!8888 m!11777))

(assert (=> bs!2136 d!6995))

(declare-fun d!6997 () Bool)

(declare-fun lt!1583 () List!207)

(declare-fun isEmpty!167 (List!207) Bool)

(assert (=> d!6997 (not (isEmpty!167 lt!1583))))

(declare-fun e!5182 () List!207)

(assert (=> d!6997 (= lt!1583 e!5182)))

(declare-fun c!2960 () Bool)

(assert (=> d!6997 (= c!2960 (is-Leaf!126 tree!25))))

(assert (=> d!6997 (= (toList!53 tree!25) lt!1583)))

(declare-fun b!8893 () Bool)

(assert (=> b!8893 (= e!5182 (Cons!204 (value!1295 tree!25) Nil!205))))

(declare-fun b!8894 () Bool)

(declare-fun append!88 (List!207 List!207) List!207)

(assert (=> b!8894 (= e!5182 (append!88 (toList!53 (left!403 tree!25)) (toList!53 (right!406 tree!25))))))

(assert (= (and d!6997 c!2960) b!8893))

(assert (= (and d!6997 (not c!2960)) b!8894))

(declare-fun m!11779 () Bool)

(assert (=> d!6997 m!11779))

(declare-fun m!11781 () Bool)

(assert (=> b!8894 m!11781))

(declare-fun m!11783 () Bool)

(assert (=> b!8894 m!11783))

(assert (=> b!8894 m!11781))

(assert (=> b!8894 m!11783))

(declare-fun m!11785 () Bool)

(assert (=> b!8894 m!11785))

(assert (=> bs!2136 d!6997))

(assert (=> bs!2140 d!6995))

(assert (=> bs!2140 d!6997))

(declare-fun bs!2142 () Bool)

(declare-fun b!8900 () Bool)

(assert (= bs!2142 (and b!8900 b!8873)))

(declare-fun lambda!2110 () Int)

(assert (=> bs!2142 (= (= (left!403 tree!25) tree!25) (= lambda!2110 lambda!2102))))

(assert (=> bs!2142 (not (= lambda!2110 lambda!2103))))

(declare-fun bs!2143 () Bool)

(assert (= bs!2143 (and b!8900 b!8872)))

(assert (=> bs!2143 (not (= lambda!2110 lambda!2105))))

(assert (=> b!8900 true))

(assert (=> b!8900 (< (dynLambda!256 order!109 f!585) (dynLambda!257 order!111 lambda!2110))))

(assert (=> b!8900 true))

(declare-fun b_next!2101 () Bool)

(assert (=> b!8874 (= b_next!2093 (or (and b!8900 (= lambda!2110 (x!4856 thiss!837))) b_next!2101))))

(declare-fun b_next!2103 () Bool)

(assert (=> b!8874 (= b_next!2095 (or (and b!8900 (= lambda!2110 (y!542 thiss!837))) b_next!2103))))

(declare-fun b_next!2105 () Bool)

(assert (=> b!8878 (= b_next!2097 (or (and b!8900 (= lambda!2110 (x!4857 that!213))) b_next!2105))))

(declare-fun b_next!2107 () Bool)

(assert (=> b!8878 (= b_next!2099 (or (and b!8900 (= lambda!2110 (y!543 that!213))) b_next!2107))))

(declare-fun lambda!2111 () Int)

(assert (=> bs!2142 (= (= (right!406 tree!25) tree!25) (= lambda!2111 lambda!2102))))

(assert (=> bs!2142 (not (= lambda!2111 lambda!2103))))

(assert (=> bs!2143 (not (= lambda!2111 lambda!2105))))

(assert (=> b!8900 (= (= (right!406 tree!25) (left!403 tree!25)) (= lambda!2111 lambda!2110))))

(assert (=> b!8900 true))

(assert (=> b!8900 (< (dynLambda!256 order!109 f!585) (dynLambda!257 order!111 lambda!2111))))

(assert (=> b!8900 true))

(declare-fun b_next!2109 () Bool)

(assert (=> b!8874 (= b_next!2101 (or (and b!8900 (= lambda!2111 (x!4856 thiss!837))) b_next!2109))))

(declare-fun b_next!2111 () Bool)

(assert (=> b!8874 (= b_next!2103 (or (and b!8900 (= lambda!2111 (y!542 thiss!837))) b_next!2111))))

(declare-fun b_next!2113 () Bool)

(assert (=> b!8878 (= b_next!2105 (or (and b!8900 (= lambda!2111 (x!4857 that!213))) b_next!2113))))

(declare-fun b_next!2115 () Bool)

(assert (=> b!8878 (= b_next!2107 (or (and b!8900 (= lambda!2111 (y!543 that!213))) b_next!2115))))

(declare-fun e!5201 () Balance!181)

(declare-datatypes () ((tuple2!68 (tuple2!69 (_1!34 Balance!181) (_2!34 Balance!181)))))

(declare-fun lt!1586 () tuple2!68)

(assert (=> b!8900 (= e!5201 (dynLambda!260 f!585 (_1!34 lt!1586) (_2!34 lt!1586)))))

(assert (=> b!8900 (= lt!1586 (tuple2!69 (dynLambda!259 lambda!2110) (dynLambda!259 lambda!2111)))))

(declare-fun d!6999 () Bool)

(declare-fun c!2963 () Bool)

(assert (=> d!6999 (= c!2963 (is-Leaf!126 tree!25))))

(assert (=> d!6999 (= (fold!29 tree!25 f!585) e!5201)))

(declare-fun b!8899 () Bool)

(assert (=> b!8899 (= e!5201 (value!1295 tree!25))))

(assert (= (and d!6999 c!2963) b!8899))

(assert (= (and d!6999 (not c!2963)) b!8900))

(declare-fun b_lambda!4493 () Bool)

(assert (=> (not b_lambda!4493) (not b!8900)))

(declare-fun t!2205 () Bool)

(declare-fun tb!1865 () Bool)

(assert (=> (and start!1760 (= f!585 f!585) t!2205) tb!1865))

(declare-fun result!1905 () Bool)

(assert (=> tb!1865 (= result!1905 true)))

(assert (=> b!8900 t!2205))

(declare-fun b_and!3427 () Bool)

(assert (= b_and!3425 (and (=> t!2205 result!1905) b_and!3427)))

(declare-fun b_lambda!4495 () Bool)

(assert (=> (not b_lambda!4495) (not b!8900)))

(declare-fun b_lambda!4497 () Bool)

(assert (=> (not b_lambda!4497) (not b!8900)))

(declare-fun m!11787 () Bool)

(assert (=> b!8900 m!11787))

(declare-fun m!11789 () Bool)

(assert (=> b!8900 m!11789))

(declare-fun m!11791 () Bool)

(assert (=> b!8900 m!11791))

(assert (=> bs!2137 d!6999))

(declare-fun d!7001 () Bool)

(declare-fun c!2964 () Bool)

(assert (=> d!7001 (= c!2964 (and (is-Cons!204 (Cons!204 (value!1295 tree!25) Nil!205)) (is-Nil!205 (tail!434 (Cons!204 (value!1295 tree!25) Nil!205)))))))

(declare-fun e!5202 () Balance!181)

(assert (=> d!7001 (= (foldRight1!60 (Cons!204 (value!1295 tree!25) Nil!205) f!585) e!5202)))

(declare-fun b!8901 () Bool)

(assert (=> b!8901 (= e!5202 (head!422 (Cons!204 (value!1295 tree!25) Nil!205)))))

(declare-fun b!8902 () Bool)

(assert (=> b!8902 (= e!5202 (dynLambda!260 f!585 (head!422 (Cons!204 (value!1295 tree!25) Nil!205)) (foldRight1!60 (tail!434 (Cons!204 (value!1295 tree!25) Nil!205)) f!585)))))

(assert (= (and d!7001 c!2964) b!8901))

(assert (= (and d!7001 (not c!2964)) b!8902))

(declare-fun b_lambda!4499 () Bool)

(assert (=> (not b_lambda!4499) (not b!8902)))

(declare-fun t!2207 () Bool)

(declare-fun tb!1867 () Bool)

(assert (=> (and start!1760 (= f!585 f!585) t!2207) tb!1867))

(declare-fun result!1907 () Bool)

(assert (=> tb!1867 (= result!1907 true)))

(assert (=> b!8902 t!2207))

(declare-fun b_and!3429 () Bool)

(assert (= b_and!3427 (and (=> t!2207 result!1907) b_and!3429)))

(declare-fun m!11793 () Bool)

(assert (=> b!8902 m!11793))

(assert (=> b!8902 m!11793))

(declare-fun m!11795 () Bool)

(assert (=> b!8902 m!11795))

(assert (=> bs!2139 d!7001))

(declare-fun d!7003 () Bool)

(assert (=> d!7003 (= trivial!1 true)))

(assert (=> b!8873 d!7003))

(assert (=> bs!2141 d!6999))

(assert (=> bs!2138 d!7001))

(declare-fun d!7005 () Bool)

(declare-fun res!2795 () Bool)

(declare-fun e!5205 () Bool)

(assert (=> d!7005 (=> (not res!2795) (not e!5205))))

(assert (=> d!7005 (= res!2795 (= (dynLambda!259 (x!4856 thiss!837)) (dynLambda!259 (y!542 thiss!837))))))

(assert (=> d!7005 (= (inv!311 thiss!837) e!5205)))

(declare-fun b!8905 () Bool)

(assert (=> b!8905 (= e!5205 (dynLambda!258 (evidence!140 thiss!837)))))

(assert (= (and d!7005 res!2795) b!8905))

(declare-fun b_lambda!4501 () Bool)

(assert (=> (not b_lambda!4501) (not d!7005)))

(declare-fun t!2209 () Bool)

(declare-fun tb!1869 () Bool)

(assert (=> (and b!8874 (= (x!4856 thiss!837) (x!4856 thiss!837)) t!2209) tb!1869))

(declare-fun result!1909 () Bool)

(assert (=> tb!1869 (= result!1909 true)))

(assert (=> d!7005 t!2209))

(declare-fun b_and!3431 () Bool)

(assert (= b_and!3415 (and (=> t!2209 result!1909) b_and!3431)))

(declare-fun t!2211 () Bool)

(declare-fun tb!1871 () Bool)

(assert (=> (and b!8874 (= (y!542 thiss!837) (x!4856 thiss!837)) t!2211) tb!1871))

(declare-fun result!1911 () Bool)

(assert (=> tb!1871 (= result!1911 true)))

(assert (=> d!7005 t!2211))

(declare-fun b_and!3433 () Bool)

(assert (= b_and!3417 (and (=> t!2211 result!1911) b_and!3433)))

(declare-fun tb!1873 () Bool)

(declare-fun t!2213 () Bool)

(assert (=> (and b!8878 (= (x!4857 that!213) (x!4856 thiss!837)) t!2213) tb!1873))

(declare-fun result!1913 () Bool)

(assert (=> tb!1873 (= result!1913 true)))

(assert (=> d!7005 t!2213))

(declare-fun b_and!3435 () Bool)

(assert (= b_and!3419 (and (=> t!2213 result!1913) b_and!3435)))

(declare-fun tb!1875 () Bool)

(declare-fun t!2215 () Bool)

(assert (=> (and b!8878 (= (y!543 that!213) (x!4856 thiss!837)) t!2215) tb!1875))

(declare-fun result!1915 () Bool)

(assert (=> tb!1875 (= result!1915 true)))

(assert (=> d!7005 t!2215))

(declare-fun b_and!3437 () Bool)

(assert (= b_and!3421 (and (=> t!2215 result!1915) b_and!3437)))

(declare-fun b_lambda!4503 () Bool)

(assert (=> (not b_lambda!4503) (not d!7005)))

(assert (=> d!7005 t!2185))

(declare-fun b_and!3439 () Bool)

(assert (= b_and!3431 (and (=> t!2185 result!1885) b_and!3439)))

(assert (=> d!7005 t!2187))

(declare-fun b_and!3441 () Bool)

(assert (= b_and!3433 (and (=> t!2187 result!1887) b_and!3441)))

(assert (=> d!7005 t!2189))

(declare-fun b_and!3443 () Bool)

(assert (= b_and!3435 (and (=> t!2189 result!1889) b_and!3443)))

(assert (=> d!7005 t!2191))

(declare-fun b_and!3445 () Bool)

(assert (= b_and!3437 (and (=> t!2191 result!1891) b_and!3445)))

(declare-fun b_lambda!4505 () Bool)

(assert (=> (not b_lambda!4505) (not b!8905)))

(assert (=> b!8905 t!2201))

(declare-fun b_and!3447 () Bool)

(assert (= b_and!3423 (and (=> t!2201 result!1901) b_and!3447)))

(declare-fun m!11797 () Bool)

(assert (=> d!7005 m!11797))

(assert (=> d!7005 m!11763))

(assert (=> b!8905 m!11767))

(assert (=> start!1760 d!7005))

(declare-fun d!7007 () Bool)

(assert (=> d!7007 (= (inv!312 that!213) (= (dynLambda!259 (x!4857 that!213)) (dynLambda!259 (y!543 that!213))))))

(declare-fun b_lambda!4507 () Bool)

(assert (=> (not b_lambda!4507) (not d!7007)))

(assert (=> d!7007 t!2193))

(declare-fun b_and!3449 () Bool)

(assert (= b_and!3439 (and (=> t!2193 result!1893) b_and!3449)))

(assert (=> d!7007 t!2195))

(declare-fun b_and!3451 () Bool)

(assert (= b_and!3441 (and (=> t!2195 result!1895) b_and!3451)))

(assert (=> d!7007 t!2197))

(declare-fun b_and!3453 () Bool)

(assert (= b_and!3443 (and (=> t!2197 result!1897) b_and!3453)))

(assert (=> d!7007 t!2199))

(declare-fun b_and!3455 () Bool)

(assert (= b_and!3445 (and (=> t!2199 result!1899) b_and!3455)))

(declare-fun b_lambda!4509 () Bool)

(assert (=> (not b_lambda!4509) (not d!7007)))

(declare-fun t!2217 () Bool)

(declare-fun tb!1877 () Bool)

(assert (=> (and b!8874 (= (x!4856 thiss!837) (y!543 that!213)) t!2217) tb!1877))

(declare-fun result!1917 () Bool)

(assert (=> tb!1877 (= result!1917 true)))

(assert (=> d!7007 t!2217))

(declare-fun b_and!3457 () Bool)

(assert (= b_and!3449 (and (=> t!2217 result!1917) b_and!3457)))

(declare-fun tb!1879 () Bool)

(declare-fun t!2219 () Bool)

(assert (=> (and b!8874 (= (y!542 thiss!837) (y!543 that!213)) t!2219) tb!1879))

(declare-fun result!1919 () Bool)

(assert (=> tb!1879 (= result!1919 true)))

(assert (=> d!7007 t!2219))

(declare-fun b_and!3459 () Bool)

(assert (= b_and!3451 (and (=> t!2219 result!1919) b_and!3459)))

(declare-fun t!2221 () Bool)

(declare-fun tb!1881 () Bool)

(assert (=> (and b!8878 (= (x!4857 that!213) (y!543 that!213)) t!2221) tb!1881))

(declare-fun result!1921 () Bool)

(assert (=> tb!1881 (= result!1921 true)))

(assert (=> d!7007 t!2221))

(declare-fun b_and!3461 () Bool)

(assert (= b_and!3453 (and (=> t!2221 result!1921) b_and!3461)))

(declare-fun t!2223 () Bool)

(declare-fun tb!1883 () Bool)

(assert (=> (and b!8878 (= (y!543 that!213) (y!543 that!213)) t!2223) tb!1883))

(declare-fun result!1923 () Bool)

(assert (=> tb!1883 (= result!1923 true)))

(assert (=> d!7007 t!2223))

(declare-fun b_and!3463 () Bool)

(assert (= b_and!3455 (and (=> t!2223 result!1923) b_and!3463)))

(assert (=> d!7007 m!11765))

(declare-fun m!11799 () Bool)

(assert (=> d!7007 m!11799))

(assert (=> start!1760 d!7007))

(assert (=> b!8871 d!6999))

(assert (=> b!8871 d!6995))

(assert (=> b!8871 d!6997))

(declare-fun b_lambda!4511 () Bool)

(assert (= b_lambda!4509 (or (and b!8900 (= lambda!2110 (y!543 that!213))) (and b!8872 (= lambda!2105 (y!543 that!213))) (and b!8873 (= lambda!2102 (y!543 that!213))) (and b!8878 b_free!917 (= (x!4857 that!213) (y!543 that!213))) (and b!8900 (= lambda!2111 (y!543 that!213))) (and b!8874 b_free!911 (= (y!542 thiss!837) (y!543 that!213))) (and b!8874 b_free!909 (= (x!4856 thiss!837) (y!543 that!213))) (and b!8878 b_free!919) (and b!8873 (= lambda!2103 (y!543 that!213))) b_lambda!4511)))

(declare-fun bs!2144 () Bool)

(declare-fun d!7009 () Bool)

(assert (= bs!2144 (and d!7009 b!8873)))

(assert (=> bs!2144 (= (dynLambda!259 lambda!2103) (foldRight1!60 (Cons!204 (value!1295 tree!25) Nil!205) f!585))))

(assert (=> bs!2144 m!11773))

(assert (=> (and b!8873 (= lambda!2103 (y!543 that!213)) d!7007) d!7009))

(declare-fun bs!2145 () Bool)

(declare-fun d!7011 () Bool)

(assert (= bs!2145 (and d!7011 b!8873)))

(assert (=> bs!2145 (= (dynLambda!259 lambda!2102) (fold!29 tree!25 f!585))))

(assert (=> bs!2145 m!11757))

(assert (=> (and b!8873 (= lambda!2102 (y!543 that!213)) d!7007) d!7011))

(declare-fun bs!2146 () Bool)

(declare-fun d!7013 () Bool)

(assert (= bs!2146 (and d!7013 b!8872)))

(assert (=> bs!2146 (= (dynLambda!259 lambda!2105) (foldRight1!60 (toList!53 tree!25) f!585))))

(assert (=> bs!2146 m!11759))

(assert (=> bs!2146 m!11759))

(assert (=> bs!2146 m!11761))

(assert (=> (and b!8872 (= lambda!2105 (y!543 that!213)) d!7007) d!7013))

(declare-fun bs!2147 () Bool)

(declare-fun d!7015 () Bool)

(assert (= bs!2147 (and d!7015 b!8900)))

(assert (=> bs!2147 (= (dynLambda!259 lambda!2111) (fold!29 (right!406 tree!25) f!585))))

(declare-fun m!11801 () Bool)

(assert (=> bs!2147 m!11801))

(assert (=> (and b!8900 (= lambda!2111 (y!543 that!213)) d!7007) d!7015))

(declare-fun bs!2148 () Bool)

(declare-fun d!7017 () Bool)

(assert (= bs!2148 (and d!7017 b!8900)))

(assert (=> bs!2148 (= (dynLambda!259 lambda!2110) (fold!29 (left!403 tree!25) f!585))))

(declare-fun m!11803 () Bool)

(assert (=> bs!2148 m!11803))

(assert (=> (and b!8900 (= lambda!2110 (y!543 that!213)) d!7007) d!7017))

(declare-fun b_lambda!4513 () Bool)

(assert (= b_lambda!4493 (or (and start!1760 (= lambda!2101 f!585)) (and start!1760 b_free!915) b_lambda!4513)))

(declare-fun bs!2149 () Bool)

(declare-fun d!7019 () Bool)

(assert (= bs!2149 (and d!7019 start!1760)))

(declare-fun ++!3 (Balance!181 Balance!181) Balance!181)

(assert (=> bs!2149 (= (dynLambda!260 lambda!2101 (_1!34 lt!1586) (_2!34 lt!1586)) (++!3 (_1!34 lt!1586) (_2!34 lt!1586)))))

(declare-fun m!11805 () Bool)

(assert (=> bs!2149 m!11805))

(assert (=> (and start!1760 (= lambda!2101 f!585) b!8900) d!7019))

(declare-fun b_lambda!4515 () Bool)

(assert (= b_lambda!4503 (or (and b!8900 (= lambda!2110 (y!542 thiss!837))) (and b!8874 b_free!911) (and b!8873 (= lambda!2103 (y!542 thiss!837))) (and b!8900 (= lambda!2111 (y!542 thiss!837))) (and b!8878 b_free!919 (= (y!543 that!213) (y!542 thiss!837))) (and b!8873 (= lambda!2102 (y!542 thiss!837))) (and b!8874 b_free!909 (= (x!4856 thiss!837) (y!542 thiss!837))) (and b!8878 b_free!917 (= (x!4857 that!213) (y!542 thiss!837))) (and b!8872 (= lambda!2105 (y!542 thiss!837))) b_lambda!4515)))

(assert (=> (and b!8872 (= lambda!2105 (y!542 thiss!837)) d!7005) d!6983))

(declare-fun bs!2150 () Bool)

(declare-fun d!7021 () Bool)

(assert (= bs!2150 (and d!7021 b!8900)))

(assert (=> bs!2150 (= (dynLambda!259 lambda!2111) (fold!29 (right!406 tree!25) f!585))))

(assert (=> bs!2150 m!11801))

(assert (=> (and b!8900 (= lambda!2111 (y!542 thiss!837)) d!7005) d!7021))

(assert (=> (and b!8873 (= lambda!2102 (y!542 thiss!837)) d!7005) d!6985))

(assert (=> (and b!8873 (= lambda!2103 (y!542 thiss!837)) d!7005) d!6987))

(declare-fun bs!2151 () Bool)

(declare-fun d!7023 () Bool)

(assert (= bs!2151 (and d!7023 b!8900)))

(assert (=> bs!2151 (= (dynLambda!259 lambda!2110) (fold!29 (left!403 tree!25) f!585))))

(assert (=> bs!2151 m!11803))

(assert (=> (and b!8900 (= lambda!2110 (y!542 thiss!837)) d!7005) d!7023))

(declare-fun b_lambda!4517 () Bool)

(assert (= b_lambda!4505 (or (and b!8873 (= lambda!2104 (evidence!140 thiss!837))) (and b!8874 b_free!913) b_lambda!4517)))

(assert (=> (and b!8873 (= lambda!2104 (evidence!140 thiss!837)) b!8905) d!6981))

(declare-fun b_lambda!4519 () Bool)

(assert (= b_lambda!4499 (or (and start!1760 (= lambda!2101 f!585)) (and start!1760 b_free!915) b_lambda!4519)))

(declare-fun bs!2152 () Bool)

(declare-fun d!7025 () Bool)

(assert (= bs!2152 (and d!7025 start!1760)))

(assert (=> bs!2152 (= (dynLambda!260 lambda!2101 (head!422 (Cons!204 (value!1295 tree!25) Nil!205)) (foldRight1!60 (tail!434 (Cons!204 (value!1295 tree!25) Nil!205)) f!585)) (++!3 (head!422 (Cons!204 (value!1295 tree!25) Nil!205)) (foldRight1!60 (tail!434 (Cons!204 (value!1295 tree!25) Nil!205)) f!585)))))

(assert (=> bs!2152 m!11793))

(declare-fun m!11807 () Bool)

(assert (=> bs!2152 m!11807))

(assert (=> (and start!1760 (= lambda!2101 f!585) b!8902) d!7025))

(declare-fun b_lambda!4521 () Bool)

(assert (= b_lambda!4491 (or (and start!1760 (= lambda!2101 f!585)) (and start!1760 b_free!915) b_lambda!4521)))

(declare-fun bs!2153 () Bool)

(declare-fun d!7027 () Bool)

(assert (= bs!2153 (and d!7027 start!1760)))

(assert (=> bs!2153 (= (dynLambda!260 lambda!2101 (head!422 (toList!53 tree!25)) (foldRight1!60 (tail!434 (toList!53 tree!25)) f!585)) (++!3 (head!422 (toList!53 tree!25)) (foldRight1!60 (tail!434 (toList!53 tree!25)) f!585)))))

(assert (=> bs!2153 m!11775))

(declare-fun m!11809 () Bool)

(assert (=> bs!2153 m!11809))

(assert (=> (and start!1760 (= lambda!2101 f!585) b!8888) d!7027))

(declare-fun b_lambda!4523 () Bool)

(assert (= b_lambda!4501 (or (and b!8878 b_free!919 (= (y!543 that!213) (x!4856 thiss!837))) (and b!8873 (= lambda!2103 (x!4856 thiss!837))) (and b!8874 b_free!911 (= (y!542 thiss!837) (x!4856 thiss!837))) (and b!8900 (= lambda!2111 (x!4856 thiss!837))) (and b!8873 (= lambda!2102 (x!4856 thiss!837))) (and b!8874 b_free!909) (and b!8878 b_free!917 (= (x!4857 that!213) (x!4856 thiss!837))) (and b!8872 (= lambda!2105 (x!4856 thiss!837))) (and b!8900 (= lambda!2110 (x!4856 thiss!837))) b_lambda!4523)))

(declare-fun bs!2154 () Bool)

(declare-fun d!7029 () Bool)

(assert (= bs!2154 (and d!7029 b!8872)))

(assert (=> bs!2154 (= (dynLambda!259 lambda!2105) (foldRight1!60 (toList!53 tree!25) f!585))))

(assert (=> bs!2154 m!11759))

(assert (=> bs!2154 m!11759))

(assert (=> bs!2154 m!11761))

(assert (=> (and b!8872 (= lambda!2105 (x!4856 thiss!837)) d!7005) d!7029))

(declare-fun bs!2155 () Bool)

(declare-fun d!7031 () Bool)

(assert (= bs!2155 (and d!7031 b!8873)))

(assert (=> bs!2155 (= (dynLambda!259 lambda!2102) (fold!29 tree!25 f!585))))

(assert (=> bs!2155 m!11757))

(assert (=> (and b!8873 (= lambda!2102 (x!4856 thiss!837)) d!7005) d!7031))

(declare-fun bs!2156 () Bool)

(declare-fun d!7033 () Bool)

(assert (= bs!2156 (and d!7033 b!8873)))

(assert (=> bs!2156 (= (dynLambda!259 lambda!2103) (foldRight1!60 (Cons!204 (value!1295 tree!25) Nil!205) f!585))))

(assert (=> bs!2156 m!11773))

(assert (=> (and b!8873 (= lambda!2103 (x!4856 thiss!837)) d!7005) d!7033))

(declare-fun bs!2157 () Bool)

(declare-fun d!7035 () Bool)

(assert (= bs!2157 (and d!7035 b!8900)))

(assert (=> bs!2157 (= (dynLambda!259 lambda!2110) (fold!29 (left!403 tree!25) f!585))))

(assert (=> bs!2157 m!11803))

(assert (=> (and b!8900 (= lambda!2110 (x!4856 thiss!837)) d!7005) d!7035))

(declare-fun bs!2158 () Bool)

(declare-fun d!7037 () Bool)

(assert (= bs!2158 (and d!7037 b!8900)))

(assert (=> bs!2158 (= (dynLambda!259 lambda!2111) (fold!29 (right!406 tree!25) f!585))))

(assert (=> bs!2158 m!11801))

(assert (=> (and b!8900 (= lambda!2111 (x!4856 thiss!837)) d!7005) d!7037))

(declare-fun b_lambda!4525 () Bool)

(assert (= b_lambda!4495 (or b!8900 b_lambda!4525)))

(declare-fun bs!2159 () Bool)

(declare-fun d!7039 () Bool)

(assert (= bs!2159 (and d!7039 b!8900)))

(assert (=> bs!2159 (= (dynLambda!259 lambda!2110) (fold!29 (left!403 tree!25) f!585))))

(assert (=> bs!2159 m!11803))

(assert (=> b!8900 d!7039))

(declare-fun b_lambda!4527 () Bool)

(assert (= b_lambda!4507 (or (and b!8873 (= lambda!2103 (x!4857 that!213))) (and b!8872 (= lambda!2105 (x!4857 that!213))) (and b!8878 b_free!919 (= (y!543 that!213) (x!4857 that!213))) (and b!8900 (= lambda!2110 (x!4857 that!213))) (and b!8874 b_free!909 (= (x!4856 thiss!837) (x!4857 that!213))) (and b!8900 (= lambda!2111 (x!4857 that!213))) (and b!8878 b_free!917) (and b!8873 (= lambda!2102 (x!4857 that!213))) (and b!8874 b_free!911 (= (y!542 thiss!837) (x!4857 that!213))) b_lambda!4527)))

(assert (=> (and b!8873 (= lambda!2103 (x!4857 that!213)) d!7007) d!6989))

(declare-fun bs!2160 () Bool)

(declare-fun d!7041 () Bool)

(assert (= bs!2160 (and d!7041 b!8900)))

(assert (=> bs!2160 (= (dynLambda!259 lambda!2111) (fold!29 (right!406 tree!25) f!585))))

(assert (=> bs!2160 m!11801))

(assert (=> (and b!8900 (= lambda!2111 (x!4857 that!213)) d!7007) d!7041))

(assert (=> (and b!8872 (= lambda!2105 (x!4857 that!213)) d!7007) d!6991))

(assert (=> (and b!8873 (= lambda!2102 (x!4857 that!213)) d!7007) d!6993))

(declare-fun bs!2161 () Bool)

(declare-fun d!7043 () Bool)

(assert (= bs!2161 (and d!7043 b!8900)))

(assert (=> bs!2161 (= (dynLambda!259 lambda!2110) (fold!29 (left!403 tree!25) f!585))))

(assert (=> bs!2161 m!11803))

(assert (=> (and b!8900 (= lambda!2110 (x!4857 that!213)) d!7007) d!7043))

(declare-fun b_lambda!4529 () Bool)

(assert (= b_lambda!4497 (or b!8900 b_lambda!4529)))

(declare-fun bs!2162 () Bool)

(declare-fun d!7045 () Bool)

(assert (= bs!2162 (and d!7045 b!8900)))

(assert (=> bs!2162 (= (dynLambda!259 lambda!2111) (fold!29 (right!406 tree!25) f!585))))

(assert (=> bs!2162 m!11801))

(assert (=> b!8900 d!7045))

(push 1)

(assert (not b_lambda!4517))

(assert (not b_next!2111))

(assert (not b_lambda!4523))

(assert (not bs!2152))

(assert (not b_lambda!4485))

(assert b_and!3459)

(assert (not bs!2161))

(assert (not d!6997))

(assert (not bs!2155))

(assert (not b_lambda!4527))

(assert (not bs!2159))

(assert (not bs!2146))

(assert (not b_lambda!4487))

(assert (not b_lambda!4511))

(assert (not b!8888))

(assert (not bs!2149))

(assert (not bs!2145))

(assert (not bs!2150))

(assert (not bs!2151))

(assert (not b_next!2109))

(assert (not bs!2153))

(assert (not b_lambda!4515))

(assert (not b_next!2073))

(assert (not b!8902))

(assert (not b_next!2091))

(assert (not bs!2162))

(assert (not b_lambda!4529))

(assert b_and!3447)

(assert (not b_next!2113))

(assert (not bs!2148))

(assert b_and!3461)

(assert (not b!8894))

(assert (not b_lambda!4489))

(assert (not b_lambda!4521))

(assert b_and!3457)

(assert (not bs!2157))

(assert b_and!3429)

(assert (not b_lambda!4513))

(assert (not bs!2147))

(assert (not bs!2156))

(assert (not bs!2154))

(assert (not b_lambda!4519))

(assert (not bs!2158))

(assert (not bs!2160))

(assert b_and!3463)

(assert (not b_next!2115))

(assert (not b_lambda!4525))

(assert (not bs!2144))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2111))

(assert b_and!3459)

(assert (not b_next!2109))

(assert (not b_next!2073))

(assert (not b_next!2091))

(assert b_and!3447)

(assert (not b_next!2113))

(assert b_and!3461)

(assert b_and!3457)

(assert b_and!3429)

(assert b_and!3463)

(assert (not b_next!2115))

(check-sat)

(pop 1)

