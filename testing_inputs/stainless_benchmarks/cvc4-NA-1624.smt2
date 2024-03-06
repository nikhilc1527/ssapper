; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11300 () Bool)

(assert start!11300)

(declare-fun res!44980 () Bool)

(declare-fun e!46831 () Bool)

(assert (=> start!11300 (=> (not res!44980) (not e!46831))))

(declare-datatypes () ((Color!8 (Red!7) (Black!7))))

(declare-datatypes () ((Tree!105 (Empty!188) (Node!149 (color!38 Color!8) (left!1648 Tree!105) (value!6795 Int) (right!1651 Tree!105)))))

(declare-fun t!48253 () Tree!105)

(declare-fun redNodesHaveBlackChildren!0 (Tree!105) Bool)

(assert (=> start!11300 (= res!44980 (redNodesHaveBlackChildren!0 t!48253))))

(assert (=> start!11300 e!46831))

(assert (=> start!11300 true))

(declare-fun b!86322 () Bool)

(declare-fun res!44978 () Bool)

(assert (=> b!86322 (=> (not res!44978) (not e!46831))))

(declare-fun blackBalanced!0 (Tree!105) Bool)

(assert (=> b!86322 (= res!44978 (blackBalanced!0 t!48253))))

(declare-fun b!86323 () Bool)

(declare-fun e!46830 () Bool)

(assert (=> b!86323 (= e!46831 e!46830)))

(declare-fun res!44975 () Bool)

(assert (=> b!86323 (=> res!44975 e!46830)))

(declare-fun x!30388 () Int)

(declare-fun res!44629 () Tree!105)

(declare-fun content!8 (Tree!105) (Set Int))

(assert (=> b!86323 (= res!44975 (not (= (content!8 res!44629) (union (content!8 t!48253) (insert x!30388 (as emptyset (Set Int)))))))))

(declare-fun b!86324 () Bool)

(declare-fun res!44977 () Bool)

(assert (=> b!86324 (=> res!44977 e!46830)))

(declare-fun size!3 (Tree!105) Int)

(assert (=> b!86324 (= res!44977 (> (size!3 res!44629) (+ (size!3 t!48253) 1)))))

(declare-fun b!86325 () Bool)

(declare-fun res!44976 () Bool)

(assert (=> b!86325 (=> (not res!44976) (not e!46831))))

(assert (=> b!86325 (= res!44976 (and (is-Empty!188 t!48253) (= res!44629 (Node!149 Red!7 Empty!188 x!30388 Empty!188))))))

(declare-fun b!86326 () Bool)

(declare-fun res!44979 () Bool)

(assert (=> b!86326 (=> res!44979 e!46830)))

(declare-fun redDescHaveBlackChildren!0 (Tree!105) Bool)

(assert (=> b!86326 (= res!44979 (not (redDescHaveBlackChildren!0 res!44629)))))

(declare-fun b!86327 () Bool)

(assert (=> b!86327 (= e!46830 (not (blackBalanced!0 res!44629)))))

(declare-fun b!86328 () Bool)

(declare-fun res!44974 () Bool)

(assert (=> b!86328 (=> res!44974 e!46830)))

(assert (=> b!86328 (= res!44974 (> (size!3 t!48253) (size!3 res!44629)))))

(assert (= (and start!11300 res!44980) b!86322))

(assert (= (and b!86322 res!44978) b!86325))

(assert (= (and b!86325 res!44976) b!86323))

(assert (= (and b!86323 (not res!44975)) b!86328))

(assert (= (and b!86328 (not res!44974)) b!86324))

(assert (= (and b!86324 (not res!44977)) b!86326))

(assert (= (and b!86326 (not res!44979)) b!86327))

(declare-fun m!82122 () Bool)

(assert (=> b!86326 m!82122))

(declare-fun m!82124 () Bool)

(assert (=> b!86322 m!82124))

(declare-fun m!82126 () Bool)

(assert (=> b!86323 m!82126))

(declare-fun m!82128 () Bool)

(assert (=> b!86323 m!82128))

(declare-fun m!82130 () Bool)

(assert (=> b!86323 m!82130))

(declare-fun m!82132 () Bool)

(assert (=> b!86324 m!82132))

(declare-fun m!82134 () Bool)

(assert (=> b!86324 m!82134))

(declare-fun m!82136 () Bool)

(assert (=> start!11300 m!82136))

(declare-fun m!82138 () Bool)

(assert (=> b!86327 m!82138))

(assert (=> b!86328 m!82134))

(assert (=> b!86328 m!82132))

(push 1)

(assert (not b!86322))

(assert (not b!86323))

(assert (not b!86328))

(assert (not start!11300))

(assert (not b!86327))

(assert (not b!86324))

(assert (not b!86326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57677 () Bool)

(declare-fun res!44987 () Bool)

(declare-fun e!46836 () Bool)

(assert (=> d!57677 (=> res!44987 e!46836)))

(assert (=> d!57677 (= res!44987 (not (is-Node!149 res!44629)))))

(assert (=> d!57677 (= (blackBalanced!0 res!44629) e!46836)))

(declare-fun b!86335 () Bool)

(declare-fun e!46837 () Bool)

(assert (=> b!86335 (= e!46836 e!46837)))

(declare-fun res!44989 () Bool)

(assert (=> b!86335 (=> (not res!44989) (not e!46837))))

(assert (=> b!86335 (= res!44989 (blackBalanced!0 (left!1648 res!44629)))))

(declare-fun b!86336 () Bool)

(declare-fun res!44988 () Bool)

(assert (=> b!86336 (=> (not res!44988) (not e!46837))))

(assert (=> b!86336 (= res!44988 (blackBalanced!0 (right!1651 res!44629)))))

(declare-fun b!86337 () Bool)

(declare-fun blackHeight!0 (Tree!105) Int)

(assert (=> b!86337 (= e!46837 (= (blackHeight!0 (left!1648 res!44629)) (blackHeight!0 (right!1651 res!44629))))))

(assert (= (and d!57677 (not res!44987)) b!86335))

(assert (= (and b!86335 res!44989) b!86336))

(assert (= (and b!86336 res!44988) b!86337))

(declare-fun m!82140 () Bool)

(assert (=> b!86335 m!82140))

(declare-fun m!82142 () Bool)

(assert (=> b!86336 m!82142))

(declare-fun m!82144 () Bool)

(assert (=> b!86337 m!82144))

(declare-fun m!82146 () Bool)

(assert (=> b!86337 m!82146))

(assert (=> b!86327 d!57677))

(declare-fun d!57679 () Bool)

(declare-fun res!44994 () Bool)

(declare-fun e!46842 () Bool)

(assert (=> d!57679 (=> res!44994 e!46842)))

(assert (=> d!57679 (= res!44994 (is-Empty!188 res!44629))))

(assert (=> d!57679 (= (redDescHaveBlackChildren!0 res!44629) e!46842)))

(declare-fun b!86342 () Bool)

(declare-fun e!46843 () Bool)

(assert (=> b!86342 (= e!46842 e!46843)))

(declare-fun res!44995 () Bool)

(assert (=> b!86342 (=> (not res!44995) (not e!46843))))

(assert (=> b!86342 (= res!44995 (redNodesHaveBlackChildren!0 (left!1648 res!44629)))))

(declare-fun b!86343 () Bool)

(assert (=> b!86343 (= e!46843 (redNodesHaveBlackChildren!0 (right!1651 res!44629)))))

(assert (= (and d!57679 (not res!44994)) b!86342))

(assert (= (and b!86342 res!44995) b!86343))

(declare-fun m!82148 () Bool)

(assert (=> b!86342 m!82148))

(declare-fun m!82150 () Bool)

(assert (=> b!86343 m!82150))

(assert (=> b!86326 d!57679))

(declare-fun d!57681 () Bool)

(declare-fun lt!20035 () Int)

(assert (=> d!57681 (>= lt!20035 0)))

(declare-fun e!46846 () Int)

(assert (=> d!57681 (= lt!20035 e!46846)))

(declare-fun c!21389 () Bool)

(assert (=> d!57681 (= c!21389 (is-Empty!188 t!48253))))

(assert (=> d!57681 (= (size!3 t!48253) lt!20035)))

(declare-fun b!86348 () Bool)

(assert (=> b!86348 (= e!46846 0)))

(declare-fun b!86349 () Bool)

(assert (=> b!86349 (= e!46846 (+ (+ (size!3 (left!1648 t!48253)) 1) (size!3 (right!1651 t!48253))))))

(assert (= (and d!57681 c!21389) b!86348))

(assert (= (and d!57681 (not c!21389)) b!86349))

(declare-fun m!82152 () Bool)

(assert (=> b!86349 m!82152))

(declare-fun m!82154 () Bool)

(assert (=> b!86349 m!82154))

(assert (=> b!86328 d!57681))

(declare-fun d!57683 () Bool)

(declare-fun lt!20036 () Int)

(assert (=> d!57683 (>= lt!20036 0)))

(declare-fun e!46847 () Int)

(assert (=> d!57683 (= lt!20036 e!46847)))

(declare-fun c!21390 () Bool)

(assert (=> d!57683 (= c!21390 (is-Empty!188 res!44629))))

(assert (=> d!57683 (= (size!3 res!44629) lt!20036)))

(declare-fun b!86350 () Bool)

(assert (=> b!86350 (= e!46847 0)))

(declare-fun b!86351 () Bool)

(assert (=> b!86351 (= e!46847 (+ (+ (size!3 (left!1648 res!44629)) 1) (size!3 (right!1651 res!44629))))))

(assert (= (and d!57683 c!21390) b!86350))

(assert (= (and d!57683 (not c!21390)) b!86351))

(declare-fun m!82156 () Bool)

(assert (=> b!86351 m!82156))

(declare-fun m!82158 () Bool)

(assert (=> b!86351 m!82158))

(assert (=> b!86328 d!57683))

(assert (=> b!86324 d!57683))

(assert (=> b!86324 d!57681))

(declare-fun b!86366 () Bool)

(declare-fun e!46857 () Bool)

(declare-fun e!46859 () Bool)

(assert (=> b!86366 (= e!46857 e!46859)))

(declare-fun res!45006 () Bool)

(assert (=> b!86366 (=> (not res!45006) (not e!46859))))

(assert (=> b!86366 (= res!45006 (redNodesHaveBlackChildren!0 (left!1648 t!48253)))))

(declare-fun b!86367 () Bool)

(declare-fun res!45008 () Bool)

(declare-fun e!46856 () Bool)

(assert (=> b!86367 (=> (not res!45008) (not e!46856))))

(assert (=> b!86367 (= res!45008 (redNodesHaveBlackChildren!0 (left!1648 t!48253)))))

(declare-fun b!86368 () Bool)

(assert (=> b!86368 (= e!46857 e!46856)))

(declare-fun res!45007 () Bool)

(assert (=> b!86368 (=> (not res!45007) (not e!46856))))

(declare-fun isBlack!0 (Tree!105) Bool)

(assert (=> b!86368 (= res!45007 (isBlack!0 (left!1648 t!48253)))))

(declare-fun b!86369 () Bool)

(assert (=> b!86369 (= e!46859 (redNodesHaveBlackChildren!0 (right!1651 t!48253)))))

(declare-fun b!86370 () Bool)

(declare-fun res!45009 () Bool)

(assert (=> b!86370 (=> (not res!45009) (not e!46856))))

(assert (=> b!86370 (= res!45009 (isBlack!0 (right!1651 t!48253)))))

(declare-fun b!86371 () Bool)

(assert (=> b!86371 (= e!46856 (redNodesHaveBlackChildren!0 (right!1651 t!48253)))))

(declare-fun b!86372 () Bool)

(declare-fun e!46858 () Bool)

(assert (=> b!86372 (= e!46858 e!46857)))

(declare-fun c!21393 () Bool)

(assert (=> b!86372 (= c!21393 (and (is-Node!149 t!48253) (is-Black!7 (color!38 t!48253))))))

(declare-fun d!57685 () Bool)

(declare-fun res!45010 () Bool)

(assert (=> d!57685 (=> res!45010 e!46858)))

(assert (=> d!57685 (= res!45010 (is-Empty!188 t!48253))))

(assert (=> d!57685 (= (redNodesHaveBlackChildren!0 t!48253) e!46858)))

(assert (= (and d!57685 (not res!45010)) b!86372))

(assert (= (and b!86366 res!45006) b!86369))

(assert (= (and b!86368 res!45007) b!86370))

(assert (= (and b!86370 res!45009) b!86367))

(assert (= (and b!86367 res!45008) b!86371))

(assert (= (and b!86372 c!21393) b!86366))

(assert (= (and b!86372 (not c!21393)) b!86368))

(declare-fun m!82160 () Bool)

(assert (=> b!86371 m!82160))

(declare-fun m!82162 () Bool)

(assert (=> b!86370 m!82162))

(declare-fun m!82164 () Bool)

(assert (=> b!86366 m!82164))

(assert (=> b!86367 m!82164))

(assert (=> b!86369 m!82160))

(declare-fun m!82166 () Bool)

(assert (=> b!86368 m!82166))

(assert (=> start!11300 d!57685))

(declare-fun d!57687 () Bool)

(declare-fun res!45011 () Bool)

(declare-fun e!46860 () Bool)

(assert (=> d!57687 (=> res!45011 e!46860)))

(assert (=> d!57687 (= res!45011 (not (is-Node!149 t!48253)))))

(assert (=> d!57687 (= (blackBalanced!0 t!48253) e!46860)))

(declare-fun b!86373 () Bool)

(declare-fun e!46861 () Bool)

(assert (=> b!86373 (= e!46860 e!46861)))

(declare-fun res!45013 () Bool)

(assert (=> b!86373 (=> (not res!45013) (not e!46861))))

(assert (=> b!86373 (= res!45013 (blackBalanced!0 (left!1648 t!48253)))))

(declare-fun b!86374 () Bool)

(declare-fun res!45012 () Bool)

(assert (=> b!86374 (=> (not res!45012) (not e!46861))))

(assert (=> b!86374 (= res!45012 (blackBalanced!0 (right!1651 t!48253)))))

(declare-fun b!86375 () Bool)

(assert (=> b!86375 (= e!46861 (= (blackHeight!0 (left!1648 t!48253)) (blackHeight!0 (right!1651 t!48253))))))

(assert (= (and d!57687 (not res!45011)) b!86373))

(assert (= (and b!86373 res!45013) b!86374))

(assert (= (and b!86374 res!45012) b!86375))

(declare-fun m!82168 () Bool)

(assert (=> b!86373 m!82168))

(declare-fun m!82170 () Bool)

(assert (=> b!86374 m!82170))

(declare-fun m!82172 () Bool)

(assert (=> b!86375 m!82172))

(declare-fun m!82174 () Bool)

(assert (=> b!86375 m!82174))

(assert (=> b!86322 d!57687))

(declare-fun d!57689 () Bool)

(declare-fun c!21396 () Bool)

(assert (=> d!57689 (= c!21396 (is-Empty!188 res!44629))))

(declare-fun e!46864 () (Set Int))

(assert (=> d!57689 (= (content!8 res!44629) e!46864)))

(declare-fun b!86380 () Bool)

(assert (=> b!86380 (= e!46864 (as emptyset (Set Int)))))

(declare-fun b!86381 () Bool)

(assert (=> b!86381 (= e!46864 (union (union (content!8 (left!1648 res!44629)) (insert (value!6795 res!44629) (as emptyset (Set Int)))) (content!8 (right!1651 res!44629))))))

(assert (= (and d!57689 c!21396) b!86380))

(assert (= (and d!57689 (not c!21396)) b!86381))

(declare-fun m!82176 () Bool)

(assert (=> b!86381 m!82176))

(declare-fun m!82178 () Bool)

(assert (=> b!86381 m!82178))

(declare-fun m!82180 () Bool)

(assert (=> b!86381 m!82180))

(assert (=> b!86323 d!57689))

(declare-fun d!57691 () Bool)

(declare-fun c!21397 () Bool)

(assert (=> d!57691 (= c!21397 (is-Empty!188 t!48253))))

(declare-fun e!46865 () (Set Int))

(assert (=> d!57691 (= (content!8 t!48253) e!46865)))

(declare-fun b!86382 () Bool)

(assert (=> b!86382 (= e!46865 (as emptyset (Set Int)))))

(declare-fun b!86383 () Bool)

(assert (=> b!86383 (= e!46865 (union (union (content!8 (left!1648 t!48253)) (insert (value!6795 t!48253) (as emptyset (Set Int)))) (content!8 (right!1651 t!48253))))))

(assert (= (and d!57691 c!21397) b!86382))

(assert (= (and d!57691 (not c!21397)) b!86383))

(declare-fun m!82182 () Bool)

(assert (=> b!86383 m!82182))

(declare-fun m!82184 () Bool)

(assert (=> b!86383 m!82184))

(declare-fun m!82186 () Bool)

(assert (=> b!86383 m!82186))

(assert (=> b!86323 d!57691))

(push 1)

(assert (not b!86351))

(assert (not b!86375))

(assert (not b!86366))

(assert (not b!86343))

(assert (not b!86374))

(assert (not b!86370))

(assert (not b!86368))

(assert (not b!86337))

(assert (not b!86383))

(assert (not b!86335))

(assert (not b!86336))

(assert (not b!86342))

(assert (not b!86373))

(assert (not b!86349))

(assert (not b!86371))

(assert (not b!86381))

(assert (not b!86369))

(assert (not b!86367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

