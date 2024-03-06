; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8528 () Bool)

(assert start!8528)

(declare-fun res!27560 () Bool)

(declare-fun e!31576 () Bool)

(assert (=> start!8528 (=> (not res!27560) (not e!31576))))

(declare-fun s!1846 () Int)

(declare-datatypes () ((List!522 (Cons!488 (head!819 (_ BitVec 32)) (tail!845 List!522)) (Nil!489))))

(declare-fun in!15 () List!522)

(declare-fun size!16 (List!522) Int)

(assert (=> start!8528 (= res!27560 (= s!1846 (size!16 in!15)))))

(assert (=> start!8528 e!31576))

(assert (=> start!8528 true))

(declare-fun b!59340 () Bool)

(declare-fun res!27556 () Bool)

(assert (=> b!59340 (=> (not res!27556) (not e!31576))))

(declare-fun s1!51 () List!522)

(declare-fun res!27419 () List!522)

(declare-fun s2!50 () List!522)

(declare-fun mergeFast!0 (List!522 List!522) List!522)

(declare-fun weirdSort!0 (Int List!522) List!522)

(assert (=> b!59340 (= res!27556 (= res!27419 (mergeFast!0 (weirdSort!0 (size!16 s1!51) s1!51) (weirdSort!0 (size!16 s2!50) s2!50))))))

(declare-fun b!59341 () Bool)

(declare-fun res!27558 () Bool)

(assert (=> b!59341 (=> (not res!27558) (not e!31576))))

(assert (=> b!59341 (= res!27558 (and (not (is-Nil!489 in!15)) (not (is-Nil!489 (tail!845 in!15)))))))

(declare-fun b!59342 () Bool)

(declare-fun res!27557 () Bool)

(assert (=> b!59342 (=> (not res!27557) (not e!31576))))

(declare-datatypes () ((tuple2!296 (tuple2!297 (_1!175 List!522) (_2!175 List!522)))))

(declare-fun x$5!66 () tuple2!296)

(declare-fun split!2 (List!522) tuple2!296)

(assert (=> b!59342 (= res!27557 (= x$5!66 (split!2 in!15)))))

(declare-fun b!59343 () Bool)

(declare-fun res!27559 () Bool)

(assert (=> b!59343 (=> (not res!27559) (not e!31576))))

(assert (=> b!59343 (= res!27559 (and (= s1!51 (_1!175 x$5!66)) (= s2!50 (_2!175 x$5!66))))))

(declare-fun b!59344 () Bool)

(declare-fun sortSpec!0 (List!522 List!522) Bool)

(assert (=> b!59344 (= e!31576 (not (sortSpec!0 in!15 res!27419)))))

(assert (= (and start!8528 res!27560) b!59341))

(assert (= (and b!59341 res!27558) b!59342))

(assert (= (and b!59342 res!27557) b!59343))

(assert (= (and b!59343 res!27559) b!59340))

(assert (= (and b!59340 res!27556) b!59344))

(declare-fun m!64138 () Bool)

(assert (=> start!8528 m!64138))

(declare-fun m!64140 () Bool)

(assert (=> b!59340 m!64140))

(declare-fun m!64142 () Bool)

(assert (=> b!59340 m!64142))

(declare-fun m!64144 () Bool)

(assert (=> b!59340 m!64144))

(declare-fun m!64146 () Bool)

(assert (=> b!59340 m!64146))

(assert (=> b!59340 m!64146))

(assert (=> b!59340 m!64142))

(declare-fun m!64148 () Bool)

(assert (=> b!59340 m!64148))

(assert (=> b!59340 m!64148))

(assert (=> b!59340 m!64140))

(declare-fun m!64150 () Bool)

(assert (=> b!59342 m!64150))

(declare-fun m!64152 () Bool)

(assert (=> b!59344 m!64152))

(push 1)

(assert (not start!8528))

(assert (not b!59340))

(assert (not b!59342))

(assert (not b!59344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51049 () Bool)

(declare-fun lt!10938 () Int)

(assert (=> d!51049 (>= lt!10938 0)))

(declare-fun e!31579 () Int)

(assert (=> d!51049 (= lt!10938 e!31579)))

(declare-fun c!12825 () Bool)

(assert (=> d!51049 (= c!12825 (is-Nil!489 in!15))))

(assert (=> d!51049 (= (size!16 in!15) lt!10938)))

(declare-fun b!59349 () Bool)

(assert (=> b!59349 (= e!31579 0)))

(declare-fun b!59350 () Bool)

(assert (=> b!59350 (= e!31579 (+ 1 (size!16 (tail!845 in!15))))))

(assert (= (and d!51049 c!12825) b!59349))

(assert (= (and d!51049 (not c!12825)) b!59350))

(declare-fun m!64154 () Bool)

(assert (=> b!59350 m!64154))

(assert (=> start!8528 d!51049))

(declare-fun d!51051 () Bool)

(declare-fun lt!10946 () List!522)

(declare-fun mergeSpec!0 (List!522 List!522 List!522) Bool)

(assert (=> d!51051 (mergeSpec!0 (weirdSort!0 (size!16 s1!51) s1!51) (weirdSort!0 (size!16 s2!50) s2!50) lt!10946)))

(declare-fun e!31588 () List!522)

(assert (=> d!51051 (= lt!10946 e!31588)))

(declare-fun c!12831 () Bool)

(assert (=> d!51051 (= c!12831 (is-Nil!489 (weirdSort!0 (size!16 s2!50) s2!50)))))

(declare-fun e!31586 () Bool)

(assert (=> d!51051 e!31586))

(declare-fun res!27567 () Bool)

(assert (=> d!51051 (=> (not res!27567) (not e!31586))))

(declare-fun isSorted!4 (List!522) Bool)

(assert (=> d!51051 (= res!27567 (isSorted!4 (weirdSort!0 (size!16 s1!51) s1!51)))))

(assert (=> d!51051 (= (mergeFast!0 (weirdSort!0 (size!16 s1!51) s1!51) (weirdSort!0 (size!16 s2!50) s2!50)) lt!10946)))

(declare-fun b!59361 () Bool)

(declare-fun lt!10945 () Bool)

(declare-fun lt!10947 () List!522)

(declare-fun e!31587 () List!522)

(assert (=> b!59361 (= e!31587 (ite lt!10945 (Cons!488 (head!819 (weirdSort!0 (size!16 s1!51) s1!51)) lt!10947) (Cons!488 (head!819 (weirdSort!0 (size!16 s2!50) s2!50)) lt!10947)))))

(assert (=> b!59361 (= lt!10947 (mergeFast!0 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51)) (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))))))

(assert (=> b!59361 (= lt!10945 (bvsle (head!819 (weirdSort!0 (size!16 s1!51) s1!51)) (head!819 (weirdSort!0 (size!16 s2!50) s2!50))))))

(declare-fun b!59362 () Bool)

(assert (=> b!59362 (= e!31587 (weirdSort!0 (size!16 s2!50) s2!50))))

(declare-fun b!59363 () Bool)

(assert (=> b!59363 (= e!31588 (weirdSort!0 (size!16 s1!51) s1!51))))

(declare-fun b!59364 () Bool)

(assert (=> b!59364 (= e!31588 e!31587)))

(declare-fun c!12830 () Bool)

(assert (=> b!59364 (= c!12830 (is-Nil!489 (weirdSort!0 (size!16 s1!51) s1!51)))))

(declare-fun b!59365 () Bool)

(assert (=> b!59365 (= e!31586 (isSorted!4 (weirdSort!0 (size!16 s2!50) s2!50)))))

(assert (= (and d!51051 res!27567) b!59365))

(assert (= (and b!59364 c!12830) b!59362))

(assert (= (and b!59364 (not c!12830)) b!59361))

(assert (= (and d!51051 c!12831) b!59363))

(assert (= (and d!51051 (not c!12831)) b!59364))

(assert (=> d!51051 m!64140))

(assert (=> d!51051 m!64142))

(declare-fun m!64156 () Bool)

(assert (=> d!51051 m!64156))

(assert (=> d!51051 m!64140))

(declare-fun m!64158 () Bool)

(assert (=> d!51051 m!64158))

(declare-fun m!64160 () Bool)

(assert (=> b!59361 m!64160))

(assert (=> b!59365 m!64142))

(declare-fun m!64162 () Bool)

(assert (=> b!59365 m!64162))

(assert (=> b!59340 d!51051))

(declare-fun d!51053 () Bool)

(declare-fun lt!10948 () Int)

(assert (=> d!51053 (>= lt!10948 0)))

(declare-fun e!31589 () Int)

(assert (=> d!51053 (= lt!10948 e!31589)))

(declare-fun c!12832 () Bool)

(assert (=> d!51053 (= c!12832 (is-Nil!489 s2!50))))

(assert (=> d!51053 (= (size!16 s2!50) lt!10948)))

(declare-fun b!59366 () Bool)

(assert (=> b!59366 (= e!31589 0)))

(declare-fun b!59367 () Bool)

(assert (=> b!59367 (= e!31589 (+ 1 (size!16 (tail!845 s2!50))))))

(assert (= (and d!51053 c!12832) b!59366))

(assert (= (and d!51053 (not c!12832)) b!59367))

(declare-fun m!64164 () Bool)

(assert (=> b!59367 m!64164))

(assert (=> b!59340 d!51053))

(declare-fun d!51055 () Bool)

(declare-fun lt!10949 () Int)

(assert (=> d!51055 (>= lt!10949 0)))

(declare-fun e!31590 () Int)

(assert (=> d!51055 (= lt!10949 e!31590)))

(declare-fun c!12833 () Bool)

(assert (=> d!51055 (= c!12833 (is-Nil!489 s1!51))))

(assert (=> d!51055 (= (size!16 s1!51) lt!10949)))

(declare-fun b!59368 () Bool)

(assert (=> b!59368 (= e!31590 0)))

(declare-fun b!59369 () Bool)

(assert (=> b!59369 (= e!31590 (+ 1 (size!16 (tail!845 s1!51))))))

(assert (= (and d!51055 c!12833) b!59368))

(assert (= (and d!51055 (not c!12833)) b!59369))

(declare-fun m!64166 () Bool)

(assert (=> b!59369 m!64166))

(assert (=> b!59340 d!51055))

(declare-fun b!59378 () Bool)

(declare-fun e!31595 () List!522)

(assert (=> b!59378 (= e!31595 Nil!489)))

(declare-fun b!59380 () Bool)

(declare-fun e!31596 () List!522)

(assert (=> b!59380 (= e!31596 (Cons!488 (head!819 s2!50) Nil!489))))

(declare-fun b!59381 () Bool)

(declare-fun lt!10963 () List!522)

(declare-fun lt!10962 () List!522)

(assert (=> b!59381 (= e!31596 (mergeFast!0 (weirdSort!0 (size!16 lt!10963) lt!10963) (weirdSort!0 (size!16 lt!10962) lt!10962)))))

(declare-fun lt!10961 () tuple2!296)

(assert (=> b!59381 (= lt!10962 (_2!175 lt!10961))))

(declare-fun lt!10964 () tuple2!296)

(assert (=> b!59381 (= lt!10963 (_1!175 lt!10964))))

(assert (=> b!59381 (= lt!10961 (split!2 s2!50))))

(assert (=> b!59381 (= lt!10964 (split!2 s2!50))))

(declare-fun b!59379 () Bool)

(assert (=> b!59379 (= e!31595 e!31596)))

(declare-fun c!12839 () Bool)

(assert (=> b!59379 (= c!12839 (and (is-Cons!488 s2!50) (is-Nil!489 (tail!845 s2!50))))))

(declare-fun d!51057 () Bool)

(declare-fun lt!10960 () List!522)

(assert (=> d!51057 (sortSpec!0 s2!50 lt!10960)))

(assert (=> d!51057 (= lt!10960 e!31595)))

(declare-fun c!12838 () Bool)

(assert (=> d!51057 (= c!12838 (is-Nil!489 s2!50))))

(assert (=> d!51057 (= (size!16 s2!50) (size!16 s2!50))))

(assert (=> d!51057 (= (weirdSort!0 (size!16 s2!50) s2!50) lt!10960)))

(assert (= (and b!59379 c!12839) b!59380))

(assert (= (and b!59379 (not c!12839)) b!59381))

(assert (= (and d!51057 c!12838) b!59378))

(assert (= (and d!51057 (not c!12838)) b!59379))

(declare-fun m!64168 () Bool)

(assert (=> b!59381 m!64168))

(declare-fun m!64170 () Bool)

(assert (=> b!59381 m!64170))

(declare-fun m!64172 () Bool)

(assert (=> b!59381 m!64172))

(assert (=> b!59381 m!64168))

(declare-fun m!64174 () Bool)

(assert (=> b!59381 m!64174))

(declare-fun m!64176 () Bool)

(assert (=> b!59381 m!64176))

(assert (=> b!59381 m!64170))

(declare-fun m!64178 () Bool)

(assert (=> b!59381 m!64178))

(assert (=> b!59381 m!64174))

(assert (=> b!59381 m!64176))

(declare-fun m!64180 () Bool)

(assert (=> d!51057 m!64180))

(assert (=> d!51057 m!64146))

(assert (=> b!59340 d!51057))

(declare-fun b!59382 () Bool)

(declare-fun e!31597 () List!522)

(assert (=> b!59382 (= e!31597 Nil!489)))

(declare-fun b!59384 () Bool)

(declare-fun e!31598 () List!522)

(assert (=> b!59384 (= e!31598 (Cons!488 (head!819 s1!51) Nil!489))))

(declare-fun b!59385 () Bool)

(declare-fun lt!10968 () List!522)

(declare-fun lt!10967 () List!522)

(assert (=> b!59385 (= e!31598 (mergeFast!0 (weirdSort!0 (size!16 lt!10968) lt!10968) (weirdSort!0 (size!16 lt!10967) lt!10967)))))

(declare-fun lt!10966 () tuple2!296)

(assert (=> b!59385 (= lt!10967 (_2!175 lt!10966))))

(declare-fun lt!10969 () tuple2!296)

(assert (=> b!59385 (= lt!10968 (_1!175 lt!10969))))

(assert (=> b!59385 (= lt!10966 (split!2 s1!51))))

(assert (=> b!59385 (= lt!10969 (split!2 s1!51))))

(declare-fun b!59383 () Bool)

(assert (=> b!59383 (= e!31597 e!31598)))

(declare-fun c!12841 () Bool)

(assert (=> b!59383 (= c!12841 (and (is-Cons!488 s1!51) (is-Nil!489 (tail!845 s1!51))))))

(declare-fun d!51059 () Bool)

(declare-fun lt!10965 () List!522)

(assert (=> d!51059 (sortSpec!0 s1!51 lt!10965)))

(assert (=> d!51059 (= lt!10965 e!31597)))

(declare-fun c!12840 () Bool)

(assert (=> d!51059 (= c!12840 (is-Nil!489 s1!51))))

(assert (=> d!51059 (= (size!16 s1!51) (size!16 s1!51))))

(assert (=> d!51059 (= (weirdSort!0 (size!16 s1!51) s1!51) lt!10965)))

(assert (= (and b!59383 c!12841) b!59384))

(assert (= (and b!59383 (not c!12841)) b!59385))

(assert (= (and d!51059 c!12840) b!59382))

(assert (= (and d!51059 (not c!12840)) b!59383))

(declare-fun m!64182 () Bool)

(assert (=> b!59385 m!64182))

(declare-fun m!64184 () Bool)

(assert (=> b!59385 m!64184))

(declare-fun m!64186 () Bool)

(assert (=> b!59385 m!64186))

(assert (=> b!59385 m!64182))

(declare-fun m!64188 () Bool)

(assert (=> b!59385 m!64188))

(declare-fun m!64190 () Bool)

(assert (=> b!59385 m!64190))

(assert (=> b!59385 m!64184))

(declare-fun m!64192 () Bool)

(assert (=> b!59385 m!64192))

(assert (=> b!59385 m!64188))

(assert (=> b!59385 m!64190))

(declare-fun m!64194 () Bool)

(assert (=> d!51059 m!64194))

(assert (=> d!51059 m!64148))

(assert (=> b!59340 d!51059))

(declare-fun b!59394 () Bool)

(declare-fun e!31603 () tuple2!296)

(assert (=> b!59394 (= e!31603 (tuple2!297 Nil!489 Nil!489))))

(declare-fun b!59397 () Bool)

(declare-fun e!31604 () tuple2!296)

(assert (=> b!59397 (= e!31604 (tuple2!297 (Cons!488 (head!819 in!15) (_1!175 (split!2 (tail!845 (tail!845 in!15))))) (Cons!488 (head!819 (tail!845 in!15)) (_2!175 (split!2 (tail!845 (tail!845 in!15)))))))))

(declare-fun d!51061 () Bool)

(declare-fun lt!10972 () tuple2!296)

(declare-fun splitSpec!0 (List!522 tuple2!296) Bool)

(assert (=> d!51061 (splitSpec!0 in!15 lt!10972)))

(assert (=> d!51061 (= lt!10972 e!31603)))

(declare-fun c!12846 () Bool)

(assert (=> d!51061 (= c!12846 (is-Nil!489 in!15))))

(assert (=> d!51061 (= (split!2 in!15) lt!10972)))

(declare-fun b!59396 () Bool)

(assert (=> b!59396 (= e!31604 (tuple2!297 (Cons!488 (head!819 in!15) Nil!489) Nil!489))))

(declare-fun b!59395 () Bool)

(assert (=> b!59395 (= e!31603 e!31604)))

(declare-fun c!12847 () Bool)

(assert (=> b!59395 (= c!12847 (and (is-Cons!488 in!15) (is-Nil!489 (tail!845 in!15))))))

(assert (= (and b!59395 c!12847) b!59396))

(assert (= (and b!59395 (not c!12847)) b!59397))

(assert (= (and d!51061 c!12846) b!59394))

(assert (= (and d!51061 (not c!12846)) b!59395))

(declare-fun m!64196 () Bool)

(assert (=> b!59397 m!64196))

(declare-fun m!64198 () Bool)

(assert (=> d!51061 m!64198))

(assert (=> b!59342 d!51061))

(declare-fun d!51063 () Bool)

(declare-fun res!27572 () Bool)

(declare-fun e!31607 () Bool)

(assert (=> d!51063 (=> (not res!27572) (not e!31607))))

(declare-fun content!15 (List!522) (Set (_ BitVec 32)))

(assert (=> d!51063 (= res!27572 (= (content!15 res!27419) (content!15 in!15)))))

(assert (=> d!51063 (= (sortSpec!0 in!15 res!27419) e!31607)))

(declare-fun b!59400 () Bool)

(assert (=> b!59400 (= e!31607 (isSorted!4 res!27419))))

(assert (= (and d!51063 res!27572) b!59400))

(declare-fun m!64200 () Bool)

(assert (=> d!51063 m!64200))

(declare-fun m!64202 () Bool)

(assert (=> d!51063 m!64202))

(declare-fun m!64204 () Bool)

(assert (=> b!59400 m!64204))

(assert (=> b!59344 d!51063))

(push 1)

(assert (not d!51057))

(assert (not d!51051))

(assert (not b!59365))

(assert (not d!51061))

(assert (not b!59361))

(assert (not b!59350))

(assert (not b!59381))

(assert (not b!59367))

(assert (not b!59385))

(assert (not d!51063))

(assert (not b!59369))

(assert (not d!51059))

(assert (not b!59397))

(assert (not b!59400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!51065 () Bool)

(declare-fun res!27577 () Bool)

(declare-fun e!31612 () Bool)

(assert (=> d!51065 (=> res!27577 e!31612)))

(assert (=> d!51065 (= res!27577 (or (is-Nil!489 res!27419) (and (is-Cons!488 res!27419) (is-Nil!489 (tail!845 res!27419)))))))

(assert (=> d!51065 (= (isSorted!4 res!27419) e!31612)))

(declare-fun b!59405 () Bool)

(declare-fun e!31613 () Bool)

(assert (=> b!59405 (= e!31612 e!31613)))

(declare-fun res!27578 () Bool)

(assert (=> b!59405 (=> (not res!27578) (not e!31613))))

(assert (=> b!59405 (= res!27578 (not (and (is-Cons!488 res!27419) (is-Cons!488 (tail!845 res!27419)) (bvsgt (head!819 res!27419) (head!819 (tail!845 res!27419))))))))

(declare-fun b!59406 () Bool)

(assert (=> b!59406 (= e!31613 (isSorted!4 (tail!845 res!27419)))))

(assert (= (and d!51065 (not res!27577)) b!59405))

(assert (= (and b!59405 res!27578) b!59406))

(declare-fun m!64206 () Bool)

(assert (=> b!59406 m!64206))

(assert (=> b!59400 d!51065))

(declare-fun b!59407 () Bool)

(declare-fun e!31614 () tuple2!296)

(assert (=> b!59407 (= e!31614 (tuple2!297 Nil!489 Nil!489))))

(declare-fun b!59410 () Bool)

(declare-fun e!31615 () tuple2!296)

(assert (=> b!59410 (= e!31615 (tuple2!297 (Cons!488 (head!819 (tail!845 (tail!845 in!15))) (_1!175 (split!2 (tail!845 (tail!845 (tail!845 (tail!845 in!15))))))) (Cons!488 (head!819 (tail!845 (tail!845 (tail!845 in!15)))) (_2!175 (split!2 (tail!845 (tail!845 (tail!845 (tail!845 in!15)))))))))))

(declare-fun d!51067 () Bool)

(declare-fun lt!10973 () tuple2!296)

(assert (=> d!51067 (splitSpec!0 (tail!845 (tail!845 in!15)) lt!10973)))

(assert (=> d!51067 (= lt!10973 e!31614)))

(declare-fun c!12848 () Bool)

(assert (=> d!51067 (= c!12848 (is-Nil!489 (tail!845 (tail!845 in!15))))))

(assert (=> d!51067 (= (split!2 (tail!845 (tail!845 in!15))) lt!10973)))

(declare-fun b!59409 () Bool)

(assert (=> b!59409 (= e!31615 (tuple2!297 (Cons!488 (head!819 (tail!845 (tail!845 in!15))) Nil!489) Nil!489))))

(declare-fun b!59408 () Bool)

(assert (=> b!59408 (= e!31614 e!31615)))

(declare-fun c!12849 () Bool)

(assert (=> b!59408 (= c!12849 (and (is-Cons!488 (tail!845 (tail!845 in!15))) (is-Nil!489 (tail!845 (tail!845 (tail!845 in!15))))))))

(assert (= (and b!59408 c!12849) b!59409))

(assert (= (and b!59408 (not c!12849)) b!59410))

(assert (= (and d!51067 c!12848) b!59407))

(assert (= (and d!51067 (not c!12848)) b!59408))

(declare-fun m!64208 () Bool)

(assert (=> b!59410 m!64208))

(declare-fun m!64210 () Bool)

(assert (=> d!51067 m!64210))

(assert (=> b!59397 d!51067))

(declare-fun lt!10975 () List!522)

(declare-fun d!51069 () Bool)

(assert (=> d!51069 (mergeSpec!0 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51)) (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))) lt!10975)))

(declare-fun e!31618 () List!522)

(assert (=> d!51069 (= lt!10975 e!31618)))

(declare-fun c!12851 () Bool)

(assert (=> d!51069 (= c!12851 (is-Nil!489 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))))))

(declare-fun e!31616 () Bool)

(assert (=> d!51069 e!31616))

(declare-fun res!27579 () Bool)

(assert (=> d!51069 (=> (not res!27579) (not e!31616))))

(assert (=> d!51069 (= res!27579 (isSorted!4 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51))))))

(assert (=> d!51069 (= (mergeFast!0 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51)) (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))) lt!10975)))

(declare-fun lt!10974 () Bool)

(declare-fun lt!10976 () List!522)

(declare-fun e!31617 () List!522)

(declare-fun b!59411 () Bool)

(assert (=> b!59411 (= e!31617 (ite lt!10974 (Cons!488 (head!819 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51))) lt!10976) (Cons!488 (head!819 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))) lt!10976)))))

(assert (=> b!59411 (= lt!10976 (mergeFast!0 (ite lt!10974 (tail!845 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51))) (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51))) (ite lt!10974 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))) (tail!845 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))))))))

(assert (=> b!59411 (= lt!10974 (bvsle (head!819 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51))) (head!819 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))))))))

(declare-fun b!59412 () Bool)

(assert (=> b!59412 (= e!31617 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))))))

(declare-fun b!59413 () Bool)

(assert (=> b!59413 (= e!31618 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51)))))

(declare-fun b!59414 () Bool)

(assert (=> b!59414 (= e!31618 e!31617)))

(declare-fun c!12850 () Bool)

(assert (=> b!59414 (= c!12850 (is-Nil!489 (ite lt!10945 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)) (weirdSort!0 (size!16 s1!51) s1!51))))))

(declare-fun b!59415 () Bool)

(assert (=> b!59415 (= e!31616 (isSorted!4 (ite lt!10945 (weirdSort!0 (size!16 s2!50) s2!50) (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))))))

(assert (= (and d!51069 res!27579) b!59415))

(assert (= (and b!59414 c!12850) b!59412))

(assert (= (and b!59414 (not c!12850)) b!59411))

(assert (= (and d!51069 c!12851) b!59413))

(assert (= (and d!51069 (not c!12851)) b!59414))

(declare-fun m!64212 () Bool)

(assert (=> d!51069 m!64212))

(declare-fun m!64214 () Bool)

(assert (=> d!51069 m!64214))

(declare-fun m!64216 () Bool)

(assert (=> b!59411 m!64216))

(declare-fun m!64218 () Bool)

(assert (=> b!59415 m!64218))

(assert (=> b!59361 d!51069))

(declare-fun d!51071 () Bool)

(declare-fun lt!10977 () Int)

(assert (=> d!51071 (>= lt!10977 0)))

(declare-fun e!31619 () Int)

(assert (=> d!51071 (= lt!10977 e!31619)))

(declare-fun c!12852 () Bool)

(assert (=> d!51071 (= c!12852 (is-Nil!489 (tail!845 s1!51)))))

(assert (=> d!51071 (= (size!16 (tail!845 s1!51)) lt!10977)))

(declare-fun b!59416 () Bool)

(assert (=> b!59416 (= e!31619 0)))

(declare-fun b!59417 () Bool)

(assert (=> b!59417 (= e!31619 (+ 1 (size!16 (tail!845 (tail!845 s1!51)))))))

(assert (= (and d!51071 c!12852) b!59416))

(assert (= (and d!51071 (not c!12852)) b!59417))

(declare-fun m!64220 () Bool)

(assert (=> b!59417 m!64220))

(assert (=> b!59369 d!51071))

(declare-fun d!51073 () Bool)

(declare-fun res!27586 () Bool)

(declare-fun e!31622 () Bool)

(assert (=> d!51073 (=> (not res!27586) (not e!31622))))

(declare-fun lt!10982 () Int)

(declare-fun lt!10983 () Int)

(declare-fun abs!3 (Int) Int)

(assert (=> d!51073 (= res!27586 (<= (abs!3 (- lt!10982 lt!10983)) 1))))

(assert (=> d!51073 (= lt!10983 (size!16 (_2!175 lt!10972)))))

(assert (=> d!51073 (= lt!10982 (size!16 (_1!175 lt!10972)))))

(assert (=> d!51073 (= (splitSpec!0 in!15 lt!10972) e!31622)))

(declare-fun b!59422 () Bool)

(declare-fun res!27585 () Bool)

(assert (=> b!59422 (=> (not res!27585) (not e!31622))))

(assert (=> b!59422 (= res!27585 (= (+ lt!10982 lt!10983) (size!16 in!15)))))

(declare-fun b!59423 () Bool)

(assert (=> b!59423 (= e!31622 (= (union (content!15 (_1!175 lt!10972)) (content!15 (_2!175 lt!10972))) (content!15 in!15)))))

(assert (= (and d!51073 res!27586) b!59422))

(assert (= (and b!59422 res!27585) b!59423))

(declare-fun m!64222 () Bool)

(assert (=> d!51073 m!64222))

(declare-fun m!64224 () Bool)

(assert (=> d!51073 m!64224))

(declare-fun m!64226 () Bool)

(assert (=> d!51073 m!64226))

(assert (=> b!59422 m!64138))

(declare-fun m!64228 () Bool)

(assert (=> b!59423 m!64228))

(declare-fun m!64230 () Bool)

(assert (=> b!59423 m!64230))

(assert (=> b!59423 m!64202))

(assert (=> d!51061 d!51073))

(declare-fun d!51075 () Bool)

(declare-fun res!27587 () Bool)

(declare-fun e!31623 () Bool)

(assert (=> d!51075 (=> (not res!27587) (not e!31623))))

(assert (=> d!51075 (= res!27587 (= (content!15 lt!10965) (content!15 s1!51)))))

(assert (=> d!51075 (= (sortSpec!0 s1!51 lt!10965) e!31623)))

(declare-fun b!59424 () Bool)

(assert (=> b!59424 (= e!31623 (isSorted!4 lt!10965))))

(assert (= (and d!51075 res!27587) b!59424))

(declare-fun m!64232 () Bool)

(assert (=> d!51075 m!64232))

(declare-fun m!64234 () Bool)

(assert (=> d!51075 m!64234))

(declare-fun m!64236 () Bool)

(assert (=> b!59424 m!64236))

(assert (=> d!51059 d!51075))

(assert (=> d!51059 d!51055))

(declare-fun d!51077 () Bool)

(declare-fun lt!10984 () Int)

(assert (=> d!51077 (>= lt!10984 0)))

(declare-fun e!31624 () Int)

(assert (=> d!51077 (= lt!10984 e!31624)))

(declare-fun c!12853 () Bool)

(assert (=> d!51077 (= c!12853 (is-Nil!489 lt!10963))))

(assert (=> d!51077 (= (size!16 lt!10963) lt!10984)))

(declare-fun b!59425 () Bool)

(assert (=> b!59425 (= e!31624 0)))

(declare-fun b!59426 () Bool)

(assert (=> b!59426 (= e!31624 (+ 1 (size!16 (tail!845 lt!10963))))))

(assert (= (and d!51077 c!12853) b!59425))

(assert (= (and d!51077 (not c!12853)) b!59426))

(declare-fun m!64238 () Bool)

(assert (=> b!59426 m!64238))

(assert (=> b!59381 d!51077))

(declare-fun b!59427 () Bool)

(declare-fun e!31625 () tuple2!296)

(assert (=> b!59427 (= e!31625 (tuple2!297 Nil!489 Nil!489))))

(declare-fun b!59430 () Bool)

(declare-fun e!31626 () tuple2!296)

(assert (=> b!59430 (= e!31626 (tuple2!297 (Cons!488 (head!819 s2!50) (_1!175 (split!2 (tail!845 (tail!845 s2!50))))) (Cons!488 (head!819 (tail!845 s2!50)) (_2!175 (split!2 (tail!845 (tail!845 s2!50)))))))))

(declare-fun d!51079 () Bool)

(declare-fun lt!10985 () tuple2!296)

(assert (=> d!51079 (splitSpec!0 s2!50 lt!10985)))

(assert (=> d!51079 (= lt!10985 e!31625)))

(declare-fun c!12854 () Bool)

(assert (=> d!51079 (= c!12854 (is-Nil!489 s2!50))))

(assert (=> d!51079 (= (split!2 s2!50) lt!10985)))

(declare-fun b!59429 () Bool)

(assert (=> b!59429 (= e!31626 (tuple2!297 (Cons!488 (head!819 s2!50) Nil!489) Nil!489))))

(declare-fun b!59428 () Bool)

(assert (=> b!59428 (= e!31625 e!31626)))

(declare-fun c!12855 () Bool)

(assert (=> b!59428 (= c!12855 (and (is-Cons!488 s2!50) (is-Nil!489 (tail!845 s2!50))))))

(assert (= (and b!59428 c!12855) b!59429))

(assert (= (and b!59428 (not c!12855)) b!59430))

(assert (= (and d!51079 c!12854) b!59427))

(assert (= (and d!51079 (not c!12854)) b!59428))

(declare-fun m!64240 () Bool)

(assert (=> b!59430 m!64240))

(declare-fun m!64242 () Bool)

(assert (=> d!51079 m!64242))

(assert (=> b!59381 d!51079))

(declare-fun d!51081 () Bool)

(declare-fun lt!10986 () Int)

(assert (=> d!51081 (>= lt!10986 0)))

(declare-fun e!31627 () Int)

(assert (=> d!51081 (= lt!10986 e!31627)))

(declare-fun c!12856 () Bool)

(assert (=> d!51081 (= c!12856 (is-Nil!489 lt!10962))))

(assert (=> d!51081 (= (size!16 lt!10962) lt!10986)))

(declare-fun b!59431 () Bool)

(assert (=> b!59431 (= e!31627 0)))

(declare-fun b!59432 () Bool)

(assert (=> b!59432 (= e!31627 (+ 1 (size!16 (tail!845 lt!10962))))))

(assert (= (and d!51081 c!12856) b!59431))

(assert (= (and d!51081 (not c!12856)) b!59432))

(declare-fun m!64244 () Bool)

(assert (=> b!59432 m!64244))

(assert (=> b!59381 d!51081))

(declare-fun d!51083 () Bool)

(declare-fun lt!10988 () List!522)

(assert (=> d!51083 (mergeSpec!0 (weirdSort!0 (size!16 lt!10963) lt!10963) (weirdSort!0 (size!16 lt!10962) lt!10962) lt!10988)))

(declare-fun e!31630 () List!522)

(assert (=> d!51083 (= lt!10988 e!31630)))

(declare-fun c!12858 () Bool)

(assert (=> d!51083 (= c!12858 (is-Nil!489 (weirdSort!0 (size!16 lt!10962) lt!10962)))))

(declare-fun e!31628 () Bool)

(assert (=> d!51083 e!31628))

(declare-fun res!27588 () Bool)

(assert (=> d!51083 (=> (not res!27588) (not e!31628))))

(assert (=> d!51083 (= res!27588 (isSorted!4 (weirdSort!0 (size!16 lt!10963) lt!10963)))))

(assert (=> d!51083 (= (mergeFast!0 (weirdSort!0 (size!16 lt!10963) lt!10963) (weirdSort!0 (size!16 lt!10962) lt!10962)) lt!10988)))

(declare-fun lt!10989 () List!522)

(declare-fun e!31629 () List!522)

(declare-fun b!59433 () Bool)

(declare-fun lt!10987 () Bool)

(assert (=> b!59433 (= e!31629 (ite lt!10987 (Cons!488 (head!819 (weirdSort!0 (size!16 lt!10963) lt!10963)) lt!10989) (Cons!488 (head!819 (weirdSort!0 (size!16 lt!10962) lt!10962)) lt!10989)))))

(assert (=> b!59433 (= lt!10989 (mergeFast!0 (ite lt!10987 (tail!845 (weirdSort!0 (size!16 lt!10963) lt!10963)) (weirdSort!0 (size!16 lt!10963) lt!10963)) (ite lt!10987 (weirdSort!0 (size!16 lt!10962) lt!10962) (tail!845 (weirdSort!0 (size!16 lt!10962) lt!10962)))))))

(assert (=> b!59433 (= lt!10987 (bvsle (head!819 (weirdSort!0 (size!16 lt!10963) lt!10963)) (head!819 (weirdSort!0 (size!16 lt!10962) lt!10962))))))

(declare-fun b!59434 () Bool)

(assert (=> b!59434 (= e!31629 (weirdSort!0 (size!16 lt!10962) lt!10962))))

(declare-fun b!59435 () Bool)

(assert (=> b!59435 (= e!31630 (weirdSort!0 (size!16 lt!10963) lt!10963))))

(declare-fun b!59436 () Bool)

(assert (=> b!59436 (= e!31630 e!31629)))

(declare-fun c!12857 () Bool)

(assert (=> b!59436 (= c!12857 (is-Nil!489 (weirdSort!0 (size!16 lt!10963) lt!10963)))))

(declare-fun b!59437 () Bool)

(assert (=> b!59437 (= e!31628 (isSorted!4 (weirdSort!0 (size!16 lt!10962) lt!10962)))))

(assert (= (and d!51083 res!27588) b!59437))

(assert (= (and b!59436 c!12857) b!59434))

(assert (= (and b!59436 (not c!12857)) b!59433))

(assert (= (and d!51083 c!12858) b!59435))

(assert (= (and d!51083 (not c!12858)) b!59436))

(assert (=> d!51083 m!64176))

(assert (=> d!51083 m!64170))

(declare-fun m!64246 () Bool)

(assert (=> d!51083 m!64246))

(assert (=> d!51083 m!64176))

(declare-fun m!64248 () Bool)

(assert (=> d!51083 m!64248))

(declare-fun m!64250 () Bool)

(assert (=> b!59433 m!64250))

(assert (=> b!59437 m!64170))

(declare-fun m!64252 () Bool)

(assert (=> b!59437 m!64252))

(assert (=> b!59381 d!51083))

(declare-fun b!59438 () Bool)

(declare-fun e!31631 () List!522)

(assert (=> b!59438 (= e!31631 Nil!489)))

(declare-fun b!59440 () Bool)

(declare-fun e!31632 () List!522)

(assert (=> b!59440 (= e!31632 (Cons!488 (head!819 lt!10962) Nil!489))))

(declare-fun b!59441 () Bool)

(declare-fun lt!10993 () List!522)

(declare-fun lt!10992 () List!522)

(assert (=> b!59441 (= e!31632 (mergeFast!0 (weirdSort!0 (size!16 lt!10993) lt!10993) (weirdSort!0 (size!16 lt!10992) lt!10992)))))

(declare-fun lt!10991 () tuple2!296)

(assert (=> b!59441 (= lt!10992 (_2!175 lt!10991))))

(declare-fun lt!10994 () tuple2!296)

(assert (=> b!59441 (= lt!10993 (_1!175 lt!10994))))

(assert (=> b!59441 (= lt!10991 (split!2 lt!10962))))

(assert (=> b!59441 (= lt!10994 (split!2 lt!10962))))

(declare-fun b!59439 () Bool)

(assert (=> b!59439 (= e!31631 e!31632)))

(declare-fun c!12860 () Bool)

(assert (=> b!59439 (= c!12860 (and (is-Cons!488 lt!10962) (is-Nil!489 (tail!845 lt!10962))))))

(declare-fun d!51085 () Bool)

(declare-fun lt!10990 () List!522)

(assert (=> d!51085 (sortSpec!0 lt!10962 lt!10990)))

(assert (=> d!51085 (= lt!10990 e!31631)))

(declare-fun c!12859 () Bool)

(assert (=> d!51085 (= c!12859 (is-Nil!489 lt!10962))))

(assert (=> d!51085 (= (size!16 lt!10962) (size!16 lt!10962))))

(assert (=> d!51085 (= (weirdSort!0 (size!16 lt!10962) lt!10962) lt!10990)))

(assert (= (and b!59439 c!12860) b!59440))

(assert (= (and b!59439 (not c!12860)) b!59441))

(assert (= (and d!51085 c!12859) b!59438))

(assert (= (and d!51085 (not c!12859)) b!59439))

(declare-fun m!64254 () Bool)

(assert (=> b!59441 m!64254))

(declare-fun m!64256 () Bool)

(assert (=> b!59441 m!64256))

(declare-fun m!64258 () Bool)

(assert (=> b!59441 m!64258))

(assert (=> b!59441 m!64254))

(declare-fun m!64260 () Bool)

(assert (=> b!59441 m!64260))

(declare-fun m!64262 () Bool)

(assert (=> b!59441 m!64262))

(assert (=> b!59441 m!64256))

(declare-fun m!64264 () Bool)

(assert (=> b!59441 m!64264))

(assert (=> b!59441 m!64260))

(assert (=> b!59441 m!64262))

(declare-fun m!64266 () Bool)

(assert (=> d!51085 m!64266))

(assert (=> d!51085 m!64168))

(assert (=> b!59381 d!51085))

(declare-fun b!59442 () Bool)

(declare-fun e!31633 () List!522)

(assert (=> b!59442 (= e!31633 Nil!489)))

(declare-fun b!59444 () Bool)

(declare-fun e!31634 () List!522)

(assert (=> b!59444 (= e!31634 (Cons!488 (head!819 lt!10963) Nil!489))))

(declare-fun b!59445 () Bool)

(declare-fun lt!10998 () List!522)

(declare-fun lt!10997 () List!522)

(assert (=> b!59445 (= e!31634 (mergeFast!0 (weirdSort!0 (size!16 lt!10998) lt!10998) (weirdSort!0 (size!16 lt!10997) lt!10997)))))

(declare-fun lt!10996 () tuple2!296)

(assert (=> b!59445 (= lt!10997 (_2!175 lt!10996))))

(declare-fun lt!10999 () tuple2!296)

(assert (=> b!59445 (= lt!10998 (_1!175 lt!10999))))

(assert (=> b!59445 (= lt!10996 (split!2 lt!10963))))

(assert (=> b!59445 (= lt!10999 (split!2 lt!10963))))

(declare-fun b!59443 () Bool)

(assert (=> b!59443 (= e!31633 e!31634)))

(declare-fun c!12862 () Bool)

(assert (=> b!59443 (= c!12862 (and (is-Cons!488 lt!10963) (is-Nil!489 (tail!845 lt!10963))))))

(declare-fun d!51087 () Bool)

(declare-fun lt!10995 () List!522)

(assert (=> d!51087 (sortSpec!0 lt!10963 lt!10995)))

(assert (=> d!51087 (= lt!10995 e!31633)))

(declare-fun c!12861 () Bool)

(assert (=> d!51087 (= c!12861 (is-Nil!489 lt!10963))))

(assert (=> d!51087 (= (size!16 lt!10963) (size!16 lt!10963))))

(assert (=> d!51087 (= (weirdSort!0 (size!16 lt!10963) lt!10963) lt!10995)))

(assert (= (and b!59443 c!12862) b!59444))

(assert (= (and b!59443 (not c!12862)) b!59445))

(assert (= (and d!51087 c!12861) b!59442))

(assert (= (and d!51087 (not c!12861)) b!59443))

(declare-fun m!64268 () Bool)

(assert (=> b!59445 m!64268))

(declare-fun m!64270 () Bool)

(assert (=> b!59445 m!64270))

(declare-fun m!64272 () Bool)

(assert (=> b!59445 m!64272))

(assert (=> b!59445 m!64268))

(declare-fun m!64274 () Bool)

(assert (=> b!59445 m!64274))

(declare-fun m!64276 () Bool)

(assert (=> b!59445 m!64276))

(assert (=> b!59445 m!64270))

(declare-fun m!64278 () Bool)

(assert (=> b!59445 m!64278))

(assert (=> b!59445 m!64274))

(assert (=> b!59445 m!64276))

(declare-fun m!64280 () Bool)

(assert (=> d!51087 m!64280))

(assert (=> d!51087 m!64174))

(assert (=> b!59381 d!51087))

(declare-fun d!51089 () Bool)

(declare-fun res!27592 () Bool)

(declare-fun e!31637 () Bool)

(assert (=> d!51089 (=> (not res!27592) (not e!31637))))

(assert (=> d!51089 (= res!27592 (isSorted!4 lt!10946))))

(assert (=> d!51089 (= (mergeSpec!0 (weirdSort!0 (size!16 s1!51) s1!51) (weirdSort!0 (size!16 s2!50) s2!50) lt!10946) e!31637)))

(declare-fun b!59448 () Bool)

(assert (=> b!59448 (= e!31637 (= (content!15 lt!10946) (union (content!15 (weirdSort!0 (size!16 s1!51) s1!51)) (content!15 (weirdSort!0 (size!16 s2!50) s2!50)))))))

(assert (= (and d!51089 res!27592) b!59448))

(declare-fun m!64282 () Bool)

(assert (=> d!51089 m!64282))

(declare-fun m!64284 () Bool)

(assert (=> b!59448 m!64284))

(assert (=> b!59448 m!64140))

(declare-fun m!64286 () Bool)

(assert (=> b!59448 m!64286))

(assert (=> b!59448 m!64142))

(declare-fun m!64288 () Bool)

(assert (=> b!59448 m!64288))

(assert (=> d!51051 d!51089))

(declare-fun d!51091 () Bool)

(declare-fun res!27593 () Bool)

(declare-fun e!31638 () Bool)

(assert (=> d!51091 (=> res!27593 e!31638)))

(assert (=> d!51091 (= res!27593 (or (is-Nil!489 (weirdSort!0 (size!16 s1!51) s1!51)) (and (is-Cons!488 (weirdSort!0 (size!16 s1!51) s1!51)) (is-Nil!489 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51))))))))

(assert (=> d!51091 (= (isSorted!4 (weirdSort!0 (size!16 s1!51) s1!51)) e!31638)))

(declare-fun b!59449 () Bool)

(declare-fun e!31639 () Bool)

(assert (=> b!59449 (= e!31638 e!31639)))

(declare-fun res!27594 () Bool)

(assert (=> b!59449 (=> (not res!27594) (not e!31639))))

(assert (=> b!59449 (= res!27594 (not (and (is-Cons!488 (weirdSort!0 (size!16 s1!51) s1!51)) (is-Cons!488 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51))) (bvsgt (head!819 (weirdSort!0 (size!16 s1!51) s1!51)) (head!819 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51)))))))))

(declare-fun b!59450 () Bool)

(assert (=> b!59450 (= e!31639 (isSorted!4 (tail!845 (weirdSort!0 (size!16 s1!51) s1!51))))))

(assert (= (and d!51091 (not res!27593)) b!59449))

(assert (= (and b!59449 res!27594) b!59450))

(declare-fun m!64290 () Bool)

(assert (=> b!59450 m!64290))

(assert (=> d!51051 d!51091))

(declare-fun d!51093 () Bool)

(declare-fun res!27595 () Bool)

(declare-fun e!31640 () Bool)

(assert (=> d!51093 (=> res!27595 e!31640)))

(assert (=> d!51093 (= res!27595 (or (is-Nil!489 (weirdSort!0 (size!16 s2!50) s2!50)) (and (is-Cons!488 (weirdSort!0 (size!16 s2!50) s2!50)) (is-Nil!489 (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))))))))

(assert (=> d!51093 (= (isSorted!4 (weirdSort!0 (size!16 s2!50) s2!50)) e!31640)))

(declare-fun b!59451 () Bool)

(declare-fun e!31641 () Bool)

(assert (=> b!59451 (= e!31640 e!31641)))

(declare-fun res!27596 () Bool)

(assert (=> b!59451 (=> (not res!27596) (not e!31641))))

(assert (=> b!59451 (= res!27596 (not (and (is-Cons!488 (weirdSort!0 (size!16 s2!50) s2!50)) (is-Cons!488 (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))) (bvsgt (head!819 (weirdSort!0 (size!16 s2!50) s2!50)) (head!819 (tail!845 (weirdSort!0 (size!16 s2!50) s2!50)))))))))

(declare-fun b!59452 () Bool)

(assert (=> b!59452 (= e!31641 (isSorted!4 (tail!845 (weirdSort!0 (size!16 s2!50) s2!50))))))

(assert (= (and d!51093 (not res!27595)) b!59451))

(assert (= (and b!59451 res!27596) b!59452))

(declare-fun m!64292 () Bool)

(assert (=> b!59452 m!64292))

(assert (=> b!59365 d!51093))

(declare-fun d!51095 () Bool)

(declare-fun res!27597 () Bool)

(declare-fun e!31642 () Bool)

(assert (=> d!51095 (=> (not res!27597) (not e!31642))))

(assert (=> d!51095 (= res!27597 (= (content!15 lt!10960) (content!15 s2!50)))))

(assert (=> d!51095 (= (sortSpec!0 s2!50 lt!10960) e!31642)))

(declare-fun b!59453 () Bool)

(assert (=> b!59453 (= e!31642 (isSorted!4 lt!10960))))

(assert (= (and d!51095 res!27597) b!59453))

(declare-fun m!64294 () Bool)

(assert (=> d!51095 m!64294))

(declare-fun m!64296 () Bool)

(assert (=> d!51095 m!64296))

(declare-fun m!64298 () Bool)

(assert (=> b!59453 m!64298))

(assert (=> d!51057 d!51095))

(assert (=> d!51057 d!51053))

(declare-fun d!51097 () Bool)

(declare-fun lt!11000 () Int)

(assert (=> d!51097 (>= lt!11000 0)))

(declare-fun e!31643 () Int)

(assert (=> d!51097 (= lt!11000 e!31643)))

(declare-fun c!12863 () Bool)

(assert (=> d!51097 (= c!12863 (is-Nil!489 (tail!845 in!15)))))

(assert (=> d!51097 (= (size!16 (tail!845 in!15)) lt!11000)))

(declare-fun b!59454 () Bool)

(assert (=> b!59454 (= e!31643 0)))

(declare-fun b!59455 () Bool)

(assert (=> b!59455 (= e!31643 (+ 1 (size!16 (tail!845 (tail!845 in!15)))))))

(assert (= (and d!51097 c!12863) b!59454))

(assert (= (and d!51097 (not c!12863)) b!59455))

(declare-fun m!64300 () Bool)

(assert (=> b!59455 m!64300))

(assert (=> b!59350 d!51097))

(declare-fun b!59456 () Bool)

(declare-fun e!31644 () List!522)

(assert (=> b!59456 (= e!31644 Nil!489)))

(declare-fun b!59458 () Bool)

(declare-fun e!31645 () List!522)

(assert (=> b!59458 (= e!31645 (Cons!488 (head!819 lt!10967) Nil!489))))

(declare-fun b!59459 () Bool)

(declare-fun lt!11004 () List!522)

(declare-fun lt!11003 () List!522)

(assert (=> b!59459 (= e!31645 (mergeFast!0 (weirdSort!0 (size!16 lt!11004) lt!11004) (weirdSort!0 (size!16 lt!11003) lt!11003)))))

(declare-fun lt!11002 () tuple2!296)

(assert (=> b!59459 (= lt!11003 (_2!175 lt!11002))))

(declare-fun lt!11005 () tuple2!296)

(assert (=> b!59459 (= lt!11004 (_1!175 lt!11005))))

(assert (=> b!59459 (= lt!11002 (split!2 lt!10967))))

(assert (=> b!59459 (= lt!11005 (split!2 lt!10967))))

(declare-fun b!59457 () Bool)

(assert (=> b!59457 (= e!31644 e!31645)))

(declare-fun c!12865 () Bool)

(assert (=> b!59457 (= c!12865 (and (is-Cons!488 lt!10967) (is-Nil!489 (tail!845 lt!10967))))))

(declare-fun d!51099 () Bool)

(declare-fun lt!11001 () List!522)

(assert (=> d!51099 (sortSpec!0 lt!10967 lt!11001)))

(assert (=> d!51099 (= lt!11001 e!31644)))

(declare-fun c!12864 () Bool)

(assert (=> d!51099 (= c!12864 (is-Nil!489 lt!10967))))

(assert (=> d!51099 (= (size!16 lt!10967) (size!16 lt!10967))))

(assert (=> d!51099 (= (weirdSort!0 (size!16 lt!10967) lt!10967) lt!11001)))

(assert (= (and b!59457 c!12865) b!59458))

(assert (= (and b!59457 (not c!12865)) b!59459))

(assert (= (and d!51099 c!12864) b!59456))

(assert (= (and d!51099 (not c!12864)) b!59457))

(declare-fun m!64302 () Bool)

(assert (=> b!59459 m!64302))

(declare-fun m!64304 () Bool)

(assert (=> b!59459 m!64304))

(declare-fun m!64306 () Bool)

(assert (=> b!59459 m!64306))

(assert (=> b!59459 m!64302))

(declare-fun m!64308 () Bool)

(assert (=> b!59459 m!64308))

(declare-fun m!64310 () Bool)

(assert (=> b!59459 m!64310))

(assert (=> b!59459 m!64304))

(declare-fun m!64312 () Bool)

(assert (=> b!59459 m!64312))

(assert (=> b!59459 m!64308))

(assert (=> b!59459 m!64310))

(declare-fun m!64314 () Bool)

(assert (=> d!51099 m!64314))

(assert (=> d!51099 m!64182))

(assert (=> b!59385 d!51099))

(declare-fun d!51101 () Bool)

(declare-fun lt!11006 () Int)

(assert (=> d!51101 (>= lt!11006 0)))

(declare-fun e!31646 () Int)

(assert (=> d!51101 (= lt!11006 e!31646)))

(declare-fun c!12866 () Bool)

(assert (=> d!51101 (= c!12866 (is-Nil!489 lt!10968))))

(assert (=> d!51101 (= (size!16 lt!10968) lt!11006)))

(declare-fun b!59460 () Bool)

(assert (=> b!59460 (= e!31646 0)))

(declare-fun b!59461 () Bool)

(assert (=> b!59461 (= e!31646 (+ 1 (size!16 (tail!845 lt!10968))))))

(assert (= (and d!51101 c!12866) b!59460))

(assert (= (and d!51101 (not c!12866)) b!59461))

(declare-fun m!64316 () Bool)

(assert (=> b!59461 m!64316))

(assert (=> b!59385 d!51101))

(declare-fun b!59462 () Bool)

(declare-fun e!31647 () tuple2!296)

(assert (=> b!59462 (= e!31647 (tuple2!297 Nil!489 Nil!489))))

(declare-fun b!59465 () Bool)

(declare-fun e!31648 () tuple2!296)

(assert (=> b!59465 (= e!31648 (tuple2!297 (Cons!488 (head!819 s1!51) (_1!175 (split!2 (tail!845 (tail!845 s1!51))))) (Cons!488 (head!819 (tail!845 s1!51)) (_2!175 (split!2 (tail!845 (tail!845 s1!51)))))))))

(declare-fun d!51103 () Bool)

(declare-fun lt!11007 () tuple2!296)

(assert (=> d!51103 (splitSpec!0 s1!51 lt!11007)))

(assert (=> d!51103 (= lt!11007 e!31647)))

(declare-fun c!12867 () Bool)

(assert (=> d!51103 (= c!12867 (is-Nil!489 s1!51))))

(assert (=> d!51103 (= (split!2 s1!51) lt!11007)))

(declare-fun b!59464 () Bool)

(assert (=> b!59464 (= e!31648 (tuple2!297 (Cons!488 (head!819 s1!51) Nil!489) Nil!489))))

(declare-fun b!59463 () Bool)

(assert (=> b!59463 (= e!31647 e!31648)))

(declare-fun c!12868 () Bool)

(assert (=> b!59463 (= c!12868 (and (is-Cons!488 s1!51) (is-Nil!489 (tail!845 s1!51))))))

(assert (= (and b!59463 c!12868) b!59464))

(assert (= (and b!59463 (not c!12868)) b!59465))

(assert (= (and d!51103 c!12867) b!59462))

(assert (= (and d!51103 (not c!12867)) b!59463))

(declare-fun m!64318 () Bool)

(assert (=> b!59465 m!64318))

(declare-fun m!64320 () Bool)

(assert (=> d!51103 m!64320))

(assert (=> b!59385 d!51103))

(declare-fun d!51105 () Bool)

(declare-fun lt!11008 () Int)

(assert (=> d!51105 (>= lt!11008 0)))

(declare-fun e!31649 () Int)

(assert (=> d!51105 (= lt!11008 e!31649)))

(declare-fun c!12869 () Bool)

(assert (=> d!51105 (= c!12869 (is-Nil!489 lt!10967))))

(assert (=> d!51105 (= (size!16 lt!10967) lt!11008)))

(declare-fun b!59466 () Bool)

(assert (=> b!59466 (= e!31649 0)))

(declare-fun b!59467 () Bool)

(assert (=> b!59467 (= e!31649 (+ 1 (size!16 (tail!845 lt!10967))))))

(assert (= (and d!51105 c!12869) b!59466))

(assert (= (and d!51105 (not c!12869)) b!59467))

(declare-fun m!64322 () Bool)

(assert (=> b!59467 m!64322))

(assert (=> b!59385 d!51105))

(declare-fun b!59468 () Bool)

(declare-fun e!31650 () List!522)

(assert (=> b!59468 (= e!31650 Nil!489)))

(declare-fun b!59470 () Bool)

(declare-fun e!31651 () List!522)

(assert (=> b!59470 (= e!31651 (Cons!488 (head!819 lt!10968) Nil!489))))

(declare-fun b!59471 () Bool)

(declare-fun lt!11012 () List!522)

(declare-fun lt!11011 () List!522)

(assert (=> b!59471 (= e!31651 (mergeFast!0 (weirdSort!0 (size!16 lt!11012) lt!11012) (weirdSort!0 (size!16 lt!11011) lt!11011)))))

(declare-fun lt!11010 () tuple2!296)

(assert (=> b!59471 (= lt!11011 (_2!175 lt!11010))))

(declare-fun lt!11013 () tuple2!296)

(assert (=> b!59471 (= lt!11012 (_1!175 lt!11013))))

(assert (=> b!59471 (= lt!11010 (split!2 lt!10968))))

(assert (=> b!59471 (= lt!11013 (split!2 lt!10968))))

(declare-fun b!59469 () Bool)

(assert (=> b!59469 (= e!31650 e!31651)))

(declare-fun c!12871 () Bool)

(assert (=> b!59469 (= c!12871 (and (is-Cons!488 lt!10968) (is-Nil!489 (tail!845 lt!10968))))))

(declare-fun d!51107 () Bool)

(declare-fun lt!11009 () List!522)

(assert (=> d!51107 (sortSpec!0 lt!10968 lt!11009)))

(assert (=> d!51107 (= lt!11009 e!31650)))

(declare-fun c!12870 () Bool)

(assert (=> d!51107 (= c!12870 (is-Nil!489 lt!10968))))

(assert (=> d!51107 (= (size!16 lt!10968) (size!16 lt!10968))))

(assert (=> d!51107 (= (weirdSort!0 (size!16 lt!10968) lt!10968) lt!11009)))

(assert (= (and b!59469 c!12871) b!59470))

(assert (= (and b!59469 (not c!12871)) b!59471))

(assert (= (and d!51107 c!12870) b!59468))

(assert (= (and d!51107 (not c!12870)) b!59469))

(declare-fun m!64324 () Bool)

(assert (=> b!59471 m!64324))

(declare-fun m!64326 () Bool)

(assert (=> b!59471 m!64326))

(declare-fun m!64328 () Bool)

(assert (=> b!59471 m!64328))

(assert (=> b!59471 m!64324))

(declare-fun m!64330 () Bool)

(assert (=> b!59471 m!64330))

(declare-fun m!64332 () Bool)

(assert (=> b!59471 m!64332))

(assert (=> b!59471 m!64326))

(declare-fun m!64334 () Bool)

(assert (=> b!59471 m!64334))

(assert (=> b!59471 m!64330))

(assert (=> b!59471 m!64332))

(declare-fun m!64336 () Bool)

(assert (=> d!51107 m!64336))

(assert (=> d!51107 m!64188))

(assert (=> b!59385 d!51107))

(declare-fun d!51109 () Bool)

(declare-fun lt!11015 () List!522)

(assert (=> d!51109 (mergeSpec!0 (weirdSort!0 (size!16 lt!10968) lt!10968) (weirdSort!0 (size!16 lt!10967) lt!10967) lt!11015)))

(declare-fun e!31654 () List!522)

(assert (=> d!51109 (= lt!11015 e!31654)))

(declare-fun c!12873 () Bool)

(assert (=> d!51109 (= c!12873 (is-Nil!489 (weirdSort!0 (size!16 lt!10967) lt!10967)))))

(declare-fun e!31652 () Bool)

(assert (=> d!51109 e!31652))

(declare-fun res!27598 () Bool)

(assert (=> d!51109 (=> (not res!27598) (not e!31652))))

(assert (=> d!51109 (= res!27598 (isSorted!4 (weirdSort!0 (size!16 lt!10968) lt!10968)))))

(assert (=> d!51109 (= (mergeFast!0 (weirdSort!0 (size!16 lt!10968) lt!10968) (weirdSort!0 (size!16 lt!10967) lt!10967)) lt!11015)))

(declare-fun lt!11016 () List!522)

(declare-fun b!59472 () Bool)

(declare-fun lt!11014 () Bool)

(declare-fun e!31653 () List!522)

(assert (=> b!59472 (= e!31653 (ite lt!11014 (Cons!488 (head!819 (weirdSort!0 (size!16 lt!10968) lt!10968)) lt!11016) (Cons!488 (head!819 (weirdSort!0 (size!16 lt!10967) lt!10967)) lt!11016)))))

(assert (=> b!59472 (= lt!11016 (mergeFast!0 (ite lt!11014 (tail!845 (weirdSort!0 (size!16 lt!10968) lt!10968)) (weirdSort!0 (size!16 lt!10968) lt!10968)) (ite lt!11014 (weirdSort!0 (size!16 lt!10967) lt!10967) (tail!845 (weirdSort!0 (size!16 lt!10967) lt!10967)))))))

(assert (=> b!59472 (= lt!11014 (bvsle (head!819 (weirdSort!0 (size!16 lt!10968) lt!10968)) (head!819 (weirdSort!0 (size!16 lt!10967) lt!10967))))))

(declare-fun b!59473 () Bool)

(assert (=> b!59473 (= e!31653 (weirdSort!0 (size!16 lt!10967) lt!10967))))

(declare-fun b!59474 () Bool)

(assert (=> b!59474 (= e!31654 (weirdSort!0 (size!16 lt!10968) lt!10968))))

(declare-fun b!59475 () Bool)

(assert (=> b!59475 (= e!31654 e!31653)))

(declare-fun c!12872 () Bool)

(assert (=> b!59475 (= c!12872 (is-Nil!489 (weirdSort!0 (size!16 lt!10968) lt!10968)))))

(declare-fun b!59476 () Bool)

(assert (=> b!59476 (= e!31652 (isSorted!4 (weirdSort!0 (size!16 lt!10967) lt!10967)))))

(assert (= (and d!51109 res!27598) b!59476))

(assert (= (and b!59475 c!12872) b!59473))

(assert (= (and b!59475 (not c!12872)) b!59472))

(assert (= (and d!51109 c!12873) b!59474))

(assert (= (and d!51109 (not c!12873)) b!59475))

(assert (=> d!51109 m!64190))

(assert (=> d!51109 m!64184))

(declare-fun m!64338 () Bool)

(assert (=> d!51109 m!64338))

(assert (=> d!51109 m!64190))

(declare-fun m!64340 () Bool)

(assert (=> d!51109 m!64340))

(declare-fun m!64342 () Bool)

(assert (=> b!59472 m!64342))

(assert (=> b!59476 m!64184))

(declare-fun m!64344 () Bool)

(assert (=> b!59476 m!64344))

(assert (=> b!59385 d!51109))

(declare-fun d!51111 () Bool)

(declare-fun c!12876 () Bool)

(assert (=> d!51111 (= c!12876 (is-Nil!489 res!27419))))

(declare-fun e!31657 () (Set (_ BitVec 32)))

(assert (=> d!51111 (= (content!15 res!27419) e!31657)))

(declare-fun b!59481 () Bool)

(assert (=> b!59481 (= e!31657 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59482 () Bool)

(assert (=> b!59482 (= e!31657 (union (insert (head!819 res!27419) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!845 res!27419))))))

(assert (= (and d!51111 c!12876) b!59481))

(assert (= (and d!51111 (not c!12876)) b!59482))

(declare-fun m!64346 () Bool)

(assert (=> b!59482 m!64346))

(declare-fun m!64348 () Bool)

(assert (=> b!59482 m!64348))

(assert (=> d!51063 d!51111))

(declare-fun d!51113 () Bool)

(declare-fun c!12877 () Bool)

(assert (=> d!51113 (= c!12877 (is-Nil!489 in!15))))

(declare-fun e!31658 () (Set (_ BitVec 32)))

(assert (=> d!51113 (= (content!15 in!15) e!31658)))

(declare-fun b!59483 () Bool)

(assert (=> b!59483 (= e!31658 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!59484 () Bool)

(assert (=> b!59484 (= e!31658 (union (insert (head!819 in!15) (as emptyset (Set (_ BitVec 32)))) (content!15 (tail!845 in!15))))))

(assert (= (and d!51113 c!12877) b!59483))

(assert (= (and d!51113 (not c!12877)) b!59484))

(declare-fun m!64350 () Bool)

(assert (=> b!59484 m!64350))

(declare-fun m!64352 () Bool)

(assert (=> b!59484 m!64352))

(assert (=> d!51063 d!51113))

(declare-fun d!51115 () Bool)

(declare-fun lt!11017 () Int)

(assert (=> d!51115 (>= lt!11017 0)))

(declare-fun e!31659 () Int)

(assert (=> d!51115 (= lt!11017 e!31659)))

(declare-fun c!12878 () Bool)

(assert (=> d!51115 (= c!12878 (is-Nil!489 (tail!845 s2!50)))))

(assert (=> d!51115 (= (size!16 (tail!845 s2!50)) lt!11017)))

(declare-fun b!59485 () Bool)

(assert (=> b!59485 (= e!31659 0)))

(declare-fun b!59486 () Bool)

(assert (=> b!59486 (= e!31659 (+ 1 (size!16 (tail!845 (tail!845 s2!50)))))))

(assert (= (and d!51115 c!12878) b!59485))

(assert (= (and d!51115 (not c!12878)) b!59486))

(declare-fun m!64354 () Bool)

(assert (=> b!59486 m!64354))

(assert (=> b!59367 d!51115))

(push 1)

(assert (not d!51083))

(assert (not d!51087))

(assert (not b!59433))

(assert (not b!59471))

(assert (not b!59426))

(assert (not b!59422))

(assert (not b!59450))

(assert (not d!51099))

(assert (not b!59467))

(assert (not d!51075))

(assert (not b!59437))

(assert (not b!59482))

(assert (not b!59448))

(assert (not b!59417))

(assert (not b!59432))

(assert (not b!59472))

(assert (not b!59430))

(assert (not d!51095))

(assert (not b!59423))

(assert (not b!59484))

(assert (not b!59476))

(assert (not b!59411))

(assert (not b!59424))

(assert (not b!59461))

(assert (not b!59459))

(assert (not b!59410))

(assert (not b!59453))

(assert (not d!51069))

(assert (not d!51067))

(assert (not d!51079))

(assert (not b!59415))

(assert (not d!51085))

(assert (not b!59445))

(assert (not b!59441))

(assert (not d!51109))

(assert (not d!51089))

(assert (not b!59452))

(assert (not b!59486))

(assert (not b!59465))

(assert (not d!51103))

(assert (not b!59406))

(assert (not b!59455))

(assert (not d!51107))

(assert (not d!51073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

