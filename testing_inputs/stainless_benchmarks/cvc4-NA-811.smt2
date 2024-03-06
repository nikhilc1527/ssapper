; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6136 () Bool)

(assert start!6136)

(declare-fun res!21518 () Bool)

(declare-fun e!23636 () Bool)

(assert (=> start!6136 (=> (not res!21518) (not e!23636))))

(declare-datatypes () ((Nat!172 (Zero!156) (Succ!153 (n!1304 Nat!172)))))

(declare-fun n1!354 () Nat!172)

(declare-fun n2!370 () Nat!172)

(assert (=> start!6136 (= res!21518 (and (is-Succ!153 n1!354) (is-Succ!153 n2!370)))))

(assert (=> start!6136 e!23636))

(assert (=> start!6136 true))

(declare-fun b!45549 () Bool)

(declare-fun res!21519 () Bool)

(assert (=> b!45549 (=> (not res!21519) (not e!23636))))

(declare-datatypes () ((Unit!548 (Unit!549))))

(declare-fun x$48!38 () Unit!548)

(declare-fun antisymmetric_<!0 (Nat!172 Nat!172) Unit!548)

(assert (=> b!45549 (= res!21519 (= x$48!38 (antisymmetric_<!0 (n!1304 n1!354) (n!1304 n2!370))))))

(declare-fun b!45550 () Bool)

(declare-fun <!2 (Nat!172 Nat!172) Bool)

(declare-fun <=!2 (Nat!172 Nat!172) Bool)

(assert (=> b!45550 (= e!23636 (not (= (<!2 n1!354 n2!370) (not (<=!2 n2!370 n1!354)))))))

(assert (= (and start!6136 res!21518) b!45549))

(assert (= (and b!45549 res!21519) b!45550))

(declare-fun m!48577 () Bool)

(assert (=> b!45549 m!48577))

(declare-fun m!48579 () Bool)

(assert (=> b!45550 m!48579))

(declare-fun m!48581 () Bool)

(assert (=> b!45550 m!48581))

(push 1)

(assert (not b!45550))

(assert (not b!45549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32004 () Bool)

(declare-fun lt!8330 () Bool)

(declare-fun repr!0 (Nat!172) Int)

(assert (=> d!32004 (= lt!8330 (< (repr!0 n1!354) (repr!0 n2!370)))))

(declare-fun e!23639 () Bool)

(assert (=> d!32004 (= lt!8330 e!23639)))

(declare-fun c!9664 () Bool)

(assert (=> d!32004 (= c!9664 (and (is-Succ!153 n1!354) (is-Succ!153 n2!370)))))

(assert (=> d!32004 (= (<!2 n1!354 n2!370) lt!8330)))

(declare-fun b!45555 () Bool)

(assert (=> b!45555 (= e!23639 (<!2 (n!1304 n1!354) (n!1304 n2!370)))))

(declare-fun b!45556 () Bool)

(assert (=> b!45556 (= e!23639 (and (is-Zero!156 n1!354) (is-Succ!153 n2!370)))))

(assert (= (and d!32004 c!9664) b!45555))

(assert (= (and d!32004 (not c!9664)) b!45556))

(declare-fun m!48583 () Bool)

(assert (=> d!32004 m!48583))

(declare-fun m!48585 () Bool)

(assert (=> d!32004 m!48585))

(declare-fun m!48587 () Bool)

(assert (=> b!45555 m!48587))

(assert (=> b!45550 d!32004))

(declare-fun d!32006 () Bool)

(declare-fun res!21522 () Bool)

(declare-fun e!23642 () Bool)

(assert (=> d!32006 (=> res!21522 e!23642)))

(assert (=> d!32006 (= res!21522 (<!2 n2!370 n1!354))))

(assert (=> d!32006 (= (<=!2 n2!370 n1!354) e!23642)))

(declare-fun b!45559 () Bool)

(assert (=> b!45559 (= e!23642 (= n2!370 n1!354))))

(assert (= (and d!32006 (not res!21522)) b!45559))

(declare-fun m!48589 () Bool)

(assert (=> d!32006 m!48589))

(assert (=> b!45550 d!32006))

(declare-fun d!32008 () Bool)

(assert (=> d!32008 (= (<!2 (n!1304 n1!354) (n!1304 n2!370)) (not (<=!2 (n!1304 n2!370) (n!1304 n1!354))))))

(assert (=> d!32008 true))

(declare-fun x$48!50 () Unit!548)

(assert (=> d!32008 (= (antisymmetric_<!0 (n!1304 n1!354) (n!1304 n2!370)) x$48!50)))

(declare-fun bs!18049 () Bool)

(assert (= bs!18049 d!32008))

(assert (=> bs!18049 m!48587))

(declare-fun m!48591 () Bool)

(assert (=> bs!18049 m!48591))

(assert (=> b!45549 d!32008))

(push 1)

(assert (not d!32008))

(assert (not b!45555))

(assert (not d!32006))

(assert (not d!32004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32010 () Bool)

(declare-fun lt!8331 () Bool)

(assert (=> d!32010 (= lt!8331 (< (repr!0 (n!1304 n1!354)) (repr!0 (n!1304 n2!370))))))

(declare-fun e!23643 () Bool)

(assert (=> d!32010 (= lt!8331 e!23643)))

(declare-fun c!9665 () Bool)

(assert (=> d!32010 (= c!9665 (and (is-Succ!153 (n!1304 n1!354)) (is-Succ!153 (n!1304 n2!370))))))

(assert (=> d!32010 (= (<!2 (n!1304 n1!354) (n!1304 n2!370)) lt!8331)))

(declare-fun b!45560 () Bool)

(assert (=> b!45560 (= e!23643 (<!2 (n!1304 (n!1304 n1!354)) (n!1304 (n!1304 n2!370))))))

(declare-fun b!45561 () Bool)

(assert (=> b!45561 (= e!23643 (and (is-Zero!156 (n!1304 n1!354)) (is-Succ!153 (n!1304 n2!370))))))

(assert (= (and d!32010 c!9665) b!45560))

(assert (= (and d!32010 (not c!9665)) b!45561))

(declare-fun m!48593 () Bool)

(assert (=> d!32010 m!48593))

(declare-fun m!48595 () Bool)

(assert (=> d!32010 m!48595))

(declare-fun m!48597 () Bool)

(assert (=> b!45560 m!48597))

(assert (=> d!32008 d!32010))

(declare-fun d!32012 () Bool)

(declare-fun res!21523 () Bool)

(declare-fun e!23644 () Bool)

(assert (=> d!32012 (=> res!21523 e!23644)))

(assert (=> d!32012 (= res!21523 (<!2 (n!1304 n2!370) (n!1304 n1!354)))))

(assert (=> d!32012 (= (<=!2 (n!1304 n2!370) (n!1304 n1!354)) e!23644)))

(declare-fun b!45562 () Bool)

(assert (=> b!45562 (= e!23644 (= (n!1304 n2!370) (n!1304 n1!354)))))

(assert (= (and d!32012 (not res!21523)) b!45562))

(declare-fun m!48599 () Bool)

(assert (=> d!32012 m!48599))

(assert (=> d!32008 d!32012))

(assert (=> b!45555 d!32010))

(declare-fun d!32014 () Bool)

(declare-fun lt!8332 () Bool)

(assert (=> d!32014 (= lt!8332 (< (repr!0 n2!370) (repr!0 n1!354)))))

(declare-fun e!23645 () Bool)

(assert (=> d!32014 (= lt!8332 e!23645)))

(declare-fun c!9666 () Bool)

(assert (=> d!32014 (= c!9666 (and (is-Succ!153 n2!370) (is-Succ!153 n1!354)))))

(assert (=> d!32014 (= (<!2 n2!370 n1!354) lt!8332)))

(declare-fun b!45563 () Bool)

(assert (=> b!45563 (= e!23645 (<!2 (n!1304 n2!370) (n!1304 n1!354)))))

(declare-fun b!45564 () Bool)

(assert (=> b!45564 (= e!23645 (and (is-Zero!156 n2!370) (is-Succ!153 n1!354)))))

(assert (= (and d!32014 c!9666) b!45563))

(assert (= (and d!32014 (not c!9666)) b!45564))

(assert (=> d!32014 m!48585))

(assert (=> d!32014 m!48583))

(assert (=> b!45563 m!48599))

(assert (=> d!32006 d!32014))

(declare-fun d!32016 () Bool)

(declare-fun lt!8335 () Int)

(assert (=> d!32016 (>= lt!8335 0)))

(declare-fun e!23648 () Int)

(assert (=> d!32016 (= lt!8335 e!23648)))

(declare-fun c!9669 () Bool)

(assert (=> d!32016 (= c!9669 (is-Zero!156 n1!354))))

(assert (=> d!32016 (= (repr!0 n1!354) lt!8335)))

(declare-fun b!45569 () Bool)

(assert (=> b!45569 (= e!23648 0)))

(declare-fun b!45570 () Bool)

(assert (=> b!45570 (= e!23648 (+ (repr!0 (n!1304 n1!354)) 1))))

(assert (= (and d!32016 c!9669) b!45569))

(assert (= (and d!32016 (not c!9669)) b!45570))

(assert (=> b!45570 m!48593))

(assert (=> d!32004 d!32016))

(declare-fun d!32018 () Bool)

(declare-fun lt!8336 () Int)

(assert (=> d!32018 (>= lt!8336 0)))

(declare-fun e!23649 () Int)

(assert (=> d!32018 (= lt!8336 e!23649)))

(declare-fun c!9670 () Bool)

(assert (=> d!32018 (= c!9670 (is-Zero!156 n2!370))))

(assert (=> d!32018 (= (repr!0 n2!370) lt!8336)))

(declare-fun b!45571 () Bool)

(assert (=> b!45571 (= e!23649 0)))

(declare-fun b!45572 () Bool)

(assert (=> b!45572 (= e!23649 (+ (repr!0 (n!1304 n2!370)) 1))))

(assert (= (and d!32018 c!9670) b!45571))

(assert (= (and d!32018 (not c!9670)) b!45572))

(assert (=> b!45572 m!48595))

(assert (=> d!32004 d!32018))

(push 1)

(assert (not d!32010))

(assert (not b!45572))

(assert (not b!45563))

(assert (not b!45570))

(assert (not d!32014))

(assert (not b!45560))

(assert (not d!32012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

