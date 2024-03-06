; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7440 () Bool)

(assert start!7440)

(declare-fun b!53611 () Bool)

(declare-fun e!27956 () Bool)

(declare-fun e!27955 () Bool)

(assert (=> b!53611 (= e!27956 (not e!27955))))

(declare-fun res!24411 () Bool)

(assert (=> b!53611 (=> (not res!24411) (not e!27955))))

(declare-fun e!27864 () (_ BitVec 32))

(declare-datatypes () ((List!442 (Nil!422) (Cons!421 (head!681 (_ BitVec 32)) (tail!707 List!442)))))

(declare-fun l!1079 () List!442)

(declare-fun res!24312 () List!442)

(declare-fun contents!0 (List!442) (Set (_ BitVec 32)))

(assert (=> b!53611 (= res!24411 (= (contents!0 res!24312) (union (contents!0 l!1079) (insert e!27864 (as emptyset (Set (_ BitVec 32)))))))))

(assert (=> b!53611 (is-Cons!421 res!24312)))

(declare-fun b!53613 () Bool)

(declare-fun size!18 (List!442) Int)

(assert (=> b!53613 (= e!27955 (= (size!18 res!24312) (+ (size!18 l!1079) 1)))))

(declare-fun b!53610 () Bool)

(declare-fun res!24413 () Bool)

(assert (=> b!53610 (=> (not res!24413) (not e!27956))))

(assert (=> b!53610 (= res!24413 (and (is-Nil!422 l!1079) (= res!24312 (Cons!421 e!27864 Nil!422))))))

(declare-fun res!24414 () Bool)

(assert (=> start!7440 (=> (not res!24414) (not e!27956))))

(declare-fun isSorted!5 (List!442) Bool)

(assert (=> start!7440 (= res!24414 (isSorted!5 l!1079))))

(assert (=> start!7440 e!27956))

(assert (=> start!7440 true))

(declare-fun b!53612 () Bool)

(declare-fun res!24412 () Bool)

(assert (=> b!53612 (=> (not res!24412) (not e!27955))))

(assert (=> b!53612 (= res!24412 (isSorted!5 res!24312))))

(assert (= (and start!7440 res!24414) b!53610))

(assert (= (and b!53610 res!24413) b!53611))

(assert (= (and b!53611 res!24411) b!53612))

(assert (= (and b!53612 res!24412) b!53613))

(declare-fun m!57486 () Bool)

(assert (=> b!53611 m!57486))

(declare-fun m!57488 () Bool)

(assert (=> b!53611 m!57488))

(declare-fun m!57490 () Bool)

(assert (=> b!53611 m!57490))

(declare-fun m!57492 () Bool)

(assert (=> b!53613 m!57492))

(declare-fun m!57494 () Bool)

(assert (=> b!53613 m!57494))

(declare-fun m!57496 () Bool)

(assert (=> start!7440 m!57496))

(declare-fun m!57498 () Bool)

(assert (=> b!53612 m!57498))

(push 1)

(assert (not b!53613))

(assert (not b!53612))

(assert (not start!7440))

(assert (not b!53611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44715 () Bool)

(declare-fun lt!9340 () Int)

(assert (=> d!44715 (>= lt!9340 0)))

(declare-fun e!27959 () Int)

(assert (=> d!44715 (= lt!9340 e!27959)))

(declare-fun c!11631 () Bool)

(assert (=> d!44715 (= c!11631 (is-Nil!422 res!24312))))

(assert (=> d!44715 (= (size!18 res!24312) lt!9340)))

(declare-fun b!53618 () Bool)

(assert (=> b!53618 (= e!27959 0)))

(declare-fun b!53619 () Bool)

(assert (=> b!53619 (= e!27959 (+ 1 (size!18 (tail!707 res!24312))))))

(assert (= (and d!44715 c!11631) b!53618))

(assert (= (and d!44715 (not c!11631)) b!53619))

(declare-fun m!57500 () Bool)

(assert (=> b!53619 m!57500))

(assert (=> b!53613 d!44715))

(declare-fun d!44717 () Bool)

(declare-fun lt!9341 () Int)

(assert (=> d!44717 (>= lt!9341 0)))

(declare-fun e!27960 () Int)

(assert (=> d!44717 (= lt!9341 e!27960)))

(declare-fun c!11632 () Bool)

(assert (=> d!44717 (= c!11632 (is-Nil!422 l!1079))))

(assert (=> d!44717 (= (size!18 l!1079) lt!9341)))

(declare-fun b!53620 () Bool)

(assert (=> b!53620 (= e!27960 0)))

(declare-fun b!53621 () Bool)

(assert (=> b!53621 (= e!27960 (+ 1 (size!18 (tail!707 l!1079))))))

(assert (= (and d!44717 c!11632) b!53620))

(assert (= (and d!44717 (not c!11632)) b!53621))

(declare-fun m!57502 () Bool)

(assert (=> b!53621 m!57502))

(assert (=> b!53613 d!44717))

(declare-fun d!44719 () Bool)

(declare-fun res!24419 () Bool)

(declare-fun e!27965 () Bool)

(assert (=> d!44719 (=> res!24419 e!27965)))

(assert (=> d!44719 (= res!24419 (or (is-Nil!422 res!24312) (and (is-Cons!421 res!24312) (is-Nil!422 (tail!707 res!24312)))))))

(assert (=> d!44719 (= (isSorted!5 res!24312) e!27965)))

(declare-fun b!53626 () Bool)

(declare-fun e!27966 () Bool)

(assert (=> b!53626 (= e!27965 e!27966)))

(declare-fun res!24420 () Bool)

(assert (=> b!53626 (=> (not res!24420) (not e!27966))))

(assert (=> b!53626 (= res!24420 (bvsle (head!681 res!24312) (head!681 (tail!707 res!24312))))))

(declare-fun b!53627 () Bool)

(assert (=> b!53627 (= e!27966 (isSorted!5 (Cons!421 (head!681 (tail!707 res!24312)) (tail!707 (tail!707 res!24312)))))))

(assert (= (and d!44719 (not res!24419)) b!53626))

(assert (= (and b!53626 res!24420) b!53627))

(declare-fun m!57504 () Bool)

(assert (=> b!53627 m!57504))

(assert (=> b!53612 d!44719))

(declare-fun d!44721 () Bool)

(declare-fun res!24421 () Bool)

(declare-fun e!27967 () Bool)

(assert (=> d!44721 (=> res!24421 e!27967)))

(assert (=> d!44721 (= res!24421 (or (is-Nil!422 l!1079) (and (is-Cons!421 l!1079) (is-Nil!422 (tail!707 l!1079)))))))

(assert (=> d!44721 (= (isSorted!5 l!1079) e!27967)))

(declare-fun b!53628 () Bool)

(declare-fun e!27968 () Bool)

(assert (=> b!53628 (= e!27967 e!27968)))

(declare-fun res!24422 () Bool)

(assert (=> b!53628 (=> (not res!24422) (not e!27968))))

(assert (=> b!53628 (= res!24422 (bvsle (head!681 l!1079) (head!681 (tail!707 l!1079))))))

(declare-fun b!53629 () Bool)

(assert (=> b!53629 (= e!27968 (isSorted!5 (Cons!421 (head!681 (tail!707 l!1079)) (tail!707 (tail!707 l!1079)))))))

(assert (= (and d!44721 (not res!24421)) b!53628))

(assert (= (and b!53628 res!24422) b!53629))

(declare-fun m!57506 () Bool)

(assert (=> b!53629 m!57506))

(assert (=> start!7440 d!44721))

(declare-fun d!44723 () Bool)

(declare-fun c!11635 () Bool)

(assert (=> d!44723 (= c!11635 (is-Nil!422 res!24312))))

(declare-fun e!27971 () (Set (_ BitVec 32)))

(assert (=> d!44723 (= (contents!0 res!24312) e!27971)))

(declare-fun b!53634 () Bool)

(assert (=> b!53634 (= e!27971 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53635 () Bool)

(assert (=> b!53635 (= e!27971 (union (contents!0 (tail!707 res!24312)) (insert (head!681 res!24312) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44723 c!11635) b!53634))

(assert (= (and d!44723 (not c!11635)) b!53635))

(declare-fun m!57508 () Bool)

(assert (=> b!53635 m!57508))

(declare-fun m!57510 () Bool)

(assert (=> b!53635 m!57510))

(assert (=> b!53611 d!44723))

(declare-fun d!44725 () Bool)

(declare-fun c!11636 () Bool)

(assert (=> d!44725 (= c!11636 (is-Nil!422 l!1079))))

(declare-fun e!27972 () (Set (_ BitVec 32)))

(assert (=> d!44725 (= (contents!0 l!1079) e!27972)))

(declare-fun b!53636 () Bool)

(assert (=> b!53636 (= e!27972 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!53637 () Bool)

(assert (=> b!53637 (= e!27972 (union (contents!0 (tail!707 l!1079)) (insert (head!681 l!1079) (as emptyset (Set (_ BitVec 32))))))))

(assert (= (and d!44725 c!11636) b!53636))

(assert (= (and d!44725 (not c!11636)) b!53637))

(declare-fun m!57512 () Bool)

(assert (=> b!53637 m!57512))

(declare-fun m!57514 () Bool)

(assert (=> b!53637 m!57514))

(assert (=> b!53611 d!44725))

(push 1)

(assert (not b!53627))

(assert (not b!53637))

(assert (not b!53635))

(assert (not b!53629))

(assert (not b!53619))

(assert (not b!53621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

