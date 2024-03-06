; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8104 () Bool)

(assert start!8104)

(declare-fun res!26800 () Bool)

(declare-fun e!30712 () Bool)

(assert (=> start!8104 (=> (not res!26800) (not e!30712))))

(declare-datatypes () ((SomeLaw!44 (ConcreteOverride!41) (ConcreteNoOverride!41) (RefinedLawExt!31 (__x!226 Int)) (SomeLawExt!41 (__x!227 Int)))))

(declare-fun thiss!8445 () SomeLaw!44)

(declare-fun res!26742 () Bool)

(declare-fun thiss!8446 () SomeLaw!44)

(assert (=> start!8104 (= res!26800 (and (is-ConcreteNoOverride!41 thiss!8445) (= res!26742 true) (= thiss!8446 thiss!8445)))))

(assert (=> start!8104 e!30712))

(assert (=> start!8104 true))

(declare-fun b!57778 () Bool)

(declare-fun res!26801 () Bool)

(assert (=> b!57778 (=> (not res!26801) (not e!30712))))

(declare-fun inlined!6432 () Bool)

(declare-fun value!42 (SomeLaw!44) Int)

(assert (=> b!57778 (= res!26801 (= inlined!6432 (not (= (value!42 thiss!8446) 0))))))

(declare-fun b!57779 () Bool)

(assert (=> b!57779 (= e!30712 (not inlined!6432))))

(assert (= (and start!8104 res!26800) b!57778))

(assert (= (and b!57778 res!26801) b!57779))

(declare-fun m!62374 () Bool)

(assert (=> b!57778 m!62374))

(push 1)

(assert (not b!57778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57792 () Bool)

(declare-fun e!30720 () Int)

(declare-fun value!4175 (SomeLaw!44) Int)

(assert (=> b!57792 (= e!30720 (value!4175 thiss!8446))))

(declare-fun b!57793 () Bool)

(declare-fun value!4176 (SomeLaw!44) Int)

(assert (=> b!57793 (= e!30720 (value!4176 thiss!8446))))

(declare-fun b!57794 () Bool)

(declare-fun e!30719 () Int)

(declare-fun value!43 (SomeLaw!44) Int)

(assert (=> b!57794 (= e!30719 (value!43 thiss!8446))))

(declare-fun b!57795 () Bool)

(declare-fun e!30721 () Int)

(declare-fun value!44 (SomeLaw!44) Int)

(assert (=> b!57795 (= e!30721 (value!44 thiss!8446))))

(declare-fun d!50306 () Bool)

(declare-fun c!12328 () Bool)

(assert (=> d!50306 (= c!12328 (is-ConcreteOverride!41 thiss!8446))))

(assert (=> d!50306 (= (value!42 thiss!8446) e!30719)))

(declare-fun b!57796 () Bool)

(assert (=> b!57796 (= e!30719 e!30721)))

(declare-fun c!12327 () Bool)

(assert (=> b!57796 (= c!12327 (is-ConcreteNoOverride!41 thiss!8446))))

(declare-fun b!57797 () Bool)

(assert (=> b!57797 (= e!30721 e!30720)))

(declare-fun c!12329 () Bool)

(assert (=> b!57797 (= c!12329 (is-RefinedLawExt!31 thiss!8446))))

(assert (= (and b!57797 c!12329) b!57792))

(assert (= (and b!57797 (not c!12329)) b!57793))

(assert (= (and b!57796 c!12327) b!57795))

(assert (= (and b!57796 (not c!12327)) b!57797))

(assert (= (and d!50306 c!12328) b!57794))

(assert (= (and d!50306 (not c!12328)) b!57796))

(declare-fun m!62376 () Bool)

(assert (=> b!57792 m!62376))

(declare-fun m!62378 () Bool)

(assert (=> b!57793 m!62378))

(declare-fun m!62380 () Bool)

(assert (=> b!57794 m!62380))

(declare-fun m!62382 () Bool)

(assert (=> b!57795 m!62382))

(assert (=> b!57778 d!50306))

(push 1)

(assert (not b!57795))

(assert (not b!57792))

(assert (not b!57794))

(assert (not b!57793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50308 () Bool)

(assert (=> d!50308 (= (value!44 thiss!8446) 42)))

(assert (=> b!57795 d!50308))

(declare-fun d!50310 () Bool)

(assert (=> d!50310 true))

(assert (=> d!50310 true))

(declare-fun res!26804 () Int)

(assert (=> d!50310 (= (value!4175 thiss!8446) res!26804)))

(assert (=> b!57792 d!50310))

(declare-fun d!50312 () Bool)

(assert (=> d!50312 (= (value!43 thiss!8446) 42)))

(assert (=> b!57794 d!50312))

(declare-fun d!50314 () Bool)

(assert (=> d!50314 true))

(assert (=> d!50314 true))

(declare-fun res!26807 () Int)

(assert (=> d!50314 (= (value!4176 thiss!8446) res!26807)))

(assert (=> b!57793 d!50314))

(push 1)

(check-sat)

(pop 1)

