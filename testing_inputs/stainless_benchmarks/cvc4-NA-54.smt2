; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!428 () Bool)

(assert start!428)

(declare-fun res!1089 () Bool)

(declare-fun e!2023 () Bool)

(assert (=> start!428 (=> (not res!1089) (not e!2023))))

(declare-datatypes () ((List!67 (Cons!67 (head!239 (_ BitVec 32)) (tail!251 List!67)) (Nil!68))))

(declare-datatypes () ((AbsQueue!16 (Queue!15 (front!66 List!67) (rear!68 List!67)))))

(declare-fun queue!84 () AbsQueue!16)

(declare-fun isAmortized!0 (AbsQueue!16) Bool)

(assert (=> start!428 (= res!1089 (isAmortized!0 queue!84))))

(assert (=> start!428 e!2023))

(assert (=> start!428 true))

(declare-fun b!3596 () Bool)

(declare-fun res!1090 () Bool)

(assert (=> b!3596 (=> (not res!1090) (not e!2023))))

(declare-fun isEmpty!12 (AbsQueue!16) Bool)

(assert (=> b!3596 (= res!1090 (not (isEmpty!12 queue!84)))))

(declare-fun b!3597 () Bool)

(assert (=> b!3597 (= e!2023 (not (is-Cons!67 (front!66 queue!84))))))

(assert (= (and start!428 res!1089) b!3596))

(assert (= (and b!3596 res!1090) b!3597))

(declare-fun m!5641 () Bool)

(assert (=> start!428 m!5641))

(declare-fun m!5643 () Bool)

(assert (=> b!3596 m!5643))

(push 1)

(assert (not b!3596))

(assert (not start!428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2648 () Bool)

(assert (=> d!2648 (= (isEmpty!12 queue!84) (and (is-Nil!68 (front!66 queue!84)) (is-Nil!68 (rear!68 queue!84))))))

(assert (=> b!3596 d!2648))

(declare-fun d!2650 () Bool)

(declare-fun size!23 (List!67) Int)

(assert (=> d!2650 (= (isAmortized!0 queue!84) (>= (size!23 (front!66 queue!84)) (size!23 (rear!68 queue!84))))))

(declare-fun bs!252 () Bool)

(assert (= bs!252 d!2650))

(declare-fun m!5645 () Bool)

(assert (=> bs!252 m!5645))

(declare-fun m!5647 () Bool)

(assert (=> bs!252 m!5647))

(assert (=> start!428 d!2650))

(push 1)

(assert (not d!2650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2652 () Bool)

(declare-fun lt!1028 () Int)

(assert (=> d!2652 (>= lt!1028 0)))

(declare-fun e!2026 () Int)

(assert (=> d!2652 (= lt!1028 e!2026)))

(declare-fun c!1318 () Bool)

(assert (=> d!2652 (= c!1318 (is-Nil!68 (front!66 queue!84)))))

(assert (=> d!2652 (= (size!23 (front!66 queue!84)) lt!1028)))

(declare-fun b!3602 () Bool)

(assert (=> b!3602 (= e!2026 0)))

(declare-fun b!3603 () Bool)

(assert (=> b!3603 (= e!2026 (+ 1 (size!23 (tail!251 (front!66 queue!84)))))))

(assert (= (and d!2652 c!1318) b!3602))

(assert (= (and d!2652 (not c!1318)) b!3603))

(declare-fun m!5649 () Bool)

(assert (=> b!3603 m!5649))

(assert (=> d!2650 d!2652))

(declare-fun d!2654 () Bool)

(declare-fun lt!1029 () Int)

(assert (=> d!2654 (>= lt!1029 0)))

(declare-fun e!2027 () Int)

(assert (=> d!2654 (= lt!1029 e!2027)))

(declare-fun c!1319 () Bool)

(assert (=> d!2654 (= c!1319 (is-Nil!68 (rear!68 queue!84)))))

(assert (=> d!2654 (= (size!23 (rear!68 queue!84)) lt!1029)))

(declare-fun b!3604 () Bool)

(assert (=> b!3604 (= e!2027 0)))

(declare-fun b!3605 () Bool)

(assert (=> b!3605 (= e!2027 (+ 1 (size!23 (tail!251 (rear!68 queue!84)))))))

(assert (= (and d!2654 c!1319) b!3604))

(assert (= (and d!2654 (not c!1319)) b!3605))

(declare-fun m!5651 () Bool)

(assert (=> b!3605 m!5651))

(assert (=> d!2650 d!2654))

(push 1)

(assert (not b!3605))

(assert (not b!3603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2656 () Bool)

(declare-fun lt!1030 () Int)

(assert (=> d!2656 (>= lt!1030 0)))

(declare-fun e!2028 () Int)

(assert (=> d!2656 (= lt!1030 e!2028)))

(declare-fun c!1320 () Bool)

(assert (=> d!2656 (= c!1320 (is-Nil!68 (tail!251 (rear!68 queue!84))))))

(assert (=> d!2656 (= (size!23 (tail!251 (rear!68 queue!84))) lt!1030)))

(declare-fun b!3606 () Bool)

(assert (=> b!3606 (= e!2028 0)))

(declare-fun b!3607 () Bool)

(assert (=> b!3607 (= e!2028 (+ 1 (size!23 (tail!251 (tail!251 (rear!68 queue!84))))))))

(assert (= (and d!2656 c!1320) b!3606))

(assert (= (and d!2656 (not c!1320)) b!3607))

(declare-fun m!5653 () Bool)

(assert (=> b!3607 m!5653))

(assert (=> b!3605 d!2656))

(declare-fun d!2658 () Bool)

(declare-fun lt!1031 () Int)

(assert (=> d!2658 (>= lt!1031 0)))

(declare-fun e!2029 () Int)

(assert (=> d!2658 (= lt!1031 e!2029)))

(declare-fun c!1321 () Bool)

(assert (=> d!2658 (= c!1321 (is-Nil!68 (tail!251 (front!66 queue!84))))))

(assert (=> d!2658 (= (size!23 (tail!251 (front!66 queue!84))) lt!1031)))

(declare-fun b!3608 () Bool)

(assert (=> b!3608 (= e!2029 0)))

(declare-fun b!3609 () Bool)

(assert (=> b!3609 (= e!2029 (+ 1 (size!23 (tail!251 (tail!251 (front!66 queue!84))))))))

(assert (= (and d!2658 c!1321) b!3608))

(assert (= (and d!2658 (not c!1321)) b!3609))

(declare-fun m!5655 () Bool)

(assert (=> b!3609 m!5655))

(assert (=> b!3603 d!2658))

(push 1)

(assert (not b!3609))

(assert (not b!3607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

