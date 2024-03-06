; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8320 () Bool)

(assert start!8320)

(declare-fun res!27162 () Bool)

(declare-fun e!31176 () Bool)

(assert (=> start!8320 (=> (not res!27162) (not e!31176))))

(declare-datatypes () ((List!490 (Cons!464 (head!737 (_ BitVec 32)) (tail!763 List!490)) (Nil!465))))

(declare-fun l1!336 () List!490)

(declare-fun l2!329 () List!490)

(declare-fun size!17 (List!490) Int)

(assert (=> start!8320 (= res!27162 (= (size!17 l1!336) (size!17 l2!329)))))

(assert (=> start!8320 e!31176))

(assert (=> start!8320 true))

(declare-fun b!58576 () Bool)

(declare-fun res!27163 () Bool)

(assert (=> b!58576 (=> (not res!27163) (not e!31176))))

(declare-fun l2!330 () List!490)

(declare-fun l1!337 () List!490)

(declare-datatypes () ((IntPair!3 (IP!2 (fst!9 (_ BitVec 32)) (snd!9 (_ BitVec 32))))))

(declare-fun head!733 () IntPair!3)

(assert (=> b!58576 (= res!27163 (and (not (is-Nil!465 l1!336)) (= head!733 (IP!2 (head!737 l1!336) (head!737 l2!329))) (= l1!337 (tail!763 l1!336)) (= l2!330 (tail!763 l2!329))))))

(declare-fun b!58577 () Bool)

(assert (=> b!58577 (= e!31176 (not (= (size!17 l1!337) (size!17 l2!330))))))

(assert (= (and start!8320 res!27162) b!58576))

(assert (= (and b!58576 res!27163) b!58577))

(declare-fun m!63148 () Bool)

(assert (=> start!8320 m!63148))

(declare-fun m!63150 () Bool)

(assert (=> start!8320 m!63150))

(declare-fun m!63152 () Bool)

(assert (=> b!58577 m!63152))

(declare-fun m!63154 () Bool)

(assert (=> b!58577 m!63154))

(push 1)

(assert (not b!58577))

(assert (not start!8320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50668 () Bool)

(declare-fun lt!10718 () Int)

(assert (=> d!50668 (>= lt!10718 0)))

(declare-fun e!31179 () Int)

(assert (=> d!50668 (= lt!10718 e!31179)))

(declare-fun c!12555 () Bool)

(assert (=> d!50668 (= c!12555 (is-Nil!465 l1!337))))

(assert (=> d!50668 (= (size!17 l1!337) lt!10718)))

(declare-fun b!58582 () Bool)

(assert (=> b!58582 (= e!31179 0)))

(declare-fun b!58583 () Bool)

(assert (=> b!58583 (= e!31179 (+ 1 (size!17 (tail!763 l1!337))))))

(assert (= (and d!50668 c!12555) b!58582))

(assert (= (and d!50668 (not c!12555)) b!58583))

(declare-fun m!63156 () Bool)

(assert (=> b!58583 m!63156))

(assert (=> b!58577 d!50668))

(declare-fun d!50670 () Bool)

(declare-fun lt!10719 () Int)

(assert (=> d!50670 (>= lt!10719 0)))

(declare-fun e!31180 () Int)

(assert (=> d!50670 (= lt!10719 e!31180)))

(declare-fun c!12556 () Bool)

(assert (=> d!50670 (= c!12556 (is-Nil!465 l2!330))))

(assert (=> d!50670 (= (size!17 l2!330) lt!10719)))

(declare-fun b!58584 () Bool)

(assert (=> b!58584 (= e!31180 0)))

(declare-fun b!58585 () Bool)

(assert (=> b!58585 (= e!31180 (+ 1 (size!17 (tail!763 l2!330))))))

(assert (= (and d!50670 c!12556) b!58584))

(assert (= (and d!50670 (not c!12556)) b!58585))

(declare-fun m!63158 () Bool)

(assert (=> b!58585 m!63158))

(assert (=> b!58577 d!50670))

(declare-fun d!50672 () Bool)

(declare-fun lt!10720 () Int)

(assert (=> d!50672 (>= lt!10720 0)))

(declare-fun e!31181 () Int)

(assert (=> d!50672 (= lt!10720 e!31181)))

(declare-fun c!12557 () Bool)

(assert (=> d!50672 (= c!12557 (is-Nil!465 l1!336))))

(assert (=> d!50672 (= (size!17 l1!336) lt!10720)))

(declare-fun b!58586 () Bool)

(assert (=> b!58586 (= e!31181 0)))

(declare-fun b!58587 () Bool)

(assert (=> b!58587 (= e!31181 (+ 1 (size!17 (tail!763 l1!336))))))

(assert (= (and d!50672 c!12557) b!58586))

(assert (= (and d!50672 (not c!12557)) b!58587))

(declare-fun m!63160 () Bool)

(assert (=> b!58587 m!63160))

(assert (=> start!8320 d!50672))

(declare-fun d!50674 () Bool)

(declare-fun lt!10721 () Int)

(assert (=> d!50674 (>= lt!10721 0)))

(declare-fun e!31182 () Int)

(assert (=> d!50674 (= lt!10721 e!31182)))

(declare-fun c!12558 () Bool)

(assert (=> d!50674 (= c!12558 (is-Nil!465 l2!329))))

(assert (=> d!50674 (= (size!17 l2!329) lt!10721)))

(declare-fun b!58588 () Bool)

(assert (=> b!58588 (= e!31182 0)))

(declare-fun b!58589 () Bool)

(assert (=> b!58589 (= e!31182 (+ 1 (size!17 (tail!763 l2!329))))))

(assert (= (and d!50674 c!12558) b!58588))

(assert (= (and d!50674 (not c!12558)) b!58589))

(declare-fun m!63162 () Bool)

(assert (=> b!58589 m!63162))

(assert (=> start!8320 d!50674))

(push 1)

(assert (not b!58583))

(assert (not b!58589))

(assert (not b!58585))

(assert (not b!58587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

