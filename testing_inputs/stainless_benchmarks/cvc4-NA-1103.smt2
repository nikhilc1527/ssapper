; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8052 () Bool)

(assert start!8052)

(declare-fun res!26719 () Bool)

(declare-fun e!30630 () Bool)

(assert (=> start!8052 (=> (not res!26719) (not e!30630))))

(declare-datatypes () ((SomeLaw!30 (SomeLawExt!27 (__x!194 Int)) (RefinedLawExt!17 (__x!195 Int)) (ConcreteOverride!28) (ConcreteNoOverride!28))))

(declare-fun thiss!8273 () SomeLaw!30)

(declare-fun thiss!8272 () SomeLaw!30)

(declare-fun res!26576 () Bool)

(assert (=> start!8052 (= res!26719 (and (is-ConcreteNoOverride!28 thiss!8272) (= res!26576 true) (= thiss!8273 thiss!8272)))))

(assert (=> start!8052 e!30630))

(assert (=> start!8052 true))

(declare-fun b!57636 () Bool)

(declare-fun res!26717 () Bool)

(assert (=> b!57636 (=> (not res!26717) (not e!30630))))

(declare-fun inlined!6383 () Bool)

(declare-fun e!30631 () Bool)

(assert (=> b!57636 (= res!26717 (= inlined!6383 e!30631))))

(declare-fun res!26718 () Bool)

(assert (=> b!57636 (=> (not res!26718) (not e!30631))))

(declare-fun value!45 (SomeLaw!30) Int)

(assert (=> b!57636 (= res!26718 (not (= (value!45 thiss!8273) 0)))))

(declare-fun b!57637 () Bool)

(assert (=> b!57637 (= e!30631 (> (value!45 thiss!8273) 1))))

(declare-fun b!57638 () Bool)

(assert (=> b!57638 (= e!30630 (not inlined!6383))))

(assert (= (and start!8052 res!26719) b!57636))

(assert (= (and b!57636 res!26718) b!57637))

(assert (= (and b!57636 res!26717) b!57638))

(declare-fun m!62316 () Bool)

(assert (=> b!57636 m!62316))

(assert (=> b!57637 m!62316))

(push 1)

(assert (not b!57637))

(assert (not b!57636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57651 () Bool)

(declare-fun e!30640 () Int)

(declare-fun value!4144 (SomeLaw!30) Int)

(assert (=> b!57651 (= e!30640 (value!4144 thiss!8273))))

(declare-fun b!57652 () Bool)

(declare-fun e!30639 () Int)

(declare-fun value!47 (SomeLaw!30) Int)

(assert (=> b!57652 (= e!30639 (value!47 thiss!8273))))

(declare-fun b!57653 () Bool)

(declare-fun value!46 (SomeLaw!30) Int)

(assert (=> b!57653 (= e!30639 (value!46 thiss!8273))))

(declare-fun b!57654 () Bool)

(declare-fun e!30638 () Int)

(assert (=> b!57654 (= e!30638 e!30640)))

(declare-fun c!12283 () Bool)

(assert (=> b!57654 (= c!12283 (is-RefinedLawExt!17 thiss!8273))))

(declare-fun b!57655 () Bool)

(declare-fun value!4143 (SomeLaw!30) Int)

(assert (=> b!57655 (= e!30638 (value!4143 thiss!8273))))

(declare-fun d!50278 () Bool)

(declare-fun c!12282 () Bool)

(assert (=> d!50278 (= c!12282 (is-SomeLawExt!27 thiss!8273))))

(assert (=> d!50278 (= (value!45 thiss!8273) e!30638)))

(declare-fun b!57656 () Bool)

(assert (=> b!57656 (= e!30640 e!30639)))

(declare-fun c!12284 () Bool)

(assert (=> b!57656 (= c!12284 (is-ConcreteOverride!28 thiss!8273))))

(assert (= (and b!57656 c!12284) b!57653))

(assert (= (and b!57656 (not c!12284)) b!57652))

(assert (= (and b!57654 c!12283) b!57651))

(assert (= (and b!57654 (not c!12283)) b!57656))

(assert (= (and d!50278 c!12282) b!57655))

(assert (= (and d!50278 (not c!12282)) b!57654))

(declare-fun m!62318 () Bool)

(assert (=> b!57651 m!62318))

(declare-fun m!62320 () Bool)

(assert (=> b!57652 m!62320))

(declare-fun m!62322 () Bool)

(assert (=> b!57653 m!62322))

(declare-fun m!62324 () Bool)

(assert (=> b!57655 m!62324))

(assert (=> b!57637 d!50278))

(assert (=> b!57636 d!50278))

(push 1)

(assert (not b!57653))

(assert (not b!57655))

(assert (not b!57652))

(assert (not b!57651))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50280 () Bool)

(assert (=> d!50280 (= (value!46 thiss!8273) 42)))

(assert (=> b!57653 d!50280))

(declare-fun d!50282 () Bool)

(assert (=> d!50282 true))

(assert (=> d!50282 true))

(declare-fun res!26722 () Int)

(assert (=> d!50282 (= (value!4143 thiss!8273) res!26722)))

(assert (=> b!57655 d!50282))

(declare-fun d!50284 () Bool)

(assert (=> d!50284 (= (value!47 thiss!8273) 42)))

(assert (=> b!57652 d!50284))

(declare-fun d!50286 () Bool)

(assert (=> d!50286 true))

(assert (=> d!50286 true))

(declare-fun res!26725 () Int)

(assert (=> d!50286 (= (value!4144 thiss!8273) res!26725)))

(assert (=> b!57651 d!50286))

(push 1)

(check-sat)

(pop 1)

