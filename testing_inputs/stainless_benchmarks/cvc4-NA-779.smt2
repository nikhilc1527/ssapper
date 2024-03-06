; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5946 () Bool)

(assert start!5946)

(declare-fun res!21087 () Bool)

(declare-fun e!23061 () Bool)

(assert (=> start!5946 (=> (not res!21087) (not e!23061))))

(declare-datatypes () ((Nat!140 (Zero!124) (Succ!121 (n!1269 Nat!140)))))

(declare-fun n1!209 () Nat!140)

(declare-fun n2!220 () Nat!140)

(declare-fun <!2 (Nat!140 Nat!140) Bool)

(assert (=> start!5946 (= res!21087 (<!2 n1!209 n2!220))))

(assert (=> start!5946 e!23061))

(assert (=> start!5946 true))

(declare-fun b!44547 () Bool)

(declare-fun res!21085 () Bool)

(assert (=> b!44547 (=> (not res!21085) (not e!23061))))

(declare-datatypes () ((Unit!475 (Unit!476))))

(declare-fun res!17711 () Unit!475)

(declare-fun t!5162 () Unit!475)

(declare-fun x$44!52 () Unit!475)

(assert (=> b!44547 (= res!21085 (and (= res!17711 t!5162) (= x$44!52 res!17711)))))

(declare-fun b!44548 () Bool)

(declare-fun e!23062 () Unit!475)

(declare-fun Unit!477 () Unit!475)

(assert (=> b!44548 (= e!23062 Unit!477)))

(declare-fun b!44549 () Bool)

(declare-fun <=!2 (Nat!140 Nat!140) Bool)

(assert (=> b!44549 (= e!23061 (not (<=!2 (Succ!121 n1!209) n2!220)))))

(declare-fun b!44550 () Bool)

(declare-fun res!21086 () Bool)

(assert (=> b!44550 (=> (not res!21086) (not e!23061))))

(assert (=> b!44550 (= res!21086 (= t!5162 e!23062))))

(declare-fun c!9519 () Bool)

(assert (=> b!44550 (= c!9519 (and (is-Succ!121 n2!220) (not (= n1!209 (n!1269 n2!220)))))))

(declare-fun b!44551 () Bool)

(declare-fun succ_<=!0 (Nat!140 Nat!140) Unit!475)

(assert (=> b!44551 (= e!23062 (succ_<=!0 n1!209 (n!1269 n2!220)))))

(declare-fun lt!8149 () Unit!475)

(declare-fun pred_<!0 (Nat!140 Nat!140) Unit!475)

(assert (=> b!44551 (= lt!8149 (pred_<!0 n1!209 n2!220))))

(assert (= (and start!5946 res!21087) b!44550))

(assert (= (and b!44550 c!9519) b!44551))

(assert (= (and b!44550 (not c!9519)) b!44548))

(assert (= (and b!44550 res!21086) b!44547))

(assert (= (and b!44547 res!21085) b!44549))

(declare-fun m!47721 () Bool)

(assert (=> start!5946 m!47721))

(declare-fun m!47723 () Bool)

(assert (=> b!44549 m!47723))

(declare-fun m!47725 () Bool)

(assert (=> b!44551 m!47725))

(declare-fun m!47727 () Bool)

(assert (=> b!44551 m!47727))

(push 1)

(assert (not b!44549))

(assert (not start!5946))

(assert (not b!44551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31404 () Bool)

(declare-fun res!21090 () Bool)

(declare-fun e!23065 () Bool)

(assert (=> d!31404 (=> res!21090 e!23065)))

(assert (=> d!31404 (= res!21090 (<!2 (Succ!121 n1!209) n2!220))))

(assert (=> d!31404 (= (<=!2 (Succ!121 n1!209) n2!220) e!23065)))

(declare-fun b!44554 () Bool)

(assert (=> b!44554 (= e!23065 (= (Succ!121 n1!209) n2!220))))

(assert (= (and d!31404 (not res!21090)) b!44554))

(declare-fun m!47729 () Bool)

(assert (=> d!31404 m!47729))

(assert (=> b!44549 d!31404))

(declare-fun d!31406 () Bool)

(declare-fun lt!8152 () Bool)

(declare-fun repr!0 (Nat!140) Int)

(assert (=> d!31406 (= lt!8152 (< (repr!0 n1!209) (repr!0 n2!220)))))

(declare-fun e!23068 () Bool)

(assert (=> d!31406 (= lt!8152 e!23068)))

(declare-fun c!9522 () Bool)

(assert (=> d!31406 (= c!9522 (and (is-Succ!121 n1!209) (is-Succ!121 n2!220)))))

(assert (=> d!31406 (= (<!2 n1!209 n2!220) lt!8152)))

(declare-fun b!44559 () Bool)

(assert (=> b!44559 (= e!23068 (<!2 (n!1269 n1!209) (n!1269 n2!220)))))

(declare-fun b!44560 () Bool)

(assert (=> b!44560 (= e!23068 (and (is-Zero!124 n1!209) (is-Succ!121 n2!220)))))

(assert (= (and d!31406 c!9522) b!44559))

(assert (= (and d!31406 (not c!9522)) b!44560))

(declare-fun m!47731 () Bool)

(assert (=> d!31406 m!47731))

(declare-fun m!47733 () Bool)

(assert (=> d!31406 m!47733))

(declare-fun m!47735 () Bool)

(assert (=> b!44559 m!47735))

(assert (=> start!5946 d!31406))

(declare-fun d!31408 () Bool)

(assert (=> d!31408 (<=!2 (Succ!121 n1!209) (n!1269 n2!220))))

(assert (=> d!31408 true))

(declare-fun x$44!61 () Unit!475)

(assert (=> d!31408 (= (succ_<=!0 n1!209 (n!1269 n2!220)) x$44!61)))

(declare-fun bs!17771 () Bool)

(assert (= bs!17771 d!31408))

(declare-fun m!47737 () Bool)

(assert (=> bs!17771 m!47737))

(assert (=> b!44551 d!31408))

(declare-fun d!31410 () Bool)

(declare-fun e!23071 () Bool)

(assert (=> d!31410 e!23071))

(declare-fun res!21093 () Bool)

(assert (=> d!31410 (=> res!21093 e!23071)))

(declare-fun lt!8155 () Nat!140)

(assert (=> d!31410 (= res!21093 (= n1!209 lt!8155))))

(assert (=> d!31410 (= lt!8155 (n!1269 n2!220))))

(assert (=> d!31410 true))

(declare-fun x$45!90 () Unit!475)

(assert (=> d!31410 (= (pred_<!0 n1!209 n2!220) x$45!90)))

(declare-fun b!44563 () Bool)

(assert (=> b!44563 (= e!23071 (<!2 n1!209 lt!8155))))

(assert (= (and d!31410 (not res!21093)) b!44563))

(declare-fun m!47739 () Bool)

(assert (=> b!44563 m!47739))

(assert (=> b!44551 d!31410))

(push 1)

(assert (not d!31408))

(assert (not b!44563))

(assert (not b!44559))

(assert (not d!31406))

(assert (not d!31404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31412 () Bool)

(declare-fun lt!8156 () Bool)

(assert (=> d!31412 (= lt!8156 (< (repr!0 (Succ!121 n1!209)) (repr!0 n2!220)))))

(declare-fun e!23072 () Bool)

(assert (=> d!31412 (= lt!8156 e!23072)))

(declare-fun c!9523 () Bool)

(assert (=> d!31412 (= c!9523 (and (is-Succ!121 (Succ!121 n1!209)) (is-Succ!121 n2!220)))))

(assert (=> d!31412 (= (<!2 (Succ!121 n1!209) n2!220) lt!8156)))

(declare-fun b!44564 () Bool)

(assert (=> b!44564 (= e!23072 (<!2 (n!1269 (Succ!121 n1!209)) (n!1269 n2!220)))))

(declare-fun b!44565 () Bool)

(assert (=> b!44565 (= e!23072 (and (is-Zero!124 (Succ!121 n1!209)) (is-Succ!121 n2!220)))))

(assert (= (and d!31412 c!9523) b!44564))

(assert (= (and d!31412 (not c!9523)) b!44565))

(declare-fun m!47741 () Bool)

(assert (=> d!31412 m!47741))

(assert (=> d!31412 m!47733))

(declare-fun m!47743 () Bool)

(assert (=> b!44564 m!47743))

(assert (=> d!31404 d!31412))

(declare-fun d!31414 () Bool)

(declare-fun lt!8159 () Int)

(assert (=> d!31414 (>= lt!8159 0)))

(declare-fun e!23075 () Int)

(assert (=> d!31414 (= lt!8159 e!23075)))

(declare-fun c!9526 () Bool)

(assert (=> d!31414 (= c!9526 (is-Zero!124 n1!209))))

(assert (=> d!31414 (= (repr!0 n1!209) lt!8159)))

(declare-fun b!44570 () Bool)

(assert (=> b!44570 (= e!23075 0)))

(declare-fun b!44571 () Bool)

(assert (=> b!44571 (= e!23075 (+ (repr!0 (n!1269 n1!209)) 1))))

(assert (= (and d!31414 c!9526) b!44570))

(assert (= (and d!31414 (not c!9526)) b!44571))

(declare-fun m!47745 () Bool)

(assert (=> b!44571 m!47745))

(assert (=> d!31406 d!31414))

(declare-fun d!31416 () Bool)

(declare-fun lt!8160 () Int)

(assert (=> d!31416 (>= lt!8160 0)))

(declare-fun e!23076 () Int)

(assert (=> d!31416 (= lt!8160 e!23076)))

(declare-fun c!9527 () Bool)

(assert (=> d!31416 (= c!9527 (is-Zero!124 n2!220))))

(assert (=> d!31416 (= (repr!0 n2!220) lt!8160)))

(declare-fun b!44572 () Bool)

(assert (=> b!44572 (= e!23076 0)))

(declare-fun b!44573 () Bool)

(assert (=> b!44573 (= e!23076 (+ (repr!0 (n!1269 n2!220)) 1))))

(assert (= (and d!31416 c!9527) b!44572))

(assert (= (and d!31416 (not c!9527)) b!44573))

(declare-fun m!47747 () Bool)

(assert (=> b!44573 m!47747))

(assert (=> d!31406 d!31416))

(declare-fun d!31418 () Bool)

(declare-fun res!21094 () Bool)

(declare-fun e!23077 () Bool)

(assert (=> d!31418 (=> res!21094 e!23077)))

(assert (=> d!31418 (= res!21094 (<!2 (Succ!121 n1!209) (n!1269 n2!220)))))

(assert (=> d!31418 (= (<=!2 (Succ!121 n1!209) (n!1269 n2!220)) e!23077)))

(declare-fun b!44574 () Bool)

(assert (=> b!44574 (= e!23077 (= (Succ!121 n1!209) (n!1269 n2!220)))))

(assert (= (and d!31418 (not res!21094)) b!44574))

(declare-fun m!47749 () Bool)

(assert (=> d!31418 m!47749))

(assert (=> d!31408 d!31418))

(declare-fun d!31420 () Bool)

(declare-fun lt!8161 () Bool)

(assert (=> d!31420 (= lt!8161 (< (repr!0 n1!209) (repr!0 lt!8155)))))

(declare-fun e!23078 () Bool)

(assert (=> d!31420 (= lt!8161 e!23078)))

(declare-fun c!9528 () Bool)

(assert (=> d!31420 (= c!9528 (and (is-Succ!121 n1!209) (is-Succ!121 lt!8155)))))

(assert (=> d!31420 (= (<!2 n1!209 lt!8155) lt!8161)))

(declare-fun b!44575 () Bool)

(assert (=> b!44575 (= e!23078 (<!2 (n!1269 n1!209) (n!1269 lt!8155)))))

(declare-fun b!44576 () Bool)

(assert (=> b!44576 (= e!23078 (and (is-Zero!124 n1!209) (is-Succ!121 lt!8155)))))

(assert (= (and d!31420 c!9528) b!44575))

(assert (= (and d!31420 (not c!9528)) b!44576))

(assert (=> d!31420 m!47731))

(declare-fun m!47751 () Bool)

(assert (=> d!31420 m!47751))

(declare-fun m!47753 () Bool)

(assert (=> b!44575 m!47753))

(assert (=> b!44563 d!31420))

(declare-fun d!31422 () Bool)

(declare-fun lt!8162 () Bool)

(assert (=> d!31422 (= lt!8162 (< (repr!0 (n!1269 n1!209)) (repr!0 (n!1269 n2!220))))))

(declare-fun e!23079 () Bool)

(assert (=> d!31422 (= lt!8162 e!23079)))

(declare-fun c!9529 () Bool)

(assert (=> d!31422 (= c!9529 (and (is-Succ!121 (n!1269 n1!209)) (is-Succ!121 (n!1269 n2!220))))))

(assert (=> d!31422 (= (<!2 (n!1269 n1!209) (n!1269 n2!220)) lt!8162)))

(declare-fun b!44577 () Bool)

(assert (=> b!44577 (= e!23079 (<!2 (n!1269 (n!1269 n1!209)) (n!1269 (n!1269 n2!220))))))

(declare-fun b!44578 () Bool)

(assert (=> b!44578 (= e!23079 (and (is-Zero!124 (n!1269 n1!209)) (is-Succ!121 (n!1269 n2!220))))))

(assert (= (and d!31422 c!9529) b!44577))

(assert (= (and d!31422 (not c!9529)) b!44578))

(assert (=> d!31422 m!47745))

(assert (=> d!31422 m!47747))

(declare-fun m!47755 () Bool)

(assert (=> b!44577 m!47755))

(assert (=> b!44559 d!31422))

(push 1)

(assert (not b!44564))

(assert (not d!31412))

(assert (not d!31422))

(assert (not d!31420))

(assert (not b!44577))

(assert (not b!44571))

(assert (not b!44573))

(assert (not b!44575))

(assert (not d!31418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

