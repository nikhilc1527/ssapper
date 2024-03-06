; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8324 () Bool)

(assert start!8324)

(declare-fun res!27169 () Bool)

(declare-fun e!31185 () Bool)

(assert (=> start!8324 (=> (not res!27169) (not e!31185))))

(declare-datatypes () ((List!491 (Cons!465 (head!738 (_ BitVec 32)) (tail!764 List!491)) (Nil!466))))

(declare-fun l1!336 () List!491)

(declare-fun l2!329 () List!491)

(declare-fun size!17 (List!491) Int)

(assert (=> start!8324 (= res!27169 (= (size!17 l1!336) (size!17 l2!329)))))

(assert (=> start!8324 e!31185))

(assert (=> start!8324 true))

(declare-fun b!58594 () Bool)

(declare-fun res!27170 () Bool)

(assert (=> b!58594 (=> (not res!27170) (not e!31185))))

(declare-datatypes () ((IntPair!4 (IP!3 (fst!10 (_ BitVec 32)) (snd!10 (_ BitVec 32))))))

(declare-datatypes () ((IntPairList!3 (IPCons!2 (head!739 IntPair!4) (tail!765 IntPairList!3)) (IPNil!2))))

(declare-fun x$2!308 () IntPairList!3)

(assert (=> b!58594 (= res!27170 (and (is-Nil!466 l1!336) (= x$2!308 IPNil!2)))))

(declare-fun b!58595 () Bool)

(declare-fun iplSize!0 (IntPairList!3) Int)

(assert (=> b!58595 (= e!31185 (not (= (iplSize!0 x$2!308) (size!17 l1!336))))))

(assert (= (and start!8324 res!27169) b!58594))

(assert (= (and b!58594 res!27170) b!58595))

(declare-fun m!63164 () Bool)

(assert (=> start!8324 m!63164))

(declare-fun m!63166 () Bool)

(assert (=> start!8324 m!63166))

(declare-fun m!63168 () Bool)

(assert (=> b!58595 m!63168))

(assert (=> b!58595 m!63164))

(push 1)

(assert (not b!58595))

(assert (not start!8324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50676 () Bool)

(declare-fun lt!10724 () Int)

(assert (=> d!50676 (>= lt!10724 0)))

(declare-fun e!31188 () Int)

(assert (=> d!50676 (= lt!10724 e!31188)))

(declare-fun c!12561 () Bool)

(assert (=> d!50676 (= c!12561 (is-IPNil!2 x$2!308))))

(assert (=> d!50676 (= (iplSize!0 x$2!308) lt!10724)))

(declare-fun b!58600 () Bool)

(assert (=> b!58600 (= e!31188 0)))

(declare-fun b!58601 () Bool)

(assert (=> b!58601 (= e!31188 (+ 1 (iplSize!0 (tail!765 x$2!308))))))

(assert (= (and d!50676 c!12561) b!58600))

(assert (= (and d!50676 (not c!12561)) b!58601))

(declare-fun m!63170 () Bool)

(assert (=> b!58601 m!63170))

(assert (=> b!58595 d!50676))

(declare-fun d!50678 () Bool)

(declare-fun lt!10727 () Int)

(assert (=> d!50678 (>= lt!10727 0)))

(declare-fun e!31191 () Int)

(assert (=> d!50678 (= lt!10727 e!31191)))

(declare-fun c!12564 () Bool)

(assert (=> d!50678 (= c!12564 (is-Nil!466 l1!336))))

(assert (=> d!50678 (= (size!17 l1!336) lt!10727)))

(declare-fun b!58606 () Bool)

(assert (=> b!58606 (= e!31191 0)))

(declare-fun b!58607 () Bool)

(assert (=> b!58607 (= e!31191 (+ 1 (size!17 (tail!764 l1!336))))))

(assert (= (and d!50678 c!12564) b!58606))

(assert (= (and d!50678 (not c!12564)) b!58607))

(declare-fun m!63172 () Bool)

(assert (=> b!58607 m!63172))

(assert (=> b!58595 d!50678))

(assert (=> start!8324 d!50678))

(declare-fun d!50680 () Bool)

(declare-fun lt!10728 () Int)

(assert (=> d!50680 (>= lt!10728 0)))

(declare-fun e!31192 () Int)

(assert (=> d!50680 (= lt!10728 e!31192)))

(declare-fun c!12565 () Bool)

(assert (=> d!50680 (= c!12565 (is-Nil!466 l2!329))))

(assert (=> d!50680 (= (size!17 l2!329) lt!10728)))

(declare-fun b!58608 () Bool)

(assert (=> b!58608 (= e!31192 0)))

(declare-fun b!58609 () Bool)

(assert (=> b!58609 (= e!31192 (+ 1 (size!17 (tail!764 l2!329))))))

(assert (= (and d!50680 c!12565) b!58608))

(assert (= (and d!50680 (not c!12565)) b!58609))

(declare-fun m!63174 () Bool)

(assert (=> b!58609 m!63174))

(assert (=> start!8324 d!50680))

(push 1)

(assert (not b!58601))

(assert (not b!58607))

(assert (not b!58609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

