; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4672 () Bool)

(assert start!4672)

(declare-fun res!17162 () Bool)

(declare-fun e!18681 () Bool)

(assert (=> start!4672 (=> (not res!17162) (not e!18681))))

(declare-datatypes () ((Expr!6 (And!7 (lhs!207 Expr!6) (rhs!207 Expr!6)) (Implies!7 (lhs!208 Expr!6) (rhs!208 Expr!6)) (BoolLiteral!4 (i!416 Int)) (Or!7 (lhs!209 Expr!6) (rhs!209 Expr!6)) (Not!7 (e!18682 Expr!6)))))

(declare-fun e!17837 () Expr!6)

(assert (=> start!4672 (= res!17162 (and (not (is-And!7 e!17837)) (not (is-Or!7 e!17837)) (not (is-Implies!7 e!17837)) (is-Not!7 e!17837)))))

(assert (=> start!4672 e!18681))

(assert (=> start!4672 true))

(declare-fun b!36501 () Bool)

(declare-fun res!17161 () Bool)

(assert (=> b!36501 (=> (not res!17161) (not e!18681))))

(declare-fun out!56 () Expr!6)

(declare-fun desugar!0 (Expr!6) Expr!6)

(assert (=> b!36501 (= res!17161 (= out!56 (Not!7 (desugar!0 (e!18682 e!17837)))))))

(declare-fun b!36502 () Bool)

(declare-fun e!18680 () Bool)

(assert (=> b!36502 (= e!18681 e!18680)))

(declare-fun res!17160 () Bool)

(assert (=> b!36502 (=> res!17160 e!18680)))

(declare-fun existsImplies!0 (Expr!6) Bool)

(assert (=> b!36502 (= res!17160 (existsImplies!0 out!56))))

(declare-fun b!36503 () Bool)

(declare-fun lambda!4208 () Int)

(declare-fun exists!6 (Expr!6 Int) Bool)

(assert (=> b!36503 (= e!18680 (exists!6 out!56 lambda!4208))))

(assert (= (and start!4672 res!17162) b!36501))

(assert (= (and b!36501 res!17161) b!36502))

(assert (= (and b!36502 (not res!17160)) b!36503))

(declare-fun m!38255 () Bool)

(assert (=> b!36501 m!38255))

(declare-fun m!38257 () Bool)

(assert (=> b!36502 m!38257))

(declare-fun m!38259 () Bool)

(assert (=> b!36503 m!38259))

(push 1)

(assert (not b!36501))

(assert (not b!36503))

(assert (not b!36502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11337 () Bool)

(declare-fun b!36539 () Bool)

(assert (= bs!11337 (and b!36539 b!36503)))

(declare-fun lambda!4211 () Int)

(assert (=> bs!11337 (= lambda!4211 lambda!4208)))

(declare-fun e!18704 () Expr!6)

(declare-fun lt!7242 () Bool)

(declare-fun lt!7239 () Expr!6)

(declare-fun b!36534 () Bool)

(declare-fun lt!7237 () Expr!6)

(assert (=> b!36534 (= e!18704 (ite lt!7242 (Or!7 (Not!7 lt!7237) lt!7239) (ite (is-Not!7 (e!18682 e!17837)) (Not!7 lt!7237) (e!18682 e!17837))))))

(declare-fun e!18703 () Expr!6)

(assert (=> b!36534 (= lt!7237 e!18703)))

(declare-fun c!7960 () Bool)

(assert (=> b!36534 (= c!7960 (or lt!7242 (is-Not!7 (e!18682 e!17837))))))

(assert (=> b!36534 (= lt!7242 (is-Implies!7 (e!18682 e!17837)))))

(declare-fun b!36535 () Bool)

(declare-fun e!18702 () Expr!6)

(declare-fun res!17193 () Expr!6)

(assert (=> b!36535 (= e!18702 res!17193)))

(assert (=> b!36535 true))

(declare-fun d!18560 () Bool)

(declare-fun e!18705 () Bool)

(assert (=> d!18560 e!18705))

(declare-fun res!17195 () Bool)

(assert (=> d!18560 (=> (not res!17195) (not e!18705))))

(declare-fun lt!7245 () Expr!6)

(assert (=> d!18560 (= res!17195 (not (existsImplies!0 lt!7245)))))

(declare-fun e!18701 () Expr!6)

(assert (=> d!18560 (= lt!7245 e!18701)))

(declare-fun c!7959 () Bool)

(declare-fun lt!7240 () Bool)

(assert (=> d!18560 (= c!7959 lt!7240)))

(declare-fun lt!7241 () Expr!6)

(declare-fun e!18707 () Expr!6)

(assert (=> d!18560 (= lt!7241 e!18707)))

(declare-fun c!7954 () Bool)

(assert (=> d!18560 (= c!7954 (or lt!7240 (is-Or!7 (e!18682 e!17837)) (is-Implies!7 (e!18682 e!17837))))))

(declare-fun lt!7238 () Expr!6)

(declare-fun e!18700 () Expr!6)

(assert (=> d!18560 (= lt!7238 e!18700)))

(declare-fun c!7958 () Bool)

(assert (=> d!18560 (= c!7958 (or lt!7240 (is-Or!7 (e!18682 e!17837)) (is-Implies!7 (e!18682 e!17837)) (is-Not!7 (e!18682 e!17837))))))

(assert (=> d!18560 (= lt!7240 (is-And!7 (e!18682 e!17837)))))

(assert (=> d!18560 (= (desugar!0 (e!18682 e!17837)) lt!7245)))

(declare-fun b!36536 () Bool)

(assert (=> b!36536 (= e!18701 (And!7 lt!7238 lt!7241))))

(declare-fun b!36537 () Bool)

(assert (=> b!36537 (= e!18707 (desugar!0 (ite lt!7240 (rhs!207 (e!18682 e!17837)) (ite (is-Or!7 (e!18682 e!17837)) (rhs!209 (e!18682 e!17837)) (rhs!208 (e!18682 e!17837))))))))

(declare-fun b!36538 () Bool)

(declare-fun e!18706 () Expr!6)

(declare-fun res!17191 () Expr!6)

(assert (=> b!36538 (= e!18706 res!17191)))

(assert (=> b!36538 true))

(assert (=> b!36539 (= e!18705 (not (exists!6 lt!7245 lambda!4211)))))

(declare-fun b!36540 () Bool)

(declare-fun res!17194 () Expr!6)

(assert (=> b!36540 (= e!18707 res!17194)))

(assert (=> b!36540 true))

(declare-fun b!36541 () Bool)

(assert (=> b!36541 (= e!18700 (desugar!0 (ite lt!7240 (lhs!207 (e!18682 e!17837)) (ite (is-Or!7 (e!18682 e!17837)) (lhs!209 (e!18682 e!17837)) (ite (is-Implies!7 (e!18682 e!17837)) (lhs!208 (e!18682 e!17837)) (e!18682 (e!18682 e!17837)))))))))

(declare-fun b!36542 () Bool)

(declare-fun lt!7243 () Expr!6)

(assert (=> b!36542 (= e!18703 lt!7243)))

(declare-fun b!36543 () Bool)

(assert (=> b!36543 (= e!18702 lt!7241)))

(declare-fun b!36544 () Bool)

(declare-fun res!17190 () Expr!6)

(assert (=> b!36544 (= e!18700 res!17190)))

(assert (=> b!36544 true))

(declare-fun b!36545 () Bool)

(assert (=> b!36545 (= e!18704 (Or!7 lt!7243 lt!7239))))

(declare-fun b!36546 () Bool)

(declare-fun res!17192 () Expr!6)

(assert (=> b!36546 (= e!18703 res!17192)))

(assert (=> b!36546 true))

(assert (=> b!36546 true))

(declare-fun b!36547 () Bool)

(assert (=> b!36547 (= e!18706 lt!7238)))

(declare-fun b!36548 () Bool)

(assert (=> b!36548 (= e!18701 e!18704)))

(declare-fun c!7956 () Bool)

(declare-fun lt!7244 () Bool)

(assert (=> b!36548 (= c!7956 lt!7244)))

(assert (=> b!36548 (= lt!7239 e!18702)))

(declare-fun c!7955 () Bool)

(assert (=> b!36548 (= c!7955 (or lt!7244 (is-Implies!7 (e!18682 e!17837))))))

(assert (=> b!36548 (= lt!7243 e!18706)))

(declare-fun c!7957 () Bool)

(assert (=> b!36548 (= c!7957 (or lt!7244 (is-Implies!7 (e!18682 e!17837)) (is-Not!7 (e!18682 e!17837))))))

(assert (=> b!36548 (= lt!7244 (is-Or!7 (e!18682 e!17837)))))

(assert (= (and d!18560 c!7958) b!36541))

(assert (= (and d!18560 (not c!7958)) b!36544))

(assert (= (and d!18560 c!7954) b!36537))

(assert (= (and d!18560 (not c!7954)) b!36540))

(assert (= (and b!36548 c!7957) b!36547))

(assert (= (and b!36548 (not c!7957)) b!36538))

(assert (= (and b!36548 c!7955) b!36543))

(assert (= (and b!36548 (not c!7955)) b!36535))

(assert (= (and b!36534 c!7960) b!36542))

(assert (= (and b!36534 (not c!7960)) b!36546))

(assert (= (and b!36548 c!7956) b!36545))

(assert (= (and b!36548 (not c!7956)) b!36534))

(assert (= (and d!18560 c!7959) b!36536))

(assert (= (and d!18560 (not c!7959)) b!36548))

(assert (= (and d!18560 res!17195) b!36539))

(declare-fun m!38261 () Bool)

(assert (=> d!18560 m!38261))

(declare-fun m!38263 () Bool)

(assert (=> b!36537 m!38263))

(declare-fun m!38265 () Bool)

(assert (=> b!36539 m!38265))

(declare-fun m!38267 () Bool)

(assert (=> b!36541 m!38267))

(assert (=> b!36501 d!18560))

(declare-fun b!36621 () Bool)

(declare-fun e!18755 () Expr!6)

(assert (=> b!36621 (= e!18755 (rhs!209 out!56))))

(declare-fun b!36622 () Bool)

(declare-fun e!18761 () Bool)

(declare-fun res!17272 () Bool)

(assert (=> b!36622 (= e!18761 res!17272)))

(assert (=> b!36622 true))

(declare-fun b!36623 () Bool)

(declare-fun e!18765 () Bool)

(declare-fun lt!7276 () Bool)

(assert (=> b!36623 (= e!18765 lt!7276)))

(declare-fun b!36624 () Bool)

(declare-fun e!18775 () Bool)

(declare-fun e!18769 () Bool)

(assert (=> b!36624 (= e!18775 e!18769)))

(declare-fun res!17274 () Bool)

(assert (=> b!36624 (=> (not res!17274) (not e!18769))))

(declare-fun lt!7283 () Bool)

(assert (=> b!36624 (= res!17274 (not lt!7283))))

(declare-fun b!36625 () Bool)

(declare-fun e!18772 () Bool)

(declare-fun res!17263 () Bool)

(assert (=> b!36625 (= e!18772 res!17263)))

(assert (=> b!36625 true))

(declare-fun b!36626 () Bool)

(declare-fun e!18758 () Bool)

(declare-fun e!18770 () Bool)

(assert (=> b!36626 (= e!18758 e!18770)))

(declare-fun res!17266 () Bool)

(assert (=> b!36626 (=> res!17266 e!18770)))

(declare-fun lt!7280 () Bool)

(declare-fun lt!7282 () Bool)

(assert (=> b!36626 (= res!17266 (and lt!7280 (not lt!7282)))))

(declare-fun e!18764 () Bool)

(assert (=> b!36626 (= lt!7282 e!18764)))

(declare-fun c!7993 () Bool)

(assert (=> b!36626 (= c!7993 (or lt!7280 (is-Implies!7 out!56) (is-Not!7 out!56)))))

(assert (=> b!36626 (= lt!7280 (is-Or!7 out!56))))

(declare-fun b!36627 () Bool)

(declare-fun e!18762 () Bool)

(declare-fun res!17257 () Bool)

(assert (=> b!36627 (= e!18762 res!17257)))

(assert (=> b!36627 true))

(declare-fun b!36628 () Bool)

(declare-fun e!18777 () Bool)

(declare-fun e!18768 () Bool)

(assert (=> b!36628 (= e!18777 (not e!18768))))

(declare-fun c!7997 () Bool)

(declare-fun lt!7278 () Bool)

(assert (=> b!36628 (= c!7997 (or lt!7278 (is-Not!7 out!56)))))

(declare-fun b!36629 () Bool)

(declare-fun e!18760 () Bool)

(declare-fun lt!7275 () Bool)

(assert (=> b!36629 (= e!18760 (or lt!7276 lt!7275))))

(declare-fun b!36630 () Bool)

(declare-fun e!18756 () Bool)

(assert (=> b!36630 (= e!18760 e!18756)))

(declare-fun c!7999 () Bool)

(assert (=> b!36630 (= c!7999 lt!7283)))

(declare-fun lt!7274 () Bool)

(assert (=> b!36630 (= lt!7274 e!18762)))

(declare-fun c!7990 () Bool)

(assert (=> b!36630 (= c!7990 e!18775)))

(declare-fun res!17258 () Bool)

(assert (=> b!36630 (=> res!17258 e!18775)))

(declare-fun lt!7277 () Bool)

(assert (=> b!36630 (= res!17258 (and lt!7283 (not lt!7277)))))

(declare-fun e!18767 () Bool)

(assert (=> b!36630 (= lt!7277 e!18767)))

(declare-fun c!7992 () Bool)

(assert (=> b!36630 (= c!7992 (or lt!7283 (is-Implies!7 out!56) (is-Not!7 out!56)))))

(assert (=> b!36630 (= lt!7283 (is-Or!7 out!56))))

(declare-fun b!36631 () Bool)

(assert (=> b!36631 (= e!18768 lt!7282)))

(declare-fun b!36632 () Bool)

(assert (=> b!36632 (= e!18762 lt!7275)))

(declare-fun b!36633 () Bool)

(declare-fun res!17271 () Bool)

(assert (=> b!36633 (= e!18765 res!17271)))

(assert (=> b!36633 true))

(declare-fun b!36634 () Bool)

(declare-fun e!18763 () Bool)

(assert (=> b!36634 (= e!18763 e!18758)))

(declare-fun res!17269 () Bool)

(assert (=> b!36634 (=> (not res!17269) (not e!18758))))

(declare-fun lt!7287 () Bool)

(assert (=> b!36634 (= res!17269 (not lt!7287))))

(declare-fun b!36635 () Bool)

(declare-fun res!17273 () Bool)

(assert (=> b!36635 (= e!18764 res!17273)))

(assert (=> b!36635 true))

(declare-fun b!36636 () Bool)

(declare-fun e!18774 () Bool)

(assert (=> b!36636 (= e!18769 e!18774)))

(declare-fun res!17267 () Bool)

(assert (=> b!36636 (=> (not res!17267) (not e!18774))))

(declare-fun lt!7284 () Bool)

(assert (=> b!36636 (= res!17267 lt!7284)))

(assert (=> b!36636 (= lt!7284 (is-Implies!7 out!56))))

(declare-fun b!36637 () Bool)

(declare-fun e!18776 () Bool)

(assert (=> b!36637 (= e!18770 e!18776)))

(declare-fun res!17264 () Bool)

(assert (=> b!36637 (=> (not res!17264) (not e!18776))))

(assert (=> b!36637 (= res!17264 (not lt!7280))))

(declare-fun b!36638 () Bool)

(declare-fun e!18771 () Bool)

(assert (=> b!36638 (= e!18771 lt!7277)))

(declare-fun b!36639 () Bool)

(declare-fun res!17262 () Bool)

(assert (=> b!36639 (= e!18767 res!17262)))

(assert (=> b!36639 true))

(declare-fun b!36640 () Bool)

(assert (=> b!36640 (= e!18772 (exists!6 (ite lt!7287 (lhs!207 out!56) (ite (is-Or!7 out!56) (lhs!209 out!56) (ite (is-Implies!7 out!56) (lhs!208 out!56) (e!18682 out!56)))) lambda!4208))))

(declare-fun b!36641 () Bool)

(declare-fun e!18759 () Expr!6)

(assert (=> b!36641 (= e!18759 e!18755)))

(declare-fun c!7996 () Bool)

(declare-fun e!18766 () Bool)

(assert (=> b!36641 (= c!7996 e!18766)))

(declare-fun res!17256 () Bool)

(assert (=> b!36641 (=> (not res!17256) (not e!18766))))

(declare-fun lt!7279 () Bool)

(assert (=> b!36641 (= res!17256 lt!7279)))

(assert (=> b!36641 (= lt!7279 (is-Or!7 out!56))))

(declare-fun b!36642 () Bool)

(assert (=> b!36642 (= e!18766 (not e!18765))))

(declare-fun c!7991 () Bool)

(assert (=> b!36642 (= c!7991 (or lt!7279 (is-Implies!7 out!56) (is-Not!7 out!56)))))

(declare-fun b!36643 () Bool)

(assert (=> b!36643 (= e!18764 lt!7276)))

(declare-fun b!36644 () Bool)

(declare-fun e!18757 () Bool)

(assert (=> b!36644 (= e!18757 e!18760)))

(declare-fun c!7995 () Bool)

(assert (=> b!36644 (= c!7995 lt!7287)))

(assert (=> b!36644 (= lt!7275 e!18761)))

(declare-fun c!7988 () Bool)

(assert (=> b!36644 (= c!7988 e!18763)))

(declare-fun res!17260 () Bool)

(assert (=> b!36644 (=> res!17260 e!18763)))

(declare-fun lt!7285 () Bool)

(assert (=> b!36644 (= res!17260 lt!7285)))

(assert (=> b!36644 (= lt!7285 (and lt!7287 (not lt!7276)))))

(assert (=> b!36644 (= lt!7276 e!18772)))

(declare-fun c!7989 () Bool)

(assert (=> b!36644 (= c!7989 (or lt!7287 (is-Or!7 out!56) (is-Implies!7 out!56) (is-Not!7 out!56)))))

(assert (=> b!36644 (= lt!7287 (is-And!7 out!56))))

(declare-fun b!36645 () Bool)

(assert (=> b!36645 (= e!18755 (rhs!208 out!56))))

(declare-fun b!36646 () Bool)

(assert (=> b!36646 (= e!18761 (exists!6 e!18759 lambda!4208))))

(declare-fun c!7987 () Bool)

(assert (=> b!36646 (= c!7987 lt!7285)))

(declare-fun b!36647 () Bool)

(assert (=> b!36647 (= e!18767 lt!7276)))

(declare-fun b!36648 () Bool)

(assert (=> b!36648 (= e!18759 (rhs!207 out!56))))

(declare-fun b!36649 () Bool)

(declare-fun res!17270 () Bool)

(assert (=> b!36649 (= e!18771 res!17270)))

(assert (=> b!36649 true))

(declare-fun b!36650 () Bool)

(declare-fun e!18773 () Bool)

(declare-fun res!17268 () Bool)

(assert (=> b!36650 (= e!18773 res!17268)))

(assert (=> b!36650 true))

(assert (=> b!36650 true))

(declare-fun b!36651 () Bool)

(assert (=> b!36651 (= e!18776 e!18777)))

(declare-fun res!17259 () Bool)

(assert (=> b!36651 (=> (not res!17259) (not e!18777))))

(assert (=> b!36651 (= res!17259 lt!7278)))

(assert (=> b!36651 (= lt!7278 (is-Implies!7 out!56))))

(declare-fun b!36652 () Bool)

(assert (=> b!36652 (= e!18756 (or lt!7277 lt!7274))))

(declare-fun b!36653 () Bool)

(assert (=> b!36653 (= e!18773 lt!7277)))

(declare-fun b!36654 () Bool)

(declare-fun res!17265 () Bool)

(assert (=> b!36654 (= e!18768 res!17265)))

(assert (=> b!36654 true))

(declare-fun d!18562 () Bool)

(declare-fun res!17261 () Bool)

(assert (=> d!18562 (=> res!17261 e!18757)))

(declare-fun dynLambda!648 (Int Expr!6) Bool)

(assert (=> d!18562 (= res!17261 (dynLambda!648 lambda!4208 out!56))))

(assert (=> d!18562 (= (exists!6 out!56 lambda!4208) e!18757)))

(declare-fun b!36655 () Bool)

(assert (=> b!36655 (= e!18774 (not e!18771))))

(declare-fun c!7994 () Bool)

(assert (=> b!36655 (= c!7994 (or lt!7284 (is-Not!7 out!56)))))

(declare-fun lt!7286 () Bool)

(declare-fun lt!7281 () Bool)

(declare-fun b!36656 () Bool)

(assert (=> b!36656 (= e!18756 (ite lt!7286 (or lt!7281 lt!7274) (and (is-Not!7 out!56) lt!7281)))))

(assert (=> b!36656 (= lt!7281 e!18773)))

(declare-fun c!7998 () Bool)

(assert (=> b!36656 (= c!7998 (or lt!7286 (is-Not!7 out!56)))))

(assert (=> b!36656 (= lt!7286 (is-Implies!7 out!56))))

(assert (= (and d!18562 (not res!17261)) b!36644))

(assert (= (and b!36644 c!7989) b!36640))

(assert (= (and b!36644 (not c!7989)) b!36625))

(assert (= (and b!36644 (not res!17260)) b!36634))

(assert (= (and b!36634 res!17269) b!36626))

(assert (= (and b!36626 c!7993) b!36643))

(assert (= (and b!36626 (not c!7993)) b!36635))

(assert (= (and b!36626 (not res!17266)) b!36637))

(assert (= (and b!36637 res!17264) b!36651))

(assert (= (and b!36651 res!17259) b!36628))

(assert (= (and b!36628 c!7997) b!36631))

(assert (= (and b!36628 (not c!7997)) b!36654))

(assert (= (and b!36641 res!17256) b!36642))

(assert (= (and b!36642 c!7991) b!36623))

(assert (= (and b!36642 (not c!7991)) b!36633))

(assert (= (and b!36641 c!7996) b!36621))

(assert (= (and b!36641 (not c!7996)) b!36645))

(assert (= (and b!36646 c!7987) b!36648))

(assert (= (and b!36646 (not c!7987)) b!36641))

(assert (= (and b!36644 c!7988) b!36646))

(assert (= (and b!36644 (not c!7988)) b!36622))

(assert (= (and b!36630 c!7992) b!36647))

(assert (= (and b!36630 (not c!7992)) b!36639))

(assert (= (and b!36630 (not res!17258)) b!36624))

(assert (= (and b!36624 res!17274) b!36636))

(assert (= (and b!36636 res!17267) b!36655))

(assert (= (and b!36655 c!7994) b!36638))

(assert (= (and b!36655 (not c!7994)) b!36649))

(assert (= (and b!36630 c!7990) b!36632))

(assert (= (and b!36630 (not c!7990)) b!36627))

(assert (= (and b!36656 c!7998) b!36653))

(assert (= (and b!36656 (not c!7998)) b!36650))

(assert (= (and b!36630 c!7999) b!36652))

(assert (= (and b!36630 (not c!7999)) b!36656))

(assert (= (and b!36644 c!7995) b!36629))

(assert (= (and b!36644 (not c!7995)) b!36630))

(declare-fun b_lambda!9611 () Bool)

(assert (=> (not b_lambda!9611) (not d!18562)))

(declare-fun m!38269 () Bool)

(assert (=> b!36640 m!38269))

(declare-fun m!38271 () Bool)

(assert (=> b!36646 m!38271))

(declare-fun m!38273 () Bool)

(assert (=> d!18562 m!38273))

(assert (=> b!36503 d!18562))

(declare-fun b!36729 () Bool)

(declare-fun e!18840 () Bool)

(declare-fun lt!7320 () Bool)

(declare-fun lt!7316 () Bool)

(assert (=> b!36729 (= e!18840 (or lt!7320 lt!7316))))

(declare-fun b!36730 () Bool)

(declare-fun e!18846 () Bool)

(declare-fun e!18834 () Bool)

(assert (=> b!36730 (= e!18846 (not e!18834))))

(declare-fun c!8028 () Bool)

(declare-fun lt!7328 () Bool)

(assert (=> b!36730 (= c!8028 (or lt!7328 (is-Not!7 out!56)))))

(declare-fun b!36731 () Bool)

(declare-fun e!18828 () Bool)

(declare-fun res!17342 () Bool)

(assert (=> b!36731 (= e!18828 res!17342)))

(assert (=> b!36731 true))

(declare-fun b!36732 () Bool)

(declare-fun e!18836 () Bool)

(declare-fun e!18845 () Bool)

(assert (=> b!36732 (= e!18836 e!18845)))

(declare-fun res!17347 () Bool)

(assert (=> b!36732 (=> (not res!17347) (not e!18845))))

(declare-fun lt!7325 () Bool)

(assert (=> b!36732 (= res!17347 (not lt!7325))))

(declare-fun d!18564 () Bool)

(declare-fun res!17344 () Bool)

(declare-fun e!18838 () Bool)

(assert (=> d!18564 (=> res!17344 e!18838)))

(assert (=> d!18564 (= res!17344 (is-Implies!7 out!56))))

(assert (=> d!18564 (= (existsImplies!0 out!56) e!18838)))

(declare-fun b!36733 () Bool)

(declare-fun e!18835 () Bool)

(declare-fun e!18839 () Bool)

(assert (=> b!36733 (= e!18835 e!18839)))

(declare-fun res!17350 () Bool)

(assert (=> b!36733 (=> (not res!17350) (not e!18839))))

(declare-fun lt!7322 () Bool)

(assert (=> b!36733 (= res!17350 lt!7322)))

(assert (=> b!36733 (= lt!7322 false)))

(declare-fun b!36734 () Bool)

(declare-fun lt!7319 () Bool)

(assert (=> b!36734 (= e!18834 lt!7319)))

(declare-fun b!36735 () Bool)

(declare-fun e!18832 () Bool)

(declare-fun res!17348 () Bool)

(assert (=> b!36735 (= e!18832 res!17348)))

(assert (=> b!36735 true))

(declare-fun b!36736 () Bool)

(declare-fun e!18841 () Bool)

(declare-fun lt!7317 () Bool)

(assert (=> b!36736 (= e!18841 lt!7317)))

(declare-fun b!36737 () Bool)

(declare-fun e!18842 () Expr!6)

(assert (=> b!36737 (= e!18842 (rhs!209 out!56))))

(declare-fun b!36738 () Bool)

(declare-fun e!18847 () Bool)

(declare-fun res!17338 () Bool)

(assert (=> b!36738 (= e!18847 res!17338)))

(assert (=> b!36738 true))

(declare-fun b!36739 () Bool)

(declare-fun lt!7327 () Bool)

(declare-fun lt!7321 () Bool)

(declare-fun lt!7324 () Bool)

(declare-fun e!18837 () Bool)

(assert (=> b!36739 (= e!18837 (ite lt!7327 (or lt!7324 lt!7321) (and (is-Not!7 out!56) lt!7324)))))

(assert (=> b!36739 (= lt!7324 e!18841)))

(declare-fun c!8027 () Bool)

(assert (=> b!36739 (= c!8027 (or lt!7327 (is-Not!7 out!56)))))

(assert (=> b!36739 (= lt!7327 false)))

(declare-fun b!36740 () Bool)

(declare-fun e!18826 () Bool)

(assert (=> b!36740 (= e!18826 lt!7320)))

(declare-fun b!36741 () Bool)

(declare-fun e!18843 () Bool)

(assert (=> b!36741 (= e!18843 lt!7317)))

(declare-fun b!36742 () Bool)

(declare-fun e!18829 () Bool)

(assert (=> b!36742 (= e!18829 (not e!18828))))

(declare-fun c!8038 () Bool)

(declare-fun lt!7326 () Bool)

(assert (=> b!36742 (= c!8038 (or lt!7326 (is-Not!7 out!56)))))

(declare-fun b!36743 () Bool)

(assert (=> b!36743 (= e!18845 e!18846)))

(declare-fun res!17333 () Bool)

(assert (=> b!36743 (=> (not res!17333) (not e!18846))))

(assert (=> b!36743 (= res!17333 lt!7328)))

(assert (=> b!36743 (= lt!7328 false)))

(declare-fun b!36744 () Bool)

(declare-fun e!18833 () Expr!6)

(assert (=> b!36744 (= e!18847 (existsImplies!0 e!18833))))

(declare-fun c!8036 () Bool)

(declare-fun lt!7318 () Bool)

(assert (=> b!36744 (= c!8036 lt!7318)))

(declare-fun b!36745 () Bool)

(assert (=> b!36745 (= e!18832 lt!7316)))

(declare-fun b!36746 () Bool)

(declare-fun res!17346 () Bool)

(assert (=> b!36746 (= e!18826 res!17346)))

(assert (=> b!36746 true))

(declare-fun b!36747 () Bool)

(declare-fun e!18827 () Bool)

(assert (=> b!36747 (= e!18827 e!18835)))

(declare-fun res!17345 () Bool)

(assert (=> b!36747 (=> (not res!17345) (not e!18835))))

(declare-fun lt!7323 () Bool)

(assert (=> b!36747 (= res!17345 (not lt!7323))))

(declare-fun b!36748 () Bool)

(declare-fun e!18830 () Bool)

(assert (=> b!36748 (= e!18830 lt!7320)))

(declare-fun b!36749 () Bool)

(declare-fun res!17341 () Bool)

(assert (=> b!36749 (= e!18830 res!17341)))

(assert (=> b!36749 true))

(declare-fun b!36750 () Bool)

(declare-fun e!18831 () Bool)

(declare-fun lt!7329 () Bool)

(assert (=> b!36750 (= e!18831 (existsImplies!0 (ite lt!7329 (lhs!207 out!56) (ite (is-Or!7 out!56) (lhs!209 out!56) (ite false (lhs!208 out!56) (e!18682 out!56))))))))

(declare-fun b!36751 () Bool)

(declare-fun res!17334 () Bool)

(assert (=> b!36751 (= e!18843 res!17334)))

(assert (=> b!36751 true))

(declare-fun b!36752 () Bool)

(assert (=> b!36752 (= e!18833 (rhs!207 out!56))))

(declare-fun b!36753 () Bool)

(assert (=> b!36753 (= e!18828 lt!7320)))

(declare-fun b!36754 () Bool)

(declare-fun res!17336 () Bool)

(assert (=> b!36754 (= e!18831 res!17336)))

(assert (=> b!36754 true))

(declare-fun b!36755 () Bool)

(declare-fun res!17337 () Bool)

(assert (=> b!36755 (= e!18834 res!17337)))

(assert (=> b!36755 true))

(declare-fun b!36756 () Bool)

(declare-fun e!18825 () Bool)

(declare-fun e!18844 () Bool)

(assert (=> b!36756 (= e!18825 e!18844)))

(declare-fun res!17335 () Bool)

(assert (=> b!36756 (=> (not res!17335) (not e!18844))))

(assert (=> b!36756 (= res!17335 (not lt!7329))))

(declare-fun b!36757 () Bool)

(assert (=> b!36757 (= e!18842 (rhs!208 out!56))))

(declare-fun b!36758 () Bool)

(assert (=> b!36758 (= e!18838 e!18840)))

(declare-fun c!8029 () Bool)

(assert (=> b!36758 (= c!8029 lt!7329)))

(assert (=> b!36758 (= lt!7316 e!18847)))

(declare-fun c!8026 () Bool)

(assert (=> b!36758 (= c!8026 e!18825)))

(declare-fun res!17351 () Bool)

(assert (=> b!36758 (=> res!17351 e!18825)))

(assert (=> b!36758 (= res!17351 lt!7318)))

(assert (=> b!36758 (= lt!7318 (and lt!7329 (not lt!7320)))))

(assert (=> b!36758 (= lt!7320 e!18831)))

(declare-fun c!8037 () Bool)

(assert (=> b!36758 (= c!8037 (or lt!7329 (is-Or!7 out!56) (is-Not!7 out!56)))))

(assert (=> b!36758 (= lt!7329 (is-And!7 out!56))))

(declare-fun b!36759 () Bool)

(assert (=> b!36759 (= e!18833 e!18842)))

(declare-fun c!8032 () Bool)

(assert (=> b!36759 (= c!8032 e!18829)))

(declare-fun res!17349 () Bool)

(assert (=> b!36759 (=> (not res!17349) (not e!18829))))

(assert (=> b!36759 (= res!17349 lt!7326)))

(assert (=> b!36759 (= lt!7326 (is-Or!7 out!56))))

(declare-fun b!36760 () Bool)

(declare-fun res!17339 () Bool)

(assert (=> b!36760 (= e!18841 res!17339)))

(assert (=> b!36760 true))

(assert (=> b!36760 true))

(declare-fun b!36761 () Bool)

(assert (=> b!36761 (= e!18837 (or lt!7317 lt!7321))))

(declare-fun b!36762 () Bool)

(assert (=> b!36762 (= e!18840 e!18837)))

(declare-fun c!8030 () Bool)

(assert (=> b!36762 (= c!8030 lt!7323)))

(assert (=> b!36762 (= lt!7321 e!18832)))

(declare-fun c!8034 () Bool)

(assert (=> b!36762 (= c!8034 e!18827)))

(declare-fun res!17340 () Bool)

(assert (=> b!36762 (=> res!17340 e!18827)))

(assert (=> b!36762 (= res!17340 (and lt!7323 (not lt!7317)))))

(assert (=> b!36762 (= lt!7317 e!18826)))

(declare-fun c!8031 () Bool)

(assert (=> b!36762 (= c!8031 (or lt!7323 (is-Not!7 out!56)))))

(assert (=> b!36762 (= lt!7323 (is-Or!7 out!56))))

(declare-fun b!36763 () Bool)

(assert (=> b!36763 (= e!18844 e!18836)))

(declare-fun res!17343 () Bool)

(assert (=> b!36763 (=> res!17343 e!18836)))

(assert (=> b!36763 (= res!17343 (and lt!7325 (not lt!7319)))))

(assert (=> b!36763 (= lt!7319 e!18830)))

(declare-fun c!8035 () Bool)

(assert (=> b!36763 (= c!8035 (or lt!7325 (is-Not!7 out!56)))))

(assert (=> b!36763 (= lt!7325 (is-Or!7 out!56))))

(declare-fun b!36764 () Bool)

(assert (=> b!36764 (= e!18839 (not e!18843))))

(declare-fun c!8033 () Bool)

(assert (=> b!36764 (= c!8033 (or lt!7322 (is-Not!7 out!56)))))

(assert (= (and d!18564 (not res!17344)) b!36758))

(assert (= (and b!36758 c!8037) b!36750))

(assert (= (and b!36758 (not c!8037)) b!36754))

(assert (= (and b!36758 (not res!17351)) b!36756))

(assert (= (and b!36756 res!17335) b!36763))

(assert (= (and b!36763 c!8035) b!36748))

(assert (= (and b!36763 (not c!8035)) b!36749))

(assert (= (and b!36763 (not res!17343)) b!36732))

(assert (= (and b!36732 res!17347) b!36743))

(assert (= (and b!36743 res!17333) b!36730))

(assert (= (and b!36730 c!8028) b!36734))

(assert (= (and b!36730 (not c!8028)) b!36755))

(assert (= (and b!36759 res!17349) b!36742))

(assert (= (and b!36742 c!8038) b!36753))

(assert (= (and b!36742 (not c!8038)) b!36731))

(assert (= (and b!36759 c!8032) b!36737))

(assert (= (and b!36759 (not c!8032)) b!36757))

(assert (= (and b!36744 c!8036) b!36752))

(assert (= (and b!36744 (not c!8036)) b!36759))

(assert (= (and b!36758 c!8026) b!36744))

(assert (= (and b!36758 (not c!8026)) b!36738))

(assert (= (and b!36762 c!8031) b!36740))

(assert (= (and b!36762 (not c!8031)) b!36746))

(assert (= (and b!36762 (not res!17340)) b!36747))

(assert (= (and b!36747 res!17345) b!36733))

(assert (= (and b!36733 res!17350) b!36764))

(assert (= (and b!36764 c!8033) b!36741))

(assert (= (and b!36764 (not c!8033)) b!36751))

(assert (= (and b!36762 c!8034) b!36745))

(assert (= (and b!36762 (not c!8034)) b!36735))

(assert (= (and b!36739 c!8027) b!36736))

(assert (= (and b!36739 (not c!8027)) b!36760))

(assert (= (and b!36762 c!8030) b!36761))

(assert (= (and b!36762 (not c!8030)) b!36739))

(assert (= (and b!36758 c!8029) b!36729))

(assert (= (and b!36758 (not c!8029)) b!36762))

(declare-fun m!38275 () Bool)

(assert (=> b!36744 m!38275))

(declare-fun m!38277 () Bool)

(assert (=> b!36750 m!38277))

(assert (=> b!36502 d!18564))

(declare-fun b_lambda!9613 () Bool)

(assert (= b_lambda!9611 (or b!36503 b_lambda!9613)))

(declare-fun bs!11338 () Bool)

(declare-fun d!18566 () Bool)

(assert (= bs!11338 (and d!18566 b!36503)))

(assert (=> bs!11338 (= (dynLambda!648 lambda!4208 out!56) (is-Implies!7 out!56))))

(assert (=> d!18562 d!18566))

(push 1)

(assert (not b!36539))

(assert (not b!36541))

(assert (not b!36750))

(assert (not b!36744))

(assert (not b_lambda!9613))

(assert (not b!36646))

(assert (not b!36537))

(assert (not d!18560))

(assert (not b!36640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

