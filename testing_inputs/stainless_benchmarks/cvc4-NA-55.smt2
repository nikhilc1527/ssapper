; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!436 () Bool)

(assert start!436)

(declare-fun res!1095 () Bool)

(declare-fun e!2032 () Bool)

(assert (=> start!436 (=> (not res!1095) (not e!2032))))

(declare-datatypes () ((List!68 (Cons!68 (head!240 (_ BitVec 32)) (tail!252 List!68)) (Nil!69))))

(declare-datatypes () ((AbsQueue!17 (Queue!16 (front!67 List!68) (rear!69 List!68)))))

(declare-fun queue!34 () AbsQueue!17)

(declare-fun isEmpty!12 (AbsQueue!17) Bool)

(assert (=> start!436 (= res!1095 (not (isEmpty!12 queue!34)))))

(assert (=> start!436 e!2032))

(assert (=> start!436 true))

(declare-fun b!3614 () Bool)

(declare-fun res!1096 () Bool)

(assert (=> b!3614 (=> (not res!1096) (not e!2032))))

(declare-fun isAmortized!0 (AbsQueue!17) Bool)

(assert (=> b!3614 (= res!1096 (isAmortized!0 queue!34))))

(declare-datatypes () ((tuple2!6 (tuple2!7 (_1!3 List!68) (_2!3 List!68)))))

(declare-fun x$7!13 () tuple2!6)

(declare-fun t!389 () tuple2!6)

(declare-fun rear!28 () List!68)

(declare-fun list!131 () List!68)

(declare-fun res!638 () tuple2!6)

(declare-fun b!3615 () Bool)

(declare-fun front!29 () List!68)

(assert (=> b!3615 (= e!2032 (and (= t!389 (tuple2!7 (front!67 queue!34) (rear!69 queue!34))) (= res!638 t!389) (= x$7!13 res!638) (= front!29 (_1!3 x$7!13)) (= rear!28 (_2!3 x$7!13)) (= list!131 front!29) (= list!131 Nil!69)))))

(assert (= (and start!436 res!1095) b!3614))

(assert (= (and b!3614 res!1096) b!3615))

(declare-fun m!5657 () Bool)

(assert (=> start!436 m!5657))

(declare-fun m!5659 () Bool)

(assert (=> b!3614 m!5659))

(push 1)

(assert (not start!436))

(assert (not b!3614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2660 () Bool)

(assert (=> d!2660 (= (isEmpty!12 queue!34) (and (is-Nil!69 (front!67 queue!34)) (is-Nil!69 (rear!69 queue!34))))))

(assert (=> start!436 d!2660))

(declare-fun d!2662 () Bool)

(declare-fun size!23 (List!68) Int)

(assert (=> d!2662 (= (isAmortized!0 queue!34) (>= (size!23 (front!67 queue!34)) (size!23 (rear!69 queue!34))))))

(declare-fun bs!254 () Bool)

(assert (= bs!254 d!2662))

(declare-fun m!5661 () Bool)

(assert (=> bs!254 m!5661))

(declare-fun m!5663 () Bool)

(assert (=> bs!254 m!5663))

(assert (=> b!3614 d!2662))

(push 1)

(assert (not d!2662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2664 () Bool)

(declare-fun lt!1034 () Int)

(assert (=> d!2664 (>= lt!1034 0)))

(declare-fun e!2035 () Int)

(assert (=> d!2664 (= lt!1034 e!2035)))

(declare-fun c!1324 () Bool)

(assert (=> d!2664 (= c!1324 (is-Nil!69 (front!67 queue!34)))))

(assert (=> d!2664 (= (size!23 (front!67 queue!34)) lt!1034)))

(declare-fun b!3620 () Bool)

(assert (=> b!3620 (= e!2035 0)))

(declare-fun b!3621 () Bool)

(assert (=> b!3621 (= e!2035 (+ 1 (size!23 (tail!252 (front!67 queue!34)))))))

(assert (= (and d!2664 c!1324) b!3620))

(assert (= (and d!2664 (not c!1324)) b!3621))

(declare-fun m!5665 () Bool)

(assert (=> b!3621 m!5665))

(assert (=> d!2662 d!2664))

(declare-fun d!2666 () Bool)

(declare-fun lt!1035 () Int)

(assert (=> d!2666 (>= lt!1035 0)))

(declare-fun e!2036 () Int)

(assert (=> d!2666 (= lt!1035 e!2036)))

(declare-fun c!1325 () Bool)

(assert (=> d!2666 (= c!1325 (is-Nil!69 (rear!69 queue!34)))))

(assert (=> d!2666 (= (size!23 (rear!69 queue!34)) lt!1035)))

(declare-fun b!3622 () Bool)

(assert (=> b!3622 (= e!2036 0)))

(declare-fun b!3623 () Bool)

(assert (=> b!3623 (= e!2036 (+ 1 (size!23 (tail!252 (rear!69 queue!34)))))))

(assert (= (and d!2666 c!1325) b!3622))

(assert (= (and d!2666 (not c!1325)) b!3623))

(declare-fun m!5667 () Bool)

(assert (=> b!3623 m!5667))

(assert (=> d!2662 d!2666))

(push 1)

(assert (not b!3621))

(assert (not b!3623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2668 () Bool)

(declare-fun lt!1036 () Int)

(assert (=> d!2668 (>= lt!1036 0)))

(declare-fun e!2037 () Int)

(assert (=> d!2668 (= lt!1036 e!2037)))

(declare-fun c!1326 () Bool)

(assert (=> d!2668 (= c!1326 (is-Nil!69 (tail!252 (front!67 queue!34))))))

(assert (=> d!2668 (= (size!23 (tail!252 (front!67 queue!34))) lt!1036)))

(declare-fun b!3624 () Bool)

(assert (=> b!3624 (= e!2037 0)))

(declare-fun b!3625 () Bool)

(assert (=> b!3625 (= e!2037 (+ 1 (size!23 (tail!252 (tail!252 (front!67 queue!34))))))))

(assert (= (and d!2668 c!1326) b!3624))

(assert (= (and d!2668 (not c!1326)) b!3625))

(declare-fun m!5669 () Bool)

(assert (=> b!3625 m!5669))

(assert (=> b!3621 d!2668))

(declare-fun d!2670 () Bool)

(declare-fun lt!1037 () Int)

(assert (=> d!2670 (>= lt!1037 0)))

(declare-fun e!2038 () Int)

(assert (=> d!2670 (= lt!1037 e!2038)))

(declare-fun c!1327 () Bool)

(assert (=> d!2670 (= c!1327 (is-Nil!69 (tail!252 (rear!69 queue!34))))))

(assert (=> d!2670 (= (size!23 (tail!252 (rear!69 queue!34))) lt!1037)))

(declare-fun b!3626 () Bool)

(assert (=> b!3626 (= e!2038 0)))

(declare-fun b!3627 () Bool)

(assert (=> b!3627 (= e!2038 (+ 1 (size!23 (tail!252 (tail!252 (rear!69 queue!34))))))))

(assert (= (and d!2670 c!1327) b!3626))

(assert (= (and d!2670 (not c!1327)) b!3627))

(declare-fun m!5671 () Bool)

(assert (=> b!3627 m!5671))

(assert (=> b!3623 d!2670))

(push 1)

(assert (not b!3625))

(assert (not b!3627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

