; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11288 () Bool)

(assert start!11288)

(declare-fun b!86212 () Bool)

(declare-fun res!44882 () Bool)

(declare-fun e!46770 () Bool)

(assert (=> b!86212 (=> (not res!44882) (not e!46770))))

(declare-datatypes () ((Color!6 (Red!5) (Black!5))))

(declare-datatypes () ((Tree!103 (Empty!186) (Node!147 (color!36 Color!6) (left!1646 Tree!103) (value!6793 Int) (right!1649 Tree!103)))))

(declare-fun t!48253 () Tree!103)

(declare-fun blackBalanced!0 (Tree!103) Bool)

(assert (=> b!86212 (= res!44882 (blackBalanced!0 t!48253))))

(declare-fun res!44881 () Bool)

(assert (=> start!11288 (=> (not res!44881) (not e!46770))))

(declare-fun redNodesHaveBlackChildren!0 (Tree!103) Bool)

(assert (=> start!11288 (= res!44881 (redNodesHaveBlackChildren!0 t!48253))))

(assert (=> start!11288 e!46770))

(assert (=> start!11288 true))

(declare-fun b!86213 () Bool)

(declare-fun res!44883 () Bool)

(assert (=> b!86213 (=> (not res!44883) (not e!46770))))

(declare-fun x!30388 () Int)

(declare-fun t!48274 () Tree!103)

(declare-fun c!21316 () Color!6)

(declare-fun x!30390 () Int)

(assert (=> b!86213 (= res!44883 (and (not (is-Empty!186 t!48253)) (< x!30388 (value!6793 t!48253)) (= c!21316 (color!36 t!48253)) (= x!30390 x!30388) (= t!48274 (left!1646 t!48253))))))

(declare-fun b!86214 () Bool)

(declare-fun e!46771 () Bool)

(assert (=> b!86214 (= e!46770 e!46771)))

(declare-fun res!44880 () Bool)

(assert (=> b!86214 (=> res!44880 e!46771)))

(assert (=> b!86214 (= res!44880 (not (redNodesHaveBlackChildren!0 t!48274)))))

(declare-fun b!86215 () Bool)

(assert (=> b!86215 (= e!46771 (not (blackBalanced!0 t!48274)))))

(assert (= (and start!11288 res!44881) b!86212))

(assert (= (and b!86212 res!44882) b!86213))

(assert (= (and b!86213 res!44883) b!86214))

(assert (= (and b!86214 (not res!44880)) b!86215))

(declare-fun m!82042 () Bool)

(assert (=> b!86212 m!82042))

(declare-fun m!82044 () Bool)

(assert (=> start!11288 m!82044))

(declare-fun m!82046 () Bool)

(assert (=> b!86214 m!82046))

(declare-fun m!82048 () Bool)

(assert (=> b!86215 m!82048))

(push 1)

(assert (not b!86214))

(assert (not b!86215))

(assert (not start!11288))

(assert (not b!86212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!86230 () Bool)

(declare-fun e!46782 () Bool)

(declare-fun e!46781 () Bool)

(assert (=> b!86230 (= e!46782 e!46781)))

(declare-fun res!44896 () Bool)

(assert (=> b!86230 (=> (not res!44896) (not e!46781))))

(declare-fun isBlack!0 (Tree!103) Bool)

(assert (=> b!86230 (= res!44896 (isBlack!0 (left!1646 t!48274)))))

(declare-fun b!86231 () Bool)

(declare-fun res!44894 () Bool)

(assert (=> b!86231 (=> (not res!44894) (not e!46781))))

(assert (=> b!86231 (= res!44894 (isBlack!0 (right!1649 t!48274)))))

(declare-fun b!86232 () Bool)

(declare-fun e!46783 () Bool)

(assert (=> b!86232 (= e!46782 e!46783)))

(declare-fun res!44898 () Bool)

(assert (=> b!86232 (=> (not res!44898) (not e!46783))))

(assert (=> b!86232 (= res!44898 (redNodesHaveBlackChildren!0 (left!1646 t!48274)))))

(declare-fun b!86233 () Bool)

(assert (=> b!86233 (= e!46781 (redNodesHaveBlackChildren!0 (right!1649 t!48274)))))

(declare-fun b!86234 () Bool)

(declare-fun e!46780 () Bool)

(assert (=> b!86234 (= e!46780 e!46782)))

(declare-fun c!21381 () Bool)

(assert (=> b!86234 (= c!21381 (and (is-Node!147 t!48274) (is-Black!5 (color!36 t!48274))))))

(declare-fun b!86235 () Bool)

(declare-fun res!44897 () Bool)

(assert (=> b!86235 (=> (not res!44897) (not e!46781))))

(assert (=> b!86235 (= res!44897 (redNodesHaveBlackChildren!0 (left!1646 t!48274)))))

(declare-fun d!57661 () Bool)

(declare-fun res!44895 () Bool)

(assert (=> d!57661 (=> res!44895 e!46780)))

(assert (=> d!57661 (= res!44895 (is-Empty!186 t!48274))))

(assert (=> d!57661 (= (redNodesHaveBlackChildren!0 t!48274) e!46780)))

(declare-fun b!86236 () Bool)

(assert (=> b!86236 (= e!46783 (redNodesHaveBlackChildren!0 (right!1649 t!48274)))))

(assert (= (and d!57661 (not res!44895)) b!86234))

(assert (= (and b!86232 res!44898) b!86236))

(assert (= (and b!86230 res!44896) b!86231))

(assert (= (and b!86231 res!44894) b!86235))

(assert (= (and b!86235 res!44897) b!86233))

(assert (= (and b!86234 c!21381) b!86232))

(assert (= (and b!86234 (not c!21381)) b!86230))

(declare-fun m!82050 () Bool)

(assert (=> b!86233 m!82050))

(declare-fun m!82052 () Bool)

(assert (=> b!86230 m!82052))

(assert (=> b!86236 m!82050))

(declare-fun m!82054 () Bool)

(assert (=> b!86232 m!82054))

(assert (=> b!86235 m!82054))

(declare-fun m!82056 () Bool)

(assert (=> b!86231 m!82056))

(assert (=> b!86214 d!57661))

(declare-fun d!57663 () Bool)

(declare-fun res!44905 () Bool)

(declare-fun e!46789 () Bool)

(assert (=> d!57663 (=> res!44905 e!46789)))

(assert (=> d!57663 (= res!44905 (not (is-Node!147 t!48274)))))

(assert (=> d!57663 (= (blackBalanced!0 t!48274) e!46789)))

(declare-fun b!86243 () Bool)

(declare-fun e!46788 () Bool)

(assert (=> b!86243 (= e!46789 e!46788)))

(declare-fun res!44906 () Bool)

(assert (=> b!86243 (=> (not res!44906) (not e!46788))))

(assert (=> b!86243 (= res!44906 (blackBalanced!0 (left!1646 t!48274)))))

(declare-fun b!86244 () Bool)

(declare-fun res!44907 () Bool)

(assert (=> b!86244 (=> (not res!44907) (not e!46788))))

(assert (=> b!86244 (= res!44907 (blackBalanced!0 (right!1649 t!48274)))))

(declare-fun b!86245 () Bool)

(declare-fun blackHeight!0 (Tree!103) Int)

(assert (=> b!86245 (= e!46788 (= (blackHeight!0 (left!1646 t!48274)) (blackHeight!0 (right!1649 t!48274))))))

(assert (= (and d!57663 (not res!44905)) b!86243))

(assert (= (and b!86243 res!44906) b!86244))

(assert (= (and b!86244 res!44907) b!86245))

(declare-fun m!82058 () Bool)

(assert (=> b!86243 m!82058))

(declare-fun m!82060 () Bool)

(assert (=> b!86244 m!82060))

(declare-fun m!82062 () Bool)

(assert (=> b!86245 m!82062))

(declare-fun m!82064 () Bool)

(assert (=> b!86245 m!82064))

(assert (=> b!86215 d!57663))

(declare-fun b!86246 () Bool)

(declare-fun e!46792 () Bool)

(declare-fun e!46791 () Bool)

(assert (=> b!86246 (= e!46792 e!46791)))

(declare-fun res!44910 () Bool)

(assert (=> b!86246 (=> (not res!44910) (not e!46791))))

(assert (=> b!86246 (= res!44910 (isBlack!0 (left!1646 t!48253)))))

(declare-fun b!86247 () Bool)

(declare-fun res!44908 () Bool)

(assert (=> b!86247 (=> (not res!44908) (not e!46791))))

(assert (=> b!86247 (= res!44908 (isBlack!0 (right!1649 t!48253)))))

(declare-fun b!86248 () Bool)

(declare-fun e!46793 () Bool)

(assert (=> b!86248 (= e!46792 e!46793)))

(declare-fun res!44912 () Bool)

(assert (=> b!86248 (=> (not res!44912) (not e!46793))))

(assert (=> b!86248 (= res!44912 (redNodesHaveBlackChildren!0 (left!1646 t!48253)))))

(declare-fun b!86249 () Bool)

(assert (=> b!86249 (= e!46791 (redNodesHaveBlackChildren!0 (right!1649 t!48253)))))

(declare-fun b!86250 () Bool)

(declare-fun e!46790 () Bool)

(assert (=> b!86250 (= e!46790 e!46792)))

(declare-fun c!21382 () Bool)

(assert (=> b!86250 (= c!21382 (and (is-Node!147 t!48253) (is-Black!5 (color!36 t!48253))))))

(declare-fun b!86251 () Bool)

(declare-fun res!44911 () Bool)

(assert (=> b!86251 (=> (not res!44911) (not e!46791))))

(assert (=> b!86251 (= res!44911 (redNodesHaveBlackChildren!0 (left!1646 t!48253)))))

(declare-fun d!57665 () Bool)

(declare-fun res!44909 () Bool)

(assert (=> d!57665 (=> res!44909 e!46790)))

(assert (=> d!57665 (= res!44909 (is-Empty!186 t!48253))))

(assert (=> d!57665 (= (redNodesHaveBlackChildren!0 t!48253) e!46790)))

(declare-fun b!86252 () Bool)

(assert (=> b!86252 (= e!46793 (redNodesHaveBlackChildren!0 (right!1649 t!48253)))))

(assert (= (and d!57665 (not res!44909)) b!86250))

(assert (= (and b!86248 res!44912) b!86252))

(assert (= (and b!86246 res!44910) b!86247))

(assert (= (and b!86247 res!44908) b!86251))

(assert (= (and b!86251 res!44911) b!86249))

(assert (= (and b!86250 c!21382) b!86248))

(assert (= (and b!86250 (not c!21382)) b!86246))

(declare-fun m!82066 () Bool)

(assert (=> b!86249 m!82066))

(declare-fun m!82068 () Bool)

(assert (=> b!86246 m!82068))

(assert (=> b!86252 m!82066))

(declare-fun m!82070 () Bool)

(assert (=> b!86248 m!82070))

(assert (=> b!86251 m!82070))

(declare-fun m!82072 () Bool)

(assert (=> b!86247 m!82072))

(assert (=> start!11288 d!57665))

(declare-fun d!57667 () Bool)

(declare-fun res!44913 () Bool)

(declare-fun e!46795 () Bool)

(assert (=> d!57667 (=> res!44913 e!46795)))

(assert (=> d!57667 (= res!44913 (not (is-Node!147 t!48253)))))

(assert (=> d!57667 (= (blackBalanced!0 t!48253) e!46795)))

(declare-fun b!86253 () Bool)

(declare-fun e!46794 () Bool)

(assert (=> b!86253 (= e!46795 e!46794)))

(declare-fun res!44914 () Bool)

(assert (=> b!86253 (=> (not res!44914) (not e!46794))))

(assert (=> b!86253 (= res!44914 (blackBalanced!0 (left!1646 t!48253)))))

(declare-fun b!86254 () Bool)

(declare-fun res!44915 () Bool)

(assert (=> b!86254 (=> (not res!44915) (not e!46794))))

(assert (=> b!86254 (= res!44915 (blackBalanced!0 (right!1649 t!48253)))))

(declare-fun b!86255 () Bool)

(assert (=> b!86255 (= e!46794 (= (blackHeight!0 (left!1646 t!48253)) (blackHeight!0 (right!1649 t!48253))))))

(assert (= (and d!57667 (not res!44913)) b!86253))

(assert (= (and b!86253 res!44914) b!86254))

(assert (= (and b!86254 res!44915) b!86255))

(declare-fun m!82074 () Bool)

(assert (=> b!86253 m!82074))

(declare-fun m!82076 () Bool)

(assert (=> b!86254 m!82076))

(declare-fun m!82078 () Bool)

(assert (=> b!86255 m!82078))

(declare-fun m!82080 () Bool)

(assert (=> b!86255 m!82080))

(assert (=> b!86212 d!57667))

(push 1)

(assert (not b!86245))

(assert (not b!86235))

(assert (not b!86243))

(assert (not b!86232))

(assert (not b!86255))

(assert (not b!86247))

(assert (not b!86244))

(assert (not b!86248))

(assert (not b!86251))

(assert (not b!86231))

(assert (not b!86233))

(assert (not b!86249))

(assert (not b!86253))

(assert (not b!86246))

(assert (not b!86252))

(assert (not b!86254))

(assert (not b!86236))

(assert (not b!86230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

