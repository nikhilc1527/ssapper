; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1782 () Bool)

(assert start!1782)

(declare-fun b_free!929 () Bool)

(declare-fun b_next!2141 () Bool)

(assert (=> start!1782 (= b_free!929 (not b_next!2141))))

(declare-fun tp!1532 () Bool)

(declare-fun b_and!3487 () Bool)

(assert (=> start!1782 (= tp!1532 b_and!3487)))

(declare-fun b_free!931 () Bool)

(declare-fun b_next!2143 () Bool)

(assert (=> start!1782 (= b_free!931 (not b_next!2143))))

(declare-fun tp!1533 () Bool)

(declare-fun b_and!3489 () Bool)

(assert (=> start!1782 (= tp!1533 b_and!3489)))

(declare-fun b!8965 () Bool)

(declare-fun b_free!933 () Bool)

(declare-fun b_next!2145 () Bool)

(assert (=> b!8965 (= b_free!933 (not b_next!2145))))

(declare-fun tp!1534 () Bool)

(declare-fun b_and!3491 () Bool)

(assert (=> b!8965 (= tp!1534 b_and!3491)))

(declare-fun b_free!935 () Bool)

(declare-fun b_next!2147 () Bool)

(assert (=> b!8965 (= b_free!935 (not b_next!2147))))

(declare-fun tp!1529 () Bool)

(declare-fun b_and!3493 () Bool)

(assert (=> b!8965 (= tp!1529 b_and!3493)))

(declare-fun b!8967 () Bool)

(declare-fun b_free!937 () Bool)

(declare-fun b_next!2149 () Bool)

(assert (=> b!8967 (= b_free!937 (not b_next!2149))))

(declare-fun tp!1531 () Bool)

(declare-fun b_and!3495 () Bool)

(assert (=> b!8967 (= tp!1531 b_and!3495)))

(declare-fun b_free!939 () Bool)

(declare-fun b_next!2151 () Bool)

(assert (=> b!8967 (= b_free!939 (not b_next!2151))))

(declare-fun tp!1530 () Bool)

(declare-fun b_and!3497 () Bool)

(assert (=> b!8967 (= tp!1530 b_and!3497)))

(declare-fun b_free!941 () Bool)

(declare-fun b_next!2153 () Bool)

(assert (=> b!8967 (= b_free!941 (not b_next!2153))))

(declare-fun tp!1528 () Bool)

(declare-fun b_and!3499 () Bool)

(assert (=> b!8967 (= tp!1528 b_and!3499)))

(declare-fun b_next!2155 () Bool)

(declare-fun f!585 () Int)

(declare-fun lambda!2143 () Int)

(assert (=> start!1782 (= b_next!2141 (or (and start!1782 (= lambda!2143 f!585)) b_next!2155))))

(declare-fun b!8963 () Bool)

(assert (=> b!8963 true))

(declare-fun order!119 () Int)

(declare-fun order!117 () Int)

(declare-fun lambda!2144 () Int)

(declare-fun dynLambda!266 (Int Int) Int)

(declare-fun dynLambda!267 (Int Int) Int)

(assert (=> b!8963 (< (dynLambda!266 order!117 f!585) (dynLambda!267 order!119 lambda!2144))))

(assert (=> b!8963 true))

(declare-datatypes () ((Balance!185 (Balance!186 (extraOpen!133 Int) (extraClose!133 Int)))))

(declare-datatypes () ((EqProof!72 (EqProof!73 (x!4926 Int) (y!549 Int)))))

(declare-fun thiss!860 () EqProof!72)

(declare-fun b_next!2157 () Bool)

(assert (=> b!8965 (= b_next!2145 (or (and b!8963 (= lambda!2144 (x!4926 thiss!860))) b_next!2157))))

(declare-fun b_next!2159 () Bool)

(assert (=> b!8965 (= b_next!2147 (or (and b!8963 (= lambda!2144 (y!549 thiss!860))) b_next!2159))))

(declare-fun b_next!2161 () Bool)

(declare-datatypes () ((EqEvidence!148 (EqEvidence!149 (x!4927 Int) (y!550 Int) (evidence!141 Int)))))

(declare-fun thiss!856 () EqEvidence!148)

(assert (=> b!8967 (= b_next!2149 (or (and b!8963 (= lambda!2144 (x!4927 thiss!856))) b_next!2161))))

(declare-fun b_next!2163 () Bool)

(assert (=> b!8967 (= b_next!2151 (or (and b!8963 (= lambda!2144 (y!550 thiss!856))) b_next!2163))))

(declare-fun m!11853 () Bool)

(assert (=> b!8963 m!11853))

(declare-fun lambda!2145 () Int)

(declare-fun proof!236 () Int)

(declare-fun dynLambda!268 (Int) Bool)

(assert (=> (and start!1782 b!8963 (= (dynLambda!268 lambda!2145) (dynLambda!268 proof!236))) (= lambda!2145 proof!236)))

(assert (=> (and b!8967 b!8963 (= (dynLambda!268 lambda!2145) (dynLambda!268 (evidence!141 thiss!856)))) (= lambda!2145 (evidence!141 thiss!856))))

(declare-fun b_next!2165 () Bool)

(assert (=> start!1782 (= b_next!2143 (or (and b!8963 (= lambda!2145 proof!236)) b_next!2165))))

(declare-fun b_next!2167 () Bool)

(assert (=> b!8967 (= b_next!2153 (or (and b!8963 (= lambda!2145 (evidence!141 thiss!856))) b_next!2167))))

(declare-fun bs!2177 () Bool)

(declare-fun b!8968 () Bool)

(assert (= bs!2177 (and b!8968 b!8963)))

(declare-fun lambda!2146 () Int)

(assert (=> bs!2177 (not (= lambda!2146 lambda!2144))))

(assert (=> b!8968 true))

(assert (=> b!8968 (< (dynLambda!266 order!117 f!585) (dynLambda!267 order!119 lambda!2146))))

(assert (=> b!8968 true))

(declare-fun b_next!2169 () Bool)

(assert (=> b!8965 (= b_next!2157 (or (and b!8968 (= lambda!2146 (x!4926 thiss!860))) b_next!2169))))

(declare-fun b_next!2171 () Bool)

(assert (=> b!8965 (= b_next!2159 (or (and b!8968 (= lambda!2146 (y!549 thiss!860))) b_next!2171))))

(declare-fun b_next!2173 () Bool)

(assert (=> b!8967 (= b_next!2161 (or (and b!8968 (= lambda!2146 (x!4927 thiss!856))) b_next!2173))))

(declare-fun b_next!2175 () Bool)

(assert (=> b!8967 (= b_next!2163 (or (and b!8968 (= lambda!2146 (y!550 thiss!856))) b_next!2175))))

(declare-fun bs!2178 () Bool)

(declare-fun b!8969 () Bool)

(assert (= bs!2178 (and b!8969 b!8963)))

(declare-fun lambda!2147 () Int)

(assert (=> bs!2178 (not (= lambda!2147 lambda!2145))))

(assert (=> b!8969 true))

(declare-fun b_next!2177 () Bool)

(assert (=> start!1782 (= b_next!2165 (or (and b!8969 (= lambda!2147 proof!236)) b_next!2177))))

(declare-fun b_next!2179 () Bool)

(assert (=> b!8967 (= b_next!2167 (or (and b!8969 (= lambda!2147 (evidence!141 thiss!856))) b_next!2179))))

(declare-fun b!8962 () Bool)

(declare-fun res!2824 () Bool)

(declare-fun e!5245 () Bool)

(assert (=> b!8962 (=> (not res!2824) (not e!5245))))

(declare-datatypes () ((Tree!55 (Branch!46 (left!411 Tree!55) (right!414 Tree!55)) (Leaf!128 (value!1297 Balance!185)))))

(declare-fun tree!25 () Tree!55)

(assert (=> b!8962 (= res!2824 (not (is-Leaf!128 tree!25)))))

(declare-fun res!2829 () Bool)

(assert (=> start!1782 (=> (not res!2829) (not e!5245))))

(assert (=> start!1782 (= res!2829 (= f!585 lambda!2143))))

(assert (=> start!1782 e!5245))

(assert (=> start!1782 true))

(assert (=> start!1782 tp!1532))

(declare-fun e!5244 () Bool)

(declare-fun inv!314 (EqProof!72) Bool)

(assert (=> start!1782 (and (inv!314 thiss!860) e!5244)))

(assert (=> start!1782 tp!1533))

(declare-fun e!5243 () Bool)

(declare-fun inv!315 (EqEvidence!148) Bool)

(assert (=> start!1782 (and (inv!315 thiss!856) e!5243)))

(declare-fun res!2827 () Bool)

(assert (=> b!8963 (=> (not res!2827) (not e!5245))))

(assert (=> b!8963 (= res!2827 (= thiss!856 (EqEvidence!149 lambda!2144 lambda!2144 lambda!2145)))))

(declare-fun b!8964 () Bool)

(assert (=> b!8964 (= e!5245 (not (dynLambda!268 proof!236)))))

(assert (=> b!8965 (= e!5244 (and tp!1534 tp!1529))))

(declare-fun b!8966 () Bool)

(declare-fun res!2825 () Bool)

(assert (=> b!8966 (=> (not res!2825) (not e!5245))))

(declare-datatypes () ((ProofOps!132 (ProofOps!133 (prop!180 Bool)))))

(declare-fun thiss!829 () ProofOps!132)

(declare-fun fold!31 (Tree!55 Int) Balance!185)

(declare-datatypes () ((List!209 (Nil!207) (Cons!206 (head!424 Balance!185) (tail!436 List!209)))))

(declare-fun foldRight1!62 (List!209 Int) Balance!185)

(declare-fun toList!55 (Tree!55) List!209)

(assert (=> b!8966 (= res!2825 (= thiss!829 (ProofOps!133 (= (fold!31 tree!25 f!585) (foldRight1!62 (toList!55 tree!25) f!585)))))))

(assert (=> b!8967 (= e!5243 (and tp!1531 tp!1530 tp!1528))))

(declare-fun res!2828 () Bool)

(assert (=> b!8968 (=> (not res!2828) (not e!5245))))

(assert (=> b!8968 (= res!2828 (= thiss!860 (EqProof!73 lambda!2146 lambda!2146)))))

(declare-fun res!2826 () Bool)

(assert (=> b!8969 (=> (not res!2826) (not e!5245))))

(assert (=> b!8969 (= res!2826 (= proof!236 lambda!2147))))

(assert (= (and start!1782 res!2829) b!8966))

(assert (= (and b!8966 res!2825) b!8962))

(assert (= (and b!8962 res!2824) b!8963))

(assert (= (and b!8963 res!2827) b!8968))

(assert (= (and b!8968 res!2828) b!8969))

(assert (= (and b!8969 res!2826) b!8964))

(assert (= start!1782 b!8965))

(assert (= start!1782 b!8967))

(declare-fun b_lambda!4559 () Bool)

(assert (=> (not b_lambda!4559) (not b!8964)))

(declare-fun t!2239 () Bool)

(declare-fun tb!1899 () Bool)

(assert (=> (and start!1782 (= proof!236 proof!236) t!2239) tb!1899))

(declare-fun result!1939 () Bool)

(assert (=> tb!1899 (= result!1939 true)))

(assert (=> b!8964 t!2239))

(declare-fun b_and!3501 () Bool)

(assert (= b_and!3489 (and (=> t!2239 result!1939) b_and!3501)))

(declare-fun tb!1901 () Bool)

(declare-fun t!2241 () Bool)

(assert (=> (and b!8967 (= (evidence!141 thiss!856) proof!236) t!2241) tb!1901))

(declare-fun result!1941 () Bool)

(assert (=> tb!1901 (= result!1941 true)))

(assert (=> b!8964 t!2241))

(declare-fun b_and!3503 () Bool)

(assert (= b_and!3499 (and (=> t!2241 result!1941) b_and!3503)))

(declare-fun m!11855 () Bool)

(assert (=> start!1782 m!11855))

(declare-fun m!11857 () Bool)

(assert (=> start!1782 m!11857))

(declare-fun m!11859 () Bool)

(assert (=> b!8964 m!11859))

(declare-fun m!11861 () Bool)

(assert (=> b!8966 m!11861))

(declare-fun m!11863 () Bool)

(assert (=> b!8966 m!11863))

(assert (=> b!8966 m!11863))

(declare-fun m!11865 () Bool)

(assert (=> b!8966 m!11865))

(push 1)

(assert (not b_lambda!4559))

(assert (not b_next!2173))

(assert (not b_next!2171))

(assert b_and!3497)

(assert (not b!8966))

(assert b_and!3493)

(assert (not b_next!2179))

(assert (not start!1782))

(assert b_and!3501)

(assert (not b_next!2177))

(assert b_and!3495)

(assert b_and!3503)

(assert (not b_next!2169))

(assert (not b_next!2175))

(assert (not b_next!2155))

(assert b_and!3487)

(assert (not b!8963))

(assert b_and!3491)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2173))

(assert (not b_next!2171))

(assert b_and!3497)

(assert b_and!3493)

(assert (not b_next!2179))

(assert b_and!3501)

(assert (not b_next!2177))

(assert b_and!3495)

(assert b_and!3503)

(assert (not b_next!2169))

(assert (not b_next!2175))

(assert (not b_next!2155))

(assert b_and!3487)

(assert b_and!3491)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4561 () Bool)

(assert (= b_lambda!4559 (or (and b!8963 (= lambda!2145 proof!236)) (and b!8969 (= lambda!2147 proof!236)) (and start!1782 b_free!931) (and b!8967 b_free!941 (= (evidence!141 thiss!856) proof!236)) b_lambda!4561)))

(declare-fun bs!2179 () Bool)

(declare-fun d!7079 () Bool)

(assert (= bs!2179 (and d!7079 b!8963)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2179 (= (dynLambda!268 lambda!2145) trivial!1)))

(assert (=> (and b!8963 (= lambda!2145 proof!236) b!8964) d!7079))

(declare-fun bs!2180 () Bool)

(declare-fun d!7081 () Bool)

(assert (= bs!2180 (and d!7081 b!8969)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!55) Bool)

(assert (=> bs!2180 (= (dynLambda!268 lambda!2147) (fold_foldRight1_equivalence!0 (left!411 tree!25)))))

(declare-fun m!11867 () Bool)

(assert (=> bs!2180 m!11867))

(assert (=> (and b!8969 (= lambda!2147 proof!236) b!8964) d!7081))

(push 1)

(assert (not b_next!2173))

(assert (not b_next!2171))

(assert b_and!3497)

(assert (not b!8966))

(assert b_and!3493)

(assert (not b_next!2179))

(assert (not start!1782))

(assert b_and!3501)

(assert (not b_next!2177))

(assert b_and!3495)

(assert b_and!3503)

(assert (not bs!2180))

(assert (not b_next!2169))

(assert (not b_next!2175))

(assert (not b_next!2155))

(assert (not b_lambda!4561))

(assert b_and!3487)

(assert (not b!8963))

(assert b_and!3491)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2173))

(assert (not b_next!2171))

(assert b_and!3497)

(assert b_and!3493)

(assert (not b_next!2179))

(assert b_and!3501)

(assert (not b_next!2177))

(assert b_and!3495)

(assert b_and!3503)

(assert (not b_next!2169))

(assert (not b_next!2175))

(assert (not b_next!2155))

(assert b_and!3487)

(assert b_and!3491)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7083 () Bool)

(declare-fun dynLambda!269 (Int) Balance!185)

(assert (=> d!7083 (= (inv!314 thiss!860) (= (dynLambda!269 (x!4926 thiss!860)) (dynLambda!269 (y!549 thiss!860))))))

(declare-fun b_lambda!4563 () Bool)

(assert (=> (not b_lambda!4563) (not d!7083)))

(declare-fun t!2243 () Bool)

(declare-fun tb!1903 () Bool)

(assert (=> (and b!8965 (= (x!4926 thiss!860) (x!4926 thiss!860)) t!2243) tb!1903))

(declare-fun result!1943 () Bool)

(assert (=> tb!1903 (= result!1943 true)))

(assert (=> d!7083 t!2243))

(declare-fun b_and!3505 () Bool)

(assert (= b_and!3491 (and (=> t!2243 result!1943) b_and!3505)))

(declare-fun t!2245 () Bool)

(declare-fun tb!1905 () Bool)

(assert (=> (and b!8965 (= (y!549 thiss!860) (x!4926 thiss!860)) t!2245) tb!1905))

(declare-fun result!1945 () Bool)

(assert (=> tb!1905 (= result!1945 true)))

(assert (=> d!7083 t!2245))

(declare-fun b_and!3507 () Bool)

(assert (= b_and!3493 (and (=> t!2245 result!1945) b_and!3507)))

(declare-fun t!2247 () Bool)

(declare-fun tb!1907 () Bool)

(assert (=> (and b!8967 (= (x!4927 thiss!856) (x!4926 thiss!860)) t!2247) tb!1907))

(declare-fun result!1947 () Bool)

(assert (=> tb!1907 (= result!1947 true)))

(assert (=> d!7083 t!2247))

(declare-fun b_and!3509 () Bool)

(assert (= b_and!3495 (and (=> t!2247 result!1947) b_and!3509)))

(declare-fun tb!1909 () Bool)

(declare-fun t!2249 () Bool)

(assert (=> (and b!8967 (= (y!550 thiss!856) (x!4926 thiss!860)) t!2249) tb!1909))

(declare-fun result!1949 () Bool)

(assert (=> tb!1909 (= result!1949 true)))

(assert (=> d!7083 t!2249))

(declare-fun b_and!3511 () Bool)

(assert (= b_and!3497 (and (=> t!2249 result!1949) b_and!3511)))

(declare-fun b_lambda!4565 () Bool)

(assert (=> (not b_lambda!4565) (not d!7083)))

(declare-fun t!2251 () Bool)

(declare-fun tb!1911 () Bool)

(assert (=> (and b!8965 (= (x!4926 thiss!860) (y!549 thiss!860)) t!2251) tb!1911))

(declare-fun result!1951 () Bool)

(assert (=> tb!1911 (= result!1951 true)))

(assert (=> d!7083 t!2251))

(declare-fun b_and!3513 () Bool)

(assert (= b_and!3505 (and (=> t!2251 result!1951) b_and!3513)))

(declare-fun t!2253 () Bool)

(declare-fun tb!1913 () Bool)

(assert (=> (and b!8965 (= (y!549 thiss!860) (y!549 thiss!860)) t!2253) tb!1913))

(declare-fun result!1953 () Bool)

(assert (=> tb!1913 (= result!1953 true)))

(assert (=> d!7083 t!2253))

(declare-fun b_and!3515 () Bool)

(assert (= b_and!3507 (and (=> t!2253 result!1953) b_and!3515)))

(declare-fun t!2255 () Bool)

(declare-fun tb!1915 () Bool)

(assert (=> (and b!8967 (= (x!4927 thiss!856) (y!549 thiss!860)) t!2255) tb!1915))

(declare-fun result!1955 () Bool)

(assert (=> tb!1915 (= result!1955 true)))

(assert (=> d!7083 t!2255))

(declare-fun b_and!3517 () Bool)

(assert (= b_and!3509 (and (=> t!2255 result!1955) b_and!3517)))

(declare-fun tb!1917 () Bool)

(declare-fun t!2257 () Bool)

(assert (=> (and b!8967 (= (y!550 thiss!856) (y!549 thiss!860)) t!2257) tb!1917))

(declare-fun result!1957 () Bool)

(assert (=> tb!1917 (= result!1957 true)))

(assert (=> d!7083 t!2257))

(declare-fun b_and!3519 () Bool)

(assert (= b_and!3511 (and (=> t!2257 result!1957) b_and!3519)))

(declare-fun m!11869 () Bool)

(assert (=> d!7083 m!11869))

(declare-fun m!11871 () Bool)

(assert (=> d!7083 m!11871))

(assert (=> start!1782 d!7083))

(declare-fun d!7085 () Bool)

(declare-fun res!2832 () Bool)

(declare-fun e!5248 () Bool)

(assert (=> d!7085 (=> (not res!2832) (not e!5248))))

(assert (=> d!7085 (= res!2832 (= (dynLambda!269 (x!4927 thiss!856)) (dynLambda!269 (y!550 thiss!856))))))

(assert (=> d!7085 (= (inv!315 thiss!856) e!5248)))

(declare-fun b!8978 () Bool)

(assert (=> b!8978 (= e!5248 (dynLambda!268 (evidence!141 thiss!856)))))

(assert (= (and d!7085 res!2832) b!8978))

(declare-fun b_lambda!4567 () Bool)

(assert (=> (not b_lambda!4567) (not d!7085)))

(declare-fun t!2259 () Bool)

(declare-fun tb!1919 () Bool)

(assert (=> (and b!8965 (= (x!4926 thiss!860) (x!4927 thiss!856)) t!2259) tb!1919))

(declare-fun result!1959 () Bool)

(assert (=> tb!1919 (= result!1959 true)))

(assert (=> d!7085 t!2259))

(declare-fun b_and!3521 () Bool)

(assert (= b_and!3513 (and (=> t!2259 result!1959) b_and!3521)))

(declare-fun t!2261 () Bool)

(declare-fun tb!1921 () Bool)

(assert (=> (and b!8965 (= (y!549 thiss!860) (x!4927 thiss!856)) t!2261) tb!1921))

(declare-fun result!1961 () Bool)

(assert (=> tb!1921 (= result!1961 true)))

(assert (=> d!7085 t!2261))

(declare-fun b_and!3523 () Bool)

(assert (= b_and!3515 (and (=> t!2261 result!1961) b_and!3523)))

(declare-fun t!2263 () Bool)

(declare-fun tb!1923 () Bool)

(assert (=> (and b!8967 (= (x!4927 thiss!856) (x!4927 thiss!856)) t!2263) tb!1923))

(declare-fun result!1963 () Bool)

(assert (=> tb!1923 (= result!1963 true)))

(assert (=> d!7085 t!2263))

(declare-fun b_and!3525 () Bool)

(assert (= b_and!3517 (and (=> t!2263 result!1963) b_and!3525)))

(declare-fun t!2265 () Bool)

(declare-fun tb!1925 () Bool)

(assert (=> (and b!8967 (= (y!550 thiss!856) (x!4927 thiss!856)) t!2265) tb!1925))

(declare-fun result!1965 () Bool)

(assert (=> tb!1925 (= result!1965 true)))

(assert (=> d!7085 t!2265))

(declare-fun b_and!3527 () Bool)

(assert (= b_and!3519 (and (=> t!2265 result!1965) b_and!3527)))

(declare-fun b_lambda!4569 () Bool)

(assert (=> (not b_lambda!4569) (not d!7085)))

(declare-fun t!2267 () Bool)

(declare-fun tb!1927 () Bool)

(assert (=> (and b!8965 (= (x!4926 thiss!860) (y!550 thiss!856)) t!2267) tb!1927))

(declare-fun result!1967 () Bool)

(assert (=> tb!1927 (= result!1967 true)))

(assert (=> d!7085 t!2267))

(declare-fun b_and!3529 () Bool)

(assert (= b_and!3521 (and (=> t!2267 result!1967) b_and!3529)))

(declare-fun t!2269 () Bool)

(declare-fun tb!1929 () Bool)

(assert (=> (and b!8965 (= (y!549 thiss!860) (y!550 thiss!856)) t!2269) tb!1929))

(declare-fun result!1969 () Bool)

(assert (=> tb!1929 (= result!1969 true)))

(assert (=> d!7085 t!2269))

(declare-fun b_and!3531 () Bool)

(assert (= b_and!3523 (and (=> t!2269 result!1969) b_and!3531)))

(declare-fun t!2271 () Bool)

(declare-fun tb!1931 () Bool)

(assert (=> (and b!8967 (= (x!4927 thiss!856) (y!550 thiss!856)) t!2271) tb!1931))

(declare-fun result!1971 () Bool)

(assert (=> tb!1931 (= result!1971 true)))

(assert (=> d!7085 t!2271))

(declare-fun b_and!3533 () Bool)

(assert (= b_and!3525 (and (=> t!2271 result!1971) b_and!3533)))

(declare-fun t!2273 () Bool)

(declare-fun tb!1933 () Bool)

(assert (=> (and b!8967 (= (y!550 thiss!856) (y!550 thiss!856)) t!2273) tb!1933))

(declare-fun result!1973 () Bool)

(assert (=> tb!1933 (= result!1973 true)))

(assert (=> d!7085 t!2273))

(declare-fun b_and!3535 () Bool)

(assert (= b_and!3527 (and (=> t!2273 result!1973) b_and!3535)))

(declare-fun b_lambda!4571 () Bool)

(assert (=> (not b_lambda!4571) (not b!8978)))

(declare-fun t!2275 () Bool)

(declare-fun tb!1935 () Bool)

(assert (=> (and start!1782 (= proof!236 (evidence!141 thiss!856)) t!2275) tb!1935))

(declare-fun result!1975 () Bool)

(assert (=> tb!1935 (= result!1975 true)))

(assert (=> b!8978 t!2275))

(declare-fun b_and!3537 () Bool)

(assert (= b_and!3501 (and (=> t!2275 result!1975) b_and!3537)))

(declare-fun t!2277 () Bool)

(declare-fun tb!1937 () Bool)

(assert (=> (and b!8967 (= (evidence!141 thiss!856) (evidence!141 thiss!856)) t!2277) tb!1937))

(declare-fun result!1977 () Bool)

(assert (=> tb!1937 (= result!1977 true)))

(assert (=> b!8978 t!2277))

(declare-fun b_and!3539 () Bool)

(assert (= b_and!3503 (and (=> t!2277 result!1977) b_and!3539)))

(declare-fun m!11873 () Bool)

(assert (=> d!7085 m!11873))

(declare-fun m!11875 () Bool)

(assert (=> d!7085 m!11875))

(declare-fun m!11877 () Bool)

(assert (=> b!8978 m!11877))

(assert (=> start!1782 d!7085))

(declare-fun bs!2181 () Bool)

(declare-fun b!8984 () Bool)

(assert (= bs!2181 (and b!8984 b!8963)))

(declare-fun lambda!2152 () Int)

(assert (=> bs!2181 (= (= (left!411 tree!25) tree!25) (= lambda!2152 lambda!2144))))

(declare-fun bs!2182 () Bool)

(assert (= bs!2182 (and b!8984 b!8968)))

(assert (=> bs!2182 (not (= lambda!2152 lambda!2146))))

(assert (=> b!8984 true))

(assert (=> b!8984 (< (dynLambda!266 order!117 f!585) (dynLambda!267 order!119 lambda!2152))))

(assert (=> b!8984 true))

(declare-fun b_next!2181 () Bool)

(assert (=> b!8965 (= b_next!2169 (or (and b!8984 (= lambda!2152 (x!4926 thiss!860))) b_next!2181))))

(declare-fun b_next!2183 () Bool)

(assert (=> b!8965 (= b_next!2171 (or (and b!8984 (= lambda!2152 (y!549 thiss!860))) b_next!2183))))

(declare-fun b_next!2185 () Bool)

(assert (=> b!8967 (= b_next!2173 (or (and b!8984 (= lambda!2152 (x!4927 thiss!856))) b_next!2185))))

(declare-fun b_next!2187 () Bool)

(assert (=> b!8967 (= b_next!2175 (or (and b!8984 (= lambda!2152 (y!550 thiss!856))) b_next!2187))))

(declare-fun lambda!2153 () Int)

(assert (=> bs!2181 (= (= (right!414 tree!25) tree!25) (= lambda!2153 lambda!2144))))

(assert (=> bs!2182 (not (= lambda!2153 lambda!2146))))

(assert (=> b!8984 (= (= (right!414 tree!25) (left!411 tree!25)) (= lambda!2153 lambda!2152))))

(assert (=> b!8984 true))

(assert (=> b!8984 (< (dynLambda!266 order!117 f!585) (dynLambda!267 order!119 lambda!2153))))

(assert (=> b!8984 true))

(declare-fun b_next!2189 () Bool)

(assert (=> b!8965 (= b_next!2181 (or (and b!8984 (= lambda!2153 (x!4926 thiss!860))) b_next!2189))))

(declare-fun b_next!2191 () Bool)

(assert (=> b!8965 (= b_next!2183 (or (and b!8984 (= lambda!2153 (y!549 thiss!860))) b_next!2191))))

(declare-fun b_next!2193 () Bool)

(assert (=> b!8967 (= b_next!2185 (or (and b!8984 (= lambda!2153 (x!4927 thiss!856))) b_next!2193))))

(declare-fun b_next!2195 () Bool)

(assert (=> b!8967 (= b_next!2187 (or (and b!8984 (= lambda!2153 (y!550 thiss!856))) b_next!2195))))

(declare-fun e!5267 () Balance!185)

(declare-datatypes () ((tuple2!72 (tuple2!73 (_1!36 Balance!185) (_2!36 Balance!185)))))

(declare-fun lt!1595 () tuple2!72)

(declare-fun dynLambda!270 (Int Balance!185 Balance!185) Balance!185)

(assert (=> b!8984 (= e!5267 (dynLambda!270 f!585 (_1!36 lt!1595) (_2!36 lt!1595)))))

(assert (=> b!8984 (= lt!1595 (tuple2!73 (dynLambda!269 lambda!2152) (dynLambda!269 lambda!2153)))))

(declare-fun d!7087 () Bool)

(declare-fun c!2976 () Bool)

(assert (=> d!7087 (= c!2976 (is-Leaf!128 tree!25))))

(assert (=> d!7087 (= (fold!31 tree!25 f!585) e!5267)))

(declare-fun b!8983 () Bool)

(assert (=> b!8983 (= e!5267 (value!1297 tree!25))))

(assert (= (and d!7087 c!2976) b!8983))

(assert (= (and d!7087 (not c!2976)) b!8984))

(declare-fun b_lambda!4573 () Bool)

(assert (=> (not b_lambda!4573) (not b!8984)))

(declare-fun t!2279 () Bool)

(declare-fun tb!1939 () Bool)

(assert (=> (and start!1782 (= f!585 f!585) t!2279) tb!1939))

(declare-fun result!1979 () Bool)

(assert (=> tb!1939 (= result!1979 true)))

(assert (=> b!8984 t!2279))

(declare-fun b_and!3541 () Bool)

(assert (= b_and!3487 (and (=> t!2279 result!1979) b_and!3541)))

(declare-fun b_lambda!4575 () Bool)

(assert (=> (not b_lambda!4575) (not b!8984)))

(declare-fun b_lambda!4577 () Bool)

(assert (=> (not b_lambda!4577) (not b!8984)))

(declare-fun m!11879 () Bool)

(assert (=> b!8984 m!11879))

(declare-fun m!11881 () Bool)

(assert (=> b!8984 m!11881))

(declare-fun m!11883 () Bool)

(assert (=> b!8984 m!11883))

(assert (=> b!8966 d!7087))

(declare-fun d!7089 () Bool)

(declare-fun c!2979 () Bool)

(assert (=> d!7089 (= c!2979 (and (is-Cons!206 (toList!55 tree!25)) (is-Nil!207 (tail!436 (toList!55 tree!25)))))))

(declare-fun e!5270 () Balance!185)

(assert (=> d!7089 (= (foldRight1!62 (toList!55 tree!25) f!585) e!5270)))

(declare-fun b!8989 () Bool)

(assert (=> b!8989 (= e!5270 (head!424 (toList!55 tree!25)))))

(declare-fun b!8990 () Bool)

(assert (=> b!8990 (= e!5270 (dynLambda!270 f!585 (head!424 (toList!55 tree!25)) (foldRight1!62 (tail!436 (toList!55 tree!25)) f!585)))))

(assert (= (and d!7089 c!2979) b!8989))

(assert (= (and d!7089 (not c!2979)) b!8990))

(declare-fun b_lambda!4579 () Bool)

(assert (=> (not b_lambda!4579) (not b!8990)))

(declare-fun t!2281 () Bool)

(declare-fun tb!1941 () Bool)

(assert (=> (and start!1782 (= f!585 f!585) t!2281) tb!1941))

(declare-fun result!1981 () Bool)

(assert (=> tb!1941 (= result!1981 true)))

(assert (=> b!8990 t!2281))

(declare-fun b_and!3543 () Bool)

(assert (= b_and!3541 (and (=> t!2281 result!1981) b_and!3543)))

(declare-fun m!11885 () Bool)

(assert (=> b!8990 m!11885))

(assert (=> b!8990 m!11885))

(declare-fun m!11887 () Bool)

(assert (=> b!8990 m!11887))

(assert (=> b!8966 d!7089))

(declare-fun d!7091 () Bool)

(declare-fun lt!1598 () List!209)

(declare-fun isEmpty!169 (List!209) Bool)

(assert (=> d!7091 (not (isEmpty!169 lt!1598))))

(declare-fun e!5273 () List!209)

(assert (=> d!7091 (= lt!1598 e!5273)))

(declare-fun c!2982 () Bool)

(assert (=> d!7091 (= c!2982 (is-Leaf!128 tree!25))))

(assert (=> d!7091 (= (toList!55 tree!25) lt!1598)))

(declare-fun b!8995 () Bool)

(assert (=> b!8995 (= e!5273 (Cons!206 (value!1297 tree!25) Nil!207))))

(declare-fun b!8996 () Bool)

(declare-fun append!90 (List!209 List!209) List!209)

(assert (=> b!8996 (= e!5273 (append!90 (toList!55 (left!411 tree!25)) (toList!55 (right!414 tree!25))))))

(assert (= (and d!7091 c!2982) b!8995))

(assert (= (and d!7091 (not c!2982)) b!8996))

(declare-fun m!11889 () Bool)

(assert (=> d!7091 m!11889))

(declare-fun m!11891 () Bool)

(assert (=> b!8996 m!11891))

(declare-fun m!11893 () Bool)

(assert (=> b!8996 m!11893))

(assert (=> b!8996 m!11891))

(assert (=> b!8996 m!11893))

(declare-fun m!11895 () Bool)

(assert (=> b!8996 m!11895))

(assert (=> b!8966 d!7091))

(declare-fun bs!2183 () Bool)

(declare-fun d!7093 () Bool)

(assert (= bs!2183 (and d!7093 start!1782)))

(declare-fun lambda!2156 () Int)

(assert (=> bs!2183 (= lambda!2156 lambda!2143)))

(declare-fun b_next!2197 () Bool)

(assert (=> start!1782 (= b_next!2155 (or (and d!7093 (= lambda!2156 f!585)) b_next!2197))))

(declare-fun because!2 (ProofOps!132 Bool) Bool)

(assert (=> d!7093 (because!2 (ProofOps!133 (= (fold!31 (left!411 tree!25) lambda!2156) (foldRight1!62 (toList!55 (left!411 tree!25)) lambda!2156))) true)))

(assert (=> d!7093 (= (fold!31 (left!411 tree!25) lambda!2156) (foldRight1!62 (toList!55 (left!411 tree!25)) lambda!2156))))

(assert (=> d!7093 (= (fold_foldRight1_equivalence!0 (left!411 tree!25)) true)))

(declare-fun bs!2184 () Bool)

(assert (= bs!2184 d!7093))

(declare-fun m!11897 () Bool)

(assert (=> bs!2184 m!11897))

(assert (=> bs!2184 m!11891))

(assert (=> bs!2184 m!11891))

(declare-fun m!11899 () Bool)

(assert (=> bs!2184 m!11899))

(declare-fun m!11901 () Bool)

(assert (=> bs!2184 m!11901))

(assert (=> bs!2180 d!7093))

(declare-fun d!7095 () Bool)

(assert (=> d!7095 (= trivial!1 true)))

(assert (=> b!8963 d!7095))

(declare-fun b_lambda!4581 () Bool)

(assert (= b_lambda!4571 (or (and b!8963 (= lambda!2145 (evidence!141 thiss!856))) (and b!8969 (= lambda!2147 (evidence!141 thiss!856))) (and start!1782 b_free!931 (= proof!236 (evidence!141 thiss!856))) (and b!8967 b_free!941) b_lambda!4581)))

(declare-fun bs!2185 () Bool)

(declare-fun d!7097 () Bool)

(assert (= bs!2185 (and d!7097 b!8963)))

(assert (=> bs!2185 (= (dynLambda!268 lambda!2145) trivial!1)))

(assert (=> (and b!8963 (= lambda!2145 (evidence!141 thiss!856)) b!8978) d!7097))

(declare-fun bs!2186 () Bool)

(declare-fun d!7099 () Bool)

(assert (= bs!2186 (and d!7099 b!8969)))

(assert (=> bs!2186 (= (dynLambda!268 lambda!2147) (fold_foldRight1_equivalence!0 (left!411 tree!25)))))

(assert (=> bs!2186 m!11867))

(assert (=> (and b!8969 (= lambda!2147 (evidence!141 thiss!856)) b!8978) d!7099))

(declare-fun b_lambda!4583 () Bool)

(assert (= b_lambda!4563 (or (and b!8965 b_free!933) (and b!8984 (= lambda!2153 (x!4926 thiss!860))) (and b!8965 b_free!935 (= (y!549 thiss!860) (x!4926 thiss!860))) (and b!8967 b_free!939 (= (y!550 thiss!856) (x!4926 thiss!860))) (and b!8967 b_free!937 (= (x!4927 thiss!856) (x!4926 thiss!860))) (and b!8968 (= lambda!2146 (x!4926 thiss!860))) (and b!8984 (= lambda!2152 (x!4926 thiss!860))) (and b!8963 (= lambda!2144 (x!4926 thiss!860))) b_lambda!4583)))

(declare-fun bs!2187 () Bool)

(declare-fun d!7101 () Bool)

(assert (= bs!2187 (and d!7101 b!8984)))

(assert (=> bs!2187 (= (dynLambda!269 lambda!2153) (fold!31 (right!414 tree!25) f!585))))

(declare-fun m!11903 () Bool)

(assert (=> bs!2187 m!11903))

(assert (=> (and b!8984 (= lambda!2153 (x!4926 thiss!860)) d!7083) d!7101))

(declare-fun bs!2188 () Bool)

(declare-fun d!7103 () Bool)

(assert (= bs!2188 (and d!7103 b!8984)))

(assert (=> bs!2188 (= (dynLambda!269 lambda!2152) (fold!31 (left!411 tree!25) f!585))))

(declare-fun m!11905 () Bool)

(assert (=> bs!2188 m!11905))

(assert (=> (and b!8984 (= lambda!2152 (x!4926 thiss!860)) d!7083) d!7103))

(declare-fun bs!2189 () Bool)

(declare-fun d!7105 () Bool)

(assert (= bs!2189 (and d!7105 b!8963)))

(assert (=> bs!2189 (= (dynLambda!269 lambda!2144) (fold!31 tree!25 f!585))))

(assert (=> bs!2189 m!11861))

(assert (=> (and b!8963 (= lambda!2144 (x!4926 thiss!860)) d!7083) d!7105))

(declare-fun bs!2190 () Bool)

(declare-fun d!7107 () Bool)

(assert (= bs!2190 (and d!7107 b!8968)))

(assert (=> bs!2190 (= (dynLambda!269 lambda!2146) (dynLambda!270 f!585 (fold!31 (left!411 tree!25) f!585) (fold!31 (right!414 tree!25) f!585)))))

(declare-fun b_lambda!4599 () Bool)

(assert (=> (not b_lambda!4599) (not bs!2190)))

(declare-fun t!2283 () Bool)

(declare-fun tb!1943 () Bool)

(assert (=> (and start!1782 (= f!585 f!585) t!2283) tb!1943))

(declare-fun result!1983 () Bool)

(assert (=> tb!1943 (= result!1983 true)))

(assert (=> bs!2190 t!2283))

(declare-fun b_and!3545 () Bool)

(assert (= b_and!3543 (and (=> t!2283 result!1983) b_and!3545)))

(assert (=> bs!2190 m!11905))

(assert (=> bs!2190 m!11903))

(assert (=> bs!2190 m!11905))

(assert (=> bs!2190 m!11903))

(declare-fun m!11907 () Bool)

(assert (=> bs!2190 m!11907))

(assert (=> (and b!8968 (= lambda!2146 (x!4926 thiss!860)) d!7083) d!7107))

(declare-fun b_lambda!4585 () Bool)

(assert (= b_lambda!4575 (or b!8984 b_lambda!4585)))

(declare-fun bs!2191 () Bool)

(declare-fun d!7109 () Bool)

(assert (= bs!2191 (and d!7109 b!8984)))

(assert (=> bs!2191 (= (dynLambda!269 lambda!2152) (fold!31 (left!411 tree!25) f!585))))

(assert (=> bs!2191 m!11905))

(assert (=> b!8984 d!7109))

(declare-fun b_lambda!4587 () Bool)

(assert (= b_lambda!4565 (or (and b!8965 b_free!933 (= (x!4926 thiss!860) (y!549 thiss!860))) (and b!8967 b_free!939 (= (y!550 thiss!856) (y!549 thiss!860))) (and b!8968 (= lambda!2146 (y!549 thiss!860))) (and b!8984 (= lambda!2152 (y!549 thiss!860))) (and b!8984 (= lambda!2153 (y!549 thiss!860))) (and b!8967 b_free!937 (= (x!4927 thiss!856) (y!549 thiss!860))) (and b!8965 b_free!935) (and b!8963 (= lambda!2144 (y!549 thiss!860))) b_lambda!4587)))

(declare-fun bs!2192 () Bool)

(declare-fun d!7111 () Bool)

(assert (= bs!2192 (and d!7111 b!8984)))

(assert (=> bs!2192 (= (dynLambda!269 lambda!2153) (fold!31 (right!414 tree!25) f!585))))

(assert (=> bs!2192 m!11903))

(assert (=> (and b!8984 (= lambda!2153 (y!549 thiss!860)) d!7083) d!7111))

(declare-fun bs!2193 () Bool)

(declare-fun d!7113 () Bool)

(assert (= bs!2193 (and d!7113 b!8984)))

(assert (=> bs!2193 (= (dynLambda!269 lambda!2152) (fold!31 (left!411 tree!25) f!585))))

(assert (=> bs!2193 m!11905))

(assert (=> (and b!8984 (= lambda!2152 (y!549 thiss!860)) d!7083) d!7113))

(declare-fun bs!2194 () Bool)

(declare-fun d!7115 () Bool)

(assert (= bs!2194 (and d!7115 b!8968)))

(assert (=> bs!2194 (= (dynLambda!269 lambda!2146) (dynLambda!270 f!585 (fold!31 (left!411 tree!25) f!585) (fold!31 (right!414 tree!25) f!585)))))

(declare-fun b_lambda!4601 () Bool)

(assert (=> (not b_lambda!4601) (not bs!2194)))

(assert (=> bs!2194 t!2283))

(declare-fun b_and!3547 () Bool)

(assert (= b_and!3545 (and (=> t!2283 result!1983) b_and!3547)))

(assert (=> bs!2194 m!11905))

(assert (=> bs!2194 m!11903))

(assert (=> bs!2194 m!11905))

(assert (=> bs!2194 m!11903))

(assert (=> bs!2194 m!11907))

(assert (=> (and b!8968 (= lambda!2146 (y!549 thiss!860)) d!7083) d!7115))

(declare-fun bs!2195 () Bool)

(declare-fun d!7117 () Bool)

(assert (= bs!2195 (and d!7117 b!8963)))

(assert (=> bs!2195 (= (dynLambda!269 lambda!2144) (fold!31 tree!25 f!585))))

(assert (=> bs!2195 m!11861))

(assert (=> (and b!8963 (= lambda!2144 (y!549 thiss!860)) d!7083) d!7117))

(declare-fun b_lambda!4589 () Bool)

(assert (= b_lambda!4577 (or b!8984 b_lambda!4589)))

(declare-fun bs!2196 () Bool)

(declare-fun d!7119 () Bool)

(assert (= bs!2196 (and d!7119 b!8984)))

(assert (=> bs!2196 (= (dynLambda!269 lambda!2153) (fold!31 (right!414 tree!25) f!585))))

(assert (=> bs!2196 m!11903))

(assert (=> b!8984 d!7119))

(declare-fun b_lambda!4591 () Bool)

(assert (= b_lambda!4567 (or (and b!8967 b_free!939 (= (y!550 thiss!856) (x!4927 thiss!856))) (and b!8965 b_free!935 (= (y!549 thiss!860) (x!4927 thiss!856))) (and b!8967 b_free!937) (and b!8965 b_free!933 (= (x!4926 thiss!860) (x!4927 thiss!856))) (and b!8984 (= lambda!2152 (x!4927 thiss!856))) (and b!8968 (= lambda!2146 (x!4927 thiss!856))) (and b!8984 (= lambda!2153 (x!4927 thiss!856))) (and b!8963 (= lambda!2144 (x!4927 thiss!856))) b_lambda!4591)))

(declare-fun bs!2197 () Bool)

(declare-fun d!7121 () Bool)

(assert (= bs!2197 (and d!7121 b!8963)))

(assert (=> bs!2197 (= (dynLambda!269 lambda!2144) (fold!31 tree!25 f!585))))

(assert (=> bs!2197 m!11861))

(assert (=> (and b!8963 (= lambda!2144 (x!4927 thiss!856)) d!7085) d!7121))

(declare-fun bs!2198 () Bool)

(declare-fun d!7123 () Bool)

(assert (= bs!2198 (and d!7123 b!8984)))

(assert (=> bs!2198 (= (dynLambda!269 lambda!2152) (fold!31 (left!411 tree!25) f!585))))

(assert (=> bs!2198 m!11905))

(assert (=> (and b!8984 (= lambda!2152 (x!4927 thiss!856)) d!7085) d!7123))

(declare-fun bs!2199 () Bool)

(declare-fun d!7125 () Bool)

(assert (= bs!2199 (and d!7125 b!8968)))

(assert (=> bs!2199 (= (dynLambda!269 lambda!2146) (dynLambda!270 f!585 (fold!31 (left!411 tree!25) f!585) (fold!31 (right!414 tree!25) f!585)))))

(declare-fun b_lambda!4603 () Bool)

(assert (=> (not b_lambda!4603) (not bs!2199)))

(assert (=> bs!2199 t!2283))

(declare-fun b_and!3549 () Bool)

(assert (= b_and!3547 (and (=> t!2283 result!1983) b_and!3549)))

(assert (=> bs!2199 m!11905))

(assert (=> bs!2199 m!11903))

(assert (=> bs!2199 m!11905))

(assert (=> bs!2199 m!11903))

(assert (=> bs!2199 m!11907))

(assert (=> (and b!8968 (= lambda!2146 (x!4927 thiss!856)) d!7085) d!7125))

(declare-fun bs!2200 () Bool)

(declare-fun d!7127 () Bool)

(assert (= bs!2200 (and d!7127 b!8984)))

(assert (=> bs!2200 (= (dynLambda!269 lambda!2153) (fold!31 (right!414 tree!25) f!585))))

(assert (=> bs!2200 m!11903))

(assert (=> (and b!8984 (= lambda!2153 (x!4927 thiss!856)) d!7085) d!7127))

(declare-fun b_lambda!4593 () Bool)

(assert (= b_lambda!4573 (or (and start!1782 (= lambda!2143 f!585)) (and start!1782 b_free!929) (and d!7093 (= lambda!2156 f!585)) b_lambda!4593)))

(declare-fun bs!2201 () Bool)

(declare-fun d!7129 () Bool)

(assert (= bs!2201 (and d!7129 start!1782)))

(declare-fun ++!3 (Balance!185 Balance!185) Balance!185)

(assert (=> bs!2201 (= (dynLambda!270 lambda!2143 (_1!36 lt!1595) (_2!36 lt!1595)) (++!3 (_1!36 lt!1595) (_2!36 lt!1595)))))

(declare-fun m!11909 () Bool)

(assert (=> bs!2201 m!11909))

(assert (=> (and start!1782 (= lambda!2143 f!585) b!8984) d!7129))

(declare-fun bs!2202 () Bool)

(declare-fun d!7131 () Bool)

(assert (= bs!2202 (and d!7131 d!7093)))

(assert (=> bs!2202 (= (dynLambda!270 lambda!2156 (_1!36 lt!1595) (_2!36 lt!1595)) (++!3 (_1!36 lt!1595) (_2!36 lt!1595)))))

(assert (=> bs!2202 m!11909))

(assert (=> (and d!7093 (= lambda!2156 f!585) b!8984) d!7131))

(declare-fun b_lambda!4595 () Bool)

(assert (= b_lambda!4569 (or (and b!8965 b_free!935 (= (y!549 thiss!860) (y!550 thiss!856))) (and b!8967 b_free!939) (and b!8984 (= lambda!2152 (y!550 thiss!856))) (and b!8965 b_free!933 (= (x!4926 thiss!860) (y!550 thiss!856))) (and b!8963 (= lambda!2144 (y!550 thiss!856))) (and b!8984 (= lambda!2153 (y!550 thiss!856))) (and b!8967 b_free!937 (= (x!4927 thiss!856) (y!550 thiss!856))) (and b!8968 (= lambda!2146 (y!550 thiss!856))) b_lambda!4595)))

(declare-fun bs!2203 () Bool)

(declare-fun d!7133 () Bool)

(assert (= bs!2203 (and d!7133 b!8963)))

(assert (=> bs!2203 (= (dynLambda!269 lambda!2144) (fold!31 tree!25 f!585))))

(assert (=> bs!2203 m!11861))

(assert (=> (and b!8963 (= lambda!2144 (y!550 thiss!856)) d!7085) d!7133))

(declare-fun bs!2204 () Bool)

(declare-fun d!7135 () Bool)

(assert (= bs!2204 (and d!7135 b!8984)))

(assert (=> bs!2204 (= (dynLambda!269 lambda!2153) (fold!31 (right!414 tree!25) f!585))))

(assert (=> bs!2204 m!11903))

(assert (=> (and b!8984 (= lambda!2153 (y!550 thiss!856)) d!7085) d!7135))

(declare-fun bs!2205 () Bool)

(declare-fun d!7137 () Bool)

(assert (= bs!2205 (and d!7137 b!8984)))

(assert (=> bs!2205 (= (dynLambda!269 lambda!2152) (fold!31 (left!411 tree!25) f!585))))

(assert (=> bs!2205 m!11905))

(assert (=> (and b!8984 (= lambda!2152 (y!550 thiss!856)) d!7085) d!7137))

(declare-fun bs!2206 () Bool)

(declare-fun d!7139 () Bool)

(assert (= bs!2206 (and d!7139 b!8968)))

(assert (=> bs!2206 (= (dynLambda!269 lambda!2146) (dynLambda!270 f!585 (fold!31 (left!411 tree!25) f!585) (fold!31 (right!414 tree!25) f!585)))))

(declare-fun b_lambda!4605 () Bool)

(assert (=> (not b_lambda!4605) (not bs!2206)))

(assert (=> bs!2206 t!2283))

(declare-fun b_and!3551 () Bool)

(assert (= b_and!3549 (and (=> t!2283 result!1983) b_and!3551)))

(assert (=> bs!2206 m!11905))

(assert (=> bs!2206 m!11903))

(assert (=> bs!2206 m!11905))

(assert (=> bs!2206 m!11903))

(assert (=> bs!2206 m!11907))

(assert (=> (and b!8968 (= lambda!2146 (y!550 thiss!856)) d!7085) d!7139))

(declare-fun b_lambda!4597 () Bool)

(assert (= b_lambda!4579 (or (and start!1782 (= lambda!2143 f!585)) (and start!1782 b_free!929) (and d!7093 (= lambda!2156 f!585)) b_lambda!4597)))

(declare-fun bs!2207 () Bool)

(declare-fun d!7141 () Bool)

(assert (= bs!2207 (and d!7141 start!1782)))

(assert (=> bs!2207 (= (dynLambda!270 lambda!2143 (head!424 (toList!55 tree!25)) (foldRight1!62 (tail!436 (toList!55 tree!25)) f!585)) (++!3 (head!424 (toList!55 tree!25)) (foldRight1!62 (tail!436 (toList!55 tree!25)) f!585)))))

(assert (=> bs!2207 m!11885))

(declare-fun m!11911 () Bool)

(assert (=> bs!2207 m!11911))

(assert (=> (and start!1782 (= lambda!2143 f!585) b!8990) d!7141))

(declare-fun bs!2208 () Bool)

(declare-fun d!7143 () Bool)

(assert (= bs!2208 (and d!7143 d!7093)))

(assert (=> bs!2208 (= (dynLambda!270 lambda!2156 (head!424 (toList!55 tree!25)) (foldRight1!62 (tail!436 (toList!55 tree!25)) f!585)) (++!3 (head!424 (toList!55 tree!25)) (foldRight1!62 (tail!436 (toList!55 tree!25)) f!585)))))

(assert (=> bs!2208 m!11885))

(assert (=> bs!2208 m!11911))

(assert (=> (and d!7093 (= lambda!2156 f!585) b!8990) d!7143))

(push 1)

(assert (not b!8996))

(assert (not bs!2202))

(assert b_and!3535)

(assert (not bs!2203))

(assert (not b_lambda!4599))

(assert (not b_next!2197))

(assert (not bs!2189))

(assert (not bs!2195))

(assert (not bs!2201))

(assert (not bs!2200))

(assert (not bs!2194))

(assert (not b_next!2191))

(assert (not bs!2208))

(assert b_and!3551)

(assert (not b_next!2179))

(assert (not d!7093))

(assert (not bs!2192))

(assert (not bs!2206))

(assert (not b_lambda!4601))

(assert (not b_next!2177))

(assert (not b_lambda!4593))

(assert (not b_lambda!4597))

(assert (not bs!2204))

(assert b_and!3529)

(assert (not b_next!2189))

(assert (not d!7091))

(assert (not b!8990))

(assert (not b_lambda!4589))

(assert (not b_next!2195))

(assert (not bs!2188))

(assert (not b_lambda!4581))

(assert b_and!3539)

(assert (not bs!2190))

(assert (not bs!2197))

(assert (not bs!2186))

(assert (not b_lambda!4561))

(assert (not b_lambda!4595))

(assert (not bs!2191))

(assert (not bs!2196))

(assert (not b_next!2193))

(assert (not b_lambda!4605))

(assert (not b_lambda!4583))

(assert (not bs!2193))

(assert b_and!3537)

(assert b_and!3533)

(assert (not b_lambda!4587))

(assert (not bs!2205))

(assert (not b_lambda!4603))

(assert (not bs!2207))

(assert (not b_lambda!4585))

(assert b_and!3531)

(assert (not b_lambda!4591))

(assert (not bs!2187))

(assert (not bs!2199))

(assert (not bs!2198))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3535)

(assert (not b_next!2197))

(assert (not b_next!2191))

(assert b_and!3551)

(assert (not b_next!2179))

(assert (not b_next!2177))

(assert b_and!3529)

(assert (not b_next!2189))

(assert (not b_next!2195))

(assert b_and!3539)

(assert (not b_next!2193))

(assert b_and!3537)

(assert b_and!3533)

(assert b_and!3531)

(check-sat)

(pop 1)

