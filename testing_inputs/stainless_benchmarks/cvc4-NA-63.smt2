; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!522 () Bool)

(assert start!522)

(declare-fun res!1217 () Bool)

(declare-fun e!2239 () Bool)

(assert (=> start!522 (=> (not res!1217) (not e!2239))))

(declare-datatypes () ((List!76 (Cons!76 (head!248 (_ BitVec 32)) (tail!260 List!76)) (Nil!77))))

(declare-datatypes () ((AbsQueue!23 (Queue!22 (front!75 List!76) (rear!77 List!76)))))

(declare-fun x$4!28 () AbsQueue!23)

(declare-fun queue!53 () AbsQueue!23)

(declare-fun elem!58 () (_ BitVec 32))

(declare-fun amortizedQueue!0 (List!76 List!76) AbsQueue!23)

(assert (=> start!522 (= res!1217 (= x$4!28 (amortizedQueue!0 (front!75 queue!53) (Cons!76 elem!58 (rear!77 queue!53)))))))

(assert (=> start!522 e!2239))

(assert (=> start!522 true))

(declare-fun b!4018 () Bool)

(declare-fun isAmortized!0 (AbsQueue!23) Bool)

(assert (=> b!4018 (= e!2239 (not (isAmortized!0 x$4!28)))))

(assert (= (and start!522 res!1217) b!4018))

(declare-fun m!6335 () Bool)

(assert (=> start!522 m!6335))

(declare-fun m!6337 () Bool)

(assert (=> b!4018 m!6337))

(push 1)

(assert (not b!4018))

(assert (not start!522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2918 () Bool)

(declare-fun size!23 (List!76) Int)

(assert (=> d!2918 (= (isAmortized!0 x$4!28) (>= (size!23 (front!75 x$4!28)) (size!23 (rear!77 x$4!28))))))

(declare-fun bs!273 () Bool)

(assert (= bs!273 d!2918))

(declare-fun m!6339 () Bool)

(assert (=> bs!273 m!6339))

(declare-fun m!6341 () Bool)

(assert (=> bs!273 m!6341))

(assert (=> b!4018 d!2918))

(declare-fun d!2920 () Bool)

(declare-fun lt!1146 () AbsQueue!23)

(assert (=> d!2920 (isAmortized!0 lt!1146)))

(declare-fun e!2242 () AbsQueue!23)

(assert (=> d!2920 (= lt!1146 e!2242)))

(declare-fun c!1469 () Bool)

(assert (=> d!2920 (= c!1469 (<= (size!23 (Cons!76 elem!58 (rear!77 queue!53))) (size!23 (front!75 queue!53))))))

(assert (=> d!2920 (= (amortizedQueue!0 (front!75 queue!53) (Cons!76 elem!58 (rear!77 queue!53))) lt!1146)))

(declare-fun b!4023 () Bool)

(assert (=> b!4023 (= e!2242 (Queue!22 (front!75 queue!53) (Cons!76 elem!58 (rear!77 queue!53))))))

(declare-fun b!4024 () Bool)

(declare-fun concat!2 (List!76 List!76) List!76)

(declare-fun reverse!5 (List!76) List!76)

(assert (=> b!4024 (= e!2242 (Queue!22 (concat!2 (front!75 queue!53) (reverse!5 (Cons!76 elem!58 (rear!77 queue!53)))) Nil!77))))

(assert (= (and d!2920 c!1469) b!4023))

(assert (= (and d!2920 (not c!1469)) b!4024))

(declare-fun m!6343 () Bool)

(assert (=> d!2920 m!6343))

(declare-fun m!6345 () Bool)

(assert (=> d!2920 m!6345))

(declare-fun m!6347 () Bool)

(assert (=> d!2920 m!6347))

(declare-fun m!6349 () Bool)

(assert (=> b!4024 m!6349))

(assert (=> b!4024 m!6349))

(declare-fun m!6351 () Bool)

(assert (=> b!4024 m!6351))

(assert (=> start!522 d!2920))

(push 1)

(assert (not b!4024))

(assert (not d!2918))

(assert (not d!2920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

