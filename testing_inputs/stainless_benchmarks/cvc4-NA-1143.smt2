; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8268 () Bool)

(assert start!8268)

(declare-fun b!58442 () Bool)

(declare-fun e!31103 () Bool)

(declare-fun e!31104 () Bool)

(assert (=> b!58442 (= e!31103 e!31104)))

(declare-fun res!27052 () Bool)

(assert (=> b!58442 (=> res!27052 e!31104)))

(declare-fun res!26931 () Bool)

(assert (=> b!58442 (= res!27052 (not res!26931))))

(declare-fun b!58443 () Bool)

(declare-datatypes () ((List!481 (Cons!456 (h!695 Int) (t!47136 List!481)) (Nil!457))))

(declare-fun zs!8 () List!481)

(declare-fun xxs!1 () List!481)

(declare-datatypes () ((Monoid!20 (ListMonoid!12) (MonoidExt!12 (__x!244 Int)))))

(declare-fun thiss!8573 () Monoid!20)

(declare-fun ys!180 () List!481)

(declare-fun append!10 (Monoid!20 List!481 List!481) List!481)

(assert (=> b!58443 (= e!31104 (not (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))))))

(declare-fun b!58440 () Bool)

(declare-fun res!27053 () Bool)

(assert (=> b!58440 (=> (not res!27053) (not e!31103))))

(declare-fun e!31102 () Bool)

(declare-datatypes () ((ProofOps!332 (ProofOps!333 (prop!389 Bool)))))

(declare-fun because!1 (ProofOps!332 Bool) Bool)

(assert (=> b!58440 (= res!27053 (= res!26931 (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))) e!31102)))))

(declare-fun res!27051 () Bool)

(assert (=> b!58440 (=> res!27051 e!31102)))

(assert (=> b!58440 (= res!27051 (is-Nil!457 xxs!1))))

(declare-fun b!58441 () Bool)

(declare-fun law_associativity!5 (Monoid!20 List!481 List!481 List!481) Bool)

(assert (=> b!58441 (= e!31102 (law_associativity!5 thiss!8573 (t!47136 xxs!1) ys!180 zs!8))))

(declare-fun res!27050 () Bool)

(assert (=> start!8268 (=> (not res!27050) (not e!31103))))

(assert (=> start!8268 (= res!27050 (is-ListMonoid!12 thiss!8573))))

(assert (=> start!8268 e!31103))

(assert (=> start!8268 true))

(assert (= (and start!8268 res!27050) b!58440))

(assert (= (and b!58440 (not res!27051)) b!58441))

(assert (= (and b!58440 res!27053) b!58442))

(assert (= (and b!58442 (not res!27052)) b!58443))

(declare-fun m!62940 () Bool)

(assert (=> b!58443 m!62940))

(assert (=> b!58443 m!62940))

(declare-fun m!62942 () Bool)

(assert (=> b!58443 m!62942))

(declare-fun m!62944 () Bool)

(assert (=> b!58443 m!62944))

(assert (=> b!58443 m!62944))

(declare-fun m!62946 () Bool)

(assert (=> b!58443 m!62946))

(assert (=> b!58440 m!62944))

(assert (=> b!58440 m!62944))

(assert (=> b!58440 m!62946))

(assert (=> b!58440 m!62940))

(assert (=> b!58440 m!62942))

(assert (=> b!58440 m!62940))

(declare-fun m!62948 () Bool)

(assert (=> b!58440 m!62948))

(declare-fun m!62950 () Bool)

(assert (=> b!58441 m!62950))

(push 1)

(assert (not b!58441))

(assert (not b!58443))

(assert (not b!58440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50574 () Bool)

(declare-fun e!31109 () Bool)

(assert (=> d!50574 e!31109))

(declare-fun res!27060 () Bool)

(assert (=> d!50574 (=> (not res!27060) (not e!31109))))

(declare-fun lt!10693 () Bool)

(assert (=> d!50574 (= res!27060 lt!10693)))

(declare-fun e!31110 () Bool)

(assert (=> d!50574 (= lt!10693 (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) (append!10 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)))) e!31110))))

(declare-fun res!27059 () Bool)

(assert (=> d!50574 (=> res!27059 e!31110)))

(assert (=> d!50574 (= res!27059 (is-Nil!457 (t!47136 xxs!1)))))

(assert (=> d!50574 (= (law_associativity!5 thiss!8573 (t!47136 xxs!1) ys!180 zs!8) lt!10693)))

(declare-fun b!58448 () Bool)

(assert (=> b!58448 (= e!31110 (law_associativity!5 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180 zs!8))))

(declare-fun b!58449 () Bool)

(assert (=> b!58449 (= e!31109 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) (append!10 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8))))))

(assert (= (and d!50574 (not res!27059)) b!58448))

(assert (= (and d!50574 res!27060) b!58449))

(declare-fun m!62952 () Bool)

(assert (=> d!50574 m!62952))

(declare-fun m!62954 () Bool)

(assert (=> d!50574 m!62954))

(assert (=> d!50574 m!62944))

(assert (=> d!50574 m!62952))

(declare-fun m!62956 () Bool)

(assert (=> d!50574 m!62956))

(assert (=> d!50574 m!62944))

(declare-fun m!62958 () Bool)

(assert (=> d!50574 m!62958))

(declare-fun m!62960 () Bool)

(assert (=> b!58448 m!62960))

(assert (=> b!58449 m!62952))

(assert (=> b!58449 m!62952))

(assert (=> b!58449 m!62956))

(assert (=> b!58449 m!62944))

(assert (=> b!58449 m!62944))

(assert (=> b!58449 m!62958))

(assert (=> b!58441 d!50574))

(declare-fun d!50576 () Bool)

(declare-fun c!12517 () Bool)

(assert (=> d!50576 (= c!12517 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31113 () List!481)

(assert (=> d!50576 (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) e!31113)))

(declare-fun b!58454 () Bool)

(declare-fun append!11 (Monoid!20 List!481 List!481) List!481)

(assert (=> b!58454 (= e!31113 (append!11 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8))))

(declare-fun b!58455 () Bool)

(declare-fun append!161 (Monoid!20 List!481 List!481) List!481)

(assert (=> b!58455 (= e!31113 (append!161 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8))))

(assert (= (and d!50576 c!12517) b!58454))

(assert (= (and d!50576 (not c!12517)) b!58455))

(assert (=> b!58454 m!62940))

(declare-fun m!62962 () Bool)

(assert (=> b!58454 m!62962))

(assert (=> b!58455 m!62940))

(declare-fun m!62964 () Bool)

(assert (=> b!58455 m!62964))

(assert (=> b!58443 d!50576))

(declare-fun d!50578 () Bool)

(declare-fun c!12518 () Bool)

(assert (=> d!50578 (= c!12518 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31114 () List!481)

(assert (=> d!50578 (= (append!10 thiss!8573 xxs!1 ys!180) e!31114)))

(declare-fun b!58456 () Bool)

(assert (=> b!58456 (= e!31114 (append!11 thiss!8573 xxs!1 ys!180))))

(declare-fun b!58457 () Bool)

(assert (=> b!58457 (= e!31114 (append!161 thiss!8573 xxs!1 ys!180))))

(assert (= (and d!50578 c!12518) b!58456))

(assert (= (and d!50578 (not c!12518)) b!58457))

(declare-fun m!62966 () Bool)

(assert (=> b!58456 m!62966))

(declare-fun m!62968 () Bool)

(assert (=> b!58457 m!62968))

(assert (=> b!58443 d!50578))

(declare-fun d!50580 () Bool)

(declare-fun c!12519 () Bool)

(assert (=> d!50580 (= c!12519 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31115 () List!481)

(assert (=> d!50580 (= (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)) e!31115)))

(declare-fun b!58458 () Bool)

(assert (=> b!58458 (= e!31115 (append!11 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))))

(declare-fun b!58459 () Bool)

(assert (=> b!58459 (= e!31115 (append!161 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))))

(assert (= (and d!50580 c!12519) b!58458))

(assert (= (and d!50580 (not c!12519)) b!58459))

(assert (=> b!58458 m!62944))

(declare-fun m!62970 () Bool)

(assert (=> b!58458 m!62970))

(assert (=> b!58459 m!62944))

(declare-fun m!62972 () Bool)

(assert (=> b!58459 m!62972))

(assert (=> b!58443 d!50580))

(declare-fun d!50582 () Bool)

(declare-fun c!12520 () Bool)

(assert (=> d!50582 (= c!12520 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31116 () List!481)

(assert (=> d!50582 (= (append!10 thiss!8573 ys!180 zs!8) e!31116)))

(declare-fun b!58460 () Bool)

(assert (=> b!58460 (= e!31116 (append!11 thiss!8573 ys!180 zs!8))))

(declare-fun b!58461 () Bool)

(assert (=> b!58461 (= e!31116 (append!161 thiss!8573 ys!180 zs!8))))

(assert (= (and d!50582 c!12520) b!58460))

(assert (= (and d!50582 (not c!12520)) b!58461))

(declare-fun m!62974 () Bool)

(assert (=> b!58460 m!62974))

(declare-fun m!62976 () Bool)

(assert (=> b!58461 m!62976))

(assert (=> b!58443 d!50582))

(assert (=> b!58440 d!50582))

(declare-fun d!50584 () Bool)

(assert (=> d!50584 (= (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))) e!31102) (and e!31102 (prop!389 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (append!10 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))))))))

(assert (=> b!58440 d!50584))

(assert (=> b!58440 d!50576))

(assert (=> b!58440 d!50578))

(assert (=> b!58440 d!50580))

(push 1)

(assert (not b!58456))

(assert (not b!58449))

(assert (not b!58448))

(assert (not b!58461))

(assert (not b!58458))

(assert (not b!58459))

(assert (not b!58457))

(assert (not b!58454))

(assert (not d!50574))

(assert (not b!58460))

(assert (not b!58455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50586 () Bool)

(assert (=> d!50586 true))

(assert (=> d!50586 true))

(declare-fun res!27063 () List!481)

(assert (=> d!50586 (= (append!161 thiss!8573 xxs!1 ys!180) res!27063)))

(assert (=> b!58457 d!50586))

(assert (=> d!50574 d!50582))

(declare-fun d!50588 () Bool)

(declare-fun c!12521 () Bool)

(assert (=> d!50588 (= c!12521 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31117 () List!481)

(assert (=> d!50588 (= (append!10 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)) e!31117)))

(declare-fun b!58462 () Bool)

(assert (=> b!58462 (= e!31117 (append!11 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)))))

(declare-fun b!58463 () Bool)

(assert (=> b!58463 (= e!31117 (append!161 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)))))

(assert (= (and d!50588 c!12521) b!58462))

(assert (= (and d!50588 (not c!12521)) b!58463))

(assert (=> b!58462 m!62944))

(declare-fun m!62978 () Bool)

(assert (=> b!58462 m!62978))

(assert (=> b!58463 m!62944))

(declare-fun m!62980 () Bool)

(assert (=> b!58463 m!62980))

(assert (=> d!50574 d!50588))

(declare-fun d!50590 () Bool)

(assert (=> d!50590 (= (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) (append!10 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)))) e!31110) (and e!31110 (prop!389 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) (append!10 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)))))))))

(assert (=> d!50574 d!50590))

(declare-fun d!50592 () Bool)

(declare-fun c!12522 () Bool)

(assert (=> d!50592 (= c!12522 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31118 () List!481)

(assert (=> d!50592 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) e!31118)))

(declare-fun b!58464 () Bool)

(assert (=> b!58464 (= e!31118 (append!11 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8))))

(declare-fun b!58465 () Bool)

(assert (=> b!58465 (= e!31118 (append!161 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8))))

(assert (= (and d!50592 c!12522) b!58464))

(assert (= (and d!50592 (not c!12522)) b!58465))

(assert (=> b!58464 m!62952))

(declare-fun m!62982 () Bool)

(assert (=> b!58464 m!62982))

(assert (=> b!58465 m!62952))

(declare-fun m!62984 () Bool)

(assert (=> b!58465 m!62984))

(assert (=> d!50574 d!50592))

(declare-fun d!50594 () Bool)

(declare-fun c!12523 () Bool)

(assert (=> d!50594 (= c!12523 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31119 () List!481)

(assert (=> d!50594 (= (append!10 thiss!8573 (t!47136 xxs!1) ys!180) e!31119)))

(declare-fun b!58466 () Bool)

(assert (=> b!58466 (= e!31119 (append!11 thiss!8573 (t!47136 xxs!1) ys!180))))

(declare-fun b!58467 () Bool)

(assert (=> b!58467 (= e!31119 (append!161 thiss!8573 (t!47136 xxs!1) ys!180))))

(assert (= (and d!50594 c!12523) b!58466))

(assert (= (and d!50594 (not c!12523)) b!58467))

(declare-fun m!62986 () Bool)

(assert (=> b!58466 m!62986))

(declare-fun m!62988 () Bool)

(assert (=> b!58467 m!62988))

(assert (=> d!50574 d!50594))

(declare-fun d!50596 () Bool)

(assert (=> d!50596 true))

(assert (=> d!50596 true))

(declare-fun res!27064 () List!481)

(assert (=> d!50596 (= (append!161 thiss!8573 ys!180 zs!8) res!27064)))

(assert (=> b!58461 d!50596))

(declare-fun d!50598 () Bool)

(declare-fun e!31120 () Bool)

(assert (=> d!50598 e!31120))

(declare-fun res!27066 () Bool)

(assert (=> d!50598 (=> (not res!27066) (not e!31120))))

(declare-fun lt!10694 () Bool)

(assert (=> d!50598 (= res!27066 lt!10694)))

(declare-fun e!31121 () Bool)

(assert (=> d!50598 (= lt!10694 (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8) (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8)))) e!31121))))

(declare-fun res!27065 () Bool)

(assert (=> d!50598 (=> res!27065 e!31121)))

(assert (=> d!50598 (= res!27065 (is-Nil!457 (t!47136 (t!47136 xxs!1))))))

(assert (=> d!50598 (= (law_associativity!5 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180 zs!8) lt!10694)))

(declare-fun b!58468 () Bool)

(assert (=> b!58468 (= e!31121 (law_associativity!5 thiss!8573 (t!47136 (t!47136 (t!47136 xxs!1))) ys!180 zs!8))))

(declare-fun b!58469 () Bool)

(assert (=> b!58469 (= e!31120 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8) (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8))))))

(assert (= (and d!50598 (not res!27065)) b!58468))

(assert (= (and d!50598 res!27066) b!58469))

(declare-fun m!62990 () Bool)

(assert (=> d!50598 m!62990))

(declare-fun m!62992 () Bool)

(assert (=> d!50598 m!62992))

(assert (=> d!50598 m!62944))

(assert (=> d!50598 m!62990))

(declare-fun m!62994 () Bool)

(assert (=> d!50598 m!62994))

(assert (=> d!50598 m!62944))

(declare-fun m!62996 () Bool)

(assert (=> d!50598 m!62996))

(declare-fun m!62998 () Bool)

(assert (=> b!58468 m!62998))

(assert (=> b!58469 m!62990))

(assert (=> b!58469 m!62990))

(assert (=> b!58469 m!62994))

(assert (=> b!58469 m!62944))

(assert (=> b!58469 m!62944))

(assert (=> b!58469 m!62996))

(assert (=> b!58448 d!50598))

(declare-fun d!50600 () Bool)

(assert (=> d!50600 true))

(assert (=> d!50600 true))

(declare-fun res!27067 () List!481)

(assert (=> d!50600 (= (append!161 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) res!27067)))

(assert (=> b!58455 d!50600))

(assert (=> b!58449 d!50592))

(assert (=> b!58449 d!50594))

(assert (=> b!58449 d!50588))

(assert (=> b!58449 d!50582))

(declare-fun d!50602 () Bool)

(declare-fun ++!59 (List!481 List!481) List!481)

(assert (=> d!50602 (= (append!11 thiss!8573 (append!10 thiss!8573 xxs!1 ys!180) zs!8) (++!59 (append!10 thiss!8573 xxs!1 ys!180) zs!8))))

(declare-fun bs!36353 () Bool)

(assert (= bs!36353 d!50602))

(assert (=> bs!36353 m!62940))

(declare-fun m!63000 () Bool)

(assert (=> bs!36353 m!63000))

(assert (=> b!58454 d!50602))

(declare-fun d!50604 () Bool)

(assert (=> d!50604 (= (append!11 thiss!8573 xxs!1 ys!180) (++!59 xxs!1 ys!180))))

(declare-fun bs!36354 () Bool)

(assert (= bs!36354 d!50604))

(declare-fun m!63002 () Bool)

(assert (=> bs!36354 m!63002))

(assert (=> b!58456 d!50604))

(declare-fun d!50606 () Bool)

(assert (=> d!50606 (= (append!11 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)) (++!59 xxs!1 (append!10 thiss!8573 ys!180 zs!8)))))

(declare-fun bs!36355 () Bool)

(assert (= bs!36355 d!50606))

(assert (=> bs!36355 m!62944))

(declare-fun m!63004 () Bool)

(assert (=> bs!36355 m!63004))

(assert (=> b!58458 d!50606))

(declare-fun d!50608 () Bool)

(assert (=> d!50608 true))

(assert (=> d!50608 true))

(declare-fun res!27068 () List!481)

(assert (=> d!50608 (= (append!161 thiss!8573 xxs!1 (append!10 thiss!8573 ys!180 zs!8)) res!27068)))

(assert (=> b!58459 d!50608))

(declare-fun d!50610 () Bool)

(assert (=> d!50610 (= (append!11 thiss!8573 ys!180 zs!8) (++!59 ys!180 zs!8))))

(declare-fun bs!36356 () Bool)

(assert (= bs!36356 d!50610))

(declare-fun m!63006 () Bool)

(assert (=> bs!36356 m!63006))

(assert (=> b!58460 d!50610))

(push 1)

(assert (not b!58469))

(assert (not d!50606))

(assert (not d!50610))

(assert (not b!58466))

(assert (not d!50602))

(assert (not b!58468))

(assert (not b!58464))

(assert (not b!58463))

(assert (not b!58465))

(assert (not b!58462))

(assert (not b!58467))

(assert (not d!50598))

(assert (not d!50604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!58478 () Bool)

(declare-fun e!31127 () List!481)

(assert (=> b!58478 (= e!31127 zs!8)))

(declare-fun d!50612 () Bool)

(declare-fun e!31126 () Bool)

(assert (=> d!50612 e!31126))

(declare-fun res!27075 () Bool)

(assert (=> d!50612 (=> (not res!27075) (not e!31126))))

(declare-fun lt!10697 () List!481)

(declare-fun content!99 (List!481) (Set Int))

(assert (=> d!50612 (= res!27075 (= (content!99 lt!10697) (union (content!99 (append!10 thiss!8573 xxs!1 ys!180)) (content!99 zs!8))))))

(assert (=> d!50612 (= lt!10697 e!31127)))

(declare-fun c!12526 () Bool)

(assert (=> d!50612 (= c!12526 (is-Nil!457 (append!10 thiss!8573 xxs!1 ys!180)))))

(assert (=> d!50612 (= (++!59 (append!10 thiss!8573 xxs!1 ys!180) zs!8) lt!10697)))

(declare-fun b!58480 () Bool)

(declare-fun res!27074 () Bool)

(assert (=> b!58480 (=> (not res!27074) (not e!31126))))

(declare-fun size!478 (List!481) Int)

(assert (=> b!58480 (= res!27074 (= (size!478 lt!10697) (+ (size!478 (append!10 thiss!8573 xxs!1 ys!180)) (size!478 zs!8))))))

(declare-fun b!58479 () Bool)

(assert (=> b!58479 (= e!31127 (Cons!456 (h!695 (append!10 thiss!8573 xxs!1 ys!180)) (++!59 (t!47136 (append!10 thiss!8573 xxs!1 ys!180)) zs!8)))))

(declare-fun b!58481 () Bool)

(assert (=> b!58481 (= e!31126 (or (not (= zs!8 Nil!457)) (= lt!10697 (append!10 thiss!8573 xxs!1 ys!180))))))

(assert (= (and d!50612 c!12526) b!58478))

(assert (= (and d!50612 (not c!12526)) b!58479))

(assert (= (and d!50612 res!27075) b!58480))

(assert (= (and b!58480 res!27074) b!58481))

(declare-fun m!63008 () Bool)

(assert (=> d!50612 m!63008))

(assert (=> d!50612 m!62940))

(declare-fun m!63010 () Bool)

(assert (=> d!50612 m!63010))

(declare-fun m!63012 () Bool)

(assert (=> d!50612 m!63012))

(declare-fun m!63014 () Bool)

(assert (=> b!58480 m!63014))

(assert (=> b!58480 m!62940))

(declare-fun m!63016 () Bool)

(assert (=> b!58480 m!63016))

(declare-fun m!63018 () Bool)

(assert (=> b!58480 m!63018))

(declare-fun m!63020 () Bool)

(assert (=> b!58479 m!63020))

(assert (=> d!50602 d!50612))

(declare-fun b!58482 () Bool)

(declare-fun e!31129 () List!481)

(assert (=> b!58482 (= e!31129 ys!180)))

(declare-fun d!50614 () Bool)

(declare-fun e!31128 () Bool)

(assert (=> d!50614 e!31128))

(declare-fun res!27077 () Bool)

(assert (=> d!50614 (=> (not res!27077) (not e!31128))))

(declare-fun lt!10698 () List!481)

(assert (=> d!50614 (= res!27077 (= (content!99 lt!10698) (union (content!99 xxs!1) (content!99 ys!180))))))

(assert (=> d!50614 (= lt!10698 e!31129)))

(declare-fun c!12527 () Bool)

(assert (=> d!50614 (= c!12527 (is-Nil!457 xxs!1))))

(assert (=> d!50614 (= (++!59 xxs!1 ys!180) lt!10698)))

(declare-fun b!58484 () Bool)

(declare-fun res!27076 () Bool)

(assert (=> b!58484 (=> (not res!27076) (not e!31128))))

(assert (=> b!58484 (= res!27076 (= (size!478 lt!10698) (+ (size!478 xxs!1) (size!478 ys!180))))))

(declare-fun b!58483 () Bool)

(assert (=> b!58483 (= e!31129 (Cons!456 (h!695 xxs!1) (++!59 (t!47136 xxs!1) ys!180)))))

(declare-fun b!58485 () Bool)

(assert (=> b!58485 (= e!31128 (or (not (= ys!180 Nil!457)) (= lt!10698 xxs!1)))))

(assert (= (and d!50614 c!12527) b!58482))

(assert (= (and d!50614 (not c!12527)) b!58483))

(assert (= (and d!50614 res!27077) b!58484))

(assert (= (and b!58484 res!27076) b!58485))

(declare-fun m!63022 () Bool)

(assert (=> d!50614 m!63022))

(declare-fun m!63024 () Bool)

(assert (=> d!50614 m!63024))

(declare-fun m!63026 () Bool)

(assert (=> d!50614 m!63026))

(declare-fun m!63028 () Bool)

(assert (=> b!58484 m!63028))

(declare-fun m!63030 () Bool)

(assert (=> b!58484 m!63030))

(declare-fun m!63032 () Bool)

(assert (=> b!58484 m!63032))

(declare-fun m!63034 () Bool)

(assert (=> b!58483 m!63034))

(assert (=> d!50604 d!50614))

(declare-fun e!31131 () List!481)

(declare-fun b!58486 () Bool)

(assert (=> b!58486 (= e!31131 (append!10 thiss!8573 ys!180 zs!8))))

(declare-fun d!50616 () Bool)

(declare-fun e!31130 () Bool)

(assert (=> d!50616 e!31130))

(declare-fun res!27079 () Bool)

(assert (=> d!50616 (=> (not res!27079) (not e!31130))))

(declare-fun lt!10699 () List!481)

(assert (=> d!50616 (= res!27079 (= (content!99 lt!10699) (union (content!99 xxs!1) (content!99 (append!10 thiss!8573 ys!180 zs!8)))))))

(assert (=> d!50616 (= lt!10699 e!31131)))

(declare-fun c!12528 () Bool)

(assert (=> d!50616 (= c!12528 (is-Nil!457 xxs!1))))

(assert (=> d!50616 (= (++!59 xxs!1 (append!10 thiss!8573 ys!180 zs!8)) lt!10699)))

(declare-fun b!58488 () Bool)

(declare-fun res!27078 () Bool)

(assert (=> b!58488 (=> (not res!27078) (not e!31130))))

(assert (=> b!58488 (= res!27078 (= (size!478 lt!10699) (+ (size!478 xxs!1) (size!478 (append!10 thiss!8573 ys!180 zs!8)))))))

(declare-fun b!58487 () Bool)

(assert (=> b!58487 (= e!31131 (Cons!456 (h!695 xxs!1) (++!59 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8))))))

(declare-fun b!58489 () Bool)

(assert (=> b!58489 (= e!31130 (or (not (= (append!10 thiss!8573 ys!180 zs!8) Nil!457)) (= lt!10699 xxs!1)))))

(assert (= (and d!50616 c!12528) b!58486))

(assert (= (and d!50616 (not c!12528)) b!58487))

(assert (= (and d!50616 res!27079) b!58488))

(assert (= (and b!58488 res!27078) b!58489))

(declare-fun m!63036 () Bool)

(assert (=> d!50616 m!63036))

(assert (=> d!50616 m!63024))

(assert (=> d!50616 m!62944))

(declare-fun m!63038 () Bool)

(assert (=> d!50616 m!63038))

(declare-fun m!63040 () Bool)

(assert (=> b!58488 m!63040))

(assert (=> b!58488 m!63030))

(assert (=> b!58488 m!62944))

(declare-fun m!63042 () Bool)

(assert (=> b!58488 m!63042))

(assert (=> b!58487 m!62944))

(declare-fun m!63044 () Bool)

(assert (=> b!58487 m!63044))

(assert (=> d!50606 d!50616))

(declare-fun d!50618 () Bool)

(declare-fun c!12529 () Bool)

(assert (=> d!50618 (= c!12529 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31132 () List!481)

(assert (=> d!50618 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8) e!31132)))

(declare-fun b!58490 () Bool)

(assert (=> b!58490 (= e!31132 (append!11 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8))))

(declare-fun b!58491 () Bool)

(assert (=> b!58491 (= e!31132 (append!161 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8))))

(assert (= (and d!50618 c!12529) b!58490))

(assert (= (and d!50618 (not c!12529)) b!58491))

(assert (=> b!58490 m!62990))

(declare-fun m!63046 () Bool)

(assert (=> b!58490 m!63046))

(assert (=> b!58491 m!62990))

(declare-fun m!63048 () Bool)

(assert (=> b!58491 m!63048))

(assert (=> b!58469 d!50618))

(declare-fun d!50620 () Bool)

(declare-fun c!12530 () Bool)

(assert (=> d!50620 (= c!12530 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31133 () List!481)

(assert (=> d!50620 (= (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) e!31133)))

(declare-fun b!58492 () Bool)

(assert (=> b!58492 (= e!31133 (append!11 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180))))

(declare-fun b!58493 () Bool)

(assert (=> b!58493 (= e!31133 (append!161 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180))))

(assert (= (and d!50620 c!12530) b!58492))

(assert (= (and d!50620 (not c!12530)) b!58493))

(declare-fun m!63050 () Bool)

(assert (=> b!58492 m!63050))

(declare-fun m!63052 () Bool)

(assert (=> b!58493 m!63052))

(assert (=> b!58469 d!50620))

(declare-fun d!50622 () Bool)

(declare-fun c!12531 () Bool)

(assert (=> d!50622 (= c!12531 (is-ListMonoid!12 thiss!8573))))

(declare-fun e!31134 () List!481)

(assert (=> d!50622 (= (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8)) e!31134)))

(declare-fun b!58494 () Bool)

(assert (=> b!58494 (= e!31134 (append!11 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8)))))

(declare-fun b!58495 () Bool)

(assert (=> b!58495 (= e!31134 (append!161 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8)))))

(assert (= (and d!50622 c!12531) b!58494))

(assert (= (and d!50622 (not c!12531)) b!58495))

(assert (=> b!58494 m!62944))

(declare-fun m!63054 () Bool)

(assert (=> b!58494 m!63054))

(assert (=> b!58495 m!62944))

(declare-fun m!63056 () Bool)

(assert (=> b!58495 m!63056))

(assert (=> b!58469 d!50622))

(assert (=> b!58469 d!50582))

(declare-fun d!50624 () Bool)

(declare-fun e!31135 () Bool)

(assert (=> d!50624 e!31135))

(declare-fun res!27081 () Bool)

(assert (=> d!50624 (=> (not res!27081) (not e!31135))))

(declare-fun lt!10700 () Bool)

(assert (=> d!50624 (= res!27081 lt!10700)))

(declare-fun e!31136 () Bool)

(assert (=> d!50624 (= lt!10700 (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 (t!47136 xxs!1))) ys!180) zs!8) (append!10 thiss!8573 (t!47136 (t!47136 (t!47136 xxs!1))) (append!10 thiss!8573 ys!180 zs!8)))) e!31136))))

(declare-fun res!27080 () Bool)

(assert (=> d!50624 (=> res!27080 e!31136)))

(assert (=> d!50624 (= res!27080 (is-Nil!457 (t!47136 (t!47136 (t!47136 xxs!1)))))))

(assert (=> d!50624 (= (law_associativity!5 thiss!8573 (t!47136 (t!47136 (t!47136 xxs!1))) ys!180 zs!8) lt!10700)))

(declare-fun b!58496 () Bool)

(assert (=> b!58496 (= e!31136 (law_associativity!5 thiss!8573 (t!47136 (t!47136 (t!47136 (t!47136 xxs!1)))) ys!180 zs!8))))

(declare-fun b!58497 () Bool)

(assert (=> b!58497 (= e!31135 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 (t!47136 xxs!1))) ys!180) zs!8) (append!10 thiss!8573 (t!47136 (t!47136 (t!47136 xxs!1))) (append!10 thiss!8573 ys!180 zs!8))))))

(assert (= (and d!50624 (not res!27080)) b!58496))

(assert (= (and d!50624 res!27081) b!58497))

(declare-fun m!63058 () Bool)

(assert (=> d!50624 m!63058))

(declare-fun m!63060 () Bool)

(assert (=> d!50624 m!63060))

(assert (=> d!50624 m!62944))

(assert (=> d!50624 m!63058))

(declare-fun m!63062 () Bool)

(assert (=> d!50624 m!63062))

(assert (=> d!50624 m!62944))

(declare-fun m!63064 () Bool)

(assert (=> d!50624 m!63064))

(declare-fun m!63066 () Bool)

(assert (=> b!58496 m!63066))

(assert (=> b!58497 m!63058))

(assert (=> b!58497 m!63058))

(assert (=> b!58497 m!63062))

(assert (=> b!58497 m!62944))

(assert (=> b!58497 m!62944))

(assert (=> b!58497 m!63064))

(assert (=> b!58468 d!50624))

(declare-fun d!50626 () Bool)

(assert (=> d!50626 true))

(assert (=> d!50626 true))

(declare-fun res!27082 () List!481)

(assert (=> d!50626 (= (append!161 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)) res!27082)))

(assert (=> b!58463 d!50626))

(assert (=> d!50598 d!50620))

(declare-fun d!50628 () Bool)

(assert (=> d!50628 (= (because!1 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8) (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8)))) e!31121) (and e!31121 (prop!389 (ProofOps!333 (= (append!10 thiss!8573 (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) ys!180) zs!8) (append!10 thiss!8573 (t!47136 (t!47136 xxs!1)) (append!10 thiss!8573 ys!180 zs!8)))))))))

(assert (=> d!50598 d!50628))

(assert (=> d!50598 d!50582))

(assert (=> d!50598 d!50622))

(assert (=> d!50598 d!50618))

(declare-fun d!50630 () Bool)

(assert (=> d!50630 (= (append!11 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) (++!59 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8))))

(declare-fun bs!36357 () Bool)

(assert (= bs!36357 d!50630))

(assert (=> bs!36357 m!62952))

(declare-fun m!63068 () Bool)

(assert (=> bs!36357 m!63068))

(assert (=> b!58464 d!50630))

(declare-fun b!58498 () Bool)

(declare-fun e!31138 () List!481)

(assert (=> b!58498 (= e!31138 zs!8)))

(declare-fun d!50632 () Bool)

(declare-fun e!31137 () Bool)

(assert (=> d!50632 e!31137))

(declare-fun res!27084 () Bool)

(assert (=> d!50632 (=> (not res!27084) (not e!31137))))

(declare-fun lt!10701 () List!481)

(assert (=> d!50632 (= res!27084 (= (content!99 lt!10701) (union (content!99 ys!180) (content!99 zs!8))))))

(assert (=> d!50632 (= lt!10701 e!31138)))

(declare-fun c!12532 () Bool)

(assert (=> d!50632 (= c!12532 (is-Nil!457 ys!180))))

(assert (=> d!50632 (= (++!59 ys!180 zs!8) lt!10701)))

(declare-fun b!58500 () Bool)

(declare-fun res!27083 () Bool)

(assert (=> b!58500 (=> (not res!27083) (not e!31137))))

(assert (=> b!58500 (= res!27083 (= (size!478 lt!10701) (+ (size!478 ys!180) (size!478 zs!8))))))

(declare-fun b!58499 () Bool)

(assert (=> b!58499 (= e!31138 (Cons!456 (h!695 ys!180) (++!59 (t!47136 ys!180) zs!8)))))

(declare-fun b!58501 () Bool)

(assert (=> b!58501 (= e!31137 (or (not (= zs!8 Nil!457)) (= lt!10701 ys!180)))))

(assert (= (and d!50632 c!12532) b!58498))

(assert (= (and d!50632 (not c!12532)) b!58499))

(assert (= (and d!50632 res!27084) b!58500))

(assert (= (and b!58500 res!27083) b!58501))

(declare-fun m!63070 () Bool)

(assert (=> d!50632 m!63070))

(assert (=> d!50632 m!63026))

(assert (=> d!50632 m!63012))

(declare-fun m!63072 () Bool)

(assert (=> b!58500 m!63072))

(assert (=> b!58500 m!63032))

(assert (=> b!58500 m!63018))

(declare-fun m!63074 () Bool)

(assert (=> b!58499 m!63074))

(assert (=> d!50610 d!50632))

(declare-fun d!50634 () Bool)

(assert (=> d!50634 true))

(assert (=> d!50634 true))

(declare-fun res!27085 () List!481)

(assert (=> d!50634 (= (append!161 thiss!8573 (append!10 thiss!8573 (t!47136 xxs!1) ys!180) zs!8) res!27085)))

(assert (=> b!58465 d!50634))

(declare-fun d!50636 () Bool)

(assert (=> d!50636 true))

(assert (=> d!50636 true))

(declare-fun res!27086 () List!481)

(assert (=> d!50636 (= (append!161 thiss!8573 (t!47136 xxs!1) ys!180) res!27086)))

(assert (=> b!58467 d!50636))

(declare-fun d!50638 () Bool)

(assert (=> d!50638 (= (append!11 thiss!8573 (t!47136 xxs!1) ys!180) (++!59 (t!47136 xxs!1) ys!180))))

(declare-fun bs!36358 () Bool)

(assert (= bs!36358 d!50638))

(assert (=> bs!36358 m!63034))

(assert (=> b!58466 d!50638))

(declare-fun d!50640 () Bool)

(assert (=> d!50640 (= (append!11 thiss!8573 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)) (++!59 (t!47136 xxs!1) (append!10 thiss!8573 ys!180 zs!8)))))

(declare-fun bs!36359 () Bool)

(assert (= bs!36359 d!50640))

(assert (=> bs!36359 m!62944))

(assert (=> bs!36359 m!63044))

(assert (=> b!58462 d!50640))

(push 1)

(assert (not d!50614))

(assert (not d!50616))

(assert (not d!50638))

(assert (not d!50612))

(assert (not b!58491))

(assert (not b!58490))

(assert (not b!58496))

(assert (not d!50632))

(assert (not b!58500))

(assert (not b!58492))

(assert (not b!58495))

(assert (not b!58499))

(assert (not b!58484))

(assert (not b!58493))

(assert (not b!58480))

(assert (not b!58497))

(assert (not b!58487))

(assert (not d!50630))

(assert (not b!58483))

(assert (not b!58488))

(assert (not b!58494))

(assert (not b!58479))

(assert (not d!50624))

(assert (not d!50640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

