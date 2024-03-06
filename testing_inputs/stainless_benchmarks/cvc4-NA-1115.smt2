; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8098 () Bool)

(assert start!8098)

(declare-fun res!26788 () Bool)

(declare-fun e!30697 () Bool)

(assert (=> start!8098 (=> (not res!26788) (not e!30697))))

(declare-datatypes () ((SomeLaw!43 (ConcreteOverride!40) (ConcreteNoOverride!40) (RefinedLawExt!30 (__x!224 Int)) (SomeLawExt!40 (__x!225 Int)))))

(declare-fun thiss!8404 () SomeLaw!43)

(assert (=> start!8098 (= res!26788 (and (not (is-ConcreteOverride!40 thiss!8404)) (not (is-ConcreteNoOverride!40 thiss!8404)) (not (is-RefinedLawExt!30 thiss!8404))))))

(assert (=> start!8098 e!30697))

(assert (=> start!8098 true))

(declare-fun b!57750 () Bool)

(declare-fun res!26789 () Bool)

(assert (=> b!57750 (=> (not res!26789) (not e!30697))))

(declare-fun res!26740 () Bool)

(declare-fun lawNotZero!20 (SomeLaw!43) Bool)

(assert (=> b!57750 (= res!26789 (= res!26740 (lawNotZero!20 thiss!8404)))))

(declare-fun b!57751 () Bool)

(declare-fun e!30696 () Bool)

(assert (=> b!57751 (= e!30697 e!30696)))

(declare-fun res!26787 () Bool)

(assert (=> b!57751 (=> res!26787 e!30696)))

(assert (=> b!57751 (= res!26787 (not res!26740))))

(declare-fun b!57752 () Bool)

(declare-fun value!42 (SomeLaw!43) Int)

(assert (=> b!57752 (= e!30696 (= (value!42 thiss!8404) 0))))

(assert (= (and start!8098 res!26788) b!57750))

(assert (= (and b!57750 res!26789) b!57751))

(assert (= (and b!57751 (not res!26787)) b!57752))

(declare-fun m!62362 () Bool)

(assert (=> b!57750 m!62362))

(declare-fun m!62364 () Bool)

(assert (=> b!57752 m!62364))

(push 1)

(assert (not b!57750))

(assert (not b!57752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50302 () Bool)

(declare-fun e!30700 () Bool)

(assert (=> d!50302 e!30700))

(declare-fun res!26795 () Bool)

(assert (=> d!50302 (=> (not res!26795) (not e!30700))))

(declare-fun res!26794 () Bool)

(assert (=> d!50302 (= res!26795 res!26794)))

(assert (=> d!50302 true))

(assert (=> d!50302 (= (lawNotZero!20 thiss!8404) res!26794)))

(declare-fun b!57755 () Bool)

(assert (=> b!57755 (= e!30700 (not (= (value!42 thiss!8404) 0)))))

(assert (= (and d!50302 res!26795) b!57755))

(assert (=> b!57755 m!62364))

(assert (=> b!57750 d!50302))

(declare-fun b!57768 () Bool)

(declare-fun e!30708 () Int)

(declare-fun value!4175 (SomeLaw!43) Int)

(assert (=> b!57768 (= e!30708 (value!4175 thiss!8404))))

(declare-fun b!57769 () Bool)

(declare-fun e!30709 () Int)

(declare-fun value!43 (SomeLaw!43) Int)

(assert (=> b!57769 (= e!30709 (value!43 thiss!8404))))

(declare-fun b!57770 () Bool)

(declare-fun e!30707 () Int)

(assert (=> b!57770 (= e!30709 e!30707)))

(declare-fun c!12320 () Bool)

(assert (=> b!57770 (= c!12320 (is-ConcreteNoOverride!40 thiss!8404))))

(declare-fun b!57771 () Bool)

(assert (=> b!57771 (= e!30707 e!30708)))

(declare-fun c!12318 () Bool)

(assert (=> b!57771 (= c!12318 (is-RefinedLawExt!30 thiss!8404))))

(declare-fun d!50304 () Bool)

(declare-fun c!12319 () Bool)

(assert (=> d!50304 (= c!12319 (is-ConcreteOverride!40 thiss!8404))))

(assert (=> d!50304 (= (value!42 thiss!8404) e!30709)))

(declare-fun b!57772 () Bool)

(declare-fun value!4176 (SomeLaw!43) Int)

(assert (=> b!57772 (= e!30708 (value!4176 thiss!8404))))

(declare-fun b!57773 () Bool)

(declare-fun value!44 (SomeLaw!43) Int)

(assert (=> b!57773 (= e!30707 (value!44 thiss!8404))))

(assert (= (and b!57771 c!12318) b!57768))

(assert (= (and b!57771 (not c!12318)) b!57772))

(assert (= (and b!57770 c!12320) b!57773))

(assert (= (and b!57770 (not c!12320)) b!57771))

(assert (= (and d!50304 c!12319) b!57769))

(assert (= (and d!50304 (not c!12319)) b!57770))

(declare-fun m!62366 () Bool)

(assert (=> b!57768 m!62366))

(declare-fun m!62368 () Bool)

(assert (=> b!57769 m!62368))

(declare-fun m!62370 () Bool)

(assert (=> b!57772 m!62370))

(declare-fun m!62372 () Bool)

(assert (=> b!57773 m!62372))

(assert (=> b!57752 d!50304))

(push 1)

(assert (not b!57772))

(assert (not b!57768))

(assert (not b!57769))

(assert (not b!57755))

(assert (not b!57773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

