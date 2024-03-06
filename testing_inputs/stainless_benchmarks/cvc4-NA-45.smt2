; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!318 () Bool)

(assert start!318)

(declare-fun res!966 () Bool)

(declare-fun e!1664 () Bool)

(assert (=> start!318 (=> (not res!966) (not e!1664))))

(declare-datatypes () ((List!58 (Cons!58 (head!230 (_ BitVec 32)) (tail!242 List!58)) (Nil!59))))

(declare-datatypes () ((tuple2!4 (tuple2!5 (_1!2 List!58) (_2!2 List!58)))))

(declare-fun t!387 () tuple2!4)

(declare-fun x$6!13 () tuple2!4)

(declare-fun front!24 () List!58)

(declare-datatypes () ((AbsQueue!10 (Queue!9 (front!57 List!58) (rear!59 List!58)))))

(declare-fun queue!27 () AbsQueue!10)

(declare-fun res!633 () tuple2!4)

(declare-fun rear!23 () List!58)

(assert (=> start!318 (= res!966 (and (= t!387 (tuple2!5 (front!57 queue!27) (rear!59 queue!27))) (= res!633 t!387) (= x$6!13 res!633) (= front!24 (_1!2 x$6!13)) (= rear!23 (_2!2 x$6!13))))))

(assert (=> start!318 e!1664))

(assert (=> start!318 true))

(declare-fun b!2943 () Bool)

(declare-fun res!967 () Bool)

(assert (=> b!2943 (=> (not res!967) (not e!1664))))

(declare-datatypes () ((Unit!41 (Unit!42))))

(declare-fun tmp!8 () Unit!41)

(declare-fun Unit!43 () Unit!41)

(assert (=> b!2943 (= res!967 (= tmp!8 Unit!43))))

(declare-fun elem!51 () (_ BitVec 32))

(declare-fun concatAssoc!0 (List!58 List!58 List!58) Bool)

(declare-fun reverse!5 (List!58) List!58)

(assert (=> b!2943 (concatAssoc!0 front!24 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))

(declare-fun b!2944 () Bool)

(declare-fun res!968 () Bool)

(assert (=> b!2944 (=> (not res!968) (not e!1664))))

(declare-fun tmp!9 () Unit!41)

(declare-fun Unit!44 () Unit!41)

(assert (=> b!2944 (= res!968 (= tmp!9 Unit!44))))

(declare-fun concatNil!0 (List!58) Bool)

(declare-fun concat!2 (List!58 List!58) List!58)

(assert (=> b!2944 (concatNil!0 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!2945 () Bool)

(declare-fun asList!0 (AbsQueue!10) List!58)

(declare-fun enqueue!0 (AbsQueue!10 (_ BitVec 32)) AbsQueue!10)

(assert (=> b!2945 (= e!1664 (not (= (asList!0 (enqueue!0 queue!27 elem!51)) (concat!2 (asList!0 queue!27) (Cons!58 elem!51 Nil!59)))))))

(assert (= (and start!318 res!966) b!2943))

(assert (= (and b!2943 res!967) b!2944))

(assert (= (and b!2944 res!968) b!2945))

(declare-fun m!4471 () Bool)

(assert (=> b!2943 m!4471))

(assert (=> b!2943 m!4471))

(declare-fun m!4473 () Bool)

(assert (=> b!2943 m!4473))

(assert (=> b!2944 m!4471))

(assert (=> b!2944 m!4471))

(declare-fun m!4475 () Bool)

(assert (=> b!2944 m!4475))

(assert (=> b!2944 m!4475))

(declare-fun m!4477 () Bool)

(assert (=> b!2944 m!4477))

(assert (=> b!2944 m!4477))

(declare-fun m!4479 () Bool)

(assert (=> b!2944 m!4479))

(declare-fun m!4481 () Bool)

(assert (=> b!2945 m!4481))

(assert (=> b!2945 m!4481))

(declare-fun m!4483 () Bool)

(assert (=> b!2945 m!4483))

(declare-fun m!4485 () Bool)

(assert (=> b!2945 m!4485))

(assert (=> b!2945 m!4485))

(declare-fun m!4487 () Bool)

(assert (=> b!2945 m!4487))

(push 1)

(assert (not b!2945))

(assert (not b!2944))

(assert (not b!2943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172 () Bool)

(assert (=> d!2172 (= (asList!0 (enqueue!0 queue!27 elem!51)) (concat!2 (front!57 (enqueue!0 queue!27 elem!51)) (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))

(declare-fun bs!227 () Bool)

(assert (= bs!227 d!2172))

(declare-fun m!4489 () Bool)

(assert (=> bs!227 m!4489))

(assert (=> bs!227 m!4489))

(declare-fun m!4491 () Bool)

(assert (=> bs!227 m!4491))

(assert (=> b!2945 d!2172))

(declare-fun d!2174 () Bool)

(declare-fun lt!822 () AbsQueue!10)

(declare-fun isAmortized!0 (AbsQueue!10) Bool)

(assert (=> d!2174 (isAmortized!0 lt!822)))

(declare-fun amortizedQueue!0 (List!58 List!58) AbsQueue!10)

(assert (=> d!2174 (= lt!822 (amortizedQueue!0 (front!57 queue!27) (Cons!58 elem!51 (rear!59 queue!27))))))

(assert (=> d!2174 (= (enqueue!0 queue!27 elem!51) lt!822)))

(declare-fun bs!228 () Bool)

(assert (= bs!228 d!2174))

(declare-fun m!4493 () Bool)

(assert (=> bs!228 m!4493))

(declare-fun m!4495 () Bool)

(assert (=> bs!228 m!4495))

(assert (=> b!2945 d!2174))

(declare-fun d!2176 () Bool)

(declare-fun e!1669 () Bool)

(assert (=> d!2176 e!1669))

(declare-fun res!972 () Bool)

(assert (=> d!2176 (=> (not res!972) (not e!1669))))

(declare-fun lt!825 () List!58)

(declare-fun size!23 (List!58) Int)

(assert (=> d!2176 (= res!972 (= (size!23 lt!825) (+ (size!23 (asList!0 queue!27)) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1670 () List!58)

(assert (=> d!2176 (= lt!825 e!1670)))

(declare-fun c!1049 () Bool)

(assert (=> d!2176 (= c!1049 (is-Nil!59 (asList!0 queue!27)))))

(assert (=> d!2176 (= (concat!2 (asList!0 queue!27) (Cons!58 elem!51 Nil!59)) lt!825)))

(declare-fun b!2952 () Bool)

(assert (=> b!2952 (= e!1670 (Cons!58 elem!51 Nil!59))))

(declare-fun b!2953 () Bool)

(assert (=> b!2953 (= e!1670 (Cons!58 (head!230 (asList!0 queue!27)) (concat!2 (tail!242 (asList!0 queue!27)) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!2954 () Bool)

(declare-fun content!22 (List!58) (Set (_ BitVec 32)))

(assert (=> b!2954 (= e!1669 (= (content!22 lt!825) (union (content!22 (asList!0 queue!27)) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2176 c!1049) b!2952))

(assert (= (and d!2176 (not c!1049)) b!2953))

(assert (= (and d!2176 res!972) b!2954))

(declare-fun m!4497 () Bool)

(assert (=> d!2176 m!4497))

(assert (=> d!2176 m!4485))

(declare-fun m!4499 () Bool)

(assert (=> d!2176 m!4499))

(declare-fun m!4501 () Bool)

(assert (=> d!2176 m!4501))

(declare-fun m!4503 () Bool)

(assert (=> b!2953 m!4503))

(declare-fun m!4505 () Bool)

(assert (=> b!2954 m!4505))

(assert (=> b!2954 m!4485))

(declare-fun m!4507 () Bool)

(assert (=> b!2954 m!4507))

(declare-fun m!4509 () Bool)

(assert (=> b!2954 m!4509))

(assert (=> b!2945 d!2176))

(declare-fun d!2178 () Bool)

(assert (=> d!2178 (= (asList!0 queue!27) (concat!2 (front!57 queue!27) (reverse!5 (rear!59 queue!27))))))

(declare-fun bs!229 () Bool)

(assert (= bs!229 d!2178))

(declare-fun m!4511 () Bool)

(assert (=> bs!229 m!4511))

(assert (=> bs!229 m!4511))

(declare-fun m!4513 () Bool)

(assert (=> bs!229 m!4513))

(assert (=> b!2945 d!2178))

(declare-fun e!1673 () Bool)

(declare-fun b!2959 () Bool)

(assert (=> b!2959 (= e!1673 (= (concat!2 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) Nil!59) (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(declare-fun lt!828 () Bool)

(assert (=> b!2959 (= lt!828 (concatNil!0 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(declare-fun d!2180 () Bool)

(assert (=> d!2180 e!1673))

(declare-fun c!1052 () Bool)

(assert (=> d!2180 (= c!1052 (is-Cons!58 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(assert (=> d!2180 (= (concatNil!0 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) true)))

(declare-fun b!2960 () Bool)

(assert (=> b!2960 (= e!1673 (= (concat!2 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) Nil!59) (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2180 c!1052) b!2959))

(assert (= (and d!2180 (not c!1052)) b!2960))

(assert (=> b!2959 m!4477))

(declare-fun m!4515 () Bool)

(assert (=> b!2959 m!4515))

(declare-fun m!4517 () Bool)

(assert (=> b!2959 m!4517))

(assert (=> b!2960 m!4477))

(assert (=> b!2960 m!4515))

(assert (=> b!2944 d!2180))

(declare-fun d!2182 () Bool)

(declare-fun e!1674 () Bool)

(assert (=> d!2182 e!1674))

(declare-fun res!973 () Bool)

(assert (=> d!2182 (=> (not res!973) (not e!1674))))

(declare-fun lt!829 () List!58)

(assert (=> d!2182 (= res!973 (= (size!23 lt!829) (+ (size!23 front!24) (size!23 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(declare-fun e!1675 () List!58)

(assert (=> d!2182 (= lt!829 e!1675)))

(declare-fun c!1053 () Bool)

(assert (=> d!2182 (= c!1053 (is-Nil!59 front!24))))

(assert (=> d!2182 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) lt!829)))

(declare-fun b!2961 () Bool)

(assert (=> b!2961 (= e!1675 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))

(declare-fun b!2962 () Bool)

(assert (=> b!2962 (= e!1675 (Cons!58 (head!230 front!24) (concat!2 (tail!242 front!24) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(declare-fun b!2963 () Bool)

(assert (=> b!2963 (= e!1674 (= (content!22 lt!829) (union (content!22 front!24) (content!22 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2182 c!1053) b!2961))

(assert (= (and d!2182 (not c!1053)) b!2962))

(assert (= (and d!2182 res!973) b!2963))

(declare-fun m!4519 () Bool)

(assert (=> d!2182 m!4519))

(declare-fun m!4521 () Bool)

(assert (=> d!2182 m!4521))

(assert (=> d!2182 m!4475))

(declare-fun m!4523 () Bool)

(assert (=> d!2182 m!4523))

(assert (=> b!2962 m!4475))

(declare-fun m!4525 () Bool)

(assert (=> b!2962 m!4525))

(declare-fun m!4527 () Bool)

(assert (=> b!2963 m!4527))

(declare-fun m!4529 () Bool)

(assert (=> b!2963 m!4529))

(assert (=> b!2963 m!4475))

(declare-fun m!4531 () Bool)

(assert (=> b!2963 m!4531))

(assert (=> b!2944 d!2182))

(declare-fun d!2184 () Bool)

(declare-fun e!1676 () Bool)

(assert (=> d!2184 e!1676))

(declare-fun res!974 () Bool)

(assert (=> d!2184 (=> (not res!974) (not e!1676))))

(declare-fun lt!830 () List!58)

(assert (=> d!2184 (= res!974 (= (size!23 lt!830) (+ (size!23 (reverse!5 rear!23)) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1677 () List!58)

(assert (=> d!2184 (= lt!830 e!1677)))

(declare-fun c!1054 () Bool)

(assert (=> d!2184 (= c!1054 (is-Nil!59 (reverse!5 rear!23)))))

(assert (=> d!2184 (= (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)) lt!830)))

(declare-fun b!2964 () Bool)

(assert (=> b!2964 (= e!1677 (Cons!58 elem!51 Nil!59))))

(declare-fun b!2965 () Bool)

(assert (=> b!2965 (= e!1677 (Cons!58 (head!230 (reverse!5 rear!23)) (concat!2 (tail!242 (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!2966 () Bool)

(assert (=> b!2966 (= e!1676 (= (content!22 lt!830) (union (content!22 (reverse!5 rear!23)) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2184 c!1054) b!2964))

(assert (= (and d!2184 (not c!1054)) b!2965))

(assert (= (and d!2184 res!974) b!2966))

(declare-fun m!4533 () Bool)

(assert (=> d!2184 m!4533))

(assert (=> d!2184 m!4471))

(declare-fun m!4535 () Bool)

(assert (=> d!2184 m!4535))

(assert (=> d!2184 m!4501))

(declare-fun m!4537 () Bool)

(assert (=> b!2965 m!4537))

(declare-fun m!4539 () Bool)

(assert (=> b!2966 m!4539))

(assert (=> b!2966 m!4471))

(declare-fun m!4541 () Bool)

(assert (=> b!2966 m!4541))

(assert (=> b!2966 m!4509))

(assert (=> b!2944 d!2184))

(declare-fun d!2186 () Bool)

(declare-fun lt!833 () List!58)

(assert (=> d!2186 (= (content!22 lt!833) (content!22 rear!23))))

(declare-fun e!1680 () List!58)

(assert (=> d!2186 (= lt!833 e!1680)))

(declare-fun c!1057 () Bool)

(assert (=> d!2186 (= c!1057 (is-Nil!59 rear!23))))

(assert (=> d!2186 (= (reverse!5 rear!23) lt!833)))

(declare-fun b!2971 () Bool)

(assert (=> b!2971 (= e!1680 Nil!59)))

(declare-fun b!2972 () Bool)

(assert (=> b!2972 (= e!1680 (concat!2 (reverse!5 (tail!242 rear!23)) (Cons!58 (head!230 rear!23) Nil!59)))))

(assert (= (and d!2186 c!1057) b!2971))

(assert (= (and d!2186 (not c!1057)) b!2972))

(declare-fun m!4543 () Bool)

(assert (=> d!2186 m!4543))

(declare-fun m!4545 () Bool)

(assert (=> d!2186 m!4545))

(declare-fun m!4547 () Bool)

(assert (=> b!2972 m!4547))

(assert (=> b!2972 m!4547))

(declare-fun m!4549 () Bool)

(assert (=> b!2972 m!4549))

(assert (=> b!2944 d!2186))

(declare-fun b!2977 () Bool)

(declare-fun e!1683 () Bool)

(assert (=> b!2977 (= e!1683 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(declare-fun lt!836 () Bool)

(assert (=> b!2977 (= lt!836 (concatAssoc!0 (tail!242 front!24) (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))

(declare-fun d!2188 () Bool)

(assert (=> d!2188 e!1683))

(declare-fun c!1060 () Bool)

(assert (=> d!2188 (= c!1060 (is-Cons!58 front!24))))

(assert (=> d!2188 (= (concatAssoc!0 front!24 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)) true)))

(declare-fun b!2978 () Bool)

(assert (=> b!2978 (= e!1683 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(assert (= (and d!2188 c!1060) b!2977))

(assert (= (and d!2188 (not c!1060)) b!2978))

(assert (=> b!2977 m!4475))

(assert (=> b!2977 m!4477))

(assert (=> b!2977 m!4471))

(declare-fun m!4551 () Bool)

(assert (=> b!2977 m!4551))

(assert (=> b!2977 m!4551))

(declare-fun m!4553 () Bool)

(assert (=> b!2977 m!4553))

(assert (=> b!2977 m!4471))

(assert (=> b!2977 m!4475))

(assert (=> b!2977 m!4471))

(declare-fun m!4555 () Bool)

(assert (=> b!2977 m!4555))

(assert (=> b!2978 m!4471))

(assert (=> b!2978 m!4475))

(assert (=> b!2978 m!4475))

(assert (=> b!2978 m!4477))

(assert (=> b!2978 m!4471))

(assert (=> b!2978 m!4551))

(assert (=> b!2978 m!4551))

(assert (=> b!2978 m!4553))

(assert (=> b!2943 d!2188))

(assert (=> b!2943 d!2186))

(push 1)

(assert (not d!2182))

(assert (not b!2954))

(assert (not d!2172))

(assert (not b!2977))

(assert (not d!2176))

(assert (not b!2960))

(assert (not b!2972))

(assert (not b!2953))

(assert (not b!2959))

(assert (not b!2966))

(assert (not d!2186))

(assert (not b!2978))

(assert (not d!2184))

(assert (not b!2962))

(assert (not d!2174))

(assert (not d!2178))

(assert (not b!2963))

(assert (not b!2965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!2978 d!2182))

(assert (=> b!2978 d!2184))

(declare-fun d!2190 () Bool)

(declare-fun e!1684 () Bool)

(assert (=> d!2190 e!1684))

(declare-fun res!975 () Bool)

(assert (=> d!2190 (=> (not res!975) (not e!1684))))

(declare-fun lt!837 () List!58)

(assert (=> d!2190 (= res!975 (= (size!23 lt!837) (+ (size!23 (concat!2 front!24 (reverse!5 rear!23))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1685 () List!58)

(assert (=> d!2190 (= lt!837 e!1685)))

(declare-fun c!1061 () Bool)

(assert (=> d!2190 (= c!1061 (is-Nil!59 (concat!2 front!24 (reverse!5 rear!23))))))

(assert (=> d!2190 (= (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59)) lt!837)))

(declare-fun b!2979 () Bool)

(assert (=> b!2979 (= e!1685 (Cons!58 elem!51 Nil!59))))

(declare-fun b!2980 () Bool)

(assert (=> b!2980 (= e!1685 (Cons!58 (head!230 (concat!2 front!24 (reverse!5 rear!23))) (concat!2 (tail!242 (concat!2 front!24 (reverse!5 rear!23))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!2981 () Bool)

(assert (=> b!2981 (= e!1684 (= (content!22 lt!837) (union (content!22 (concat!2 front!24 (reverse!5 rear!23))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2190 c!1061) b!2979))

(assert (= (and d!2190 (not c!1061)) b!2980))

(assert (= (and d!2190 res!975) b!2981))

(declare-fun m!4557 () Bool)

(assert (=> d!2190 m!4557))

(assert (=> d!2190 m!4551))

(declare-fun m!4559 () Bool)

(assert (=> d!2190 m!4559))

(assert (=> d!2190 m!4501))

(declare-fun m!4561 () Bool)

(assert (=> b!2980 m!4561))

(declare-fun m!4563 () Bool)

(assert (=> b!2981 m!4563))

(assert (=> b!2981 m!4551))

(declare-fun m!4565 () Bool)

(assert (=> b!2981 m!4565))

(assert (=> b!2981 m!4509))

(assert (=> b!2978 d!2190))

(declare-fun d!2192 () Bool)

(declare-fun e!1686 () Bool)

(assert (=> d!2192 e!1686))

(declare-fun res!976 () Bool)

(assert (=> d!2192 (=> (not res!976) (not e!1686))))

(declare-fun lt!838 () List!58)

(assert (=> d!2192 (= res!976 (= (size!23 lt!838) (+ (size!23 front!24) (size!23 (reverse!5 rear!23)))))))

(declare-fun e!1687 () List!58)

(assert (=> d!2192 (= lt!838 e!1687)))

(declare-fun c!1062 () Bool)

(assert (=> d!2192 (= c!1062 (is-Nil!59 front!24))))

(assert (=> d!2192 (= (concat!2 front!24 (reverse!5 rear!23)) lt!838)))

(declare-fun b!2982 () Bool)

(assert (=> b!2982 (= e!1687 (reverse!5 rear!23))))

(declare-fun b!2983 () Bool)

(assert (=> b!2983 (= e!1687 (Cons!58 (head!230 front!24) (concat!2 (tail!242 front!24) (reverse!5 rear!23))))))

(declare-fun b!2984 () Bool)

(assert (=> b!2984 (= e!1686 (= (content!22 lt!838) (union (content!22 front!24) (content!22 (reverse!5 rear!23)))))))

(assert (= (and d!2192 c!1062) b!2982))

(assert (= (and d!2192 (not c!1062)) b!2983))

(assert (= (and d!2192 res!976) b!2984))

(declare-fun m!4567 () Bool)

(assert (=> d!2192 m!4567))

(assert (=> d!2192 m!4521))

(assert (=> d!2192 m!4471))

(assert (=> d!2192 m!4535))

(assert (=> b!2983 m!4471))

(declare-fun m!4569 () Bool)

(assert (=> b!2983 m!4569))

(declare-fun m!4571 () Bool)

(assert (=> b!2984 m!4571))

(assert (=> b!2984 m!4529))

(assert (=> b!2984 m!4471))

(assert (=> b!2984 m!4541))

(assert (=> b!2978 d!2192))

(declare-fun d!2194 () Bool)

(declare-fun e!1688 () Bool)

(assert (=> d!2194 e!1688))

(declare-fun res!977 () Bool)

(assert (=> d!2194 (=> (not res!977) (not e!1688))))

(declare-fun lt!839 () List!58)

(assert (=> d!2194 (= res!977 (= (size!23 lt!839) (+ (size!23 (front!57 (enqueue!0 queue!27 elem!51))) (size!23 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))))

(declare-fun e!1689 () List!58)

(assert (=> d!2194 (= lt!839 e!1689)))

(declare-fun c!1063 () Bool)

(assert (=> d!2194 (= c!1063 (is-Nil!59 (front!57 (enqueue!0 queue!27 elem!51))))))

(assert (=> d!2194 (= (concat!2 (front!57 (enqueue!0 queue!27 elem!51)) (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))) lt!839)))

(declare-fun b!2985 () Bool)

(assert (=> b!2985 (= e!1689 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51))))))

(declare-fun b!2986 () Bool)

(assert (=> b!2986 (= e!1689 (Cons!58 (head!230 (front!57 (enqueue!0 queue!27 elem!51))) (concat!2 (tail!242 (front!57 (enqueue!0 queue!27 elem!51))) (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51))))))))

(declare-fun b!2987 () Bool)

(assert (=> b!2987 (= e!1688 (= (content!22 lt!839) (union (content!22 (front!57 (enqueue!0 queue!27 elem!51))) (content!22 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))))

(assert (= (and d!2194 c!1063) b!2985))

(assert (= (and d!2194 (not c!1063)) b!2986))

(assert (= (and d!2194 res!977) b!2987))

(declare-fun m!4573 () Bool)

(assert (=> d!2194 m!4573))

(declare-fun m!4575 () Bool)

(assert (=> d!2194 m!4575))

(assert (=> d!2194 m!4489))

(declare-fun m!4577 () Bool)

(assert (=> d!2194 m!4577))

(assert (=> b!2986 m!4489))

(declare-fun m!4579 () Bool)

(assert (=> b!2986 m!4579))

(declare-fun m!4581 () Bool)

(assert (=> b!2987 m!4581))

(declare-fun m!4583 () Bool)

(assert (=> b!2987 m!4583))

(assert (=> b!2987 m!4489))

(declare-fun m!4585 () Bool)

(assert (=> b!2987 m!4585))

(assert (=> d!2172 d!2194))

(declare-fun d!2196 () Bool)

(declare-fun lt!840 () List!58)

(assert (=> d!2196 (= (content!22 lt!840) (content!22 (rear!59 (enqueue!0 queue!27 elem!51))))))

(declare-fun e!1690 () List!58)

(assert (=> d!2196 (= lt!840 e!1690)))

(declare-fun c!1064 () Bool)

(assert (=> d!2196 (= c!1064 (is-Nil!59 (rear!59 (enqueue!0 queue!27 elem!51))))))

(assert (=> d!2196 (= (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51))) lt!840)))

(declare-fun b!2988 () Bool)

(assert (=> b!2988 (= e!1690 Nil!59)))

(declare-fun b!2989 () Bool)

(assert (=> b!2989 (= e!1690 (concat!2 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51)))) (Cons!58 (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) Nil!59)))))

(assert (= (and d!2196 c!1064) b!2988))

(assert (= (and d!2196 (not c!1064)) b!2989))

(declare-fun m!4587 () Bool)

(assert (=> d!2196 m!4587))

(declare-fun m!4589 () Bool)

(assert (=> d!2196 m!4589))

(declare-fun m!4591 () Bool)

(assert (=> b!2989 m!4591))

(assert (=> b!2989 m!4591))

(declare-fun m!4593 () Bool)

(assert (=> b!2989 m!4593))

(assert (=> d!2172 d!2196))

(declare-fun d!2198 () Bool)

(declare-fun c!1067 () Bool)

(assert (=> d!2198 (= c!1067 (is-Nil!59 lt!829))))

(declare-fun e!1693 () (Set (_ BitVec 32)))

(assert (=> d!2198 (= (content!22 lt!829) e!1693)))

(declare-fun b!2994 () Bool)

(assert (=> b!2994 (= e!1693 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2995 () Bool)

(assert (=> b!2995 (= e!1693 (union (insert (head!230 lt!829) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!829))))))

(assert (= (and d!2198 c!1067) b!2994))

(assert (= (and d!2198 (not c!1067)) b!2995))

(declare-fun m!4595 () Bool)

(assert (=> b!2995 m!4595))

(declare-fun m!4597 () Bool)

(assert (=> b!2995 m!4597))

(assert (=> b!2963 d!2198))

(declare-fun d!2200 () Bool)

(declare-fun c!1068 () Bool)

(assert (=> d!2200 (= c!1068 (is-Nil!59 front!24))))

(declare-fun e!1694 () (Set (_ BitVec 32)))

(assert (=> d!2200 (= (content!22 front!24) e!1694)))

(declare-fun b!2996 () Bool)

(assert (=> b!2996 (= e!1694 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2997 () Bool)

(assert (=> b!2997 (= e!1694 (union (insert (head!230 front!24) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 front!24))))))

(assert (= (and d!2200 c!1068) b!2996))

(assert (= (and d!2200 (not c!1068)) b!2997))

(declare-fun m!4599 () Bool)

(assert (=> b!2997 m!4599))

(declare-fun m!4601 () Bool)

(assert (=> b!2997 m!4601))

(assert (=> b!2963 d!2200))

(declare-fun d!2202 () Bool)

(declare-fun c!1069 () Bool)

(assert (=> d!2202 (= c!1069 (is-Nil!59 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))

(declare-fun e!1695 () (Set (_ BitVec 32)))

(assert (=> d!2202 (= (content!22 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) e!1695)))

(declare-fun b!2998 () Bool)

(assert (=> b!2998 (= e!1695 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!2999 () Bool)

(assert (=> b!2999 (= e!1695 (union (insert (head!230 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2202 c!1069) b!2998))

(assert (= (and d!2202 (not c!1069)) b!2999))

(declare-fun m!4603 () Bool)

(assert (=> b!2999 m!4603))

(declare-fun m!4605 () Bool)

(assert (=> b!2999 m!4605))

(assert (=> b!2963 d!2202))

(declare-fun d!2204 () Bool)

(declare-fun e!1696 () Bool)

(assert (=> d!2204 e!1696))

(declare-fun res!978 () Bool)

(assert (=> d!2204 (=> (not res!978) (not e!1696))))

(declare-fun lt!841 () List!58)

(assert (=> d!2204 (= res!978 (= (size!23 lt!841) (+ (size!23 (reverse!5 (tail!242 rear!23))) (size!23 (Cons!58 (head!230 rear!23) Nil!59)))))))

(declare-fun e!1697 () List!58)

(assert (=> d!2204 (= lt!841 e!1697)))

(declare-fun c!1070 () Bool)

(assert (=> d!2204 (= c!1070 (is-Nil!59 (reverse!5 (tail!242 rear!23))))))

(assert (=> d!2204 (= (concat!2 (reverse!5 (tail!242 rear!23)) (Cons!58 (head!230 rear!23) Nil!59)) lt!841)))

(declare-fun b!3000 () Bool)

(assert (=> b!3000 (= e!1697 (Cons!58 (head!230 rear!23) Nil!59))))

(declare-fun b!3001 () Bool)

(assert (=> b!3001 (= e!1697 (Cons!58 (head!230 (reverse!5 (tail!242 rear!23))) (concat!2 (tail!242 (reverse!5 (tail!242 rear!23))) (Cons!58 (head!230 rear!23) Nil!59))))))

(declare-fun b!3002 () Bool)

(assert (=> b!3002 (= e!1696 (= (content!22 lt!841) (union (content!22 (reverse!5 (tail!242 rear!23))) (content!22 (Cons!58 (head!230 rear!23) Nil!59)))))))

(assert (= (and d!2204 c!1070) b!3000))

(assert (= (and d!2204 (not c!1070)) b!3001))

(assert (= (and d!2204 res!978) b!3002))

(declare-fun m!4607 () Bool)

(assert (=> d!2204 m!4607))

(assert (=> d!2204 m!4547))

(declare-fun m!4609 () Bool)

(assert (=> d!2204 m!4609))

(declare-fun m!4611 () Bool)

(assert (=> d!2204 m!4611))

(declare-fun m!4613 () Bool)

(assert (=> b!3001 m!4613))

(declare-fun m!4615 () Bool)

(assert (=> b!3002 m!4615))

(assert (=> b!3002 m!4547))

(declare-fun m!4617 () Bool)

(assert (=> b!3002 m!4617))

(declare-fun m!4619 () Bool)

(assert (=> b!3002 m!4619))

(assert (=> b!2972 d!2204))

(declare-fun d!2206 () Bool)

(declare-fun lt!842 () List!58)

(assert (=> d!2206 (= (content!22 lt!842) (content!22 (tail!242 rear!23)))))

(declare-fun e!1698 () List!58)

(assert (=> d!2206 (= lt!842 e!1698)))

(declare-fun c!1071 () Bool)

(assert (=> d!2206 (= c!1071 (is-Nil!59 (tail!242 rear!23)))))

(assert (=> d!2206 (= (reverse!5 (tail!242 rear!23)) lt!842)))

(declare-fun b!3003 () Bool)

(assert (=> b!3003 (= e!1698 Nil!59)))

(declare-fun b!3004 () Bool)

(assert (=> b!3004 (= e!1698 (concat!2 (reverse!5 (tail!242 (tail!242 rear!23))) (Cons!58 (head!230 (tail!242 rear!23)) Nil!59)))))

(assert (= (and d!2206 c!1071) b!3003))

(assert (= (and d!2206 (not c!1071)) b!3004))

(declare-fun m!4621 () Bool)

(assert (=> d!2206 m!4621))

(declare-fun m!4623 () Bool)

(assert (=> d!2206 m!4623))

(declare-fun m!4625 () Bool)

(assert (=> b!3004 m!4625))

(assert (=> b!3004 m!4625))

(declare-fun m!4627 () Bool)

(assert (=> b!3004 m!4627))

(assert (=> b!2972 d!2206))

(declare-fun d!2208 () Bool)

(declare-fun c!1072 () Bool)

(assert (=> d!2208 (= c!1072 (is-Nil!59 lt!833))))

(declare-fun e!1699 () (Set (_ BitVec 32)))

(assert (=> d!2208 (= (content!22 lt!833) e!1699)))

(declare-fun b!3005 () Bool)

(assert (=> b!3005 (= e!1699 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3006 () Bool)

(assert (=> b!3006 (= e!1699 (union (insert (head!230 lt!833) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!833))))))

(assert (= (and d!2208 c!1072) b!3005))

(assert (= (and d!2208 (not c!1072)) b!3006))

(declare-fun m!4629 () Bool)

(assert (=> b!3006 m!4629))

(declare-fun m!4631 () Bool)

(assert (=> b!3006 m!4631))

(assert (=> d!2186 d!2208))

(declare-fun d!2210 () Bool)

(declare-fun c!1073 () Bool)

(assert (=> d!2210 (= c!1073 (is-Nil!59 rear!23))))

(declare-fun e!1700 () (Set (_ BitVec 32)))

(assert (=> d!2210 (= (content!22 rear!23) e!1700)))

(declare-fun b!3007 () Bool)

(assert (=> b!3007 (= e!1700 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3008 () Bool)

(assert (=> b!3008 (= e!1700 (union (insert (head!230 rear!23) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 rear!23))))))

(assert (= (and d!2210 c!1073) b!3007))

(assert (= (and d!2210 (not c!1073)) b!3008))

(declare-fun m!4633 () Bool)

(assert (=> b!3008 m!4633))

(assert (=> b!3008 m!4623))

(assert (=> d!2186 d!2210))

(assert (=> b!2977 d!2182))

(assert (=> b!2977 d!2192))

(assert (=> b!2977 d!2190))

(declare-fun e!1701 () Bool)

(declare-fun b!3009 () Bool)

(assert (=> b!3009 (= e!1701 (= (concat!2 (tail!242 front!24) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (concat!2 (concat!2 (tail!242 front!24) (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(declare-fun lt!843 () Bool)

(assert (=> b!3009 (= lt!843 (concatAssoc!0 (tail!242 (tail!242 front!24)) (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))

(declare-fun d!2212 () Bool)

(assert (=> d!2212 e!1701))

(declare-fun c!1074 () Bool)

(assert (=> d!2212 (= c!1074 (is-Cons!58 (tail!242 front!24)))))

(assert (=> d!2212 (= (concatAssoc!0 (tail!242 front!24) (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)) true)))

(declare-fun b!3010 () Bool)

(assert (=> b!3010 (= e!1701 (= (concat!2 (tail!242 front!24) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (concat!2 (concat!2 (tail!242 front!24) (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(assert (= (and d!2212 c!1074) b!3009))

(assert (= (and d!2212 (not c!1074)) b!3010))

(assert (=> b!3009 m!4475))

(assert (=> b!3009 m!4525))

(assert (=> b!3009 m!4471))

(assert (=> b!3009 m!4569))

(assert (=> b!3009 m!4569))

(declare-fun m!4635 () Bool)

(assert (=> b!3009 m!4635))

(assert (=> b!3009 m!4471))

(assert (=> b!3009 m!4475))

(assert (=> b!3009 m!4471))

(declare-fun m!4637 () Bool)

(assert (=> b!3009 m!4637))

(assert (=> b!3010 m!4471))

(assert (=> b!3010 m!4475))

(assert (=> b!3010 m!4475))

(assert (=> b!3010 m!4525))

(assert (=> b!3010 m!4471))

(assert (=> b!3010 m!4569))

(assert (=> b!3010 m!4569))

(assert (=> b!3010 m!4635))

(assert (=> b!2977 d!2212))

(assert (=> b!2977 d!2184))

(declare-fun d!2214 () Bool)

(declare-fun c!1075 () Bool)

(assert (=> d!2214 (= c!1075 (is-Nil!59 lt!830))))

(declare-fun e!1702 () (Set (_ BitVec 32)))

(assert (=> d!2214 (= (content!22 lt!830) e!1702)))

(declare-fun b!3011 () Bool)

(assert (=> b!3011 (= e!1702 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3012 () Bool)

(assert (=> b!3012 (= e!1702 (union (insert (head!230 lt!830) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!830))))))

(assert (= (and d!2214 c!1075) b!3011))

(assert (= (and d!2214 (not c!1075)) b!3012))

(declare-fun m!4639 () Bool)

(assert (=> b!3012 m!4639))

(declare-fun m!4641 () Bool)

(assert (=> b!3012 m!4641))

(assert (=> b!2966 d!2214))

(declare-fun d!2216 () Bool)

(declare-fun c!1076 () Bool)

(assert (=> d!2216 (= c!1076 (is-Nil!59 (reverse!5 rear!23)))))

(declare-fun e!1703 () (Set (_ BitVec 32)))

(assert (=> d!2216 (= (content!22 (reverse!5 rear!23)) e!1703)))

(declare-fun b!3013 () Bool)

(assert (=> b!3013 (= e!1703 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3014 () Bool)

(assert (=> b!3014 (= e!1703 (union (insert (head!230 (reverse!5 rear!23)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (reverse!5 rear!23)))))))

(assert (= (and d!2216 c!1076) b!3013))

(assert (= (and d!2216 (not c!1076)) b!3014))

(declare-fun m!4643 () Bool)

(assert (=> b!3014 m!4643))

(declare-fun m!4645 () Bool)

(assert (=> b!3014 m!4645))

(assert (=> b!2966 d!2216))

(declare-fun d!2218 () Bool)

(declare-fun c!1077 () Bool)

(assert (=> d!2218 (= c!1077 (is-Nil!59 (Cons!58 elem!51 Nil!59)))))

(declare-fun e!1704 () (Set (_ BitVec 32)))

(assert (=> d!2218 (= (content!22 (Cons!58 elem!51 Nil!59)) e!1704)))

(declare-fun b!3015 () Bool)

(assert (=> b!3015 (= e!1704 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3016 () Bool)

(assert (=> b!3016 (= e!1704 (union (insert (head!230 (Cons!58 elem!51 Nil!59)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2218 c!1077) b!3015))

(assert (= (and d!2218 (not c!1077)) b!3016))

(declare-fun m!4647 () Bool)

(assert (=> b!3016 m!4647))

(declare-fun m!4649 () Bool)

(assert (=> b!3016 m!4649))

(assert (=> b!2966 d!2218))

(declare-fun d!2220 () Bool)

(declare-fun e!1705 () Bool)

(assert (=> d!2220 e!1705))

(declare-fun res!979 () Bool)

(assert (=> d!2220 (=> (not res!979) (not e!1705))))

(declare-fun lt!844 () List!58)

(assert (=> d!2220 (= res!979 (= (size!23 lt!844) (+ (size!23 (tail!242 front!24)) (size!23 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(declare-fun e!1706 () List!58)

(assert (=> d!2220 (= lt!844 e!1706)))

(declare-fun c!1078 () Bool)

(assert (=> d!2220 (= c!1078 (is-Nil!59 (tail!242 front!24)))))

(assert (=> d!2220 (= (concat!2 (tail!242 front!24) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) lt!844)))

(declare-fun b!3017 () Bool)

(assert (=> b!3017 (= e!1706 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))

(declare-fun b!3018 () Bool)

(assert (=> b!3018 (= e!1706 (Cons!58 (head!230 (tail!242 front!24)) (concat!2 (tail!242 (tail!242 front!24)) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(declare-fun b!3019 () Bool)

(assert (=> b!3019 (= e!1705 (= (content!22 lt!844) (union (content!22 (tail!242 front!24)) (content!22 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2220 c!1078) b!3017))

(assert (= (and d!2220 (not c!1078)) b!3018))

(assert (= (and d!2220 res!979) b!3019))

(declare-fun m!4651 () Bool)

(assert (=> d!2220 m!4651))

(declare-fun m!4653 () Bool)

(assert (=> d!2220 m!4653))

(assert (=> d!2220 m!4475))

(assert (=> d!2220 m!4523))

(assert (=> b!3018 m!4475))

(declare-fun m!4655 () Bool)

(assert (=> b!3018 m!4655))

(declare-fun m!4657 () Bool)

(assert (=> b!3019 m!4657))

(assert (=> b!3019 m!4601))

(assert (=> b!3019 m!4475))

(assert (=> b!3019 m!4531))

(assert (=> b!2962 d!2220))

(declare-fun d!2222 () Bool)

(declare-fun c!1079 () Bool)

(assert (=> d!2222 (= c!1079 (is-Nil!59 lt!825))))

(declare-fun e!1707 () (Set (_ BitVec 32)))

(assert (=> d!2222 (= (content!22 lt!825) e!1707)))

(declare-fun b!3020 () Bool)

(assert (=> b!3020 (= e!1707 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3021 () Bool)

(assert (=> b!3021 (= e!1707 (union (insert (head!230 lt!825) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!825))))))

(assert (= (and d!2222 c!1079) b!3020))

(assert (= (and d!2222 (not c!1079)) b!3021))

(declare-fun m!4659 () Bool)

(assert (=> b!3021 m!4659))

(declare-fun m!4661 () Bool)

(assert (=> b!3021 m!4661))

(assert (=> b!2954 d!2222))

(declare-fun d!2224 () Bool)

(declare-fun c!1080 () Bool)

(assert (=> d!2224 (= c!1080 (is-Nil!59 (asList!0 queue!27)))))

(declare-fun e!1708 () (Set (_ BitVec 32)))

(assert (=> d!2224 (= (content!22 (asList!0 queue!27)) e!1708)))

(declare-fun b!3022 () Bool)

(assert (=> b!3022 (= e!1708 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3023 () Bool)

(assert (=> b!3023 (= e!1708 (union (insert (head!230 (asList!0 queue!27)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (asList!0 queue!27)))))))

(assert (= (and d!2224 c!1080) b!3022))

(assert (= (and d!2224 (not c!1080)) b!3023))

(declare-fun m!4663 () Bool)

(assert (=> b!3023 m!4663))

(declare-fun m!4665 () Bool)

(assert (=> b!3023 m!4665))

(assert (=> b!2954 d!2224))

(assert (=> b!2954 d!2218))

(declare-fun d!2226 () Bool)

(declare-fun e!1709 () Bool)

(assert (=> d!2226 e!1709))

(declare-fun res!980 () Bool)

(assert (=> d!2226 (=> (not res!980) (not e!1709))))

(declare-fun lt!845 () List!58)

(assert (=> d!2226 (= res!980 (= (size!23 lt!845) (+ (size!23 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) (size!23 Nil!59))))))

(declare-fun e!1710 () List!58)

(assert (=> d!2226 (= lt!845 e!1710)))

(declare-fun c!1081 () Bool)

(assert (=> d!2226 (= c!1081 (is-Nil!59 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(assert (=> d!2226 (= (concat!2 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) Nil!59) lt!845)))

(declare-fun b!3024 () Bool)

(assert (=> b!3024 (= e!1710 Nil!59)))

(declare-fun b!3025 () Bool)

(assert (=> b!3025 (= e!1710 (Cons!58 (head!230 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) (concat!2 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) Nil!59)))))

(declare-fun b!3026 () Bool)

(assert (=> b!3026 (= e!1709 (= (content!22 lt!845) (union (content!22 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) (content!22 Nil!59))))))

(assert (= (and d!2226 c!1081) b!3024))

(assert (= (and d!2226 (not c!1081)) b!3025))

(assert (= (and d!2226 res!980) b!3026))

(declare-fun m!4667 () Bool)

(assert (=> d!2226 m!4667))

(assert (=> d!2226 m!4477))

(declare-fun m!4669 () Bool)

(assert (=> d!2226 m!4669))

(declare-fun m!4671 () Bool)

(assert (=> d!2226 m!4671))

(declare-fun m!4673 () Bool)

(assert (=> b!3025 m!4673))

(declare-fun m!4675 () Bool)

(assert (=> b!3026 m!4675))

(assert (=> b!3026 m!4477))

(declare-fun m!4677 () Bool)

(assert (=> b!3026 m!4677))

(declare-fun m!4679 () Bool)

(assert (=> b!3026 m!4679))

(assert (=> b!2959 d!2226))

(declare-fun e!1711 () Bool)

(declare-fun b!3027 () Bool)

(assert (=> b!3027 (= e!1711 (= (concat!2 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) Nil!59) (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(declare-fun lt!846 () Bool)

(assert (=> b!3027 (= lt!846 (concatNil!0 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(declare-fun d!2228 () Bool)

(assert (=> d!2228 e!1711))

(declare-fun c!1082 () Bool)

(assert (=> d!2228 (= c!1082 (is-Cons!58 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (=> d!2228 (= (concatNil!0 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) true)))

(declare-fun b!3028 () Bool)

(assert (=> b!3028 (= e!1711 (= (concat!2 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) Nil!59) (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2228 c!1082) b!3027))

(assert (= (and d!2228 (not c!1082)) b!3028))

(assert (=> b!3027 m!4673))

(declare-fun m!4681 () Bool)

(assert (=> b!3027 m!4681))

(assert (=> b!3028 m!4673))

(assert (=> b!2959 d!2228))

(assert (=> b!2960 d!2226))

(declare-fun d!2230 () Bool)

(declare-fun e!1712 () Bool)

(assert (=> d!2230 e!1712))

(declare-fun res!981 () Bool)

(assert (=> d!2230 (=> (not res!981) (not e!1712))))

(declare-fun lt!847 () List!58)

(assert (=> d!2230 (= res!981 (= (size!23 lt!847) (+ (size!23 (front!57 queue!27)) (size!23 (reverse!5 (rear!59 queue!27))))))))

(declare-fun e!1713 () List!58)

(assert (=> d!2230 (= lt!847 e!1713)))

(declare-fun c!1083 () Bool)

(assert (=> d!2230 (= c!1083 (is-Nil!59 (front!57 queue!27)))))

(assert (=> d!2230 (= (concat!2 (front!57 queue!27) (reverse!5 (rear!59 queue!27))) lt!847)))

(declare-fun b!3029 () Bool)

(assert (=> b!3029 (= e!1713 (reverse!5 (rear!59 queue!27)))))

(declare-fun b!3030 () Bool)

(assert (=> b!3030 (= e!1713 (Cons!58 (head!230 (front!57 queue!27)) (concat!2 (tail!242 (front!57 queue!27)) (reverse!5 (rear!59 queue!27)))))))

(declare-fun b!3031 () Bool)

(assert (=> b!3031 (= e!1712 (= (content!22 lt!847) (union (content!22 (front!57 queue!27)) (content!22 (reverse!5 (rear!59 queue!27))))))))

(assert (= (and d!2230 c!1083) b!3029))

(assert (= (and d!2230 (not c!1083)) b!3030))

(assert (= (and d!2230 res!981) b!3031))

(declare-fun m!4683 () Bool)

(assert (=> d!2230 m!4683))

(declare-fun m!4685 () Bool)

(assert (=> d!2230 m!4685))

(assert (=> d!2230 m!4511))

(declare-fun m!4687 () Bool)

(assert (=> d!2230 m!4687))

(assert (=> b!3030 m!4511))

(declare-fun m!4689 () Bool)

(assert (=> b!3030 m!4689))

(declare-fun m!4691 () Bool)

(assert (=> b!3031 m!4691))

(declare-fun m!4693 () Bool)

(assert (=> b!3031 m!4693))

(assert (=> b!3031 m!4511))

(declare-fun m!4695 () Bool)

(assert (=> b!3031 m!4695))

(assert (=> d!2178 d!2230))

(declare-fun d!2232 () Bool)

(declare-fun lt!848 () List!58)

(assert (=> d!2232 (= (content!22 lt!848) (content!22 (rear!59 queue!27)))))

(declare-fun e!1714 () List!58)

(assert (=> d!2232 (= lt!848 e!1714)))

(declare-fun c!1084 () Bool)

(assert (=> d!2232 (= c!1084 (is-Nil!59 (rear!59 queue!27)))))

(assert (=> d!2232 (= (reverse!5 (rear!59 queue!27)) lt!848)))

(declare-fun b!3032 () Bool)

(assert (=> b!3032 (= e!1714 Nil!59)))

(declare-fun b!3033 () Bool)

(assert (=> b!3033 (= e!1714 (concat!2 (reverse!5 (tail!242 (rear!59 queue!27))) (Cons!58 (head!230 (rear!59 queue!27)) Nil!59)))))

(assert (= (and d!2232 c!1084) b!3032))

(assert (= (and d!2232 (not c!1084)) b!3033))

(declare-fun m!4697 () Bool)

(assert (=> d!2232 m!4697))

(declare-fun m!4699 () Bool)

(assert (=> d!2232 m!4699))

(declare-fun m!4701 () Bool)

(assert (=> b!3033 m!4701))

(assert (=> b!3033 m!4701))

(declare-fun m!4703 () Bool)

(assert (=> b!3033 m!4703))

(assert (=> d!2178 d!2232))

(declare-fun d!2234 () Bool)

(assert (=> d!2234 (= (isAmortized!0 lt!822) (>= (size!23 (front!57 lt!822)) (size!23 (rear!59 lt!822))))))

(declare-fun bs!230 () Bool)

(assert (= bs!230 d!2234))

(declare-fun m!4705 () Bool)

(assert (=> bs!230 m!4705))

(declare-fun m!4707 () Bool)

(assert (=> bs!230 m!4707))

(assert (=> d!2174 d!2234))

(declare-fun d!2236 () Bool)

(declare-fun lt!851 () AbsQueue!10)

(assert (=> d!2236 (isAmortized!0 lt!851)))

(declare-fun e!1717 () AbsQueue!10)

(assert (=> d!2236 (= lt!851 e!1717)))

(declare-fun c!1087 () Bool)

(assert (=> d!2236 (= c!1087 (<= (size!23 (Cons!58 elem!51 (rear!59 queue!27))) (size!23 (front!57 queue!27))))))

(assert (=> d!2236 (= (amortizedQueue!0 (front!57 queue!27) (Cons!58 elem!51 (rear!59 queue!27))) lt!851)))

(declare-fun b!3038 () Bool)

(assert (=> b!3038 (= e!1717 (Queue!9 (front!57 queue!27) (Cons!58 elem!51 (rear!59 queue!27))))))

(declare-fun b!3039 () Bool)

(assert (=> b!3039 (= e!1717 (Queue!9 (concat!2 (front!57 queue!27) (reverse!5 (Cons!58 elem!51 (rear!59 queue!27)))) Nil!59))))

(assert (= (and d!2236 c!1087) b!3038))

(assert (= (and d!2236 (not c!1087)) b!3039))

(declare-fun m!4709 () Bool)

(assert (=> d!2236 m!4709))

(declare-fun m!4711 () Bool)

(assert (=> d!2236 m!4711))

(assert (=> d!2236 m!4685))

(declare-fun m!4713 () Bool)

(assert (=> b!3039 m!4713))

(assert (=> b!3039 m!4713))

(declare-fun m!4715 () Bool)

(assert (=> b!3039 m!4715))

(assert (=> d!2174 d!2236))

(declare-fun d!2238 () Bool)

(declare-fun e!1718 () Bool)

(assert (=> d!2238 e!1718))

(declare-fun res!982 () Bool)

(assert (=> d!2238 (=> (not res!982) (not e!1718))))

(declare-fun lt!852 () List!58)

(assert (=> d!2238 (= res!982 (= (size!23 lt!852) (+ (size!23 (tail!242 (asList!0 queue!27))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1719 () List!58)

(assert (=> d!2238 (= lt!852 e!1719)))

(declare-fun c!1088 () Bool)

(assert (=> d!2238 (= c!1088 (is-Nil!59 (tail!242 (asList!0 queue!27))))))

(assert (=> d!2238 (= (concat!2 (tail!242 (asList!0 queue!27)) (Cons!58 elem!51 Nil!59)) lt!852)))

(declare-fun b!3040 () Bool)

(assert (=> b!3040 (= e!1719 (Cons!58 elem!51 Nil!59))))

(declare-fun b!3041 () Bool)

(assert (=> b!3041 (= e!1719 (Cons!58 (head!230 (tail!242 (asList!0 queue!27))) (concat!2 (tail!242 (tail!242 (asList!0 queue!27))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!3042 () Bool)

(assert (=> b!3042 (= e!1718 (= (content!22 lt!852) (union (content!22 (tail!242 (asList!0 queue!27))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2238 c!1088) b!3040))

(assert (= (and d!2238 (not c!1088)) b!3041))

(assert (= (and d!2238 res!982) b!3042))

(declare-fun m!4717 () Bool)

(assert (=> d!2238 m!4717))

(declare-fun m!4719 () Bool)

(assert (=> d!2238 m!4719))

(assert (=> d!2238 m!4501))

(declare-fun m!4721 () Bool)

(assert (=> b!3041 m!4721))

(declare-fun m!4723 () Bool)

(assert (=> b!3042 m!4723))

(assert (=> b!3042 m!4665))

(assert (=> b!3042 m!4509))

(assert (=> b!2953 d!2238))

(declare-fun d!2240 () Bool)

(declare-fun e!1720 () Bool)

(assert (=> d!2240 e!1720))

(declare-fun res!983 () Bool)

(assert (=> d!2240 (=> (not res!983) (not e!1720))))

(declare-fun lt!853 () List!58)

(assert (=> d!2240 (= res!983 (= (size!23 lt!853) (+ (size!23 (tail!242 (reverse!5 rear!23))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1721 () List!58)

(assert (=> d!2240 (= lt!853 e!1721)))

(declare-fun c!1089 () Bool)

(assert (=> d!2240 (= c!1089 (is-Nil!59 (tail!242 (reverse!5 rear!23))))))

(assert (=> d!2240 (= (concat!2 (tail!242 (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59)) lt!853)))

(declare-fun b!3043 () Bool)

(assert (=> b!3043 (= e!1721 (Cons!58 elem!51 Nil!59))))

(declare-fun b!3044 () Bool)

(assert (=> b!3044 (= e!1721 (Cons!58 (head!230 (tail!242 (reverse!5 rear!23))) (concat!2 (tail!242 (tail!242 (reverse!5 rear!23))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!3045 () Bool)

(assert (=> b!3045 (= e!1720 (= (content!22 lt!853) (union (content!22 (tail!242 (reverse!5 rear!23))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2240 c!1089) b!3043))

(assert (= (and d!2240 (not c!1089)) b!3044))

(assert (= (and d!2240 res!983) b!3045))

(declare-fun m!4725 () Bool)

(assert (=> d!2240 m!4725))

(declare-fun m!4727 () Bool)

(assert (=> d!2240 m!4727))

(assert (=> d!2240 m!4501))

(declare-fun m!4729 () Bool)

(assert (=> b!3044 m!4729))

(declare-fun m!4731 () Bool)

(assert (=> b!3045 m!4731))

(assert (=> b!3045 m!4645))

(assert (=> b!3045 m!4509))

(assert (=> b!2965 d!2240))

(declare-fun d!2242 () Bool)

(declare-fun lt!856 () Int)

(assert (=> d!2242 (>= lt!856 0)))

(declare-fun e!1724 () Int)

(assert (=> d!2242 (= lt!856 e!1724)))

(declare-fun c!1092 () Bool)

(assert (=> d!2242 (= c!1092 (is-Nil!59 lt!829))))

(assert (=> d!2242 (= (size!23 lt!829) lt!856)))

(declare-fun b!3050 () Bool)

(assert (=> b!3050 (= e!1724 0)))

(declare-fun b!3051 () Bool)

(assert (=> b!3051 (= e!1724 (+ 1 (size!23 (tail!242 lt!829))))))

(assert (= (and d!2242 c!1092) b!3050))

(assert (= (and d!2242 (not c!1092)) b!3051))

(declare-fun m!4733 () Bool)

(assert (=> b!3051 m!4733))

(assert (=> d!2182 d!2242))

(declare-fun d!2244 () Bool)

(declare-fun lt!857 () Int)

(assert (=> d!2244 (>= lt!857 0)))

(declare-fun e!1725 () Int)

(assert (=> d!2244 (= lt!857 e!1725)))

(declare-fun c!1093 () Bool)

(assert (=> d!2244 (= c!1093 (is-Nil!59 front!24))))

(assert (=> d!2244 (= (size!23 front!24) lt!857)))

(declare-fun b!3052 () Bool)

(assert (=> b!3052 (= e!1725 0)))

(declare-fun b!3053 () Bool)

(assert (=> b!3053 (= e!1725 (+ 1 (size!23 (tail!242 front!24))))))

(assert (= (and d!2244 c!1093) b!3052))

(assert (= (and d!2244 (not c!1093)) b!3053))

(assert (=> b!3053 m!4653))

(assert (=> d!2182 d!2244))

(declare-fun d!2246 () Bool)

(declare-fun lt!858 () Int)

(assert (=> d!2246 (>= lt!858 0)))

(declare-fun e!1726 () Int)

(assert (=> d!2246 (= lt!858 e!1726)))

(declare-fun c!1094 () Bool)

(assert (=> d!2246 (= c!1094 (is-Nil!59 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))

(assert (=> d!2246 (= (size!23 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) lt!858)))

(declare-fun b!3054 () Bool)

(assert (=> b!3054 (= e!1726 0)))

(declare-fun b!3055 () Bool)

(assert (=> b!3055 (= e!1726 (+ 1 (size!23 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2246 c!1094) b!3054))

(assert (= (and d!2246 (not c!1094)) b!3055))

(declare-fun m!4735 () Bool)

(assert (=> b!3055 m!4735))

(assert (=> d!2182 d!2246))

(declare-fun d!2248 () Bool)

(declare-fun lt!859 () Int)

(assert (=> d!2248 (>= lt!859 0)))

(declare-fun e!1727 () Int)

(assert (=> d!2248 (= lt!859 e!1727)))

(declare-fun c!1095 () Bool)

(assert (=> d!2248 (= c!1095 (is-Nil!59 lt!825))))

(assert (=> d!2248 (= (size!23 lt!825) lt!859)))

(declare-fun b!3056 () Bool)

(assert (=> b!3056 (= e!1727 0)))

(declare-fun b!3057 () Bool)

(assert (=> b!3057 (= e!1727 (+ 1 (size!23 (tail!242 lt!825))))))

(assert (= (and d!2248 c!1095) b!3056))

(assert (= (and d!2248 (not c!1095)) b!3057))

(declare-fun m!4737 () Bool)

(assert (=> b!3057 m!4737))

(assert (=> d!2176 d!2248))

(declare-fun d!2250 () Bool)

(declare-fun lt!860 () Int)

(assert (=> d!2250 (>= lt!860 0)))

(declare-fun e!1728 () Int)

(assert (=> d!2250 (= lt!860 e!1728)))

(declare-fun c!1096 () Bool)

(assert (=> d!2250 (= c!1096 (is-Nil!59 (asList!0 queue!27)))))

(assert (=> d!2250 (= (size!23 (asList!0 queue!27)) lt!860)))

(declare-fun b!3058 () Bool)

(assert (=> b!3058 (= e!1728 0)))

(declare-fun b!3059 () Bool)

(assert (=> b!3059 (= e!1728 (+ 1 (size!23 (tail!242 (asList!0 queue!27)))))))

(assert (= (and d!2250 c!1096) b!3058))

(assert (= (and d!2250 (not c!1096)) b!3059))

(assert (=> b!3059 m!4719))

(assert (=> d!2176 d!2250))

(declare-fun d!2252 () Bool)

(declare-fun lt!861 () Int)

(assert (=> d!2252 (>= lt!861 0)))

(declare-fun e!1729 () Int)

(assert (=> d!2252 (= lt!861 e!1729)))

(declare-fun c!1097 () Bool)

(assert (=> d!2252 (= c!1097 (is-Nil!59 (Cons!58 elem!51 Nil!59)))))

(assert (=> d!2252 (= (size!23 (Cons!58 elem!51 Nil!59)) lt!861)))

(declare-fun b!3060 () Bool)

(assert (=> b!3060 (= e!1729 0)))

(declare-fun b!3061 () Bool)

(assert (=> b!3061 (= e!1729 (+ 1 (size!23 (tail!242 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2252 c!1097) b!3060))

(assert (= (and d!2252 (not c!1097)) b!3061))

(declare-fun m!4739 () Bool)

(assert (=> b!3061 m!4739))

(assert (=> d!2176 d!2252))

(declare-fun d!2254 () Bool)

(declare-fun lt!862 () Int)

(assert (=> d!2254 (>= lt!862 0)))

(declare-fun e!1730 () Int)

(assert (=> d!2254 (= lt!862 e!1730)))

(declare-fun c!1098 () Bool)

(assert (=> d!2254 (= c!1098 (is-Nil!59 lt!830))))

(assert (=> d!2254 (= (size!23 lt!830) lt!862)))

(declare-fun b!3062 () Bool)

(assert (=> b!3062 (= e!1730 0)))

(declare-fun b!3063 () Bool)

(assert (=> b!3063 (= e!1730 (+ 1 (size!23 (tail!242 lt!830))))))

(assert (= (and d!2254 c!1098) b!3062))

(assert (= (and d!2254 (not c!1098)) b!3063))

(declare-fun m!4741 () Bool)

(assert (=> b!3063 m!4741))

(assert (=> d!2184 d!2254))

(declare-fun d!2256 () Bool)

(declare-fun lt!863 () Int)

(assert (=> d!2256 (>= lt!863 0)))

(declare-fun e!1731 () Int)

(assert (=> d!2256 (= lt!863 e!1731)))

(declare-fun c!1099 () Bool)

(assert (=> d!2256 (= c!1099 (is-Nil!59 (reverse!5 rear!23)))))

(assert (=> d!2256 (= (size!23 (reverse!5 rear!23)) lt!863)))

(declare-fun b!3064 () Bool)

(assert (=> b!3064 (= e!1731 0)))

(declare-fun b!3065 () Bool)

(assert (=> b!3065 (= e!1731 (+ 1 (size!23 (tail!242 (reverse!5 rear!23)))))))

(assert (= (and d!2256 c!1099) b!3064))

(assert (= (and d!2256 (not c!1099)) b!3065))

(assert (=> b!3065 m!4727))

(assert (=> d!2184 d!2256))

(assert (=> d!2184 d!2252))

(push 1)

(assert (not b!3027))

(assert (not b!3053))

(assert (not b!3065))

(assert (not b!3001))

(assert (not b!3012))

(assert (not b!3018))

(assert (not d!2192))

(assert (not b!3021))

(assert (not b!3042))

(assert (not d!2236))

(assert (not b!3004))

(assert (not b!3044))

(assert (not d!2206))

(assert (not b!3045))

(assert (not b!3023))

(assert (not b!3010))

(assert (not b!2989))

(assert (not b!3016))

(assert (not b!3061))

(assert (not b!3002))

(assert (not b!3025))

(assert (not b!2987))

(assert (not b!3051))

(assert (not b!3055))

(assert (not b!3008))

(assert (not b!2980))

(assert (not b!3063))

(assert (not b!2983))

(assert (not b!2999))

(assert (not b!2997))

(assert (not d!2232))

(assert (not d!2220))

(assert (not d!2238))

(assert (not d!2204))

(assert (not b!3009))

(assert (not b!3057))

(assert (not b!2984))

(assert (not b!3014))

(assert (not b!2986))

(assert (not b!3019))

(assert (not d!2230))

(assert (not b!3030))

(assert (not b!3059))

(assert (not b!3039))

(assert (not d!2226))

(assert (not b!3031))

(assert (not d!2196))

(assert (not b!3028))

(assert (not b!3041))

(assert (not b!3033))

(assert (not d!2194))

(assert (not b!3026))

(assert (not b!2981))

(assert (not b!2995))

(assert (not d!2234))

(assert (not d!2190))

(assert (not d!2240))

(assert (not b!3006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2258 () Bool)

(declare-fun lt!864 () Int)

(assert (=> d!2258 (>= lt!864 0)))

(declare-fun e!1732 () Int)

(assert (=> d!2258 (= lt!864 e!1732)))

(declare-fun c!1100 () Bool)

(assert (=> d!2258 (= c!1100 (is-Nil!59 lt!844))))

(assert (=> d!2258 (= (size!23 lt!844) lt!864)))

(declare-fun b!3066 () Bool)

(assert (=> b!3066 (= e!1732 0)))

(declare-fun b!3067 () Bool)

(assert (=> b!3067 (= e!1732 (+ 1 (size!23 (tail!242 lt!844))))))

(assert (= (and d!2258 c!1100) b!3066))

(assert (= (and d!2258 (not c!1100)) b!3067))

(declare-fun m!4743 () Bool)

(assert (=> b!3067 m!4743))

(assert (=> d!2220 d!2258))

(declare-fun d!2260 () Bool)

(declare-fun lt!865 () Int)

(assert (=> d!2260 (>= lt!865 0)))

(declare-fun e!1733 () Int)

(assert (=> d!2260 (= lt!865 e!1733)))

(declare-fun c!1101 () Bool)

(assert (=> d!2260 (= c!1101 (is-Nil!59 (tail!242 front!24)))))

(assert (=> d!2260 (= (size!23 (tail!242 front!24)) lt!865)))

(declare-fun b!3068 () Bool)

(assert (=> b!3068 (= e!1733 0)))

(declare-fun b!3069 () Bool)

(assert (=> b!3069 (= e!1733 (+ 1 (size!23 (tail!242 (tail!242 front!24)))))))

(assert (= (and d!2260 c!1101) b!3068))

(assert (= (and d!2260 (not c!1101)) b!3069))

(declare-fun m!4745 () Bool)

(assert (=> b!3069 m!4745))

(assert (=> d!2220 d!2260))

(assert (=> d!2220 d!2246))

(declare-fun d!2262 () Bool)

(declare-fun e!1734 () Bool)

(assert (=> d!2262 e!1734))

(declare-fun res!984 () Bool)

(assert (=> d!2262 (=> (not res!984) (not e!1734))))

(declare-fun lt!866 () List!58)

(assert (=> d!2262 (= res!984 (= (size!23 lt!866) (+ (size!23 (tail!242 (tail!242 (reverse!5 rear!23)))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1735 () List!58)

(assert (=> d!2262 (= lt!866 e!1735)))

(declare-fun c!1102 () Bool)

(assert (=> d!2262 (= c!1102 (is-Nil!59 (tail!242 (tail!242 (reverse!5 rear!23)))))))

(assert (=> d!2262 (= (concat!2 (tail!242 (tail!242 (reverse!5 rear!23))) (Cons!58 elem!51 Nil!59)) lt!866)))

(declare-fun b!3070 () Bool)

(assert (=> b!3070 (= e!1735 (Cons!58 elem!51 Nil!59))))

(declare-fun b!3071 () Bool)

(assert (=> b!3071 (= e!1735 (Cons!58 (head!230 (tail!242 (tail!242 (reverse!5 rear!23)))) (concat!2 (tail!242 (tail!242 (tail!242 (reverse!5 rear!23)))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!3072 () Bool)

(assert (=> b!3072 (= e!1734 (= (content!22 lt!866) (union (content!22 (tail!242 (tail!242 (reverse!5 rear!23)))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2262 c!1102) b!3070))

(assert (= (and d!2262 (not c!1102)) b!3071))

(assert (= (and d!2262 res!984) b!3072))

(declare-fun m!4747 () Bool)

(assert (=> d!2262 m!4747))

(declare-fun m!4749 () Bool)

(assert (=> d!2262 m!4749))

(assert (=> d!2262 m!4501))

(declare-fun m!4751 () Bool)

(assert (=> b!3071 m!4751))

(declare-fun m!4753 () Bool)

(assert (=> b!3072 m!4753))

(declare-fun m!4755 () Bool)

(assert (=> b!3072 m!4755))

(assert (=> b!3072 m!4509))

(assert (=> b!3044 d!2262))

(declare-fun d!2264 () Bool)

(declare-fun c!1103 () Bool)

(assert (=> d!2264 (= c!1103 (is-Nil!59 lt!839))))

(declare-fun e!1736 () (Set (_ BitVec 32)))

(assert (=> d!2264 (= (content!22 lt!839) e!1736)))

(declare-fun b!3073 () Bool)

(assert (=> b!3073 (= e!1736 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3074 () Bool)

(assert (=> b!3074 (= e!1736 (union (insert (head!230 lt!839) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!839))))))

(assert (= (and d!2264 c!1103) b!3073))

(assert (= (and d!2264 (not c!1103)) b!3074))

(declare-fun m!4757 () Bool)

(assert (=> b!3074 m!4757))

(declare-fun m!4759 () Bool)

(assert (=> b!3074 m!4759))

(assert (=> b!2987 d!2264))

(declare-fun d!2266 () Bool)

(declare-fun c!1104 () Bool)

(assert (=> d!2266 (= c!1104 (is-Nil!59 (front!57 (enqueue!0 queue!27 elem!51))))))

(declare-fun e!1737 () (Set (_ BitVec 32)))

(assert (=> d!2266 (= (content!22 (front!57 (enqueue!0 queue!27 elem!51))) e!1737)))

(declare-fun b!3075 () Bool)

(assert (=> b!3075 (= e!1737 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3076 () Bool)

(assert (=> b!3076 (= e!1737 (union (insert (head!230 (front!57 (enqueue!0 queue!27 elem!51))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (front!57 (enqueue!0 queue!27 elem!51))))))))

(assert (= (and d!2266 c!1104) b!3075))

(assert (= (and d!2266 (not c!1104)) b!3076))

(declare-fun m!4761 () Bool)

(assert (=> b!3076 m!4761))

(declare-fun m!4763 () Bool)

(assert (=> b!3076 m!4763))

(assert (=> b!2987 d!2266))

(declare-fun d!2268 () Bool)

(declare-fun c!1105 () Bool)

(assert (=> d!2268 (= c!1105 (is-Nil!59 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))

(declare-fun e!1738 () (Set (_ BitVec 32)))

(assert (=> d!2268 (= (content!22 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))) e!1738)))

(declare-fun b!3077 () Bool)

(assert (=> b!3077 (= e!1738 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3078 () Bool)

(assert (=> b!3078 (= e!1738 (union (insert (head!230 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))))

(assert (= (and d!2268 c!1105) b!3077))

(assert (= (and d!2268 (not c!1105)) b!3078))

(declare-fun m!4765 () Bool)

(assert (=> b!3078 m!4765))

(declare-fun m!4767 () Bool)

(assert (=> b!3078 m!4767))

(assert (=> b!2987 d!2268))

(declare-fun d!2270 () Bool)

(declare-fun e!1739 () Bool)

(assert (=> d!2270 e!1739))

(declare-fun res!985 () Bool)

(assert (=> d!2270 (=> (not res!985) (not e!1739))))

(declare-fun lt!867 () List!58)

(assert (=> d!2270 (= res!985 (= (size!23 lt!867) (+ (size!23 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) (size!23 Nil!59))))))

(declare-fun e!1740 () List!58)

(assert (=> d!2270 (= lt!867 e!1740)))

(declare-fun c!1106 () Bool)

(assert (=> d!2270 (= c!1106 (is-Nil!59 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (=> d!2270 (= (concat!2 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) Nil!59) lt!867)))

(declare-fun b!3079 () Bool)

(assert (=> b!3079 (= e!1740 Nil!59)))

(declare-fun b!3080 () Bool)

(assert (=> b!3080 (= e!1740 (Cons!58 (head!230 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) (concat!2 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) Nil!59)))))

(declare-fun b!3081 () Bool)

(assert (=> b!3081 (= e!1739 (= (content!22 lt!867) (union (content!22 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) (content!22 Nil!59))))))

(assert (= (and d!2270 c!1106) b!3079))

(assert (= (and d!2270 (not c!1106)) b!3080))

(assert (= (and d!2270 res!985) b!3081))

(declare-fun m!4769 () Bool)

(assert (=> d!2270 m!4769))

(declare-fun m!4771 () Bool)

(assert (=> d!2270 m!4771))

(assert (=> d!2270 m!4671))

(declare-fun m!4773 () Bool)

(assert (=> b!3080 m!4773))

(declare-fun m!4775 () Bool)

(assert (=> b!3081 m!4775))

(declare-fun m!4777 () Bool)

(assert (=> b!3081 m!4777))

(assert (=> b!3081 m!4679))

(assert (=> b!3025 d!2270))

(declare-fun d!2272 () Bool)

(declare-fun c!1107 () Bool)

(assert (=> d!2272 (= c!1107 (is-Nil!59 lt!847))))

(declare-fun e!1741 () (Set (_ BitVec 32)))

(assert (=> d!2272 (= (content!22 lt!847) e!1741)))

(declare-fun b!3082 () Bool)

(assert (=> b!3082 (= e!1741 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3083 () Bool)

(assert (=> b!3083 (= e!1741 (union (insert (head!230 lt!847) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!847))))))

(assert (= (and d!2272 c!1107) b!3082))

(assert (= (and d!2272 (not c!1107)) b!3083))

(declare-fun m!4779 () Bool)

(assert (=> b!3083 m!4779))

(declare-fun m!4781 () Bool)

(assert (=> b!3083 m!4781))

(assert (=> b!3031 d!2272))

(declare-fun d!2274 () Bool)

(declare-fun c!1108 () Bool)

(assert (=> d!2274 (= c!1108 (is-Nil!59 (front!57 queue!27)))))

(declare-fun e!1742 () (Set (_ BitVec 32)))

(assert (=> d!2274 (= (content!22 (front!57 queue!27)) e!1742)))

(declare-fun b!3084 () Bool)

(assert (=> b!3084 (= e!1742 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3085 () Bool)

(assert (=> b!3085 (= e!1742 (union (insert (head!230 (front!57 queue!27)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (front!57 queue!27)))))))

(assert (= (and d!2274 c!1108) b!3084))

(assert (= (and d!2274 (not c!1108)) b!3085))

(declare-fun m!4783 () Bool)

(assert (=> b!3085 m!4783))

(declare-fun m!4785 () Bool)

(assert (=> b!3085 m!4785))

(assert (=> b!3031 d!2274))

(declare-fun d!2276 () Bool)

(declare-fun c!1109 () Bool)

(assert (=> d!2276 (= c!1109 (is-Nil!59 (reverse!5 (rear!59 queue!27))))))

(declare-fun e!1743 () (Set (_ BitVec 32)))

(assert (=> d!2276 (= (content!22 (reverse!5 (rear!59 queue!27))) e!1743)))

(declare-fun b!3086 () Bool)

(assert (=> b!3086 (= e!1743 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3087 () Bool)

(assert (=> b!3087 (= e!1743 (union (insert (head!230 (reverse!5 (rear!59 queue!27))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (reverse!5 (rear!59 queue!27))))))))

(assert (= (and d!2276 c!1109) b!3086))

(assert (= (and d!2276 (not c!1109)) b!3087))

(declare-fun m!4787 () Bool)

(assert (=> b!3087 m!4787))

(declare-fun m!4789 () Bool)

(assert (=> b!3087 m!4789))

(assert (=> b!3031 d!2276))

(declare-fun d!2278 () Bool)

(declare-fun e!1744 () Bool)

(assert (=> d!2278 e!1744))

(declare-fun res!986 () Bool)

(assert (=> d!2278 (=> (not res!986) (not e!1744))))

(declare-fun lt!868 () List!58)

(assert (=> d!2278 (= res!986 (= (size!23 lt!868) (+ (size!23 (front!57 queue!27)) (size!23 (reverse!5 (Cons!58 elem!51 (rear!59 queue!27)))))))))

(declare-fun e!1745 () List!58)

(assert (=> d!2278 (= lt!868 e!1745)))

(declare-fun c!1110 () Bool)

(assert (=> d!2278 (= c!1110 (is-Nil!59 (front!57 queue!27)))))

(assert (=> d!2278 (= (concat!2 (front!57 queue!27) (reverse!5 (Cons!58 elem!51 (rear!59 queue!27)))) lt!868)))

(declare-fun b!3088 () Bool)

(assert (=> b!3088 (= e!1745 (reverse!5 (Cons!58 elem!51 (rear!59 queue!27))))))

(declare-fun b!3089 () Bool)

(assert (=> b!3089 (= e!1745 (Cons!58 (head!230 (front!57 queue!27)) (concat!2 (tail!242 (front!57 queue!27)) (reverse!5 (Cons!58 elem!51 (rear!59 queue!27))))))))

(declare-fun b!3090 () Bool)

(assert (=> b!3090 (= e!1744 (= (content!22 lt!868) (union (content!22 (front!57 queue!27)) (content!22 (reverse!5 (Cons!58 elem!51 (rear!59 queue!27)))))))))

(assert (= (and d!2278 c!1110) b!3088))

(assert (= (and d!2278 (not c!1110)) b!3089))

(assert (= (and d!2278 res!986) b!3090))

(declare-fun m!4791 () Bool)

(assert (=> d!2278 m!4791))

(assert (=> d!2278 m!4685))

(assert (=> d!2278 m!4713))

(declare-fun m!4793 () Bool)

(assert (=> d!2278 m!4793))

(assert (=> b!3089 m!4713))

(declare-fun m!4795 () Bool)

(assert (=> b!3089 m!4795))

(declare-fun m!4797 () Bool)

(assert (=> b!3090 m!4797))

(assert (=> b!3090 m!4693))

(assert (=> b!3090 m!4713))

(declare-fun m!4799 () Bool)

(assert (=> b!3090 m!4799))

(assert (=> b!3039 d!2278))

(declare-fun d!2280 () Bool)

(declare-fun lt!869 () List!58)

(assert (=> d!2280 (= (content!22 lt!869) (content!22 (Cons!58 elem!51 (rear!59 queue!27))))))

(declare-fun e!1746 () List!58)

(assert (=> d!2280 (= lt!869 e!1746)))

(declare-fun c!1111 () Bool)

(assert (=> d!2280 (= c!1111 (is-Nil!59 (Cons!58 elem!51 (rear!59 queue!27))))))

(assert (=> d!2280 (= (reverse!5 (Cons!58 elem!51 (rear!59 queue!27))) lt!869)))

(declare-fun b!3091 () Bool)

(assert (=> b!3091 (= e!1746 Nil!59)))

(declare-fun b!3092 () Bool)

(assert (=> b!3092 (= e!1746 (concat!2 (reverse!5 (tail!242 (Cons!58 elem!51 (rear!59 queue!27)))) (Cons!58 (head!230 (Cons!58 elem!51 (rear!59 queue!27))) Nil!59)))))

(assert (= (and d!2280 c!1111) b!3091))

(assert (= (and d!2280 (not c!1111)) b!3092))

(declare-fun m!4801 () Bool)

(assert (=> d!2280 m!4801))

(declare-fun m!4803 () Bool)

(assert (=> d!2280 m!4803))

(declare-fun m!4805 () Bool)

(assert (=> b!3092 m!4805))

(assert (=> b!3092 m!4805))

(declare-fun m!4807 () Bool)

(assert (=> b!3092 m!4807))

(assert (=> b!3039 d!2280))

(declare-fun d!2282 () Bool)

(declare-fun c!1112 () Bool)

(assert (=> d!2282 (= c!1112 (is-Nil!59 (tail!242 rear!23)))))

(declare-fun e!1747 () (Set (_ BitVec 32)))

(assert (=> d!2282 (= (content!22 (tail!242 rear!23)) e!1747)))

(declare-fun b!3093 () Bool)

(assert (=> b!3093 (= e!1747 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3094 () Bool)

(assert (=> b!3094 (= e!1747 (union (insert (head!230 (tail!242 rear!23)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 rear!23)))))))

(assert (= (and d!2282 c!1112) b!3093))

(assert (= (and d!2282 (not c!1112)) b!3094))

(declare-fun m!4809 () Bool)

(assert (=> b!3094 m!4809))

(declare-fun m!4811 () Bool)

(assert (=> b!3094 m!4811))

(assert (=> b!3008 d!2282))

(declare-fun d!2284 () Bool)

(declare-fun e!1748 () Bool)

(assert (=> d!2284 e!1748))

(declare-fun res!987 () Bool)

(assert (=> d!2284 (=> (not res!987) (not e!1748))))

(declare-fun lt!870 () List!58)

(assert (=> d!2284 (= res!987 (= (size!23 lt!870) (+ (size!23 (reverse!5 (tail!242 (rear!59 queue!27)))) (size!23 (Cons!58 (head!230 (rear!59 queue!27)) Nil!59)))))))

(declare-fun e!1749 () List!58)

(assert (=> d!2284 (= lt!870 e!1749)))

(declare-fun c!1113 () Bool)

(assert (=> d!2284 (= c!1113 (is-Nil!59 (reverse!5 (tail!242 (rear!59 queue!27)))))))

(assert (=> d!2284 (= (concat!2 (reverse!5 (tail!242 (rear!59 queue!27))) (Cons!58 (head!230 (rear!59 queue!27)) Nil!59)) lt!870)))

(declare-fun b!3095 () Bool)

(assert (=> b!3095 (= e!1749 (Cons!58 (head!230 (rear!59 queue!27)) Nil!59))))

(declare-fun b!3096 () Bool)

(assert (=> b!3096 (= e!1749 (Cons!58 (head!230 (reverse!5 (tail!242 (rear!59 queue!27)))) (concat!2 (tail!242 (reverse!5 (tail!242 (rear!59 queue!27)))) (Cons!58 (head!230 (rear!59 queue!27)) Nil!59))))))

(declare-fun b!3097 () Bool)

(assert (=> b!3097 (= e!1748 (= (content!22 lt!870) (union (content!22 (reverse!5 (tail!242 (rear!59 queue!27)))) (content!22 (Cons!58 (head!230 (rear!59 queue!27)) Nil!59)))))))

(assert (= (and d!2284 c!1113) b!3095))

(assert (= (and d!2284 (not c!1113)) b!3096))

(assert (= (and d!2284 res!987) b!3097))

(declare-fun m!4813 () Bool)

(assert (=> d!2284 m!4813))

(assert (=> d!2284 m!4701))

(declare-fun m!4815 () Bool)

(assert (=> d!2284 m!4815))

(declare-fun m!4817 () Bool)

(assert (=> d!2284 m!4817))

(declare-fun m!4819 () Bool)

(assert (=> b!3096 m!4819))

(declare-fun m!4821 () Bool)

(assert (=> b!3097 m!4821))

(assert (=> b!3097 m!4701))

(declare-fun m!4823 () Bool)

(assert (=> b!3097 m!4823))

(declare-fun m!4825 () Bool)

(assert (=> b!3097 m!4825))

(assert (=> b!3033 d!2284))

(declare-fun d!2286 () Bool)

(declare-fun lt!871 () List!58)

(assert (=> d!2286 (= (content!22 lt!871) (content!22 (tail!242 (rear!59 queue!27))))))

(declare-fun e!1750 () List!58)

(assert (=> d!2286 (= lt!871 e!1750)))

(declare-fun c!1114 () Bool)

(assert (=> d!2286 (= c!1114 (is-Nil!59 (tail!242 (rear!59 queue!27))))))

(assert (=> d!2286 (= (reverse!5 (tail!242 (rear!59 queue!27))) lt!871)))

(declare-fun b!3098 () Bool)

(assert (=> b!3098 (= e!1750 Nil!59)))

(declare-fun b!3099 () Bool)

(assert (=> b!3099 (= e!1750 (concat!2 (reverse!5 (tail!242 (tail!242 (rear!59 queue!27)))) (Cons!58 (head!230 (tail!242 (rear!59 queue!27))) Nil!59)))))

(assert (= (and d!2286 c!1114) b!3098))

(assert (= (and d!2286 (not c!1114)) b!3099))

(declare-fun m!4827 () Bool)

(assert (=> d!2286 m!4827))

(declare-fun m!4829 () Bool)

(assert (=> d!2286 m!4829))

(declare-fun m!4831 () Bool)

(assert (=> b!3099 m!4831))

(assert (=> b!3099 m!4831))

(declare-fun m!4833 () Bool)

(assert (=> b!3099 m!4833))

(assert (=> b!3033 d!2286))

(declare-fun d!2288 () Bool)

(declare-fun lt!872 () Int)

(assert (=> d!2288 (>= lt!872 0)))

(declare-fun e!1751 () Int)

(assert (=> d!2288 (= lt!872 e!1751)))

(declare-fun c!1115 () Bool)

(assert (=> d!2288 (= c!1115 (is-Nil!59 lt!852))))

(assert (=> d!2288 (= (size!23 lt!852) lt!872)))

(declare-fun b!3100 () Bool)

(assert (=> b!3100 (= e!1751 0)))

(declare-fun b!3101 () Bool)

(assert (=> b!3101 (= e!1751 (+ 1 (size!23 (tail!242 lt!852))))))

(assert (= (and d!2288 c!1115) b!3100))

(assert (= (and d!2288 (not c!1115)) b!3101))

(declare-fun m!4835 () Bool)

(assert (=> b!3101 m!4835))

(assert (=> d!2238 d!2288))

(declare-fun d!2290 () Bool)

(declare-fun lt!873 () Int)

(assert (=> d!2290 (>= lt!873 0)))

(declare-fun e!1752 () Int)

(assert (=> d!2290 (= lt!873 e!1752)))

(declare-fun c!1116 () Bool)

(assert (=> d!2290 (= c!1116 (is-Nil!59 (tail!242 (asList!0 queue!27))))))

(assert (=> d!2290 (= (size!23 (tail!242 (asList!0 queue!27))) lt!873)))

(declare-fun b!3102 () Bool)

(assert (=> b!3102 (= e!1752 0)))

(declare-fun b!3103 () Bool)

(assert (=> b!3103 (= e!1752 (+ 1 (size!23 (tail!242 (tail!242 (asList!0 queue!27))))))))

(assert (= (and d!2290 c!1116) b!3102))

(assert (= (and d!2290 (not c!1116)) b!3103))

(declare-fun m!4837 () Bool)

(assert (=> b!3103 m!4837))

(assert (=> d!2238 d!2290))

(assert (=> d!2238 d!2252))

(declare-fun d!2292 () Bool)

(declare-fun c!1117 () Bool)

(assert (=> d!2292 (= c!1117 (is-Nil!59 lt!844))))

(declare-fun e!1753 () (Set (_ BitVec 32)))

(assert (=> d!2292 (= (content!22 lt!844) e!1753)))

(declare-fun b!3104 () Bool)

(assert (=> b!3104 (= e!1753 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3105 () Bool)

(assert (=> b!3105 (= e!1753 (union (insert (head!230 lt!844) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!844))))))

(assert (= (and d!2292 c!1117) b!3104))

(assert (= (and d!2292 (not c!1117)) b!3105))

(declare-fun m!4839 () Bool)

(assert (=> b!3105 m!4839))

(declare-fun m!4841 () Bool)

(assert (=> b!3105 m!4841))

(assert (=> b!3019 d!2292))

(declare-fun d!2294 () Bool)

(declare-fun c!1118 () Bool)

(assert (=> d!2294 (= c!1118 (is-Nil!59 (tail!242 front!24)))))

(declare-fun e!1754 () (Set (_ BitVec 32)))

(assert (=> d!2294 (= (content!22 (tail!242 front!24)) e!1754)))

(declare-fun b!3106 () Bool)

(assert (=> b!3106 (= e!1754 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3107 () Bool)

(assert (=> b!3107 (= e!1754 (union (insert (head!230 (tail!242 front!24)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 front!24)))))))

(assert (= (and d!2294 c!1118) b!3106))

(assert (= (and d!2294 (not c!1118)) b!3107))

(declare-fun m!4843 () Bool)

(assert (=> b!3107 m!4843))

(declare-fun m!4845 () Bool)

(assert (=> b!3107 m!4845))

(assert (=> b!3019 d!2294))

(assert (=> b!3019 d!2202))

(declare-fun d!2296 () Bool)

(declare-fun c!1119 () Bool)

(assert (=> d!2296 (= c!1119 (is-Nil!59 (tail!242 (reverse!5 rear!23))))))

(declare-fun e!1755 () (Set (_ BitVec 32)))

(assert (=> d!2296 (= (content!22 (tail!242 (reverse!5 rear!23))) e!1755)))

(declare-fun b!3108 () Bool)

(assert (=> b!3108 (= e!1755 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3109 () Bool)

(assert (=> b!3109 (= e!1755 (union (insert (head!230 (tail!242 (reverse!5 rear!23))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 (reverse!5 rear!23))))))))

(assert (= (and d!2296 c!1119) b!3108))

(assert (= (and d!2296 (not c!1119)) b!3109))

(declare-fun m!4847 () Bool)

(assert (=> b!3109 m!4847))

(assert (=> b!3109 m!4755))

(assert (=> b!3014 d!2296))

(declare-fun d!2298 () Bool)

(declare-fun lt!874 () Int)

(assert (=> d!2298 (>= lt!874 0)))

(declare-fun e!1756 () Int)

(assert (=> d!2298 (= lt!874 e!1756)))

(declare-fun c!1120 () Bool)

(assert (=> d!2298 (= c!1120 (is-Nil!59 lt!853))))

(assert (=> d!2298 (= (size!23 lt!853) lt!874)))

(declare-fun b!3110 () Bool)

(assert (=> b!3110 (= e!1756 0)))

(declare-fun b!3111 () Bool)

(assert (=> b!3111 (= e!1756 (+ 1 (size!23 (tail!242 lt!853))))))

(assert (= (and d!2298 c!1120) b!3110))

(assert (= (and d!2298 (not c!1120)) b!3111))

(declare-fun m!4849 () Bool)

(assert (=> b!3111 m!4849))

(assert (=> d!2240 d!2298))

(declare-fun d!2300 () Bool)

(declare-fun lt!875 () Int)

(assert (=> d!2300 (>= lt!875 0)))

(declare-fun e!1757 () Int)

(assert (=> d!2300 (= lt!875 e!1757)))

(declare-fun c!1121 () Bool)

(assert (=> d!2300 (= c!1121 (is-Nil!59 (tail!242 (reverse!5 rear!23))))))

(assert (=> d!2300 (= (size!23 (tail!242 (reverse!5 rear!23))) lt!875)))

(declare-fun b!3112 () Bool)

(assert (=> b!3112 (= e!1757 0)))

(declare-fun b!3113 () Bool)

(assert (=> b!3113 (= e!1757 (+ 1 (size!23 (tail!242 (tail!242 (reverse!5 rear!23))))))))

(assert (= (and d!2300 c!1121) b!3112))

(assert (= (and d!2300 (not c!1121)) b!3113))

(assert (=> b!3113 m!4749))

(assert (=> d!2240 d!2300))

(assert (=> d!2240 d!2252))

(declare-fun d!2302 () Bool)

(declare-fun lt!876 () Int)

(assert (=> d!2302 (>= lt!876 0)))

(declare-fun e!1758 () Int)

(assert (=> d!2302 (= lt!876 e!1758)))

(declare-fun c!1122 () Bool)

(assert (=> d!2302 (= c!1122 (is-Nil!59 lt!837))))

(assert (=> d!2302 (= (size!23 lt!837) lt!876)))

(declare-fun b!3114 () Bool)

(assert (=> b!3114 (= e!1758 0)))

(declare-fun b!3115 () Bool)

(assert (=> b!3115 (= e!1758 (+ 1 (size!23 (tail!242 lt!837))))))

(assert (= (and d!2302 c!1122) b!3114))

(assert (= (and d!2302 (not c!1122)) b!3115))

(declare-fun m!4851 () Bool)

(assert (=> b!3115 m!4851))

(assert (=> d!2190 d!2302))

(declare-fun d!2304 () Bool)

(declare-fun lt!877 () Int)

(assert (=> d!2304 (>= lt!877 0)))

(declare-fun e!1759 () Int)

(assert (=> d!2304 (= lt!877 e!1759)))

(declare-fun c!1123 () Bool)

(assert (=> d!2304 (= c!1123 (is-Nil!59 (concat!2 front!24 (reverse!5 rear!23))))))

(assert (=> d!2304 (= (size!23 (concat!2 front!24 (reverse!5 rear!23))) lt!877)))

(declare-fun b!3116 () Bool)

(assert (=> b!3116 (= e!1759 0)))

(declare-fun b!3117 () Bool)

(assert (=> b!3117 (= e!1759 (+ 1 (size!23 (tail!242 (concat!2 front!24 (reverse!5 rear!23))))))))

(assert (= (and d!2304 c!1123) b!3116))

(assert (= (and d!2304 (not c!1123)) b!3117))

(declare-fun m!4853 () Bool)

(assert (=> b!3117 m!4853))

(assert (=> d!2190 d!2304))

(assert (=> d!2190 d!2252))

(declare-fun d!2306 () Bool)

(assert (=> d!2306 (= (isAmortized!0 lt!851) (>= (size!23 (front!57 lt!851)) (size!23 (rear!59 lt!851))))))

(declare-fun bs!231 () Bool)

(assert (= bs!231 d!2306))

(declare-fun m!4855 () Bool)

(assert (=> bs!231 m!4855))

(declare-fun m!4857 () Bool)

(assert (=> bs!231 m!4857))

(assert (=> d!2236 d!2306))

(declare-fun d!2308 () Bool)

(declare-fun lt!878 () Int)

(assert (=> d!2308 (>= lt!878 0)))

(declare-fun e!1760 () Int)

(assert (=> d!2308 (= lt!878 e!1760)))

(declare-fun c!1124 () Bool)

(assert (=> d!2308 (= c!1124 (is-Nil!59 (Cons!58 elem!51 (rear!59 queue!27))))))

(assert (=> d!2308 (= (size!23 (Cons!58 elem!51 (rear!59 queue!27))) lt!878)))

(declare-fun b!3118 () Bool)

(assert (=> b!3118 (= e!1760 0)))

(declare-fun b!3119 () Bool)

(assert (=> b!3119 (= e!1760 (+ 1 (size!23 (tail!242 (Cons!58 elem!51 (rear!59 queue!27))))))))

(assert (= (and d!2308 c!1124) b!3118))

(assert (= (and d!2308 (not c!1124)) b!3119))

(declare-fun m!4859 () Bool)

(assert (=> b!3119 m!4859))

(assert (=> d!2236 d!2308))

(declare-fun d!2310 () Bool)

(declare-fun lt!879 () Int)

(assert (=> d!2310 (>= lt!879 0)))

(declare-fun e!1761 () Int)

(assert (=> d!2310 (= lt!879 e!1761)))

(declare-fun c!1125 () Bool)

(assert (=> d!2310 (= c!1125 (is-Nil!59 (front!57 queue!27)))))

(assert (=> d!2310 (= (size!23 (front!57 queue!27)) lt!879)))

(declare-fun b!3120 () Bool)

(assert (=> b!3120 (= e!1761 0)))

(declare-fun b!3121 () Bool)

(assert (=> b!3121 (= e!1761 (+ 1 (size!23 (tail!242 (front!57 queue!27)))))))

(assert (= (and d!2310 c!1125) b!3120))

(assert (= (and d!2310 (not c!1125)) b!3121))

(declare-fun m!4861 () Bool)

(assert (=> b!3121 m!4861))

(assert (=> d!2236 d!2310))

(declare-fun d!2312 () Bool)

(declare-fun e!1762 () Bool)

(assert (=> d!2312 e!1762))

(declare-fun res!988 () Bool)

(assert (=> d!2312 (=> (not res!988) (not e!1762))))

(declare-fun lt!880 () List!58)

(assert (=> d!2312 (= res!988 (= (size!23 lt!880) (+ (size!23 (tail!242 (tail!242 (asList!0 queue!27)))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1763 () List!58)

(assert (=> d!2312 (= lt!880 e!1763)))

(declare-fun c!1126 () Bool)

(assert (=> d!2312 (= c!1126 (is-Nil!59 (tail!242 (tail!242 (asList!0 queue!27)))))))

(assert (=> d!2312 (= (concat!2 (tail!242 (tail!242 (asList!0 queue!27))) (Cons!58 elem!51 Nil!59)) lt!880)))

(declare-fun b!3122 () Bool)

(assert (=> b!3122 (= e!1763 (Cons!58 elem!51 Nil!59))))

(declare-fun b!3123 () Bool)

(assert (=> b!3123 (= e!1763 (Cons!58 (head!230 (tail!242 (tail!242 (asList!0 queue!27)))) (concat!2 (tail!242 (tail!242 (tail!242 (asList!0 queue!27)))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!3124 () Bool)

(assert (=> b!3124 (= e!1762 (= (content!22 lt!880) (union (content!22 (tail!242 (tail!242 (asList!0 queue!27)))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2312 c!1126) b!3122))

(assert (= (and d!2312 (not c!1126)) b!3123))

(assert (= (and d!2312 res!988) b!3124))

(declare-fun m!4863 () Bool)

(assert (=> d!2312 m!4863))

(assert (=> d!2312 m!4837))

(assert (=> d!2312 m!4501))

(declare-fun m!4865 () Bool)

(assert (=> b!3123 m!4865))

(declare-fun m!4867 () Bool)

(assert (=> b!3124 m!4867))

(declare-fun m!4869 () Bool)

(assert (=> b!3124 m!4869))

(assert (=> b!3124 m!4509))

(assert (=> b!3041 d!2312))

(declare-fun d!2314 () Bool)

(declare-fun c!1127 () Bool)

(assert (=> d!2314 (= c!1127 (is-Nil!59 lt!838))))

(declare-fun e!1764 () (Set (_ BitVec 32)))

(assert (=> d!2314 (= (content!22 lt!838) e!1764)))

(declare-fun b!3125 () Bool)

(assert (=> b!3125 (= e!1764 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3126 () Bool)

(assert (=> b!3126 (= e!1764 (union (insert (head!230 lt!838) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!838))))))

(assert (= (and d!2314 c!1127) b!3125))

(assert (= (and d!2314 (not c!1127)) b!3126))

(declare-fun m!4871 () Bool)

(assert (=> b!3126 m!4871))

(declare-fun m!4873 () Bool)

(assert (=> b!3126 m!4873))

(assert (=> b!2984 d!2314))

(assert (=> b!2984 d!2200))

(assert (=> b!2984 d!2216))

(declare-fun d!2316 () Bool)

(declare-fun c!1128 () Bool)

(assert (=> d!2316 (= c!1128 (is-Nil!59 lt!837))))

(declare-fun e!1765 () (Set (_ BitVec 32)))

(assert (=> d!2316 (= (content!22 lt!837) e!1765)))

(declare-fun b!3127 () Bool)

(assert (=> b!3127 (= e!1765 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3128 () Bool)

(assert (=> b!3128 (= e!1765 (union (insert (head!230 lt!837) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!837))))))

(assert (= (and d!2316 c!1128) b!3127))

(assert (= (and d!2316 (not c!1128)) b!3128))

(declare-fun m!4875 () Bool)

(assert (=> b!3128 m!4875))

(declare-fun m!4877 () Bool)

(assert (=> b!3128 m!4877))

(assert (=> b!2981 d!2316))

(declare-fun d!2318 () Bool)

(declare-fun c!1129 () Bool)

(assert (=> d!2318 (= c!1129 (is-Nil!59 (concat!2 front!24 (reverse!5 rear!23))))))

(declare-fun e!1766 () (Set (_ BitVec 32)))

(assert (=> d!2318 (= (content!22 (concat!2 front!24 (reverse!5 rear!23))) e!1766)))

(declare-fun b!3129 () Bool)

(assert (=> b!3129 (= e!1766 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3130 () Bool)

(assert (=> b!3130 (= e!1766 (union (insert (head!230 (concat!2 front!24 (reverse!5 rear!23))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (concat!2 front!24 (reverse!5 rear!23))))))))

(assert (= (and d!2318 c!1129) b!3129))

(assert (= (and d!2318 (not c!1129)) b!3130))

(declare-fun m!4879 () Bool)

(assert (=> b!3130 m!4879))

(declare-fun m!4881 () Bool)

(assert (=> b!3130 m!4881))

(assert (=> b!2981 d!2318))

(assert (=> b!2981 d!2218))

(declare-fun d!2320 () Bool)

(declare-fun lt!881 () Int)

(assert (=> d!2320 (>= lt!881 0)))

(declare-fun e!1767 () Int)

(assert (=> d!2320 (= lt!881 e!1767)))

(declare-fun c!1130 () Bool)

(assert (=> d!2320 (= c!1130 (is-Nil!59 lt!847))))

(assert (=> d!2320 (= (size!23 lt!847) lt!881)))

(declare-fun b!3131 () Bool)

(assert (=> b!3131 (= e!1767 0)))

(declare-fun b!3132 () Bool)

(assert (=> b!3132 (= e!1767 (+ 1 (size!23 (tail!242 lt!847))))))

(assert (= (and d!2320 c!1130) b!3131))

(assert (= (and d!2320 (not c!1130)) b!3132))

(declare-fun m!4883 () Bool)

(assert (=> b!3132 m!4883))

(assert (=> d!2230 d!2320))

(assert (=> d!2230 d!2310))

(declare-fun d!2322 () Bool)

(declare-fun lt!882 () Int)

(assert (=> d!2322 (>= lt!882 0)))

(declare-fun e!1768 () Int)

(assert (=> d!2322 (= lt!882 e!1768)))

(declare-fun c!1131 () Bool)

(assert (=> d!2322 (= c!1131 (is-Nil!59 (reverse!5 (rear!59 queue!27))))))

(assert (=> d!2322 (= (size!23 (reverse!5 (rear!59 queue!27))) lt!882)))

(declare-fun b!3133 () Bool)

(assert (=> b!3133 (= e!1768 0)))

(declare-fun b!3134 () Bool)

(assert (=> b!3134 (= e!1768 (+ 1 (size!23 (tail!242 (reverse!5 (rear!59 queue!27))))))))

(assert (= (and d!2322 c!1131) b!3133))

(assert (= (and d!2322 (not c!1131)) b!3134))

(declare-fun m!4885 () Bool)

(assert (=> b!3134 m!4885))

(assert (=> d!2230 d!2322))

(declare-fun d!2324 () Bool)

(declare-fun c!1132 () Bool)

(assert (=> d!2324 (= c!1132 (is-Nil!59 (tail!242 lt!833)))))

(declare-fun e!1769 () (Set (_ BitVec 32)))

(assert (=> d!2324 (= (content!22 (tail!242 lt!833)) e!1769)))

(declare-fun b!3135 () Bool)

(assert (=> b!3135 (= e!1769 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3136 () Bool)

(assert (=> b!3136 (= e!1769 (union (insert (head!230 (tail!242 lt!833)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 lt!833)))))))

(assert (= (and d!2324 c!1132) b!3135))

(assert (= (and d!2324 (not c!1132)) b!3136))

(declare-fun m!4887 () Bool)

(assert (=> b!3136 m!4887))

(declare-fun m!4889 () Bool)

(assert (=> b!3136 m!4889))

(assert (=> b!3006 d!2324))

(declare-fun d!2326 () Bool)

(declare-fun c!1133 () Bool)

(assert (=> d!2326 (= c!1133 (is-Nil!59 lt!848))))

(declare-fun e!1770 () (Set (_ BitVec 32)))

(assert (=> d!2326 (= (content!22 lt!848) e!1770)))

(declare-fun b!3137 () Bool)

(assert (=> b!3137 (= e!1770 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3138 () Bool)

(assert (=> b!3138 (= e!1770 (union (insert (head!230 lt!848) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!848))))))

(assert (= (and d!2326 c!1133) b!3137))

(assert (= (and d!2326 (not c!1133)) b!3138))

(declare-fun m!4891 () Bool)

(assert (=> b!3138 m!4891))

(declare-fun m!4893 () Bool)

(assert (=> b!3138 m!4893))

(assert (=> d!2232 d!2326))

(declare-fun d!2328 () Bool)

(declare-fun c!1134 () Bool)

(assert (=> d!2328 (= c!1134 (is-Nil!59 (rear!59 queue!27)))))

(declare-fun e!1771 () (Set (_ BitVec 32)))

(assert (=> d!2328 (= (content!22 (rear!59 queue!27)) e!1771)))

(declare-fun b!3139 () Bool)

(assert (=> b!3139 (= e!1771 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3140 () Bool)

(assert (=> b!3140 (= e!1771 (union (insert (head!230 (rear!59 queue!27)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (rear!59 queue!27)))))))

(assert (= (and d!2328 c!1134) b!3139))

(assert (= (and d!2328 (not c!1134)) b!3140))

(declare-fun m!4895 () Bool)

(assert (=> b!3140 m!4895))

(assert (=> b!3140 m!4829))

(assert (=> d!2232 d!2328))

(assert (=> b!3028 d!2270))

(declare-fun d!2330 () Bool)

(declare-fun c!1135 () Bool)

(assert (=> d!2330 (= c!1135 (is-Nil!59 (tail!242 (Cons!58 elem!51 Nil!59))))))

(declare-fun e!1772 () (Set (_ BitVec 32)))

(assert (=> d!2330 (= (content!22 (tail!242 (Cons!58 elem!51 Nil!59))) e!1772)))

(declare-fun b!3141 () Bool)

(assert (=> b!3141 (= e!1772 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3142 () Bool)

(assert (=> b!3142 (= e!1772 (union (insert (head!230 (tail!242 (Cons!58 elem!51 Nil!59))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2330 c!1135) b!3141))

(assert (= (and d!2330 (not c!1135)) b!3142))

(declare-fun m!4897 () Bool)

(assert (=> b!3142 m!4897))

(declare-fun m!4899 () Bool)

(assert (=> b!3142 m!4899))

(assert (=> b!3016 d!2330))

(assert (=> b!3027 d!2270))

(declare-fun b!3143 () Bool)

(declare-fun e!1773 () Bool)

(assert (=> b!3143 (= e!1773 (= (concat!2 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) Nil!59) (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(declare-fun lt!883 () Bool)

(assert (=> b!3143 (= lt!883 (concatNil!0 (tail!242 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))))

(declare-fun d!2332 () Bool)

(assert (=> d!2332 e!1773))

(declare-fun c!1136 () Bool)

(assert (=> d!2332 (= c!1136 (is-Cons!58 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(assert (=> d!2332 (= (concatNil!0 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))) true)))

(declare-fun b!3144 () Bool)

(assert (=> b!3144 (= e!1773 (= (concat!2 (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))) Nil!59) (tail!242 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(assert (= (and d!2332 c!1136) b!3143))

(assert (= (and d!2332 (not c!1136)) b!3144))

(assert (=> b!3143 m!4773))

(declare-fun m!4901 () Bool)

(assert (=> b!3143 m!4901))

(assert (=> b!3144 m!4773))

(assert (=> b!3027 d!2332))

(declare-fun d!2334 () Bool)

(declare-fun lt!884 () Int)

(assert (=> d!2334 (>= lt!884 0)))

(declare-fun e!1774 () Int)

(assert (=> d!2334 (= lt!884 e!1774)))

(declare-fun c!1137 () Bool)

(assert (=> d!2334 (= c!1137 (is-Nil!59 lt!845))))

(assert (=> d!2334 (= (size!23 lt!845) lt!884)))

(declare-fun b!3145 () Bool)

(assert (=> b!3145 (= e!1774 0)))

(declare-fun b!3146 () Bool)

(assert (=> b!3146 (= e!1774 (+ 1 (size!23 (tail!242 lt!845))))))

(assert (= (and d!2334 c!1137) b!3145))

(assert (= (and d!2334 (not c!1137)) b!3146))

(declare-fun m!4903 () Bool)

(assert (=> b!3146 m!4903))

(assert (=> d!2226 d!2334))

(declare-fun d!2336 () Bool)

(declare-fun lt!885 () Int)

(assert (=> d!2336 (>= lt!885 0)))

(declare-fun e!1775 () Int)

(assert (=> d!2336 (= lt!885 e!1775)))

(declare-fun c!1138 () Bool)

(assert (=> d!2336 (= c!1138 (is-Nil!59 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(assert (=> d!2336 (= (size!23 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) lt!885)))

(declare-fun b!3147 () Bool)

(assert (=> b!3147 (= e!1775 0)))

(declare-fun b!3148 () Bool)

(assert (=> b!3148 (= e!1775 (+ 1 (size!23 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(assert (= (and d!2336 c!1138) b!3147))

(assert (= (and d!2336 (not c!1138)) b!3148))

(assert (=> b!3148 m!4771))

(assert (=> d!2226 d!2336))

(declare-fun d!2338 () Bool)

(declare-fun lt!886 () Int)

(assert (=> d!2338 (>= lt!886 0)))

(declare-fun e!1776 () Int)

(assert (=> d!2338 (= lt!886 e!1776)))

(declare-fun c!1139 () Bool)

(assert (=> d!2338 (= c!1139 (is-Nil!59 Nil!59))))

(assert (=> d!2338 (= (size!23 Nil!59) lt!886)))

(declare-fun b!3149 () Bool)

(assert (=> b!3149 (= e!1776 0)))

(declare-fun b!3150 () Bool)

(assert (=> b!3150 (= e!1776 (+ 1 (size!23 (tail!242 Nil!59))))))

(assert (= (and d!2338 c!1139) b!3149))

(assert (= (and d!2338 (not c!1139)) b!3150))

(declare-fun m!4905 () Bool)

(assert (=> b!3150 m!4905))

(assert (=> d!2226 d!2338))

(assert (=> b!3065 d!2300))

(declare-fun d!2340 () Bool)

(declare-fun c!1140 () Bool)

(assert (=> d!2340 (= c!1140 (is-Nil!59 lt!840))))

(declare-fun e!1777 () (Set (_ BitVec 32)))

(assert (=> d!2340 (= (content!22 lt!840) e!1777)))

(declare-fun b!3151 () Bool)

(assert (=> b!3151 (= e!1777 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3152 () Bool)

(assert (=> b!3152 (= e!1777 (union (insert (head!230 lt!840) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!840))))))

(assert (= (and d!2340 c!1140) b!3151))

(assert (= (and d!2340 (not c!1140)) b!3152))

(declare-fun m!4907 () Bool)

(assert (=> b!3152 m!4907))

(declare-fun m!4909 () Bool)

(assert (=> b!3152 m!4909))

(assert (=> d!2196 d!2340))

(declare-fun d!2342 () Bool)

(declare-fun c!1141 () Bool)

(assert (=> d!2342 (= c!1141 (is-Nil!59 (rear!59 (enqueue!0 queue!27 elem!51))))))

(declare-fun e!1778 () (Set (_ BitVec 32)))

(assert (=> d!2342 (= (content!22 (rear!59 (enqueue!0 queue!27 elem!51))) e!1778)))

(declare-fun b!3153 () Bool)

(assert (=> b!3153 (= e!1778 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3154 () Bool)

(assert (=> b!3154 (= e!1778 (union (insert (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))))))

(assert (= (and d!2342 c!1141) b!3153))

(assert (= (and d!2342 (not c!1141)) b!3154))

(declare-fun m!4911 () Bool)

(assert (=> b!3154 m!4911))

(declare-fun m!4913 () Bool)

(assert (=> b!3154 m!4913))

(assert (=> d!2196 d!2342))

(declare-fun d!2344 () Bool)

(declare-fun c!1142 () Bool)

(assert (=> d!2344 (= c!1142 (is-Nil!59 lt!842))))

(declare-fun e!1779 () (Set (_ BitVec 32)))

(assert (=> d!2344 (= (content!22 lt!842) e!1779)))

(declare-fun b!3155 () Bool)

(assert (=> b!3155 (= e!1779 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3156 () Bool)

(assert (=> b!3156 (= e!1779 (union (insert (head!230 lt!842) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!842))))))

(assert (= (and d!2344 c!1142) b!3155))

(assert (= (and d!2344 (not c!1142)) b!3156))

(declare-fun m!4915 () Bool)

(assert (=> b!3156 m!4915))

(declare-fun m!4917 () Bool)

(assert (=> b!3156 m!4917))

(assert (=> d!2206 d!2344))

(assert (=> d!2206 d!2282))

(declare-fun d!2346 () Bool)

(declare-fun e!1780 () Bool)

(assert (=> d!2346 e!1780))

(declare-fun res!989 () Bool)

(assert (=> d!2346 (=> (not res!989) (not e!1780))))

(declare-fun lt!887 () List!58)

(assert (=> d!2346 (= res!989 (= (size!23 lt!887) (+ (size!23 (tail!242 (reverse!5 (tail!242 rear!23)))) (size!23 (Cons!58 (head!230 rear!23) Nil!59)))))))

(declare-fun e!1781 () List!58)

(assert (=> d!2346 (= lt!887 e!1781)))

(declare-fun c!1143 () Bool)

(assert (=> d!2346 (= c!1143 (is-Nil!59 (tail!242 (reverse!5 (tail!242 rear!23)))))))

(assert (=> d!2346 (= (concat!2 (tail!242 (reverse!5 (tail!242 rear!23))) (Cons!58 (head!230 rear!23) Nil!59)) lt!887)))

(declare-fun b!3157 () Bool)

(assert (=> b!3157 (= e!1781 (Cons!58 (head!230 rear!23) Nil!59))))

(declare-fun b!3158 () Bool)

(assert (=> b!3158 (= e!1781 (Cons!58 (head!230 (tail!242 (reverse!5 (tail!242 rear!23)))) (concat!2 (tail!242 (tail!242 (reverse!5 (tail!242 rear!23)))) (Cons!58 (head!230 rear!23) Nil!59))))))

(declare-fun b!3159 () Bool)

(assert (=> b!3159 (= e!1780 (= (content!22 lt!887) (union (content!22 (tail!242 (reverse!5 (tail!242 rear!23)))) (content!22 (Cons!58 (head!230 rear!23) Nil!59)))))))

(assert (= (and d!2346 c!1143) b!3157))

(assert (= (and d!2346 (not c!1143)) b!3158))

(assert (= (and d!2346 res!989) b!3159))

(declare-fun m!4919 () Bool)

(assert (=> d!2346 m!4919))

(declare-fun m!4921 () Bool)

(assert (=> d!2346 m!4921))

(assert (=> d!2346 m!4611))

(declare-fun m!4923 () Bool)

(assert (=> b!3158 m!4923))

(declare-fun m!4925 () Bool)

(assert (=> b!3159 m!4925))

(declare-fun m!4927 () Bool)

(assert (=> b!3159 m!4927))

(assert (=> b!3159 m!4619))

(assert (=> b!3001 d!2346))

(declare-fun d!2348 () Bool)

(declare-fun c!1144 () Bool)

(assert (=> d!2348 (= c!1144 (is-Nil!59 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1782 () (Set (_ BitVec 32)))

(assert (=> d!2348 (= (content!22 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) e!1782)))

(declare-fun b!3160 () Bool)

(assert (=> b!3160 (= e!1782 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3161 () Bool)

(assert (=> b!3161 (= e!1782 (union (insert (head!230 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(assert (= (and d!2348 c!1144) b!3160))

(assert (= (and d!2348 (not c!1144)) b!3161))

(declare-fun m!4929 () Bool)

(assert (=> b!3161 m!4929))

(declare-fun m!4931 () Bool)

(assert (=> b!3161 m!4931))

(assert (=> b!2999 d!2348))

(declare-fun d!2350 () Bool)

(declare-fun e!1783 () Bool)

(assert (=> d!2350 e!1783))

(declare-fun res!990 () Bool)

(assert (=> d!2350 (=> (not res!990) (not e!1783))))

(declare-fun lt!888 () List!58)

(assert (=> d!2350 (= res!990 (= (size!23 lt!888) (+ (size!23 (tail!242 (tail!242 front!24))) (size!23 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(declare-fun e!1784 () List!58)

(assert (=> d!2350 (= lt!888 e!1784)))

(declare-fun c!1145 () Bool)

(assert (=> d!2350 (= c!1145 (is-Nil!59 (tail!242 (tail!242 front!24))))))

(assert (=> d!2350 (= (concat!2 (tail!242 (tail!242 front!24)) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) lt!888)))

(declare-fun b!3162 () Bool)

(assert (=> b!3162 (= e!1784 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))

(declare-fun b!3163 () Bool)

(assert (=> b!3163 (= e!1784 (Cons!58 (head!230 (tail!242 (tail!242 front!24))) (concat!2 (tail!242 (tail!242 (tail!242 front!24))) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(declare-fun b!3164 () Bool)

(assert (=> b!3164 (= e!1783 (= (content!22 lt!888) (union (content!22 (tail!242 (tail!242 front!24))) (content!22 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2350 c!1145) b!3162))

(assert (= (and d!2350 (not c!1145)) b!3163))

(assert (= (and d!2350 res!990) b!3164))

(declare-fun m!4933 () Bool)

(assert (=> d!2350 m!4933))

(assert (=> d!2350 m!4745))

(assert (=> d!2350 m!4475))

(assert (=> d!2350 m!4523))

(assert (=> b!3163 m!4475))

(declare-fun m!4935 () Bool)

(assert (=> b!3163 m!4935))

(declare-fun m!4937 () Bool)

(assert (=> b!3164 m!4937))

(assert (=> b!3164 m!4845))

(assert (=> b!3164 m!4475))

(assert (=> b!3164 m!4531))

(assert (=> b!3018 d!2350))

(declare-fun d!2352 () Bool)

(declare-fun e!1785 () Bool)

(assert (=> d!2352 e!1785))

(declare-fun res!991 () Bool)

(assert (=> d!2352 (=> (not res!991) (not e!1785))))

(declare-fun lt!889 () List!58)

(assert (=> d!2352 (= res!991 (= (size!23 lt!889) (+ (size!23 (tail!242 front!24)) (size!23 (reverse!5 rear!23)))))))

(declare-fun e!1786 () List!58)

(assert (=> d!2352 (= lt!889 e!1786)))

(declare-fun c!1146 () Bool)

(assert (=> d!2352 (= c!1146 (is-Nil!59 (tail!242 front!24)))))

(assert (=> d!2352 (= (concat!2 (tail!242 front!24) (reverse!5 rear!23)) lt!889)))

(declare-fun b!3165 () Bool)

(assert (=> b!3165 (= e!1786 (reverse!5 rear!23))))

(declare-fun b!3166 () Bool)

(assert (=> b!3166 (= e!1786 (Cons!58 (head!230 (tail!242 front!24)) (concat!2 (tail!242 (tail!242 front!24)) (reverse!5 rear!23))))))

(declare-fun b!3167 () Bool)

(assert (=> b!3167 (= e!1785 (= (content!22 lt!889) (union (content!22 (tail!242 front!24)) (content!22 (reverse!5 rear!23)))))))

(assert (= (and d!2352 c!1146) b!3165))

(assert (= (and d!2352 (not c!1146)) b!3166))

(assert (= (and d!2352 res!991) b!3167))

(declare-fun m!4939 () Bool)

(assert (=> d!2352 m!4939))

(assert (=> d!2352 m!4653))

(assert (=> d!2352 m!4471))

(assert (=> d!2352 m!4535))

(assert (=> b!3166 m!4471))

(declare-fun m!4941 () Bool)

(assert (=> b!3166 m!4941))

(declare-fun m!4943 () Bool)

(assert (=> b!3167 m!4943))

(assert (=> b!3167 m!4601))

(assert (=> b!3167 m!4471))

(assert (=> b!3167 m!4541))

(assert (=> b!3009 d!2352))

(declare-fun e!1787 () Bool)

(declare-fun b!3168 () Bool)

(assert (=> b!3168 (= e!1787 (= (concat!2 (tail!242 (tail!242 front!24)) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (concat!2 (concat!2 (tail!242 (tail!242 front!24)) (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(declare-fun lt!890 () Bool)

(assert (=> b!3168 (= lt!890 (concatAssoc!0 (tail!242 (tail!242 (tail!242 front!24))) (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))

(declare-fun d!2354 () Bool)

(assert (=> d!2354 e!1787))

(declare-fun c!1147 () Bool)

(assert (=> d!2354 (= c!1147 (is-Cons!58 (tail!242 (tail!242 front!24))))))

(assert (=> d!2354 (= (concatAssoc!0 (tail!242 (tail!242 front!24)) (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)) true)))

(declare-fun b!3169 () Bool)

(assert (=> b!3169 (= e!1787 (= (concat!2 (tail!242 (tail!242 front!24)) (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59))) (concat!2 (concat!2 (tail!242 (tail!242 front!24)) (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59))))))

(assert (= (and d!2354 c!1147) b!3168))

(assert (= (and d!2354 (not c!1147)) b!3169))

(assert (=> b!3168 m!4475))

(assert (=> b!3168 m!4655))

(assert (=> b!3168 m!4471))

(assert (=> b!3168 m!4941))

(assert (=> b!3168 m!4941))

(declare-fun m!4945 () Bool)

(assert (=> b!3168 m!4945))

(assert (=> b!3168 m!4471))

(assert (=> b!3168 m!4475))

(assert (=> b!3168 m!4471))

(declare-fun m!4947 () Bool)

(assert (=> b!3168 m!4947))

(assert (=> b!3169 m!4471))

(assert (=> b!3169 m!4475))

(assert (=> b!3169 m!4475))

(assert (=> b!3169 m!4655))

(assert (=> b!3169 m!4471))

(assert (=> b!3169 m!4941))

(assert (=> b!3169 m!4941))

(assert (=> b!3169 m!4945))

(assert (=> b!3009 d!2354))

(declare-fun d!2356 () Bool)

(declare-fun e!1788 () Bool)

(assert (=> d!2356 e!1788))

(declare-fun res!992 () Bool)

(assert (=> d!2356 (=> (not res!992) (not e!1788))))

(declare-fun lt!891 () List!58)

(assert (=> d!2356 (= res!992 (= (size!23 lt!891) (+ (size!23 (concat!2 (tail!242 front!24) (reverse!5 rear!23))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1789 () List!58)

(assert (=> d!2356 (= lt!891 e!1789)))

(declare-fun c!1148 () Bool)

(assert (=> d!2356 (= c!1148 (is-Nil!59 (concat!2 (tail!242 front!24) (reverse!5 rear!23))))))

(assert (=> d!2356 (= (concat!2 (concat!2 (tail!242 front!24) (reverse!5 rear!23)) (Cons!58 elem!51 Nil!59)) lt!891)))

(declare-fun b!3170 () Bool)

(assert (=> b!3170 (= e!1789 (Cons!58 elem!51 Nil!59))))

(declare-fun b!3171 () Bool)

(assert (=> b!3171 (= e!1789 (Cons!58 (head!230 (concat!2 (tail!242 front!24) (reverse!5 rear!23))) (concat!2 (tail!242 (concat!2 (tail!242 front!24) (reverse!5 rear!23))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!3172 () Bool)

(assert (=> b!3172 (= e!1788 (= (content!22 lt!891) (union (content!22 (concat!2 (tail!242 front!24) (reverse!5 rear!23))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2356 c!1148) b!3170))

(assert (= (and d!2356 (not c!1148)) b!3171))

(assert (= (and d!2356 res!992) b!3172))

(declare-fun m!4949 () Bool)

(assert (=> d!2356 m!4949))

(assert (=> d!2356 m!4569))

(declare-fun m!4951 () Bool)

(assert (=> d!2356 m!4951))

(assert (=> d!2356 m!4501))

(declare-fun m!4953 () Bool)

(assert (=> b!3171 m!4953))

(declare-fun m!4955 () Bool)

(assert (=> b!3172 m!4955))

(assert (=> b!3172 m!4569))

(declare-fun m!4957 () Bool)

(assert (=> b!3172 m!4957))

(assert (=> b!3172 m!4509))

(assert (=> b!3009 d!2356))

(assert (=> b!3009 d!2184))

(assert (=> b!3009 d!2220))

(declare-fun d!2358 () Bool)

(declare-fun c!1149 () Bool)

(assert (=> d!2358 (= c!1149 (is-Nil!59 (tail!242 lt!829)))))

(declare-fun e!1790 () (Set (_ BitVec 32)))

(assert (=> d!2358 (= (content!22 (tail!242 lt!829)) e!1790)))

(declare-fun b!3173 () Bool)

(assert (=> b!3173 (= e!1790 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3174 () Bool)

(assert (=> b!3174 (= e!1790 (union (insert (head!230 (tail!242 lt!829)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 lt!829)))))))

(assert (= (and d!2358 c!1149) b!3173))

(assert (= (and d!2358 (not c!1149)) b!3174))

(declare-fun m!4959 () Bool)

(assert (=> b!3174 m!4959))

(declare-fun m!4961 () Bool)

(assert (=> b!3174 m!4961))

(assert (=> b!2995 d!2358))

(declare-fun d!2360 () Bool)

(declare-fun c!1150 () Bool)

(assert (=> d!2360 (= c!1150 (is-Nil!59 (tail!242 (asList!0 queue!27))))))

(declare-fun e!1791 () (Set (_ BitVec 32)))

(assert (=> d!2360 (= (content!22 (tail!242 (asList!0 queue!27))) e!1791)))

(declare-fun b!3175 () Bool)

(assert (=> b!3175 (= e!1791 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3176 () Bool)

(assert (=> b!3176 (= e!1791 (union (insert (head!230 (tail!242 (asList!0 queue!27))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 (asList!0 queue!27))))))))

(assert (= (and d!2360 c!1150) b!3175))

(assert (= (and d!2360 (not c!1150)) b!3176))

(declare-fun m!4963 () Bool)

(assert (=> b!3176 m!4963))

(assert (=> b!3176 m!4869))

(assert (=> b!3023 d!2360))

(declare-fun d!2362 () Bool)

(declare-fun lt!892 () Int)

(assert (=> d!2362 (>= lt!892 0)))

(declare-fun e!1792 () Int)

(assert (=> d!2362 (= lt!892 e!1792)))

(declare-fun c!1151 () Bool)

(assert (=> d!2362 (= c!1151 (is-Nil!59 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(assert (=> d!2362 (= (size!23 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) lt!892)))

(declare-fun b!3177 () Bool)

(assert (=> b!3177 (= e!1792 0)))

(declare-fun b!3178 () Bool)

(assert (=> b!3178 (= e!1792 (+ 1 (size!23 (tail!242 (tail!242 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(assert (= (and d!2362 c!1151) b!3177))

(assert (= (and d!2362 (not c!1151)) b!3178))

(declare-fun m!4965 () Bool)

(assert (=> b!3178 m!4965))

(assert (=> b!3055 d!2362))

(declare-fun d!2364 () Bool)

(declare-fun e!1793 () Bool)

(assert (=> d!2364 e!1793))

(declare-fun res!993 () Bool)

(assert (=> d!2364 (=> (not res!993) (not e!1793))))

(declare-fun lt!893 () List!58)

(assert (=> d!2364 (= res!993 (= (size!23 lt!893) (+ (size!23 (tail!242 (front!57 (enqueue!0 queue!27 elem!51)))) (size!23 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))))

(declare-fun e!1794 () List!58)

(assert (=> d!2364 (= lt!893 e!1794)))

(declare-fun c!1152 () Bool)

(assert (=> d!2364 (= c!1152 (is-Nil!59 (tail!242 (front!57 (enqueue!0 queue!27 elem!51)))))))

(assert (=> d!2364 (= (concat!2 (tail!242 (front!57 (enqueue!0 queue!27 elem!51))) (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))) lt!893)))

(declare-fun b!3179 () Bool)

(assert (=> b!3179 (= e!1794 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51))))))

(declare-fun b!3180 () Bool)

(assert (=> b!3180 (= e!1794 (Cons!58 (head!230 (tail!242 (front!57 (enqueue!0 queue!27 elem!51)))) (concat!2 (tail!242 (tail!242 (front!57 (enqueue!0 queue!27 elem!51)))) (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51))))))))

(declare-fun b!3181 () Bool)

(assert (=> b!3181 (= e!1793 (= (content!22 lt!893) (union (content!22 (tail!242 (front!57 (enqueue!0 queue!27 elem!51)))) (content!22 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))))

(assert (= (and d!2364 c!1152) b!3179))

(assert (= (and d!2364 (not c!1152)) b!3180))

(assert (= (and d!2364 res!993) b!3181))

(declare-fun m!4967 () Bool)

(assert (=> d!2364 m!4967))

(declare-fun m!4969 () Bool)

(assert (=> d!2364 m!4969))

(assert (=> d!2364 m!4489))

(assert (=> d!2364 m!4577))

(assert (=> b!3180 m!4489))

(declare-fun m!4971 () Bool)

(assert (=> b!3180 m!4971))

(declare-fun m!4973 () Bool)

(assert (=> b!3181 m!4973))

(assert (=> b!3181 m!4763))

(assert (=> b!3181 m!4489))

(assert (=> b!3181 m!4585))

(assert (=> b!2986 d!2364))

(assert (=> b!2997 d!2294))

(declare-fun d!2366 () Bool)

(declare-fun e!1795 () Bool)

(assert (=> d!2366 e!1795))

(declare-fun res!994 () Bool)

(assert (=> d!2366 (=> (not res!994) (not e!1795))))

(declare-fun lt!894 () List!58)

(assert (=> d!2366 (= res!994 (= (size!23 lt!894) (+ (size!23 (reverse!5 (tail!242 (tail!242 rear!23)))) (size!23 (Cons!58 (head!230 (tail!242 rear!23)) Nil!59)))))))

(declare-fun e!1796 () List!58)

(assert (=> d!2366 (= lt!894 e!1796)))

(declare-fun c!1153 () Bool)

(assert (=> d!2366 (= c!1153 (is-Nil!59 (reverse!5 (tail!242 (tail!242 rear!23)))))))

(assert (=> d!2366 (= (concat!2 (reverse!5 (tail!242 (tail!242 rear!23))) (Cons!58 (head!230 (tail!242 rear!23)) Nil!59)) lt!894)))

(declare-fun b!3182 () Bool)

(assert (=> b!3182 (= e!1796 (Cons!58 (head!230 (tail!242 rear!23)) Nil!59))))

(declare-fun b!3183 () Bool)

(assert (=> b!3183 (= e!1796 (Cons!58 (head!230 (reverse!5 (tail!242 (tail!242 rear!23)))) (concat!2 (tail!242 (reverse!5 (tail!242 (tail!242 rear!23)))) (Cons!58 (head!230 (tail!242 rear!23)) Nil!59))))))

(declare-fun b!3184 () Bool)

(assert (=> b!3184 (= e!1795 (= (content!22 lt!894) (union (content!22 (reverse!5 (tail!242 (tail!242 rear!23)))) (content!22 (Cons!58 (head!230 (tail!242 rear!23)) Nil!59)))))))

(assert (= (and d!2366 c!1153) b!3182))

(assert (= (and d!2366 (not c!1153)) b!3183))

(assert (= (and d!2366 res!994) b!3184))

(declare-fun m!4975 () Bool)

(assert (=> d!2366 m!4975))

(assert (=> d!2366 m!4625))

(declare-fun m!4977 () Bool)

(assert (=> d!2366 m!4977))

(declare-fun m!4979 () Bool)

(assert (=> d!2366 m!4979))

(declare-fun m!4981 () Bool)

(assert (=> b!3183 m!4981))

(declare-fun m!4983 () Bool)

(assert (=> b!3184 m!4983))

(assert (=> b!3184 m!4625))

(declare-fun m!4985 () Bool)

(assert (=> b!3184 m!4985))

(declare-fun m!4987 () Bool)

(assert (=> b!3184 m!4987))

(assert (=> b!3004 d!2366))

(declare-fun d!2368 () Bool)

(declare-fun lt!895 () List!58)

(assert (=> d!2368 (= (content!22 lt!895) (content!22 (tail!242 (tail!242 rear!23))))))

(declare-fun e!1797 () List!58)

(assert (=> d!2368 (= lt!895 e!1797)))

(declare-fun c!1154 () Bool)

(assert (=> d!2368 (= c!1154 (is-Nil!59 (tail!242 (tail!242 rear!23))))))

(assert (=> d!2368 (= (reverse!5 (tail!242 (tail!242 rear!23))) lt!895)))

(declare-fun b!3185 () Bool)

(assert (=> b!3185 (= e!1797 Nil!59)))

(declare-fun b!3186 () Bool)

(assert (=> b!3186 (= e!1797 (concat!2 (reverse!5 (tail!242 (tail!242 (tail!242 rear!23)))) (Cons!58 (head!230 (tail!242 (tail!242 rear!23))) Nil!59)))))

(assert (= (and d!2368 c!1154) b!3185))

(assert (= (and d!2368 (not c!1154)) b!3186))

(declare-fun m!4989 () Bool)

(assert (=> d!2368 m!4989))

(assert (=> d!2368 m!4811))

(declare-fun m!4991 () Bool)

(assert (=> b!3186 m!4991))

(assert (=> b!3186 m!4991))

(declare-fun m!4993 () Bool)

(assert (=> b!3186 m!4993))

(assert (=> b!3004 d!2368))

(declare-fun d!2370 () Bool)

(declare-fun e!1798 () Bool)

(assert (=> d!2370 e!1798))

(declare-fun res!995 () Bool)

(assert (=> d!2370 (=> (not res!995) (not e!1798))))

(declare-fun lt!896 () List!58)

(assert (=> d!2370 (= res!995 (= (size!23 lt!896) (+ (size!23 (tail!242 (concat!2 front!24 (reverse!5 rear!23)))) (size!23 (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1799 () List!58)

(assert (=> d!2370 (= lt!896 e!1799)))

(declare-fun c!1155 () Bool)

(assert (=> d!2370 (= c!1155 (is-Nil!59 (tail!242 (concat!2 front!24 (reverse!5 rear!23)))))))

(assert (=> d!2370 (= (concat!2 (tail!242 (concat!2 front!24 (reverse!5 rear!23))) (Cons!58 elem!51 Nil!59)) lt!896)))

(declare-fun b!3187 () Bool)

(assert (=> b!3187 (= e!1799 (Cons!58 elem!51 Nil!59))))

(declare-fun b!3188 () Bool)

(assert (=> b!3188 (= e!1799 (Cons!58 (head!230 (tail!242 (concat!2 front!24 (reverse!5 rear!23)))) (concat!2 (tail!242 (tail!242 (concat!2 front!24 (reverse!5 rear!23)))) (Cons!58 elem!51 Nil!59))))))

(declare-fun b!3189 () Bool)

(assert (=> b!3189 (= e!1798 (= (content!22 lt!896) (union (content!22 (tail!242 (concat!2 front!24 (reverse!5 rear!23)))) (content!22 (Cons!58 elem!51 Nil!59)))))))

(assert (= (and d!2370 c!1155) b!3187))

(assert (= (and d!2370 (not c!1155)) b!3188))

(assert (= (and d!2370 res!995) b!3189))

(declare-fun m!4995 () Bool)

(assert (=> d!2370 m!4995))

(assert (=> d!2370 m!4853))

(assert (=> d!2370 m!4501))

(declare-fun m!4997 () Bool)

(assert (=> b!3188 m!4997))

(declare-fun m!4999 () Bool)

(assert (=> b!3189 m!4999))

(assert (=> b!3189 m!4881))

(assert (=> b!3189 m!4509))

(assert (=> b!2980 d!2370))

(declare-fun d!2372 () Bool)

(declare-fun lt!897 () Int)

(assert (=> d!2372 (>= lt!897 0)))

(declare-fun e!1800 () Int)

(assert (=> d!2372 (= lt!897 e!1800)))

(declare-fun c!1156 () Bool)

(assert (=> d!2372 (= c!1156 (is-Nil!59 (tail!242 (Cons!58 elem!51 Nil!59))))))

(assert (=> d!2372 (= (size!23 (tail!242 (Cons!58 elem!51 Nil!59))) lt!897)))

(declare-fun b!3190 () Bool)

(assert (=> b!3190 (= e!1800 0)))

(declare-fun b!3191 () Bool)

(assert (=> b!3191 (= e!1800 (+ 1 (size!23 (tail!242 (tail!242 (Cons!58 elem!51 Nil!59))))))))

(assert (= (and d!2372 c!1156) b!3190))

(assert (= (and d!2372 (not c!1156)) b!3191))

(declare-fun m!5001 () Bool)

(assert (=> b!3191 m!5001))

(assert (=> b!3061 d!2372))

(assert (=> b!3053 d!2260))

(declare-fun d!2374 () Bool)

(declare-fun c!1157 () Bool)

(assert (=> d!2374 (= c!1157 (is-Nil!59 lt!853))))

(declare-fun e!1801 () (Set (_ BitVec 32)))

(assert (=> d!2374 (= (content!22 lt!853) e!1801)))

(declare-fun b!3192 () Bool)

(assert (=> b!3192 (= e!1801 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3193 () Bool)

(assert (=> b!3193 (= e!1801 (union (insert (head!230 lt!853) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!853))))))

(assert (= (and d!2374 c!1157) b!3192))

(assert (= (and d!2374 (not c!1157)) b!3193))

(declare-fun m!5003 () Bool)

(assert (=> b!3193 m!5003))

(declare-fun m!5005 () Bool)

(assert (=> b!3193 m!5005))

(assert (=> b!3045 d!2374))

(assert (=> b!3045 d!2296))

(assert (=> b!3045 d!2218))

(declare-fun d!2376 () Bool)

(declare-fun lt!898 () Int)

(assert (=> d!2376 (>= lt!898 0)))

(declare-fun e!1802 () Int)

(assert (=> d!2376 (= lt!898 e!1802)))

(declare-fun c!1158 () Bool)

(assert (=> d!2376 (= c!1158 (is-Nil!59 (tail!242 lt!830)))))

(assert (=> d!2376 (= (size!23 (tail!242 lt!830)) lt!898)))

(declare-fun b!3194 () Bool)

(assert (=> b!3194 (= e!1802 0)))

(declare-fun b!3195 () Bool)

(assert (=> b!3195 (= e!1802 (+ 1 (size!23 (tail!242 (tail!242 lt!830)))))))

(assert (= (and d!2376 c!1158) b!3194))

(assert (= (and d!2376 (not c!1158)) b!3195))

(declare-fun m!5007 () Bool)

(assert (=> b!3195 m!5007))

(assert (=> b!3063 d!2376))

(declare-fun d!2378 () Bool)

(declare-fun lt!899 () Int)

(assert (=> d!2378 (>= lt!899 0)))

(declare-fun e!1803 () Int)

(assert (=> d!2378 (= lt!899 e!1803)))

(declare-fun c!1159 () Bool)

(assert (=> d!2378 (= c!1159 (is-Nil!59 lt!841))))

(assert (=> d!2378 (= (size!23 lt!841) lt!899)))

(declare-fun b!3196 () Bool)

(assert (=> b!3196 (= e!1803 0)))

(declare-fun b!3197 () Bool)

(assert (=> b!3197 (= e!1803 (+ 1 (size!23 (tail!242 lt!841))))))

(assert (= (and d!2378 c!1159) b!3196))

(assert (= (and d!2378 (not c!1159)) b!3197))

(declare-fun m!5009 () Bool)

(assert (=> b!3197 m!5009))

(assert (=> d!2204 d!2378))

(declare-fun d!2380 () Bool)

(declare-fun lt!900 () Int)

(assert (=> d!2380 (>= lt!900 0)))

(declare-fun e!1804 () Int)

(assert (=> d!2380 (= lt!900 e!1804)))

(declare-fun c!1160 () Bool)

(assert (=> d!2380 (= c!1160 (is-Nil!59 (reverse!5 (tail!242 rear!23))))))

(assert (=> d!2380 (= (size!23 (reverse!5 (tail!242 rear!23))) lt!900)))

(declare-fun b!3198 () Bool)

(assert (=> b!3198 (= e!1804 0)))

(declare-fun b!3199 () Bool)

(assert (=> b!3199 (= e!1804 (+ 1 (size!23 (tail!242 (reverse!5 (tail!242 rear!23))))))))

(assert (= (and d!2380 c!1160) b!3198))

(assert (= (and d!2380 (not c!1160)) b!3199))

(assert (=> b!3199 m!4921))

(assert (=> d!2204 d!2380))

(declare-fun d!2382 () Bool)

(declare-fun lt!901 () Int)

(assert (=> d!2382 (>= lt!901 0)))

(declare-fun e!1805 () Int)

(assert (=> d!2382 (= lt!901 e!1805)))

(declare-fun c!1161 () Bool)

(assert (=> d!2382 (= c!1161 (is-Nil!59 (Cons!58 (head!230 rear!23) Nil!59)))))

(assert (=> d!2382 (= (size!23 (Cons!58 (head!230 rear!23) Nil!59)) lt!901)))

(declare-fun b!3200 () Bool)

(assert (=> b!3200 (= e!1805 0)))

(declare-fun b!3201 () Bool)

(assert (=> b!3201 (= e!1805 (+ 1 (size!23 (tail!242 (Cons!58 (head!230 rear!23) Nil!59)))))))

(assert (= (and d!2382 c!1161) b!3200))

(assert (= (and d!2382 (not c!1161)) b!3201))

(declare-fun m!5011 () Bool)

(assert (=> b!3201 m!5011))

(assert (=> d!2204 d!2382))

(declare-fun d!2384 () Bool)

(declare-fun c!1162 () Bool)

(assert (=> d!2384 (= c!1162 (is-Nil!59 lt!852))))

(declare-fun e!1806 () (Set (_ BitVec 32)))

(assert (=> d!2384 (= (content!22 lt!852) e!1806)))

(declare-fun b!3202 () Bool)

(assert (=> b!3202 (= e!1806 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3203 () Bool)

(assert (=> b!3203 (= e!1806 (union (insert (head!230 lt!852) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!852))))))

(assert (= (and d!2384 c!1162) b!3202))

(assert (= (and d!2384 (not c!1162)) b!3203))

(declare-fun m!5013 () Bool)

(assert (=> b!3203 m!5013))

(declare-fun m!5015 () Bool)

(assert (=> b!3203 m!5015))

(assert (=> b!3042 d!2384))

(assert (=> b!3042 d!2360))

(assert (=> b!3042 d!2218))

(declare-fun d!2386 () Bool)

(declare-fun lt!902 () Int)

(assert (=> d!2386 (>= lt!902 0)))

(declare-fun e!1807 () Int)

(assert (=> d!2386 (= lt!902 e!1807)))

(declare-fun c!1163 () Bool)

(assert (=> d!2386 (= c!1163 (is-Nil!59 (front!57 lt!822)))))

(assert (=> d!2386 (= (size!23 (front!57 lt!822)) lt!902)))

(declare-fun b!3204 () Bool)

(assert (=> b!3204 (= e!1807 0)))

(declare-fun b!3205 () Bool)

(assert (=> b!3205 (= e!1807 (+ 1 (size!23 (tail!242 (front!57 lt!822)))))))

(assert (= (and d!2386 c!1163) b!3204))

(assert (= (and d!2386 (not c!1163)) b!3205))

(declare-fun m!5017 () Bool)

(assert (=> b!3205 m!5017))

(assert (=> d!2234 d!2386))

(declare-fun d!2388 () Bool)

(declare-fun lt!903 () Int)

(assert (=> d!2388 (>= lt!903 0)))

(declare-fun e!1808 () Int)

(assert (=> d!2388 (= lt!903 e!1808)))

(declare-fun c!1164 () Bool)

(assert (=> d!2388 (= c!1164 (is-Nil!59 (rear!59 lt!822)))))

(assert (=> d!2388 (= (size!23 (rear!59 lt!822)) lt!903)))

(declare-fun b!3206 () Bool)

(assert (=> b!3206 (= e!1808 0)))

(declare-fun b!3207 () Bool)

(assert (=> b!3207 (= e!1808 (+ 1 (size!23 (tail!242 (rear!59 lt!822)))))))

(assert (= (and d!2388 c!1164) b!3206))

(assert (= (and d!2388 (not c!1164)) b!3207))

(declare-fun m!5019 () Bool)

(assert (=> b!3207 m!5019))

(assert (=> d!2234 d!2388))

(declare-fun d!2390 () Bool)

(declare-fun lt!904 () Int)

(assert (=> d!2390 (>= lt!904 0)))

(declare-fun e!1809 () Int)

(assert (=> d!2390 (= lt!904 e!1809)))

(declare-fun c!1165 () Bool)

(assert (=> d!2390 (= c!1165 (is-Nil!59 lt!838))))

(assert (=> d!2390 (= (size!23 lt!838) lt!904)))

(declare-fun b!3208 () Bool)

(assert (=> b!3208 (= e!1809 0)))

(declare-fun b!3209 () Bool)

(assert (=> b!3209 (= e!1809 (+ 1 (size!23 (tail!242 lt!838))))))

(assert (= (and d!2390 c!1165) b!3208))

(assert (= (and d!2390 (not c!1165)) b!3209))

(declare-fun m!5021 () Bool)

(assert (=> b!3209 m!5021))

(assert (=> d!2192 d!2390))

(assert (=> d!2192 d!2244))

(assert (=> d!2192 d!2256))

(declare-fun d!2392 () Bool)

(declare-fun lt!905 () Int)

(assert (=> d!2392 (>= lt!905 0)))

(declare-fun e!1810 () Int)

(assert (=> d!2392 (= lt!905 e!1810)))

(declare-fun c!1166 () Bool)

(assert (=> d!2392 (= c!1166 (is-Nil!59 (tail!242 lt!825)))))

(assert (=> d!2392 (= (size!23 (tail!242 lt!825)) lt!905)))

(declare-fun b!3210 () Bool)

(assert (=> b!3210 (= e!1810 0)))

(declare-fun b!3211 () Bool)

(assert (=> b!3211 (= e!1810 (+ 1 (size!23 (tail!242 (tail!242 lt!825)))))))

(assert (= (and d!2392 c!1166) b!3210))

(assert (= (and d!2392 (not c!1166)) b!3211))

(declare-fun m!5023 () Bool)

(assert (=> b!3211 m!5023))

(assert (=> b!3057 d!2392))

(declare-fun d!2394 () Bool)

(declare-fun c!1167 () Bool)

(assert (=> d!2394 (= c!1167 (is-Nil!59 lt!841))))

(declare-fun e!1811 () (Set (_ BitVec 32)))

(assert (=> d!2394 (= (content!22 lt!841) e!1811)))

(declare-fun b!3212 () Bool)

(assert (=> b!3212 (= e!1811 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3213 () Bool)

(assert (=> b!3213 (= e!1811 (union (insert (head!230 lt!841) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!841))))))

(assert (= (and d!2394 c!1167) b!3212))

(assert (= (and d!2394 (not c!1167)) b!3213))

(declare-fun m!5025 () Bool)

(assert (=> b!3213 m!5025))

(declare-fun m!5027 () Bool)

(assert (=> b!3213 m!5027))

(assert (=> b!3002 d!2394))

(declare-fun d!2396 () Bool)

(declare-fun c!1168 () Bool)

(assert (=> d!2396 (= c!1168 (is-Nil!59 (reverse!5 (tail!242 rear!23))))))

(declare-fun e!1812 () (Set (_ BitVec 32)))

(assert (=> d!2396 (= (content!22 (reverse!5 (tail!242 rear!23))) e!1812)))

(declare-fun b!3214 () Bool)

(assert (=> b!3214 (= e!1812 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3215 () Bool)

(assert (=> b!3215 (= e!1812 (union (insert (head!230 (reverse!5 (tail!242 rear!23))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (reverse!5 (tail!242 rear!23))))))))

(assert (= (and d!2396 c!1168) b!3214))

(assert (= (and d!2396 (not c!1168)) b!3215))

(declare-fun m!5029 () Bool)

(assert (=> b!3215 m!5029))

(assert (=> b!3215 m!4927))

(assert (=> b!3002 d!2396))

(declare-fun d!2398 () Bool)

(declare-fun c!1169 () Bool)

(assert (=> d!2398 (= c!1169 (is-Nil!59 (Cons!58 (head!230 rear!23) Nil!59)))))

(declare-fun e!1813 () (Set (_ BitVec 32)))

(assert (=> d!2398 (= (content!22 (Cons!58 (head!230 rear!23) Nil!59)) e!1813)))

(declare-fun b!3216 () Bool)

(assert (=> b!3216 (= e!1813 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3217 () Bool)

(assert (=> b!3217 (= e!1813 (union (insert (head!230 (Cons!58 (head!230 rear!23) Nil!59)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (Cons!58 (head!230 rear!23) Nil!59)))))))

(assert (= (and d!2398 c!1169) b!3216))

(assert (= (and d!2398 (not c!1169)) b!3217))

(declare-fun m!5031 () Bool)

(assert (=> b!3217 m!5031))

(declare-fun m!5033 () Bool)

(assert (=> b!3217 m!5033))

(assert (=> b!3002 d!2398))

(declare-fun d!2400 () Bool)

(declare-fun c!1170 () Bool)

(assert (=> d!2400 (= c!1170 (is-Nil!59 lt!845))))

(declare-fun e!1814 () (Set (_ BitVec 32)))

(assert (=> d!2400 (= (content!22 lt!845) e!1814)))

(declare-fun b!3218 () Bool)

(assert (=> b!3218 (= e!1814 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3219 () Bool)

(assert (=> b!3219 (= e!1814 (union (insert (head!230 lt!845) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 lt!845))))))

(assert (= (and d!2400 c!1170) b!3218))

(assert (= (and d!2400 (not c!1170)) b!3219))

(declare-fun m!5035 () Bool)

(assert (=> b!3219 m!5035))

(declare-fun m!5037 () Bool)

(assert (=> b!3219 m!5037))

(assert (=> b!3026 d!2400))

(declare-fun c!1171 () Bool)

(declare-fun d!2402 () Bool)

(assert (=> d!2402 (= c!1171 (is-Nil!59 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))

(declare-fun e!1815 () (Set (_ BitVec 32)))

(assert (=> d!2402 (= (content!22 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) e!1815)))

(declare-fun b!3220 () Bool)

(assert (=> b!3220 (= e!1815 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3221 () Bool)

(assert (=> b!3221 (= e!1815 (union (insert (head!230 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!58 elem!51 Nil!59)))))))))

(assert (= (and d!2402 c!1171) b!3220))

(assert (= (and d!2402 (not c!1171)) b!3221))

(declare-fun m!5039 () Bool)

(assert (=> b!3221 m!5039))

(assert (=> b!3221 m!4777))

(assert (=> b!3026 d!2402))

(declare-fun d!2404 () Bool)

(assert (=> d!2404 (= (content!22 Nil!59) (as emptyset (Set (_ BitVec 32))))))

(assert (=> b!3026 d!2404))

(declare-fun d!2406 () Bool)

(declare-fun e!1816 () Bool)

(assert (=> d!2406 e!1816))

(declare-fun res!996 () Bool)

(assert (=> d!2406 (=> (not res!996) (not e!1816))))

(declare-fun lt!906 () List!58)

(assert (=> d!2406 (= res!996 (= (size!23 lt!906) (+ (size!23 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))) (size!23 (Cons!58 (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) Nil!59)))))))

(declare-fun e!1817 () List!58)

(assert (=> d!2406 (= lt!906 e!1817)))

(declare-fun c!1172 () Bool)

(assert (=> d!2406 (= c!1172 (is-Nil!59 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))))))

(assert (=> d!2406 (= (concat!2 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51)))) (Cons!58 (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) Nil!59)) lt!906)))

(declare-fun b!3222 () Bool)

(assert (=> b!3222 (= e!1817 (Cons!58 (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) Nil!59))))

(declare-fun b!3223 () Bool)

(assert (=> b!3223 (= e!1817 (Cons!58 (head!230 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))) (concat!2 (tail!242 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))) (Cons!58 (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) Nil!59))))))

(declare-fun b!3224 () Bool)

(assert (=> b!3224 (= e!1816 (= (content!22 lt!906) (union (content!22 (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))) (content!22 (Cons!58 (head!230 (rear!59 (enqueue!0 queue!27 elem!51))) Nil!59)))))))

(assert (= (and d!2406 c!1172) b!3222))

(assert (= (and d!2406 (not c!1172)) b!3223))

(assert (= (and d!2406 res!996) b!3224))

(declare-fun m!5041 () Bool)

(assert (=> d!2406 m!5041))

(assert (=> d!2406 m!4591))

(declare-fun m!5043 () Bool)

(assert (=> d!2406 m!5043))

(declare-fun m!5045 () Bool)

(assert (=> d!2406 m!5045))

(declare-fun m!5047 () Bool)

(assert (=> b!3223 m!5047))

(declare-fun m!5049 () Bool)

(assert (=> b!3224 m!5049))

(assert (=> b!3224 m!4591))

(declare-fun m!5051 () Bool)

(assert (=> b!3224 m!5051))

(declare-fun m!5053 () Bool)

(assert (=> b!3224 m!5053))

(assert (=> b!2989 d!2406))

(declare-fun d!2408 () Bool)

(declare-fun lt!907 () List!58)

(assert (=> d!2408 (= (content!22 lt!907) (content!22 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51)))))))

(declare-fun e!1818 () List!58)

(assert (=> d!2408 (= lt!907 e!1818)))

(declare-fun c!1173 () Bool)

(assert (=> d!2408 (= c!1173 (is-Nil!59 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51)))))))

(assert (=> d!2408 (= (reverse!5 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51)))) lt!907)))

(declare-fun b!3225 () Bool)

(assert (=> b!3225 (= e!1818 Nil!59)))

(declare-fun b!3226 () Bool)

(assert (=> b!3226 (= e!1818 (concat!2 (reverse!5 (tail!242 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51))))) (Cons!58 (head!230 (tail!242 (rear!59 (enqueue!0 queue!27 elem!51)))) Nil!59)))))

(assert (= (and d!2408 c!1173) b!3225))

(assert (= (and d!2408 (not c!1173)) b!3226))

(declare-fun m!5055 () Bool)

(assert (=> d!2408 m!5055))

(assert (=> d!2408 m!4913))

(declare-fun m!5057 () Bool)

(assert (=> b!3226 m!5057))

(assert (=> b!3226 m!5057))

(declare-fun m!5059 () Bool)

(assert (=> b!3226 m!5059))

(assert (=> b!2989 d!2408))

(assert (=> b!3010 d!2220))

(assert (=> b!3010 d!2184))

(assert (=> b!3010 d!2356))

(assert (=> b!3010 d!2352))

(declare-fun d!2410 () Bool)

(declare-fun lt!908 () Int)

(assert (=> d!2410 (>= lt!908 0)))

(declare-fun e!1819 () Int)

(assert (=> d!2410 (= lt!908 e!1819)))

(declare-fun c!1174 () Bool)

(assert (=> d!2410 (= c!1174 (is-Nil!59 lt!839))))

(assert (=> d!2410 (= (size!23 lt!839) lt!908)))

(declare-fun b!3227 () Bool)

(assert (=> b!3227 (= e!1819 0)))

(declare-fun b!3228 () Bool)

(assert (=> b!3228 (= e!1819 (+ 1 (size!23 (tail!242 lt!839))))))

(assert (= (and d!2410 c!1174) b!3227))

(assert (= (and d!2410 (not c!1174)) b!3228))

(declare-fun m!5061 () Bool)

(assert (=> b!3228 m!5061))

(assert (=> d!2194 d!2410))

(declare-fun d!2412 () Bool)

(declare-fun lt!909 () Int)

(assert (=> d!2412 (>= lt!909 0)))

(declare-fun e!1820 () Int)

(assert (=> d!2412 (= lt!909 e!1820)))

(declare-fun c!1175 () Bool)

(assert (=> d!2412 (= c!1175 (is-Nil!59 (front!57 (enqueue!0 queue!27 elem!51))))))

(assert (=> d!2412 (= (size!23 (front!57 (enqueue!0 queue!27 elem!51))) lt!909)))

(declare-fun b!3229 () Bool)

(assert (=> b!3229 (= e!1820 0)))

(declare-fun b!3230 () Bool)

(assert (=> b!3230 (= e!1820 (+ 1 (size!23 (tail!242 (front!57 (enqueue!0 queue!27 elem!51))))))))

(assert (= (and d!2412 c!1175) b!3229))

(assert (= (and d!2412 (not c!1175)) b!3230))

(assert (=> b!3230 m!4969))

(assert (=> d!2194 d!2412))

(declare-fun d!2414 () Bool)

(declare-fun lt!910 () Int)

(assert (=> d!2414 (>= lt!910 0)))

(declare-fun e!1821 () Int)

(assert (=> d!2414 (= lt!910 e!1821)))

(declare-fun c!1176 () Bool)

(assert (=> d!2414 (= c!1176 (is-Nil!59 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))

(assert (=> d!2414 (= (size!23 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))) lt!910)))

(declare-fun b!3231 () Bool)

(assert (=> b!3231 (= e!1821 0)))

(declare-fun b!3232 () Bool)

(assert (=> b!3232 (= e!1821 (+ 1 (size!23 (tail!242 (reverse!5 (rear!59 (enqueue!0 queue!27 elem!51)))))))))

(assert (= (and d!2414 c!1176) b!3231))

(assert (= (and d!2414 (not c!1176)) b!3232))

(declare-fun m!5063 () Bool)

(assert (=> b!3232 m!5063))

(assert (=> d!2194 d!2414))

(assert (=> b!3059 d!2290))

(declare-fun d!2416 () Bool)

(declare-fun c!1177 () Bool)

(assert (=> d!2416 (= c!1177 (is-Nil!59 (tail!242 lt!830)))))

(declare-fun e!1822 () (Set (_ BitVec 32)))

(assert (=> d!2416 (= (content!22 (tail!242 lt!830)) e!1822)))

(declare-fun b!3233 () Bool)

(assert (=> b!3233 (= e!1822 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3234 () Bool)

(assert (=> b!3234 (= e!1822 (union (insert (head!230 (tail!242 lt!830)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 lt!830)))))))

(assert (= (and d!2416 c!1177) b!3233))

(assert (= (and d!2416 (not c!1177)) b!3234))

(declare-fun m!5065 () Bool)

(assert (=> b!3234 m!5065))

(declare-fun m!5067 () Bool)

(assert (=> b!3234 m!5067))

(assert (=> b!3012 d!2416))

(declare-fun d!2418 () Bool)

(declare-fun lt!911 () Int)

(assert (=> d!2418 (>= lt!911 0)))

(declare-fun e!1823 () Int)

(assert (=> d!2418 (= lt!911 e!1823)))

(declare-fun c!1178 () Bool)

(assert (=> d!2418 (= c!1178 (is-Nil!59 (tail!242 lt!829)))))

(assert (=> d!2418 (= (size!23 (tail!242 lt!829)) lt!911)))

(declare-fun b!3235 () Bool)

(assert (=> b!3235 (= e!1823 0)))

(declare-fun b!3236 () Bool)

(assert (=> b!3236 (= e!1823 (+ 1 (size!23 (tail!242 (tail!242 lt!829)))))))

(assert (= (and d!2418 c!1178) b!3235))

(assert (= (and d!2418 (not c!1178)) b!3236))

(declare-fun m!5069 () Bool)

(assert (=> b!3236 m!5069))

(assert (=> b!3051 d!2418))

(declare-fun d!2420 () Bool)

(declare-fun e!1824 () Bool)

(assert (=> d!2420 e!1824))

(declare-fun res!997 () Bool)

(assert (=> d!2420 (=> (not res!997) (not e!1824))))

(declare-fun lt!912 () List!58)

(assert (=> d!2420 (= res!997 (= (size!23 lt!912) (+ (size!23 (tail!242 (front!57 queue!27))) (size!23 (reverse!5 (rear!59 queue!27))))))))

(declare-fun e!1825 () List!58)

(assert (=> d!2420 (= lt!912 e!1825)))

(declare-fun c!1179 () Bool)

(assert (=> d!2420 (= c!1179 (is-Nil!59 (tail!242 (front!57 queue!27))))))

(assert (=> d!2420 (= (concat!2 (tail!242 (front!57 queue!27)) (reverse!5 (rear!59 queue!27))) lt!912)))

(declare-fun b!3237 () Bool)

(assert (=> b!3237 (= e!1825 (reverse!5 (rear!59 queue!27)))))

(declare-fun b!3238 () Bool)

(assert (=> b!3238 (= e!1825 (Cons!58 (head!230 (tail!242 (front!57 queue!27))) (concat!2 (tail!242 (tail!242 (front!57 queue!27))) (reverse!5 (rear!59 queue!27)))))))

(declare-fun b!3239 () Bool)

(assert (=> b!3239 (= e!1824 (= (content!22 lt!912) (union (content!22 (tail!242 (front!57 queue!27))) (content!22 (reverse!5 (rear!59 queue!27))))))))

(assert (= (and d!2420 c!1179) b!3237))

(assert (= (and d!2420 (not c!1179)) b!3238))

(assert (= (and d!2420 res!997) b!3239))

(declare-fun m!5071 () Bool)

(assert (=> d!2420 m!5071))

(assert (=> d!2420 m!4861))

(assert (=> d!2420 m!4511))

(assert (=> d!2420 m!4687))

(assert (=> b!3238 m!4511))

(declare-fun m!5073 () Bool)

(assert (=> b!3238 m!5073))

(declare-fun m!5075 () Bool)

(assert (=> b!3239 m!5075))

(assert (=> b!3239 m!4785))

(assert (=> b!3239 m!4511))

(assert (=> b!3239 m!4695))

(assert (=> b!3030 d!2420))

(declare-fun d!2422 () Bool)

(declare-fun c!1180 () Bool)

(assert (=> d!2422 (= c!1180 (is-Nil!59 (tail!242 lt!825)))))

(declare-fun e!1826 () (Set (_ BitVec 32)))

(assert (=> d!2422 (= (content!22 (tail!242 lt!825)) e!1826)))

(declare-fun b!3240 () Bool)

(assert (=> b!3240 (= e!1826 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!3241 () Bool)

(assert (=> b!3241 (= e!1826 (union (insert (head!230 (tail!242 lt!825)) (as emptyset (Set (_ BitVec 32)))) (content!22 (tail!242 (tail!242 lt!825)))))))

(assert (= (and d!2422 c!1180) b!3240))

(assert (= (and d!2422 (not c!1180)) b!3241))

(declare-fun m!5077 () Bool)

(assert (=> b!3241 m!5077))

(declare-fun m!5079 () Bool)

(assert (=> b!3241 m!5079))

(assert (=> b!3021 d!2422))

(assert (=> b!2983 d!2352))

(push 1)

(assert (not d!2408))

(assert (not b!3203))

(assert (not b!3072))

(assert (not b!3085))

(assert (not d!2262))

(assert (not b!3226))

(assert (not b!3180))

(assert (not b!3207))

(assert (not b!3136))

(assert (not b!3232))

(assert (not b!3215))

(assert (not b!3111))

(assert (not b!3239))

(assert (not d!2366))

(assert (not d!2350))

(assert (not d!2284))

(assert (not b!3238))

(assert (not b!3107))

(assert (not b!3201))

(assert (not b!3078))

(assert (not d!2364))

(assert (not d!2280))

(assert (not b!3080))

(assert (not b!3109))

(assert (not d!2346))

(assert (not b!3217))

(assert (not b!3132))

(assert (not d!2370))

(assert (not b!3117))

(assert (not b!3161))

(assert (not b!3096))

(assert (not d!2270))

(assert (not b!3183))

(assert (not b!3211))

(assert (not b!3209))

(assert (not b!3126))

(assert (not b!3199))

(assert (not b!3188))

(assert (not d!2312))

(assert (not b!3156))

(assert (not b!3189))

(assert (not b!3176))

(assert (not b!3236))

(assert (not b!3134))

(assert (not b!3121))

(assert (not b!3081))

(assert (not b!3169))

(assert (not b!3219))

(assert (not b!3148))

(assert (not b!3234))

(assert (not b!3090))

(assert (not b!3184))

(assert (not b!3171))

(assert (not b!3241))

(assert (not b!3069))

(assert (not b!3168))

(assert (not b!3150))

(assert (not b!3174))

(assert (not b!3213))

(assert (not b!3094))

(assert (not b!3159))

(assert (not b!3163))

(assert (not d!2352))

(assert (not b!3197))

(assert (not b!3164))

(assert (not b!3142))

(assert (not b!3224))

(assert (not b!3103))

(assert (not b!3167))

(assert (not b!3193))

(assert (not b!3140))

(assert (not b!3172))

(assert (not b!3074))

(assert (not b!3087))

(assert (not b!3128))

(assert (not b!3092))

(assert (not b!3071))

(assert (not d!2356))

(assert (not b!3124))

(assert (not d!2306))

(assert (not d!2278))

(assert (not b!3089))

(assert (not b!3083))

(assert (not d!2286))

(assert (not b!3076))

(assert (not d!2420))

(assert (not b!3228))

(assert (not b!3067))

(assert (not b!3154))

(assert (not b!3191))

(assert (not b!3223))

(assert (not b!3101))

(assert (not b!3166))

(assert (not b!3205))

(assert (not b!3119))

(assert (not b!3130))

(assert (not b!3186))

(assert (not b!3230))

(assert (not b!3143))

(assert (not b!3181))

(assert (not b!3115))

(assert (not b!3221))

(assert (not b!3097))

(assert (not d!2368))

(assert (not b!3152))

(assert (not b!3099))

(assert (not b!3158))

(assert (not b!3178))

(assert (not b!3138))

(assert (not b!3105))

(assert (not b!3146))

(assert (not b!3123))

(assert (not b!3113))

(assert (not b!3195))

(assert (not d!2406))

(assert (not b!3144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

