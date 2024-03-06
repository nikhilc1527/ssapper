; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!308 () Bool)

(assert start!308)

(declare-fun res!952 () Bool)

(declare-fun e!1644 () Bool)

(assert (=> start!308 (=> (not res!952) (not e!1644))))

(declare-datatypes () ((List!57 (Cons!57 (head!229 (_ BitVec 32)) (tail!241 List!57)) (Nil!58))))

(declare-datatypes () ((tuple2!2 (tuple2!3 (_1!1 List!57) (_2!1 List!57)))))

(declare-fun t!387 () tuple2!2)

(declare-fun x$6!13 () tuple2!2)

(declare-fun front!24 () List!57)

(declare-datatypes () ((AbsQueue!9 (Queue!8 (front!56 List!57) (rear!58 List!57)))))

(declare-fun queue!27 () AbsQueue!9)

(declare-fun res!633 () tuple2!2)

(declare-fun rear!23 () List!57)

(assert (=> start!308 (= res!952 (and (= t!387 (tuple2!3 (front!56 queue!27) (rear!58 queue!27))) (= res!633 t!387) (= x$6!13 res!633) (= front!24 (_1!1 x$6!13)) (= rear!23 (_2!1 x$6!13))))))

(assert (=> start!308 e!1644))

(assert (=> start!308 true))

(declare-fun b!2904 () Bool)

(declare-fun res!953 () Bool)

(assert (=> b!2904 (=> (not res!953) (not e!1644))))

(declare-datatypes () ((Unit!38 (Unit!39))))

(declare-fun tmp!8 () Unit!38)

(declare-fun Unit!40 () Unit!38)

(assert (=> b!2904 (= res!953 (= tmp!8 Unit!40))))

(declare-fun elem!51 () (_ BitVec 32))

(declare-fun concatAssoc!0 (List!57 List!57 List!57) Bool)

(declare-fun reverse!5 (List!57) List!57)

(assert (=> b!2904 (concatAssoc!0 front!24 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))))

(declare-fun b!2905 () Bool)

(declare-fun res!954 () Bool)

(assert (=> b!2905 (=> (not res!954) (not e!1644))))

(declare-fun prop!52 () Bool)

(declare-fun concatNil!0 (List!57) Bool)

(declare-fun concat!2 (List!57 List!57) List!57)

(assert (=> b!2905 (= res!954 (= prop!52 (concatNil!0 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))))))))

(declare-fun b!2906 () Bool)

(assert (=> b!2906 (= e!1644 (not prop!52))))

(assert (= (and start!308 res!952) b!2904))

(assert (= (and b!2904 res!953) b!2905))

(assert (= (and b!2905 res!954) b!2906))

(declare-fun m!4415 () Bool)

(assert (=> b!2904 m!4415))

(assert (=> b!2904 m!4415))

(declare-fun m!4417 () Bool)

(assert (=> b!2904 m!4417))

(assert (=> b!2905 m!4415))

(assert (=> b!2905 m!4415))

(declare-fun m!4419 () Bool)

(assert (=> b!2905 m!4419))

(assert (=> b!2905 m!4419))

(declare-fun m!4421 () Bool)

(assert (=> b!2905 m!4421))

(assert (=> b!2905 m!4421))

(declare-fun m!4423 () Bool)

(assert (=> b!2905 m!4423))

(push 1)

(assert (not b!2905))

(assert (not b!2904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2911 () Bool)

(declare-fun e!1647 () Bool)

(assert (=> b!2911 (= e!1647 (= (concat!2 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))) Nil!58) (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))))))

(declare-fun lt!809 () Bool)

(assert (=> b!2911 (= lt!809 (concatNil!0 (tail!241 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))))))))

(declare-fun d!2162 () Bool)

(assert (=> d!2162 e!1647))

(declare-fun c!1036 () Bool)

(assert (=> d!2162 (= c!1036 (is-Cons!57 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))))))

(assert (=> d!2162 (= (concatNil!0 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))) true)))

(declare-fun b!2912 () Bool)

(assert (=> b!2912 (= e!1647 (= (concat!2 (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))) Nil!58) (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))))))

(assert (= (and d!2162 c!1036) b!2911))

(assert (= (and d!2162 (not c!1036)) b!2912))

(assert (=> b!2911 m!4421))

(declare-fun m!4425 () Bool)

(assert (=> b!2911 m!4425))

(declare-fun m!4427 () Bool)

(assert (=> b!2911 m!4427))

(assert (=> b!2912 m!4421))

(assert (=> b!2912 m!4425))

(assert (=> b!2905 d!2162))

(declare-fun d!2164 () Bool)

(declare-fun e!1652 () Bool)

(assert (=> d!2164 e!1652))

(declare-fun res!958 () Bool)

(assert (=> d!2164 (=> (not res!958) (not e!1652))))

(declare-fun lt!812 () List!57)

(declare-fun size!23 (List!57) Int)

(assert (=> d!2164 (= res!958 (= (size!23 lt!812) (+ (size!23 front!24) (size!23 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))))))))

(declare-fun e!1653 () List!57)

(assert (=> d!2164 (= lt!812 e!1653)))

(declare-fun c!1039 () Bool)

(assert (=> d!2164 (= c!1039 (is-Nil!58 front!24))))

(assert (=> d!2164 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))) lt!812)))

(declare-fun b!2919 () Bool)

(assert (=> b!2919 (= e!1653 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))))

(declare-fun b!2920 () Bool)

(assert (=> b!2920 (= e!1653 (Cons!57 (head!229 front!24) (concat!2 (tail!241 front!24) (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))))))

(declare-fun b!2921 () Bool)

(declare-fun content!22 (List!57) (Set (_ BitVec 32)))

(assert (=> b!2921 (= e!1652 (= (content!22 lt!812) (union (content!22 front!24) (content!22 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))))))))

(assert (= (and d!2164 c!1039) b!2919))

(assert (= (and d!2164 (not c!1039)) b!2920))

(assert (= (and d!2164 res!958) b!2921))

(declare-fun m!4429 () Bool)

(assert (=> d!2164 m!4429))

(declare-fun m!4431 () Bool)

(assert (=> d!2164 m!4431))

(assert (=> d!2164 m!4419))

(declare-fun m!4433 () Bool)

(assert (=> d!2164 m!4433))

(assert (=> b!2920 m!4419))

(declare-fun m!4435 () Bool)

(assert (=> b!2920 m!4435))

(declare-fun m!4437 () Bool)

(assert (=> b!2921 m!4437))

(declare-fun m!4439 () Bool)

(assert (=> b!2921 m!4439))

(assert (=> b!2921 m!4419))

(declare-fun m!4441 () Bool)

(assert (=> b!2921 m!4441))

(assert (=> b!2905 d!2164))

(declare-fun d!2166 () Bool)

(declare-fun e!1654 () Bool)

(assert (=> d!2166 e!1654))

(declare-fun res!959 () Bool)

(assert (=> d!2166 (=> (not res!959) (not e!1654))))

(declare-fun lt!813 () List!57)

(assert (=> d!2166 (= res!959 (= (size!23 lt!813) (+ (size!23 (reverse!5 rear!23)) (size!23 (Cons!57 elem!51 Nil!58)))))))

(declare-fun e!1655 () List!57)

(assert (=> d!2166 (= lt!813 e!1655)))

(declare-fun c!1040 () Bool)

(assert (=> d!2166 (= c!1040 (is-Nil!58 (reverse!5 rear!23)))))

(assert (=> d!2166 (= (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)) lt!813)))

(declare-fun b!2922 () Bool)

(assert (=> b!2922 (= e!1655 (Cons!57 elem!51 Nil!58))))

(declare-fun b!2923 () Bool)

(assert (=> b!2923 (= e!1655 (Cons!57 (head!229 (reverse!5 rear!23)) (concat!2 (tail!241 (reverse!5 rear!23)) (Cons!57 elem!51 Nil!58))))))

(declare-fun b!2924 () Bool)

(assert (=> b!2924 (= e!1654 (= (content!22 lt!813) (union (content!22 (reverse!5 rear!23)) (content!22 (Cons!57 elem!51 Nil!58)))))))

(assert (= (and d!2166 c!1040) b!2922))

(assert (= (and d!2166 (not c!1040)) b!2923))

(assert (= (and d!2166 res!959) b!2924))

(declare-fun m!4443 () Bool)

(assert (=> d!2166 m!4443))

(assert (=> d!2166 m!4415))

(declare-fun m!4445 () Bool)

(assert (=> d!2166 m!4445))

(declare-fun m!4447 () Bool)

(assert (=> d!2166 m!4447))

(declare-fun m!4449 () Bool)

(assert (=> b!2923 m!4449))

(declare-fun m!4451 () Bool)

(assert (=> b!2924 m!4451))

(assert (=> b!2924 m!4415))

(declare-fun m!4453 () Bool)

(assert (=> b!2924 m!4453))

(declare-fun m!4455 () Bool)

(assert (=> b!2924 m!4455))

(assert (=> b!2905 d!2166))

(declare-fun d!2168 () Bool)

(declare-fun lt!816 () List!57)

(assert (=> d!2168 (= (content!22 lt!816) (content!22 rear!23))))

(declare-fun e!1658 () List!57)

(assert (=> d!2168 (= lt!816 e!1658)))

(declare-fun c!1043 () Bool)

(assert (=> d!2168 (= c!1043 (is-Nil!58 rear!23))))

(assert (=> d!2168 (= (reverse!5 rear!23) lt!816)))

(declare-fun b!2929 () Bool)

(assert (=> b!2929 (= e!1658 Nil!58)))

(declare-fun b!2930 () Bool)

(assert (=> b!2930 (= e!1658 (concat!2 (reverse!5 (tail!241 rear!23)) (Cons!57 (head!229 rear!23) Nil!58)))))

(assert (= (and d!2168 c!1043) b!2929))

(assert (= (and d!2168 (not c!1043)) b!2930))

(declare-fun m!4457 () Bool)

(assert (=> d!2168 m!4457))

(declare-fun m!4459 () Bool)

(assert (=> d!2168 m!4459))

(declare-fun m!4461 () Bool)

(assert (=> b!2930 m!4461))

(assert (=> b!2930 m!4461))

(declare-fun m!4463 () Bool)

(assert (=> b!2930 m!4463))

(assert (=> b!2905 d!2168))

(declare-fun b!2935 () Bool)

(declare-fun e!1661 () Bool)

(assert (=> b!2935 (= e!1661 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))) (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!57 elem!51 Nil!58))))))

(declare-fun lt!819 () Bool)

(assert (=> b!2935 (= lt!819 (concatAssoc!0 (tail!241 front!24) (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)))))

(declare-fun d!2170 () Bool)

(assert (=> d!2170 e!1661))

(declare-fun c!1046 () Bool)

(assert (=> d!2170 (= c!1046 (is-Cons!57 front!24))))

(assert (=> d!2170 (= (concatAssoc!0 front!24 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58)) true)))

(declare-fun b!2936 () Bool)

(assert (=> b!2936 (= e!1661 (= (concat!2 front!24 (concat!2 (reverse!5 rear!23) (Cons!57 elem!51 Nil!58))) (concat!2 (concat!2 front!24 (reverse!5 rear!23)) (Cons!57 elem!51 Nil!58))))))

(assert (= (and d!2170 c!1046) b!2935))

(assert (= (and d!2170 (not c!1046)) b!2936))

(assert (=> b!2935 m!4415))

(assert (=> b!2935 m!4419))

(assert (=> b!2935 m!4419))

(assert (=> b!2935 m!4421))

(declare-fun m!4465 () Bool)

(assert (=> b!2935 m!4465))

(declare-fun m!4467 () Bool)

(assert (=> b!2935 m!4467))

(assert (=> b!2935 m!4415))

(declare-fun m!4469 () Bool)

(assert (=> b!2935 m!4469))

(assert (=> b!2935 m!4415))

(assert (=> b!2935 m!4465))

(assert (=> b!2936 m!4415))

(assert (=> b!2936 m!4419))

(assert (=> b!2936 m!4419))

(assert (=> b!2936 m!4421))

(assert (=> b!2936 m!4415))

(assert (=> b!2936 m!4465))

(assert (=> b!2936 m!4465))

(assert (=> b!2936 m!4467))

(assert (=> b!2904 d!2170))

(assert (=> b!2904 d!2168))

(push 1)

(assert (not b!2936))

(assert (not b!2923))

(assert (not b!2924))

(assert (not b!2921))

(assert (not d!2168))

(assert (not b!2930))

(assert (not b!2935))

(assert (not d!2166))

(assert (not b!2911))

(assert (not b!2920))

(assert (not d!2164))

(assert (not b!2912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

