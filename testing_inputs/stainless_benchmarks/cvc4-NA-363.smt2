; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2716 () Bool)

(assert start!2716)

(declare-fun res!5025 () Bool)

(declare-fun e!7301 () Bool)

(assert (=> start!2716 (=> (not res!5025) (not e!7301))))

(declare-datatypes () ((Tree!88 (Leaf!168) (Node!20 (left!578 Tree!88) (value!1463 Int) (right!581 Tree!88)))))

(declare-fun tree!73 () Tree!88)

(declare-fun isBST!0 (Tree!88) Bool)

(assert (=> start!2716 (= res!5025 (isBST!0 tree!73))))

(assert (=> start!2716 e!7301))

(assert (=> start!2716 true))

(declare-fun b!13320 () Bool)

(declare-fun res!5026 () Bool)

(assert (=> b!13320 (=> (not res!5026) (not e!7301))))

(declare-fun res!4805 () Tree!88)

(declare-fun value!1445 () Int)

(assert (=> b!13320 (= res!5026 (and (not (is-Leaf!168 tree!73)) (>= (value!1463 tree!73) value!1445) (<= (value!1463 tree!73) value!1445) (= res!4805 tree!73)))))

(declare-fun b!13321 () Bool)

(declare-fun e!7300 () Bool)

(assert (=> b!13321 (= e!7301 (not e!7300))))

(declare-fun res!5027 () Bool)

(assert (=> b!13321 (=> (not res!5027) (not e!7300))))

(assert (=> b!13321 (= res!5027 (isBST!0 res!4805))))

(assert (=> b!13321 (is-Node!20 res!4805)))

(declare-fun b!13322 () Bool)

(declare-fun content!21 (Tree!88) (Set Int))

(assert (=> b!13322 (= e!7300 (= (content!21 res!4805) (union (content!21 tree!73) (insert value!1445 (as emptyset (Set Int))))))))

(assert (= (and start!2716 res!5025) b!13320))

(assert (= (and b!13320 res!5026) b!13321))

(assert (= (and b!13321 res!5027) b!13322))

(declare-fun m!16885 () Bool)

(assert (=> start!2716 m!16885))

(declare-fun m!16887 () Bool)

(assert (=> b!13321 m!16887))

(declare-fun m!16889 () Bool)

(assert (=> b!13322 m!16889))

(declare-fun m!16891 () Bool)

(assert (=> b!13322 m!16891))

(declare-fun m!16893 () Bool)

(assert (=> b!13322 m!16893))

(push 1)

(assert (not b!13322))

(assert (not b!13321))

(assert (not start!2716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10303 () Bool)

(declare-fun c!3735 () Bool)

(assert (=> d!10303 (= c!3735 (is-Leaf!168 res!4805))))

(declare-fun e!7304 () (Set Int))

(assert (=> d!10303 (= (content!21 res!4805) e!7304)))

(declare-fun b!13327 () Bool)

(assert (=> b!13327 (= e!7304 (as emptyset (Set Int)))))

(declare-fun b!13328 () Bool)

(assert (=> b!13328 (= e!7304 (union (union (content!21 (left!578 res!4805)) (insert (value!1463 res!4805) (as emptyset (Set Int)))) (content!21 (right!581 res!4805))))))

(assert (= (and d!10303 c!3735) b!13327))

(assert (= (and d!10303 (not c!3735)) b!13328))

(declare-fun m!16895 () Bool)

(assert (=> b!13328 m!16895))

(declare-fun m!16897 () Bool)

(assert (=> b!13328 m!16897))

(declare-fun m!16899 () Bool)

(assert (=> b!13328 m!16899))

(assert (=> b!13322 d!10303))

(declare-fun d!10305 () Bool)

(declare-fun c!3736 () Bool)

(assert (=> d!10305 (= c!3736 (is-Leaf!168 tree!73))))

(declare-fun e!7305 () (Set Int))

(assert (=> d!10305 (= (content!21 tree!73) e!7305)))

(declare-fun b!13329 () Bool)

(assert (=> b!13329 (= e!7305 (as emptyset (Set Int)))))

(declare-fun b!13330 () Bool)

(assert (=> b!13330 (= e!7305 (union (union (content!21 (left!578 tree!73)) (insert (value!1463 tree!73) (as emptyset (Set Int)))) (content!21 (right!581 tree!73))))))

(assert (= (and d!10305 c!3736) b!13329))

(assert (= (and d!10305 (not c!3736)) b!13330))

(declare-fun m!16901 () Bool)

(assert (=> b!13330 m!16901))

(declare-fun m!16903 () Bool)

(assert (=> b!13330 m!16903))

(declare-fun m!16905 () Bool)

(assert (=> b!13330 m!16905))

(assert (=> b!13322 d!10305))

(declare-fun b!13341 () Bool)

(assert (=> b!13341 m!16895))

(declare-fun inst!98 () Bool)

(declare-fun x!7542 () Int)

(assert (=> b!13341 (= inst!98 (=> true (or (not (member x!7542 (content!21 (left!578 res!4805)))) (< x!7542 (value!1463 res!4805)))))))

(declare-fun m!16907 () Bool)

(assert (=> b!13341 m!16907))

(declare-fun b!13342 () Bool)

(assert (=> b!13342 m!16899))

(declare-fun inst!99 () Bool)

(declare-fun x!7543 () Int)

(assert (=> b!13342 (= inst!99 (=> true (or (not (member x!7543 (content!21 (right!581 res!4805)))) (< (value!1463 res!4805) x!7543))))))

(declare-fun m!16909 () Bool)

(assert (=> b!13342 m!16909))

(declare-fun bs!4117 () Bool)

(declare-fun neg-inst!87 () Bool)

(assert (= bs!4117 neg-inst!87))

(assert (=> bs!4117 m!16895))

(declare-fun bs!4118 () Bool)

(declare-fun s!576 () Bool)

(assert (= bs!4118 (and neg-inst!87 s!576)))

(assert (=> bs!4118 (=> true (or (not (member x!7542 (content!21 (left!578 res!4805)))) (< x!7542 (value!1463 res!4805))))))

(assert (=> m!16907 s!576))

(declare-fun bs!4119 () Bool)

(assert (= bs!4119 (and neg-inst!87 b!13341)))

(assert (=> bs!4119 (= true inst!98)))

(declare-fun bs!4120 () Bool)

(declare-fun neg-inst!86 () Bool)

(assert (= bs!4120 neg-inst!86))

(assert (=> bs!4120 m!16899))

(declare-fun bs!4121 () Bool)

(declare-fun s!578 () Bool)

(assert (= bs!4121 (and neg-inst!86 s!578)))

(assert (=> bs!4121 (=> true (or (not (member x!7543 (content!21 (right!581 res!4805)))) (< (value!1463 res!4805) x!7543)))))

(assert (=> m!16909 s!578))

(declare-fun bs!4122 () Bool)

(assert (= bs!4122 (and neg-inst!86 b!13342)))

(assert (=> bs!4122 (= true inst!99)))

(declare-fun d!10307 () Bool)

(declare-fun res!5037 () Bool)

(declare-fun e!7311 () Bool)

(assert (=> d!10307 (=> res!5037 e!7311)))

(assert (=> d!10307 (= res!5037 (is-Leaf!168 res!4805))))

(assert (=> d!10307 (= (isBST!0 res!4805) e!7311)))

(declare-fun e!7310 () Bool)

(assert (=> b!13342 (= e!7310 inst!99)))

(declare-fun b!13339 () Bool)

(assert (=> b!13339 (= e!7311 e!7310)))

(declare-fun res!5038 () Bool)

(assert (=> b!13339 (=> (not res!5038) (not e!7310))))

(assert (=> b!13339 (= res!5038 (isBST!0 (left!578 res!4805)))))

(declare-fun res!5039 () Bool)

(assert (=> b!13341 (=> (not res!5039) (not e!7310))))

(assert (=> b!13341 (= res!5039 inst!98)))

(declare-fun b!13340 () Bool)

(declare-fun res!5036 () Bool)

(assert (=> b!13340 (=> (not res!5036) (not e!7310))))

(assert (=> b!13340 (= res!5036 (isBST!0 (right!581 res!4805)))))

(assert (= (and d!10307 (not res!5037)) b!13339))

(assert (= (and b!13339 res!5038) b!13340))

(assert (= (and b!13340 res!5036) b!13341))

(assert (= neg-inst!87 inst!98))

(assert (= (and b!13341 res!5039) b!13342))

(assert (= neg-inst!86 inst!99))

(declare-fun m!16911 () Bool)

(assert (=> b!13339 m!16911))

(declare-fun m!16913 () Bool)

(assert (=> b!13340 m!16913))

(assert (=> b!13321 d!10307))

(declare-fun b!13345 () Bool)

(assert (=> b!13345 m!16901))

(declare-fun inst!100 () Bool)

(declare-fun x!7544 () Int)

(assert (=> b!13345 (= inst!100 (=> true (or (not (member x!7544 (content!21 (left!578 tree!73)))) (< x!7544 (value!1463 tree!73)))))))

(declare-fun m!16915 () Bool)

(assert (=> b!13345 m!16915))

(declare-fun bs!4123 () Bool)

(assert (= bs!4123 (and b!13345 b!13341)))

(assert (=> (and bs!4123 (= (content!21 (left!578 tree!73)) (content!21 (left!578 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= inst!100 inst!98)))

(declare-fun bs!4124 () Bool)

(assert (= bs!4124 (and b!13345 neg-inst!87)))

(assert (=> (and bs!4124 (= (content!21 (left!578 tree!73)) (content!21 (left!578 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= inst!100 true)))

(declare-fun b!13346 () Bool)

(assert (=> b!13346 m!16905))

(declare-fun inst!101 () Bool)

(declare-fun x!7545 () Int)

(assert (=> b!13346 (= inst!101 (=> true (or (not (member x!7545 (content!21 (right!581 tree!73)))) (< (value!1463 tree!73) x!7545))))))

(declare-fun m!16917 () Bool)

(assert (=> b!13346 m!16917))

(declare-fun bs!4125 () Bool)

(assert (= bs!4125 (and b!13346 neg-inst!86)))

(assert (=> (and bs!4125 (= (content!21 (right!581 tree!73)) (content!21 (right!581 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= inst!101 true)))

(declare-fun bs!4126 () Bool)

(assert (= bs!4126 (and b!13346 b!13342)))

(assert (=> (and bs!4126 (= (content!21 (right!581 tree!73)) (content!21 (right!581 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= inst!101 inst!99)))

(declare-fun bs!4127 () Bool)

(declare-fun neg-inst!89 () Bool)

(assert (= bs!4127 neg-inst!89))

(assert (=> bs!4127 m!16901))

(declare-fun bs!4128 () Bool)

(declare-fun s!580 () Bool)

(assert (= bs!4128 (and neg-inst!89 s!580)))

(assert (=> bs!4128 (=> true (or (not (member x!7544 (content!21 (left!578 tree!73)))) (< x!7544 (value!1463 tree!73))))))

(assert (=> m!16915 s!580))

(declare-fun bs!4129 () Bool)

(assert (= bs!4129 (and neg-inst!89 b!13341)))

(assert (=> (and bs!4129 (= (content!21 (left!578 tree!73)) (content!21 (left!578 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= true inst!98)))

(declare-fun bs!4130 () Bool)

(assert (= bs!4130 (and neg-inst!89 b!13345)))

(assert (=> bs!4130 (= true inst!100)))

(declare-fun bs!4131 () Bool)

(assert (= bs!4131 (and neg-inst!89 neg-inst!87)))

(assert (=> (and bs!4131 (= (content!21 (left!578 tree!73)) (content!21 (left!578 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= true true)))

(declare-fun bs!4132 () Bool)

(declare-fun neg-inst!88 () Bool)

(assert (= bs!4132 neg-inst!88))

(assert (=> bs!4132 m!16905))

(declare-fun bs!4133 () Bool)

(declare-fun s!582 () Bool)

(assert (= bs!4133 (and neg-inst!88 s!582)))

(assert (=> bs!4133 (=> true (or (not (member x!7545 (content!21 (right!581 tree!73)))) (< (value!1463 tree!73) x!7545)))))

(assert (=> m!16917 s!582))

(declare-fun bs!4134 () Bool)

(assert (= bs!4134 (and neg-inst!88 b!13346)))

(assert (=> bs!4134 (= true inst!101)))

(declare-fun bs!4135 () Bool)

(assert (= bs!4135 (and neg-inst!88 neg-inst!86)))

(assert (=> (and bs!4135 (= (content!21 (right!581 tree!73)) (content!21 (right!581 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= true true)))

(declare-fun bs!4136 () Bool)

(assert (= bs!4136 (and neg-inst!88 b!13342)))

(assert (=> (and bs!4136 (= (content!21 (right!581 tree!73)) (content!21 (right!581 res!4805))) (= (value!1463 tree!73) (value!1463 res!4805))) (= true inst!99)))

(declare-fun d!10309 () Bool)

(declare-fun res!5041 () Bool)

(declare-fun e!7313 () Bool)

(assert (=> d!10309 (=> res!5041 e!7313)))

(assert (=> d!10309 (= res!5041 (is-Leaf!168 tree!73))))

(assert (=> d!10309 (= (isBST!0 tree!73) e!7313)))

(declare-fun e!7312 () Bool)

(assert (=> b!13346 (= e!7312 inst!101)))

(declare-fun b!13343 () Bool)

(assert (=> b!13343 (= e!7313 e!7312)))

(declare-fun res!5042 () Bool)

(assert (=> b!13343 (=> (not res!5042) (not e!7312))))

(assert (=> b!13343 (= res!5042 (isBST!0 (left!578 tree!73)))))

(declare-fun res!5043 () Bool)

(assert (=> b!13345 (=> (not res!5043) (not e!7312))))

(assert (=> b!13345 (= res!5043 inst!100)))

(declare-fun b!13344 () Bool)

(declare-fun res!5040 () Bool)

(assert (=> b!13344 (=> (not res!5040) (not e!7312))))

(assert (=> b!13344 (= res!5040 (isBST!0 (right!581 tree!73)))))

(assert (= (and d!10309 (not res!5041)) b!13343))

(assert (= (and b!13343 res!5042) b!13344))

(assert (= (and b!13344 res!5040) b!13345))

(assert (= neg-inst!89 inst!100))

(assert (= (and b!13345 res!5043) b!13346))

(assert (= neg-inst!88 inst!101))

(declare-fun m!16919 () Bool)

(assert (=> b!13343 m!16919))

(declare-fun m!16921 () Bool)

(assert (=> b!13344 m!16921))

(assert (=> start!2716 d!10309))

(push 1)

(assert (not b!13346))

(assert (not b!13339))

(assert (not b!13340))

(assert (not neg-inst!87))

(assert (not b!13342))

(assert (not neg-inst!89))

(assert (not b!13344))

(assert (not b!13345))

(assert (not neg-inst!88))

(assert (not b!13343))

(assert (not neg-inst!86))

(assert (not b!13330))

(assert (not b!13341))

(assert (not b!13328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

