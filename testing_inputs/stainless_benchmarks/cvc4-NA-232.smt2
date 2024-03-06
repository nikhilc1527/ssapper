; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1772 () Bool)

(assert start!1772)

(declare-fun b_free!921 () Bool)

(declare-fun b_next!2117 () Bool)

(assert (=> start!1772 (= b_free!921 (not b_next!2117))))

(declare-fun tp!1512 () Bool)

(declare-fun b_and!3465 () Bool)

(assert (=> start!1772 (= tp!1512 b_and!3465)))

(declare-fun b_free!923 () Bool)

(declare-fun b_next!2119 () Bool)

(assert (=> start!1772 (= b_free!923 (not b_next!2119))))

(declare-fun tp!1511 () Bool)

(declare-fun b_and!3467 () Bool)

(assert (=> start!1772 (= tp!1511 b_and!3467)))

(declare-fun b!8923 () Bool)

(declare-fun b_free!925 () Bool)

(declare-fun b_next!2121 () Bool)

(assert (=> b!8923 (= b_free!925 (not b_next!2121))))

(declare-fun tp!1513 () Bool)

(declare-fun b_and!3469 () Bool)

(assert (=> b!8923 (= tp!1513 b_and!3469)))

(declare-fun b_free!927 () Bool)

(declare-fun b_next!2123 () Bool)

(assert (=> b!8923 (= b_free!927 (not b_next!2123))))

(declare-fun tp!1510 () Bool)

(declare-fun b_and!3471 () Bool)

(assert (=> b!8923 (= tp!1510 b_and!3471)))

(declare-fun f!585 () Int)

(declare-fun b_next!2125 () Bool)

(declare-fun lambda!2120 () Int)

(assert (=> start!1772 (= b_next!2117 (or (and start!1772 (= lambda!2120 f!585)) b_next!2125))))

(declare-fun b!8922 () Bool)

(assert (=> b!8922 true))

(declare-fun order!113 () Int)

(declare-fun lambda!2121 () Int)

(declare-fun order!115 () Int)

(declare-fun dynLambda!261 (Int Int) Int)

(declare-fun dynLambda!262 (Int Int) Int)

(assert (=> b!8922 (< (dynLambda!261 order!113 f!585) (dynLambda!262 order!115 lambda!2121))))

(assert (=> b!8922 true))

(declare-fun b_next!2127 () Bool)

(declare-datatypes () ((Balance!183 (Balance!184 (extraOpen!132 Int) (extraClose!132 Int)))))

(declare-datatypes () ((EqProof!70 (EqProof!71 (x!4885 Int) (y!546 Int)))))

(declare-fun thiss!857 () EqProof!70)

(assert (=> b!8923 (= b_next!2121 (or (and b!8922 (= lambda!2121 (x!4885 thiss!857))) b_next!2127))))

(declare-fun b_next!2129 () Bool)

(assert (=> b!8923 (= b_next!2123 (or (and b!8922 (= lambda!2121 (y!546 thiss!857))) b_next!2129))))

(declare-fun b!8918 () Bool)

(declare-fun m!11811 () Bool)

(assert (=> b!8918 m!11811))

(declare-fun lambda!2122 () Int)

(declare-fun proof!235 () Int)

(declare-fun dynLambda!263 (Int) Bool)

(assert (=> (and start!1772 b!8918 (= (dynLambda!263 lambda!2122) (dynLambda!263 proof!235))) (= lambda!2122 proof!235)))

(declare-fun b_next!2131 () Bool)

(assert (=> start!1772 (= b_next!2119 (or (and b!8918 (= lambda!2122 proof!235)) b_next!2131))))

(declare-fun res!2809 () Bool)

(declare-fun e!5210 () Bool)

(assert (=> b!8918 (=> (not res!2809) (not e!5210))))

(assert (=> b!8918 (= res!2809 (= proof!235 lambda!2122))))

(declare-fun b!8919 () Bool)

(declare-fun res!2808 () Bool)

(assert (=> b!8919 (=> (not res!2808) (not e!5210))))

(declare-datatypes () ((ProofOps!130 (ProofOps!131 (prop!179 Bool)))))

(declare-fun thiss!829 () ProofOps!130)

(declare-datatypes () ((Tree!54 (Branch!45 (left!407 Tree!54) (right!410 Tree!54)) (Leaf!127 (value!1296 Balance!183)))))

(declare-fun tree!25 () Tree!54)

(declare-fun fold!30 (Tree!54 Int) Balance!183)

(declare-datatypes () ((List!208 (Nil!206) (Cons!205 (head!423 Balance!183) (tail!435 List!208)))))

(declare-fun foldRight1!61 (List!208 Int) Balance!183)

(declare-fun toList!54 (Tree!54) List!208)

(assert (=> b!8919 (= res!2808 (= thiss!829 (ProofOps!131 (= (fold!30 tree!25 f!585) (foldRight1!61 (toList!54 tree!25) f!585)))))))

(declare-fun b!8920 () Bool)

(declare-fun res!2806 () Bool)

(assert (=> b!8920 (=> (not res!2806) (not e!5210))))

(assert (=> b!8920 (= res!2806 (not (is-Leaf!127 tree!25)))))

(declare-fun res!2810 () Bool)

(assert (=> start!1772 (=> (not res!2810) (not e!5210))))

(assert (=> start!1772 (= res!2810 (= f!585 lambda!2120))))

(assert (=> start!1772 e!5210))

(assert (=> start!1772 true))

(assert (=> start!1772 tp!1512))

(assert (=> start!1772 tp!1511))

(declare-fun e!5211 () Bool)

(declare-fun inv!313 (EqProof!70) Bool)

(assert (=> start!1772 (and (inv!313 thiss!857) e!5211)))

(declare-fun b!8921 () Bool)

(assert (=> b!8921 (= e!5210 (not (dynLambda!263 proof!235)))))

(declare-fun res!2807 () Bool)

(assert (=> b!8922 (=> (not res!2807) (not e!5210))))

(assert (=> b!8922 (= res!2807 (= thiss!857 (EqProof!71 lambda!2121 lambda!2121)))))

(assert (=> b!8923 (= e!5211 (and tp!1513 tp!1510))))

(assert (= (and start!1772 res!2810) b!8919))

(assert (= (and b!8919 res!2808) b!8920))

(assert (= (and b!8920 res!2806) b!8922))

(assert (= (and b!8922 res!2807) b!8918))

(assert (= (and b!8918 res!2809) b!8921))

(assert (= start!1772 b!8923))

(declare-fun b_lambda!4531 () Bool)

(assert (=> (not b_lambda!4531) (not b!8921)))

(declare-fun t!2225 () Bool)

(declare-fun tb!1885 () Bool)

(assert (=> (and start!1772 (= proof!235 proof!235) t!2225) tb!1885))

(declare-fun result!1925 () Bool)

(assert (=> tb!1885 (= result!1925 true)))

(assert (=> b!8921 t!2225))

(declare-fun b_and!3473 () Bool)

(assert (= b_and!3467 (and (=> t!2225 result!1925) b_and!3473)))

(declare-fun m!11813 () Bool)

(assert (=> b!8919 m!11813))

(declare-fun m!11815 () Bool)

(assert (=> b!8919 m!11815))

(assert (=> b!8919 m!11815))

(declare-fun m!11817 () Bool)

(assert (=> b!8919 m!11817))

(declare-fun m!11819 () Bool)

(assert (=> start!1772 m!11819))

(declare-fun m!11821 () Bool)

(assert (=> b!8921 m!11821))

(push 1)

(assert (not b!8919))

(assert (not b!8918))

(assert (not b_lambda!4531))

(assert (not b_next!2127))

(assert (not start!1772))

(assert (not b_next!2125))

(assert b_and!3469)

(assert b_and!3465)

(assert b_and!3473)

(assert b_and!3471)

(assert (not b_next!2131))

(assert (not b_next!2129))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2127))

(assert (not b_next!2125))

(assert b_and!3469)

(assert b_and!3465)

(assert b_and!3473)

(assert b_and!3471)

(assert (not b_next!2131))

(assert (not b_next!2129))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4533 () Bool)

(assert (= b_lambda!4531 (or (and b!8918 (= lambda!2122 proof!235)) (and start!1772 b_free!923) b_lambda!4533)))

(declare-fun bs!2164 () Bool)

(declare-fun d!7047 () Bool)

(assert (= bs!2164 (and d!7047 b!8918)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2164 (= (dynLambda!263 lambda!2122) trivial!1)))

(assert (=> (and b!8918 (= lambda!2122 proof!235) b!8921) d!7047))

(push 1)

(assert (not b!8919))

(assert (not b!8918))

(assert (not b_next!2127))

(assert (not start!1772))

(assert (not b_next!2125))

(assert b_and!3469)

(assert b_and!3465)

(assert (not b_lambda!4533))

(assert b_and!3473)

(assert b_and!3471)

(assert (not b_next!2131))

(assert (not b_next!2129))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2127))

(assert (not b_next!2125))

(assert b_and!3469)

(assert b_and!3465)

(assert b_and!3473)

(assert b_and!3471)

(assert (not b_next!2131))

(assert (not b_next!2129))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7049 () Bool)

(assert (=> d!7049 (= trivial!1 true)))

(assert (=> b!8918 d!7049))

(declare-fun d!7051 () Bool)

(declare-fun dynLambda!264 (Int) Balance!183)

(assert (=> d!7051 (= (inv!313 thiss!857) (= (dynLambda!264 (x!4885 thiss!857)) (dynLambda!264 (y!546 thiss!857))))))

(declare-fun b_lambda!4535 () Bool)

(assert (=> (not b_lambda!4535) (not d!7051)))

(declare-fun t!2227 () Bool)

(declare-fun tb!1887 () Bool)

(assert (=> (and b!8923 (= (x!4885 thiss!857) (x!4885 thiss!857)) t!2227) tb!1887))

(declare-fun result!1927 () Bool)

(assert (=> tb!1887 (= result!1927 true)))

(assert (=> d!7051 t!2227))

(declare-fun b_and!3475 () Bool)

(assert (= b_and!3469 (and (=> t!2227 result!1927) b_and!3475)))

(declare-fun t!2229 () Bool)

(declare-fun tb!1889 () Bool)

(assert (=> (and b!8923 (= (y!546 thiss!857) (x!4885 thiss!857)) t!2229) tb!1889))

(declare-fun result!1929 () Bool)

(assert (=> tb!1889 (= result!1929 true)))

(assert (=> d!7051 t!2229))

(declare-fun b_and!3477 () Bool)

(assert (= b_and!3471 (and (=> t!2229 result!1929) b_and!3477)))

(declare-fun b_lambda!4537 () Bool)

(assert (=> (not b_lambda!4537) (not d!7051)))

(declare-fun t!2231 () Bool)

(declare-fun tb!1891 () Bool)

(assert (=> (and b!8923 (= (x!4885 thiss!857) (y!546 thiss!857)) t!2231) tb!1891))

(declare-fun result!1931 () Bool)

(assert (=> tb!1891 (= result!1931 true)))

(assert (=> d!7051 t!2231))

(declare-fun b_and!3479 () Bool)

(assert (= b_and!3475 (and (=> t!2231 result!1931) b_and!3479)))

(declare-fun t!2233 () Bool)

(declare-fun tb!1893 () Bool)

(assert (=> (and b!8923 (= (y!546 thiss!857) (y!546 thiss!857)) t!2233) tb!1893))

(declare-fun result!1933 () Bool)

(assert (=> tb!1893 (= result!1933 true)))

(assert (=> d!7051 t!2233))

(declare-fun b_and!3481 () Bool)

(assert (= b_and!3477 (and (=> t!2233 result!1933) b_and!3481)))

(declare-fun m!11823 () Bool)

(assert (=> d!7051 m!11823))

(declare-fun m!11825 () Bool)

(assert (=> d!7051 m!11825))

(assert (=> start!1772 d!7051))

(declare-fun bs!2165 () Bool)

(declare-fun b!8933 () Bool)

(assert (= bs!2165 (and b!8933 b!8922)))

(declare-fun lambda!2127 () Int)

(assert (=> bs!2165 (= (= (left!407 tree!25) tree!25) (= lambda!2127 lambda!2121))))

(assert (=> b!8933 true))

(assert (=> b!8933 (< (dynLambda!261 order!113 f!585) (dynLambda!262 order!115 lambda!2127))))

(assert (=> b!8933 true))

(declare-fun b_next!2133 () Bool)

(assert (=> b!8923 (= b_next!2127 (or (and b!8933 (= lambda!2127 (x!4885 thiss!857))) b_next!2133))))

(declare-fun b_next!2135 () Bool)

(assert (=> b!8923 (= b_next!2129 (or (and b!8933 (= lambda!2127 (y!546 thiss!857))) b_next!2135))))

(declare-fun lambda!2128 () Int)

(assert (=> bs!2165 (= (= (right!410 tree!25) tree!25) (= lambda!2128 lambda!2121))))

(assert (=> b!8933 (= (= (right!410 tree!25) (left!407 tree!25)) (= lambda!2128 lambda!2127))))

(assert (=> b!8933 true))

(assert (=> b!8933 (< (dynLambda!261 order!113 f!585) (dynLambda!262 order!115 lambda!2128))))

(assert (=> b!8933 true))

(declare-fun b_next!2137 () Bool)

(assert (=> b!8923 (= b_next!2133 (or (and b!8933 (= lambda!2128 (x!4885 thiss!857))) b_next!2137))))

(declare-fun b_next!2139 () Bool)

(assert (=> b!8923 (= b_next!2135 (or (and b!8933 (= lambda!2128 (y!546 thiss!857))) b_next!2139))))

(declare-fun e!5230 () Balance!183)

(declare-datatypes () ((tuple2!70 (tuple2!71 (_1!35 Balance!183) (_2!35 Balance!183)))))

(declare-fun lt!1589 () tuple2!70)

(declare-fun dynLambda!265 (Int Balance!183 Balance!183) Balance!183)

(assert (=> b!8933 (= e!5230 (dynLambda!265 f!585 (_1!35 lt!1589) (_2!35 lt!1589)))))

(assert (=> b!8933 (= lt!1589 (tuple2!71 (dynLambda!264 lambda!2127) (dynLambda!264 lambda!2128)))))

(declare-fun d!7053 () Bool)

(declare-fun c!2967 () Bool)

(assert (=> d!7053 (= c!2967 (is-Leaf!127 tree!25))))

(assert (=> d!7053 (= (fold!30 tree!25 f!585) e!5230)))

(declare-fun b!8932 () Bool)

(assert (=> b!8932 (= e!5230 (value!1296 tree!25))))

(assert (= (and d!7053 c!2967) b!8932))

(assert (= (and d!7053 (not c!2967)) b!8933))

(declare-fun b_lambda!4539 () Bool)

(assert (=> (not b_lambda!4539) (not b!8933)))

(declare-fun t!2235 () Bool)

(declare-fun tb!1895 () Bool)

(assert (=> (and start!1772 (= f!585 f!585) t!2235) tb!1895))

(declare-fun result!1935 () Bool)

(assert (=> tb!1895 (= result!1935 true)))

(assert (=> b!8933 t!2235))

(declare-fun b_and!3483 () Bool)

(assert (= b_and!3465 (and (=> t!2235 result!1935) b_and!3483)))

(declare-fun b_lambda!4541 () Bool)

(assert (=> (not b_lambda!4541) (not b!8933)))

(declare-fun b_lambda!4543 () Bool)

(assert (=> (not b_lambda!4543) (not b!8933)))

(declare-fun m!11827 () Bool)

(assert (=> b!8933 m!11827))

(declare-fun m!11829 () Bool)

(assert (=> b!8933 m!11829))

(declare-fun m!11831 () Bool)

(assert (=> b!8933 m!11831))

(assert (=> b!8919 d!7053))

(declare-fun d!7055 () Bool)

(declare-fun c!2970 () Bool)

(assert (=> d!7055 (= c!2970 (and (is-Cons!205 (toList!54 tree!25)) (is-Nil!206 (tail!435 (toList!54 tree!25)))))))

(declare-fun e!5233 () Balance!183)

(assert (=> d!7055 (= (foldRight1!61 (toList!54 tree!25) f!585) e!5233)))

(declare-fun b!8938 () Bool)

(assert (=> b!8938 (= e!5233 (head!423 (toList!54 tree!25)))))

(declare-fun b!8939 () Bool)

(assert (=> b!8939 (= e!5233 (dynLambda!265 f!585 (head!423 (toList!54 tree!25)) (foldRight1!61 (tail!435 (toList!54 tree!25)) f!585)))))

(assert (= (and d!7055 c!2970) b!8938))

(assert (= (and d!7055 (not c!2970)) b!8939))

(declare-fun b_lambda!4545 () Bool)

(assert (=> (not b_lambda!4545) (not b!8939)))

(declare-fun t!2237 () Bool)

(declare-fun tb!1897 () Bool)

(assert (=> (and start!1772 (= f!585 f!585) t!2237) tb!1897))

(declare-fun result!1937 () Bool)

(assert (=> tb!1897 (= result!1937 true)))

(assert (=> b!8939 t!2237))

(declare-fun b_and!3485 () Bool)

(assert (= b_and!3483 (and (=> t!2237 result!1937) b_and!3485)))

(declare-fun m!11833 () Bool)

(assert (=> b!8939 m!11833))

(assert (=> b!8939 m!11833))

(declare-fun m!11835 () Bool)

(assert (=> b!8939 m!11835))

(assert (=> b!8919 d!7055))

(declare-fun d!7057 () Bool)

(declare-fun lt!1592 () List!208)

(declare-fun isEmpty!168 (List!208) Bool)

(assert (=> d!7057 (not (isEmpty!168 lt!1592))))

(declare-fun e!5236 () List!208)

(assert (=> d!7057 (= lt!1592 e!5236)))

(declare-fun c!2973 () Bool)

(assert (=> d!7057 (= c!2973 (is-Leaf!127 tree!25))))

(assert (=> d!7057 (= (toList!54 tree!25) lt!1592)))

(declare-fun b!8944 () Bool)

(assert (=> b!8944 (= e!5236 (Cons!205 (value!1296 tree!25) Nil!206))))

(declare-fun b!8945 () Bool)

(declare-fun append!89 (List!208 List!208) List!208)

(assert (=> b!8945 (= e!5236 (append!89 (toList!54 (left!407 tree!25)) (toList!54 (right!410 tree!25))))))

(assert (= (and d!7057 c!2973) b!8944))

(assert (= (and d!7057 (not c!2973)) b!8945))

(declare-fun m!11837 () Bool)

(assert (=> d!7057 m!11837))

(declare-fun m!11839 () Bool)

(assert (=> b!8945 m!11839))

(declare-fun m!11841 () Bool)

(assert (=> b!8945 m!11841))

(assert (=> b!8945 m!11839))

(assert (=> b!8945 m!11841))

(declare-fun m!11843 () Bool)

(assert (=> b!8945 m!11843))

(assert (=> b!8919 d!7057))

(declare-fun b_lambda!4547 () Bool)

(assert (= b_lambda!4537 (or (and b!8922 (= lambda!2121 (y!546 thiss!857))) (and b!8923 b_free!925 (= (x!4885 thiss!857) (y!546 thiss!857))) (and b!8933 (= lambda!2127 (y!546 thiss!857))) (and b!8923 b_free!927) (and b!8933 (= lambda!2128 (y!546 thiss!857))) b_lambda!4547)))

(declare-fun bs!2166 () Bool)

(declare-fun d!7059 () Bool)

(assert (= bs!2166 (and d!7059 b!8933)))

(assert (=> bs!2166 (= (dynLambda!264 lambda!2127) (fold!30 (left!407 tree!25) f!585))))

(declare-fun m!11845 () Bool)

(assert (=> bs!2166 m!11845))

(assert (=> (and b!8933 (= lambda!2127 (y!546 thiss!857)) d!7051) d!7059))

(declare-fun bs!2167 () Bool)

(declare-fun d!7061 () Bool)

(assert (= bs!2167 (and d!7061 b!8922)))

(assert (=> bs!2167 (= (dynLambda!264 lambda!2121) (fold!30 tree!25 f!585))))

(assert (=> bs!2167 m!11813))

(assert (=> (and b!8922 (= lambda!2121 (y!546 thiss!857)) d!7051) d!7061))

(declare-fun bs!2168 () Bool)

(declare-fun d!7063 () Bool)

(assert (= bs!2168 (and d!7063 b!8933)))

(assert (=> bs!2168 (= (dynLambda!264 lambda!2128) (fold!30 (right!410 tree!25) f!585))))

(declare-fun m!11847 () Bool)

(assert (=> bs!2168 m!11847))

(assert (=> (and b!8933 (= lambda!2128 (y!546 thiss!857)) d!7051) d!7063))

(declare-fun b_lambda!4549 () Bool)

(assert (= b_lambda!4545 (or (and start!1772 (= lambda!2120 f!585)) (and start!1772 b_free!921) b_lambda!4549)))

(declare-fun bs!2169 () Bool)

(declare-fun d!7065 () Bool)

(assert (= bs!2169 (and d!7065 start!1772)))

(declare-fun ++!3 (Balance!183 Balance!183) Balance!183)

(assert (=> bs!2169 (= (dynLambda!265 lambda!2120 (head!423 (toList!54 tree!25)) (foldRight1!61 (tail!435 (toList!54 tree!25)) f!585)) (++!3 (head!423 (toList!54 tree!25)) (foldRight1!61 (tail!435 (toList!54 tree!25)) f!585)))))

(assert (=> bs!2169 m!11833))

(declare-fun m!11849 () Bool)

(assert (=> bs!2169 m!11849))

(assert (=> (and start!1772 (= lambda!2120 f!585) b!8939) d!7065))

(declare-fun b_lambda!4551 () Bool)

(assert (= b_lambda!4539 (or (and start!1772 (= lambda!2120 f!585)) (and start!1772 b_free!921) b_lambda!4551)))

(declare-fun bs!2170 () Bool)

(declare-fun d!7067 () Bool)

(assert (= bs!2170 (and d!7067 start!1772)))

(assert (=> bs!2170 (= (dynLambda!265 lambda!2120 (_1!35 lt!1589) (_2!35 lt!1589)) (++!3 (_1!35 lt!1589) (_2!35 lt!1589)))))

(declare-fun m!11851 () Bool)

(assert (=> bs!2170 m!11851))

(assert (=> (and start!1772 (= lambda!2120 f!585) b!8933) d!7067))

(declare-fun b_lambda!4553 () Bool)

(assert (= b_lambda!4543 (or b!8933 b_lambda!4553)))

(declare-fun bs!2171 () Bool)

(declare-fun d!7069 () Bool)

(assert (= bs!2171 (and d!7069 b!8933)))

(assert (=> bs!2171 (= (dynLambda!264 lambda!2128) (fold!30 (right!410 tree!25) f!585))))

(assert (=> bs!2171 m!11847))

(assert (=> b!8933 d!7069))

(declare-fun b_lambda!4555 () Bool)

(assert (= b_lambda!4541 (or b!8933 b_lambda!4555)))

(declare-fun bs!2172 () Bool)

(declare-fun d!7071 () Bool)

(assert (= bs!2172 (and d!7071 b!8933)))

(assert (=> bs!2172 (= (dynLambda!264 lambda!2127) (fold!30 (left!407 tree!25) f!585))))

(assert (=> bs!2172 m!11845))

(assert (=> b!8933 d!7071))

(declare-fun b_lambda!4557 () Bool)

(assert (= b_lambda!4535 (or (and b!8922 (= lambda!2121 (x!4885 thiss!857))) (and b!8923 b_free!927 (= (y!546 thiss!857) (x!4885 thiss!857))) (and b!8923 b_free!925) (and b!8933 (= lambda!2127 (x!4885 thiss!857))) (and b!8933 (= lambda!2128 (x!4885 thiss!857))) b_lambda!4557)))

(declare-fun bs!2173 () Bool)

(declare-fun d!7073 () Bool)

(assert (= bs!2173 (and d!7073 b!8933)))

(assert (=> bs!2173 (= (dynLambda!264 lambda!2127) (fold!30 (left!407 tree!25) f!585))))

(assert (=> bs!2173 m!11845))

(assert (=> (and b!8933 (= lambda!2127 (x!4885 thiss!857)) d!7051) d!7073))

(declare-fun bs!2174 () Bool)

(declare-fun d!7075 () Bool)

(assert (= bs!2174 (and d!7075 b!8933)))

(assert (=> bs!2174 (= (dynLambda!264 lambda!2128) (fold!30 (right!410 tree!25) f!585))))

(assert (=> bs!2174 m!11847))

(assert (=> (and b!8933 (= lambda!2128 (x!4885 thiss!857)) d!7051) d!7075))

(declare-fun bs!2175 () Bool)

(declare-fun d!7077 () Bool)

(assert (= bs!2175 (and d!7077 b!8922)))

(assert (=> bs!2175 (= (dynLambda!264 lambda!2121) (fold!30 tree!25 f!585))))

(assert (=> bs!2175 m!11813))

(assert (=> (and b!8922 (= lambda!2121 (x!4885 thiss!857)) d!7051) d!7077))

(push 1)

(assert (not bs!2171))

(assert (not b_lambda!4551))

(assert (not bs!2174))

(assert (not b_next!2137))

(assert (not b!8945))

(assert (not b_next!2125))

(assert b_and!3481)

(assert (not bs!2167))

(assert (not b_lambda!4557))

(assert (not b_next!2139))

(assert (not b_lambda!4547))

(assert (not bs!2169))

(assert (not b_lambda!4533))

(assert (not bs!2172))

(assert (not b_lambda!4549))

(assert b_and!3479)

(assert (not bs!2166))

(assert b_and!3485)

(assert (not bs!2173))

(assert b_and!3473)

(assert (not b_lambda!4553))

(assert (not bs!2175))

(assert (not bs!2168))

(assert (not b_next!2131))

(assert (not b!8939))

(assert (not bs!2170))

(assert (not d!7057))

(assert (not b_lambda!4555))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2137))

(assert (not b_next!2125))

(assert b_and!3481)

(assert (not b_next!2139))

(assert b_and!3479)

(assert b_and!3485)

(assert b_and!3473)

(assert (not b_next!2131))

(check-sat)

(pop 1)

