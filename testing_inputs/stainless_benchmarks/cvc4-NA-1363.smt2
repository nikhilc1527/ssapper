; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9536 () Bool)

(assert start!9536)

(declare-fun res!34491 () Bool)

(declare-fun e!38143 () Bool)

(assert (=> start!9536 (=> (not res!34491) (not e!38143))))

(declare-datatypes () ((Formula!63 (And!68 (lhs!992 Formula!63) (rhs!992 Formula!63)) (Literal!62 (id!4843 Int)) (Implies!68 (lhs!993 Formula!63) (rhs!993 Formula!63)) (Or!68 (lhs!994 Formula!63) (rhs!994 Formula!63)) (Not!68 (f!4232 Formula!63)))))

(declare-fun formula!15 () Formula!63)

(assert (=> start!9536 (= res!34491 (and (not (is-And!68 formula!15)) (not (is-Or!68 formula!15)) (is-Implies!68 formula!15)))))

(assert (=> start!9536 e!38143))

(assert (=> start!9536 true))

(declare-fun b!70524 () Bool)

(declare-fun res!34492 () Bool)

(assert (=> b!70524 (=> (not res!34492) (not e!38143))))

(declare-fun res!29380 () Int)

(declare-fun nnfMeasure!0 (Formula!63) Int)

(assert (=> b!70524 (= res!34492 (= res!29380 (+ (+ (nnfMeasure!0 (lhs!993 formula!15)) (nnfMeasure!0 (rhs!993 formula!15))) 3)))))

(declare-fun b!70525 () Bool)

(assert (=> b!70525 (= e!38143 (< res!29380 0))))

(assert (= (and start!9536 res!34491) b!70524))

(assert (= (and b!70524 res!34492) b!70525))

(declare-fun m!70629 () Bool)

(assert (=> b!70524 m!70629))

(declare-fun m!70631 () Bool)

(assert (=> b!70524 m!70631))

(push 1)

(assert (not b!70524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!70554 () Bool)

(declare-fun e!38163 () Int)

(declare-fun res!34519 () Int)

(assert (=> b!70554 (= e!38163 res!34519)))

(assert (=> b!70554 true))

(declare-fun b!70555 () Bool)

(declare-fun e!38158 () Int)

(declare-fun e!38160 () Int)

(assert (=> b!70555 (= e!38158 e!38160)))

(declare-fun c!16858 () Bool)

(declare-fun lt!15048 () Bool)

(assert (=> b!70555 (= c!16858 lt!15048)))

(declare-fun lt!15051 () Int)

(declare-fun e!38162 () Int)

(assert (=> b!70555 (= lt!15051 e!38162)))

(declare-fun c!16860 () Bool)

(assert (=> b!70555 (= c!16860 (or lt!15048 (is-Implies!68 (lhs!993 formula!15))))))

(declare-fun lt!15052 () Int)

(declare-fun e!38164 () Int)

(assert (=> b!70555 (= lt!15052 e!38164)))

(declare-fun c!16859 () Bool)

(assert (=> b!70555 (= c!16859 (or lt!15048 (is-Implies!68 (lhs!993 formula!15)) (is-Not!68 (lhs!993 formula!15))))))

(assert (=> b!70555 (= lt!15048 (is-Or!68 (lhs!993 formula!15)))))

(declare-fun b!70556 () Bool)

(declare-fun lt!15050 () Int)

(assert (=> b!70556 (= e!38162 lt!15050)))

(declare-fun b!70557 () Bool)

(declare-fun e!38161 () Int)

(declare-fun res!34521 () Int)

(assert (=> b!70557 (= e!38161 res!34521)))

(assert (=> b!70557 true))

(assert (=> b!70557 true))

(declare-fun b!70558 () Bool)

(declare-fun lt!15055 () Int)

(assert (=> b!70558 (= e!38164 lt!15055)))

(declare-fun b!70559 () Bool)

(declare-fun res!34520 () Int)

(assert (=> b!70559 (= e!38162 res!34520)))

(assert (=> b!70559 true))

(declare-fun b!70560 () Bool)

(assert (=> b!70560 (= e!38158 (+ (+ lt!15055 lt!15050) 1))))

(declare-fun b!70561 () Bool)

(declare-fun e!38159 () Int)

(declare-fun lt!15049 () Bool)

(assert (=> b!70561 (= e!38159 (nnfMeasure!0 (ite lt!15049 (lhs!992 (lhs!993 formula!15)) (ite (is-Or!68 (lhs!993 formula!15)) (lhs!994 (lhs!993 formula!15)) (ite (is-Implies!68 (lhs!993 formula!15)) (lhs!993 (lhs!993 formula!15)) (f!4232 (lhs!993 formula!15)))))))))

(declare-fun b!70562 () Bool)

(assert (=> b!70562 (= e!38163 (nnfMeasure!0 (ite lt!15049 (rhs!992 (lhs!993 formula!15)) (ite (is-Or!68 (lhs!993 formula!15)) (rhs!994 (lhs!993 formula!15)) (rhs!993 (lhs!993 formula!15))))))))

(declare-fun lt!15054 () Bool)

(declare-fun b!70563 () Bool)

(declare-fun lt!15053 () Int)

(assert (=> b!70563 (= e!38160 (ite lt!15054 (+ (+ lt!15053 lt!15051) 3) (ite (is-Not!68 (lhs!993 formula!15)) (+ lt!15053 1) 0)))))

(assert (=> b!70563 (= lt!15053 e!38161)))

(declare-fun c!16861 () Bool)

(assert (=> b!70563 (= c!16861 (or lt!15054 (is-Not!68 (lhs!993 formula!15))))))

(assert (=> b!70563 (= lt!15054 (is-Implies!68 (lhs!993 formula!15)))))

(declare-fun b!70564 () Bool)

(assert (=> b!70564 (= e!38161 lt!15052)))

(declare-fun b!70565 () Bool)

(assert (=> b!70565 (= e!38160 (+ (+ lt!15052 lt!15051) 1))))

(declare-fun d!53676 () Bool)

(declare-fun lt!15047 () Int)

(assert (=> d!53676 (>= lt!15047 0)))

(assert (=> d!53676 (= lt!15047 e!38158)))

(declare-fun c!16862 () Bool)

(assert (=> d!53676 (= c!16862 lt!15049)))

(assert (=> d!53676 (= lt!15050 e!38163)))

(declare-fun c!16863 () Bool)

(assert (=> d!53676 (= c!16863 (or lt!15049 (is-Or!68 (lhs!993 formula!15)) (is-Implies!68 (lhs!993 formula!15))))))

(assert (=> d!53676 (= lt!15055 e!38159)))

(declare-fun c!16864 () Bool)

(assert (=> d!53676 (= c!16864 (or lt!15049 (is-Or!68 (lhs!993 formula!15)) (is-Implies!68 (lhs!993 formula!15)) (is-Not!68 (lhs!993 formula!15))))))

(assert (=> d!53676 (= lt!15049 (is-And!68 (lhs!993 formula!15)))))

(assert (=> d!53676 (= (nnfMeasure!0 (lhs!993 formula!15)) lt!15047)))

(declare-fun b!70566 () Bool)

(declare-fun res!34522 () Int)

(assert (=> b!70566 (= e!38159 res!34522)))

(assert (=> b!70566 true))

(declare-fun b!70567 () Bool)

(declare-fun res!34523 () Int)

(assert (=> b!70567 (= e!38164 res!34523)))

(assert (=> b!70567 true))

(assert (= (and d!53676 c!16864) b!70561))

(assert (= (and d!53676 (not c!16864)) b!70566))

(assert (= (and d!53676 c!16863) b!70562))

(assert (= (and d!53676 (not c!16863)) b!70554))

(assert (= (and b!70555 c!16859) b!70558))

(assert (= (and b!70555 (not c!16859)) b!70567))

(assert (= (and b!70555 c!16860) b!70556))

(assert (= (and b!70555 (not c!16860)) b!70559))

(assert (= (and b!70563 c!16861) b!70564))

(assert (= (and b!70563 (not c!16861)) b!70557))

(assert (= (and b!70555 c!16858) b!70565))

(assert (= (and b!70555 (not c!16858)) b!70563))

(assert (= (and d!53676 c!16862) b!70560))

(assert (= (and d!53676 (not c!16862)) b!70555))

(declare-fun m!70633 () Bool)

(assert (=> b!70561 m!70633))

(declare-fun m!70635 () Bool)

(assert (=> b!70562 m!70635))

(assert (=> b!70524 d!53676))

(declare-fun b!70568 () Bool)

(declare-fun e!38170 () Int)

(declare-fun res!34524 () Int)

(assert (=> b!70568 (= e!38170 res!34524)))

(assert (=> b!70568 true))

(declare-fun b!70569 () Bool)

(declare-fun e!38165 () Int)

(declare-fun e!38167 () Int)

(assert (=> b!70569 (= e!38165 e!38167)))

(declare-fun c!16865 () Bool)

(declare-fun lt!15057 () Bool)

(assert (=> b!70569 (= c!16865 lt!15057)))

(declare-fun lt!15060 () Int)

(declare-fun e!38169 () Int)

(assert (=> b!70569 (= lt!15060 e!38169)))

(declare-fun c!16867 () Bool)

(assert (=> b!70569 (= c!16867 (or lt!15057 (is-Implies!68 (rhs!993 formula!15))))))

(declare-fun lt!15061 () Int)

(declare-fun e!38171 () Int)

(assert (=> b!70569 (= lt!15061 e!38171)))

(declare-fun c!16866 () Bool)

(assert (=> b!70569 (= c!16866 (or lt!15057 (is-Implies!68 (rhs!993 formula!15)) (is-Not!68 (rhs!993 formula!15))))))

(assert (=> b!70569 (= lt!15057 (is-Or!68 (rhs!993 formula!15)))))

(declare-fun b!70570 () Bool)

(declare-fun lt!15059 () Int)

(assert (=> b!70570 (= e!38169 lt!15059)))

(declare-fun b!70571 () Bool)

(declare-fun e!38168 () Int)

(declare-fun res!34526 () Int)

(assert (=> b!70571 (= e!38168 res!34526)))

(assert (=> b!70571 true))

(assert (=> b!70571 true))

(declare-fun b!70572 () Bool)

(declare-fun lt!15064 () Int)

(assert (=> b!70572 (= e!38171 lt!15064)))

(declare-fun b!70573 () Bool)

(declare-fun res!34525 () Int)

(assert (=> b!70573 (= e!38169 res!34525)))

(assert (=> b!70573 true))

(declare-fun b!70574 () Bool)

(assert (=> b!70574 (= e!38165 (+ (+ lt!15064 lt!15059) 1))))

(declare-fun b!70575 () Bool)

(declare-fun e!38166 () Int)

(declare-fun lt!15058 () Bool)

(assert (=> b!70575 (= e!38166 (nnfMeasure!0 (ite lt!15058 (lhs!992 (rhs!993 formula!15)) (ite (is-Or!68 (rhs!993 formula!15)) (lhs!994 (rhs!993 formula!15)) (ite (is-Implies!68 (rhs!993 formula!15)) (lhs!993 (rhs!993 formula!15)) (f!4232 (rhs!993 formula!15)))))))))

(declare-fun b!70576 () Bool)

(assert (=> b!70576 (= e!38170 (nnfMeasure!0 (ite lt!15058 (rhs!992 (rhs!993 formula!15)) (ite (is-Or!68 (rhs!993 formula!15)) (rhs!994 (rhs!993 formula!15)) (rhs!993 (rhs!993 formula!15))))))))

(declare-fun lt!15063 () Bool)

(declare-fun b!70577 () Bool)

(declare-fun lt!15062 () Int)

(assert (=> b!70577 (= e!38167 (ite lt!15063 (+ (+ lt!15062 lt!15060) 3) (ite (is-Not!68 (rhs!993 formula!15)) (+ lt!15062 1) 0)))))

(assert (=> b!70577 (= lt!15062 e!38168)))

(declare-fun c!16868 () Bool)

(assert (=> b!70577 (= c!16868 (or lt!15063 (is-Not!68 (rhs!993 formula!15))))))

(assert (=> b!70577 (= lt!15063 (is-Implies!68 (rhs!993 formula!15)))))

(declare-fun b!70578 () Bool)

(assert (=> b!70578 (= e!38168 lt!15061)))

(declare-fun b!70579 () Bool)

(assert (=> b!70579 (= e!38167 (+ (+ lt!15061 lt!15060) 1))))

(declare-fun d!53678 () Bool)

(declare-fun lt!15056 () Int)

(assert (=> d!53678 (>= lt!15056 0)))

(assert (=> d!53678 (= lt!15056 e!38165)))

(declare-fun c!16869 () Bool)

(assert (=> d!53678 (= c!16869 lt!15058)))

(assert (=> d!53678 (= lt!15059 e!38170)))

(declare-fun c!16870 () Bool)

(assert (=> d!53678 (= c!16870 (or lt!15058 (is-Or!68 (rhs!993 formula!15)) (is-Implies!68 (rhs!993 formula!15))))))

(assert (=> d!53678 (= lt!15064 e!38166)))

(declare-fun c!16871 () Bool)

(assert (=> d!53678 (= c!16871 (or lt!15058 (is-Or!68 (rhs!993 formula!15)) (is-Implies!68 (rhs!993 formula!15)) (is-Not!68 (rhs!993 formula!15))))))

(assert (=> d!53678 (= lt!15058 (is-And!68 (rhs!993 formula!15)))))

(assert (=> d!53678 (= (nnfMeasure!0 (rhs!993 formula!15)) lt!15056)))

(declare-fun b!70580 () Bool)

(declare-fun res!34527 () Int)

(assert (=> b!70580 (= e!38166 res!34527)))

(assert (=> b!70580 true))

(declare-fun b!70581 () Bool)

(declare-fun res!34528 () Int)

(assert (=> b!70581 (= e!38171 res!34528)))

(assert (=> b!70581 true))

(assert (= (and d!53678 c!16871) b!70575))

(assert (= (and d!53678 (not c!16871)) b!70580))

(assert (= (and d!53678 c!16870) b!70576))

(assert (= (and d!53678 (not c!16870)) b!70568))

(assert (= (and b!70569 c!16866) b!70572))

(assert (= (and b!70569 (not c!16866)) b!70581))

(assert (= (and b!70569 c!16867) b!70570))

(assert (= (and b!70569 (not c!16867)) b!70573))

(assert (= (and b!70577 c!16868) b!70578))

(assert (= (and b!70577 (not c!16868)) b!70571))

(assert (= (and b!70569 c!16865) b!70579))

(assert (= (and b!70569 (not c!16865)) b!70577))

(assert (= (and d!53678 c!16869) b!70574))

(assert (= (and d!53678 (not c!16869)) b!70569))

(declare-fun m!70637 () Bool)

(assert (=> b!70575 m!70637))

(declare-fun m!70639 () Bool)

(assert (=> b!70576 m!70639))

(assert (=> b!70524 d!53678))

(push 1)

(assert (not b!70575))

(assert (not b!70561))

(assert (not b!70576))

(assert (not b!70562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

