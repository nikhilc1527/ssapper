; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8006 () Bool)

(assert start!8006)

(declare-fun res!26609 () Bool)

(declare-fun e!30525 () Bool)

(assert (=> start!8006 (=> (not res!26609) (not e!30525))))

(declare-datatypes () ((SomeLaw!17 (SomeLawExt!14 (__x!168 Int)) (RefinedLawExt!4 (__x!169 Int)) (ConcreteOverride!15) (ConcreteNoOverride!15))))

(declare-fun thiss!8327 () SomeLaw!17)

(assert (=> start!8006 (= res!26609 (not (is-SomeLawExt!14 thiss!8327)))))

(assert (=> start!8006 e!30525))

(assert (=> start!8006 true))

(declare-fun b!57432 () Bool)

(declare-fun res!26610 () Bool)

(assert (=> b!57432 (=> (not res!26610) (not e!30525))))

(declare-fun res!26586 () Bool)

(declare-fun lawNotZero!3 (SomeLaw!17) Bool)

(assert (=> b!57432 (= res!26610 (= res!26586 (lawNotZero!3 thiss!8327)))))

(declare-fun b!57433 () Bool)

(declare-fun e!30526 () Bool)

(assert (=> b!57433 (= e!30525 e!30526)))

(declare-fun res!26611 () Bool)

(assert (=> b!57433 (=> res!26611 e!30526)))

(assert (=> b!57433 (= res!26611 (not res!26586))))

(declare-fun b!57434 () Bool)

(declare-fun value!45 (SomeLaw!17) Int)

(assert (=> b!57434 (= e!30526 (= (value!45 thiss!8327) 0))))

(assert (= (and start!8006 res!26609) b!57432))

(assert (= (and b!57432 res!26610) b!57433))

(assert (= (and b!57433 (not res!26611)) b!57434))

(declare-fun m!62244 () Bool)

(assert (=> b!57432 m!62244))

(declare-fun m!62246 () Bool)

(assert (=> b!57434 m!62246))

(push 1)

(assert (not b!57432))

(assert (not b!57434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!57447 () Bool)

(declare-fun e!30534 () Bool)

(declare-fun e!30535 () Bool)

(assert (=> b!57447 (= e!30534 e!30535)))

(declare-fun c!12230 () Bool)

(assert (=> b!57447 (= c!12230 (is-ConcreteOverride!15 thiss!8327))))

(declare-fun d!50258 () Bool)

(declare-fun e!30533 () Bool)

(assert (=> d!50258 e!30533))

(declare-fun res!26617 () Bool)

(assert (=> d!50258 (=> (not res!26617) (not e!30533))))

(declare-fun lt!10603 () Bool)

(assert (=> d!50258 (= res!26617 (and (or (not lt!10603) (is-RefinedLawExt!4 thiss!8327) (is-ConcreteOverride!15 thiss!8327) (is-ConcreteNoOverride!15 thiss!8327)) lt!10603))))

(assert (=> d!50258 (= lt!10603 e!30534)))

(declare-fun c!12229 () Bool)

(assert (=> d!50258 (= c!12229 (is-RefinedLawExt!4 thiss!8327))))

(assert (=> d!50258 (= (lawNotZero!3 thiss!8327) lt!10603)))

(declare-fun b!57448 () Bool)

(declare-fun res!26618 () Bool)

(assert (=> b!57448 (=> (not res!26618) (not e!30533))))

(assert (=> b!57448 (= res!26618 (not (= (value!45 thiss!8327) 0)))))

(declare-fun b!57449 () Bool)

(declare-fun lawNotZero!4 (SomeLaw!17) Bool)

(assert (=> b!57449 (= e!30535 (lawNotZero!4 thiss!8327))))

(declare-fun b!57450 () Bool)

(declare-fun lawNotZero!14 (SomeLaw!17) Bool)

(assert (=> b!57450 (= e!30535 (lawNotZero!14 thiss!8327))))

(declare-fun b!57451 () Bool)

(declare-fun lawNotZero!16 (SomeLaw!17) Bool)

(assert (=> b!57451 (= e!30534 (lawNotZero!16 thiss!8327))))

(declare-fun b!57452 () Bool)

(assert (=> b!57452 (= e!30533 (> (value!45 thiss!8327) 1))))

(assert (= (and b!57447 c!12230) b!57449))

(assert (= (and b!57447 (not c!12230)) b!57450))

(assert (= (and d!50258 c!12229) b!57451))

(assert (= (and d!50258 (not c!12229)) b!57447))

(assert (= (and d!50258 res!26617) b!57448))

(assert (= (and b!57448 res!26618) b!57452))

(assert (=> b!57452 m!62246))

(declare-fun m!62248 () Bool)

(assert (=> b!57451 m!62248))

(assert (=> b!57448 m!62246))

(declare-fun m!62250 () Bool)

(assert (=> b!57450 m!62250))

(declare-fun m!62252 () Bool)

(assert (=> b!57449 m!62252))

(assert (=> b!57432 d!50258))

(declare-fun b!57465 () Bool)

(declare-fun e!30544 () Int)

(declare-fun e!30542 () Int)

(assert (=> b!57465 (= e!30544 e!30542)))

(declare-fun c!12237 () Bool)

(assert (=> b!57465 (= c!12237 (is-RefinedLawExt!4 thiss!8327))))

(declare-fun b!57466 () Bool)

(declare-fun e!30543 () Int)

(declare-fun value!46 (SomeLaw!17) Int)

(assert (=> b!57466 (= e!30543 (value!46 thiss!8327))))

(declare-fun b!57467 () Bool)

(declare-fun value!4144 (SomeLaw!17) Int)

(assert (=> b!57467 (= e!30542 (value!4144 thiss!8327))))

(declare-fun d!50260 () Bool)

(declare-fun c!12239 () Bool)

(assert (=> d!50260 (= c!12239 (is-SomeLawExt!14 thiss!8327))))

(assert (=> d!50260 (= (value!45 thiss!8327) e!30544)))

(declare-fun b!57468 () Bool)

(declare-fun value!47 (SomeLaw!17) Int)

(assert (=> b!57468 (= e!30543 (value!47 thiss!8327))))

(declare-fun b!57469 () Bool)

(assert (=> b!57469 (= e!30542 e!30543)))

(declare-fun c!12238 () Bool)

(assert (=> b!57469 (= c!12238 (is-ConcreteOverride!15 thiss!8327))))

(declare-fun b!57470 () Bool)

(declare-fun value!4143 (SomeLaw!17) Int)

(assert (=> b!57470 (= e!30544 (value!4143 thiss!8327))))

(assert (= (and b!57469 c!12238) b!57466))

(assert (= (and b!57469 (not c!12238)) b!57468))

(assert (= (and b!57465 c!12237) b!57467))

(assert (= (and b!57465 (not c!12237)) b!57469))

(assert (= (and d!50260 c!12239) b!57470))

(assert (= (and d!50260 (not c!12239)) b!57465))

(declare-fun m!62254 () Bool)

(assert (=> b!57466 m!62254))

(declare-fun m!62256 () Bool)

(assert (=> b!57467 m!62256))

(declare-fun m!62258 () Bool)

(assert (=> b!57468 m!62258))

(declare-fun m!62260 () Bool)

(assert (=> b!57470 m!62260))

(assert (=> b!57434 d!50260))

(push 1)

(assert (not b!57449))

(assert (not b!57470))

(assert (not b!57468))

(assert (not b!57466))

(assert (not b!57450))

(assert (not b!57467))

(assert (not b!57451))

(assert (not b!57452))

(assert (not b!57448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

