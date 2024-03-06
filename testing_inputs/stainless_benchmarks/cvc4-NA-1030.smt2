; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7598 () Bool)

(assert start!7598)

(declare-fun res!24920 () Bool)

(declare-fun e!28465 () Bool)

(assert (=> start!7598 (=> (not res!24920) (not e!28465))))

(declare-datatypes () ((IntSet!33 (Empty!158) (Node!119 (left!1149 IntSet!33) (elem!219 (_ BitVec 32)) (right!1152 IntSet!33)))))

(declare-fun thiss!7629 () IntSet!33)

(declare-fun x!21384 () (_ BitVec 32))

(assert (=> start!7598 (= res!24920 (and (not (is-Empty!158 thiss!7629)) (bvslt x!21384 (elem!219 thiss!7629))))))

(assert (=> start!7598 e!28465))

(declare-fun e!28466 () Bool)

(declare-fun inv!977 (IntSet!33) Bool)

(assert (=> start!7598 (and (inv!977 thiss!7629) e!28466)))

(assert (=> start!7598 true))

(declare-fun b!54356 () Bool)

(declare-fun res!24921 () Bool)

(assert (=> b!54356 (=> (not res!24921) (not e!28465))))

(declare-fun res!24706 () Bool)

(declare-fun contains!11 (IntSet!33 (_ BitVec 32)) Bool)

(assert (=> b!54356 (= res!24921 (= res!24706 (contains!11 (left!1149 thiss!7629) x!21384)))))

(declare-fun b!54357 () Bool)

(declare-fun content!17 (IntSet!33) (Set (_ BitVec 32)))

(assert (=> b!54357 (= e!28465 (not (= res!24706 (member x!21384 (content!17 thiss!7629)))))))

(declare-fun b!54358 () Bool)

(declare-fun tp!15323 () Bool)

(declare-fun tp!15324 () Bool)

(assert (=> b!54358 (= e!28466 (and (inv!977 (left!1149 thiss!7629)) tp!15323 (inv!977 (right!1152 thiss!7629)) tp!15324))))

(assert (= (and start!7598 res!24920) b!54356))

(assert (= (and b!54356 res!24921) b!54357))

(assert (= (and start!7598 (is-Node!119 thiss!7629)) b!54358))

(declare-fun m!58316 () Bool)

(assert (=> start!7598 m!58316))

(declare-fun m!58318 () Bool)

(assert (=> b!54356 m!58318))

(declare-fun m!58320 () Bool)

(assert (=> b!54357 m!58320))

(declare-fun m!58322 () Bool)

(assert (=> b!54357 m!58322))

(declare-fun m!58324 () Bool)

(assert (=> b!54358 m!58324))

(declare-fun m!58326 () Bool)

(assert (=> b!54358 m!58326))

(push 1)

(assert (not b!54356))

(assert (not b!54358))

(assert (not b!54357))

(assert (not start!7598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44918 () Bool)

(declare-fun lt!9589 () Bool)

(assert (=> d!44918 (= lt!9589 (member x!21384 (content!17 (left!1149 thiss!7629))))))

(declare-fun e!28471 () Bool)

(assert (=> d!44918 (= lt!9589 e!28471)))

(declare-fun res!24931 () Bool)

(assert (=> d!44918 (=> (not res!24931) (not e!28471))))

(assert (=> d!44918 (= res!24931 (not (is-Empty!158 (left!1149 thiss!7629))))))

(assert (=> d!44918 (= (contains!11 (left!1149 thiss!7629) x!21384) lt!9589)))

(declare-fun lt!9588 () Bool)

(declare-fun lt!9587 () Bool)

(declare-fun b!54365 () Bool)

(assert (=> b!54365 (= e!28471 (ite lt!9587 lt!9588 (or (not (bvsgt x!21384 (elem!219 (left!1149 thiss!7629)))) lt!9588)))))

(declare-fun e!28472 () Bool)

(assert (=> b!54365 (= lt!9588 e!28472)))

(declare-fun c!11808 () Bool)

(assert (=> b!54365 (= c!11808 (or lt!9587 (bvsgt x!21384 (elem!219 (left!1149 thiss!7629)))))))

(assert (=> b!54365 (= lt!9587 (bvslt x!21384 (elem!219 (left!1149 thiss!7629))))))

(declare-fun b!54367 () Bool)

(declare-fun res!24930 () Bool)

(assert (=> b!54367 (= e!28472 res!24930)))

(assert (=> b!54367 true))

(assert (=> b!54367 true))

(declare-fun b!54366 () Bool)

(assert (=> b!54366 (= e!28472 (contains!11 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629))) x!21384))))

(assert (= (and d!44918 res!24931) b!54365))

(assert (= (and b!54365 c!11808) b!54366))

(assert (= (and b!54365 (not c!11808)) b!54367))

(declare-fun m!58328 () Bool)

(assert (=> d!44918 m!58328))

(declare-fun m!58330 () Bool)

(assert (=> d!44918 m!58330))

(declare-fun m!58332 () Bool)

(assert (=> b!54366 m!58332))

(assert (=> b!54356 d!44918))

(declare-fun b!54372 () Bool)

(declare-fun m!58334 () Bool)

(assert (=> b!54372 m!58334))

(declare-fun inst!260 () Bool)

(declare-fun x!21638 () (_ BitVec 32))

(assert (=> b!54372 (= inst!260 (=> true (or (not (member x!21638 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21638 (elem!219 (left!1149 thiss!7629))))))))

(declare-fun m!58336 () Bool)

(assert (=> b!54372 m!58336))

(declare-fun b!54373 () Bool)

(declare-fun m!58338 () Bool)

(assert (=> b!54373 m!58338))

(declare-fun inst!261 () Bool)

(declare-fun x!21639 () (_ BitVec 32))

(assert (=> b!54373 (= inst!261 (=> true (or (not (member x!21639 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21639))))))

(declare-fun m!58340 () Bool)

(assert (=> b!54373 m!58340))

(declare-fun bs!24929 () Bool)

(declare-fun neg-inst!249 () Bool)

(assert (= bs!24929 neg-inst!249))

(assert (=> bs!24929 m!58334))

(declare-fun bs!24930 () Bool)

(declare-fun s!1037 () Bool)

(assert (= bs!24930 (and neg-inst!249 s!1037)))

(assert (=> bs!24930 (=> true (or (not (member x!21638 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21638 (elem!219 (left!1149 thiss!7629)))))))

(assert (=> m!58336 s!1037))

(declare-fun bs!24931 () Bool)

(assert (= bs!24931 (and neg-inst!249 b!54372)))

(assert (=> bs!24931 (= true inst!260)))

(declare-fun bs!24932 () Bool)

(declare-fun neg-inst!248 () Bool)

(assert (= bs!24932 neg-inst!248))

(assert (=> bs!24932 m!58338))

(declare-fun bs!24933 () Bool)

(declare-fun s!1039 () Bool)

(assert (= bs!24933 (and neg-inst!248 s!1039)))

(assert (=> bs!24933 (=> true (or (not (member x!21639 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21639)))))

(assert (=> m!58340 s!1039))

(declare-fun bs!24934 () Bool)

(assert (= bs!24934 (and neg-inst!248 b!54373)))

(assert (=> bs!24934 (= true inst!261)))

(declare-fun d!44920 () Bool)

(declare-fun res!24937 () Bool)

(declare-fun e!28477 () Bool)

(assert (=> d!44920 (=> res!24937 e!28477)))

(assert (=> d!44920 (= res!24937 (not (is-Node!119 (left!1149 thiss!7629))))))

(assert (=> d!44920 (= (inv!977 (left!1149 thiss!7629)) e!28477)))

(declare-fun e!28478 () Bool)

(assert (=> b!54372 (= e!28477 e!28478)))

(declare-fun res!24936 () Bool)

(assert (=> b!54372 (=> (not res!24936) (not e!28478))))

(assert (=> b!54372 (= res!24936 inst!260)))

(assert (=> b!54373 (= e!28478 inst!261)))

(assert (= (and d!44920 (not res!24937)) b!54372))

(assert (= neg-inst!249 inst!260))

(assert (= (and b!54372 res!24936) b!54373))

(assert (= neg-inst!248 inst!261))

(assert (=> b!54358 d!44920))

(declare-fun b!54374 () Bool)

(declare-fun m!58342 () Bool)

(assert (=> b!54374 m!58342))

(declare-fun inst!262 () Bool)

(declare-fun x!21640 () (_ BitVec 32))

(assert (=> b!54374 (= inst!262 (=> true (or (not (member x!21640 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21640 (elem!219 (right!1152 thiss!7629))))))))

(declare-fun m!58344 () Bool)

(assert (=> b!54374 m!58344))

(declare-fun bs!24935 () Bool)

(assert (= bs!24935 (and b!54374 b!54372)))

(assert (=> (and bs!24935 (= (content!17 (left!1149 (right!1152 thiss!7629))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= inst!262 inst!260)))

(declare-fun bs!24936 () Bool)

(assert (= bs!24936 (and b!54374 neg-inst!249)))

(assert (=> (and bs!24936 (= (content!17 (left!1149 (right!1152 thiss!7629))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= inst!262 true)))

(declare-fun b!54375 () Bool)

(declare-fun m!58346 () Bool)

(assert (=> b!54375 m!58346))

(declare-fun inst!263 () Bool)

(declare-fun x!21641 () (_ BitVec 32))

(assert (=> b!54375 (= inst!263 (=> true (or (not (member x!21641 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21641))))))

(declare-fun m!58348 () Bool)

(assert (=> b!54375 m!58348))

(declare-fun bs!24937 () Bool)

(assert (= bs!24937 (and b!54375 b!54373)))

(assert (=> (and bs!24937 (= (content!17 (right!1152 (right!1152 thiss!7629))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= inst!263 inst!261)))

(declare-fun bs!24938 () Bool)

(assert (= bs!24938 (and b!54375 neg-inst!248)))

(assert (=> (and bs!24938 (= (content!17 (right!1152 (right!1152 thiss!7629))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= inst!263 true)))

(declare-fun bs!24939 () Bool)

(declare-fun neg-inst!251 () Bool)

(assert (= bs!24939 neg-inst!251))

(assert (=> bs!24939 m!58342))

(declare-fun bs!24940 () Bool)

(declare-fun s!1041 () Bool)

(assert (= bs!24940 (and neg-inst!251 s!1041)))

(assert (=> bs!24940 (=> true (or (not (member x!21640 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21640 (elem!219 (right!1152 thiss!7629)))))))

(assert (=> m!58344 s!1041))

(declare-fun bs!24941 () Bool)

(assert (= bs!24941 (and neg-inst!251 b!54374)))

(assert (=> bs!24941 (= true inst!262)))

(declare-fun bs!24942 () Bool)

(assert (= bs!24942 (and neg-inst!251 b!54372)))

(assert (=> (and bs!24942 (= (content!17 (left!1149 (right!1152 thiss!7629))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= true inst!260)))

(declare-fun bs!24943 () Bool)

(assert (= bs!24943 (and neg-inst!251 neg-inst!249)))

(assert (=> (and bs!24943 (= (content!17 (left!1149 (right!1152 thiss!7629))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!24944 () Bool)

(declare-fun neg-inst!250 () Bool)

(assert (= bs!24944 neg-inst!250))

(assert (=> bs!24944 m!58346))

(declare-fun bs!24945 () Bool)

(declare-fun s!1043 () Bool)

(assert (= bs!24945 (and neg-inst!250 s!1043)))

(assert (=> bs!24945 (=> true (or (not (member x!21641 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21641)))))

(assert (=> m!58348 s!1043))

(declare-fun bs!24946 () Bool)

(assert (= bs!24946 (and neg-inst!250 b!54373)))

(assert (=> (and bs!24946 (= (content!17 (right!1152 (right!1152 thiss!7629))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= true inst!261)))

(declare-fun bs!24947 () Bool)

(assert (= bs!24947 (and neg-inst!250 b!54375)))

(assert (=> bs!24947 (= true inst!263)))

(declare-fun bs!24948 () Bool)

(assert (= bs!24948 (and neg-inst!250 neg-inst!248)))

(assert (=> (and bs!24948 (= (content!17 (right!1152 (right!1152 thiss!7629))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 thiss!7629)) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun d!44922 () Bool)

(declare-fun res!24939 () Bool)

(declare-fun e!28479 () Bool)

(assert (=> d!44922 (=> res!24939 e!28479)))

(assert (=> d!44922 (= res!24939 (not (is-Node!119 (right!1152 thiss!7629))))))

(assert (=> d!44922 (= (inv!977 (right!1152 thiss!7629)) e!28479)))

(declare-fun e!28480 () Bool)

(assert (=> b!54374 (= e!28479 e!28480)))

(declare-fun res!24938 () Bool)

(assert (=> b!54374 (=> (not res!24938) (not e!28480))))

(assert (=> b!54374 (= res!24938 inst!262)))

(assert (=> b!54375 (= e!28480 inst!263)))

(assert (= (and d!44922 (not res!24939)) b!54374))

(assert (= neg-inst!251 inst!262))

(assert (= (and b!54374 res!24938) b!54375))

(assert (= neg-inst!250 inst!263))

(assert (=> b!54358 d!44922))

(declare-fun d!44924 () Bool)

(declare-fun c!11811 () Bool)

(assert (=> d!44924 (= c!11811 (is-Empty!158 thiss!7629))))

(declare-fun e!28483 () (Set (_ BitVec 32)))

(assert (=> d!44924 (= (content!17 thiss!7629) e!28483)))

(declare-fun b!54380 () Bool)

(assert (=> b!54380 (= e!28483 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54381 () Bool)

(assert (=> b!54381 (= e!28483 (union (union (content!17 (left!1149 thiss!7629)) (insert (elem!219 thiss!7629) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 thiss!7629))))))

(assert (= (and d!44924 c!11811) b!54380))

(assert (= (and d!44924 (not c!11811)) b!54381))

(assert (=> b!54381 m!58328))

(declare-fun m!58350 () Bool)

(assert (=> b!54381 m!58350))

(declare-fun m!58352 () Bool)

(assert (=> b!54381 m!58352))

(assert (=> b!54357 d!44924))

(declare-fun b!54382 () Bool)

(assert (=> b!54382 m!58328))

(declare-fun inst!264 () Bool)

(declare-fun x!21642 () (_ BitVec 32))

(assert (=> b!54382 (= inst!264 (=> true (or (not (member x!21642 (content!17 (left!1149 thiss!7629)))) (bvslt x!21642 (elem!219 thiss!7629)))))))

(declare-fun m!58354 () Bool)

(assert (=> b!54382 m!58354))

(declare-fun bs!24949 () Bool)

(assert (= bs!24949 (and b!54382 neg-inst!251)))

(assert (=> (and bs!24949 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= inst!264 true)))

(declare-fun bs!24950 () Bool)

(assert (= bs!24950 (and b!54382 b!54374)))

(assert (=> (and bs!24950 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= inst!264 inst!262)))

(declare-fun bs!24951 () Bool)

(assert (= bs!24951 (and b!54382 b!54372)))

(assert (=> (and bs!24951 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= inst!264 inst!260)))

(declare-fun bs!24952 () Bool)

(assert (= bs!24952 (and b!54382 neg-inst!249)))

(assert (=> (and bs!24952 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= inst!264 true)))

(declare-fun b!54383 () Bool)

(assert (=> b!54383 m!58352))

(declare-fun inst!265 () Bool)

(declare-fun x!21643 () (_ BitVec 32))

(assert (=> b!54383 (= inst!265 (=> true (or (not (member x!21643 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21643))))))

(declare-fun m!58356 () Bool)

(assert (=> b!54383 m!58356))

(declare-fun bs!24953 () Bool)

(assert (= bs!24953 (and b!54383 b!54373)))

(assert (=> (and bs!24953 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= inst!265 inst!261)))

(declare-fun bs!24954 () Bool)

(assert (= bs!24954 (and b!54383 neg-inst!250)))

(assert (=> (and bs!24954 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= inst!265 true)))

(declare-fun bs!24955 () Bool)

(assert (= bs!24955 (and b!54383 b!54375)))

(assert (=> (and bs!24955 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= inst!265 inst!263)))

(declare-fun bs!24956 () Bool)

(assert (= bs!24956 (and b!54383 neg-inst!248)))

(assert (=> (and bs!24956 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= inst!265 true)))

(declare-fun bs!24957 () Bool)

(declare-fun neg-inst!253 () Bool)

(assert (= bs!24957 neg-inst!253))

(assert (=> bs!24957 m!58328))

(declare-fun bs!24958 () Bool)

(declare-fun s!1045 () Bool)

(assert (= bs!24958 (and neg-inst!253 s!1045)))

(assert (=> bs!24958 (=> true (or (not (member x!21384 (content!17 (left!1149 thiss!7629)))) (bvslt x!21384 (elem!219 thiss!7629))))))

(assert (=> m!58330 s!1045))

(assert (=> m!58322 s!1045))

(declare-fun bs!24959 () Bool)

(declare-fun s!1047 () Bool)

(assert (= bs!24959 (and neg-inst!253 s!1047)))

(assert (=> bs!24959 (=> true (or (not (member x!21642 (content!17 (left!1149 thiss!7629)))) (bvslt x!21642 (elem!219 thiss!7629))))))

(assert (=> m!58354 s!1047))

(declare-fun bs!24960 () Bool)

(assert (= bs!24960 (and neg-inst!253 neg-inst!251)))

(assert (=> (and bs!24960 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!24961 () Bool)

(assert (= bs!24961 (and neg-inst!253 b!54374)))

(assert (=> (and bs!24961 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= true inst!262)))

(declare-fun bs!24962 () Bool)

(assert (= bs!24962 (and neg-inst!253 b!54372)))

(assert (=> (and bs!24962 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= true inst!260)))

(declare-fun bs!24963 () Bool)

(assert (= bs!24963 (and neg-inst!253 b!54382)))

(assert (=> bs!24963 (= true inst!264)))

(declare-fun bs!24964 () Bool)

(assert (= bs!24964 (and neg-inst!253 neg-inst!249)))

(assert (=> (and bs!24964 (= (content!17 (left!1149 thiss!7629)) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!24965 () Bool)

(declare-fun neg-inst!252 () Bool)

(assert (= bs!24965 neg-inst!252))

(assert (=> bs!24965 m!58352))

(declare-fun bs!24966 () Bool)

(declare-fun s!1049 () Bool)

(assert (= bs!24966 (and neg-inst!252 s!1049)))

(assert (=> bs!24966 (=> true (or (not (member x!21643 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21643)))))

(assert (=> m!58356 s!1049))

(declare-fun bs!24967 () Bool)

(assert (= bs!24967 (and neg-inst!252 b!54373)))

(assert (=> (and bs!24967 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= true inst!261)))

(declare-fun bs!24968 () Bool)

(assert (= bs!24968 (and neg-inst!252 neg-inst!250)))

(assert (=> (and bs!24968 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!24969 () Bool)

(assert (= bs!24969 (and neg-inst!252 b!54375)))

(assert (=> (and bs!24969 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))) (= true inst!263)))

(declare-fun bs!24970 () Bool)

(assert (= bs!24970 (and neg-inst!252 b!54383)))

(assert (=> bs!24970 (= true inst!265)))

(declare-fun bs!24971 () Bool)

(assert (= bs!24971 (and neg-inst!252 neg-inst!248)))

(assert (=> (and bs!24971 (= (content!17 (right!1152 thiss!7629)) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun d!44926 () Bool)

(declare-fun res!24941 () Bool)

(declare-fun e!28484 () Bool)

(assert (=> d!44926 (=> res!24941 e!28484)))

(assert (=> d!44926 (= res!24941 (not (is-Node!119 thiss!7629)))))

(assert (=> d!44926 (= (inv!977 thiss!7629) e!28484)))

(declare-fun e!28485 () Bool)

(assert (=> b!54382 (= e!28484 e!28485)))

(declare-fun res!24940 () Bool)

(assert (=> b!54382 (=> (not res!24940) (not e!28485))))

(assert (=> b!54382 (= res!24940 inst!264)))

(assert (=> b!54383 (= e!28485 inst!265)))

(assert (= (and d!44926 (not res!24941)) b!54382))

(assert (= neg-inst!253 inst!264))

(assert (= (and b!54382 res!24940) b!54383))

(assert (= neg-inst!252 inst!265))

(assert (=> start!7598 d!44926))

(declare-fun tp!15330 () Bool)

(declare-fun e!28488 () Bool)

(declare-fun b!54388 () Bool)

(declare-fun tp!15329 () Bool)

(assert (=> b!54388 (= e!28488 (and (inv!977 (left!1149 (left!1149 thiss!7629))) tp!15329 (inv!977 (right!1152 (left!1149 thiss!7629))) tp!15330))))

(assert (=> b!54358 (= tp!15323 (and (inv!977 (left!1149 thiss!7629)) e!28488))))

(assert (= (and b!54358 (is-Node!119 (left!1149 thiss!7629))) b!54388))

(declare-fun m!58358 () Bool)

(assert (=> b!54388 m!58358))

(declare-fun m!58360 () Bool)

(assert (=> b!54388 m!58360))

(assert (=> b!54358 m!58324))

(declare-fun b!54389 () Bool)

(declare-fun tp!15331 () Bool)

(declare-fun tp!15332 () Bool)

(declare-fun e!28489 () Bool)

(assert (=> b!54389 (= e!28489 (and (inv!977 (left!1149 (right!1152 thiss!7629))) tp!15331 (inv!977 (right!1152 (right!1152 thiss!7629))) tp!15332))))

(assert (=> b!54358 (= tp!15324 (and (inv!977 (right!1152 thiss!7629)) e!28489))))

(assert (= (and b!54358 (is-Node!119 (right!1152 thiss!7629))) b!54389))

(declare-fun m!58362 () Bool)

(assert (=> b!54389 m!58362))

(declare-fun m!58364 () Bool)

(assert (=> b!54389 m!58364))

(assert (=> b!54358 m!58326))

(push 1)

(assert (not b!54373))

(assert (not b!54374))

(assert (not b!54388))

(assert (not b!54372))

(assert (not b!54366))

(assert (not b!54381))

(assert (not neg-inst!251))

(assert (not neg-inst!249))

(assert (not b!54382))

(assert (not b!54358))

(assert (not neg-inst!248))

(assert (not neg-inst!253))

(assert (not b!54389))

(assert (not b!54383))

(assert (not neg-inst!252))

(assert (not b!54375))

(assert (not d!44918))

(assert (not neg-inst!250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44928 () Bool)

(declare-fun c!11812 () Bool)

(assert (=> d!44928 (= c!11812 (is-Empty!158 (right!1152 (right!1152 thiss!7629))))))

(declare-fun e!28490 () (Set (_ BitVec 32)))

(assert (=> d!44928 (= (content!17 (right!1152 (right!1152 thiss!7629))) e!28490)))

(declare-fun b!54390 () Bool)

(assert (=> b!54390 (= e!28490 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54391 () Bool)

(assert (=> b!54391 (= e!28490 (union (union (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (insert (elem!219 (right!1152 (right!1152 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))))))

(assert (= (and d!44928 c!11812) b!54390))

(assert (= (and d!44928 (not c!11812)) b!54391))

(declare-fun m!58366 () Bool)

(assert (=> b!54391 m!58366))

(declare-fun m!58368 () Bool)

(assert (=> b!54391 m!58368))

(declare-fun m!58370 () Bool)

(assert (=> b!54391 m!58370))

(assert (=> b!54375 d!44928))

(declare-fun lt!9592 () Bool)

(declare-fun d!44930 () Bool)

(assert (=> d!44930 (= lt!9592 (member x!21384 (content!17 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629))))))))

(declare-fun e!28491 () Bool)

(assert (=> d!44930 (= lt!9592 e!28491)))

(declare-fun res!24943 () Bool)

(assert (=> d!44930 (=> (not res!24943) (not e!28491))))

(assert (=> d!44930 (= res!24943 (not (is-Empty!158 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629))))))))

(assert (=> d!44930 (= (contains!11 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629))) x!21384) lt!9592)))

(declare-fun lt!9591 () Bool)

(declare-fun b!54392 () Bool)

(declare-fun lt!9590 () Bool)

(assert (=> b!54392 (= e!28491 (ite lt!9590 lt!9591 (or (not (bvsgt x!21384 (elem!219 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629)))))) lt!9591)))))

(declare-fun e!28492 () Bool)

(assert (=> b!54392 (= lt!9591 e!28492)))

(declare-fun c!11813 () Bool)

(assert (=> b!54392 (= c!11813 (or lt!9590 (bvsgt x!21384 (elem!219 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629)))))))))

(assert (=> b!54392 (= lt!9590 (bvslt x!21384 (elem!219 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629))))))))

(declare-fun b!54394 () Bool)

(declare-fun res!24942 () Bool)

(assert (=> b!54394 (= e!28492 res!24942)))

(assert (=> b!54394 true))

(assert (=> b!54394 true))

(declare-fun b!54393 () Bool)

(assert (=> b!54393 (= e!28492 (contains!11 (ite lt!9590 (left!1149 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629)))) (right!1152 (ite lt!9587 (left!1149 (left!1149 thiss!7629)) (right!1152 (left!1149 thiss!7629))))) x!21384))))

(assert (= (and d!44930 res!24943) b!54392))

(assert (= (and b!54392 c!11813) b!54393))

(assert (= (and b!54392 (not c!11813)) b!54394))

(declare-fun m!58372 () Bool)

(assert (=> d!44930 m!58372))

(declare-fun bs!24972 () Bool)

(declare-fun m!58374 () Bool)

(assert (= bs!24972 m!58374))

(assert (=> bs!24972 s!1045))

(assert (=> d!44930 m!58374))

(declare-fun m!58376 () Bool)

(assert (=> b!54393 m!58376))

(assert (=> b!54366 d!44930))

(assert (=> b!54358 d!44920))

(assert (=> b!54358 d!44922))

(declare-fun b!54395 () Bool)

(declare-fun m!58378 () Bool)

(assert (=> b!54395 m!58378))

(declare-fun inst!266 () Bool)

(declare-fun x!21646 () (_ BitVec 32))

(assert (=> b!54395 (= inst!266 (=> true (or (not (member x!21646 (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))))) (bvslt x!21646 (elem!219 (left!1149 (right!1152 thiss!7629)))))))))

(declare-fun m!58380 () Bool)

(assert (=> b!54395 m!58380))

(declare-fun bs!24973 () Bool)

(assert (= bs!24973 (and b!54395 neg-inst!251)))

(assert (=> (and bs!24973 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!266 true)))

(declare-fun bs!24974 () Bool)

(assert (= bs!24974 (and b!54395 neg-inst!253)))

(assert (=> (and bs!24974 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!266 true)))

(declare-fun bs!24975 () Bool)

(assert (= bs!24975 (and b!54395 b!54374)))

(assert (=> (and bs!24975 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!266 inst!262)))

(declare-fun bs!24976 () Bool)

(assert (= bs!24976 (and b!54395 b!54372)))

(assert (=> (and bs!24976 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!266 inst!260)))

(declare-fun bs!24977 () Bool)

(assert (= bs!24977 (and b!54395 b!54382)))

(assert (=> (and bs!24977 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!266 inst!264)))

(declare-fun bs!24978 () Bool)

(assert (= bs!24978 (and b!54395 neg-inst!249)))

(assert (=> (and bs!24978 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!266 true)))

(declare-fun b!54396 () Bool)

(declare-fun m!58382 () Bool)

(assert (=> b!54396 m!58382))

(declare-fun inst!267 () Bool)

(declare-fun x!21647 () (_ BitVec 32))

(assert (=> b!54396 (= inst!267 (=> true (or (not (member x!21647 (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))))) (bvslt (elem!219 (left!1149 (right!1152 thiss!7629))) x!21647))))))

(declare-fun m!58384 () Bool)

(assert (=> b!54396 m!58384))

(declare-fun bs!24979 () Bool)

(assert (= bs!24979 (and b!54396 b!54373)))

(assert (=> (and bs!24979 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!267 inst!261)))

(declare-fun bs!24980 () Bool)

(assert (= bs!24980 (and b!54396 neg-inst!250)))

(assert (=> (and bs!24980 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!267 true)))

(declare-fun bs!24981 () Bool)

(assert (= bs!24981 (and b!54396 b!54375)))

(assert (=> (and bs!24981 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!267 inst!263)))

(declare-fun bs!24982 () Bool)

(assert (= bs!24982 (and b!54396 b!54383)))

(assert (=> (and bs!24982 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!267 inst!265)))

(declare-fun bs!24983 () Bool)

(assert (= bs!24983 (and b!54396 neg-inst!248)))

(assert (=> (and bs!24983 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!267 true)))

(declare-fun bs!24984 () Bool)

(assert (= bs!24984 (and b!54396 neg-inst!252)))

(assert (=> (and bs!24984 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!267 true)))

(declare-fun bs!24985 () Bool)

(declare-fun neg-inst!255 () Bool)

(assert (= bs!24985 neg-inst!255))

(assert (=> bs!24985 m!58378))

(declare-fun bs!24986 () Bool)

(declare-fun s!1051 () Bool)

(assert (= bs!24986 (and neg-inst!255 s!1051)))

(assert (=> bs!24986 (=> true (or (not (member x!21646 (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))))) (bvslt x!21646 (elem!219 (left!1149 (right!1152 thiss!7629))))))))

(assert (=> m!58380 s!1051))

(declare-fun bs!24987 () Bool)

(assert (= bs!24987 (and neg-inst!255 neg-inst!251)))

(assert (=> (and bs!24987 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!24988 () Bool)

(assert (= bs!24988 (and neg-inst!255 b!54374)))

(assert (=> (and bs!24988 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!262)))

(declare-fun bs!24989 () Bool)

(assert (= bs!24989 (and neg-inst!255 neg-inst!253)))

(assert (=> (and bs!24989 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun bs!24990 () Bool)

(assert (= bs!24990 (and neg-inst!255 b!54372)))

(assert (=> (and bs!24990 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!260)))

(declare-fun bs!24991 () Bool)

(assert (= bs!24991 (and neg-inst!255 b!54382)))

(assert (=> (and bs!24991 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true inst!264)))

(declare-fun bs!24992 () Bool)

(assert (= bs!24992 (and neg-inst!255 b!54395)))

(assert (=> bs!24992 (= true inst!266)))

(declare-fun bs!24993 () Bool)

(assert (= bs!24993 (and neg-inst!255 neg-inst!249)))

(assert (=> (and bs!24993 (= (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!24994 () Bool)

(declare-fun neg-inst!254 () Bool)

(assert (= bs!24994 neg-inst!254))

(assert (=> bs!24994 m!58382))

(declare-fun bs!24995 () Bool)

(declare-fun s!1053 () Bool)

(assert (= bs!24995 (and neg-inst!254 s!1053)))

(assert (=> bs!24995 (=> true (or (not (member x!21647 (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))))) (bvslt (elem!219 (left!1149 (right!1152 thiss!7629))) x!21647)))))

(assert (=> m!58384 s!1053))

(declare-fun bs!24996 () Bool)

(assert (= bs!24996 (and neg-inst!254 b!54396)))

(assert (=> bs!24996 (= true inst!267)))

(declare-fun bs!24997 () Bool)

(assert (= bs!24997 (and neg-inst!254 b!54373)))

(assert (=> (and bs!24997 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!261)))

(declare-fun bs!24998 () Bool)

(assert (= bs!24998 (and neg-inst!254 neg-inst!250)))

(assert (=> (and bs!24998 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!24999 () Bool)

(assert (= bs!24999 (and neg-inst!254 b!54375)))

(assert (=> (and bs!24999 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!263)))

(declare-fun bs!25000 () Bool)

(assert (= bs!25000 (and neg-inst!254 b!54383)))

(assert (=> (and bs!25000 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true inst!265)))

(declare-fun bs!25001 () Bool)

(assert (= bs!25001 (and neg-inst!254 neg-inst!248)))

(assert (=> (and bs!25001 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!25002 () Bool)

(assert (= bs!25002 (and neg-inst!254 neg-inst!252)))

(assert (=> (and bs!25002 (= (content!17 (right!1152 (left!1149 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun d!44932 () Bool)

(declare-fun res!24945 () Bool)

(declare-fun e!28493 () Bool)

(assert (=> d!44932 (=> res!24945 e!28493)))

(assert (=> d!44932 (= res!24945 (not (is-Node!119 (left!1149 (right!1152 thiss!7629)))))))

(assert (=> d!44932 (= (inv!977 (left!1149 (right!1152 thiss!7629))) e!28493)))

(declare-fun e!28494 () Bool)

(assert (=> b!54395 (= e!28493 e!28494)))

(declare-fun res!24944 () Bool)

(assert (=> b!54395 (=> (not res!24944) (not e!28494))))

(assert (=> b!54395 (= res!24944 inst!266)))

(assert (=> b!54396 (= e!28494 inst!267)))

(assert (= (and d!44932 (not res!24945)) b!54395))

(assert (= neg-inst!255 inst!266))

(assert (= (and b!54395 res!24944) b!54396))

(assert (= neg-inst!254 inst!267))

(assert (=> b!54389 d!44932))

(declare-fun b!54397 () Bool)

(assert (=> b!54397 m!58366))

(declare-fun inst!268 () Bool)

(declare-fun x!21648 () (_ BitVec 32))

(assert (=> b!54397 (= inst!268 (=> true (or (not (member x!21648 (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))))) (bvslt x!21648 (elem!219 (right!1152 (right!1152 thiss!7629)))))))))

(declare-fun m!58386 () Bool)

(assert (=> b!54397 m!58386))

(declare-fun bs!25003 () Bool)

(assert (= bs!25003 (and b!54397 neg-inst!251)))

(assert (=> (and bs!25003 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!268 true)))

(declare-fun bs!25004 () Bool)

(assert (= bs!25004 (and b!54397 neg-inst!255)))

(assert (=> (and bs!25004 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!268 true)))

(declare-fun bs!25005 () Bool)

(assert (= bs!25005 (and b!54397 b!54374)))

(assert (=> (and bs!25005 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!268 inst!262)))

(declare-fun bs!25006 () Bool)

(assert (= bs!25006 (and b!54397 neg-inst!253)))

(assert (=> (and bs!25006 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!268 true)))

(declare-fun bs!25007 () Bool)

(assert (= bs!25007 (and b!54397 b!54372)))

(assert (=> (and bs!25007 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!268 inst!260)))

(declare-fun bs!25008 () Bool)

(assert (= bs!25008 (and b!54397 b!54382)))

(assert (=> (and bs!25008 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!268 inst!264)))

(declare-fun bs!25009 () Bool)

(assert (= bs!25009 (and b!54397 b!54395)))

(assert (=> (and bs!25009 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!268 inst!266)))

(declare-fun bs!25010 () Bool)

(assert (= bs!25010 (and b!54397 neg-inst!249)))

(assert (=> (and bs!25010 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!268 true)))

(declare-fun b!54398 () Bool)

(assert (=> b!54398 m!58370))

(declare-fun inst!269 () Bool)

(declare-fun x!21649 () (_ BitVec 32))

(assert (=> b!54398 (= inst!269 (=> true (or (not (member x!21649 (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))))) (bvslt (elem!219 (right!1152 (right!1152 thiss!7629))) x!21649))))))

(declare-fun m!58388 () Bool)

(assert (=> b!54398 m!58388))

(declare-fun bs!25011 () Bool)

(assert (= bs!25011 (and b!54398 b!54396)))

(assert (=> (and bs!25011 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!269 inst!267)))

(declare-fun bs!25012 () Bool)

(assert (= bs!25012 (and b!54398 b!54373)))

(assert (=> (and bs!25012 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!269 inst!261)))

(declare-fun bs!25013 () Bool)

(assert (= bs!25013 (and b!54398 neg-inst!250)))

(assert (=> (and bs!25013 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!269 true)))

(declare-fun bs!25014 () Bool)

(assert (= bs!25014 (and b!54398 b!54375)))

(assert (=> (and bs!25014 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!269 inst!263)))

(declare-fun bs!25015 () Bool)

(assert (= bs!25015 (and b!54398 neg-inst!254)))

(assert (=> (and bs!25015 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!269 true)))

(declare-fun bs!25016 () Bool)

(assert (= bs!25016 (and b!54398 b!54383)))

(assert (=> (and bs!25016 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!269 inst!265)))

(declare-fun bs!25017 () Bool)

(assert (= bs!25017 (and b!54398 neg-inst!248)))

(assert (=> (and bs!25017 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!269 true)))

(declare-fun bs!25018 () Bool)

(assert (= bs!25018 (and b!54398 neg-inst!252)))

(assert (=> (and bs!25018 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= inst!269 true)))

(declare-fun bs!25019 () Bool)

(declare-fun neg-inst!257 () Bool)

(assert (= bs!25019 neg-inst!257))

(assert (=> bs!25019 m!58366))

(declare-fun bs!25020 () Bool)

(declare-fun s!1055 () Bool)

(assert (= bs!25020 (and neg-inst!257 s!1055)))

(assert (=> bs!25020 (=> true (or (not (member x!21648 (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))))) (bvslt x!21648 (elem!219 (right!1152 (right!1152 thiss!7629))))))))

(assert (=> m!58386 s!1055))

(declare-fun bs!25021 () Bool)

(assert (= bs!25021 (and neg-inst!257 neg-inst!251)))

(assert (=> (and bs!25021 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!25022 () Bool)

(assert (= bs!25022 (and neg-inst!257 neg-inst!255)))

(assert (=> (and bs!25022 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25023 () Bool)

(assert (= bs!25023 (and neg-inst!257 b!54374)))

(assert (=> (and bs!25023 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!262)))

(declare-fun bs!25024 () Bool)

(assert (= bs!25024 (and neg-inst!257 neg-inst!253)))

(assert (=> (and bs!25024 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun bs!25025 () Bool)

(assert (= bs!25025 (and neg-inst!257 b!54397)))

(assert (=> bs!25025 (= true inst!268)))

(declare-fun bs!25026 () Bool)

(assert (= bs!25026 (and neg-inst!257 b!54372)))

(assert (=> (and bs!25026 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!260)))

(declare-fun bs!25027 () Bool)

(assert (= bs!25027 (and neg-inst!257 b!54382)))

(assert (=> (and bs!25027 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true inst!264)))

(declare-fun bs!25028 () Bool)

(assert (= bs!25028 (and neg-inst!257 b!54395)))

(assert (=> (and bs!25028 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true inst!266)))

(declare-fun bs!25029 () Bool)

(assert (= bs!25029 (and neg-inst!257 neg-inst!249)))

(assert (=> (and bs!25029 (= (content!17 (left!1149 (right!1152 (right!1152 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!25030 () Bool)

(declare-fun neg-inst!256 () Bool)

(assert (= bs!25030 neg-inst!256))

(assert (=> bs!25030 m!58370))

(declare-fun bs!25031 () Bool)

(declare-fun s!1057 () Bool)

(assert (= bs!25031 (and neg-inst!256 s!1057)))

(assert (=> bs!25031 (=> true (or (not (member x!21649 (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))))) (bvslt (elem!219 (right!1152 (right!1152 thiss!7629))) x!21649)))))

(assert (=> m!58388 s!1057))

(declare-fun bs!25032 () Bool)

(assert (= bs!25032 (and neg-inst!256 b!54398)))

(assert (=> bs!25032 (= true inst!269)))

(declare-fun bs!25033 () Bool)

(assert (= bs!25033 (and neg-inst!256 b!54396)))

(assert (=> (and bs!25033 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true inst!267)))

(declare-fun bs!25034 () Bool)

(assert (= bs!25034 (and neg-inst!256 b!54373)))

(assert (=> (and bs!25034 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!261)))

(declare-fun bs!25035 () Bool)

(assert (= bs!25035 (and neg-inst!256 neg-inst!250)))

(assert (=> (and bs!25035 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!25036 () Bool)

(assert (= bs!25036 (and neg-inst!256 b!54375)))

(assert (=> (and bs!25036 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!263)))

(declare-fun bs!25037 () Bool)

(assert (= bs!25037 (and neg-inst!256 neg-inst!254)))

(assert (=> (and bs!25037 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25038 () Bool)

(assert (= bs!25038 (and neg-inst!256 b!54383)))

(assert (=> (and bs!25038 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true inst!265)))

(declare-fun bs!25039 () Bool)

(assert (= bs!25039 (and neg-inst!256 neg-inst!248)))

(assert (=> (and bs!25039 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!25040 () Bool)

(assert (= bs!25040 (and neg-inst!256 neg-inst!252)))

(assert (=> (and bs!25040 (= (content!17 (right!1152 (right!1152 (right!1152 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (right!1152 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun d!44934 () Bool)

(declare-fun res!24947 () Bool)

(declare-fun e!28495 () Bool)

(assert (=> d!44934 (=> res!24947 e!28495)))

(assert (=> d!44934 (= res!24947 (not (is-Node!119 (right!1152 (right!1152 thiss!7629)))))))

(assert (=> d!44934 (= (inv!977 (right!1152 (right!1152 thiss!7629))) e!28495)))

(declare-fun e!28496 () Bool)

(assert (=> b!54397 (= e!28495 e!28496)))

(declare-fun res!24946 () Bool)

(assert (=> b!54397 (=> (not res!24946) (not e!28496))))

(assert (=> b!54397 (= res!24946 inst!268)))

(assert (=> b!54398 (= e!28496 inst!269)))

(assert (= (and d!44934 (not res!24947)) b!54397))

(assert (= neg-inst!257 inst!268))

(assert (= (and b!54397 res!24946) b!54398))

(assert (= neg-inst!256 inst!269))

(assert (=> b!54389 d!44934))

(declare-fun d!44936 () Bool)

(declare-fun c!11814 () Bool)

(assert (=> d!44936 (= c!11814 (is-Empty!158 (left!1149 (right!1152 thiss!7629))))))

(declare-fun e!28497 () (Set (_ BitVec 32)))

(assert (=> d!44936 (= (content!17 (left!1149 (right!1152 thiss!7629))) e!28497)))

(declare-fun b!54399 () Bool)

(assert (=> b!54399 (= e!28497 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54400 () Bool)

(assert (=> b!54400 (= e!28497 (union (union (content!17 (left!1149 (left!1149 (right!1152 thiss!7629)))) (insert (elem!219 (left!1149 (right!1152 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))))))

(assert (= (and d!44936 c!11814) b!54399))

(assert (= (and d!44936 (not c!11814)) b!54400))

(assert (=> b!54400 m!58378))

(declare-fun m!58390 () Bool)

(assert (=> b!54400 m!58390))

(assert (=> b!54400 m!58382))

(assert (=> neg-inst!251 d!44936))

(declare-fun d!44938 () Bool)

(declare-fun c!11815 () Bool)

(assert (=> d!44938 (= c!11815 (is-Empty!158 (right!1152 thiss!7629)))))

(declare-fun e!28498 () (Set (_ BitVec 32)))

(assert (=> d!44938 (= (content!17 (right!1152 thiss!7629)) e!28498)))

(declare-fun b!54401 () Bool)

(assert (=> b!54401 (= e!28498 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54402 () Bool)

(assert (=> b!54402 (= e!28498 (union (union (content!17 (left!1149 (right!1152 thiss!7629))) (insert (elem!219 (right!1152 thiss!7629)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 (right!1152 thiss!7629)))))))

(assert (= (and d!44938 c!11815) b!54401))

(assert (= (and d!44938 (not c!11815)) b!54402))

(assert (=> b!54402 m!58342))

(declare-fun m!58392 () Bool)

(assert (=> b!54402 m!58392))

(assert (=> b!54402 m!58346))

(assert (=> b!54383 d!44938))

(declare-fun d!44940 () Bool)

(declare-fun c!11816 () Bool)

(assert (=> d!44940 (= c!11816 (is-Empty!158 (left!1149 (left!1149 thiss!7629))))))

(declare-fun e!28499 () (Set (_ BitVec 32)))

(assert (=> d!44940 (= (content!17 (left!1149 (left!1149 thiss!7629))) e!28499)))

(declare-fun b!54403 () Bool)

(assert (=> b!54403 (= e!28499 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54404 () Bool)

(assert (=> b!54404 (= e!28499 (union (union (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (insert (elem!219 (left!1149 (left!1149 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 (left!1149 (left!1149 thiss!7629))))))))

(assert (= (and d!44940 c!11816) b!54403))

(assert (= (and d!44940 (not c!11816)) b!54404))

(declare-fun m!58394 () Bool)

(assert (=> b!54404 m!58394))

(declare-fun m!58396 () Bool)

(assert (=> b!54404 m!58396))

(declare-fun m!58398 () Bool)

(assert (=> b!54404 m!58398))

(assert (=> neg-inst!249 d!44940))

(assert (=> neg-inst!252 d!44938))

(declare-fun d!44942 () Bool)

(declare-fun c!11817 () Bool)

(assert (=> d!44942 (= c!11817 (is-Empty!158 (left!1149 thiss!7629)))))

(declare-fun e!28500 () (Set (_ BitVec 32)))

(assert (=> d!44942 (= (content!17 (left!1149 thiss!7629)) e!28500)))

(declare-fun b!54405 () Bool)

(assert (=> b!54405 (= e!28500 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54406 () Bool)

(assert (=> b!54406 (= e!28500 (union (union (content!17 (left!1149 (left!1149 thiss!7629))) (insert (elem!219 (left!1149 thiss!7629)) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 (left!1149 thiss!7629)))))))

(assert (= (and d!44942 c!11817) b!54405))

(assert (= (and d!44942 (not c!11817)) b!54406))

(assert (=> b!54406 m!58334))

(declare-fun m!58400 () Bool)

(assert (=> b!54406 m!58400))

(assert (=> b!54406 m!58338))

(assert (=> b!54382 d!44942))

(assert (=> d!44918 d!44942))

(assert (=> b!54372 d!44940))

(assert (=> b!54381 d!44942))

(assert (=> b!54381 d!44938))

(assert (=> b!54374 d!44936))

(declare-fun b!54407 () Bool)

(assert (=> b!54407 m!58394))

(declare-fun inst!270 () Bool)

(declare-fun x!21650 () (_ BitVec 32))

(assert (=> b!54407 (= inst!270 (=> true (or (not (member x!21650 (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))))) (bvslt x!21650 (elem!219 (left!1149 (left!1149 thiss!7629)))))))))

(declare-fun m!58402 () Bool)

(assert (=> b!54407 m!58402))

(declare-fun bs!25041 () Bool)

(assert (= bs!25041 (and b!54407 neg-inst!257)))

(assert (=> (and bs!25041 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!270 true)))

(declare-fun bs!25042 () Bool)

(assert (= bs!25042 (and b!54407 neg-inst!251)))

(assert (=> (and bs!25042 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!270 true)))

(declare-fun bs!25043 () Bool)

(assert (= bs!25043 (and b!54407 neg-inst!255)))

(assert (=> (and bs!25043 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!270 true)))

(declare-fun bs!25044 () Bool)

(assert (= bs!25044 (and b!54407 b!54374)))

(assert (=> (and bs!25044 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!270 inst!262)))

(declare-fun bs!25045 () Bool)

(assert (= bs!25045 (and b!54407 neg-inst!253)))

(assert (=> (and bs!25045 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!270 true)))

(declare-fun bs!25046 () Bool)

(assert (= bs!25046 (and b!54407 b!54397)))

(assert (=> (and bs!25046 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!270 inst!268)))

(declare-fun bs!25047 () Bool)

(assert (= bs!25047 (and b!54407 b!54372)))

(assert (=> (and bs!25047 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!270 inst!260)))

(declare-fun bs!25048 () Bool)

(assert (= bs!25048 (and b!54407 b!54382)))

(assert (=> (and bs!25048 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!270 inst!264)))

(declare-fun bs!25049 () Bool)

(assert (= bs!25049 (and b!54407 b!54395)))

(assert (=> (and bs!25049 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!270 inst!266)))

(declare-fun bs!25050 () Bool)

(assert (= bs!25050 (and b!54407 neg-inst!249)))

(assert (=> (and bs!25050 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!270 true)))

(declare-fun b!54408 () Bool)

(assert (=> b!54408 m!58398))

(declare-fun inst!271 () Bool)

(declare-fun x!21651 () (_ BitVec 32))

(assert (=> b!54408 (= inst!271 (=> true (or (not (member x!21651 (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))))) (bvslt (elem!219 (left!1149 (left!1149 thiss!7629))) x!21651))))))

(declare-fun m!58404 () Bool)

(assert (=> b!54408 m!58404))

(declare-fun bs!25051 () Bool)

(assert (= bs!25051 (and b!54408 neg-inst!256)))

(assert (=> (and bs!25051 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!271 true)))

(declare-fun bs!25052 () Bool)

(assert (= bs!25052 (and b!54408 b!54398)))

(assert (=> (and bs!25052 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!271 inst!269)))

(declare-fun bs!25053 () Bool)

(assert (= bs!25053 (and b!54408 b!54396)))

(assert (=> (and bs!25053 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!271 inst!267)))

(declare-fun bs!25054 () Bool)

(assert (= bs!25054 (and b!54408 b!54373)))

(assert (=> (and bs!25054 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!271 inst!261)))

(declare-fun bs!25055 () Bool)

(assert (= bs!25055 (and b!54408 neg-inst!250)))

(assert (=> (and bs!25055 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!271 true)))

(declare-fun bs!25056 () Bool)

(assert (= bs!25056 (and b!54408 b!54375)))

(assert (=> (and bs!25056 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!271 inst!263)))

(declare-fun bs!25057 () Bool)

(assert (= bs!25057 (and b!54408 neg-inst!254)))

(assert (=> (and bs!25057 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!271 true)))

(declare-fun bs!25058 () Bool)

(assert (= bs!25058 (and b!54408 b!54383)))

(assert (=> (and bs!25058 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!271 inst!265)))

(declare-fun bs!25059 () Bool)

(assert (= bs!25059 (and b!54408 neg-inst!248)))

(assert (=> (and bs!25059 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!271 true)))

(declare-fun bs!25060 () Bool)

(assert (= bs!25060 (and b!54408 neg-inst!252)))

(assert (=> (and bs!25060 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!271 true)))

(declare-fun bs!25061 () Bool)

(declare-fun neg-inst!259 () Bool)

(assert (= bs!25061 neg-inst!259))

(assert (=> bs!25061 m!58394))

(declare-fun bs!25062 () Bool)

(declare-fun s!1059 () Bool)

(assert (= bs!25062 (and neg-inst!259 s!1059)))

(assert (=> bs!25062 (=> true (or (not (member x!21650 (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))))) (bvslt x!21650 (elem!219 (left!1149 (left!1149 thiss!7629))))))))

(assert (=> m!58402 s!1059))

(declare-fun bs!25063 () Bool)

(assert (= bs!25063 (and neg-inst!259 neg-inst!257)))

(assert (=> (and bs!25063 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25064 () Bool)

(assert (= bs!25064 (and neg-inst!259 b!54407)))

(assert (=> bs!25064 (= true inst!270)))

(declare-fun bs!25065 () Bool)

(assert (= bs!25065 (and neg-inst!259 neg-inst!251)))

(assert (=> (and bs!25065 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!25066 () Bool)

(assert (= bs!25066 (and neg-inst!259 neg-inst!255)))

(assert (=> (and bs!25066 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25067 () Bool)

(assert (= bs!25067 (and neg-inst!259 b!54374)))

(assert (=> (and bs!25067 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!262)))

(declare-fun bs!25068 () Bool)

(assert (= bs!25068 (and neg-inst!259 neg-inst!253)))

(assert (=> (and bs!25068 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun bs!25069 () Bool)

(assert (= bs!25069 (and neg-inst!259 b!54397)))

(assert (=> (and bs!25069 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true inst!268)))

(declare-fun bs!25070 () Bool)

(assert (= bs!25070 (and neg-inst!259 b!54372)))

(assert (=> (and bs!25070 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!260)))

(declare-fun bs!25071 () Bool)

(assert (= bs!25071 (and neg-inst!259 b!54382)))

(assert (=> (and bs!25071 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true inst!264)))

(declare-fun bs!25072 () Bool)

(assert (= bs!25072 (and neg-inst!259 b!54395)))

(assert (=> (and bs!25072 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true inst!266)))

(declare-fun bs!25073 () Bool)

(assert (= bs!25073 (and neg-inst!259 neg-inst!249)))

(assert (=> (and bs!25073 (= (content!17 (left!1149 (left!1149 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!25074 () Bool)

(declare-fun neg-inst!258 () Bool)

(assert (= bs!25074 neg-inst!258))

(assert (=> bs!25074 m!58398))

(declare-fun bs!25075 () Bool)

(declare-fun s!1061 () Bool)

(assert (= bs!25075 (and neg-inst!258 s!1061)))

(assert (=> bs!25075 (=> true (or (not (member x!21651 (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))))) (bvslt (elem!219 (left!1149 (left!1149 thiss!7629))) x!21651)))))

(assert (=> m!58404 s!1061))

(declare-fun bs!25076 () Bool)

(assert (= bs!25076 (and neg-inst!258 neg-inst!256)))

(assert (=> (and bs!25076 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25077 () Bool)

(assert (= bs!25077 (and neg-inst!258 b!54408)))

(assert (=> bs!25077 (= true inst!271)))

(declare-fun bs!25078 () Bool)

(assert (= bs!25078 (and neg-inst!258 b!54398)))

(assert (=> (and bs!25078 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true inst!269)))

(declare-fun bs!25079 () Bool)

(assert (= bs!25079 (and neg-inst!258 b!54396)))

(assert (=> (and bs!25079 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true inst!267)))

(declare-fun bs!25080 () Bool)

(assert (= bs!25080 (and neg-inst!258 b!54373)))

(assert (=> (and bs!25080 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!261)))

(declare-fun bs!25081 () Bool)

(assert (= bs!25081 (and neg-inst!258 neg-inst!250)))

(assert (=> (and bs!25081 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!25082 () Bool)

(assert (= bs!25082 (and neg-inst!258 b!54375)))

(assert (=> (and bs!25082 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!263)))

(declare-fun bs!25083 () Bool)

(assert (= bs!25083 (and neg-inst!258 neg-inst!254)))

(assert (=> (and bs!25083 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25084 () Bool)

(assert (= bs!25084 (and neg-inst!258 b!54383)))

(assert (=> (and bs!25084 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true inst!265)))

(declare-fun bs!25085 () Bool)

(assert (= bs!25085 (and neg-inst!258 neg-inst!248)))

(assert (=> (and bs!25085 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!25086 () Bool)

(assert (= bs!25086 (and neg-inst!258 neg-inst!252)))

(assert (=> (and bs!25086 (= (content!17 (right!1152 (left!1149 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (left!1149 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun d!44944 () Bool)

(declare-fun res!24949 () Bool)

(declare-fun e!28501 () Bool)

(assert (=> d!44944 (=> res!24949 e!28501)))

(assert (=> d!44944 (= res!24949 (not (is-Node!119 (left!1149 (left!1149 thiss!7629)))))))

(assert (=> d!44944 (= (inv!977 (left!1149 (left!1149 thiss!7629))) e!28501)))

(declare-fun e!28502 () Bool)

(assert (=> b!54407 (= e!28501 e!28502)))

(declare-fun res!24948 () Bool)

(assert (=> b!54407 (=> (not res!24948) (not e!28502))))

(assert (=> b!54407 (= res!24948 inst!270)))

(assert (=> b!54408 (= e!28502 inst!271)))

(assert (= (and d!44944 (not res!24949)) b!54407))

(assert (= neg-inst!259 inst!270))

(assert (= (and b!54407 res!24948) b!54408))

(assert (= neg-inst!258 inst!271))

(assert (=> b!54388 d!44944))

(declare-fun b!54409 () Bool)

(declare-fun m!58406 () Bool)

(assert (=> b!54409 m!58406))

(declare-fun inst!272 () Bool)

(declare-fun x!21652 () (_ BitVec 32))

(assert (=> b!54409 (= inst!272 (=> true (or (not (member x!21652 (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))))) (bvslt x!21652 (elem!219 (right!1152 (left!1149 thiss!7629)))))))))

(declare-fun m!58408 () Bool)

(assert (=> b!54409 m!58408))

(declare-fun bs!25087 () Bool)

(assert (= bs!25087 (and b!54409 neg-inst!257)))

(assert (=> (and bs!25087 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!272 true)))

(declare-fun bs!25088 () Bool)

(assert (= bs!25088 (and b!54409 neg-inst!259)))

(assert (=> (and bs!25088 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= inst!272 true)))

(declare-fun bs!25089 () Bool)

(assert (= bs!25089 (and b!54409 b!54407)))

(assert (=> (and bs!25089 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= inst!272 inst!270)))

(declare-fun bs!25090 () Bool)

(assert (= bs!25090 (and b!54409 neg-inst!251)))

(assert (=> (and bs!25090 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!272 true)))

(declare-fun bs!25091 () Bool)

(assert (= bs!25091 (and b!54409 neg-inst!255)))

(assert (=> (and bs!25091 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!272 true)))

(declare-fun bs!25092 () Bool)

(assert (= bs!25092 (and b!54409 b!54374)))

(assert (=> (and bs!25092 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!272 inst!262)))

(declare-fun bs!25093 () Bool)

(assert (= bs!25093 (and b!54409 neg-inst!253)))

(assert (=> (and bs!25093 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!272 true)))

(declare-fun bs!25094 () Bool)

(assert (= bs!25094 (and b!54409 b!54397)))

(assert (=> (and bs!25094 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!272 inst!268)))

(declare-fun bs!25095 () Bool)

(assert (= bs!25095 (and b!54409 b!54372)))

(assert (=> (and bs!25095 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!272 inst!260)))

(declare-fun bs!25096 () Bool)

(assert (= bs!25096 (and b!54409 b!54382)))

(assert (=> (and bs!25096 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!272 inst!264)))

(declare-fun bs!25097 () Bool)

(assert (= bs!25097 (and b!54409 b!54395)))

(assert (=> (and bs!25097 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!272 inst!266)))

(declare-fun bs!25098 () Bool)

(assert (= bs!25098 (and b!54409 neg-inst!249)))

(assert (=> (and bs!25098 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!272 true)))

(declare-fun b!54410 () Bool)

(declare-fun m!58410 () Bool)

(assert (=> b!54410 m!58410))

(declare-fun inst!273 () Bool)

(declare-fun x!21653 () (_ BitVec 32))

(assert (=> b!54410 (= inst!273 (=> true (or (not (member x!21653 (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))))) (bvslt (elem!219 (right!1152 (left!1149 thiss!7629))) x!21653))))))

(declare-fun m!58412 () Bool)

(assert (=> b!54410 m!58412))

(declare-fun bs!25099 () Bool)

(assert (= bs!25099 (and b!54410 neg-inst!256)))

(assert (=> (and bs!25099 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!273 true)))

(declare-fun bs!25100 () Bool)

(assert (= bs!25100 (and b!54410 b!54408)))

(assert (=> (and bs!25100 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= inst!273 inst!271)))

(declare-fun bs!25101 () Bool)

(assert (= bs!25101 (and b!54410 b!54398)))

(assert (=> (and bs!25101 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= inst!273 inst!269)))

(declare-fun bs!25102 () Bool)

(assert (= bs!25102 (and b!54410 b!54396)))

(assert (=> (and bs!25102 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!273 inst!267)))

(declare-fun bs!25103 () Bool)

(assert (= bs!25103 (and b!54410 b!54373)))

(assert (=> (and bs!25103 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!273 inst!261)))

(declare-fun bs!25104 () Bool)

(assert (= bs!25104 (and b!54410 neg-inst!250)))

(assert (=> (and bs!25104 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!273 true)))

(declare-fun bs!25105 () Bool)

(assert (= bs!25105 (and b!54410 b!54375)))

(assert (=> (and bs!25105 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= inst!273 inst!263)))

(declare-fun bs!25106 () Bool)

(assert (= bs!25106 (and b!54410 neg-inst!258)))

(assert (=> (and bs!25106 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= inst!273 true)))

(declare-fun bs!25107 () Bool)

(assert (= bs!25107 (and b!54410 neg-inst!254)))

(assert (=> (and bs!25107 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= inst!273 true)))

(declare-fun bs!25108 () Bool)

(assert (= bs!25108 (and b!54410 b!54383)))

(assert (=> (and bs!25108 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!273 inst!265)))

(declare-fun bs!25109 () Bool)

(assert (= bs!25109 (and b!54410 neg-inst!252)))

(assert (=> (and bs!25109 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= inst!273 true)))

(declare-fun bs!25110 () Bool)

(assert (= bs!25110 (and b!54410 neg-inst!248)))

(assert (=> (and bs!25110 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= inst!273 true)))

(declare-fun bs!25111 () Bool)

(declare-fun neg-inst!261 () Bool)

(assert (= bs!25111 neg-inst!261))

(assert (=> bs!25111 m!58406))

(declare-fun bs!25112 () Bool)

(declare-fun s!1063 () Bool)

(assert (= bs!25112 (and neg-inst!261 s!1063)))

(assert (=> bs!25112 (=> true (or (not (member x!21652 (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))))) (bvslt x!21652 (elem!219 (right!1152 (left!1149 thiss!7629))))))))

(assert (=> m!58408 s!1063))

(declare-fun bs!25113 () Bool)

(assert (= bs!25113 (and neg-inst!261 neg-inst!257)))

(assert (=> (and bs!25113 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25114 () Bool)

(assert (= bs!25114 (and neg-inst!261 b!54407)))

(assert (=> (and bs!25114 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= true inst!270)))

(declare-fun bs!25115 () Bool)

(assert (= bs!25115 (and neg-inst!261 neg-inst!259)))

(assert (=> (and bs!25115 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= true true)))

(declare-fun bs!25116 () Bool)

(assert (= bs!25116 (and neg-inst!261 neg-inst!251)))

(assert (=> (and bs!25116 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!25117 () Bool)

(assert (= bs!25117 (and neg-inst!261 neg-inst!255)))

(assert (=> (and bs!25117 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25118 () Bool)

(assert (= bs!25118 (and neg-inst!261 b!54409)))

(assert (=> bs!25118 (= true inst!272)))

(declare-fun bs!25119 () Bool)

(assert (= bs!25119 (and neg-inst!261 neg-inst!253)))

(assert (=> (and bs!25119 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun bs!25120 () Bool)

(assert (= bs!25120 (and neg-inst!261 b!54374)))

(assert (=> (and bs!25120 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!262)))

(declare-fun bs!25121 () Bool)

(assert (= bs!25121 (and neg-inst!261 b!54372)))

(assert (=> (and bs!25121 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!260)))

(declare-fun bs!25122 () Bool)

(assert (= bs!25122 (and neg-inst!261 b!54397)))

(assert (=> (and bs!25122 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true inst!268)))

(declare-fun bs!25123 () Bool)

(assert (= bs!25123 (and neg-inst!261 b!54382)))

(assert (=> (and bs!25123 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true inst!264)))

(declare-fun bs!25124 () Bool)

(assert (= bs!25124 (and neg-inst!261 b!54395)))

(assert (=> (and bs!25124 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true inst!266)))

(declare-fun bs!25125 () Bool)

(assert (= bs!25125 (and neg-inst!261 neg-inst!249)))

(assert (=> (and bs!25125 (= (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (content!17 (left!1149 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun bs!25126 () Bool)

(declare-fun neg-inst!260 () Bool)

(assert (= bs!25126 neg-inst!260))

(assert (=> bs!25126 m!58410))

(declare-fun bs!25127 () Bool)

(declare-fun s!1065 () Bool)

(assert (= bs!25127 (and neg-inst!260 s!1065)))

(assert (=> bs!25127 (=> true (or (not (member x!21653 (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))))) (bvslt (elem!219 (right!1152 (left!1149 thiss!7629))) x!21653)))))

(assert (=> m!58412 s!1065))

(declare-fun bs!25128 () Bool)

(assert (= bs!25128 (and neg-inst!260 neg-inst!256)))

(assert (=> (and bs!25128 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25129 () Bool)

(assert (= bs!25129 (and neg-inst!260 b!54408)))

(assert (=> (and bs!25129 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= true inst!271)))

(declare-fun bs!25130 () Bool)

(assert (= bs!25130 (and neg-inst!260 b!54398)))

(assert (=> (and bs!25130 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 (right!1152 thiss!7629))))) (= true inst!269)))

(declare-fun bs!25131 () Bool)

(assert (= bs!25131 (and neg-inst!260 b!54396)))

(assert (=> (and bs!25131 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true inst!267)))

(declare-fun bs!25132 () Bool)

(assert (= bs!25132 (and neg-inst!260 b!54410)))

(assert (=> bs!25132 (= true inst!273)))

(declare-fun bs!25133 () Bool)

(assert (= bs!25133 (and neg-inst!260 b!54373)))

(assert (=> (and bs!25133 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true inst!261)))

(declare-fun bs!25134 () Bool)

(assert (= bs!25134 (and neg-inst!260 neg-inst!250)))

(assert (=> (and bs!25134 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true true)))

(declare-fun bs!25135 () Bool)

(assert (= bs!25135 (and neg-inst!260 b!54375)))

(assert (=> (and bs!25135 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (right!1152 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (right!1152 thiss!7629)))) (= true inst!263)))

(declare-fun bs!25136 () Bool)

(assert (= bs!25136 (and neg-inst!260 neg-inst!258)))

(assert (=> (and bs!25136 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (left!1149 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (left!1149 thiss!7629))))) (= true true)))

(declare-fun bs!25137 () Bool)

(assert (= bs!25137 (and neg-inst!260 neg-inst!254)))

(assert (=> (and bs!25137 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 (right!1152 thiss!7629))))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 (right!1152 thiss!7629))))) (= true true)))

(declare-fun bs!25138 () Bool)

(assert (= bs!25138 (and neg-inst!260 b!54383)))

(assert (=> (and bs!25138 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true inst!265)))

(declare-fun bs!25139 () Bool)

(assert (= bs!25139 (and neg-inst!260 neg-inst!252)))

(assert (=> (and bs!25139 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 thiss!7629))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 thiss!7629))) (= true true)))

(declare-fun bs!25140 () Bool)

(assert (= bs!25140 (and neg-inst!260 neg-inst!248)))

(assert (=> (and bs!25140 (= (content!17 (right!1152 (right!1152 (left!1149 thiss!7629)))) (content!17 (right!1152 (left!1149 thiss!7629)))) (= (elem!219 (right!1152 (left!1149 thiss!7629))) (elem!219 (left!1149 thiss!7629)))) (= true true)))

(declare-fun d!44946 () Bool)

(declare-fun res!24951 () Bool)

(declare-fun e!28503 () Bool)

(assert (=> d!44946 (=> res!24951 e!28503)))

(assert (=> d!44946 (= res!24951 (not (is-Node!119 (right!1152 (left!1149 thiss!7629)))))))

(assert (=> d!44946 (= (inv!977 (right!1152 (left!1149 thiss!7629))) e!28503)))

(declare-fun e!28504 () Bool)

(assert (=> b!54409 (= e!28503 e!28504)))

(declare-fun res!24950 () Bool)

(assert (=> b!54409 (=> (not res!24950) (not e!28504))))

(assert (=> b!54409 (= res!24950 inst!272)))

(assert (=> b!54410 (= e!28504 inst!273)))

(assert (= (and d!44946 (not res!24951)) b!54409))

(assert (= neg-inst!261 inst!272))

(assert (= (and b!54409 res!24950) b!54410))

(assert (= neg-inst!260 inst!273))

(assert (=> b!54388 d!44946))

(assert (=> neg-inst!250 d!44928))

(assert (=> neg-inst!253 d!44942))

(declare-fun d!44948 () Bool)

(declare-fun c!11818 () Bool)

(assert (=> d!44948 (= c!11818 (is-Empty!158 (right!1152 (left!1149 thiss!7629))))))

(declare-fun e!28505 () (Set (_ BitVec 32)))

(assert (=> d!44948 (= (content!17 (right!1152 (left!1149 thiss!7629))) e!28505)))

(declare-fun b!54411 () Bool)

(assert (=> b!54411 (= e!28505 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!54412 () Bool)

(assert (=> b!54412 (= e!28505 (union (union (content!17 (left!1149 (right!1152 (left!1149 thiss!7629)))) (insert (elem!219 (right!1152 (left!1149 thiss!7629))) (as emptyset (Set (_ BitVec 32))))) (content!17 (right!1152 (right!1152 (left!1149 thiss!7629))))))))

(assert (= (and d!44948 c!11818) b!54411))

(assert (= (and d!44948 (not c!11818)) b!54412))

(assert (=> b!54412 m!58406))

(declare-fun m!58414 () Bool)

(assert (=> b!54412 m!58414))

(assert (=> b!54412 m!58410))

(assert (=> b!54373 d!44948))

(assert (=> neg-inst!248 d!44948))

(declare-fun b!54413 () Bool)

(declare-fun tp!15334 () Bool)

(declare-fun tp!15333 () Bool)

(declare-fun e!28506 () Bool)

(assert (=> b!54413 (= e!28506 (and (inv!977 (left!1149 (left!1149 (right!1152 thiss!7629)))) tp!15333 (inv!977 (right!1152 (left!1149 (right!1152 thiss!7629)))) tp!15334))))

(assert (=> b!54389 (= tp!15331 (and (inv!977 (left!1149 (right!1152 thiss!7629))) e!28506))))

(assert (= (and b!54389 (is-Node!119 (left!1149 (right!1152 thiss!7629)))) b!54413))

(declare-fun m!58416 () Bool)

(assert (=> b!54413 m!58416))

(declare-fun m!58418 () Bool)

(assert (=> b!54413 m!58418))

(assert (=> b!54389 m!58362))

(declare-fun tp!15336 () Bool)

(declare-fun tp!15335 () Bool)

(declare-fun e!28507 () Bool)

(declare-fun b!54414 () Bool)

(assert (=> b!54414 (= e!28507 (and (inv!977 (left!1149 (right!1152 (right!1152 thiss!7629)))) tp!15335 (inv!977 (right!1152 (right!1152 (right!1152 thiss!7629)))) tp!15336))))

(assert (=> b!54389 (= tp!15332 (and (inv!977 (right!1152 (right!1152 thiss!7629))) e!28507))))

(assert (= (and b!54389 (is-Node!119 (right!1152 (right!1152 thiss!7629)))) b!54414))

(declare-fun m!58420 () Bool)

(assert (=> b!54414 m!58420))

(declare-fun m!58422 () Bool)

(assert (=> b!54414 m!58422))

(assert (=> b!54389 m!58364))

(declare-fun tp!15337 () Bool)

(declare-fun b!54415 () Bool)

(declare-fun e!28508 () Bool)

(declare-fun tp!15338 () Bool)

(assert (=> b!54415 (= e!28508 (and (inv!977 (left!1149 (left!1149 (left!1149 thiss!7629)))) tp!15337 (inv!977 (right!1152 (left!1149 (left!1149 thiss!7629)))) tp!15338))))

(assert (=> b!54388 (= tp!15329 (and (inv!977 (left!1149 (left!1149 thiss!7629))) e!28508))))

(assert (= (and b!54388 (is-Node!119 (left!1149 (left!1149 thiss!7629)))) b!54415))

(declare-fun m!58424 () Bool)

(assert (=> b!54415 m!58424))

(declare-fun m!58426 () Bool)

(assert (=> b!54415 m!58426))

(assert (=> b!54388 m!58358))

(declare-fun b!54416 () Bool)

(declare-fun tp!15339 () Bool)

(declare-fun tp!15340 () Bool)

(declare-fun e!28509 () Bool)

(assert (=> b!54416 (= e!28509 (and (inv!977 (left!1149 (right!1152 (left!1149 thiss!7629)))) tp!15339 (inv!977 (right!1152 (right!1152 (left!1149 thiss!7629)))) tp!15340))))

(assert (=> b!54388 (= tp!15330 (and (inv!977 (right!1152 (left!1149 thiss!7629))) e!28509))))

(assert (= (and b!54388 (is-Node!119 (right!1152 (left!1149 thiss!7629)))) b!54416))

(declare-fun m!58428 () Bool)

(assert (=> b!54416 m!58428))

(declare-fun m!58430 () Bool)

(assert (=> b!54416 m!58430))

(assert (=> b!54388 m!58360))

(push 1)

(assert (not b!54408))

(assert (not b!54404))

(assert (not b!54410))

(assert (not b!54388))

(assert (not neg-inst!254))

(assert (not b!54406))

(assert (not b!54407))

(assert (not b!54393))

(assert (not b!54413))

(assert (not neg-inst!258))

(assert (not b!54412))

(assert (not b!54391))

(assert (not b!54395))

(assert (not b!54415))

(assert (not b!54409))

(assert (not b!54402))

(assert (not b!54397))

(assert (not neg-inst!261))

(assert (not neg-inst!256))

(assert (not b!54416))

(assert (not neg-inst!257))

(assert (not b!54398))

(assert (not b!54389))

(assert (not d!44930))

(assert (not b!54414))

(assert (not neg-inst!255))

(assert (not neg-inst!260))

(assert (not b!54400))

(assert (not b!54396))

(assert (not neg-inst!259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!25141 () Bool)

(declare-fun s!1067 () Bool)

(assert (= bs!25141 (and neg-inst!249 s!1067)))

(assert (=> bs!25141 (=> true (or (not (member x!21642 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21642 (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58432 () Bool)

(assert (=> m!58354 m!58432))

(assert (=> m!58354 s!1067))

(declare-fun bs!25142 () Bool)

(declare-fun s!1069 () Bool)

(assert (= bs!25142 (and neg-inst!249 s!1069)))

(assert (=> bs!25142 (=> true (or (not (member (elem!219 thiss!7629) (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt (elem!219 thiss!7629) (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58434 () Bool)

(assert (=> m!58350 m!58434))

(assert (=> m!58350 s!1069))

(declare-fun bs!25143 () Bool)

(declare-fun s!1071 () Bool)

(assert (= bs!25143 (and neg-inst!249 s!1071)))

(assert (=> bs!25143 (=> true (or (not (member x!21640 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21640 (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58436 () Bool)

(assert (=> m!58344 m!58436))

(assert (=> m!58344 s!1071))

(declare-fun bs!25144 () Bool)

(declare-fun s!1073 () Bool)

(assert (= bs!25144 (and neg-inst!249 s!1073)))

(assert (=> bs!25144 (=> true (or (not (member x!21384 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21384 (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58438 () Bool)

(assert (=> m!58330 m!58438))

(assert (=> m!58330 s!1073))

(assert (=> m!58322 s!1073))

(declare-fun bs!25145 () Bool)

(declare-fun s!1075 () Bool)

(assert (= bs!25145 (and neg-inst!249 s!1075)))

(assert (=> bs!25145 (=> true (or (not (member x!21641 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21641 (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58440 () Bool)

(assert (=> m!58348 m!58440))

(assert (=> m!58348 s!1075))

(declare-fun bs!25146 () Bool)

(declare-fun s!1077 () Bool)

(assert (= bs!25146 (and neg-inst!249 s!1077)))

(assert (=> bs!25146 (=> true (or (not (member x!21639 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21639 (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58442 () Bool)

(assert (=> m!58340 m!58442))

(assert (=> m!58340 s!1077))

(declare-fun bs!25147 () Bool)

(declare-fun s!1079 () Bool)

(assert (= bs!25147 (and neg-inst!249 s!1079)))

(assert (=> bs!25147 (=> true (or (not (member x!21643 (content!17 (left!1149 (left!1149 thiss!7629))))) (bvslt x!21643 (elem!219 (left!1149 thiss!7629)))))))

(declare-fun m!58444 () Bool)

(assert (=> m!58356 m!58444))

(assert (=> m!58356 s!1079))

(declare-fun bs!25148 () Bool)

(declare-fun s!1081 () Bool)

(assert (= bs!25148 (and neg-inst!248 s!1081)))

(assert (=> bs!25148 (=> true (or (not (member x!21642 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21642)))))

(declare-fun m!58446 () Bool)

(assert (=> m!58354 m!58446))

(assert (=> m!58354 s!1081))

(declare-fun bs!25149 () Bool)

(declare-fun s!1083 () Bool)

(assert (= bs!25149 (and neg-inst!248 s!1083)))

(assert (=> bs!25149 (=> true (or (not (member x!21384 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21384)))))

(declare-fun m!58448 () Bool)

(assert (=> m!58330 m!58448))

(assert (=> m!58330 s!1083))

(declare-fun bs!25150 () Bool)

(declare-fun s!1085 () Bool)

(assert (= bs!25150 (and neg-inst!248 s!1085)))

(assert (=> bs!25150 (=> true (or (not (member x!21640 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21640)))))

(declare-fun m!58450 () Bool)

(assert (=> m!58344 m!58450))

(assert (=> m!58344 s!1085))

(declare-fun bs!25151 () Bool)

(declare-fun s!1087 () Bool)

(assert (= bs!25151 (and neg-inst!248 s!1087)))

(assert (=> bs!25151 (=> true (or (not (member x!21641 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21641)))))

(declare-fun m!58452 () Bool)

(assert (=> m!58348 m!58452))

(assert (=> m!58348 s!1087))

(declare-fun bs!25152 () Bool)

(declare-fun s!1089 () Bool)

(assert (= bs!25152 (and neg-inst!248 s!1089)))

(assert (=> bs!25152 (=> true (or (not (member x!21638 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21638)))))

(declare-fun m!58454 () Bool)

(assert (=> m!58336 m!58454))

(assert (=> m!58336 s!1089))

(declare-fun bs!25153 () Bool)

(declare-fun s!1091 () Bool)

(assert (= bs!25153 (and neg-inst!248 s!1091)))

(assert (=> bs!25153 (=> true (or (not (member (elem!219 thiss!7629) (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) (elem!219 thiss!7629))))))

(declare-fun m!58456 () Bool)

(assert (=> m!58350 m!58456))

(assert (=> m!58350 s!1091))

(declare-fun bs!25154 () Bool)

(declare-fun s!1093 () Bool)

(assert (= bs!25154 (and neg-inst!248 s!1093)))

(assert (=> bs!25154 (=> true (or (not (member x!21643 (content!17 (right!1152 (left!1149 thiss!7629))))) (bvslt (elem!219 (left!1149 thiss!7629)) x!21643)))))

(declare-fun m!58458 () Bool)

(assert (=> m!58356 m!58458))

(assert (=> m!58356 s!1093))

(assert (=> m!58322 s!1083))

(declare-fun bs!25155 () Bool)

(declare-fun s!1095 () Bool)

(assert (= bs!25155 (and neg-inst!251 s!1095)))

(assert (=> bs!25155 (=> true (or (not (member x!21642 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21642 (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58460 () Bool)

(assert (=> m!58354 m!58460))

(assert (=> m!58354 s!1095))

(declare-fun bs!25156 () Bool)

(declare-fun s!1097 () Bool)

(assert (= bs!25156 (and neg-inst!251 s!1097)))

(assert (=> bs!25156 (=> true (or (not (member (elem!219 thiss!7629) (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt (elem!219 thiss!7629) (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58462 () Bool)

(assert (=> m!58350 m!58462))

(assert (=> m!58350 s!1097))

(declare-fun bs!25157 () Bool)

(declare-fun s!1099 () Bool)

(assert (= bs!25157 (and neg-inst!251 s!1099)))

(assert (=> bs!25157 (=> true (or (not (member x!21384 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21384 (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58464 () Bool)

(assert (=> m!58330 m!58464))

(assert (=> m!58330 s!1099))

(assert (=> m!58322 s!1099))

(declare-fun bs!25158 () Bool)

(declare-fun s!1101 () Bool)

(assert (= bs!25158 (and neg-inst!251 s!1101)))

(assert (=> bs!25158 (=> true (or (not (member x!21641 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21641 (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58466 () Bool)

(assert (=> m!58348 m!58466))

(assert (=> m!58348 s!1101))

(declare-fun bs!25159 () Bool)

(declare-fun s!1103 () Bool)

(assert (= bs!25159 (and neg-inst!251 s!1103)))

(assert (=> bs!25159 (=> true (or (not (member x!21638 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21638 (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58468 () Bool)

(assert (=> m!58336 m!58468))

(assert (=> m!58336 s!1103))

(declare-fun bs!25160 () Bool)

(declare-fun s!1105 () Bool)

(assert (= bs!25160 (and neg-inst!251 s!1105)))

(assert (=> bs!25160 (=> true (or (not (member x!21639 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21639 (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58470 () Bool)

(assert (=> m!58340 m!58470))

(assert (=> m!58340 s!1105))

(declare-fun bs!25161 () Bool)

(declare-fun s!1107 () Bool)

(assert (= bs!25161 (and neg-inst!251 s!1107)))

(assert (=> bs!25161 (=> true (or (not (member x!21643 (content!17 (left!1149 (right!1152 thiss!7629))))) (bvslt x!21643 (elem!219 (right!1152 thiss!7629)))))))

(declare-fun m!58472 () Bool)

(assert (=> m!58356 m!58472))

(assert (=> m!58356 s!1107))

(declare-fun bs!25162 () Bool)

(declare-fun s!1109 () Bool)

(assert (= bs!25162 (and neg-inst!250 s!1109)))

(assert (=> bs!25162 (=> true (or (not (member x!21642 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21642)))))

(declare-fun m!58474 () Bool)

(assert (=> m!58354 m!58474))

(assert (=> m!58354 s!1109))

(declare-fun bs!25163 () Bool)

(declare-fun s!1111 () Bool)

(assert (= bs!25163 (and neg-inst!250 s!1111)))

(assert (=> bs!25163 (=> true (or (not (member x!21384 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21384)))))

(declare-fun m!58476 () Bool)

(assert (=> m!58330 m!58476))

(assert (=> m!58330 s!1111))

(declare-fun bs!25164 () Bool)

(declare-fun s!1113 () Bool)

(assert (= bs!25164 (and neg-inst!250 s!1113)))

(assert (=> bs!25164 (=> true (or (not (member x!21640 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21640)))))

(declare-fun m!58478 () Bool)

(assert (=> m!58344 m!58478))

(assert (=> m!58344 s!1113))

(declare-fun bs!25165 () Bool)

(declare-fun s!1115 () Bool)

(assert (= bs!25165 (and neg-inst!250 s!1115)))

(assert (=> bs!25165 (=> true (or (not (member x!21638 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21638)))))

(declare-fun m!58480 () Bool)

(assert (=> m!58336 m!58480))

(assert (=> m!58336 s!1115))

(declare-fun bs!25166 () Bool)

(declare-fun s!1117 () Bool)

(assert (= bs!25166 (and neg-inst!250 s!1117)))

(assert (=> bs!25166 (=> true (or (not (member (elem!219 thiss!7629) (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) (elem!219 thiss!7629))))))

(declare-fun m!58482 () Bool)

(assert (=> m!58350 m!58482))

(assert (=> m!58350 s!1117))

(declare-fun bs!25167 () Bool)

(declare-fun s!1119 () Bool)

(assert (= bs!25167 (and neg-inst!250 s!1119)))

(assert (=> bs!25167 (=> true (or (not (member x!21639 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21639)))))

(declare-fun m!58484 () Bool)

(assert (=> m!58340 m!58484))

(assert (=> m!58340 s!1119))

(declare-fun bs!25168 () Bool)

(declare-fun s!1121 () Bool)

(assert (= bs!25168 (and neg-inst!250 s!1121)))

(assert (=> bs!25168 (=> true (or (not (member x!21643 (content!17 (right!1152 (right!1152 thiss!7629))))) (bvslt (elem!219 (right!1152 thiss!7629)) x!21643)))))

(declare-fun m!58486 () Bool)

(assert (=> m!58356 m!58486))

(assert (=> m!58356 s!1121))

(assert (=> m!58322 s!1111))

(declare-fun bs!25169 () Bool)

(declare-fun s!1123 () Bool)

(assert (= bs!25169 (and neg-inst!253 s!1123)))

(assert (=> bs!25169 (=> true (or (not (member (elem!219 thiss!7629) (content!17 (left!1149 thiss!7629)))) (bvslt (elem!219 thiss!7629) (elem!219 thiss!7629))))))

(declare-fun m!58488 () Bool)

(assert (=> m!58350 m!58488))

(assert (=> m!58350 s!1123))

(declare-fun bs!25170 () Bool)

(declare-fun s!1125 () Bool)

(assert (= bs!25170 (and neg-inst!253 s!1125)))

(assert (=> bs!25170 (=> true (or (not (member x!21640 (content!17 (left!1149 thiss!7629)))) (bvslt x!21640 (elem!219 thiss!7629))))))

(declare-fun m!58490 () Bool)

(assert (=> m!58344 m!58490))

(assert (=> m!58344 s!1125))

(declare-fun bs!25171 () Bool)

(declare-fun s!1127 () Bool)

(assert (= bs!25171 (and neg-inst!253 s!1127)))

(assert (=> bs!25171 (=> true (or (not (member x!21641 (content!17 (left!1149 thiss!7629)))) (bvslt x!21641 (elem!219 thiss!7629))))))

(declare-fun m!58492 () Bool)

(assert (=> m!58348 m!58492))

(assert (=> m!58348 s!1127))

(declare-fun bs!25172 () Bool)

(declare-fun s!1129 () Bool)

(assert (= bs!25172 (and neg-inst!253 s!1129)))

(assert (=> bs!25172 (=> true (or (not (member x!21638 (content!17 (left!1149 thiss!7629)))) (bvslt x!21638 (elem!219 thiss!7629))))))

(declare-fun m!58494 () Bool)

(assert (=> m!58336 m!58494))

(assert (=> m!58336 s!1129))

(declare-fun bs!25173 () Bool)

(declare-fun s!1131 () Bool)

(assert (= bs!25173 (and neg-inst!253 s!1131)))

(assert (=> bs!25173 (=> true (or (not (member x!21639 (content!17 (left!1149 thiss!7629)))) (bvslt x!21639 (elem!219 thiss!7629))))))

(declare-fun m!58496 () Bool)

(assert (=> m!58340 m!58496))

(assert (=> m!58340 s!1131))

(declare-fun bs!25174 () Bool)

(declare-fun s!1133 () Bool)

(assert (= bs!25174 (and neg-inst!253 s!1133)))

(assert (=> bs!25174 (=> true (or (not (member x!21643 (content!17 (left!1149 thiss!7629)))) (bvslt x!21643 (elem!219 thiss!7629))))))

(declare-fun m!58498 () Bool)

(assert (=> m!58356 m!58498))

(assert (=> m!58356 s!1133))

(declare-fun bs!25175 () Bool)

(declare-fun s!1135 () Bool)

(assert (= bs!25175 (and neg-inst!252 s!1135)))

(assert (=> bs!25175 (=> true (or (not (member x!21642 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21642)))))

(declare-fun m!58500 () Bool)

(assert (=> m!58354 m!58500))

(assert (=> m!58354 s!1135))

(declare-fun bs!25176 () Bool)

(declare-fun s!1137 () Bool)

(assert (= bs!25176 (and neg-inst!252 s!1137)))

(assert (=> bs!25176 (=> true (or (not (member x!21384 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21384)))))

(declare-fun m!58502 () Bool)

(assert (=> m!58330 m!58502))

(assert (=> m!58330 s!1137))

(declare-fun bs!25177 () Bool)

(declare-fun s!1139 () Bool)

(assert (= bs!25177 (and neg-inst!252 s!1139)))

(assert (=> bs!25177 (=> true (or (not (member x!21640 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21640)))))

(declare-fun m!58504 () Bool)

(assert (=> m!58344 m!58504))

(assert (=> m!58344 s!1139))

(declare-fun bs!25178 () Bool)

(declare-fun s!1141 () Bool)

(assert (= bs!25178 (and neg-inst!252 s!1141)))

(assert (=> bs!25178 (=> true (or (not (member x!21641 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21641)))))

(declare-fun m!58506 () Bool)

(assert (=> m!58348 m!58506))

(assert (=> m!58348 s!1141))

(declare-fun bs!25179 () Bool)

(declare-fun s!1143 () Bool)

(assert (= bs!25179 (and neg-inst!252 s!1143)))

(assert (=> bs!25179 (=> true (or (not (member x!21638 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21638)))))

(declare-fun m!58508 () Bool)

(assert (=> m!58336 m!58508))

(assert (=> m!58336 s!1143))

(declare-fun bs!25180 () Bool)

(declare-fun s!1145 () Bool)

(assert (= bs!25180 (and neg-inst!252 s!1145)))

(assert (=> bs!25180 (=> true (or (not (member (elem!219 thiss!7629) (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) (elem!219 thiss!7629))))))

(declare-fun m!58510 () Bool)

(assert (=> m!58350 m!58510))

(assert (=> m!58350 s!1145))

(declare-fun bs!25181 () Bool)

(declare-fun s!1147 () Bool)

(assert (= bs!25181 (and neg-inst!252 s!1147)))

(assert (=> bs!25181 (=> true (or (not (member x!21639 (content!17 (right!1152 thiss!7629)))) (bvslt (elem!219 thiss!7629) x!21639)))))

(declare-fun m!58512 () Bool)

(assert (=> m!58340 m!58512))

(assert (=> m!58340 s!1147))

(assert (=> m!58322 s!1137))

(push 1)

(assert (not b!54408))

(assert (not b!54404))

(assert (not b!54410))

(assert (not b!54388))

(assert (not neg-inst!254))

(assert (not b!54406))

(assert (not b!54407))

(assert (not b!54393))

(assert (not b!54413))

(assert (not neg-inst!258))

(assert (not b!54412))

(assert (not b!54391))

(assert (not b!54395))

(assert (not b!54415))

(assert (not b!54409))

(assert (not b!54402))

(assert (not b!54397))

(assert (not neg-inst!261))

(assert (not neg-inst!256))

(assert (not b!54416))

(assert (not neg-inst!257))

(assert (not b!54398))

(assert (not b!54389))

(assert (not d!44930))

(assert (not b!54414))

(assert (not neg-inst!255))

(assert (not neg-inst!260))

(assert (not b!54400))

(assert (not b!54396))

(assert (not neg-inst!259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

