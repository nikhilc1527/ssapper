; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1812 () Bool)

(assert start!1812)

(declare-fun b_free!985 () Bool)

(declare-fun b_next!2321 () Bool)

(assert (=> start!1812 (= b_free!985 (not b_next!2321))))

(declare-fun tp!1618 () Bool)

(declare-fun b_and!3671 () Bool)

(assert (=> start!1812 (= tp!1618 b_and!3671)))

(declare-fun b_free!987 () Bool)

(declare-fun b_next!2323 () Bool)

(assert (=> start!1812 (= b_free!987 (not b_next!2323))))

(declare-fun tp!1613 () Bool)

(declare-fun b_and!3673 () Bool)

(assert (=> start!1812 (= tp!1613 b_and!3673)))

(declare-fun b!9093 () Bool)

(declare-fun b_free!989 () Bool)

(declare-fun b_next!2325 () Bool)

(assert (=> b!9093 (= b_free!989 (not b_next!2325))))

(declare-fun tp!1615 () Bool)

(declare-fun b_and!3675 () Bool)

(assert (=> b!9093 (= tp!1615 b_and!3675)))

(declare-fun b_free!991 () Bool)

(declare-fun b_next!2327 () Bool)

(assert (=> b!9093 (= b_free!991 (not b_next!2327))))

(declare-fun tp!1614 () Bool)

(declare-fun b_and!3677 () Bool)

(assert (=> b!9093 (= tp!1614 b_and!3677)))

(declare-fun b!9097 () Bool)

(declare-fun b_free!993 () Bool)

(declare-fun b_next!2329 () Bool)

(assert (=> b!9097 (= b_free!993 (not b_next!2329))))

(declare-fun tp!1617 () Bool)

(declare-fun b_and!3679 () Bool)

(assert (=> b!9097 (= tp!1617 b_and!3679)))

(declare-fun b_free!995 () Bool)

(declare-fun b_next!2331 () Bool)

(assert (=> b!9097 (= b_free!995 (not b_next!2331))))

(declare-fun tp!1612 () Bool)

(declare-fun b_and!3681 () Bool)

(assert (=> b!9097 (= tp!1612 b_and!3681)))

(declare-fun b_free!997 () Bool)

(declare-fun b_next!2333 () Bool)

(assert (=> b!9097 (= b_free!997 (not b_next!2333))))

(declare-fun tp!1616 () Bool)

(declare-fun b_and!3683 () Bool)

(assert (=> b!9097 (= tp!1616 b_and!3683)))

(declare-fun lambda!2209 () Int)

(declare-fun b_next!2335 () Bool)

(declare-fun f!585 () Int)

(assert (=> start!1812 (= b_next!2323 (or (and start!1812 (= lambda!2209 f!585)) b_next!2335))))

(declare-fun b!9099 () Bool)

(assert (=> b!9099 true))

(declare-fun order!125 () Int)

(declare-fun order!127 () Int)

(declare-fun lambda!2210 () Int)

(declare-fun dynLambda!276 (Int Int) Int)

(declare-fun dynLambda!277 (Int Int) Int)

(assert (=> b!9099 (< (dynLambda!276 order!125 f!585) (dynLambda!277 order!127 lambda!2210))))

(assert (=> b!9099 true))

(declare-datatypes () ((Balance!193 (Balance!194 (extraOpen!137 Int) (extraClose!137 Int)))))

(declare-datatypes () ((EqProof!74 (EqProof!75 (x!5038 Int) (y!558 Int)))))

(declare-fun thiss!883 () EqProof!74)

(declare-fun b_next!2337 () Bool)

(assert (=> b!9093 (= b_next!2325 (or (and b!9099 (= lambda!2210 (x!5038 thiss!883))) b_next!2337))))

(declare-fun b_next!2339 () Bool)

(assert (=> b!9093 (= b_next!2327 (or (and b!9099 (= lambda!2210 (y!558 thiss!883))) b_next!2339))))

(declare-fun b_next!2341 () Bool)

(declare-datatypes () ((EqEvidence!156 (EqEvidence!157 (x!5039 Int) (y!559 Int) (evidence!145 Int)))))

(declare-fun thiss!855 () EqEvidence!156)

(assert (=> b!9097 (= b_next!2329 (or (and b!9099 (= lambda!2210 (x!5039 thiss!855))) b_next!2341))))

(declare-fun b_next!2343 () Bool)

(assert (=> b!9097 (= b_next!2331 (or (and b!9099 (= lambda!2210 (y!559 thiss!855))) b_next!2343))))

(declare-fun lambda!2211 () Int)

(assert (=> b!9099 (not (= lambda!2211 lambda!2210))))

(assert (=> b!9099 true))

(assert (=> b!9099 (< (dynLambda!276 order!125 f!585) (dynLambda!277 order!127 lambda!2211))))

(assert (=> b!9099 true))

(declare-fun b_next!2345 () Bool)

(assert (=> b!9093 (= b_next!2337 (or (and b!9099 (= lambda!2211 (x!5038 thiss!883))) b_next!2345))))

(declare-fun b_next!2347 () Bool)

(assert (=> b!9093 (= b_next!2339 (or (and b!9099 (= lambda!2211 (y!558 thiss!883))) b_next!2347))))

(declare-fun b_next!2349 () Bool)

(assert (=> b!9097 (= b_next!2341 (or (and b!9099 (= lambda!2211 (x!5039 thiss!855))) b_next!2349))))

(declare-fun b_next!2351 () Bool)

(assert (=> b!9097 (= b_next!2343 (or (and b!9099 (= lambda!2211 (y!559 thiss!855))) b_next!2351))))

(assert (=> b!9099 true))

(declare-fun proof!245 () Int)

(declare-fun lambda!2212 () Int)

(declare-fun b_next!2353 () Bool)

(assert (=> start!1812 (= b_next!2321 (or (and b!9099 (= lambda!2212 proof!245)) b_next!2353))))

(declare-fun b_next!2355 () Bool)

(assert (=> b!9097 (= b_next!2333 (or (and b!9099 (= lambda!2212 (evidence!145 thiss!855))) b_next!2355))))

(declare-fun bs!2276 () Bool)

(declare-fun b!9100 () Bool)

(assert (= bs!2276 (and b!9100 b!9099)))

(declare-fun lambda!2213 () Int)

(assert (=> bs!2276 (not (= lambda!2213 lambda!2210))))

(assert (=> bs!2276 (not (= lambda!2213 lambda!2211))))

(assert (=> b!9100 true))

(assert (=> b!9100 (< (dynLambda!276 order!125 f!585) (dynLambda!277 order!127 lambda!2213))))

(assert (=> b!9100 true))

(declare-fun b_next!2357 () Bool)

(assert (=> b!9093 (= b_next!2345 (or (and b!9100 (= lambda!2213 (x!5038 thiss!883))) b_next!2357))))

(declare-fun b_next!2359 () Bool)

(assert (=> b!9093 (= b_next!2347 (or (and b!9100 (= lambda!2213 (y!558 thiss!883))) b_next!2359))))

(declare-fun b_next!2361 () Bool)

(assert (=> b!9097 (= b_next!2349 (or (and b!9100 (= lambda!2213 (x!5039 thiss!855))) b_next!2361))))

(declare-fun b_next!2363 () Bool)

(assert (=> b!9097 (= b_next!2351 (or (and b!9100 (= lambda!2213 (y!559 thiss!855))) b_next!2363))))

(declare-fun bs!2277 () Bool)

(declare-fun b!9098 () Bool)

(assert (= bs!2277 (and b!9098 b!9099)))

(declare-datatypes () ((Tree!59 (Branch!50 (left!421 Tree!59) (right!424 Tree!59)) (Leaf!132 (value!1301 Balance!193)))))

(declare-fun tree!25 () Tree!59)

(declare-fun lambda!2214 () Int)

(assert (=> bs!2277 (= (= (right!424 tree!25) (left!421 tree!25)) (= lambda!2214 lambda!2212))))

(assert (=> b!9098 true))

(declare-fun b_next!2365 () Bool)

(assert (=> start!1812 (= b_next!2353 (or (and b!9098 (= lambda!2214 proof!245)) b_next!2365))))

(declare-fun b_next!2367 () Bool)

(assert (=> b!9097 (= b_next!2355 (or (and b!9098 (= lambda!2214 (evidence!145 thiss!855))) b_next!2367))))

(declare-fun e!5339 () Bool)

(assert (=> b!9093 (= e!5339 (and tp!1615 tp!1614))))

(declare-fun b!9094 () Bool)

(declare-fun res!2895 () Bool)

(declare-fun e!5338 () Bool)

(assert (=> b!9094 (=> (not res!2895) (not e!5338))))

(assert (=> b!9094 (= res!2895 (not (is-Leaf!132 tree!25)))))

(declare-fun b!9095 () Bool)

(declare-fun res!2894 () Bool)

(assert (=> b!9095 (=> (not res!2894) (not e!5338))))

(declare-datatypes () ((ProofOps!140 (ProofOps!141 (prop!186 Bool)))))

(declare-fun thiss!829 () ProofOps!140)

(declare-fun fold!35 (Tree!59 Int) Balance!193)

(declare-datatypes () ((List!213 (Nil!211) (Cons!210 (head!428 Balance!193) (tail!440 List!213)))))

(declare-fun foldRight1!66 (List!213 Int) Balance!193)

(declare-fun toList!59 (Tree!59) List!213)

(assert (=> b!9095 (= res!2894 (= thiss!829 (ProofOps!141 (= (fold!35 tree!25 f!585) (foldRight1!66 (toList!59 tree!25) f!585)))))))

(declare-fun b!9096 () Bool)

(declare-fun dynLambda!278 (Int) Bool)

(assert (=> b!9096 (= e!5338 (not (dynLambda!278 proof!245)))))

(declare-fun res!2898 () Bool)

(assert (=> start!1812 (=> (not res!2898) (not e!5338))))

(assert (=> start!1812 (= res!2898 (= f!585 lambda!2209))))

(assert (=> start!1812 e!5338))

(assert (=> start!1812 true))

(assert (=> start!1812 tp!1618))

(declare-fun inv!319 (EqProof!74) Bool)

(assert (=> start!1812 (and (inv!319 thiss!883) e!5339)))

(assert (=> start!1812 tp!1613))

(declare-fun e!5340 () Bool)

(declare-fun inv!320 (EqEvidence!156) Bool)

(assert (=> start!1812 (and (inv!320 thiss!855) e!5340)))

(assert (=> b!9097 (= e!5340 (and tp!1617 tp!1612 tp!1616))))

(declare-fun res!2897 () Bool)

(assert (=> b!9098 (=> (not res!2897) (not e!5338))))

(assert (=> b!9098 (= res!2897 (= proof!245 lambda!2214))))

(declare-fun res!2893 () Bool)

(assert (=> b!9099 (=> (not res!2893) (not e!5338))))

(assert (=> b!9099 (= res!2893 (= thiss!855 (EqEvidence!157 lambda!2210 lambda!2211 lambda!2212)))))

(declare-fun res!2896 () Bool)

(assert (=> b!9100 (=> (not res!2896) (not e!5338))))

(assert (=> b!9100 (= res!2896 (= thiss!883 (EqProof!75 lambda!2213 lambda!2213)))))

(assert (= (and start!1812 res!2898) b!9095))

(assert (= (and b!9095 res!2894) b!9094))

(assert (= (and b!9094 res!2895) b!9099))

(assert (= (and b!9099 res!2893) b!9100))

(assert (= (and b!9100 res!2896) b!9098))

(assert (= (and b!9098 res!2897) b!9096))

(assert (= start!1812 b!9093))

(assert (= start!1812 b!9097))

(declare-fun b_lambda!4695 () Bool)

(assert (=> (not b_lambda!4695) (not b!9096)))

(declare-fun t!2335 () Bool)

(declare-fun tb!1995 () Bool)

(assert (=> (and start!1812 (= proof!245 proof!245) t!2335) tb!1995))

(declare-fun result!2035 () Bool)

(assert (=> tb!1995 (= result!2035 true)))

(assert (=> b!9096 t!2335))

(declare-fun b_and!3685 () Bool)

(assert (= b_and!3671 (and (=> t!2335 result!2035) b_and!3685)))

(declare-fun t!2337 () Bool)

(declare-fun tb!1997 () Bool)

(assert (=> (and b!9097 (= (evidence!145 thiss!855) proof!245) t!2337) tb!1997))

(declare-fun result!2037 () Bool)

(assert (=> tb!1997 (= result!2037 true)))

(assert (=> b!9096 t!2337))

(declare-fun b_and!3687 () Bool)

(assert (= b_and!3683 (and (=> t!2337 result!2037) b_and!3687)))

(declare-fun m!12019 () Bool)

(assert (=> b!9095 m!12019))

(declare-fun m!12021 () Bool)

(assert (=> b!9095 m!12021))

(assert (=> b!9095 m!12021))

(declare-fun m!12023 () Bool)

(assert (=> b!9095 m!12023))

(declare-fun m!12025 () Bool)

(assert (=> b!9096 m!12025))

(declare-fun m!12027 () Bool)

(assert (=> start!1812 m!12027))

(declare-fun m!12029 () Bool)

(assert (=> start!1812 m!12029))

(push 1)

(assert b_and!3675)

(assert b_and!3677)

(assert b_and!3679)

(assert (not b_next!2365))

(assert (not b_next!2335))

(assert (not b_next!2357))

(assert (not b_lambda!4695))

(assert (not b!9095))

(assert (not b_next!2361))

(assert (not start!1812))

(assert b_and!3687)

(assert (not b_next!2363))

(assert b_and!3681)

(assert b_and!3685)

(assert (not b_next!2367))

(assert (not b_next!2359))

(assert b_and!3673)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3675)

(assert b_and!3677)

(assert b_and!3679)

(assert (not b_next!2365))

(assert (not b_next!2335))

(assert (not b_next!2357))

(assert (not b_next!2361))

(assert b_and!3687)

(assert (not b_next!2363))

(assert b_and!3681)

(assert b_and!3685)

(assert (not b_next!2367))

(assert (not b_next!2359))

(assert b_and!3673)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!4697 () Bool)

(assert (= b_lambda!4695 (or (and b!9099 (= lambda!2212 proof!245)) (and b!9098 (= lambda!2214 proof!245)) (and start!1812 b_free!985) (and b!9097 b_free!997 (= (evidence!145 thiss!855) proof!245)) b_lambda!4697)))

(declare-fun bs!2278 () Bool)

(declare-fun d!7265 () Bool)

(assert (= bs!2278 (and d!7265 b!9099)))

(declare-fun fold_foldRight1_equivalence!0 (Tree!59) Bool)

(assert (=> bs!2278 (= (dynLambda!278 lambda!2212) (fold_foldRight1_equivalence!0 (left!421 tree!25)))))

(declare-fun m!12031 () Bool)

(assert (=> bs!2278 m!12031))

(assert (=> (and b!9099 (= lambda!2212 proof!245) b!9096) d!7265))

(declare-fun bs!2279 () Bool)

(declare-fun d!7267 () Bool)

(assert (= bs!2279 (and d!7267 b!9098)))

(assert (=> bs!2279 (= (dynLambda!278 lambda!2214) (fold_foldRight1_equivalence!0 (right!424 tree!25)))))

(declare-fun m!12033 () Bool)

(assert (=> bs!2279 m!12033))

(assert (=> (and b!9098 (= lambda!2214 proof!245) b!9096) d!7267))

(push 1)

(assert b_and!3675)

(assert (not bs!2278))

(assert b_and!3677)

(assert b_and!3679)

(assert (not bs!2279))

(assert (not b_next!2365))

(assert (not b_next!2335))

(assert (not b_next!2357))

(assert (not b!9095))

(assert (not b_next!2361))

(assert (not start!1812))

(assert b_and!3687)

(assert (not b_next!2363))

(assert b_and!3681)

(assert b_and!3685)

(assert (not b_next!2367))

(assert (not b_lambda!4697))

(assert (not b_next!2359))

(assert b_and!3673)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3675)

(assert b_and!3677)

(assert b_and!3679)

(assert (not b_next!2365))

(assert (not b_next!2335))

(assert (not b_next!2357))

(assert (not b_next!2361))

(assert b_and!3687)

(assert (not b_next!2363))

(assert b_and!3681)

(assert b_and!3685)

(assert (not b_next!2367))

(assert (not b_next!2359))

(assert b_and!3673)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!2280 () Bool)

(declare-fun d!7269 () Bool)

(assert (= bs!2280 (and d!7269 start!1812)))

(declare-fun lambda!2217 () Int)

(assert (=> bs!2280 (= lambda!2217 lambda!2209)))

(declare-fun b_next!2369 () Bool)

(assert (=> start!1812 (= b_next!2335 (or (and d!7269 (= lambda!2217 f!585)) b_next!2369))))

(declare-fun because!2 (ProofOps!140 Bool) Bool)

(assert (=> d!7269 (because!2 (ProofOps!141 (= (fold!35 (right!424 tree!25) lambda!2217) (foldRight1!66 (toList!59 (right!424 tree!25)) lambda!2217))) true)))

(assert (=> d!7269 (= (fold!35 (right!424 tree!25) lambda!2217) (foldRight1!66 (toList!59 (right!424 tree!25)) lambda!2217))))

(assert (=> d!7269 (= (fold_foldRight1_equivalence!0 (right!424 tree!25)) true)))

(declare-fun bs!2281 () Bool)

(assert (= bs!2281 d!7269))

(declare-fun m!12035 () Bool)

(assert (=> bs!2281 m!12035))

(declare-fun m!12037 () Bool)

(assert (=> bs!2281 m!12037))

(assert (=> bs!2281 m!12037))

(declare-fun m!12039 () Bool)

(assert (=> bs!2281 m!12039))

(declare-fun m!12041 () Bool)

(assert (=> bs!2281 m!12041))

(assert (=> bs!2279 d!7269))

(declare-fun bs!2282 () Bool)

(declare-fun d!7271 () Bool)

(assert (= bs!2282 (and d!7271 start!1812)))

(declare-fun lambda!2218 () Int)

(assert (=> bs!2282 (= lambda!2218 lambda!2209)))

(declare-fun bs!2283 () Bool)

(assert (= bs!2283 (and d!7271 d!7269)))

(assert (=> bs!2283 (= lambda!2218 lambda!2217)))

(declare-fun b_next!2371 () Bool)

(assert (=> start!1812 (= b_next!2369 (or (and d!7271 (= lambda!2218 f!585)) b_next!2371))))

(assert (=> d!7271 (because!2 (ProofOps!141 (= (fold!35 (left!421 tree!25) lambda!2218) (foldRight1!66 (toList!59 (left!421 tree!25)) lambda!2218))) true)))

(assert (=> d!7271 (= (fold!35 (left!421 tree!25) lambda!2218) (foldRight1!66 (toList!59 (left!421 tree!25)) lambda!2218))))

(assert (=> d!7271 (= (fold_foldRight1_equivalence!0 (left!421 tree!25)) true)))

(declare-fun bs!2284 () Bool)

(assert (= bs!2284 d!7271))

(declare-fun m!12043 () Bool)

(assert (=> bs!2284 m!12043))

(declare-fun m!12045 () Bool)

(assert (=> bs!2284 m!12045))

(assert (=> bs!2284 m!12045))

(declare-fun m!12047 () Bool)

(assert (=> bs!2284 m!12047))

(declare-fun m!12049 () Bool)

(assert (=> bs!2284 m!12049))

(assert (=> bs!2278 d!7271))

(declare-fun bs!2285 () Bool)

(declare-fun b!9112 () Bool)

(assert (= bs!2285 (and b!9112 b!9099)))

(declare-fun lambda!2223 () Int)

(assert (=> bs!2285 (= (= (left!421 tree!25) tree!25) (= lambda!2223 lambda!2210))))

(assert (=> bs!2285 (not (= lambda!2223 lambda!2211))))

(declare-fun bs!2286 () Bool)

(assert (= bs!2286 (and b!9112 b!9100)))

(assert (=> bs!2286 (not (= lambda!2223 lambda!2213))))

(assert (=> b!9112 true))

(assert (=> b!9112 (< (dynLambda!276 order!125 f!585) (dynLambda!277 order!127 lambda!2223))))

(assert (=> b!9112 true))

(declare-fun b_next!2373 () Bool)

(assert (=> b!9093 (= b_next!2357 (or (and b!9112 (= lambda!2223 (x!5038 thiss!883))) b_next!2373))))

(declare-fun b_next!2375 () Bool)

(assert (=> b!9093 (= b_next!2359 (or (and b!9112 (= lambda!2223 (y!558 thiss!883))) b_next!2375))))

(declare-fun b_next!2377 () Bool)

(assert (=> b!9097 (= b_next!2361 (or (and b!9112 (= lambda!2223 (x!5039 thiss!855))) b_next!2377))))

(declare-fun b_next!2379 () Bool)

(assert (=> b!9097 (= b_next!2363 (or (and b!9112 (= lambda!2223 (y!559 thiss!855))) b_next!2379))))

(declare-fun lambda!2224 () Int)

(assert (=> bs!2285 (= (= (right!424 tree!25) tree!25) (= lambda!2224 lambda!2210))))

(assert (=> bs!2285 (not (= lambda!2224 lambda!2211))))

(assert (=> bs!2286 (not (= lambda!2224 lambda!2213))))

(assert (=> b!9112 (= (= (right!424 tree!25) (left!421 tree!25)) (= lambda!2224 lambda!2223))))

(assert (=> b!9112 true))

(assert (=> b!9112 (< (dynLambda!276 order!125 f!585) (dynLambda!277 order!127 lambda!2224))))

(assert (=> b!9112 true))

(declare-fun b_next!2381 () Bool)

(assert (=> b!9093 (= b_next!2373 (or (and b!9112 (= lambda!2224 (x!5038 thiss!883))) b_next!2381))))

(declare-fun b_next!2383 () Bool)

(assert (=> b!9093 (= b_next!2375 (or (and b!9112 (= lambda!2224 (y!558 thiss!883))) b_next!2383))))

(declare-fun b_next!2385 () Bool)

(assert (=> b!9097 (= b_next!2377 (or (and b!9112 (= lambda!2224 (x!5039 thiss!855))) b_next!2385))))

(declare-fun b_next!2387 () Bool)

(assert (=> b!9097 (= b_next!2379 (or (and b!9112 (= lambda!2224 (y!559 thiss!855))) b_next!2387))))

(declare-fun e!5359 () Balance!193)

(declare-datatypes () ((tuple2!76 (tuple2!77 (_1!38 Balance!193) (_2!38 Balance!193)))))

(declare-fun lt!1609 () tuple2!76)

(declare-fun dynLambda!279 (Int Balance!193 Balance!193) Balance!193)

(assert (=> b!9112 (= e!5359 (dynLambda!279 f!585 (_1!38 lt!1609) (_2!38 lt!1609)))))

(declare-fun dynLambda!280 (Int) Balance!193)

(assert (=> b!9112 (= lt!1609 (tuple2!77 (dynLambda!280 lambda!2223) (dynLambda!280 lambda!2224)))))

(declare-fun d!7273 () Bool)

(declare-fun c!2996 () Bool)

(assert (=> d!7273 (= c!2996 (is-Leaf!132 tree!25))))

(assert (=> d!7273 (= (fold!35 tree!25 f!585) e!5359)))

(declare-fun b!9111 () Bool)

(assert (=> b!9111 (= e!5359 (value!1301 tree!25))))

(assert (= (and d!7273 c!2996) b!9111))

(assert (= (and d!7273 (not c!2996)) b!9112))

(declare-fun b_lambda!4699 () Bool)

(assert (=> (not b_lambda!4699) (not b!9112)))

(declare-fun t!2339 () Bool)

(declare-fun tb!1999 () Bool)

(assert (=> (and start!1812 (= f!585 f!585) t!2339) tb!1999))

(declare-fun result!2039 () Bool)

(assert (=> tb!1999 (= result!2039 true)))

(assert (=> b!9112 t!2339))

(declare-fun b_and!3689 () Bool)

(assert (= b_and!3673 (and (=> t!2339 result!2039) b_and!3689)))

(declare-fun b_lambda!4701 () Bool)

(assert (=> (not b_lambda!4701) (not b!9112)))

(declare-fun b_lambda!4703 () Bool)

(assert (=> (not b_lambda!4703) (not b!9112)))

(declare-fun m!12051 () Bool)

(assert (=> b!9112 m!12051))

(declare-fun m!12053 () Bool)

(assert (=> b!9112 m!12053))

(declare-fun m!12055 () Bool)

(assert (=> b!9112 m!12055))

(assert (=> b!9095 d!7273))

(declare-fun d!7275 () Bool)

(declare-fun c!2999 () Bool)

(assert (=> d!7275 (= c!2999 (and (is-Cons!210 (toList!59 tree!25)) (is-Nil!211 (tail!440 (toList!59 tree!25)))))))

(declare-fun e!5362 () Balance!193)

(assert (=> d!7275 (= (foldRight1!66 (toList!59 tree!25) f!585) e!5362)))

(declare-fun b!9117 () Bool)

(assert (=> b!9117 (= e!5362 (head!428 (toList!59 tree!25)))))

(declare-fun b!9118 () Bool)

(assert (=> b!9118 (= e!5362 (dynLambda!279 f!585 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)))))

(assert (= (and d!7275 c!2999) b!9117))

(assert (= (and d!7275 (not c!2999)) b!9118))

(declare-fun b_lambda!4705 () Bool)

(assert (=> (not b_lambda!4705) (not b!9118)))

(declare-fun t!2341 () Bool)

(declare-fun tb!2001 () Bool)

(assert (=> (and start!1812 (= f!585 f!585) t!2341) tb!2001))

(declare-fun result!2041 () Bool)

(assert (=> tb!2001 (= result!2041 true)))

(assert (=> b!9118 t!2341))

(declare-fun b_and!3691 () Bool)

(assert (= b_and!3689 (and (=> t!2341 result!2041) b_and!3691)))

(declare-fun m!12057 () Bool)

(assert (=> b!9118 m!12057))

(assert (=> b!9118 m!12057))

(declare-fun m!12059 () Bool)

(assert (=> b!9118 m!12059))

(assert (=> b!9095 d!7275))

(declare-fun d!7277 () Bool)

(declare-fun lt!1612 () List!213)

(declare-fun isEmpty!171 (List!213) Bool)

(assert (=> d!7277 (not (isEmpty!171 lt!1612))))

(declare-fun e!5365 () List!213)

(assert (=> d!7277 (= lt!1612 e!5365)))

(declare-fun c!3002 () Bool)

(assert (=> d!7277 (= c!3002 (is-Leaf!132 tree!25))))

(assert (=> d!7277 (= (toList!59 tree!25) lt!1612)))

(declare-fun b!9123 () Bool)

(assert (=> b!9123 (= e!5365 (Cons!210 (value!1301 tree!25) Nil!211))))

(declare-fun b!9124 () Bool)

(declare-fun append!92 (List!213 List!213) List!213)

(assert (=> b!9124 (= e!5365 (append!92 (toList!59 (left!421 tree!25)) (toList!59 (right!424 tree!25))))))

(assert (= (and d!7277 c!3002) b!9123))

(assert (= (and d!7277 (not c!3002)) b!9124))

(declare-fun m!12061 () Bool)

(assert (=> d!7277 m!12061))

(assert (=> b!9124 m!12045))

(assert (=> b!9124 m!12037))

(assert (=> b!9124 m!12045))

(assert (=> b!9124 m!12037))

(declare-fun m!12063 () Bool)

(assert (=> b!9124 m!12063))

(assert (=> b!9095 d!7277))

(declare-fun d!7279 () Bool)

(assert (=> d!7279 (= (inv!319 thiss!883) (= (dynLambda!280 (x!5038 thiss!883)) (dynLambda!280 (y!558 thiss!883))))))

(declare-fun b_lambda!4707 () Bool)

(assert (=> (not b_lambda!4707) (not d!7279)))

(declare-fun t!2343 () Bool)

(declare-fun tb!2003 () Bool)

(assert (=> (and b!9093 (= (x!5038 thiss!883) (x!5038 thiss!883)) t!2343) tb!2003))

(declare-fun result!2043 () Bool)

(assert (=> tb!2003 (= result!2043 true)))

(assert (=> d!7279 t!2343))

(declare-fun b_and!3693 () Bool)

(assert (= b_and!3675 (and (=> t!2343 result!2043) b_and!3693)))

(declare-fun t!2345 () Bool)

(declare-fun tb!2005 () Bool)

(assert (=> (and b!9093 (= (y!558 thiss!883) (x!5038 thiss!883)) t!2345) tb!2005))

(declare-fun result!2045 () Bool)

(assert (=> tb!2005 (= result!2045 true)))

(assert (=> d!7279 t!2345))

(declare-fun b_and!3695 () Bool)

(assert (= b_and!3677 (and (=> t!2345 result!2045) b_and!3695)))

(declare-fun tb!2007 () Bool)

(declare-fun t!2347 () Bool)

(assert (=> (and b!9097 (= (x!5039 thiss!855) (x!5038 thiss!883)) t!2347) tb!2007))

(declare-fun result!2047 () Bool)

(assert (=> tb!2007 (= result!2047 true)))

(assert (=> d!7279 t!2347))

(declare-fun b_and!3697 () Bool)

(assert (= b_and!3679 (and (=> t!2347 result!2047) b_and!3697)))

(declare-fun t!2349 () Bool)

(declare-fun tb!2009 () Bool)

(assert (=> (and b!9097 (= (y!559 thiss!855) (x!5038 thiss!883)) t!2349) tb!2009))

(declare-fun result!2049 () Bool)

(assert (=> tb!2009 (= result!2049 true)))

(assert (=> d!7279 t!2349))

(declare-fun b_and!3699 () Bool)

(assert (= b_and!3681 (and (=> t!2349 result!2049) b_and!3699)))

(declare-fun b_lambda!4709 () Bool)

(assert (=> (not b_lambda!4709) (not d!7279)))

(declare-fun t!2351 () Bool)

(declare-fun tb!2011 () Bool)

(assert (=> (and b!9093 (= (x!5038 thiss!883) (y!558 thiss!883)) t!2351) tb!2011))

(declare-fun result!2051 () Bool)

(assert (=> tb!2011 (= result!2051 true)))

(assert (=> d!7279 t!2351))

(declare-fun b_and!3701 () Bool)

(assert (= b_and!3693 (and (=> t!2351 result!2051) b_and!3701)))

(declare-fun t!2353 () Bool)

(declare-fun tb!2013 () Bool)

(assert (=> (and b!9093 (= (y!558 thiss!883) (y!558 thiss!883)) t!2353) tb!2013))

(declare-fun result!2053 () Bool)

(assert (=> tb!2013 (= result!2053 true)))

(assert (=> d!7279 t!2353))

(declare-fun b_and!3703 () Bool)

(assert (= b_and!3695 (and (=> t!2353 result!2053) b_and!3703)))

(declare-fun t!2355 () Bool)

(declare-fun tb!2015 () Bool)

(assert (=> (and b!9097 (= (x!5039 thiss!855) (y!558 thiss!883)) t!2355) tb!2015))

(declare-fun result!2055 () Bool)

(assert (=> tb!2015 (= result!2055 true)))

(assert (=> d!7279 t!2355))

(declare-fun b_and!3705 () Bool)

(assert (= b_and!3697 (and (=> t!2355 result!2055) b_and!3705)))

(declare-fun t!2357 () Bool)

(declare-fun tb!2017 () Bool)

(assert (=> (and b!9097 (= (y!559 thiss!855) (y!558 thiss!883)) t!2357) tb!2017))

(declare-fun result!2057 () Bool)

(assert (=> tb!2017 (= result!2057 true)))

(assert (=> d!7279 t!2357))

(declare-fun b_and!3707 () Bool)

(assert (= b_and!3699 (and (=> t!2357 result!2057) b_and!3707)))

(declare-fun m!12065 () Bool)

(assert (=> d!7279 m!12065))

(declare-fun m!12067 () Bool)

(assert (=> d!7279 m!12067))

(assert (=> start!1812 d!7279))

(declare-fun d!7281 () Bool)

(declare-fun res!2908 () Bool)

(declare-fun e!5368 () Bool)

(assert (=> d!7281 (=> (not res!2908) (not e!5368))))

(assert (=> d!7281 (= res!2908 (= (dynLambda!280 (x!5039 thiss!855)) (dynLambda!280 (y!559 thiss!855))))))

(assert (=> d!7281 (= (inv!320 thiss!855) e!5368)))

(declare-fun b!9127 () Bool)

(assert (=> b!9127 (= e!5368 (dynLambda!278 (evidence!145 thiss!855)))))

(assert (= (and d!7281 res!2908) b!9127))

(declare-fun b_lambda!4711 () Bool)

(assert (=> (not b_lambda!4711) (not d!7281)))

(declare-fun tb!2019 () Bool)

(declare-fun t!2359 () Bool)

(assert (=> (and b!9093 (= (x!5038 thiss!883) (x!5039 thiss!855)) t!2359) tb!2019))

(declare-fun result!2059 () Bool)

(assert (=> tb!2019 (= result!2059 true)))

(assert (=> d!7281 t!2359))

(declare-fun b_and!3709 () Bool)

(assert (= b_and!3701 (and (=> t!2359 result!2059) b_and!3709)))

(declare-fun t!2361 () Bool)

(declare-fun tb!2021 () Bool)

(assert (=> (and b!9093 (= (y!558 thiss!883) (x!5039 thiss!855)) t!2361) tb!2021))

(declare-fun result!2061 () Bool)

(assert (=> tb!2021 (= result!2061 true)))

(assert (=> d!7281 t!2361))

(declare-fun b_and!3711 () Bool)

(assert (= b_and!3703 (and (=> t!2361 result!2061) b_and!3711)))

(declare-fun t!2363 () Bool)

(declare-fun tb!2023 () Bool)

(assert (=> (and b!9097 (= (x!5039 thiss!855) (x!5039 thiss!855)) t!2363) tb!2023))

(declare-fun result!2063 () Bool)

(assert (=> tb!2023 (= result!2063 true)))

(assert (=> d!7281 t!2363))

(declare-fun b_and!3713 () Bool)

(assert (= b_and!3705 (and (=> t!2363 result!2063) b_and!3713)))

(declare-fun t!2365 () Bool)

(declare-fun tb!2025 () Bool)

(assert (=> (and b!9097 (= (y!559 thiss!855) (x!5039 thiss!855)) t!2365) tb!2025))

(declare-fun result!2065 () Bool)

(assert (=> tb!2025 (= result!2065 true)))

(assert (=> d!7281 t!2365))

(declare-fun b_and!3715 () Bool)

(assert (= b_and!3707 (and (=> t!2365 result!2065) b_and!3715)))

(declare-fun b_lambda!4713 () Bool)

(assert (=> (not b_lambda!4713) (not d!7281)))

(declare-fun t!2367 () Bool)

(declare-fun tb!2027 () Bool)

(assert (=> (and b!9093 (= (x!5038 thiss!883) (y!559 thiss!855)) t!2367) tb!2027))

(declare-fun result!2067 () Bool)

(assert (=> tb!2027 (= result!2067 true)))

(assert (=> d!7281 t!2367))

(declare-fun b_and!3717 () Bool)

(assert (= b_and!3709 (and (=> t!2367 result!2067) b_and!3717)))

(declare-fun t!2369 () Bool)

(declare-fun tb!2029 () Bool)

(assert (=> (and b!9093 (= (y!558 thiss!883) (y!559 thiss!855)) t!2369) tb!2029))

(declare-fun result!2069 () Bool)

(assert (=> tb!2029 (= result!2069 true)))

(assert (=> d!7281 t!2369))

(declare-fun b_and!3719 () Bool)

(assert (= b_and!3711 (and (=> t!2369 result!2069) b_and!3719)))

(declare-fun t!2371 () Bool)

(declare-fun tb!2031 () Bool)

(assert (=> (and b!9097 (= (x!5039 thiss!855) (y!559 thiss!855)) t!2371) tb!2031))

(declare-fun result!2071 () Bool)

(assert (=> tb!2031 (= result!2071 true)))

(assert (=> d!7281 t!2371))

(declare-fun b_and!3721 () Bool)

(assert (= b_and!3713 (and (=> t!2371 result!2071) b_and!3721)))

(declare-fun t!2373 () Bool)

(declare-fun tb!2033 () Bool)

(assert (=> (and b!9097 (= (y!559 thiss!855) (y!559 thiss!855)) t!2373) tb!2033))

(declare-fun result!2073 () Bool)

(assert (=> tb!2033 (= result!2073 true)))

(assert (=> d!7281 t!2373))

(declare-fun b_and!3723 () Bool)

(assert (= b_and!3715 (and (=> t!2373 result!2073) b_and!3723)))

(declare-fun b_lambda!4715 () Bool)

(assert (=> (not b_lambda!4715) (not b!9127)))

(declare-fun t!2375 () Bool)

(declare-fun tb!2035 () Bool)

(assert (=> (and start!1812 (= proof!245 (evidence!145 thiss!855)) t!2375) tb!2035))

(declare-fun result!2075 () Bool)

(assert (=> tb!2035 (= result!2075 true)))

(assert (=> b!9127 t!2375))

(declare-fun b_and!3725 () Bool)

(assert (= b_and!3685 (and (=> t!2375 result!2075) b_and!3725)))

(declare-fun t!2377 () Bool)

(declare-fun tb!2037 () Bool)

(assert (=> (and b!9097 (= (evidence!145 thiss!855) (evidence!145 thiss!855)) t!2377) tb!2037))

(declare-fun result!2077 () Bool)

(assert (=> tb!2037 (= result!2077 true)))

(assert (=> b!9127 t!2377))

(declare-fun b_and!3727 () Bool)

(assert (= b_and!3687 (and (=> t!2377 result!2077) b_and!3727)))

(declare-fun m!12069 () Bool)

(assert (=> d!7281 m!12069))

(declare-fun m!12071 () Bool)

(assert (=> d!7281 m!12071))

(declare-fun m!12073 () Bool)

(assert (=> b!9127 m!12073))

(assert (=> start!1812 d!7281))

(declare-fun b_lambda!4717 () Bool)

(assert (= b_lambda!4709 (or (and b!9097 b_free!995 (= (y!559 thiss!855) (y!558 thiss!883))) (and b!9093 b_free!991) (and b!9093 b_free!989 (= (x!5038 thiss!883) (y!558 thiss!883))) (and b!9112 (= lambda!2223 (y!558 thiss!883))) (and b!9112 (= lambda!2224 (y!558 thiss!883))) (and b!9100 (= lambda!2213 (y!558 thiss!883))) (and b!9097 b_free!993 (= (x!5039 thiss!855) (y!558 thiss!883))) (and b!9099 (= lambda!2210 (y!558 thiss!883))) (and b!9099 (= lambda!2211 (y!558 thiss!883))) b_lambda!4717)))

(declare-fun bs!2287 () Bool)

(declare-fun d!7283 () Bool)

(assert (= bs!2287 (and d!7283 b!9100)))

(assert (=> bs!2287 (= (dynLambda!280 lambda!2213) (dynLambda!279 f!585 (foldRight1!66 (toList!59 (left!421 tree!25)) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4735 () Bool)

(assert (=> (not b_lambda!4735) (not bs!2287)))

(declare-fun t!2379 () Bool)

(declare-fun tb!2039 () Bool)

(assert (=> (and start!1812 (= f!585 f!585) t!2379) tb!2039))

(declare-fun result!2079 () Bool)

(assert (=> tb!2039 (= result!2079 true)))

(assert (=> bs!2287 t!2379))

(declare-fun b_and!3729 () Bool)

(assert (= b_and!3691 (and (=> t!2379 result!2079) b_and!3729)))

(declare-fun m!12075 () Bool)

(assert (=> bs!2287 m!12075))

(assert (=> bs!2287 m!12045))

(assert (=> bs!2287 m!12045))

(declare-fun m!12077 () Bool)

(assert (=> bs!2287 m!12077))

(assert (=> bs!2287 m!12077))

(assert (=> bs!2287 m!12075))

(declare-fun m!12079 () Bool)

(assert (=> bs!2287 m!12079))

(assert (=> (and b!9100 (= lambda!2213 (y!558 thiss!883)) d!7279) d!7283))

(declare-fun bs!2288 () Bool)

(declare-fun d!7285 () Bool)

(assert (= bs!2288 (and d!7285 b!9099)))

(assert (=> bs!2288 (= (dynLambda!280 lambda!2210) (fold!35 tree!25 f!585))))

(assert (=> bs!2288 m!12019))

(assert (=> (and b!9099 (= lambda!2210 (y!558 thiss!883)) d!7279) d!7285))

(declare-fun bs!2289 () Bool)

(declare-fun d!7287 () Bool)

(assert (= bs!2289 (and d!7287 b!9112)))

(assert (=> bs!2289 (= (dynLambda!280 lambda!2223) (fold!35 (left!421 tree!25) f!585))))

(declare-fun m!12081 () Bool)

(assert (=> bs!2289 m!12081))

(assert (=> (and b!9112 (= lambda!2223 (y!558 thiss!883)) d!7279) d!7287))

(declare-fun bs!2290 () Bool)

(declare-fun d!7289 () Bool)

(assert (= bs!2290 (and d!7289 b!9112)))

(assert (=> bs!2290 (= (dynLambda!280 lambda!2224) (fold!35 (right!424 tree!25) f!585))))

(assert (=> bs!2290 m!12075))

(assert (=> (and b!9112 (= lambda!2224 (y!558 thiss!883)) d!7279) d!7289))

(declare-fun bs!2291 () Bool)

(declare-fun d!7291 () Bool)

(assert (= bs!2291 (and d!7291 b!9099)))

(assert (=> bs!2291 (= (dynLambda!280 lambda!2211) (dynLambda!279 f!585 (fold!35 (left!421 tree!25) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4737 () Bool)

(assert (=> (not b_lambda!4737) (not bs!2291)))

(declare-fun t!2381 () Bool)

(declare-fun tb!2041 () Bool)

(assert (=> (and start!1812 (= f!585 f!585) t!2381) tb!2041))

(declare-fun result!2081 () Bool)

(assert (=> tb!2041 (= result!2081 true)))

(assert (=> bs!2291 t!2381))

(declare-fun b_and!3731 () Bool)

(assert (= b_and!3729 (and (=> t!2381 result!2081) b_and!3731)))

(assert (=> bs!2291 m!12081))

(assert (=> bs!2291 m!12075))

(assert (=> bs!2291 m!12081))

(assert (=> bs!2291 m!12075))

(declare-fun m!12083 () Bool)

(assert (=> bs!2291 m!12083))

(assert (=> (and b!9099 (= lambda!2211 (y!558 thiss!883)) d!7279) d!7291))

(declare-fun b_lambda!4719 () Bool)

(assert (= b_lambda!4703 (or b!9112 b_lambda!4719)))

(declare-fun bs!2292 () Bool)

(declare-fun d!7293 () Bool)

(assert (= bs!2292 (and d!7293 b!9112)))

(assert (=> bs!2292 (= (dynLambda!280 lambda!2224) (fold!35 (right!424 tree!25) f!585))))

(assert (=> bs!2292 m!12075))

(assert (=> b!9112 d!7293))

(declare-fun b_lambda!4721 () Bool)

(assert (= b_lambda!4701 (or b!9112 b_lambda!4721)))

(declare-fun bs!2293 () Bool)

(declare-fun d!7295 () Bool)

(assert (= bs!2293 (and d!7295 b!9112)))

(assert (=> bs!2293 (= (dynLambda!280 lambda!2223) (fold!35 (left!421 tree!25) f!585))))

(assert (=> bs!2293 m!12081))

(assert (=> b!9112 d!7295))

(declare-fun b_lambda!4723 () Bool)

(assert (= b_lambda!4711 (or (and b!9093 b_free!989 (= (x!5038 thiss!883) (x!5039 thiss!855))) (and b!9112 (= lambda!2223 (x!5039 thiss!855))) (and b!9099 (= lambda!2210 (x!5039 thiss!855))) (and b!9099 (= lambda!2211 (x!5039 thiss!855))) (and b!9093 b_free!991 (= (y!558 thiss!883) (x!5039 thiss!855))) (and b!9097 b_free!993) (and b!9097 b_free!995 (= (y!559 thiss!855) (x!5039 thiss!855))) (and b!9112 (= lambda!2224 (x!5039 thiss!855))) (and b!9100 (= lambda!2213 (x!5039 thiss!855))) b_lambda!4723)))

(declare-fun bs!2294 () Bool)

(declare-fun d!7297 () Bool)

(assert (= bs!2294 (and d!7297 b!9099)))

(assert (=> bs!2294 (= (dynLambda!280 lambda!2211) (dynLambda!279 f!585 (fold!35 (left!421 tree!25) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4739 () Bool)

(assert (=> (not b_lambda!4739) (not bs!2294)))

(assert (=> bs!2294 t!2381))

(declare-fun b_and!3733 () Bool)

(assert (= b_and!3731 (and (=> t!2381 result!2081) b_and!3733)))

(assert (=> bs!2294 m!12081))

(assert (=> bs!2294 m!12075))

(assert (=> bs!2294 m!12081))

(assert (=> bs!2294 m!12075))

(assert (=> bs!2294 m!12083))

(assert (=> (and b!9099 (= lambda!2211 (x!5039 thiss!855)) d!7281) d!7297))

(declare-fun bs!2295 () Bool)

(declare-fun d!7299 () Bool)

(assert (= bs!2295 (and d!7299 b!9112)))

(assert (=> bs!2295 (= (dynLambda!280 lambda!2224) (fold!35 (right!424 tree!25) f!585))))

(assert (=> bs!2295 m!12075))

(assert (=> (and b!9112 (= lambda!2224 (x!5039 thiss!855)) d!7281) d!7299))

(declare-fun bs!2296 () Bool)

(declare-fun d!7301 () Bool)

(assert (= bs!2296 (and d!7301 b!9112)))

(assert (=> bs!2296 (= (dynLambda!280 lambda!2223) (fold!35 (left!421 tree!25) f!585))))

(assert (=> bs!2296 m!12081))

(assert (=> (and b!9112 (= lambda!2223 (x!5039 thiss!855)) d!7281) d!7301))

(declare-fun bs!2297 () Bool)

(declare-fun d!7303 () Bool)

(assert (= bs!2297 (and d!7303 b!9100)))

(assert (=> bs!2297 (= (dynLambda!280 lambda!2213) (dynLambda!279 f!585 (foldRight1!66 (toList!59 (left!421 tree!25)) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4741 () Bool)

(assert (=> (not b_lambda!4741) (not bs!2297)))

(assert (=> bs!2297 t!2379))

(declare-fun b_and!3735 () Bool)

(assert (= b_and!3733 (and (=> t!2379 result!2079) b_and!3735)))

(assert (=> bs!2297 m!12075))

(assert (=> bs!2297 m!12045))

(assert (=> bs!2297 m!12045))

(assert (=> bs!2297 m!12077))

(assert (=> bs!2297 m!12077))

(assert (=> bs!2297 m!12075))

(assert (=> bs!2297 m!12079))

(assert (=> (and b!9100 (= lambda!2213 (x!5039 thiss!855)) d!7281) d!7303))

(declare-fun bs!2298 () Bool)

(declare-fun d!7305 () Bool)

(assert (= bs!2298 (and d!7305 b!9099)))

(assert (=> bs!2298 (= (dynLambda!280 lambda!2210) (fold!35 tree!25 f!585))))

(assert (=> bs!2298 m!12019))

(assert (=> (and b!9099 (= lambda!2210 (x!5039 thiss!855)) d!7281) d!7305))

(declare-fun b_lambda!4725 () Bool)

(assert (= b_lambda!4715 (or (and b!9099 (= lambda!2212 (evidence!145 thiss!855))) (and b!9098 (= lambda!2214 (evidence!145 thiss!855))) (and start!1812 b_free!985 (= proof!245 (evidence!145 thiss!855))) (and b!9097 b_free!997) b_lambda!4725)))

(declare-fun bs!2299 () Bool)

(declare-fun d!7307 () Bool)

(assert (= bs!2299 (and d!7307 b!9099)))

(assert (=> bs!2299 (= (dynLambda!278 lambda!2212) (fold_foldRight1_equivalence!0 (left!421 tree!25)))))

(assert (=> bs!2299 m!12031))

(assert (=> (and b!9099 (= lambda!2212 (evidence!145 thiss!855)) b!9127) d!7307))

(declare-fun bs!2300 () Bool)

(declare-fun d!7309 () Bool)

(assert (= bs!2300 (and d!7309 b!9098)))

(assert (=> bs!2300 (= (dynLambda!278 lambda!2214) (fold_foldRight1_equivalence!0 (right!424 tree!25)))))

(assert (=> bs!2300 m!12033))

(assert (=> (and b!9098 (= lambda!2214 (evidence!145 thiss!855)) b!9127) d!7309))

(declare-fun b_lambda!4727 () Bool)

(assert (= b_lambda!4705 (or (and start!1812 (= lambda!2209 f!585)) (and d!7269 (= lambda!2217 f!585)) (and d!7271 (= lambda!2218 f!585)) (and start!1812 b_free!987) b_lambda!4727)))

(declare-fun bs!2301 () Bool)

(declare-fun d!7311 () Bool)

(assert (= bs!2301 (and d!7311 start!1812)))

(declare-fun ++!3 (Balance!193 Balance!193) Balance!193)

(assert (=> bs!2301 (= (dynLambda!279 lambda!2209 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)) (++!3 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)))))

(assert (=> bs!2301 m!12057))

(declare-fun m!12085 () Bool)

(assert (=> bs!2301 m!12085))

(assert (=> (and start!1812 (= lambda!2209 f!585) b!9118) d!7311))

(declare-fun bs!2302 () Bool)

(declare-fun d!7313 () Bool)

(assert (= bs!2302 (and d!7313 d!7269)))

(assert (=> bs!2302 (= (dynLambda!279 lambda!2217 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)) (++!3 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)))))

(assert (=> bs!2302 m!12057))

(assert (=> bs!2302 m!12085))

(assert (=> (and d!7269 (= lambda!2217 f!585) b!9118) d!7313))

(declare-fun bs!2303 () Bool)

(declare-fun d!7315 () Bool)

(assert (= bs!2303 (and d!7315 d!7271)))

(assert (=> bs!2303 (= (dynLambda!279 lambda!2218 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)) (++!3 (head!428 (toList!59 tree!25)) (foldRight1!66 (tail!440 (toList!59 tree!25)) f!585)))))

(assert (=> bs!2303 m!12057))

(assert (=> bs!2303 m!12085))

(assert (=> (and d!7271 (= lambda!2218 f!585) b!9118) d!7315))

(declare-fun b_lambda!4729 () Bool)

(assert (= b_lambda!4707 (or (and b!9100 (= lambda!2213 (x!5038 thiss!883))) (and b!9112 (= lambda!2223 (x!5038 thiss!883))) (and b!9097 b_free!995 (= (y!559 thiss!855) (x!5038 thiss!883))) (and b!9093 b_free!989) (and b!9099 (= lambda!2210 (x!5038 thiss!883))) (and b!9099 (= lambda!2211 (x!5038 thiss!883))) (and b!9097 b_free!993 (= (x!5039 thiss!855) (x!5038 thiss!883))) (and b!9112 (= lambda!2224 (x!5038 thiss!883))) (and b!9093 b_free!991 (= (y!558 thiss!883) (x!5038 thiss!883))) b_lambda!4729)))

(declare-fun bs!2304 () Bool)

(declare-fun d!7317 () Bool)

(assert (= bs!2304 (and d!7317 b!9112)))

(assert (=> bs!2304 (= (dynLambda!280 lambda!2224) (fold!35 (right!424 tree!25) f!585))))

(assert (=> bs!2304 m!12075))

(assert (=> (and b!9112 (= lambda!2224 (x!5038 thiss!883)) d!7279) d!7317))

(declare-fun bs!2305 () Bool)

(declare-fun d!7319 () Bool)

(assert (= bs!2305 (and d!7319 b!9099)))

(assert (=> bs!2305 (= (dynLambda!280 lambda!2210) (fold!35 tree!25 f!585))))

(assert (=> bs!2305 m!12019))

(assert (=> (and b!9099 (= lambda!2210 (x!5038 thiss!883)) d!7279) d!7319))

(declare-fun bs!2306 () Bool)

(declare-fun d!7321 () Bool)

(assert (= bs!2306 (and d!7321 b!9100)))

(assert (=> bs!2306 (= (dynLambda!280 lambda!2213) (dynLambda!279 f!585 (foldRight1!66 (toList!59 (left!421 tree!25)) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4743 () Bool)

(assert (=> (not b_lambda!4743) (not bs!2306)))

(assert (=> bs!2306 t!2379))

(declare-fun b_and!3737 () Bool)

(assert (= b_and!3735 (and (=> t!2379 result!2079) b_and!3737)))

(assert (=> bs!2306 m!12075))

(assert (=> bs!2306 m!12045))

(assert (=> bs!2306 m!12045))

(assert (=> bs!2306 m!12077))

(assert (=> bs!2306 m!12077))

(assert (=> bs!2306 m!12075))

(assert (=> bs!2306 m!12079))

(assert (=> (and b!9100 (= lambda!2213 (x!5038 thiss!883)) d!7279) d!7321))

(declare-fun bs!2307 () Bool)

(declare-fun d!7323 () Bool)

(assert (= bs!2307 (and d!7323 b!9112)))

(assert (=> bs!2307 (= (dynLambda!280 lambda!2223) (fold!35 (left!421 tree!25) f!585))))

(assert (=> bs!2307 m!12081))

(assert (=> (and b!9112 (= lambda!2223 (x!5038 thiss!883)) d!7279) d!7323))

(declare-fun bs!2308 () Bool)

(declare-fun d!7325 () Bool)

(assert (= bs!2308 (and d!7325 b!9099)))

(assert (=> bs!2308 (= (dynLambda!280 lambda!2211) (dynLambda!279 f!585 (fold!35 (left!421 tree!25) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4745 () Bool)

(assert (=> (not b_lambda!4745) (not bs!2308)))

(assert (=> bs!2308 t!2381))

(declare-fun b_and!3739 () Bool)

(assert (= b_and!3737 (and (=> t!2381 result!2081) b_and!3739)))

(assert (=> bs!2308 m!12081))

(assert (=> bs!2308 m!12075))

(assert (=> bs!2308 m!12081))

(assert (=> bs!2308 m!12075))

(assert (=> bs!2308 m!12083))

(assert (=> (and b!9099 (= lambda!2211 (x!5038 thiss!883)) d!7279) d!7325))

(declare-fun b_lambda!4731 () Bool)

(assert (= b_lambda!4699 (or (and start!1812 (= lambda!2209 f!585)) (and d!7269 (= lambda!2217 f!585)) (and d!7271 (= lambda!2218 f!585)) (and start!1812 b_free!987) b_lambda!4731)))

(declare-fun bs!2309 () Bool)

(declare-fun d!7327 () Bool)

(assert (= bs!2309 (and d!7327 start!1812)))

(assert (=> bs!2309 (= (dynLambda!279 lambda!2209 (_1!38 lt!1609) (_2!38 lt!1609)) (++!3 (_1!38 lt!1609) (_2!38 lt!1609)))))

(declare-fun m!12087 () Bool)

(assert (=> bs!2309 m!12087))

(assert (=> (and start!1812 (= lambda!2209 f!585) b!9112) d!7327))

(declare-fun bs!2310 () Bool)

(declare-fun d!7329 () Bool)

(assert (= bs!2310 (and d!7329 d!7269)))

(assert (=> bs!2310 (= (dynLambda!279 lambda!2217 (_1!38 lt!1609) (_2!38 lt!1609)) (++!3 (_1!38 lt!1609) (_2!38 lt!1609)))))

(assert (=> bs!2310 m!12087))

(assert (=> (and d!7269 (= lambda!2217 f!585) b!9112) d!7329))

(declare-fun bs!2311 () Bool)

(declare-fun d!7331 () Bool)

(assert (= bs!2311 (and d!7331 d!7271)))

(assert (=> bs!2311 (= (dynLambda!279 lambda!2218 (_1!38 lt!1609) (_2!38 lt!1609)) (++!3 (_1!38 lt!1609) (_2!38 lt!1609)))))

(assert (=> bs!2311 m!12087))

(assert (=> (and d!7271 (= lambda!2218 f!585) b!9112) d!7331))

(declare-fun b_lambda!4733 () Bool)

(assert (= b_lambda!4713 (or (and b!9100 (= lambda!2213 (y!559 thiss!855))) (and b!9093 b_free!989 (= (x!5038 thiss!883) (y!559 thiss!855))) (and b!9112 (= lambda!2224 (y!559 thiss!855))) (and b!9112 (= lambda!2223 (y!559 thiss!855))) (and b!9093 b_free!991 (= (y!558 thiss!883) (y!559 thiss!855))) (and b!9097 b_free!995) (and b!9099 (= lambda!2210 (y!559 thiss!855))) (and b!9099 (= lambda!2211 (y!559 thiss!855))) (and b!9097 b_free!993 (= (x!5039 thiss!855) (y!559 thiss!855))) b_lambda!4733)))

(declare-fun bs!2312 () Bool)

(declare-fun d!7333 () Bool)

(assert (= bs!2312 (and d!7333 b!9100)))

(assert (=> bs!2312 (= (dynLambda!280 lambda!2213) (dynLambda!279 f!585 (foldRight1!66 (toList!59 (left!421 tree!25)) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4747 () Bool)

(assert (=> (not b_lambda!4747) (not bs!2312)))

(assert (=> bs!2312 t!2379))

(declare-fun b_and!3741 () Bool)

(assert (= b_and!3739 (and (=> t!2379 result!2079) b_and!3741)))

(assert (=> bs!2312 m!12075))

(assert (=> bs!2312 m!12045))

(assert (=> bs!2312 m!12045))

(assert (=> bs!2312 m!12077))

(assert (=> bs!2312 m!12077))

(assert (=> bs!2312 m!12075))

(assert (=> bs!2312 m!12079))

(assert (=> (and b!9100 (= lambda!2213 (y!559 thiss!855)) d!7281) d!7333))

(declare-fun bs!2313 () Bool)

(declare-fun d!7335 () Bool)

(assert (= bs!2313 (and d!7335 b!9112)))

(assert (=> bs!2313 (= (dynLambda!280 lambda!2223) (fold!35 (left!421 tree!25) f!585))))

(assert (=> bs!2313 m!12081))

(assert (=> (and b!9112 (= lambda!2223 (y!559 thiss!855)) d!7281) d!7335))

(declare-fun bs!2314 () Bool)

(declare-fun d!7337 () Bool)

(assert (= bs!2314 (and d!7337 b!9099)))

(assert (=> bs!2314 (= (dynLambda!280 lambda!2211) (dynLambda!279 f!585 (fold!35 (left!421 tree!25) f!585) (fold!35 (right!424 tree!25) f!585)))))

(declare-fun b_lambda!4749 () Bool)

(assert (=> (not b_lambda!4749) (not bs!2314)))

(assert (=> bs!2314 t!2381))

(declare-fun b_and!3743 () Bool)

(assert (= b_and!3741 (and (=> t!2381 result!2081) b_and!3743)))

(assert (=> bs!2314 m!12081))

(assert (=> bs!2314 m!12075))

(assert (=> bs!2314 m!12081))

(assert (=> bs!2314 m!12075))

(assert (=> bs!2314 m!12083))

(assert (=> (and b!9099 (= lambda!2211 (y!559 thiss!855)) d!7281) d!7337))

(declare-fun bs!2315 () Bool)

(declare-fun d!7339 () Bool)

(assert (= bs!2315 (and d!7339 b!9112)))

(assert (=> bs!2315 (= (dynLambda!280 lambda!2224) (fold!35 (right!424 tree!25) f!585))))

(assert (=> bs!2315 m!12075))

(assert (=> (and b!9112 (= lambda!2224 (y!559 thiss!855)) d!7281) d!7339))

(declare-fun bs!2316 () Bool)

(declare-fun d!7341 () Bool)

(assert (= bs!2316 (and d!7341 b!9099)))

(assert (=> bs!2316 (= (dynLambda!280 lambda!2210) (fold!35 tree!25 f!585))))

(assert (=> bs!2316 m!12019))

(assert (=> (and b!9099 (= lambda!2210 (y!559 thiss!855)) d!7281) d!7341))

(push 1)

(assert (not b_lambda!4721))

(assert (not b!9118))

(assert (not bs!2300))

(assert (not b_lambda!4731))

(assert (not bs!2312))

(assert (not bs!2290))

(assert (not b_lambda!4733))

(assert (not b_next!2371))

(assert b_and!3717)

(assert (not b_lambda!4723))

(assert (not b_lambda!4743))

(assert (not d!7277))

(assert (not b_next!2385))

(assert (not bs!2304))

(assert (not bs!2294))

(assert (not bs!2311))

(assert (not bs!2303))

(assert (not bs!2310))

(assert (not b_next!2365))

(assert (not bs!2316))

(assert (not bs!2306))

(assert (not b_next!2383))

(assert (not b_lambda!4729))

(assert (not bs!2295))

(assert (not bs!2309))

(assert (not bs!2315))

(assert (not b_next!2387))

(assert (not bs!2291))

(assert (not bs!2297))

(assert (not bs!2314))

(assert (not bs!2298))

(assert (not b_lambda!4725))

(assert (not b_lambda!4749))

(assert (not bs!2296))

(assert (not b!9124))

(assert (not b_lambda!4717))

(assert (not bs!2289))

(assert (not bs!2305))

(assert (not d!7269))

(assert (not b_lambda!4719))

(assert b_and!3721)

(assert (not b_lambda!4739))

(assert b_and!3723)

(assert (not bs!2288))

(assert (not bs!2302))

(assert (not bs!2299))

(assert (not b_lambda!4735))

(assert (not d!7271))

(assert (not b_lambda!4727))

(assert (not b_lambda!4745))

(assert (not b_lambda!4741))

(assert b_and!3719)

(assert (not bs!2301))

(assert (not b_next!2367))

(assert (not bs!2308))

(assert b_and!3727)

(assert (not bs!2307))

(assert (not b_lambda!4697))

(assert (not bs!2293))

(assert (not bs!2313))

(assert (not b_lambda!4747))

(assert (not b_next!2381))

(assert b_and!3725)

(assert (not b_lambda!4737))

(assert (not bs!2287))

(assert b_and!3743)

(assert (not bs!2292))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2371))

(assert b_and!3717)

(assert (not b_next!2385))

(assert (not b_next!2365))

(assert (not b_next!2383))

(assert (not b_next!2387))

(assert b_and!3721)

(assert b_and!3723)

(assert b_and!3719)

(assert (not b_next!2367))

(assert b_and!3727)

(assert (not b_next!2381))

(assert b_and!3725)

(assert b_and!3743)

(check-sat)

(pop 1)

