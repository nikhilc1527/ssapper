; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5118 () Bool)

(assert start!5118)

(declare-fun b!39326 () Bool)

(declare-fun res!18845 () Bool)

(declare-fun e!20278 () Bool)

(assert (=> b!39326 (=> (not res!18845) (not e!20278))))

(declare-datatypes () ((Nat!79 (Zero!63) (Succ!60 (n!1161 Nat!79)))))

(declare-fun n1!376 () Nat!79)

(declare-fun n3!65 () Nat!79)

(declare-datatypes () ((Unit!353 (Unit!354))))

(declare-fun tmp!244 () Unit!353)

(declare-fun pred_<!0 (Nat!79 Nat!79) Unit!353)

(assert (=> b!39326 (= res!18845 (= tmp!244 (pred_<!0 n1!376 n3!65)))))

(declare-fun b!39327 () Bool)

(declare-fun n1!383 () Nat!79)

(declare-fun n2!399 () Nat!79)

(declare-fun <=!2 (Nat!79 Nat!79) Bool)

(assert (=> b!39327 (= e!20278 (not (<=!2 n1!383 n2!399)))))

(declare-fun b!39328 () Bool)

(declare-fun res!18846 () Bool)

(assert (=> b!39328 (=> (not res!18846) (not e!20278))))

(declare-fun n2!392 () Nat!79)

(declare-fun n4!3 () Nat!79)

(assert (=> b!39328 (= res!18846 (and (not (is-Zero!63 n3!65)) (or (not (= n1!376 n3!65)) (not (= n2!392 n4!3))) (not (= n1!376 n3!65))))))

(declare-fun res!18847 () Bool)

(assert (=> start!5118 (=> (not res!18847) (not e!20278))))

(assert (=> start!5118 (= res!18847 (<=!2 n1!376 n3!65))))

(assert (=> start!5118 e!20278))

(assert (=> start!5118 true))

(declare-fun b!39329 () Bool)

(declare-fun res!18848 () Bool)

(assert (=> b!39329 (=> (not res!18848) (not e!20278))))

(assert (=> b!39329 (= res!18848 (<=!2 n2!392 n4!3))))

(declare-fun b!39330 () Bool)

(declare-fun res!18850 () Bool)

(assert (=> b!39330 (=> (not res!18850) (not e!20278))))

(declare-fun +!5 (Nat!79 Nat!79) Nat!79)

(assert (=> b!39330 (= res!18850 (= n1!383 (+!5 n1!376 n2!392)))))

(declare-fun b!39331 () Bool)

(declare-fun res!18851 () Bool)

(assert (=> b!39331 (=> (not res!18851) (not e!20278))))

(assert (=> b!39331 (= res!18851 (= n2!399 (+!5 (n!1161 n3!65) n4!3)))))

(declare-fun b!39332 () Bool)

(declare-fun res!18849 () Bool)

(assert (=> b!39332 (=> (not res!18849) (not e!20278))))

(declare-fun tmp!245 () Unit!353)

(declare-fun plus_<!1 (Nat!79 Nat!79 Nat!79 Nat!79) Unit!353)

(assert (=> b!39332 (= res!18849 (= tmp!245 (plus_<!1 n1!376 n2!392 (n!1161 n3!65) n4!3)))))

(assert (= (and start!5118 res!18847) b!39329))

(assert (= (and b!39329 res!18848) b!39328))

(assert (= (and b!39328 res!18846) b!39326))

(assert (= (and b!39326 res!18845) b!39332))

(assert (= (and b!39332 res!18849) b!39330))

(assert (= (and b!39330 res!18850) b!39331))

(assert (= (and b!39331 res!18851) b!39327))

(declare-fun m!40483 () Bool)

(assert (=> b!39327 m!40483))

(declare-fun m!40485 () Bool)

(assert (=> b!39330 m!40485))

(declare-fun m!40487 () Bool)

(assert (=> b!39329 m!40487))

(declare-fun m!40489 () Bool)

(assert (=> b!39331 m!40489))

(declare-fun m!40491 () Bool)

(assert (=> b!39326 m!40491))

(declare-fun m!40493 () Bool)

(assert (=> start!5118 m!40493))

(declare-fun m!40495 () Bool)

(assert (=> b!39332 m!40495))

(push 1)

(assert (not b!39327))

(assert (not b!39329))

(assert (not b!39331))

(assert (not b!39332))

(assert (not start!5118))

(assert (not b!39326))

(assert (not b!39330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19946 () Bool)

(declare-fun res!18854 () Bool)

(declare-fun e!20281 () Bool)

(assert (=> d!19946 (=> res!18854 e!20281)))

(declare-fun <!2 (Nat!79 Nat!79) Bool)

(assert (=> d!19946 (= res!18854 (<!2 n1!383 n2!399))))

(assert (=> d!19946 (= (<=!2 n1!383 n2!399) e!20281)))

(declare-fun b!39335 () Bool)

(assert (=> b!39335 (= e!20281 (= n1!383 n2!399))))

(assert (= (and d!19946 (not res!18854)) b!39335))

(declare-fun m!40497 () Bool)

(assert (=> d!19946 m!40497))

(assert (=> b!39327 d!19946))

(declare-fun d!19948 () Bool)

(assert (=> d!19948 (<=!2 (+!5 n1!376 n2!392) (+!5 (n!1161 n3!65) n4!3))))

(assert (=> d!19948 true))

(declare-fun x$50!29 () Unit!353)

(assert (=> d!19948 (= (plus_<!1 n1!376 n2!392 (n!1161 n3!65) n4!3) x$50!29)))

(declare-fun bs!12072 () Bool)

(assert (= bs!12072 d!19948))

(assert (=> bs!12072 m!40485))

(assert (=> bs!12072 m!40489))

(assert (=> bs!12072 m!40485))

(assert (=> bs!12072 m!40489))

(declare-fun m!40499 () Bool)

(assert (=> bs!12072 m!40499))

(assert (=> b!39332 d!19948))

(declare-fun d!19950 () Bool)

(declare-fun res!18855 () Bool)

(declare-fun e!20282 () Bool)

(assert (=> d!19950 (=> res!18855 e!20282)))

(assert (=> d!19950 (= res!18855 (<!2 n1!376 n3!65))))

(assert (=> d!19950 (= (<=!2 n1!376 n3!65) e!20282)))

(declare-fun b!39336 () Bool)

(assert (=> b!39336 (= e!20282 (= n1!376 n3!65))))

(assert (= (and d!19950 (not res!18855)) b!39336))

(declare-fun m!40501 () Bool)

(assert (=> d!19950 m!40501))

(assert (=> start!5118 d!19950))

(declare-fun d!19952 () Bool)

(declare-fun c!8372 () Bool)

(assert (=> d!19952 (= c!8372 (is-Zero!63 n1!376))))

(declare-fun e!20285 () Nat!79)

(assert (=> d!19952 (= (+!5 n1!376 n2!392) e!20285)))

(declare-fun b!39341 () Bool)

(assert (=> b!39341 (= e!20285 n2!392)))

(declare-fun b!39342 () Bool)

(assert (=> b!39342 (= e!20285 (Succ!60 (+!5 (n!1161 n1!376) n2!392)))))

(assert (= (and d!19952 c!8372) b!39341))

(assert (= (and d!19952 (not c!8372)) b!39342))

(declare-fun m!40503 () Bool)

(assert (=> b!39342 m!40503))

(assert (=> b!39330 d!19952))

(declare-fun d!19954 () Bool)

(declare-fun c!8373 () Bool)

(assert (=> d!19954 (= c!8373 (is-Zero!63 (n!1161 n3!65)))))

(declare-fun e!20286 () Nat!79)

(assert (=> d!19954 (= (+!5 (n!1161 n3!65) n4!3) e!20286)))

(declare-fun b!39343 () Bool)

(assert (=> b!39343 (= e!20286 n4!3)))

(declare-fun b!39344 () Bool)

(assert (=> b!39344 (= e!20286 (Succ!60 (+!5 (n!1161 (n!1161 n3!65)) n4!3)))))

(assert (= (and d!19954 c!8373) b!39343))

(assert (= (and d!19954 (not c!8373)) b!39344))

(declare-fun m!40505 () Bool)

(assert (=> b!39344 m!40505))

(assert (=> b!39331 d!19954))

(declare-fun d!19956 () Bool)

(declare-fun res!18856 () Bool)

(declare-fun e!20287 () Bool)

(assert (=> d!19956 (=> res!18856 e!20287)))

(assert (=> d!19956 (= res!18856 (<!2 n2!392 n4!3))))

(assert (=> d!19956 (= (<=!2 n2!392 n4!3) e!20287)))

(declare-fun b!39345 () Bool)

(assert (=> b!39345 (= e!20287 (= n2!392 n4!3))))

(assert (= (and d!19956 (not res!18856)) b!39345))

(declare-fun m!40507 () Bool)

(assert (=> d!19956 m!40507))

(assert (=> b!39329 d!19956))

(declare-fun d!19958 () Bool)

(declare-fun e!20290 () Bool)

(assert (=> d!19958 e!20290))

(declare-fun res!18859 () Bool)

(assert (=> d!19958 (=> res!18859 e!20290)))

(declare-fun lt!7598 () Nat!79)

(assert (=> d!19958 (= res!18859 (= n1!376 lt!7598))))

(assert (=> d!19958 (= lt!7598 (n!1161 n3!65))))

(assert (=> d!19958 true))

(declare-fun x$45!63 () Unit!353)

(assert (=> d!19958 (= (pred_<!0 n1!376 n3!65) x$45!63)))

(declare-fun b!39348 () Bool)

(assert (=> b!39348 (= e!20290 (<!2 n1!376 lt!7598))))

(assert (= (and d!19958 (not res!18859)) b!39348))

(declare-fun m!40509 () Bool)

(assert (=> b!39348 m!40509))

(assert (=> b!39326 d!19958))

(push 1)

(assert (not b!39344))

(assert (not d!19956))

(assert (not b!39348))

(assert (not d!19948))

(assert (not d!19950))

(assert (not b!39342))

(assert (not d!19946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

