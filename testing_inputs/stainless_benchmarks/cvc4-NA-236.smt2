; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1800 () Bool)

(assert start!1800)

(declare-fun b!9040 () Bool)

(declare-fun b_free!971 () Bool)

(declare-fun b_next!2231 () Bool)

(assert (=> b!9040 (= b_free!971 (not b_next!2231))))

(declare-fun tp!1597 () Bool)

(declare-fun b_and!3581 () Bool)

(assert (=> b!9040 (= tp!1597 b_and!3581)))

(declare-fun b_free!973 () Bool)

(declare-fun b_next!2233 () Bool)

(assert (=> b!9040 (= b_free!973 (not b_next!2233))))

(declare-fun tp!1596 () Bool)

(declare-fun b_and!3583 () Bool)

(assert (=> b!9040 (= tp!1596 b_and!3583)))

(declare-fun b_free!975 () Bool)

(declare-fun b_next!2235 () Bool)

(assert (=> b!9040 (= b_free!975 (not b_next!2235))))

(declare-fun tp!1593 () Bool)

(declare-fun b_and!3585 () Bool)

(assert (=> b!9040 (= tp!1593 b_and!3585)))

(declare-fun b_free!977 () Bool)

(declare-fun b_next!2237 () Bool)

(assert (=> start!1800 (= b_free!977 (not b_next!2237))))

(declare-fun tp!1592 () Bool)

(declare-fun b_and!3587 () Bool)

(assert (=> start!1800 (= tp!1592 b_and!3587)))

(declare-fun b!9037 () Bool)

(declare-fun b_free!979 () Bool)

(declare-fun b_next!2239 () Bool)

(assert (=> b!9037 (= b_free!979 (not b_next!2239))))

(declare-fun tp!1595 () Bool)

(declare-fun b_and!3589 () Bool)

(assert (=> b!9037 (= tp!1595 b_and!3589)))

(declare-fun b_free!981 () Bool)

(declare-fun b_next!2241 () Bool)

(assert (=> b!9037 (= b_free!981 (not b_next!2241))))

(declare-fun tp!1594 () Bool)

(declare-fun b_and!3591 () Bool)

(assert (=> b!9037 (= tp!1594 b_and!3591)))

(declare-fun b_free!983 () Bool)

(declare-fun b_next!2243 () Bool)

(assert (=> b!9037 (= b_free!983 (not b_next!2243))))

(declare-fun tp!1591 () Bool)

(declare-fun b_and!3593 () Bool)

(assert (=> b!9037 (= tp!1591 b_and!3593)))

(declare-fun f!585 () Int)

(declare-fun b_next!2245 () Bool)

(declare-fun lambda!2177 () Int)

(assert (=> start!1800 (= b_next!2237 (or (and start!1800 (= lambda!2177 f!585)) b_next!2245))))

(declare-fun b!9044 () Bool)

(assert (=> b!9044 true))

(declare-fun order!121 () Int)

(declare-fun lambda!2178 () Int)

(declare-fun order!123 () Int)

(declare-fun dynLambda!271 (Int Int) Int)

(declare-fun dynLambda!272 (Int Int) Int)

(assert (=> b!9044 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2178))))

(assert (=> b!9044 true))

(declare-datatypes () ((Balance!191 (Balance!192 (extraOpen!136 Int) (extraClose!136 Int)))))

(declare-datatypes () ((EqEvidence!154 (EqEvidence!155 (x!4988 Int) (y!555 Int) (evidence!144 Int)))))

(declare-fun that!214 () EqEvidence!154)

(declare-fun b_next!2247 () Bool)

(assert (=> b!9040 (= b_next!2231 (or (and b!9044 (= lambda!2178 (x!4988 that!214))) b_next!2247))))

(declare-fun b_next!2249 () Bool)

(assert (=> b!9040 (= b_next!2233 (or (and b!9044 (= lambda!2178 (y!555 that!214))) b_next!2249))))

(declare-fun b_next!2251 () Bool)

(declare-fun thiss!856 () EqEvidence!154)

(assert (=> b!9037 (= b_next!2239 (or (and b!9044 (= lambda!2178 (x!4988 thiss!856))) b_next!2251))))

(declare-fun b_next!2253 () Bool)

(assert (=> b!9037 (= b_next!2241 (or (and b!9044 (= lambda!2178 (y!555 thiss!856))) b_next!2253))))

(declare-fun m!11933 () Bool)

(assert (=> b!9044 m!11933))

(declare-fun lambda!2179 () Int)

(declare-fun dynLambda!273 (Int) Bool)

(assert (=> (and b!9040 b!9044 (= (dynLambda!273 lambda!2179) (dynLambda!273 (evidence!144 that!214)))) (= lambda!2179 (evidence!144 that!214))))

(assert (=> (and b!9037 b!9044 (= (dynLambda!273 lambda!2179) (dynLambda!273 (evidence!144 thiss!856)))) (= lambda!2179 (evidence!144 thiss!856))))

(declare-fun b_next!2255 () Bool)

(assert (=> b!9040 (= b_next!2235 (or (and b!9044 (= lambda!2179 (evidence!144 that!214))) b_next!2255))))

(declare-fun b_next!2257 () Bool)

(assert (=> b!9037 (= b_next!2243 (or (and b!9044 (= lambda!2179 (evidence!144 thiss!856))) b_next!2257))))

(declare-fun bs!2212 () Bool)

(declare-fun b!9038 () Bool)

(assert (= bs!2212 (and b!9038 b!9044)))

(declare-fun lambda!2180 () Int)

(assert (=> bs!2212 (not (= lambda!2180 lambda!2178))))

(assert (=> b!9038 true))

(assert (=> b!9038 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2180))))

(assert (=> b!9038 true))

(declare-fun b_next!2259 () Bool)

(assert (=> b!9040 (= b_next!2247 (or (and b!9038 (= lambda!2180 (x!4988 that!214))) b_next!2259))))

(declare-fun b_next!2261 () Bool)

(assert (=> b!9040 (= b_next!2249 (or (and b!9038 (= lambda!2180 (y!555 that!214))) b_next!2261))))

(declare-fun b_next!2263 () Bool)

(assert (=> b!9037 (= b_next!2251 (or (and b!9038 (= lambda!2180 (x!4988 thiss!856))) b_next!2263))))

(declare-fun b_next!2265 () Bool)

(assert (=> b!9037 (= b_next!2253 (or (and b!9038 (= lambda!2180 (y!555 thiss!856))) b_next!2265))))

(declare-fun lambda!2181 () Int)

(assert (=> bs!2212 (not (= lambda!2181 lambda!2179))))

(assert (=> b!9038 true))

(declare-fun b_next!2267 () Bool)

(assert (=> b!9040 (= b_next!2255 (or (and b!9038 (= lambda!2181 (evidence!144 that!214))) b_next!2267))))

(declare-fun b_next!2269 () Bool)

(assert (=> b!9037 (= b_next!2257 (or (and b!9038 (= lambda!2181 (evidence!144 thiss!856))) b_next!2269))))

(declare-fun e!5300 () Bool)

(assert (=> b!9037 (= e!5300 (and tp!1595 tp!1594 tp!1591))))

(declare-fun res!2869 () Bool)

(declare-fun e!5299 () Bool)

(assert (=> start!1800 (=> (not res!2869) (not e!5299))))

(assert (=> start!1800 (= res!2869 (= f!585 lambda!2177))))

(assert (=> start!1800 e!5299))

(assert (=> start!1800 true))

(declare-fun e!5298 () Bool)

(declare-fun inv!318 (EqEvidence!154) Bool)

(assert (=> start!1800 (and (inv!318 that!214) e!5298)))

(assert (=> start!1800 tp!1592))

(assert (=> start!1800 (and (inv!318 thiss!856) e!5300)))

(declare-fun res!2866 () Bool)

(assert (=> b!9038 (=> (not res!2866) (not e!5299))))

(assert (=> b!9038 (= res!2866 (= that!214 (EqEvidence!155 lambda!2180 lambda!2180 lambda!2181)))))

(declare-fun b!9039 () Bool)

(declare-fun dynLambda!274 (Int) Balance!191)

(assert (=> b!9039 (= e!5299 (not (= (dynLambda!274 (y!555 thiss!856)) (dynLambda!274 (x!4988 that!214)))))))

(assert (=> b!9040 (= e!5298 (and tp!1597 tp!1596 tp!1593))))

(declare-fun b!9041 () Bool)

(declare-fun res!2865 () Bool)

(assert (=> b!9041 (=> (not res!2865) (not e!5299))))

(declare-datatypes () ((ProofOps!138 (ProofOps!139 (prop!184 Bool)))))

(declare-fun thiss!829 () ProofOps!138)

(declare-datatypes () ((Tree!58 (Branch!49 (left!417 Tree!58) (right!420 Tree!58)) (Leaf!131 (value!1300 Balance!191)))))

(declare-fun tree!25 () Tree!58)

(declare-fun fold!34 (Tree!58 Int) Balance!191)

(declare-datatypes () ((List!212 (Nil!210) (Cons!209 (head!427 Balance!191) (tail!439 List!212)))))

(declare-fun foldRight1!65 (List!212 Int) Balance!191)

(declare-fun toList!58 (Tree!58) List!212)

(assert (=> b!9041 (= res!2865 (= thiss!829 (ProofOps!139 (= (fold!34 tree!25 f!585) (foldRight1!65 (toList!58 tree!25) f!585)))))))

(declare-fun b!9042 () Bool)

(declare-fun res!2868 () Bool)

(assert (=> b!9042 (=> (not res!2868) (not e!5299))))

(assert (=> b!9042 (= res!2868 (dynLambda!273 (evidence!144 thiss!856)))))

(declare-fun b!9043 () Bool)

(declare-fun res!2867 () Bool)

(assert (=> b!9043 (=> (not res!2867) (not e!5299))))

(assert (=> b!9043 (= res!2867 (not (is-Leaf!131 tree!25)))))

(declare-fun res!2864 () Bool)

(assert (=> b!9044 (=> (not res!2864) (not e!5299))))

(assert (=> b!9044 (= res!2864 (= thiss!856 (EqEvidence!155 lambda!2178 lambda!2178 lambda!2179)))))

(assert (= (and start!1800 res!2869) b!9041))

(assert (= (and b!9041 res!2865) b!9043))

(assert (= (and b!9043 res!2867) b!9044))

(assert (= (and b!9044 res!2864) b!9038))

(assert (= (and b!9038 res!2866) b!9042))

(assert (= (and b!9042 res!2868) b!9039))

(assert (= start!1800 b!9040))

(assert (= start!1800 b!9037))

(declare-fun b_lambda!4607 () Bool)

(assert (=> (not b_lambda!4607) (not b!9039)))

(declare-fun t!2285 () Bool)

(declare-fun tb!1945 () Bool)

(assert (=> (and b!9040 (= (x!4988 that!214) (y!555 thiss!856)) t!2285) tb!1945))

(declare-fun result!1985 () Bool)

(assert (=> tb!1945 (= result!1985 true)))

(assert (=> b!9039 t!2285))

(declare-fun b_and!3595 () Bool)

(assert (= b_and!3581 (and (=> t!2285 result!1985) b_and!3595)))

(declare-fun t!2287 () Bool)

(declare-fun tb!1947 () Bool)

(assert (=> (and b!9040 (= (y!555 that!214) (y!555 thiss!856)) t!2287) tb!1947))

(declare-fun result!1987 () Bool)

(assert (=> tb!1947 (= result!1987 true)))

(assert (=> b!9039 t!2287))

(declare-fun b_and!3597 () Bool)

(assert (= b_and!3583 (and (=> t!2287 result!1987) b_and!3597)))

(declare-fun t!2289 () Bool)

(declare-fun tb!1949 () Bool)

(assert (=> (and b!9037 (= (x!4988 thiss!856) (y!555 thiss!856)) t!2289) tb!1949))

(declare-fun result!1989 () Bool)

(assert (=> tb!1949 (= result!1989 true)))

(assert (=> b!9039 t!2289))

(declare-fun b_and!3599 () Bool)

(assert (= b_and!3589 (and (=> t!2289 result!1989) b_and!3599)))

(declare-fun t!2291 () Bool)

(declare-fun tb!1951 () Bool)

(assert (=> (and b!9037 (= (y!555 thiss!856) (y!555 thiss!856)) t!2291) tb!1951))

(declare-fun result!1991 () Bool)

(assert (=> tb!1951 (= result!1991 true)))

(assert (=> b!9039 t!2291))

(declare-fun b_and!3601 () Bool)

(assert (= b_and!3591 (and (=> t!2291 result!1991) b_and!3601)))

(declare-fun b_lambda!4609 () Bool)

(assert (=> (not b_lambda!4609) (not b!9039)))

(declare-fun t!2293 () Bool)

(declare-fun tb!1953 () Bool)

(assert (=> (and b!9040 (= (x!4988 that!214) (x!4988 that!214)) t!2293) tb!1953))

(declare-fun result!1993 () Bool)

(assert (=> tb!1953 (= result!1993 true)))

(assert (=> b!9039 t!2293))

(declare-fun b_and!3603 () Bool)

(assert (= b_and!3595 (and (=> t!2293 result!1993) b_and!3603)))

(declare-fun t!2295 () Bool)

(declare-fun tb!1955 () Bool)

(assert (=> (and b!9040 (= (y!555 that!214) (x!4988 that!214)) t!2295) tb!1955))

(declare-fun result!1995 () Bool)

(assert (=> tb!1955 (= result!1995 true)))

(assert (=> b!9039 t!2295))

(declare-fun b_and!3605 () Bool)

(assert (= b_and!3597 (and (=> t!2295 result!1995) b_and!3605)))

(declare-fun t!2297 () Bool)

(declare-fun tb!1957 () Bool)

(assert (=> (and b!9037 (= (x!4988 thiss!856) (x!4988 that!214)) t!2297) tb!1957))

(declare-fun result!1997 () Bool)

(assert (=> tb!1957 (= result!1997 true)))

(assert (=> b!9039 t!2297))

(declare-fun b_and!3607 () Bool)

(assert (= b_and!3599 (and (=> t!2297 result!1997) b_and!3607)))

(declare-fun tb!1959 () Bool)

(declare-fun t!2299 () Bool)

(assert (=> (and b!9037 (= (y!555 thiss!856) (x!4988 that!214)) t!2299) tb!1959))

(declare-fun result!1999 () Bool)

(assert (=> tb!1959 (= result!1999 true)))

(assert (=> b!9039 t!2299))

(declare-fun b_and!3609 () Bool)

(assert (= b_and!3601 (and (=> t!2299 result!1999) b_and!3609)))

(declare-fun b_lambda!4611 () Bool)

(assert (=> (not b_lambda!4611) (not b!9042)))

(declare-fun t!2301 () Bool)

(declare-fun tb!1961 () Bool)

(assert (=> (and b!9040 (= (evidence!144 that!214) (evidence!144 thiss!856)) t!2301) tb!1961))

(declare-fun result!2001 () Bool)

(assert (=> tb!1961 (= result!2001 true)))

(assert (=> b!9042 t!2301))

(declare-fun b_and!3611 () Bool)

(assert (= b_and!3585 (and (=> t!2301 result!2001) b_and!3611)))

(declare-fun t!2303 () Bool)

(declare-fun tb!1963 () Bool)

(assert (=> (and b!9037 (= (evidence!144 thiss!856) (evidence!144 thiss!856)) t!2303) tb!1963))

(declare-fun result!2003 () Bool)

(assert (=> tb!1963 (= result!2003 true)))

(assert (=> b!9042 t!2303))

(declare-fun b_and!3613 () Bool)

(assert (= b_and!3593 (and (=> t!2303 result!2003) b_and!3613)))

(declare-fun m!11935 () Bool)

(assert (=> start!1800 m!11935))

(declare-fun m!11937 () Bool)

(assert (=> start!1800 m!11937))

(declare-fun m!11939 () Bool)

(assert (=> b!9039 m!11939))

(declare-fun m!11941 () Bool)

(assert (=> b!9039 m!11941))

(declare-fun m!11943 () Bool)

(assert (=> b!9041 m!11943))

(declare-fun m!11945 () Bool)

(assert (=> b!9041 m!11945))

(assert (=> b!9041 m!11945))

(declare-fun m!11947 () Bool)

(assert (=> b!9041 m!11947))

(declare-fun m!11949 () Bool)

(assert (=> b!9042 m!11949))

(push 1)

(assert (not b_lambda!4607))

(assert b_and!3613)

(assert (not b_lambda!4609))

(assert (not b_lambda!4611))

(assert (not b_next!2261))

(assert (not b_next!2263))

(assert b_and!3611)

(assert (not b_next!2269))

(assert (not b_next!2245))

(assert b_and!3607)

(assert (not b_next!2265))

(assert (not b!9041))

(assert b_and!3609)

(assert (not b!9044))

(assert b_and!3603)

(assert (not start!1800))

(assert b_and!3605)

(assert (not b_next!2259))

(assert (not b_next!2267))

(assert b_and!3587)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3613)

(assert (not b_next!2261))

(assert (not b_next!2263))

(assert b_and!3611)

(assert (not b_next!2269))

(assert (not b_next!2245))

(assert b_and!3607)

(assert (not b_next!2265))

(assert b_and!3609)

(assert b_and!3603)

(assert b_and!3605)

(assert (not b_next!2259))

(assert (not b_next!2267))

(assert b_and!3587)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4613 () Bool)

(assert (= b_lambda!4607 (or (and b!9044 (= lambda!2178 (y!555 thiss!856))) (and b!9037 b_free!979 (= (x!4988 thiss!856) (y!555 thiss!856))) (and b!9040 b_free!973 (= (y!555 that!214) (y!555 thiss!856))) (and b!9037 b_free!981) (and b!9040 b_free!971 (= (x!4988 that!214) (y!555 thiss!856))) (and b!9038 (= lambda!2180 (y!555 thiss!856))) b_lambda!4613)))

(declare-fun bs!2213 () Bool)

(declare-fun d!7145 () Bool)

(assert (= bs!2213 (and d!7145 b!9044)))

(assert (=> bs!2213 (= (dynLambda!274 lambda!2178) (fold!34 tree!25 f!585))))

(assert (=> bs!2213 m!11943))

(assert (=> (and b!9044 (= lambda!2178 (y!555 thiss!856)) b!9039) d!7145))

(declare-fun bs!2214 () Bool)

(declare-fun d!7147 () Bool)

(assert (= bs!2214 (and d!7147 b!9038)))

(declare-fun dynLambda!275 (Int Balance!191 Balance!191) Balance!191)

(assert (=> bs!2214 (= (dynLambda!274 lambda!2180) (dynLambda!275 f!585 (fold!34 (left!417 tree!25) f!585) (fold!34 (right!420 tree!25) f!585)))))

(declare-fun b_lambda!4619 () Bool)

(assert (=> (not b_lambda!4619) (not bs!2214)))

(declare-fun t!2305 () Bool)

(declare-fun tb!1965 () Bool)

(assert (=> (and start!1800 (= f!585 f!585) t!2305) tb!1965))

(declare-fun result!2005 () Bool)

(assert (=> tb!1965 (= result!2005 true)))

(assert (=> bs!2214 t!2305))

(declare-fun b_and!3615 () Bool)

(assert (= b_and!3587 (and (=> t!2305 result!2005) b_and!3615)))

(declare-fun m!11951 () Bool)

(assert (=> bs!2214 m!11951))

(declare-fun m!11953 () Bool)

(assert (=> bs!2214 m!11953))

(assert (=> bs!2214 m!11951))

(assert (=> bs!2214 m!11953))

(declare-fun m!11955 () Bool)

(assert (=> bs!2214 m!11955))

(assert (=> (and b!9038 (= lambda!2180 (y!555 thiss!856)) b!9039) d!7147))

(declare-fun b_lambda!4615 () Bool)

(assert (= b_lambda!4611 (or (and b!9044 (= lambda!2179 (evidence!144 thiss!856))) (and b!9038 (= lambda!2181 (evidence!144 thiss!856))) (and b!9040 b_free!975 (= (evidence!144 that!214) (evidence!144 thiss!856))) (and b!9037 b_free!983) b_lambda!4615)))

(declare-fun bs!2215 () Bool)

(declare-fun d!7149 () Bool)

(assert (= bs!2215 (and d!7149 b!9044)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!2215 (= (dynLambda!273 lambda!2179) trivial!1)))

(assert (=> (and b!9044 (= lambda!2179 (evidence!144 thiss!856)) b!9042) d!7149))

(declare-fun bs!2216 () Bool)

(declare-fun d!7151 () Bool)

(assert (= bs!2216 (and d!7151 b!9038)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!58) Bool)

(assert (=> bs!2216 (= (dynLambda!273 lambda!2181) (fold_foldRight1_equivalence!0 (left!417 tree!25)))))

(declare-fun m!11957 () Bool)

(assert (=> bs!2216 m!11957))

(assert (=> (and b!9038 (= lambda!2181 (evidence!144 thiss!856)) b!9042) d!7151))

(declare-fun b_lambda!4617 () Bool)

(assert (= b_lambda!4609 (or (and b!9040 b_free!973 (= (y!555 that!214) (x!4988 that!214))) (and b!9044 (= lambda!2178 (x!4988 that!214))) (and b!9040 b_free!971) (and b!9037 b_free!981 (= (y!555 thiss!856) (x!4988 that!214))) (and b!9037 b_free!979 (= (x!4988 thiss!856) (x!4988 that!214))) (and b!9038 (= lambda!2180 (x!4988 that!214))) b_lambda!4617)))

(declare-fun bs!2217 () Bool)

(declare-fun d!7153 () Bool)

(assert (= bs!2217 (and d!7153 b!9038)))

(assert (=> bs!2217 (= (dynLambda!274 lambda!2180) (dynLambda!275 f!585 (fold!34 (left!417 tree!25) f!585) (fold!34 (right!420 tree!25) f!585)))))

(declare-fun b_lambda!4621 () Bool)

(assert (=> (not b_lambda!4621) (not bs!2217)))

(assert (=> bs!2217 t!2305))

(declare-fun b_and!3617 () Bool)

(assert (= b_and!3615 (and (=> t!2305 result!2005) b_and!3617)))

(assert (=> bs!2217 m!11951))

(assert (=> bs!2217 m!11953))

(assert (=> bs!2217 m!11951))

(assert (=> bs!2217 m!11953))

(assert (=> bs!2217 m!11955))

(assert (=> (and b!9038 (= lambda!2180 (x!4988 that!214)) b!9039) d!7153))

(declare-fun bs!2218 () Bool)

(declare-fun d!7155 () Bool)

(assert (= bs!2218 (and d!7155 b!9044)))

(assert (=> bs!2218 (= (dynLambda!274 lambda!2178) (fold!34 tree!25 f!585))))

(assert (=> bs!2218 m!11943))

(assert (=> (and b!9044 (= lambda!2178 (x!4988 that!214)) b!9039) d!7155))

(push 1)

(assert b_and!3613)

(assert (not b_lambda!4613))

(assert (not bs!2216))

(assert (not bs!2214))

(assert (not b_next!2261))

(assert (not b_next!2263))

(assert (not b_lambda!4621))

(assert b_and!3611)

(assert (not b_next!2269))

(assert (not b_lambda!4619))

(assert b_and!3617)

(assert (not b_next!2245))

(assert (not bs!2217))

(assert b_and!3607)

(assert (not b_next!2265))

(assert (not bs!2213))

(assert (not b!9041))

(assert b_and!3609)

(assert (not b_lambda!4615))

(assert (not b!9044))

(assert (not bs!2218))

(assert b_and!3603)

(assert (not start!1800))

(assert b_and!3605)

(assert (not b_next!2259))

(assert (not b_next!2267))

(assert (not b_lambda!4617))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3613)

(assert (not b_next!2261))

(assert (not b_next!2263))

(assert b_and!3611)

(assert (not b_next!2269))

(assert b_and!3617)

(assert (not b_next!2245))

(assert b_and!3607)

(assert (not b_next!2265))

(assert b_and!3609)

(assert b_and!3603)

(assert b_and!3605)

(assert (not b_next!2259))

(assert (not b_next!2267))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4623 () Bool)

(assert (= b_lambda!4621 (or (and start!1800 (= lambda!2177 f!585)) (and start!1800 b_free!977) b_lambda!4623)))

(declare-fun bs!2219 () Bool)

(declare-fun d!7157 () Bool)

(assert (= bs!2219 (and d!7157 start!1800)))

(declare-fun ++!3 (Balance!191 Balance!191) Balance!191)

(assert (=> bs!2219 (= (dynLambda!275 lambda!2177 (fold!34 (left!417 tree!25) f!585) (fold!34 (right!420 tree!25) f!585)) (++!3 (fold!34 (left!417 tree!25) f!585) (fold!34 (right!420 tree!25) f!585)))))

(assert (=> bs!2219 m!11951))

(assert (=> bs!2219 m!11953))

(declare-fun m!11959 () Bool)

(assert (=> bs!2219 m!11959))

(assert (=> (and start!1800 (= lambda!2177 f!585) bs!2217) d!7157))

(declare-fun b_lambda!4625 () Bool)

(assert (= b_lambda!4619 (or (and start!1800 (= lambda!2177 f!585)) (and start!1800 b_free!977) b_lambda!4625)))

(assert (=> (and start!1800 (= lambda!2177 f!585) bs!2214) d!7157))

(push 1)

(assert b_and!3613)

(assert (not b_lambda!4625))

(assert (not b_lambda!4613))

(assert (not bs!2216))

(assert (not bs!2214))

(assert (not b_next!2261))

(assert (not b_next!2263))

(assert b_and!3611)

(assert (not bs!2219))

(assert (not b_next!2269))

(assert b_and!3617)

(assert (not b_next!2245))

(assert (not bs!2217))

(assert b_and!3607)

(assert (not b_next!2265))

(assert (not bs!2213))

(assert (not b!9041))

(assert b_and!3609)

(assert (not b_lambda!4623))

(assert (not b_lambda!4615))

(assert (not b!9044))

(assert (not bs!2218))

(assert b_and!3603)

(assert (not start!1800))

(assert b_and!3605)

(assert (not b_next!2259))

(assert (not b_next!2267))

(assert (not b_lambda!4617))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3613)

(assert (not b_next!2261))

(assert (not b_next!2263))

(assert b_and!3611)

(assert (not b_next!2269))

(assert b_and!3617)

(assert (not b_next!2245))

(assert b_and!3607)

(assert (not b_next!2265))

(assert b_and!3609)

(assert b_and!3603)

(assert b_and!3605)

(assert (not b_next!2259))

(assert (not b_next!2267))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7159 () Bool)

(assert (=> d!7159 (= trivial!1 true)))

(assert (=> b!9044 d!7159))

(declare-fun bs!2220 () Bool)

(declare-fun b!9056 () Bool)

(assert (= bs!2220 (and b!9056 b!9044)))

(declare-fun lambda!2186 () Int)

(assert (=> bs!2220 (= (= (left!417 tree!25) tree!25) (= lambda!2186 lambda!2178))))

(declare-fun bs!2221 () Bool)

(assert (= bs!2221 (and b!9056 b!9038)))

(assert (=> bs!2221 (not (= lambda!2186 lambda!2180))))

(assert (=> b!9056 true))

(assert (=> b!9056 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2186))))

(assert (=> b!9056 true))

(declare-fun b_next!2271 () Bool)

(assert (=> b!9040 (= b_next!2259 (or (and b!9056 (= lambda!2186 (x!4988 that!214))) b_next!2271))))

(declare-fun b_next!2273 () Bool)

(assert (=> b!9040 (= b_next!2261 (or (and b!9056 (= lambda!2186 (y!555 that!214))) b_next!2273))))

(declare-fun b_next!2275 () Bool)

(assert (=> b!9037 (= b_next!2263 (or (and b!9056 (= lambda!2186 (x!4988 thiss!856))) b_next!2275))))

(declare-fun b_next!2277 () Bool)

(assert (=> b!9037 (= b_next!2265 (or (and b!9056 (= lambda!2186 (y!555 thiss!856))) b_next!2277))))

(declare-fun lambda!2187 () Int)

(assert (=> bs!2220 (= (= (right!420 tree!25) tree!25) (= lambda!2187 lambda!2178))))

(assert (=> bs!2221 (not (= lambda!2187 lambda!2180))))

(assert (=> b!9056 (= (= (right!420 tree!25) (left!417 tree!25)) (= lambda!2187 lambda!2186))))

(assert (=> b!9056 true))

(assert (=> b!9056 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2187))))

(assert (=> b!9056 true))

(declare-fun b_next!2279 () Bool)

(assert (=> b!9040 (= b_next!2271 (or (and b!9056 (= lambda!2187 (x!4988 that!214))) b_next!2279))))

(declare-fun b_next!2281 () Bool)

(assert (=> b!9040 (= b_next!2273 (or (and b!9056 (= lambda!2187 (y!555 that!214))) b_next!2281))))

(declare-fun b_next!2283 () Bool)

(assert (=> b!9037 (= b_next!2275 (or (and b!9056 (= lambda!2187 (x!4988 thiss!856))) b_next!2283))))

(declare-fun b_next!2285 () Bool)

(assert (=> b!9037 (= b_next!2277 (or (and b!9056 (= lambda!2187 (y!555 thiss!856))) b_next!2285))))

(declare-fun e!5319 () Balance!191)

(declare-datatypes () ((tuple2!74 (tuple2!75 (_1!37 Balance!191) (_2!37 Balance!191)))))

(declare-fun lt!1601 () tuple2!74)

(assert (=> b!9056 (= e!5319 (dynLambda!275 f!585 (_1!37 lt!1601) (_2!37 lt!1601)))))

(assert (=> b!9056 (= lt!1601 (tuple2!75 (dynLambda!274 lambda!2186) (dynLambda!274 lambda!2187)))))

(declare-fun d!7161 () Bool)

(declare-fun c!2985 () Bool)

(assert (=> d!7161 (= c!2985 (is-Leaf!131 tree!25))))

(assert (=> d!7161 (= (fold!34 tree!25 f!585) e!5319)))

(declare-fun b!9055 () Bool)

(assert (=> b!9055 (= e!5319 (value!1300 tree!25))))

(assert (= (and d!7161 c!2985) b!9055))

(assert (= (and d!7161 (not c!2985)) b!9056))

(declare-fun b_lambda!4627 () Bool)

(assert (=> (not b_lambda!4627) (not b!9056)))

(declare-fun t!2307 () Bool)

(declare-fun tb!1967 () Bool)

(assert (=> (and start!1800 (= f!585 f!585) t!2307) tb!1967))

(declare-fun result!2007 () Bool)

(assert (=> tb!1967 (= result!2007 true)))

(assert (=> b!9056 t!2307))

(declare-fun b_and!3619 () Bool)

(assert (= b_and!3617 (and (=> t!2307 result!2007) b_and!3619)))

(declare-fun b_lambda!4629 () Bool)

(assert (=> (not b_lambda!4629) (not b!9056)))

(declare-fun b_lambda!4631 () Bool)

(assert (=> (not b_lambda!4631) (not b!9056)))

(declare-fun m!11961 () Bool)

(assert (=> b!9056 m!11961))

(declare-fun m!11963 () Bool)

(assert (=> b!9056 m!11963))

(declare-fun m!11965 () Bool)

(assert (=> b!9056 m!11965))

(assert (=> b!9041 d!7161))

(declare-fun d!7163 () Bool)

(declare-fun c!2988 () Bool)

(assert (=> d!7163 (= c!2988 (and (is-Cons!209 (toList!58 tree!25)) (is-Nil!210 (tail!439 (toList!58 tree!25)))))))

(declare-fun e!5322 () Balance!191)

(assert (=> d!7163 (= (foldRight1!65 (toList!58 tree!25) f!585) e!5322)))

(declare-fun b!9061 () Bool)

(assert (=> b!9061 (= e!5322 (head!427 (toList!58 tree!25)))))

(declare-fun b!9062 () Bool)

(assert (=> b!9062 (= e!5322 (dynLambda!275 f!585 (head!427 (toList!58 tree!25)) (foldRight1!65 (tail!439 (toList!58 tree!25)) f!585)))))

(assert (= (and d!7163 c!2988) b!9061))

(assert (= (and d!7163 (not c!2988)) b!9062))

(declare-fun b_lambda!4633 () Bool)

(assert (=> (not b_lambda!4633) (not b!9062)))

(declare-fun t!2309 () Bool)

(declare-fun tb!1969 () Bool)

(assert (=> (and start!1800 (= f!585 f!585) t!2309) tb!1969))

(declare-fun result!2009 () Bool)

(assert (=> tb!1969 (= result!2009 true)))

(assert (=> b!9062 t!2309))

(declare-fun b_and!3621 () Bool)

(assert (= b_and!3619 (and (=> t!2309 result!2009) b_and!3621)))

(declare-fun m!11967 () Bool)

(assert (=> b!9062 m!11967))

(assert (=> b!9062 m!11967))

(declare-fun m!11969 () Bool)

(assert (=> b!9062 m!11969))

(assert (=> b!9041 d!7163))

(declare-fun d!7165 () Bool)

(declare-fun lt!1604 () List!212)

(declare-fun isEmpty!170 (List!212) Bool)

(assert (=> d!7165 (not (isEmpty!170 lt!1604))))

(declare-fun e!5325 () List!212)

(assert (=> d!7165 (= lt!1604 e!5325)))

(declare-fun c!2991 () Bool)

(assert (=> d!7165 (= c!2991 (is-Leaf!131 tree!25))))

(assert (=> d!7165 (= (toList!58 tree!25) lt!1604)))

(declare-fun b!9067 () Bool)

(assert (=> b!9067 (= e!5325 (Cons!209 (value!1300 tree!25) Nil!210))))

(declare-fun b!9068 () Bool)

(declare-fun append!91 (List!212 List!212) List!212)

(assert (=> b!9068 (= e!5325 (append!91 (toList!58 (left!417 tree!25)) (toList!58 (right!420 tree!25))))))

(assert (= (and d!7165 c!2991) b!9067))

(assert (= (and d!7165 (not c!2991)) b!9068))

(declare-fun m!11971 () Bool)

(assert (=> d!7165 m!11971))

(declare-fun m!11973 () Bool)

(assert (=> b!9068 m!11973))

(declare-fun m!11975 () Bool)

(assert (=> b!9068 m!11975))

(assert (=> b!9068 m!11973))

(assert (=> b!9068 m!11975))

(declare-fun m!11977 () Bool)

(assert (=> b!9068 m!11977))

(assert (=> b!9041 d!7165))

(assert (=> bs!2213 d!7161))

(assert (=> bs!2218 d!7161))

(declare-fun bs!2222 () Bool)

(declare-fun b!9070 () Bool)

(assert (= bs!2222 (and b!9070 b!9044)))

(declare-fun lambda!2188 () Int)

(assert (=> bs!2222 (= (= (left!417 (left!417 tree!25)) tree!25) (= lambda!2188 lambda!2178))))

(declare-fun bs!2223 () Bool)

(assert (= bs!2223 (and b!9070 b!9038)))

(assert (=> bs!2223 (not (= lambda!2188 lambda!2180))))

(declare-fun bs!2224 () Bool)

(assert (= bs!2224 (and b!9070 b!9056)))

(assert (=> bs!2224 (= (= (left!417 (left!417 tree!25)) (left!417 tree!25)) (= lambda!2188 lambda!2186))))

(assert (=> bs!2224 (= (= (left!417 (left!417 tree!25)) (right!420 tree!25)) (= lambda!2188 lambda!2187))))

(assert (=> b!9070 true))

(assert (=> b!9070 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2188))))

(assert (=> b!9070 true))

(declare-fun b_next!2287 () Bool)

(assert (=> b!9040 (= b_next!2279 (or (and b!9070 (= lambda!2188 (x!4988 that!214))) b_next!2287))))

(declare-fun b_next!2289 () Bool)

(assert (=> b!9040 (= b_next!2281 (or (and b!9070 (= lambda!2188 (y!555 that!214))) b_next!2289))))

(declare-fun b_next!2291 () Bool)

(assert (=> b!9037 (= b_next!2283 (or (and b!9070 (= lambda!2188 (x!4988 thiss!856))) b_next!2291))))

(declare-fun b_next!2293 () Bool)

(assert (=> b!9037 (= b_next!2285 (or (and b!9070 (= lambda!2188 (y!555 thiss!856))) b_next!2293))))

(declare-fun lambda!2189 () Int)

(assert (=> bs!2224 (= (= (right!420 (left!417 tree!25)) (left!417 tree!25)) (= lambda!2189 lambda!2186))))

(assert (=> b!9070 (= (= (right!420 (left!417 tree!25)) (left!417 (left!417 tree!25))) (= lambda!2189 lambda!2188))))

(assert (=> bs!2222 (= (= (right!420 (left!417 tree!25)) tree!25) (= lambda!2189 lambda!2178))))

(assert (=> bs!2224 (= (= (right!420 (left!417 tree!25)) (right!420 tree!25)) (= lambda!2189 lambda!2187))))

(assert (=> bs!2223 (not (= lambda!2189 lambda!2180))))

(assert (=> b!9070 true))

(assert (=> b!9070 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2189))))

(assert (=> b!9070 true))

(declare-fun b_next!2295 () Bool)

(assert (=> b!9040 (= b_next!2287 (or (and b!9070 (= lambda!2189 (x!4988 that!214))) b_next!2295))))

(declare-fun b_next!2297 () Bool)

(assert (=> b!9040 (= b_next!2289 (or (and b!9070 (= lambda!2189 (y!555 that!214))) b_next!2297))))

(declare-fun b_next!2299 () Bool)

(assert (=> b!9037 (= b_next!2291 (or (and b!9070 (= lambda!2189 (x!4988 thiss!856))) b_next!2299))))

(declare-fun b_next!2301 () Bool)

(assert (=> b!9037 (= b_next!2293 (or (and b!9070 (= lambda!2189 (y!555 thiss!856))) b_next!2301))))

(declare-fun e!5326 () Balance!191)

(declare-fun lt!1605 () tuple2!74)

(assert (=> b!9070 (= e!5326 (dynLambda!275 f!585 (_1!37 lt!1605) (_2!37 lt!1605)))))

(assert (=> b!9070 (= lt!1605 (tuple2!75 (dynLambda!274 lambda!2188) (dynLambda!274 lambda!2189)))))

(declare-fun d!7167 () Bool)

(declare-fun c!2992 () Bool)

(assert (=> d!7167 (= c!2992 (is-Leaf!131 (left!417 tree!25)))))

(assert (=> d!7167 (= (fold!34 (left!417 tree!25) f!585) e!5326)))

(declare-fun b!9069 () Bool)

(assert (=> b!9069 (= e!5326 (value!1300 (left!417 tree!25)))))

(assert (= (and d!7167 c!2992) b!9069))

(assert (= (and d!7167 (not c!2992)) b!9070))

(declare-fun b_lambda!4635 () Bool)

(assert (=> (not b_lambda!4635) (not b!9070)))

(declare-fun t!2311 () Bool)

(declare-fun tb!1971 () Bool)

(assert (=> (and start!1800 (= f!585 f!585) t!2311) tb!1971))

(declare-fun result!2011 () Bool)

(assert (=> tb!1971 (= result!2011 true)))

(assert (=> b!9070 t!2311))

(declare-fun b_and!3623 () Bool)

(assert (= b_and!3621 (and (=> t!2311 result!2011) b_and!3623)))

(declare-fun b_lambda!4637 () Bool)

(assert (=> (not b_lambda!4637) (not b!9070)))

(declare-fun b_lambda!4639 () Bool)

(assert (=> (not b_lambda!4639) (not b!9070)))

(declare-fun m!11979 () Bool)

(assert (=> b!9070 m!11979))

(declare-fun m!11981 () Bool)

(assert (=> b!9070 m!11981))

(declare-fun m!11983 () Bool)

(assert (=> b!9070 m!11983))

(assert (=> bs!2217 d!7167))

(declare-fun bs!2225 () Bool)

(declare-fun b!9072 () Bool)

(assert (= bs!2225 (and b!9072 b!9070)))

(declare-fun lambda!2190 () Int)

(assert (=> bs!2225 (= (= (left!417 (right!420 tree!25)) (right!420 (left!417 tree!25))) (= lambda!2190 lambda!2189))))

(declare-fun bs!2226 () Bool)

(assert (= bs!2226 (and b!9072 b!9056)))

(assert (=> bs!2226 (= (= (left!417 (right!420 tree!25)) (left!417 tree!25)) (= lambda!2190 lambda!2186))))

(assert (=> bs!2225 (= (= (left!417 (right!420 tree!25)) (left!417 (left!417 tree!25))) (= lambda!2190 lambda!2188))))

(declare-fun bs!2227 () Bool)

(assert (= bs!2227 (and b!9072 b!9044)))

(assert (=> bs!2227 (= (= (left!417 (right!420 tree!25)) tree!25) (= lambda!2190 lambda!2178))))

(assert (=> bs!2226 (= (= (left!417 (right!420 tree!25)) (right!420 tree!25)) (= lambda!2190 lambda!2187))))

(declare-fun bs!2228 () Bool)

(assert (= bs!2228 (and b!9072 b!9038)))

(assert (=> bs!2228 (not (= lambda!2190 lambda!2180))))

(assert (=> b!9072 true))

(assert (=> b!9072 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2190))))

(assert (=> b!9072 true))

(declare-fun b_next!2303 () Bool)

(assert (=> b!9040 (= b_next!2295 (or (and b!9072 (= lambda!2190 (x!4988 that!214))) b_next!2303))))

(declare-fun b_next!2305 () Bool)

(assert (=> b!9040 (= b_next!2297 (or (and b!9072 (= lambda!2190 (y!555 that!214))) b_next!2305))))

(declare-fun b_next!2307 () Bool)

(assert (=> b!9037 (= b_next!2299 (or (and b!9072 (= lambda!2190 (x!4988 thiss!856))) b_next!2307))))

(declare-fun b_next!2309 () Bool)

(assert (=> b!9037 (= b_next!2301 (or (and b!9072 (= lambda!2190 (y!555 thiss!856))) b_next!2309))))

(declare-fun lambda!2191 () Int)

(assert (=> bs!2225 (= (= (right!420 (right!420 tree!25)) (right!420 (left!417 tree!25))) (= lambda!2191 lambda!2189))))

(assert (=> b!9072 (= (= (right!420 (right!420 tree!25)) (left!417 (right!420 tree!25))) (= lambda!2191 lambda!2190))))

(assert (=> bs!2226 (= (= (right!420 (right!420 tree!25)) (left!417 tree!25)) (= lambda!2191 lambda!2186))))

(assert (=> bs!2225 (= (= (right!420 (right!420 tree!25)) (left!417 (left!417 tree!25))) (= lambda!2191 lambda!2188))))

(assert (=> bs!2227 (= (= (right!420 (right!420 tree!25)) tree!25) (= lambda!2191 lambda!2178))))

(assert (=> bs!2226 (= (= (right!420 (right!420 tree!25)) (right!420 tree!25)) (= lambda!2191 lambda!2187))))

(assert (=> bs!2228 (not (= lambda!2191 lambda!2180))))

(assert (=> b!9072 true))

(assert (=> b!9072 (< (dynLambda!271 order!121 f!585) (dynLambda!272 order!123 lambda!2191))))

(assert (=> b!9072 true))

(declare-fun b_next!2311 () Bool)

(assert (=> b!9040 (= b_next!2303 (or (and b!9072 (= lambda!2191 (x!4988 that!214))) b_next!2311))))

(declare-fun b_next!2313 () Bool)

(assert (=> b!9040 (= b_next!2305 (or (and b!9072 (= lambda!2191 (y!555 that!214))) b_next!2313))))

(declare-fun b_next!2315 () Bool)

(assert (=> b!9037 (= b_next!2307 (or (and b!9072 (= lambda!2191 (x!4988 thiss!856))) b_next!2315))))

(declare-fun b_next!2317 () Bool)

(assert (=> b!9037 (= b_next!2309 (or (and b!9072 (= lambda!2191 (y!555 thiss!856))) b_next!2317))))

(declare-fun e!5327 () Balance!191)

(declare-fun lt!1606 () tuple2!74)

(assert (=> b!9072 (= e!5327 (dynLambda!275 f!585 (_1!37 lt!1606) (_2!37 lt!1606)))))

(assert (=> b!9072 (= lt!1606 (tuple2!75 (dynLambda!274 lambda!2190) (dynLambda!274 lambda!2191)))))

(declare-fun d!7169 () Bool)

(declare-fun c!2993 () Bool)

(assert (=> d!7169 (= c!2993 (is-Leaf!131 (right!420 tree!25)))))

(assert (=> d!7169 (= (fold!34 (right!420 tree!25) f!585) e!5327)))

(declare-fun b!9071 () Bool)

(assert (=> b!9071 (= e!5327 (value!1300 (right!420 tree!25)))))

(assert (= (and d!7169 c!2993) b!9071))

(assert (= (and d!7169 (not c!2993)) b!9072))

(declare-fun b_lambda!4641 () Bool)

(assert (=> (not b_lambda!4641) (not b!9072)))

(declare-fun t!2313 () Bool)

(declare-fun tb!1973 () Bool)

(assert (=> (and start!1800 (= f!585 f!585) t!2313) tb!1973))

(declare-fun result!2013 () Bool)

(assert (=> tb!1973 (= result!2013 true)))

(assert (=> b!9072 t!2313))

(declare-fun b_and!3625 () Bool)

(assert (= b_and!3623 (and (=> t!2313 result!2013) b_and!3625)))

(declare-fun b_lambda!4643 () Bool)

(assert (=> (not b_lambda!4643) (not b!9072)))

(declare-fun b_lambda!4645 () Bool)

(assert (=> (not b_lambda!4645) (not b!9072)))

(declare-fun m!11985 () Bool)

(assert (=> b!9072 m!11985))

(declare-fun m!11987 () Bool)

(assert (=> b!9072 m!11987))

(declare-fun m!11989 () Bool)

(assert (=> b!9072 m!11989))

(assert (=> bs!2217 d!7169))

(declare-fun d!7171 () Bool)

(declare-fun res!2873 () Bool)

(declare-fun e!5330 () Bool)

(assert (=> d!7171 (=> (not res!2873) (not e!5330))))

(assert (=> d!7171 (= res!2873 (= (dynLambda!274 (x!4988 that!214)) (dynLambda!274 (y!555 that!214))))))

(assert (=> d!7171 (= (inv!318 that!214) e!5330)))

(declare-fun b!9075 () Bool)

(assert (=> b!9075 (= e!5330 (dynLambda!273 (evidence!144 that!214)))))

(assert (= (and d!7171 res!2873) b!9075))

(declare-fun b_lambda!4647 () Bool)

(assert (=> (not b_lambda!4647) (not d!7171)))

(assert (=> d!7171 t!2293))

(declare-fun b_and!3627 () Bool)

(assert (= b_and!3603 (and (=> t!2293 result!1993) b_and!3627)))

(assert (=> d!7171 t!2295))

(declare-fun b_and!3629 () Bool)

(assert (= b_and!3605 (and (=> t!2295 result!1995) b_and!3629)))

(assert (=> d!7171 t!2297))

(declare-fun b_and!3631 () Bool)

(assert (= b_and!3607 (and (=> t!2297 result!1997) b_and!3631)))

(assert (=> d!7171 t!2299))

(declare-fun b_and!3633 () Bool)

(assert (= b_and!3609 (and (=> t!2299 result!1999) b_and!3633)))

(declare-fun b_lambda!4649 () Bool)

(assert (=> (not b_lambda!4649) (not d!7171)))

(declare-fun t!2315 () Bool)

(declare-fun tb!1975 () Bool)

(assert (=> (and b!9040 (= (x!4988 that!214) (y!555 that!214)) t!2315) tb!1975))

(declare-fun result!2015 () Bool)

(assert (=> tb!1975 (= result!2015 true)))

(assert (=> d!7171 t!2315))

(declare-fun b_and!3635 () Bool)

(assert (= b_and!3627 (and (=> t!2315 result!2015) b_and!3635)))

(declare-fun t!2317 () Bool)

(declare-fun tb!1977 () Bool)

(assert (=> (and b!9040 (= (y!555 that!214) (y!555 that!214)) t!2317) tb!1977))

(declare-fun result!2017 () Bool)

(assert (=> tb!1977 (= result!2017 true)))

(assert (=> d!7171 t!2317))

(declare-fun b_and!3637 () Bool)

(assert (= b_and!3629 (and (=> t!2317 result!2017) b_and!3637)))

(declare-fun t!2319 () Bool)

(declare-fun tb!1979 () Bool)

(assert (=> (and b!9037 (= (x!4988 thiss!856) (y!555 that!214)) t!2319) tb!1979))

(declare-fun result!2019 () Bool)

(assert (=> tb!1979 (= result!2019 true)))

(assert (=> d!7171 t!2319))

(declare-fun b_and!3639 () Bool)

(assert (= b_and!3631 (and (=> t!2319 result!2019) b_and!3639)))

(declare-fun t!2321 () Bool)

(declare-fun tb!1981 () Bool)

(assert (=> (and b!9037 (= (y!555 thiss!856) (y!555 that!214)) t!2321) tb!1981))

(declare-fun result!2021 () Bool)

(assert (=> tb!1981 (= result!2021 true)))

(assert (=> d!7171 t!2321))

(declare-fun b_and!3641 () Bool)

(assert (= b_and!3633 (and (=> t!2321 result!2021) b_and!3641)))

(declare-fun b_lambda!4651 () Bool)

(assert (=> (not b_lambda!4651) (not b!9075)))

(declare-fun t!2323 () Bool)

(declare-fun tb!1983 () Bool)

(assert (=> (and b!9040 (= (evidence!144 that!214) (evidence!144 that!214)) t!2323) tb!1983))

(declare-fun result!2023 () Bool)

(assert (=> tb!1983 (= result!2023 true)))

(assert (=> b!9075 t!2323))

(declare-fun b_and!3643 () Bool)

(assert (= b_and!3611 (and (=> t!2323 result!2023) b_and!3643)))

(declare-fun t!2325 () Bool)

(declare-fun tb!1985 () Bool)

(assert (=> (and b!9037 (= (evidence!144 thiss!856) (evidence!144 that!214)) t!2325) tb!1985))

(declare-fun result!2025 () Bool)

(assert (=> tb!1985 (= result!2025 true)))

(assert (=> b!9075 t!2325))

(declare-fun b_and!3645 () Bool)

(assert (= b_and!3613 (and (=> t!2325 result!2025) b_and!3645)))

(assert (=> d!7171 m!11941))

(declare-fun m!11991 () Bool)

(assert (=> d!7171 m!11991))

(declare-fun m!11993 () Bool)

(assert (=> b!9075 m!11993))

(assert (=> start!1800 d!7171))

(declare-fun d!7173 () Bool)

(declare-fun res!2874 () Bool)

(declare-fun e!5331 () Bool)

(assert (=> d!7173 (=> (not res!2874) (not e!5331))))

(assert (=> d!7173 (= res!2874 (= (dynLambda!274 (x!4988 thiss!856)) (dynLambda!274 (y!555 thiss!856))))))

(assert (=> d!7173 (= (inv!318 thiss!856) e!5331)))

(declare-fun b!9076 () Bool)

(assert (=> b!9076 (= e!5331 (dynLambda!273 (evidence!144 thiss!856)))))

(assert (= (and d!7173 res!2874) b!9076))

(declare-fun b_lambda!4653 () Bool)

(assert (=> (not b_lambda!4653) (not d!7173)))

(declare-fun tb!1987 () Bool)

(declare-fun t!2327 () Bool)

(assert (=> (and b!9040 (= (x!4988 that!214) (x!4988 thiss!856)) t!2327) tb!1987))

(declare-fun result!2027 () Bool)

(assert (=> tb!1987 (= result!2027 true)))

(assert (=> d!7173 t!2327))

(declare-fun b_and!3647 () Bool)

(assert (= b_and!3635 (and (=> t!2327 result!2027) b_and!3647)))

(declare-fun tb!1989 () Bool)

(declare-fun t!2329 () Bool)

(assert (=> (and b!9040 (= (y!555 that!214) (x!4988 thiss!856)) t!2329) tb!1989))

(declare-fun result!2029 () Bool)

(assert (=> tb!1989 (= result!2029 true)))

(assert (=> d!7173 t!2329))

(declare-fun b_and!3649 () Bool)

(assert (= b_and!3637 (and (=> t!2329 result!2029) b_and!3649)))

(declare-fun t!2331 () Bool)

(declare-fun tb!1991 () Bool)

(assert (=> (and b!9037 (= (x!4988 thiss!856) (x!4988 thiss!856)) t!2331) tb!1991))

(declare-fun result!2031 () Bool)

(assert (=> tb!1991 (= result!2031 true)))

(assert (=> d!7173 t!2331))

(declare-fun b_and!3651 () Bool)

(assert (= b_and!3639 (and (=> t!2331 result!2031) b_and!3651)))

(declare-fun t!2333 () Bool)

(declare-fun tb!1993 () Bool)

(assert (=> (and b!9037 (= (y!555 thiss!856) (x!4988 thiss!856)) t!2333) tb!1993))

(declare-fun result!2033 () Bool)

(assert (=> tb!1993 (= result!2033 true)))

(assert (=> d!7173 t!2333))

(declare-fun b_and!3653 () Bool)

(assert (= b_and!3641 (and (=> t!2333 result!2033) b_and!3653)))

(declare-fun b_lambda!4655 () Bool)

(assert (=> (not b_lambda!4655) (not d!7173)))

(assert (=> d!7173 t!2285))

(declare-fun b_and!3655 () Bool)

(assert (= b_and!3647 (and (=> t!2285 result!1985) b_and!3655)))

(assert (=> d!7173 t!2287))

(declare-fun b_and!3657 () Bool)

(assert (= b_and!3649 (and (=> t!2287 result!1987) b_and!3657)))

(assert (=> d!7173 t!2289))

(declare-fun b_and!3659 () Bool)

(assert (= b_and!3651 (and (=> t!2289 result!1989) b_and!3659)))

(assert (=> d!7173 t!2291))

(declare-fun b_and!3661 () Bool)

(assert (= b_and!3653 (and (=> t!2291 result!1991) b_and!3661)))

(declare-fun b_lambda!4657 () Bool)

(assert (=> (not b_lambda!4657) (not b!9076)))

(assert (=> b!9076 t!2301))

(declare-fun b_and!3663 () Bool)

(assert (= b_and!3643 (and (=> t!2301 result!2001) b_and!3663)))

(assert (=> b!9076 t!2303))

(declare-fun b_and!3665 () Bool)

(assert (= b_and!3645 (and (=> t!2303 result!2003) b_and!3665)))

(declare-fun m!11995 () Bool)

(assert (=> d!7173 m!11995))

(assert (=> d!7173 m!11939))

(assert (=> b!9076 m!11949))

(assert (=> start!1800 d!7173))

(assert (=> bs!2214 d!7167))

(assert (=> bs!2214 d!7169))

(declare-fun bs!2229 () Bool)

(declare-fun d!7175 () Bool)

(assert (= bs!2229 (and d!7175 start!1800)))

(declare-fun lambda!2194 () Int)

(assert (=> bs!2229 (= lambda!2194 lambda!2177)))

(declare-fun b_next!2319 () Bool)

(assert (=> start!1800 (= b_next!2245 (or (and d!7175 (= lambda!2194 f!585)) b_next!2319))))

(declare-fun because!2 (ProofOps!138 Bool) Bool)

(assert (=> d!7175 (because!2 (ProofOps!139 (= (fold!34 (left!417 tree!25) lambda!2194) (foldRight1!65 (toList!58 (left!417 tree!25)) lambda!2194))) true)))

(assert (=> d!7175 (= (fold!34 (left!417 tree!25) lambda!2194) (foldRight1!65 (toList!58 (left!417 tree!25)) lambda!2194))))

(assert (=> d!7175 (= (fold_foldRight1_equivalence!0 (left!417 tree!25)) true)))

(declare-fun bs!2230 () Bool)

(assert (= bs!2230 d!7175))

(declare-fun m!11997 () Bool)

(assert (=> bs!2230 m!11997))

(assert (=> bs!2230 m!11973))

(assert (=> bs!2230 m!11973))

(declare-fun m!11999 () Bool)

(assert (=> bs!2230 m!11999))

(declare-fun m!12001 () Bool)

(assert (=> bs!2230 m!12001))

(assert (=> bs!2216 d!7175))

(declare-fun b_lambda!4659 () Bool)

(assert (= b_lambda!4645 (or b!9072 b_lambda!4659)))

(declare-fun bs!2231 () Bool)

(declare-fun d!7177 () Bool)

(assert (= bs!2231 (and d!7177 b!9072)))

(assert (=> bs!2231 (= (dynLambda!274 lambda!2191) (fold!34 (right!420 (right!420 tree!25)) f!585))))

(declare-fun m!12003 () Bool)

(assert (=> bs!2231 m!12003))

(assert (=> b!9072 d!7177))

(declare-fun b_lambda!4661 () Bool)

(assert (= b_lambda!4635 (or (and start!1800 (= lambda!2177 f!585)) (and start!1800 b_free!977) (and d!7175 (= lambda!2194 f!585)) b_lambda!4661)))

(declare-fun bs!2232 () Bool)

(declare-fun d!7179 () Bool)

(assert (= bs!2232 (and d!7179 start!1800)))

(assert (=> bs!2232 (= (dynLambda!275 lambda!2177 (_1!37 lt!1605) (_2!37 lt!1605)) (++!3 (_1!37 lt!1605) (_2!37 lt!1605)))))

(declare-fun m!12005 () Bool)

(assert (=> bs!2232 m!12005))

(assert (=> (and start!1800 (= lambda!2177 f!585) b!9070) d!7179))

(declare-fun bs!2233 () Bool)

(declare-fun d!7181 () Bool)

(assert (= bs!2233 (and d!7181 d!7175)))

(assert (=> bs!2233 (= (dynLambda!275 lambda!2194 (_1!37 lt!1605) (_2!37 lt!1605)) (++!3 (_1!37 lt!1605) (_2!37 lt!1605)))))

(assert (=> bs!2233 m!12005))

(assert (=> (and d!7175 (= lambda!2194 f!585) b!9070) d!7181))

(declare-fun b_lambda!4663 () Bool)

(assert (= b_lambda!4651 (or (and b!9044 (= lambda!2179 (evidence!144 that!214))) (and b!9038 (= lambda!2181 (evidence!144 that!214))) (and b!9040 b_free!975) (and b!9037 b_free!983 (= (evidence!144 thiss!856) (evidence!144 that!214))) b_lambda!4663)))

(declare-fun bs!2234 () Bool)

(declare-fun d!7183 () Bool)

(assert (= bs!2234 (and d!7183 b!9044)))

(assert (=> bs!2234 (= (dynLambda!273 lambda!2179) trivial!1)))

(assert (=> (and b!9044 (= lambda!2179 (evidence!144 that!214)) b!9075) d!7183))

(declare-fun bs!2235 () Bool)

(declare-fun d!7185 () Bool)

(assert (= bs!2235 (and d!7185 b!9038)))

(assert (=> bs!2235 (= (dynLambda!273 lambda!2181) (fold_foldRight1_equivalence!0 (left!417 tree!25)))))

(assert (=> bs!2235 m!11957))

(assert (=> (and b!9038 (= lambda!2181 (evidence!144 that!214)) b!9075) d!7185))

(declare-fun b_lambda!4665 () Bool)

(assert (= b_lambda!4633 (or (and start!1800 (= lambda!2177 f!585)) (and start!1800 b_free!977) (and d!7175 (= lambda!2194 f!585)) b_lambda!4665)))

(declare-fun bs!2236 () Bool)

(declare-fun d!7187 () Bool)

(assert (= bs!2236 (and d!7187 start!1800)))

(assert (=> bs!2236 (= (dynLambda!275 lambda!2177 (head!427 (toList!58 tree!25)) (foldRight1!65 (tail!439 (toList!58 tree!25)) f!585)) (++!3 (head!427 (toList!58 tree!25)) (foldRight1!65 (tail!439 (toList!58 tree!25)) f!585)))))

(assert (=> bs!2236 m!11967))

(declare-fun m!12007 () Bool)

(assert (=> bs!2236 m!12007))

(assert (=> (and start!1800 (= lambda!2177 f!585) b!9062) d!7187))

(declare-fun bs!2237 () Bool)

(declare-fun d!7189 () Bool)

(assert (= bs!2237 (and d!7189 d!7175)))

(assert (=> bs!2237 (= (dynLambda!275 lambda!2194 (head!427 (toList!58 tree!25)) (foldRight1!65 (tail!439 (toList!58 tree!25)) f!585)) (++!3 (head!427 (toList!58 tree!25)) (foldRight1!65 (tail!439 (toList!58 tree!25)) f!585)))))

(assert (=> bs!2237 m!11967))

(assert (=> bs!2237 m!12007))

(assert (=> (and d!7175 (= lambda!2194 f!585) b!9062) d!7189))

(declare-fun b_lambda!4667 () Bool)

(assert (= b_lambda!4647 (or (and b!9070 (= lambda!2188 (x!4988 that!214))) (and b!9072 (= lambda!2190 (x!4988 that!214))) (and b!9040 b_free!973 (= (y!555 that!214) (x!4988 that!214))) (and b!9070 (= lambda!2189 (x!4988 that!214))) (and b!9072 (= lambda!2191 (x!4988 that!214))) (and b!9044 (= lambda!2178 (x!4988 that!214))) (and b!9040 b_free!971) (and b!9037 b_free!981 (= (y!555 thiss!856) (x!4988 that!214))) (and b!9056 (= lambda!2186 (x!4988 that!214))) (and b!9056 (= lambda!2187 (x!4988 that!214))) (and b!9037 b_free!979 (= (x!4988 thiss!856) (x!4988 that!214))) (and b!9038 (= lambda!2180 (x!4988 that!214))) b_lambda!4667)))

(declare-fun bs!2238 () Bool)

(declare-fun d!7191 () Bool)

(assert (= bs!2238 (and d!7191 b!9070)))

(assert (=> bs!2238 (= (dynLambda!274 lambda!2188) (fold!34 (left!417 (left!417 tree!25)) f!585))))

(declare-fun m!12009 () Bool)

(assert (=> bs!2238 m!12009))

(assert (=> (and b!9070 (= lambda!2188 (x!4988 that!214)) d!7171) d!7191))

(declare-fun bs!2239 () Bool)

(declare-fun d!7193 () Bool)

(assert (= bs!2239 (and d!7193 b!9072)))

(assert (=> bs!2239 (= (dynLambda!274 lambda!2191) (fold!34 (right!420 (right!420 tree!25)) f!585))))

(assert (=> bs!2239 m!12003))

(assert (=> (and b!9072 (= lambda!2191 (x!4988 that!214)) d!7171) d!7193))

(declare-fun bs!2240 () Bool)

(declare-fun d!7195 () Bool)

(assert (= bs!2240 (and d!7195 b!9070)))

(assert (=> bs!2240 (= (dynLambda!274 lambda!2189) (fold!34 (right!420 (left!417 tree!25)) f!585))))

(declare-fun m!12011 () Bool)

(assert (=> bs!2240 m!12011))

(assert (=> (and b!9070 (= lambda!2189 (x!4988 that!214)) d!7171) d!7195))

(assert (=> (and b!9038 (= lambda!2180 (x!4988 that!214)) d!7171) d!7153))

(declare-fun bs!2241 () Bool)

(declare-fun d!7197 () Bool)

(assert (= bs!2241 (and d!7197 b!9056)))

(assert (=> bs!2241 (= (dynLambda!274 lambda!2186) (fold!34 (left!417 tree!25) f!585))))

(assert (=> bs!2241 m!11951))

(assert (=> (and b!9056 (= lambda!2186 (x!4988 that!214)) d!7171) d!7197))

(declare-fun bs!2242 () Bool)

(declare-fun d!7199 () Bool)

(assert (= bs!2242 (and d!7199 b!9072)))

(assert (=> bs!2242 (= (dynLambda!274 lambda!2190) (fold!34 (left!417 (right!420 tree!25)) f!585))))

(declare-fun m!12013 () Bool)

(assert (=> bs!2242 m!12013))

(assert (=> (and b!9072 (= lambda!2190 (x!4988 that!214)) d!7171) d!7199))

(declare-fun bs!2243 () Bool)

(declare-fun d!7201 () Bool)

(assert (= bs!2243 (and d!7201 b!9056)))

(assert (=> bs!2243 (= (dynLambda!274 lambda!2187) (fold!34 (right!420 tree!25) f!585))))

(assert (=> bs!2243 m!11953))

(assert (=> (and b!9056 (= lambda!2187 (x!4988 that!214)) d!7171) d!7201))

(assert (=> (and b!9044 (= lambda!2178 (x!4988 that!214)) d!7171) d!7155))

(declare-fun b_lambda!4669 () Bool)

(assert (= b_lambda!4657 (or (and b!9044 (= lambda!2179 (evidence!144 thiss!856))) (and b!9038 (= lambda!2181 (evidence!144 thiss!856))) (and b!9040 b_free!975 (= (evidence!144 that!214) (evidence!144 thiss!856))) (and b!9037 b_free!983) b_lambda!4669)))

(assert (=> (and b!9044 (= lambda!2179 (evidence!144 thiss!856)) b!9076) d!7149))

(assert (=> (and b!9038 (= lambda!2181 (evidence!144 thiss!856)) b!9076) d!7151))

(declare-fun b_lambda!4671 () Bool)

(assert (= b_lambda!4653 (or (and b!9072 (= lambda!2190 (x!4988 thiss!856))) (and b!9040 b_free!973 (= (y!555 that!214) (x!4988 thiss!856))) (and b!9040 b_free!971 (= (x!4988 that!214) (x!4988 thiss!856))) (and b!9056 (= lambda!2186 (x!4988 thiss!856))) (and b!9044 (= lambda!2178 (x!4988 thiss!856))) (and b!9037 b_free!979) (and b!9070 (= lambda!2188 (x!4988 thiss!856))) (and b!9037 b_free!981 (= (y!555 thiss!856) (x!4988 thiss!856))) (and b!9056 (= lambda!2187 (x!4988 thiss!856))) (and b!9038 (= lambda!2180 (x!4988 thiss!856))) (and b!9070 (= lambda!2189 (x!4988 thiss!856))) (and b!9072 (= lambda!2191 (x!4988 thiss!856))) b_lambda!4671)))

(declare-fun bs!2244 () Bool)

(declare-fun d!7203 () Bool)

(assert (= bs!2244 (and d!7203 b!9056)))

(assert (=> bs!2244 (= (dynLambda!274 lambda!2186) (fold!34 (left!417 tree!25) f!585))))

(assert (=> bs!2244 m!11951))

(assert (=> (and b!9056 (= lambda!2186 (x!4988 thiss!856)) d!7173) d!7203))

(declare-fun bs!2245 () Bool)

(declare-fun d!7205 () Bool)

(assert (= bs!2245 (and d!7205 b!9044)))

(assert (=> bs!2245 (= (dynLambda!274 lambda!2178) (fold!34 tree!25 f!585))))

(assert (=> bs!2245 m!11943))

(assert (=> (and b!9044 (= lambda!2178 (x!4988 thiss!856)) d!7173) d!7205))

(declare-fun bs!2246 () Bool)

(declare-fun d!7207 () Bool)

(assert (= bs!2246 (and d!7207 b!9038)))

(assert (=> bs!2246 (= (dynLambda!274 lambda!2180) (dynLambda!275 f!585 (fold!34 (left!417 tree!25) f!585) (fold!34 (right!420 tree!25) f!585)))))

(declare-fun b_lambda!4691 () Bool)

(assert (=> (not b_lambda!4691) (not bs!2246)))

(assert (=> bs!2246 t!2305))

(declare-fun b_and!3667 () Bool)

(assert (= b_and!3625 (and (=> t!2305 result!2005) b_and!3667)))

(assert (=> bs!2246 m!11951))

(assert (=> bs!2246 m!11953))

(assert (=> bs!2246 m!11951))

(assert (=> bs!2246 m!11953))

(assert (=> bs!2246 m!11955))

(assert (=> (and b!9038 (= lambda!2180 (x!4988 thiss!856)) d!7173) d!7207))

(declare-fun bs!2247 () Bool)

(declare-fun d!7209 () Bool)

(assert (= bs!2247 (and d!7209 b!9070)))

(assert (=> bs!2247 (= (dynLambda!274 lambda!2188) (fold!34 (left!417 (left!417 tree!25)) f!585))))

(assert (=> bs!2247 m!12009))

(assert (=> (and b!9070 (= lambda!2188 (x!4988 thiss!856)) d!7173) d!7209))

(declare-fun bs!2248 () Bool)

(declare-fun d!7211 () Bool)

(assert (= bs!2248 (and d!7211 b!9056)))

(assert (=> bs!2248 (= (dynLambda!274 lambda!2187) (fold!34 (right!420 tree!25) f!585))))

(assert (=> bs!2248 m!11953))

(assert (=> (and b!9056 (= lambda!2187 (x!4988 thiss!856)) d!7173) d!7211))

(declare-fun bs!2249 () Bool)

(declare-fun d!7213 () Bool)

(assert (= bs!2249 (and d!7213 b!9070)))

(assert (=> bs!2249 (= (dynLambda!274 lambda!2189) (fold!34 (right!420 (left!417 tree!25)) f!585))))

(assert (=> bs!2249 m!12011))

(assert (=> (and b!9070 (= lambda!2189 (x!4988 thiss!856)) d!7173) d!7213))

(declare-fun bs!2250 () Bool)

(declare-fun d!7215 () Bool)

(assert (= bs!2250 (and d!7215 b!9072)))

(assert (=> bs!2250 (= (dynLambda!274 lambda!2190) (fold!34 (left!417 (right!420 tree!25)) f!585))))

(assert (=> bs!2250 m!12013))

(assert (=> (and b!9072 (= lambda!2190 (x!4988 thiss!856)) d!7173) d!7215))

(declare-fun bs!2251 () Bool)

(declare-fun d!7217 () Bool)

(assert (= bs!2251 (and d!7217 b!9072)))

(assert (=> bs!2251 (= (dynLambda!274 lambda!2191) (fold!34 (right!420 (right!420 tree!25)) f!585))))

(assert (=> bs!2251 m!12003))

(assert (=> (and b!9072 (= lambda!2191 (x!4988 thiss!856)) d!7173) d!7217))

(declare-fun b_lambda!4673 () Bool)

(assert (= b_lambda!4637 (or b!9070 b_lambda!4673)))

(declare-fun bs!2252 () Bool)

(declare-fun d!7219 () Bool)

(assert (= bs!2252 (and d!7219 b!9070)))

(assert (=> bs!2252 (= (dynLambda!274 lambda!2188) (fold!34 (left!417 (left!417 tree!25)) f!585))))

(assert (=> bs!2252 m!12009))

(assert (=> b!9070 d!7219))

(declare-fun b_lambda!4675 () Bool)

(assert (= b_lambda!4643 (or b!9072 b_lambda!4675)))

(declare-fun bs!2253 () Bool)

(declare-fun d!7221 () Bool)

(assert (= bs!2253 (and d!7221 b!9072)))

(assert (=> bs!2253 (= (dynLambda!274 lambda!2190) (fold!34 (left!417 (right!420 tree!25)) f!585))))

(assert (=> bs!2253 m!12013))

(assert (=> b!9072 d!7221))

(declare-fun b_lambda!4677 () Bool)

(assert (= b_lambda!4655 (or (and b!9044 (= lambda!2178 (y!555 thiss!856))) (and b!9037 b_free!979 (= (x!4988 thiss!856) (y!555 thiss!856))) (and b!9070 (= lambda!2188 (y!555 thiss!856))) (and b!9072 (= lambda!2190 (y!555 thiss!856))) (and b!9040 b_free!973 (= (y!555 that!214) (y!555 thiss!856))) (and b!9037 b_free!981) (and b!9040 b_free!971 (= (x!4988 that!214) (y!555 thiss!856))) (and b!9038 (= lambda!2180 (y!555 thiss!856))) (and b!9056 (= lambda!2186 (y!555 thiss!856))) (and b!9070 (= lambda!2189 (y!555 thiss!856))) (and b!9056 (= lambda!2187 (y!555 thiss!856))) (and b!9072 (= lambda!2191 (y!555 thiss!856))) b_lambda!4677)))

(assert (=> (and b!9044 (= lambda!2178 (y!555 thiss!856)) d!7173) d!7145))

(declare-fun bs!2254 () Bool)

(declare-fun d!7223 () Bool)

(assert (= bs!2254 (and d!7223 b!9056)))

(assert (=> bs!2254 (= (dynLambda!274 lambda!2187) (fold!34 (right!420 tree!25) f!585))))

(assert (=> bs!2254 m!11953))

(assert (=> (and b!9056 (= lambda!2187 (y!555 thiss!856)) d!7173) d!7223))

(declare-fun bs!2255 () Bool)

(declare-fun d!7225 () Bool)

(assert (= bs!2255 (and d!7225 b!9056)))

(assert (=> bs!2255 (= (dynLambda!274 lambda!2186) (fold!34 (left!417 tree!25) f!585))))

(assert (=> bs!2255 m!11951))

(assert (=> (and b!9056 (= lambda!2186 (y!555 thiss!856)) d!7173) d!7225))

(assert (=> (and b!9038 (= lambda!2180 (y!555 thiss!856)) d!7173) d!7147))

(declare-fun bs!2256 () Bool)

(declare-fun d!7227 () Bool)

(assert (= bs!2256 (and d!7227 b!9070)))

(assert (=> bs!2256 (= (dynLambda!274 lambda!2189) (fold!34 (right!420 (left!417 tree!25)) f!585))))

(assert (=> bs!2256 m!12011))

(assert (=> (and b!9070 (= lambda!2189 (y!555 thiss!856)) d!7173) d!7227))

(declare-fun bs!2257 () Bool)

(declare-fun d!7229 () Bool)

(assert (= bs!2257 (and d!7229 b!9072)))

(assert (=> bs!2257 (= (dynLambda!274 lambda!2191) (fold!34 (right!420 (right!420 tree!25)) f!585))))

(assert (=> bs!2257 m!12003))

(assert (=> (and b!9072 (= lambda!2191 (y!555 thiss!856)) d!7173) d!7229))

(declare-fun bs!2258 () Bool)

(declare-fun d!7231 () Bool)

(assert (= bs!2258 (and d!7231 b!9070)))

(assert (=> bs!2258 (= (dynLambda!274 lambda!2188) (fold!34 (left!417 (left!417 tree!25)) f!585))))

(assert (=> bs!2258 m!12009))

(assert (=> (and b!9070 (= lambda!2188 (y!555 thiss!856)) d!7173) d!7231))

(declare-fun bs!2259 () Bool)

(declare-fun d!7233 () Bool)

(assert (= bs!2259 (and d!7233 b!9072)))

(assert (=> bs!2259 (= (dynLambda!274 lambda!2190) (fold!34 (left!417 (right!420 tree!25)) f!585))))

(assert (=> bs!2259 m!12013))

(assert (=> (and b!9072 (= lambda!2190 (y!555 thiss!856)) d!7173) d!7233))

(declare-fun b_lambda!4679 () Bool)

(assert (= b_lambda!4631 (or b!9056 b_lambda!4679)))

(declare-fun bs!2260 () Bool)

(declare-fun d!7235 () Bool)

(assert (= bs!2260 (and d!7235 b!9056)))

(assert (=> bs!2260 (= (dynLambda!274 lambda!2187) (fold!34 (right!420 tree!25) f!585))))

(assert (=> bs!2260 m!11953))

(assert (=> b!9056 d!7235))

(declare-fun b_lambda!4681 () Bool)

(assert (= b_lambda!4639 (or b!9070 b_lambda!4681)))

(declare-fun bs!2261 () Bool)

(declare-fun d!7237 () Bool)

(assert (= bs!2261 (and d!7237 b!9070)))

(assert (=> bs!2261 (= (dynLambda!274 lambda!2189) (fold!34 (right!420 (left!417 tree!25)) f!585))))

(assert (=> bs!2261 m!12011))

(assert (=> b!9070 d!7237))

(declare-fun b_lambda!4683 () Bool)

(assert (= b_lambda!4641 (or (and start!1800 (= lambda!2177 f!585)) (and start!1800 b_free!977) (and d!7175 (= lambda!2194 f!585)) b_lambda!4683)))

(declare-fun bs!2262 () Bool)

(declare-fun d!7239 () Bool)

(assert (= bs!2262 (and d!7239 start!1800)))

(assert (=> bs!2262 (= (dynLambda!275 lambda!2177 (_1!37 lt!1606) (_2!37 lt!1606)) (++!3 (_1!37 lt!1606) (_2!37 lt!1606)))))

(declare-fun m!12015 () Bool)

(assert (=> bs!2262 m!12015))

(assert (=> (and start!1800 (= lambda!2177 f!585) b!9072) d!7239))

(declare-fun bs!2263 () Bool)

(declare-fun d!7241 () Bool)

(assert (= bs!2263 (and d!7241 d!7175)))

(assert (=> bs!2263 (= (dynLambda!275 lambda!2194 (_1!37 lt!1606) (_2!37 lt!1606)) (++!3 (_1!37 lt!1606) (_2!37 lt!1606)))))

(assert (=> bs!2263 m!12015))

(assert (=> (and d!7175 (= lambda!2194 f!585) b!9072) d!7241))

(declare-fun b_lambda!4685 () Bool)

(assert (= b_lambda!4627 (or (and start!1800 (= lambda!2177 f!585)) (and start!1800 b_free!977) (and d!7175 (= lambda!2194 f!585)) b_lambda!4685)))

(declare-fun bs!2264 () Bool)

(declare-fun d!7243 () Bool)

(assert (= bs!2264 (and d!7243 start!1800)))

(assert (=> bs!2264 (= (dynLambda!275 lambda!2177 (_1!37 lt!1601) (_2!37 lt!1601)) (++!3 (_1!37 lt!1601) (_2!37 lt!1601)))))

(declare-fun m!12017 () Bool)

(assert (=> bs!2264 m!12017))

(assert (=> (and start!1800 (= lambda!2177 f!585) b!9056) d!7243))

(declare-fun bs!2265 () Bool)

(declare-fun d!7245 () Bool)

(assert (= bs!2265 (and d!7245 d!7175)))

(assert (=> bs!2265 (= (dynLambda!275 lambda!2194 (_1!37 lt!1601) (_2!37 lt!1601)) (++!3 (_1!37 lt!1601) (_2!37 lt!1601)))))

(assert (=> bs!2265 m!12017))

(assert (=> (and d!7175 (= lambda!2194 f!585) b!9056) d!7245))

(declare-fun b_lambda!4687 () Bool)

(assert (= b_lambda!4649 (or (and b!9040 b_free!971 (= (x!4988 that!214) (y!555 that!214))) (and b!9056 (= lambda!2186 (y!555 that!214))) (and b!9072 (= lambda!2191 (y!555 that!214))) (and b!9044 (= lambda!2178 (y!555 that!214))) (and b!9056 (= lambda!2187 (y!555 that!214))) (and b!9037 b_free!981 (= (y!555 thiss!856) (y!555 that!214))) (and b!9070 (= lambda!2189 (y!555 that!214))) (and b!9072 (= lambda!2190 (y!555 that!214))) (and b!9040 b_free!973) (and b!9038 (= lambda!2180 (y!555 that!214))) (and b!9037 b_free!979 (= (x!4988 thiss!856) (y!555 that!214))) (and b!9070 (= lambda!2188 (y!555 that!214))) b_lambda!4687)))

(declare-fun bs!2266 () Bool)

(declare-fun d!7247 () Bool)

(assert (= bs!2266 (and d!7247 b!9056)))

(assert (=> bs!2266 (= (dynLambda!274 lambda!2187) (fold!34 (right!420 tree!25) f!585))))

(assert (=> bs!2266 m!11953))

(assert (=> (and b!9056 (= lambda!2187 (y!555 that!214)) d!7171) d!7247))

(declare-fun bs!2267 () Bool)

(declare-fun d!7249 () Bool)

(assert (= bs!2267 (and d!7249 b!9072)))

(assert (=> bs!2267 (= (dynLambda!274 lambda!2190) (fold!34 (left!417 (right!420 tree!25)) f!585))))

(assert (=> bs!2267 m!12013))

(assert (=> (and b!9072 (= lambda!2190 (y!555 that!214)) d!7171) d!7249))

(declare-fun bs!2268 () Bool)

(declare-fun d!7251 () Bool)

(assert (= bs!2268 (and d!7251 b!9070)))

(assert (=> bs!2268 (= (dynLambda!274 lambda!2188) (fold!34 (left!417 (left!417 tree!25)) f!585))))

(assert (=> bs!2268 m!12009))

(assert (=> (and b!9070 (= lambda!2188 (y!555 that!214)) d!7171) d!7251))

(declare-fun bs!2269 () Bool)

(declare-fun d!7253 () Bool)

(assert (= bs!2269 (and d!7253 b!9056)))

(assert (=> bs!2269 (= (dynLambda!274 lambda!2186) (fold!34 (left!417 tree!25) f!585))))

(assert (=> bs!2269 m!11951))

(assert (=> (and b!9056 (= lambda!2186 (y!555 that!214)) d!7171) d!7253))

(declare-fun bs!2270 () Bool)

(declare-fun d!7255 () Bool)

(assert (= bs!2270 (and d!7255 b!9038)))

(assert (=> bs!2270 (= (dynLambda!274 lambda!2180) (dynLambda!275 f!585 (fold!34 (left!417 tree!25) f!585) (fold!34 (right!420 tree!25) f!585)))))

(declare-fun b_lambda!4693 () Bool)

(assert (=> (not b_lambda!4693) (not bs!2270)))

(assert (=> bs!2270 t!2305))

(declare-fun b_and!3669 () Bool)

(assert (= b_and!3667 (and (=> t!2305 result!2005) b_and!3669)))

(assert (=> bs!2270 m!11951))

(assert (=> bs!2270 m!11953))

(assert (=> bs!2270 m!11951))

(assert (=> bs!2270 m!11953))

(assert (=> bs!2270 m!11955))

(assert (=> (and b!9038 (= lambda!2180 (y!555 that!214)) d!7171) d!7255))

(declare-fun bs!2271 () Bool)

(declare-fun d!7257 () Bool)

(assert (= bs!2271 (and d!7257 b!9070)))

(assert (=> bs!2271 (= (dynLambda!274 lambda!2189) (fold!34 (right!420 (left!417 tree!25)) f!585))))

(assert (=> bs!2271 m!12011))

(assert (=> (and b!9070 (= lambda!2189 (y!555 that!214)) d!7171) d!7257))

(declare-fun bs!2272 () Bool)

(declare-fun d!7259 () Bool)

(assert (= bs!2272 (and d!7259 b!9072)))

(assert (=> bs!2272 (= (dynLambda!274 lambda!2191) (fold!34 (right!420 (right!420 tree!25)) f!585))))

(assert (=> bs!2272 m!12003))

(assert (=> (and b!9072 (= lambda!2191 (y!555 that!214)) d!7171) d!7259))

(declare-fun bs!2273 () Bool)

(declare-fun d!7261 () Bool)

(assert (= bs!2273 (and d!7261 b!9044)))

(assert (=> bs!2273 (= (dynLambda!274 lambda!2178) (fold!34 tree!25 f!585))))

(assert (=> bs!2273 m!11943))

(assert (=> (and b!9044 (= lambda!2178 (y!555 that!214)) d!7171) d!7261))

(declare-fun b_lambda!4689 () Bool)

(assert (= b_lambda!4629 (or b!9056 b_lambda!4689)))

(declare-fun bs!2274 () Bool)

(declare-fun d!7263 () Bool)

(assert (= bs!2274 (and d!7263 b!9056)))

(assert (=> bs!2274 (= (dynLambda!274 lambda!2186) (fold!34 (left!417 tree!25) f!585))))

(assert (=> bs!2274 m!11951))

(assert (=> b!9056 d!7263))

(push 1)

(assert (not bs!2254))

(assert (not bs!2263))

(assert (not bs!2272))

(assert (not b_lambda!4669))

(assert (not b_lambda!4625))

(assert (not b_next!2319))

(assert b_and!3659)

(assert (not bs!2251))

(assert (not bs!2238))

(assert (not b_lambda!4613))

(assert (not bs!2241))

(assert (not bs!2262))

(assert (not bs!2260))

(assert (not bs!2247))

(assert (not bs!2246))

(assert b_and!3657)

(assert (not b!9068))

(assert (not b_lambda!4679))

(assert (not bs!2236))

(assert (not bs!2245))

(assert (not b_lambda!4661))

(assert (not b_lambda!4689))

(assert (not bs!2264))

(assert (not b_lambda!4685))

(assert (not bs!2249))

(assert (not d!7175))

(assert (not bs!2243))

(assert (not bs!2257))

(assert (not bs!2250))

(assert (not bs!2235))

(assert (not b_lambda!4673))

(assert (not b_lambda!4687))

(assert (not b_lambda!4681))

(assert (not bs!2240))

(assert (not bs!2274))

(assert (not bs!2269))

(assert (not bs!2219))

(assert (not b_next!2269))

(assert (not bs!2267))

(assert (not b_lambda!4659))

(assert (not b_lambda!4693))

(assert (not bs!2273))

(assert (not b_lambda!4677))

(assert (not b!9062))

(assert (not bs!2232))

(assert (not bs!2271))

(assert (not b_next!2315))

(assert (not bs!2253))

(assert (not b_lambda!4683))

(assert (not bs!2268))

(assert (not bs!2259))

(assert (not bs!2258))

(assert (not bs!2256))

(assert (not b_lambda!4665))

(assert (not b_lambda!4623))

(assert (not bs!2270))

(assert (not b_lambda!4615))

(assert b_and!3669)

(assert (not b_lambda!4667))

(assert b_and!3663)

(assert (not b_lambda!4691))

(assert (not b_lambda!4663))

(assert (not bs!2233))

(assert b_and!3661)

(assert (not d!7165))

(assert (not b_lambda!4671))

(assert (not bs!2266))

(assert (not bs!2231))

(assert (not bs!2242))

(assert (not b_next!2317))

(assert (not b_next!2311))

(assert (not bs!2244))

(assert (not bs!2248))

(assert (not bs!2261))

(assert (not b_lambda!4675))

(assert (not b_next!2267))

(assert (not bs!2252))

(assert (not bs!2255))

(assert b_and!3655)

(assert (not bs!2239))

(assert b_and!3665)

(assert (not bs!2237))

(assert (not b_lambda!4617))

(assert (not bs!2265))

(assert (not b_next!2313))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2319))

(assert b_and!3659)

(assert b_and!3657)

(assert (not b_next!2269))

(assert (not b_next!2315))

(assert b_and!3669)

(assert b_and!3663)

(assert b_and!3661)

(assert (not b_next!2317))

(assert (not b_next!2311))

(assert (not b_next!2267))

(assert b_and!3655)

(assert b_and!3665)

(assert (not b_next!2313))

(check-sat)

(pop 1)

