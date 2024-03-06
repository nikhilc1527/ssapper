; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!466 () Bool)

(assert start!466)

(declare-fun b!3737 () Bool)

(declare-fun res!1150 () Bool)

(declare-fun e!2087 () Bool)

(assert (=> b!3737 (=> (not res!1150) (not e!2087))))

(declare-datatypes () ((List!71 (Cons!71 (head!243 (_ BitVec 32)) (tail!255 List!71)) (Nil!72))))

(declare-datatypes () ((AbsQueue!20 (Queue!19 (front!70 List!71) (rear!72 List!71)))))

(declare-fun queue!34 () AbsQueue!20)

(declare-datatypes () ((tuple2!12 (tuple2!13 (_1!6 List!71) (_2!6 List!71)))))

(declare-fun x$7!13 () tuple2!12)

(declare-fun t!389 () tuple2!12)

(declare-fun rear!28 () List!71)

(declare-fun res!638 () tuple2!12)

(declare-fun front!29 () List!71)

(assert (=> b!3737 (= res!1150 (and (= t!389 (tuple2!13 (front!70 queue!34) (rear!72 queue!34))) (= res!638 t!389) (= x$7!13 res!638) (= front!29 (_1!6 x$7!13)) (= rear!28 (_2!6 x$7!13))))))

(declare-fun b!3736 () Bool)

(declare-fun res!1148 () Bool)

(assert (=> b!3736 (=> (not res!1148) (not e!2087))))

(declare-fun isAmortized!0 (AbsQueue!20) Bool)

(assert (=> b!3736 (= res!1148 (isAmortized!0 queue!34))))

(declare-fun b!3738 () Bool)

(declare-fun res!1149 () Bool)

(assert (=> b!3738 (=> (not res!1149) (not e!2087))))

(declare-fun prop!53 () Bool)

(declare-fun concatNil!0 (List!71) Bool)

(declare-fun concat!2 (List!71 List!71) List!71)

(declare-fun tail!158 (List!71) List!71)

(declare-fun reverse!5 (List!71) List!71)

(assert (=> b!3738 (= res!1149 (= prop!53 (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(declare-fun res!1147 () Bool)

(assert (=> start!466 (=> (not res!1147) (not e!2087))))

(declare-fun isEmpty!12 (AbsQueue!20) Bool)

(assert (=> start!466 (= res!1147 (not (isEmpty!12 queue!34)))))

(assert (=> start!466 e!2087))

(assert (=> start!466 true))

(declare-fun b!3739 () Bool)

(assert (=> b!3739 (= e!2087 (not prop!53))))

(assert (= (and start!466 res!1147) b!3736))

(assert (= (and b!3736 res!1148) b!3737))

(assert (= (and b!3737 res!1150) b!3738))

(assert (= (and b!3738 res!1149) b!3739))

(declare-fun m!5829 () Bool)

(assert (=> b!3736 m!5829))

(declare-fun m!5831 () Bool)

(assert (=> b!3738 m!5831))

(declare-fun m!5833 () Bool)

(assert (=> b!3738 m!5833))

(assert (=> b!3738 m!5831))

(assert (=> b!3738 m!5833))

(declare-fun m!5835 () Bool)

(assert (=> b!3738 m!5835))

(assert (=> b!3738 m!5835))

(declare-fun m!5837 () Bool)

(assert (=> b!3738 m!5837))

(declare-fun m!5839 () Bool)

(assert (=> start!466 m!5839))

(push 1)

(assert (not b!3736))

(assert (not b!3738))

(assert (not start!466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2720 () Bool)

(declare-fun size!23 (List!71) Int)

(assert (=> d!2720 (= (isAmortized!0 queue!34) (>= (size!23 (front!70 queue!34)) (size!23 (rear!72 queue!34))))))

(declare-fun bs!260 () Bool)

(assert (= bs!260 d!2720))

(declare-fun m!5841 () Bool)

(assert (=> bs!260 m!5841))

(declare-fun m!5843 () Bool)

(assert (=> bs!260 m!5843))

(assert (=> b!3736 d!2720))

(declare-fun b!3744 () Bool)

(declare-fun e!2090 () Bool)

(assert (=> b!3744 (= e!2090 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!72) (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(declare-fun lt!1063 () Bool)

(assert (=> b!3744 (= lt!1063 (concatNil!0 (tail!255 (concat!2 (tail!158 front!29) (reverse!5 rear!28)))))))

(declare-fun d!2722 () Bool)

(assert (=> d!2722 e!2090))

(declare-fun c!1360 () Bool)

(assert (=> d!2722 (= c!1360 (is-Cons!71 (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (=> d!2722 (= (concatNil!0 (concat!2 (tail!158 front!29) (reverse!5 rear!28))) true)))

(declare-fun b!3745 () Bool)

(assert (=> b!3745 (= e!2090 (= (concat!2 (concat!2 (tail!158 front!29) (reverse!5 rear!28)) Nil!72) (concat!2 (tail!158 front!29) (reverse!5 rear!28))))))

(assert (= (and d!2722 c!1360) b!3744))

(assert (= (and d!2722 (not c!1360)) b!3745))

(assert (=> b!3744 m!5835))

(declare-fun m!5845 () Bool)

(assert (=> b!3744 m!5845))

(declare-fun m!5847 () Bool)

(assert (=> b!3744 m!5847))

(assert (=> b!3745 m!5835))

(assert (=> b!3745 m!5845))

(assert (=> b!3738 d!2722))

(declare-fun d!2724 () Bool)

(declare-fun e!2095 () Bool)

(assert (=> d!2724 e!2095))

(declare-fun res!1154 () Bool)

(assert (=> d!2724 (=> (not res!1154) (not e!2095))))

(declare-fun lt!1066 () List!71)

(assert (=> d!2724 (= res!1154 (= (size!23 lt!1066) (+ (size!23 (tail!158 front!29)) (size!23 (reverse!5 rear!28)))))))

(declare-fun e!2096 () List!71)

(assert (=> d!2724 (= lt!1066 e!2096)))

(declare-fun c!1363 () Bool)

(assert (=> d!2724 (= c!1363 (is-Nil!72 (tail!158 front!29)))))

(assert (=> d!2724 (= (concat!2 (tail!158 front!29) (reverse!5 rear!28)) lt!1066)))

(declare-fun b!3752 () Bool)

(assert (=> b!3752 (= e!2096 (reverse!5 rear!28))))

(declare-fun b!3753 () Bool)

(assert (=> b!3753 (= e!2096 (Cons!71 (head!243 (tail!158 front!29)) (concat!2 (tail!255 (tail!158 front!29)) (reverse!5 rear!28))))))

(declare-fun b!3754 () Bool)

(declare-fun content!22 (List!71) (Set (_ BitVec 32)))

(assert (=> b!3754 (= e!2095 (= (content!22 lt!1066) (union (content!22 (tail!158 front!29)) (content!22 (reverse!5 rear!28)))))))

(assert (= (and d!2724 c!1363) b!3752))

(assert (= (and d!2724 (not c!1363)) b!3753))

(assert (= (and d!2724 res!1154) b!3754))

(declare-fun m!5849 () Bool)

(assert (=> d!2724 m!5849))

(assert (=> d!2724 m!5831))

(declare-fun m!5851 () Bool)

(assert (=> d!2724 m!5851))

(assert (=> d!2724 m!5833))

(declare-fun m!5853 () Bool)

(assert (=> d!2724 m!5853))

(assert (=> b!3753 m!5833))

(declare-fun m!5855 () Bool)

(assert (=> b!3753 m!5855))

(declare-fun m!5857 () Bool)

(assert (=> b!3754 m!5857))

(assert (=> b!3754 m!5831))

(declare-fun m!5859 () Bool)

(assert (=> b!3754 m!5859))

(assert (=> b!3754 m!5833))

(declare-fun m!5861 () Bool)

(assert (=> b!3754 m!5861))

(assert (=> b!3738 d!2724))

(declare-fun d!2726 () Bool)

(assert (=> d!2726 (= (tail!158 front!29) (tail!255 front!29))))

(assert (=> b!3738 d!2726))

(declare-fun d!2728 () Bool)

(declare-fun lt!1069 () List!71)

(assert (=> d!2728 (= (content!22 lt!1069) (content!22 rear!28))))

(declare-fun e!2099 () List!71)

(assert (=> d!2728 (= lt!1069 e!2099)))

(declare-fun c!1366 () Bool)

(assert (=> d!2728 (= c!1366 (is-Nil!72 rear!28))))

(assert (=> d!2728 (= (reverse!5 rear!28) lt!1069)))

(declare-fun b!3759 () Bool)

(assert (=> b!3759 (= e!2099 Nil!72)))

(declare-fun b!3760 () Bool)

(assert (=> b!3760 (= e!2099 (concat!2 (reverse!5 (tail!255 rear!28)) (Cons!71 (head!243 rear!28) Nil!72)))))

(assert (= (and d!2728 c!1366) b!3759))

(assert (= (and d!2728 (not c!1366)) b!3760))

(declare-fun m!5863 () Bool)

(assert (=> d!2728 m!5863))

(declare-fun m!5865 () Bool)

(assert (=> d!2728 m!5865))

(declare-fun m!5867 () Bool)

(assert (=> b!3760 m!5867))

(assert (=> b!3760 m!5867))

(declare-fun m!5869 () Bool)

(assert (=> b!3760 m!5869))

(assert (=> b!3738 d!2728))

(declare-fun d!2730 () Bool)

(assert (=> d!2730 (= (isEmpty!12 queue!34) (and (is-Nil!72 (front!70 queue!34)) (is-Nil!72 (rear!72 queue!34))))))

(assert (=> start!466 d!2730))

(push 1)

(assert (not d!2724))

(assert (not b!3753))

(assert (not b!3760))

(assert (not b!3745))

(assert (not b!3754))

(assert (not d!2720))

(assert (not b!3744))

(assert (not d!2728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

