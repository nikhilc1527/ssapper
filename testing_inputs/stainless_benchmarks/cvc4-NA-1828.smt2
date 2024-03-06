; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12394 () Bool)

(assert start!12394)

(declare-fun res!48229 () Bool)

(declare-fun e!50256 () Bool)

(assert (=> start!12394 (=> (not res!48229) (not e!50256))))

(declare-datatypes () ((Tree!138 (Leaf!662) (TreeExt!3 (__x!314 Int)) (Node!179 (value!8759 (_ BitVec 32)) (left!1862 Tree!138) (right!1868 Tree!138)))))

(declare-fun tree!174 () Tree!138)

(declare-fun isBraun!0 (Tree!138) Bool)

(assert (=> start!12394 (= res!48229 (isBraun!0 tree!174))))

(assert (=> start!12394 e!50256))

(assert (=> start!12394 true))

(declare-fun b!91779 () Bool)

(declare-fun res!48230 () Bool)

(assert (=> b!91779 (=> (not res!48230) (not e!50256))))

(declare-fun res!48061 () Tree!138)

(declare-fun x!33376 () (_ BitVec 32))

(assert (=> b!91779 (= res!48230 (and (not (is-Node!179 tree!174)) (= res!48061 (Node!179 x!33376 Leaf!662 Leaf!662))))))

(declare-fun b!91780 () Bool)

(assert (=> b!91780 (= e!50256 (not (isBraun!0 res!48061)))))

(assert (=> b!91780 (is-Node!179 res!48061)))

(assert (= (and start!12394 res!48229) b!91779))

(assert (= (and b!91779 res!48230) b!91780))

(declare-fun m!87636 () Bool)

(assert (=> start!12394 m!87636))

(declare-fun m!87638 () Bool)

(assert (=> b!91780 m!87638))

(push 1)

(assert (not start!12394))

(assert (not b!91780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60314 () Bool)

(declare-fun res!48239 () Bool)

(declare-fun e!50262 () Bool)

(assert (=> d!60314 (=> res!48239 e!50262)))

(assert (=> d!60314 (= res!48239 (not (is-Node!179 tree!174)))))

(assert (=> d!60314 (= (isBraun!0 tree!174) e!50262)))

(declare-fun b!91787 () Bool)

(declare-fun e!50261 () Bool)

(assert (=> b!91787 (= e!50262 e!50261)))

(declare-fun res!48237 () Bool)

(assert (=> b!91787 (=> (not res!48237) (not e!50261))))

(assert (=> b!91787 (= res!48237 (isBraun!0 (left!1862 tree!174)))))

(declare-fun b!91788 () Bool)

(declare-fun res!48238 () Bool)

(assert (=> b!91788 (=> (not res!48238) (not e!50261))))

(assert (=> b!91788 (= res!48238 (isBraun!0 (right!1868 tree!174)))))

(declare-fun b!91789 () Bool)

(declare-fun lt!20729 () (_ BitVec 32))

(declare-fun lt!20730 () (_ BitVec 32))

(assert (=> b!91789 (= e!50261 (or (= lt!20729 lt!20730) (= lt!20729 (bvadd lt!20730 #b00000000000000000000000000000001))))))

(declare-fun height!0 (Tree!138) (_ BitVec 32))

(assert (=> b!91789 (= lt!20730 (height!0 (right!1868 tree!174)))))

(assert (=> b!91789 (= lt!20729 (height!0 (left!1862 tree!174)))))

(assert (= (and d!60314 (not res!48239)) b!91787))

(assert (= (and b!91787 res!48237) b!91788))

(assert (= (and b!91788 res!48238) b!91789))

(declare-fun m!87640 () Bool)

(assert (=> b!91787 m!87640))

(declare-fun m!87642 () Bool)

(assert (=> b!91788 m!87642))

(declare-fun m!87644 () Bool)

(assert (=> b!91789 m!87644))

(declare-fun m!87646 () Bool)

(assert (=> b!91789 m!87646))

(assert (=> start!12394 d!60314))

(declare-fun d!60316 () Bool)

(declare-fun res!48242 () Bool)

(declare-fun e!50264 () Bool)

(assert (=> d!60316 (=> res!48242 e!50264)))

(assert (=> d!60316 (= res!48242 (not (is-Node!179 res!48061)))))

(assert (=> d!60316 (= (isBraun!0 res!48061) e!50264)))

(declare-fun b!91790 () Bool)

(declare-fun e!50263 () Bool)

(assert (=> b!91790 (= e!50264 e!50263)))

(declare-fun res!48240 () Bool)

(assert (=> b!91790 (=> (not res!48240) (not e!50263))))

(assert (=> b!91790 (= res!48240 (isBraun!0 (left!1862 res!48061)))))

(declare-fun b!91791 () Bool)

(declare-fun res!48241 () Bool)

(assert (=> b!91791 (=> (not res!48241) (not e!50263))))

(assert (=> b!91791 (= res!48241 (isBraun!0 (right!1868 res!48061)))))

(declare-fun b!91792 () Bool)

(declare-fun lt!20731 () (_ BitVec 32))

(declare-fun lt!20732 () (_ BitVec 32))

(assert (=> b!91792 (= e!50263 (or (= lt!20731 lt!20732) (= lt!20731 (bvadd lt!20732 #b00000000000000000000000000000001))))))

(assert (=> b!91792 (= lt!20732 (height!0 (right!1868 res!48061)))))

(assert (=> b!91792 (= lt!20731 (height!0 (left!1862 res!48061)))))

(assert (= (and d!60316 (not res!48242)) b!91790))

(assert (= (and b!91790 res!48240) b!91791))

(assert (= (and b!91791 res!48241) b!91792))

(declare-fun m!87648 () Bool)

(assert (=> b!91790 m!87648))

(declare-fun m!87650 () Bool)

(assert (=> b!91791 m!87650))

(declare-fun m!87652 () Bool)

(assert (=> b!91792 m!87652))

(declare-fun m!87654 () Bool)

(assert (=> b!91792 m!87654))

(assert (=> b!91780 d!60316))

(push 1)

(assert (not b!91788))

(assert (not b!91790))

(assert (not b!91789))

(assert (not b!91792))

(assert (not b!91787))

(assert (not b!91791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60318 () Bool)

(declare-fun res!48245 () Bool)

(declare-fun e!50266 () Bool)

(assert (=> d!60318 (=> res!48245 e!50266)))

(assert (=> d!60318 (= res!48245 (not (is-Node!179 (right!1868 res!48061))))))

(assert (=> d!60318 (= (isBraun!0 (right!1868 res!48061)) e!50266)))

(declare-fun b!91793 () Bool)

(declare-fun e!50265 () Bool)

(assert (=> b!91793 (= e!50266 e!50265)))

(declare-fun res!48243 () Bool)

(assert (=> b!91793 (=> (not res!48243) (not e!50265))))

(assert (=> b!91793 (= res!48243 (isBraun!0 (left!1862 (right!1868 res!48061))))))

(declare-fun b!91794 () Bool)

(declare-fun res!48244 () Bool)

(assert (=> b!91794 (=> (not res!48244) (not e!50265))))

(assert (=> b!91794 (= res!48244 (isBraun!0 (right!1868 (right!1868 res!48061))))))

(declare-fun b!91795 () Bool)

(declare-fun lt!20733 () (_ BitVec 32))

(declare-fun lt!20734 () (_ BitVec 32))

(assert (=> b!91795 (= e!50265 (or (= lt!20733 lt!20734) (= lt!20733 (bvadd lt!20734 #b00000000000000000000000000000001))))))

(assert (=> b!91795 (= lt!20734 (height!0 (right!1868 (right!1868 res!48061))))))

(assert (=> b!91795 (= lt!20733 (height!0 (left!1862 (right!1868 res!48061))))))

(assert (= (and d!60318 (not res!48245)) b!91793))

(assert (= (and b!91793 res!48243) b!91794))

(assert (= (and b!91794 res!48244) b!91795))

(declare-fun m!87656 () Bool)

(assert (=> b!91793 m!87656))

(declare-fun m!87658 () Bool)

(assert (=> b!91794 m!87658))

(declare-fun m!87660 () Bool)

(assert (=> b!91795 m!87660))

(declare-fun m!87662 () Bool)

(assert (=> b!91795 m!87662))

(assert (=> b!91791 d!60318))

(declare-fun b!91800 () Bool)

(declare-fun e!50269 () (_ BitVec 32))

(declare-fun lt!20739 () (_ BitVec 32))

(declare-fun lt!20740 () (_ BitVec 32))

(assert (=> b!91800 (= e!50269 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20739 lt!20740) lt!20739 lt!20740)))))

(assert (=> b!91800 (= lt!20740 (height!0 (right!1868 (right!1868 res!48061))))))

(assert (=> b!91800 (= lt!20739 (height!0 (left!1862 (right!1868 res!48061))))))

(declare-fun d!60320 () Bool)

(declare-fun c!22349 () Bool)

(assert (=> d!60320 (= c!22349 (is-Node!179 (right!1868 res!48061)))))

(assert (=> d!60320 (= (height!0 (right!1868 res!48061)) e!50269)))

(declare-fun b!91801 () Bool)

(assert (=> b!91801 (= e!50269 #b00000000000000000000000000000000)))

(assert (= (and d!60320 c!22349) b!91800))

(assert (= (and d!60320 (not c!22349)) b!91801))

(assert (=> b!91800 m!87660))

(assert (=> b!91800 m!87662))

(assert (=> b!91792 d!60320))

(declare-fun b!91802 () Bool)

(declare-fun e!50270 () (_ BitVec 32))

(declare-fun lt!20741 () (_ BitVec 32))

(declare-fun lt!20742 () (_ BitVec 32))

(assert (=> b!91802 (= e!50270 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20741 lt!20742) lt!20741 lt!20742)))))

(assert (=> b!91802 (= lt!20742 (height!0 (right!1868 (left!1862 res!48061))))))

(assert (=> b!91802 (= lt!20741 (height!0 (left!1862 (left!1862 res!48061))))))

(declare-fun d!60322 () Bool)

(declare-fun c!22350 () Bool)

(assert (=> d!60322 (= c!22350 (is-Node!179 (left!1862 res!48061)))))

(assert (=> d!60322 (= (height!0 (left!1862 res!48061)) e!50270)))

(declare-fun b!91803 () Bool)

(assert (=> b!91803 (= e!50270 #b00000000000000000000000000000000)))

(assert (= (and d!60322 c!22350) b!91802))

(assert (= (and d!60322 (not c!22350)) b!91803))

(declare-fun m!87664 () Bool)

(assert (=> b!91802 m!87664))

(declare-fun m!87666 () Bool)

(assert (=> b!91802 m!87666))

(assert (=> b!91792 d!60322))

(declare-fun d!60324 () Bool)

(declare-fun res!48248 () Bool)

(declare-fun e!50272 () Bool)

(assert (=> d!60324 (=> res!48248 e!50272)))

(assert (=> d!60324 (= res!48248 (not (is-Node!179 (left!1862 tree!174))))))

(assert (=> d!60324 (= (isBraun!0 (left!1862 tree!174)) e!50272)))

(declare-fun b!91804 () Bool)

(declare-fun e!50271 () Bool)

(assert (=> b!91804 (= e!50272 e!50271)))

(declare-fun res!48246 () Bool)

(assert (=> b!91804 (=> (not res!48246) (not e!50271))))

(assert (=> b!91804 (= res!48246 (isBraun!0 (left!1862 (left!1862 tree!174))))))

(declare-fun b!91805 () Bool)

(declare-fun res!48247 () Bool)

(assert (=> b!91805 (=> (not res!48247) (not e!50271))))

(assert (=> b!91805 (= res!48247 (isBraun!0 (right!1868 (left!1862 tree!174))))))

(declare-fun b!91806 () Bool)

(declare-fun lt!20743 () (_ BitVec 32))

(declare-fun lt!20744 () (_ BitVec 32))

(assert (=> b!91806 (= e!50271 (or (= lt!20743 lt!20744) (= lt!20743 (bvadd lt!20744 #b00000000000000000000000000000001))))))

(assert (=> b!91806 (= lt!20744 (height!0 (right!1868 (left!1862 tree!174))))))

(assert (=> b!91806 (= lt!20743 (height!0 (left!1862 (left!1862 tree!174))))))

(assert (= (and d!60324 (not res!48248)) b!91804))

(assert (= (and b!91804 res!48246) b!91805))

(assert (= (and b!91805 res!48247) b!91806))

(declare-fun m!87668 () Bool)

(assert (=> b!91804 m!87668))

(declare-fun m!87670 () Bool)

(assert (=> b!91805 m!87670))

(declare-fun m!87672 () Bool)

(assert (=> b!91806 m!87672))

(declare-fun m!87674 () Bool)

(assert (=> b!91806 m!87674))

(assert (=> b!91787 d!60324))

(declare-fun b!91807 () Bool)

(declare-fun e!50273 () (_ BitVec 32))

(declare-fun lt!20745 () (_ BitVec 32))

(declare-fun lt!20746 () (_ BitVec 32))

(assert (=> b!91807 (= e!50273 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20745 lt!20746) lt!20745 lt!20746)))))

(assert (=> b!91807 (= lt!20746 (height!0 (right!1868 (right!1868 tree!174))))))

(assert (=> b!91807 (= lt!20745 (height!0 (left!1862 (right!1868 tree!174))))))

(declare-fun d!60326 () Bool)

(declare-fun c!22351 () Bool)

(assert (=> d!60326 (= c!22351 (is-Node!179 (right!1868 tree!174)))))

(assert (=> d!60326 (= (height!0 (right!1868 tree!174)) e!50273)))

(declare-fun b!91808 () Bool)

(assert (=> b!91808 (= e!50273 #b00000000000000000000000000000000)))

(assert (= (and d!60326 c!22351) b!91807))

(assert (= (and d!60326 (not c!22351)) b!91808))

(declare-fun m!87676 () Bool)

(assert (=> b!91807 m!87676))

(declare-fun m!87678 () Bool)

(assert (=> b!91807 m!87678))

(assert (=> b!91789 d!60326))

(declare-fun b!91809 () Bool)

(declare-fun e!50274 () (_ BitVec 32))

(declare-fun lt!20747 () (_ BitVec 32))

(declare-fun lt!20748 () (_ BitVec 32))

(assert (=> b!91809 (= e!50274 (bvadd #b00000000000000000000000000000001 (ite (bvsgt lt!20747 lt!20748) lt!20747 lt!20748)))))

(assert (=> b!91809 (= lt!20748 (height!0 (right!1868 (left!1862 tree!174))))))

(assert (=> b!91809 (= lt!20747 (height!0 (left!1862 (left!1862 tree!174))))))

(declare-fun d!60328 () Bool)

(declare-fun c!22352 () Bool)

(assert (=> d!60328 (= c!22352 (is-Node!179 (left!1862 tree!174)))))

(assert (=> d!60328 (= (height!0 (left!1862 tree!174)) e!50274)))

(declare-fun b!91810 () Bool)

(assert (=> b!91810 (= e!50274 #b00000000000000000000000000000000)))

(assert (= (and d!60328 c!22352) b!91809))

(assert (= (and d!60328 (not c!22352)) b!91810))

(assert (=> b!91809 m!87672))

(assert (=> b!91809 m!87674))

(assert (=> b!91789 d!60328))

(declare-fun d!60330 () Bool)

(declare-fun res!48251 () Bool)

(declare-fun e!50276 () Bool)

(assert (=> d!60330 (=> res!48251 e!50276)))

(assert (=> d!60330 (= res!48251 (not (is-Node!179 (right!1868 tree!174))))))

(assert (=> d!60330 (= (isBraun!0 (right!1868 tree!174)) e!50276)))

(declare-fun b!91811 () Bool)

(declare-fun e!50275 () Bool)

(assert (=> b!91811 (= e!50276 e!50275)))

(declare-fun res!48249 () Bool)

(assert (=> b!91811 (=> (not res!48249) (not e!50275))))

(assert (=> b!91811 (= res!48249 (isBraun!0 (left!1862 (right!1868 tree!174))))))

(declare-fun b!91812 () Bool)

(declare-fun res!48250 () Bool)

(assert (=> b!91812 (=> (not res!48250) (not e!50275))))

(assert (=> b!91812 (= res!48250 (isBraun!0 (right!1868 (right!1868 tree!174))))))

(declare-fun b!91813 () Bool)

(declare-fun lt!20749 () (_ BitVec 32))

(declare-fun lt!20750 () (_ BitVec 32))

(assert (=> b!91813 (= e!50275 (or (= lt!20749 lt!20750) (= lt!20749 (bvadd lt!20750 #b00000000000000000000000000000001))))))

(assert (=> b!91813 (= lt!20750 (height!0 (right!1868 (right!1868 tree!174))))))

(assert (=> b!91813 (= lt!20749 (height!0 (left!1862 (right!1868 tree!174))))))

(assert (= (and d!60330 (not res!48251)) b!91811))

(assert (= (and b!91811 res!48249) b!91812))

(assert (= (and b!91812 res!48250) b!91813))

(declare-fun m!87680 () Bool)

(assert (=> b!91811 m!87680))

(declare-fun m!87682 () Bool)

(assert (=> b!91812 m!87682))

(assert (=> b!91813 m!87676))

(assert (=> b!91813 m!87678))

(assert (=> b!91788 d!60330))

(declare-fun d!60332 () Bool)

(declare-fun res!48254 () Bool)

(declare-fun e!50278 () Bool)

(assert (=> d!60332 (=> res!48254 e!50278)))

(assert (=> d!60332 (= res!48254 (not (is-Node!179 (left!1862 res!48061))))))

(assert (=> d!60332 (= (isBraun!0 (left!1862 res!48061)) e!50278)))

(declare-fun b!91814 () Bool)

(declare-fun e!50277 () Bool)

(assert (=> b!91814 (= e!50278 e!50277)))

(declare-fun res!48252 () Bool)

(assert (=> b!91814 (=> (not res!48252) (not e!50277))))

(assert (=> b!91814 (= res!48252 (isBraun!0 (left!1862 (left!1862 res!48061))))))

(declare-fun b!91815 () Bool)

(declare-fun res!48253 () Bool)

(assert (=> b!91815 (=> (not res!48253) (not e!50277))))

(assert (=> b!91815 (= res!48253 (isBraun!0 (right!1868 (left!1862 res!48061))))))

(declare-fun b!91816 () Bool)

(declare-fun lt!20751 () (_ BitVec 32))

(declare-fun lt!20752 () (_ BitVec 32))

(assert (=> b!91816 (= e!50277 (or (= lt!20751 lt!20752) (= lt!20751 (bvadd lt!20752 #b00000000000000000000000000000001))))))

(assert (=> b!91816 (= lt!20752 (height!0 (right!1868 (left!1862 res!48061))))))

(assert (=> b!91816 (= lt!20751 (height!0 (left!1862 (left!1862 res!48061))))))

(assert (= (and d!60332 (not res!48254)) b!91814))

(assert (= (and b!91814 res!48252) b!91815))

(assert (= (and b!91815 res!48253) b!91816))

(declare-fun m!87684 () Bool)

(assert (=> b!91814 m!87684))

(declare-fun m!87686 () Bool)

(assert (=> b!91815 m!87686))

(assert (=> b!91816 m!87664))

(assert (=> b!91816 m!87666))

(assert (=> b!91790 d!60332))

(push 1)

(assert (not b!91811))

(assert (not b!91806))

(assert (not b!91802))

(assert (not b!91814))

(assert (not b!91793))

(assert (not b!91815))

(assert (not b!91807))

(assert (not b!91804))

(assert (not b!91812))

(assert (not b!91809))

(assert (not b!91805))

(assert (not b!91795))

(assert (not b!91800))

(assert (not b!91816))

(assert (not b!91794))

(assert (not b!91813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

