; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12382 () Bool)

(assert start!12382)

(declare-fun res!48066 () Bool)

(declare-fun e!50106 () Bool)

(assert (=> start!12382 (=> (not res!48066) (not e!50106))))

(declare-datatypes () ((Tree!136 (Leaf!660) (TreeExt!1 (__x!312 Int)) (Node!177 (value!8757 (_ BitVec 32)) (left!1860 Tree!136) (right!1866 Tree!136)))))

(declare-fun tree!174 () Tree!136)

(declare-fun isBraun!0 (Tree!136) Bool)

(assert (=> start!12382 (= res!48066 (isBraun!0 tree!174))))

(assert (=> start!12382 e!50106))

(assert (=> start!12382 true))

(declare-fun b!91529 () Bool)

(declare-fun res!48067 () Bool)

(assert (=> b!91529 (=> (not res!48067) (not e!50106))))

(declare-fun tree!177 () Tree!136)

(declare-fun value!8744 () (_ BitVec 32))

(declare-fun x!33376 () (_ BitVec 32))

(declare-fun x!33377 () (_ BitVec 32))

(assert (=> b!91529 (= res!48067 (and (is-Node!177 tree!174) (= value!8744 (value!8757 tree!174)) (= tree!177 (left!1860 tree!174)) (= x!33377 x!33376)))))

(declare-fun b!91530 () Bool)

(assert (=> b!91530 (= e!50106 (not (isBraun!0 tree!177)))))

(assert (= (and start!12382 res!48066) b!91529))

(assert (= (and b!91529 res!48067) b!91530))

(declare-fun m!87266 () Bool)

(assert (=> start!12382 m!87266))

(declare-fun m!87268 () Bool)

(assert (=> b!91530 m!87268))

(push 1)

(assert (not b!91530))

(assert (not start!12382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60148 () Bool)

(declare-fun res!48074 () Bool)

(declare-fun e!50111 () Bool)

(assert (=> d!60148 (=> res!48074 e!50111)))

(assert (=> d!60148 (= res!48074 (not (is-Node!177 tree!177)))))

(assert (=> d!60148 (= (isBraun!0 tree!177) e!50111)))

(declare-fun b!91537 () Bool)

(declare-fun e!50112 () Bool)

(assert (=> b!91537 (= e!50111 e!50112)))

(declare-fun res!48076 () Bool)

(assert (=> b!91537 (=> (not res!48076) (not e!50112))))

(assert (=> b!91537 (= res!48076 (isBraun!0 (left!1860 tree!177)))))

(declare-fun b!91538 () Bool)

(declare-fun res!48075 () Bool)

(assert (=> b!91538 (=> (not res!48075) (not e!50112))))

(assert (=> b!91538 (= res!48075 (isBraun!0 (right!1866 tree!177)))))

(declare-fun b!91539 () Bool)

(declare-fun lt!20554 () (_ BitVec 32))

(declare-fun lt!20553 () (_ BitVec 32))

(assert (=> b!91539 (= e!50112 (or (= lt!20554 lt!20553) (= lt!20554 (bvadd lt!20553 #b00000000000000000000000000000001))))))

(declare-fun height!0 (Tree!136) (_ BitVec 32))

(assert (=> b!91539 (= lt!20553 (height!0 (right!1866 tree!177)))))

(assert (=> b!91539 (= lt!20554 (height!0 (left!1860 tree!177)))))

(assert (= (and d!60148 (not res!48074)) b!91537))

(assert (= (and b!91537 res!48076) b!91538))

(assert (= (and b!91538 res!48075) b!91539))

(declare-fun m!87270 () Bool)

(assert (=> b!91537 m!87270))

(declare-fun m!87272 () Bool)

(assert (=> b!91538 m!87272))

(declare-fun m!87274 () Bool)

(assert (=> b!91539 m!87274))

(declare-fun m!87276 () Bool)

(assert (=> b!91539 m!87276))

(assert (=> b!91530 d!60148))

(declare-fun d!60150 () Bool)

(declare-fun res!48077 () Bool)

(declare-fun e!50113 () Bool)

(assert (=> d!60150 (=> res!48077 e!50113)))

(assert (=> d!60150 (= res!48077 (not (is-Node!177 tree!174)))))

(assert (=> d!60150 (= (isBraun!0 tree!174) e!50113)))

(declare-fun b!91540 () Bool)

(declare-fun e!50114 () Bool)

(assert (=> b!91540 (= e!50113 e!50114)))

(declare-fun res!48079 () Bool)

(assert (=> b!91540 (=> (not res!48079) (not e!50114))))

(assert (=> b!91540 (= res!48079 (isBraun!0 (left!1860 tree!174)))))

(declare-fun b!91541 () Bool)

(declare-fun res!48078 () Bool)

(assert (=> b!91541 (=> (not res!48078) (not e!50114))))

(assert (=> b!91541 (= res!48078 (isBraun!0 (right!1866 tree!174)))))

(declare-fun b!91542 () Bool)

(declare-fun lt!20556 () (_ BitVec 32))

(declare-fun lt!20555 () (_ BitVec 32))

(assert (=> b!91542 (= e!50114 (or (= lt!20556 lt!20555) (= lt!20556 (bvadd lt!20555 #b00000000000000000000000000000001))))))

(assert (=> b!91542 (= lt!20555 (height!0 (right!1866 tree!174)))))

(assert (=> b!91542 (= lt!20556 (height!0 (left!1860 tree!174)))))

(assert (= (and d!60150 (not res!48077)) b!91540))

(assert (= (and b!91540 res!48079) b!91541))

(assert (= (and b!91541 res!48078) b!91542))

(declare-fun m!87278 () Bool)

(assert (=> b!91540 m!87278))

(declare-fun m!87280 () Bool)

(assert (=> b!91541 m!87280))

(declare-fun m!87282 () Bool)

(assert (=> b!91542 m!87282))

(declare-fun m!87284 () Bool)

(assert (=> b!91542 m!87284))

(assert (=> start!12382 d!60150))

(push 1)

(assert (not b!91542))

(assert (not b!91539))

(assert (not b!91537))

(assert (not b!91540))

(assert (not b!91538))

(assert (not b!91541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

