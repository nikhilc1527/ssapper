; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5166 () Bool)

(assert start!5166)

(declare-fun b!39502 () Bool)

(declare-fun res!18954 () Bool)

(declare-fun e!20355 () Bool)

(assert (=> b!39502 (=> (not res!18954) (not e!20355))))

(declare-datatypes () ((Nat!85 (Zero!69) (Succ!66 (n!1170 Nat!85)))))

(declare-fun n2!205 () Nat!85)

(declare-fun n1!194 () Nat!85)

(declare-fun n1!206 () Nat!85)

(declare-fun +!5 (Nat!85 Nat!85) Nat!85)

(assert (=> b!39502 (= res!18954 (= n1!206 (+!5 n1!194 n2!205)))))

(declare-fun b!39503 () Bool)

(declare-fun n2!217 () Nat!85)

(declare-fun <=!2 (Nat!85 Nat!85) Bool)

(assert (=> b!39503 (= e!20355 (not (<=!2 n1!206 n2!217)))))

(declare-fun res!18953 () Bool)

(assert (=> start!5166 (=> (not res!18953) (not e!20355))))

(declare-fun n3!50 () Nat!85)

(declare-fun <!2 (Nat!85 Nat!85) Bool)

(assert (=> start!5166 (= res!18953 (<!2 n2!205 n3!50))))

(assert (=> start!5166 e!20355))

(assert (=> start!5166 true))

(declare-fun b!39504 () Bool)

(declare-fun res!18955 () Bool)

(assert (=> b!39504 (=> (not res!18955) (not e!20355))))

(declare-datatypes () ((Unit!364 (Unit!365))))

(declare-fun tmp!182 () Unit!364)

(declare-fun pred_<!0 (Nat!85 Nat!85) Unit!364)

(assert (=> b!39504 (= res!18955 (= tmp!182 (pred_<!0 n2!205 n3!50)))))

(declare-fun b!39505 () Bool)

(declare-fun res!18952 () Bool)

(assert (=> b!39505 (=> (not res!18952) (not e!20355))))

(declare-fun tmp!181 () Unit!364)

(declare-fun plus_succ!0 (Nat!85 Nat!85) Unit!364)

(assert (=> b!39505 (= res!18952 (= tmp!181 (plus_succ!0 n1!194 (n!1170 n3!50))))))

(declare-fun b!39506 () Bool)

(declare-fun res!18949 () Bool)

(assert (=> b!39506 (=> (not res!18949) (not e!20355))))

(assert (=> b!39506 (= res!18949 (= n2!217 (+!5 n1!194 (n!1170 n3!50))))))

(declare-fun b!39507 () Bool)

(declare-fun res!18951 () Bool)

(assert (=> b!39507 (=> (not res!18951) (not e!20355))))

(assert (=> b!39507 (= res!18951 (or (not (is-Succ!66 n3!50)) (not (= n2!205 (n!1170 n3!50)))))))

(declare-fun b!39508 () Bool)

(declare-fun res!18950 () Bool)

(assert (=> b!39508 (=> (not res!18950) (not e!20355))))

(declare-fun tmp!183 () Unit!364)

(declare-fun plus_<!0 (Nat!85 Nat!85 Nat!85) Unit!364)

(assert (=> b!39508 (= res!18950 (= tmp!183 (plus_<!0 n1!194 n2!205 (n!1170 n3!50))))))

(assert (= (and start!5166 res!18953) b!39507))

(assert (= (and b!39507 res!18951) b!39505))

(assert (= (and b!39505 res!18952) b!39504))

(assert (= (and b!39504 res!18955) b!39508))

(assert (= (and b!39508 res!18950) b!39502))

(assert (= (and b!39502 res!18954) b!39506))

(assert (= (and b!39506 res!18949) b!39503))

(declare-fun m!40645 () Bool)

(assert (=> b!39504 m!40645))

(declare-fun m!40647 () Bool)

(assert (=> b!39508 m!40647))

(declare-fun m!40649 () Bool)

(assert (=> b!39503 m!40649))

(declare-fun m!40651 () Bool)

(assert (=> b!39506 m!40651))

(declare-fun m!40653 () Bool)

(assert (=> b!39502 m!40653))

(declare-fun m!40655 () Bool)

(assert (=> b!39505 m!40655))

(declare-fun m!40657 () Bool)

(assert (=> start!5166 m!40657))

(push 1)

(assert (not b!39503))

(assert (not b!39505))

(assert (not b!39502))

(assert (not start!5166))

(assert (not b!39504))

(assert (not b!39506))

(assert (not b!39508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!20016 () Bool)

(declare-fun c!8408 () Bool)

(assert (=> d!20016 (= c!8408 (is-Zero!69 n1!194))))

(declare-fun e!20358 () Nat!85)

(assert (=> d!20016 (= (+!5 n1!194 (n!1170 n3!50)) e!20358)))

(declare-fun b!39513 () Bool)

(assert (=> b!39513 (= e!20358 (n!1170 n3!50))))

(declare-fun b!39514 () Bool)

(assert (=> b!39514 (= e!20358 (Succ!66 (+!5 (n!1170 n1!194) (n!1170 n3!50))))))

(assert (= (and d!20016 c!8408) b!39513))

(assert (= (and d!20016 (not c!8408)) b!39514))

(declare-fun m!40659 () Bool)

(assert (=> b!39514 m!40659))

(assert (=> b!39506 d!20016))

(declare-fun d!20018 () Bool)

(assert (=> d!20018 (<!2 (+!5 n1!194 n2!205) (+!5 n1!194 (n!1170 n3!50)))))

(assert (=> d!20018 true))

(declare-fun x$49!33 () Unit!364)

(assert (=> d!20018 (= (plus_<!0 n1!194 n2!205 (n!1170 n3!50)) x$49!33)))

(declare-fun bs!12084 () Bool)

(assert (= bs!12084 d!20018))

(assert (=> bs!12084 m!40653))

(assert (=> bs!12084 m!40651))

(assert (=> bs!12084 m!40653))

(assert (=> bs!12084 m!40651))

(declare-fun m!40661 () Bool)

(assert (=> bs!12084 m!40661))

(assert (=> b!39508 d!20018))

(declare-fun d!20020 () Bool)

(declare-fun c!8409 () Bool)

(assert (=> d!20020 (= c!8409 (is-Zero!69 n1!194))))

(declare-fun e!20359 () Nat!85)

(assert (=> d!20020 (= (+!5 n1!194 n2!205) e!20359)))

(declare-fun b!39515 () Bool)

(assert (=> b!39515 (= e!20359 n2!205)))

(declare-fun b!39516 () Bool)

(assert (=> b!39516 (= e!20359 (Succ!66 (+!5 (n!1170 n1!194) n2!205)))))

(assert (= (and d!20020 c!8409) b!39515))

(assert (= (and d!20020 (not c!8409)) b!39516))

(declare-fun m!40663 () Bool)

(assert (=> b!39516 m!40663))

(assert (=> b!39502 d!20020))

(declare-fun d!20022 () Bool)

(declare-fun e!20362 () Bool)

(assert (=> d!20022 e!20362))

(declare-fun res!18958 () Bool)

(assert (=> d!20022 (=> res!18958 e!20362)))

(declare-fun lt!7628 () Nat!85)

(assert (=> d!20022 (= res!18958 (= n2!205 lt!7628))))

(assert (=> d!20022 (= lt!7628 (n!1170 n3!50))))

(assert (=> d!20022 true))

(declare-fun x$45!72 () Unit!364)

(assert (=> d!20022 (= (pred_<!0 n2!205 n3!50) x$45!72)))

(declare-fun b!39519 () Bool)

(assert (=> b!39519 (= e!20362 (<!2 n2!205 lt!7628))))

(assert (= (and d!20022 (not res!18958)) b!39519))

(declare-fun m!40665 () Bool)

(assert (=> b!39519 m!40665))

(assert (=> b!39504 d!20022))

(declare-fun d!20024 () Bool)

(assert (=> d!20024 (= (+!5 n1!194 (Succ!66 (n!1170 n3!50))) (Succ!66 (+!5 n1!194 (n!1170 n3!50))))))

(assert (=> d!20024 true))

(declare-fun x$7!73 () Unit!364)

(assert (=> d!20024 (= (plus_succ!0 n1!194 (n!1170 n3!50)) x$7!73)))

(declare-fun bs!12085 () Bool)

(assert (= bs!12085 d!20024))

(declare-fun m!40667 () Bool)

(assert (=> bs!12085 m!40667))

(assert (=> bs!12085 m!40651))

(assert (=> b!39505 d!20024))

(declare-fun d!20026 () Bool)

(declare-fun lt!7631 () Bool)

(declare-fun repr!0 (Nat!85) Int)

(assert (=> d!20026 (= lt!7631 (< (repr!0 n2!205) (repr!0 n3!50)))))

(declare-fun e!20365 () Bool)

(assert (=> d!20026 (= lt!7631 e!20365)))

(declare-fun c!8412 () Bool)

(assert (=> d!20026 (= c!8412 (and (is-Succ!66 n2!205) (is-Succ!66 n3!50)))))

(assert (=> d!20026 (= (<!2 n2!205 n3!50) lt!7631)))

(declare-fun b!39524 () Bool)

(assert (=> b!39524 (= e!20365 (<!2 (n!1170 n2!205) (n!1170 n3!50)))))

(declare-fun b!39525 () Bool)

(assert (=> b!39525 (= e!20365 (and (is-Zero!69 n2!205) (is-Succ!66 n3!50)))))

(assert (= (and d!20026 c!8412) b!39524))

(assert (= (and d!20026 (not c!8412)) b!39525))

(declare-fun m!40669 () Bool)

(assert (=> d!20026 m!40669))

(declare-fun m!40671 () Bool)

(assert (=> d!20026 m!40671))

(declare-fun m!40673 () Bool)

(assert (=> b!39524 m!40673))

(assert (=> start!5166 d!20026))

(declare-fun d!20028 () Bool)

(declare-fun res!18961 () Bool)

(declare-fun e!20368 () Bool)

(assert (=> d!20028 (=> res!18961 e!20368)))

(assert (=> d!20028 (= res!18961 (<!2 n1!206 n2!217))))

(assert (=> d!20028 (= (<=!2 n1!206 n2!217) e!20368)))

(declare-fun b!39528 () Bool)

(assert (=> b!39528 (= e!20368 (= n1!206 n2!217))))

(assert (= (and d!20028 (not res!18961)) b!39528))

(declare-fun m!40675 () Bool)

(assert (=> d!20028 m!40675))

(assert (=> b!39503 d!20028))

(push 1)

(assert (not d!20024))

(assert (not b!39519))

(assert (not b!39524))

(assert (not d!20018))

(assert (not b!39516))

(assert (not b!39514))

(assert (not d!20028))

(assert (not d!20026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

