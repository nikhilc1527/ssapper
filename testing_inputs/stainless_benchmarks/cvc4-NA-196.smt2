; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1440 () Bool)

(assert start!1440)

(declare-fun b!7563 () Bool)

(declare-fun b_free!547 () Bool)

(declare-fun b_next!1157 () Bool)

(assert (=> b!7563 (= b_free!547 (not b_next!1157))))

(declare-fun tp!949 () Bool)

(declare-fun b_and!2327 () Bool)

(assert (=> b!7563 (= tp!949 b_and!2327)))

(declare-fun b_free!549 () Bool)

(declare-fun b_next!1159 () Bool)

(assert (=> b!7563 (= b_free!549 (not b_next!1159))))

(declare-fun tp!947 () Bool)

(declare-fun b_and!2329 () Bool)

(assert (=> b!7563 (= tp!947 b_and!2329)))

(declare-fun b_free!551 () Bool)

(declare-fun b_next!1161 () Bool)

(assert (=> start!1440 (= b_free!551 (not b_next!1161))))

(declare-fun tp!948 () Bool)

(declare-fun b_and!2331 () Bool)

(assert (=> start!1440 (= tp!948 b_and!2331)))

(declare-fun b!7567 () Bool)

(assert (=> b!7567 true))

(declare-datatypes () ((Balance!111 (Balance!112 (extraOpen!96 Int) (extraClose!96 Int)))))

(declare-datatypes () ((EqProof!44 (EqProof!45 (x!4128 Int) (y!475 Int)))))

(declare-fun thiss!1148 () EqProof!44)

(declare-fun lambda!1452 () Int)

(declare-fun b_next!1163 () Bool)

(assert (=> b!7563 (= b_next!1157 (or (and b!7567 (= lambda!1452 (x!4128 thiss!1148))) b_next!1163))))

(declare-fun b_next!1165 () Bool)

(assert (=> b!7563 (= b_next!1159 (or (and b!7567 (= lambda!1452 (y!475 thiss!1148))) b_next!1165))))

(declare-fun b!7564 () Bool)

(declare-fun m!10413 () Bool)

(assert (=> b!7564 m!10413))

(declare-fun lambda!1453 () Int)

(declare-fun proof!287 () Int)

(declare-fun dynLambda!163 (Int) Bool)

(assert (=> (and start!1440 b!7564 (= (dynLambda!163 lambda!1453) (dynLambda!163 proof!287))) (= lambda!1453 proof!287)))

(declare-fun b_next!1167 () Bool)

(assert (=> start!1440 (= b_next!1161 (or (and b!7564 (= lambda!1453 proof!287)) b_next!1167))))

(declare-fun b!7562 () Bool)

(declare-fun res!2211 () Bool)

(declare-fun e!4355 () Bool)

(assert (=> b!7562 (=> (not res!2211) (not e!4355))))

(declare-fun lambda!1450 () Int)

(declare-datatypes () ((Parenthesis!44 (CloseParenthesis!43) (OpenParenthesis!43))))

(declare-datatypes () ((List!171 (Nil!169) (Cons!168 (head!386 Parenthesis!44) (tail!398 List!171)))))

(declare-fun xs!372 () List!171)

(declare-fun lambda!1451 () Int)

(declare-datatypes () ((ProofOps!74 (ProofOps!75 (prop!147 Bool)))))

(declare-fun thiss!1106 () ProofOps!74)

(declare-datatypes () ((List!172 (Nil!170) (Cons!169 (head!387 Balance!111) (tail!399 List!172)))))

(declare-fun foldRight1!33 (List!172 Int) Balance!111)

(declare-fun append!66 (List!172 List!172) List!172)

(declare-fun map!154 (List!171 Int) List!172)

(assert (=> b!7562 (= res!2211 (= thiss!1106 (ProofOps!75 (= (foldRight1!33 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170)) lambda!1451) (foldRight1!33 (map!154 xs!372 lambda!1450) lambda!1451)))))))

(declare-fun e!4354 () Bool)

(assert (=> b!7563 (= e!4354 (and tp!949 tp!947))))

(declare-fun res!2214 () Bool)

(assert (=> start!1440 (=> (not res!2214) (not e!4355))))

(declare-fun isEmpty!145 (List!171) Bool)

(assert (=> start!1440 (= res!2214 (not (isEmpty!145 xs!372)))))

(assert (=> start!1440 e!4355))

(assert (=> start!1440 true))

(declare-fun inv!270 (EqProof!44) Bool)

(assert (=> start!1440 (and (inv!270 thiss!1148) e!4354)))

(assert (=> start!1440 tp!948))

(declare-fun res!2212 () Bool)

(assert (=> b!7564 (=> (not res!2212) (not e!4355))))

(assert (=> b!7564 (= res!2212 (= proof!287 lambda!1453))))

(declare-fun b!7565 () Bool)

(declare-fun res!2215 () Bool)

(assert (=> b!7565 (=> (not res!2215) (not e!4355))))

(assert (=> b!7565 (= res!2215 (or (not (is-Cons!168 xs!372)) (not (is-Nil!169 (tail!398 xs!372)))))))

(declare-fun b!7566 () Bool)

(assert (=> b!7566 (= e!4355 (not (dynLambda!163 proof!287)))))

(declare-fun res!2213 () Bool)

(assert (=> b!7567 (=> (not res!2213) (not e!4355))))

(assert (=> b!7567 (= res!2213 (= thiss!1148 (EqProof!45 lambda!1452 lambda!1452)))))

(assert (= (and start!1440 res!2214) b!7562))

(assert (= (and b!7562 res!2211) b!7565))

(assert (= (and b!7565 res!2215) b!7567))

(assert (= (and b!7567 res!2213) b!7564))

(assert (= (and b!7564 res!2212) b!7566))

(assert (= start!1440 b!7563))

(declare-fun b_lambda!3703 () Bool)

(assert (=> (not b_lambda!3703) (not b!7566)))

(declare-fun t!1605 () Bool)

(declare-fun tb!1265 () Bool)

(assert (=> (and start!1440 (= proof!287 proof!287) t!1605) tb!1265))

(declare-fun result!1305 () Bool)

(assert (=> tb!1265 (= result!1305 true)))

(assert (=> b!7566 t!1605))

(declare-fun b_and!2333 () Bool)

(assert (= b_and!2331 (and (=> t!1605 result!1305) b_and!2333)))

(declare-fun m!10415 () Bool)

(assert (=> b!7562 m!10415))

(declare-fun m!10417 () Bool)

(assert (=> b!7562 m!10417))

(declare-fun m!10419 () Bool)

(assert (=> b!7562 m!10419))

(assert (=> b!7562 m!10415))

(assert (=> b!7562 m!10415))

(assert (=> b!7562 m!10417))

(assert (=> b!7562 m!10415))

(declare-fun m!10421 () Bool)

(assert (=> b!7562 m!10421))

(declare-fun m!10423 () Bool)

(assert (=> start!1440 m!10423))

(declare-fun m!10425 () Bool)

(assert (=> start!1440 m!10425))

(declare-fun m!10427 () Bool)

(assert (=> b!7566 m!10427))

(push 1)

(assert (not b_next!1163))

(assert (not b!7564))

(assert b_and!2329)

(assert (not b_next!1167))

(assert (not b_next!1165))

(assert (not start!1440))

(assert b_and!2333)

(assert b_and!2327)

(assert (not b_lambda!3703))

(assert (not b!7562))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1163))

(assert b_and!2329)

(assert (not b_next!1167))

(assert (not b_next!1165))

(assert b_and!2333)

(assert b_and!2327)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!3705 () Bool)

(assert (= b_lambda!3703 (or (and b!7564 (= lambda!1453 proof!287)) (and start!1440 b_free!551) b_lambda!3705)))

(declare-fun bs!1733 () Bool)

(declare-fun d!5977 () Bool)

(assert (= bs!1733 (and d!5977 b!7564)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!1733 (= (dynLambda!163 lambda!1453) trivial!1)))

(assert (=> (and b!7564 (= lambda!1453 proof!287) b!7566) d!5977))

(push 1)

(assert (not b_next!1163))

(assert (not b!7564))

(assert b_and!2329)

(assert (not b_next!1167))

(assert (not b_next!1165))

(assert (not start!1440))

(assert (not b_lambda!3705))

(assert b_and!2333)

(assert b_and!2327)

(assert (not b!7562))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1163))

(assert b_and!2329)

(assert (not b_next!1167))

(assert (not b_next!1165))

(assert b_and!2333)

(assert b_and!2327)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5979 () Bool)

(declare-fun c!2651 () Bool)

(assert (=> d!5979 (= c!2651 (and (is-Cons!169 (map!154 xs!372 lambda!1450)) (is-Nil!170 (tail!399 (map!154 xs!372 lambda!1450)))))))

(declare-fun e!4358 () Balance!111)

(assert (=> d!5979 (= (foldRight1!33 (map!154 xs!372 lambda!1450) lambda!1451) e!4358)))

(declare-fun b!7574 () Bool)

(assert (=> b!7574 (= e!4358 (head!387 (map!154 xs!372 lambda!1450)))))

(declare-fun b!7575 () Bool)

(declare-fun dynLambda!164 (Int Balance!111 Balance!111) Balance!111)

(assert (=> b!7575 (= e!4358 (dynLambda!164 lambda!1451 (head!387 (map!154 xs!372 lambda!1450)) (foldRight1!33 (tail!399 (map!154 xs!372 lambda!1450)) lambda!1451)))))

(assert (= (and d!5979 c!2651) b!7574))

(assert (= (and d!5979 (not c!2651)) b!7575))

(declare-fun b_lambda!3707 () Bool)

(assert (=> (not b_lambda!3707) (not b!7575)))

(declare-fun m!10429 () Bool)

(assert (=> b!7575 m!10429))

(assert (=> b!7575 m!10429))

(declare-fun m!10431 () Bool)

(assert (=> b!7575 m!10431))

(assert (=> b!7562 d!5979))

(declare-fun d!5981 () Bool)

(declare-fun c!2654 () Bool)

(assert (=> d!5981 (= c!2654 (is-Nil!169 xs!372))))

(declare-fun e!4361 () List!172)

(assert (=> d!5981 (= (map!154 xs!372 lambda!1450) e!4361)))

(declare-fun b!7580 () Bool)

(assert (=> b!7580 (= e!4361 Nil!170)))

(declare-fun b!7581 () Bool)

(declare-fun dynLambda!165 (Int Parenthesis!44) Balance!111)

(assert (=> b!7581 (= e!4361 (Cons!169 (dynLambda!165 lambda!1450 (head!386 xs!372)) (map!154 (tail!398 xs!372) lambda!1450)))))

(assert (= (and d!5981 c!2654) b!7580))

(assert (= (and d!5981 (not c!2654)) b!7581))

(declare-fun b_lambda!3709 () Bool)

(assert (=> (not b_lambda!3709) (not b!7581)))

(declare-fun m!10433 () Bool)

(assert (=> b!7581 m!10433))

(declare-fun m!10435 () Bool)

(assert (=> b!7581 m!10435))

(assert (=> b!7562 d!5981))

(declare-fun d!5983 () Bool)

(declare-fun c!2655 () Bool)

(assert (=> d!5983 (= c!2655 (and (is-Cons!169 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) (is-Nil!170 (tail!399 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))))))))

(declare-fun e!4362 () Balance!111)

(assert (=> d!5983 (= (foldRight1!33 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170)) lambda!1451) e!4362)))

(declare-fun b!7582 () Bool)

(assert (=> b!7582 (= e!4362 (head!387 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))))))

(declare-fun b!7583 () Bool)

(assert (=> b!7583 (= e!4362 (dynLambda!164 lambda!1451 (head!387 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) (foldRight1!33 (tail!399 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) lambda!1451)))))

(assert (= (and d!5983 c!2655) b!7582))

(assert (= (and d!5983 (not c!2655)) b!7583))

(declare-fun b_lambda!3711 () Bool)

(assert (=> (not b_lambda!3711) (not b!7583)))

(declare-fun m!10437 () Bool)

(assert (=> b!7583 m!10437))

(assert (=> b!7583 m!10437))

(declare-fun m!10439 () Bool)

(assert (=> b!7583 m!10439))

(assert (=> b!7562 d!5983))

(declare-fun d!5985 () Bool)

(declare-fun c!2658 () Bool)

(assert (=> d!5985 (= c!2658 (is-Nil!170 (map!154 xs!372 lambda!1450)))))

(declare-fun e!4365 () List!172)

(assert (=> d!5985 (= (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170)) e!4365)))

(declare-fun b!7588 () Bool)

(assert (=> b!7588 (= e!4365 (Cons!169 (Balance!112 0 0) Nil!170))))

(declare-fun b!7589 () Bool)

(assert (=> b!7589 (= e!4365 (Cons!169 (head!387 (map!154 xs!372 lambda!1450)) (append!66 (tail!399 (map!154 xs!372 lambda!1450)) (Cons!169 (Balance!112 0 0) Nil!170))))))

(assert (= (and d!5985 c!2658) b!7588))

(assert (= (and d!5985 (not c!2658)) b!7589))

(declare-fun m!10441 () Bool)

(assert (=> b!7589 m!10441))

(assert (=> b!7562 d!5985))

(declare-fun d!5987 () Bool)

(assert (=> d!5987 (= trivial!1 true)))

(assert (=> b!7564 d!5987))

(declare-fun d!5989 () Bool)

(assert (=> d!5989 (= (isEmpty!145 xs!372) (is-Nil!169 xs!372))))

(assert (=> start!1440 d!5989))

(declare-fun d!5991 () Bool)

(declare-fun dynLambda!166 (Int) Balance!111)

(assert (=> d!5991 (= (inv!270 thiss!1148) (= (dynLambda!166 (x!4128 thiss!1148)) (dynLambda!166 (y!475 thiss!1148))))))

(declare-fun b_lambda!3713 () Bool)

(assert (=> (not b_lambda!3713) (not d!5991)))

(declare-fun t!1607 () Bool)

(declare-fun tb!1267 () Bool)

(assert (=> (and b!7563 (= (x!4128 thiss!1148) (x!4128 thiss!1148)) t!1607) tb!1267))

(declare-fun result!1307 () Bool)

(assert (=> tb!1267 (= result!1307 true)))

(assert (=> d!5991 t!1607))

(declare-fun b_and!2335 () Bool)

(assert (= b_and!2327 (and (=> t!1607 result!1307) b_and!2335)))

(declare-fun t!1609 () Bool)

(declare-fun tb!1269 () Bool)

(assert (=> (and b!7563 (= (y!475 thiss!1148) (x!4128 thiss!1148)) t!1609) tb!1269))

(declare-fun result!1309 () Bool)

(assert (=> tb!1269 (= result!1309 true)))

(assert (=> d!5991 t!1609))

(declare-fun b_and!2337 () Bool)

(assert (= b_and!2329 (and (=> t!1609 result!1309) b_and!2337)))

(declare-fun b_lambda!3715 () Bool)

(assert (=> (not b_lambda!3715) (not d!5991)))

(declare-fun t!1611 () Bool)

(declare-fun tb!1271 () Bool)

(assert (=> (and b!7563 (= (x!4128 thiss!1148) (y!475 thiss!1148)) t!1611) tb!1271))

(declare-fun result!1311 () Bool)

(assert (=> tb!1271 (= result!1311 true)))

(assert (=> d!5991 t!1611))

(declare-fun b_and!2339 () Bool)

(assert (= b_and!2335 (and (=> t!1611 result!1311) b_and!2339)))

(declare-fun t!1613 () Bool)

(declare-fun tb!1273 () Bool)

(assert (=> (and b!7563 (= (y!475 thiss!1148) (y!475 thiss!1148)) t!1613) tb!1273))

(declare-fun result!1313 () Bool)

(assert (=> tb!1273 (= result!1313 true)))

(assert (=> d!5991 t!1613))

(declare-fun b_and!2341 () Bool)

(assert (= b_and!2337 (and (=> t!1613 result!1313) b_and!2341)))

(declare-fun m!10443 () Bool)

(assert (=> d!5991 m!10443))

(declare-fun m!10445 () Bool)

(assert (=> d!5991 m!10445))

(assert (=> start!1440 d!5991))

(declare-fun b_lambda!3717 () Bool)

(assert (= b_lambda!3709 (or b!7562 b_lambda!3717)))

(declare-fun bs!1734 () Bool)

(declare-fun d!5993 () Bool)

(assert (= bs!1734 (and d!5993 b!7562)))

(declare-fun fromParenthesis!0 (Parenthesis!44) Balance!111)

(assert (=> bs!1734 (= (dynLambda!165 lambda!1450 (head!386 xs!372)) (fromParenthesis!0 (head!386 xs!372)))))

(declare-fun m!10447 () Bool)

(assert (=> bs!1734 m!10447))

(assert (=> b!7581 d!5993))

(declare-fun b_lambda!3719 () Bool)

(assert (= b_lambda!3707 (or b!7562 b_lambda!3719)))

(declare-fun bs!1735 () Bool)

(declare-fun d!5995 () Bool)

(assert (= bs!1735 (and d!5995 b!7562)))

(declare-fun ++!3 (Balance!111 Balance!111) Balance!111)

(assert (=> bs!1735 (= (dynLambda!164 lambda!1451 (head!387 (map!154 xs!372 lambda!1450)) (foldRight1!33 (tail!399 (map!154 xs!372 lambda!1450)) lambda!1451)) (++!3 (head!387 (map!154 xs!372 lambda!1450)) (foldRight1!33 (tail!399 (map!154 xs!372 lambda!1450)) lambda!1451)))))

(assert (=> bs!1735 m!10429))

(declare-fun m!10449 () Bool)

(assert (=> bs!1735 m!10449))

(assert (=> b!7575 d!5995))

(declare-fun b_lambda!3721 () Bool)

(assert (= b_lambda!3715 (or (and b!7567 (= lambda!1452 (y!475 thiss!1148))) (and b!7563 b_free!547 (= (x!4128 thiss!1148) (y!475 thiss!1148))) (and b!7563 b_free!549) b_lambda!3721)))

(declare-fun bs!1736 () Bool)

(declare-fun d!5997 () Bool)

(assert (= bs!1736 (and d!5997 b!7567)))

(assert (=> bs!1736 (= (dynLambda!166 lambda!1452) (foldRight1!33 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170)) lambda!1451))))

(assert (=> bs!1736 m!10415))

(assert (=> bs!1736 m!10415))

(assert (=> bs!1736 m!10417))

(assert (=> bs!1736 m!10417))

(assert (=> bs!1736 m!10419))

(assert (=> (and b!7567 (= lambda!1452 (y!475 thiss!1148)) d!5991) d!5997))

(declare-fun b_lambda!3723 () Bool)

(assert (= b_lambda!3713 (or (and b!7567 (= lambda!1452 (x!4128 thiss!1148))) (and b!7563 b_free!547) (and b!7563 b_free!549 (= (y!475 thiss!1148) (x!4128 thiss!1148))) b_lambda!3723)))

(declare-fun bs!1737 () Bool)

(declare-fun d!5999 () Bool)

(assert (= bs!1737 (and d!5999 b!7567)))

(assert (=> bs!1737 (= (dynLambda!166 lambda!1452) (foldRight1!33 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170)) lambda!1451))))

(assert (=> bs!1737 m!10415))

(assert (=> bs!1737 m!10415))

(assert (=> bs!1737 m!10417))

(assert (=> bs!1737 m!10417))

(assert (=> bs!1737 m!10419))

(assert (=> (and b!7567 (= lambda!1452 (x!4128 thiss!1148)) d!5991) d!5999))

(declare-fun b_lambda!3725 () Bool)

(assert (= b_lambda!3711 (or b!7562 b_lambda!3725)))

(declare-fun bs!1738 () Bool)

(declare-fun d!6001 () Bool)

(assert (= bs!1738 (and d!6001 b!7562)))

(assert (=> bs!1738 (= (dynLambda!164 lambda!1451 (head!387 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) (foldRight1!33 (tail!399 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) lambda!1451)) (++!3 (head!387 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) (foldRight1!33 (tail!399 (append!66 (map!154 xs!372 lambda!1450) (Cons!169 (Balance!112 0 0) Nil!170))) lambda!1451)))))

(assert (=> bs!1738 m!10437))

(declare-fun m!10451 () Bool)

(assert (=> bs!1738 m!10451))

(assert (=> b!7583 d!6001))

(push 1)

(assert (not b_next!1163))

(assert (not b!7583))

(assert (not b!7581))

(assert (not bs!1737))

(assert (not b_lambda!3719))

(assert b_and!2341)

(assert (not bs!1735))

(assert (not b!7575))

(assert (not b_lambda!3717))

(assert (not b_lambda!3725))

(assert b_and!2339)

(assert (not bs!1736))

(assert (not b_next!1167))

(assert (not bs!1738))

(assert (not b_next!1165))

(assert (not b_lambda!3721))

(assert (not b_lambda!3705))

(assert (not b_lambda!3723))

(assert (not b!7589))

(assert b_and!2333)

(assert (not bs!1734))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1163))

(assert b_and!2341)

(assert b_and!2339)

(assert (not b_next!1167))

(assert (not b_next!1165))

(assert b_and!2333)

(check-sat)

(pop 1)

