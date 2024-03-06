; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12400 () Bool)

(assert start!12400)

(declare-fun res!48257 () Bool)

(declare-fun e!50281 () Bool)

(assert (=> start!12400 (=> (not res!48257) (not e!50281))))

(declare-datatypes () ((Tree!139 (Leaf!663) (TreeExt!4 (__x!315 Int)) (Node!180 (value!8760 (_ BitVec 32)) (left!1863 Tree!139) (right!1869 Tree!139)))))

(declare-fun tree!174 () Tree!139)

(declare-fun isBraun!0 (Tree!139) Bool)

(assert (=> start!12400 (= res!48257 (isBraun!0 tree!174))))

(assert (=> start!12400 e!50281))

(assert (=> start!12400 true))

(declare-fun b!91819 () Bool)

(assert (=> b!91819 (= e!50281 (and (not (is-Node!180 tree!174)) (not (is-Leaf!663 tree!174))))))

(assert (= (and start!12400 res!48257) b!91819))

(declare-fun m!87688 () Bool)

(assert (=> start!12400 m!87688))

(push 1)

(assert (not start!12400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60334 () Bool)

(declare-fun res!48264 () Bool)

(declare-fun e!50287 () Bool)

(assert (=> d!60334 (=> res!48264 e!50287)))

(assert (=> d!60334 (= res!48264 (not (is-Node!180 tree!174)))))

(assert (=> d!60334 (= (isBraun!0 tree!174) e!50287)))

(declare-fun b!91826 () Bool)

(declare-fun e!50286 () Bool)

(assert (=> b!91826 (= e!50287 e!50286)))

(declare-fun res!48266 () Bool)

(assert (=> b!91826 (=> (not res!48266) (not e!50286))))

(assert (=> b!91826 (= res!48266 (isBraun!0 (left!1863 tree!174)))))

(declare-fun b!91827 () Bool)

(declare-fun res!48265 () Bool)

(assert (=> b!91827 (=> (not res!48265) (not e!50286))))

(assert (=> b!91827 (= res!48265 (isBraun!0 (right!1869 tree!174)))))

(declare-fun b!91828 () Bool)

(declare-fun lt!20757 () (_ BitVec 32))

(declare-fun lt!20758 () (_ BitVec 32))

(assert (=> b!91828 (= e!50286 (or (= lt!20757 lt!20758) (= lt!20757 (bvadd lt!20758 #b00000000000000000000000000000001))))))

(declare-fun height!0 (Tree!139) (_ BitVec 32))

(assert (=> b!91828 (= lt!20758 (height!0 (right!1869 tree!174)))))

(assert (=> b!91828 (= lt!20757 (height!0 (left!1863 tree!174)))))

(assert (= (and d!60334 (not res!48264)) b!91826))

(assert (= (and b!91826 res!48266) b!91827))

(assert (= (and b!91827 res!48265) b!91828))

(declare-fun m!87690 () Bool)

(assert (=> b!91826 m!87690))

(declare-fun m!87692 () Bool)

(assert (=> b!91827 m!87692))

(declare-fun m!87694 () Bool)

(assert (=> b!91828 m!87694))

(declare-fun m!87696 () Bool)

(assert (=> b!91828 m!87696))

(assert (=> start!12400 d!60334))

(push 1)

(assert (not b!91827))

(assert (not b!91826))

(assert (not b!91828))

(check-sat)

(get-model)

(pop 1)

