; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8092 () Bool)

(assert start!8092)

(declare-fun res!26773 () Bool)

(declare-fun e!30679 () Bool)

(assert (=> start!8092 (=> (not res!26773) (not e!30679))))

(declare-datatypes () ((SomeLaw!42 (ConcreteOverride!39) (ConcreteNoOverride!39) (RefinedLawExt!29 (__x!222 Int)) (SomeLawExt!39 (__x!223 Int)))))

(declare-fun thiss!8404 () SomeLaw!42)

(assert (=> start!8092 (= res!26773 (and (not (is-ConcreteOverride!39 thiss!8404)) (not (is-ConcreteNoOverride!39 thiss!8404)) (is-RefinedLawExt!29 thiss!8404)))))

(assert (=> start!8092 e!30679))

(assert (=> start!8092 true))

(declare-fun b!57720 () Bool)

(declare-fun res!26772 () Bool)

(assert (=> b!57720 (=> (not res!26772) (not e!30679))))

(declare-fun res!26738 () Bool)

(declare-fun lawNotZero!19 (SomeLaw!42) Bool)

(assert (=> b!57720 (= res!26772 (= res!26738 (lawNotZero!19 thiss!8404)))))

(declare-fun b!57721 () Bool)

(declare-fun e!30678 () Bool)

(assert (=> b!57721 (= e!30679 e!30678)))

(declare-fun res!26774 () Bool)

(assert (=> b!57721 (=> res!26774 e!30678)))

(assert (=> b!57721 (= res!26774 (not res!26738))))

(declare-fun b!57722 () Bool)

(declare-fun value!42 (SomeLaw!42) Int)

(assert (=> b!57722 (= e!30678 (= (value!42 thiss!8404) 0))))

(assert (= (and start!8092 res!26773) b!57720))

(assert (= (and b!57720 res!26772) b!57721))

(assert (= (and b!57721 (not res!26774)) b!57722))

(declare-fun m!62350 () Bool)

(assert (=> b!57720 m!62350))

(declare-fun m!62352 () Bool)

(assert (=> b!57722 m!62352))

(push 1)

(assert (not b!57720))

(assert (not b!57722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50298 () Bool)

(declare-fun e!30682 () Bool)

(assert (=> d!50298 e!30682))

(declare-fun res!26780 () Bool)

(assert (=> d!50298 (=> (not res!26780) (not e!30682))))

(declare-fun res!26779 () Bool)

(assert (=> d!50298 (= res!26780 res!26779)))

(assert (=> d!50298 true))

(assert (=> d!50298 (= (lawNotZero!19 thiss!8404) res!26779)))

(declare-fun b!57725 () Bool)

(assert (=> b!57725 (= e!30682 (not (= (value!42 thiss!8404) 0)))))

(assert (= (and d!50298 res!26780) b!57725))

(assert (=> b!57725 m!62352))

(assert (=> b!57720 d!50298))

(declare-fun b!57738 () Bool)

(declare-fun e!30691 () Int)

(declare-fun e!30689 () Int)

(assert (=> b!57738 (= e!30691 e!30689)))

(declare-fun c!12309 () Bool)

(assert (=> b!57738 (= c!12309 (is-RefinedLawExt!29 thiss!8404))))

(declare-fun d!50300 () Bool)

(declare-fun c!12311 () Bool)

(assert (=> d!50300 (= c!12311 (is-ConcreteOverride!39 thiss!8404))))

(declare-fun e!30690 () Int)

(assert (=> d!50300 (= (value!42 thiss!8404) e!30690)))

(declare-fun b!57739 () Bool)

(declare-fun value!4175 (SomeLaw!42) Int)

(assert (=> b!57739 (= e!30689 (value!4175 thiss!8404))))

(declare-fun b!57740 () Bool)

(assert (=> b!57740 (= e!30690 e!30691)))

(declare-fun c!12310 () Bool)

(assert (=> b!57740 (= c!12310 (is-ConcreteNoOverride!39 thiss!8404))))

(declare-fun b!57741 () Bool)

(declare-fun value!44 (SomeLaw!42) Int)

(assert (=> b!57741 (= e!30691 (value!44 thiss!8404))))

(declare-fun b!57742 () Bool)

(declare-fun value!4176 (SomeLaw!42) Int)

(assert (=> b!57742 (= e!30689 (value!4176 thiss!8404))))

(declare-fun b!57743 () Bool)

(declare-fun value!43 (SomeLaw!42) Int)

(assert (=> b!57743 (= e!30690 (value!43 thiss!8404))))

(assert (= (and b!57738 c!12309) b!57739))

(assert (= (and b!57738 (not c!12309)) b!57742))

(assert (= (and b!57740 c!12310) b!57741))

(assert (= (and b!57740 (not c!12310)) b!57738))

(assert (= (and d!50300 c!12311) b!57743))

(assert (= (and d!50300 (not c!12311)) b!57740))

(declare-fun m!62354 () Bool)

(assert (=> b!57739 m!62354))

(declare-fun m!62356 () Bool)

(assert (=> b!57741 m!62356))

(declare-fun m!62358 () Bool)

(assert (=> b!57742 m!62358))

(declare-fun m!62360 () Bool)

(assert (=> b!57743 m!62360))

(assert (=> b!57722 d!50300))

(push 1)

(assert (not b!57739))

(assert (not b!57743))

(assert (not b!57741))

(assert (not b!57742))

(assert (not b!57725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

