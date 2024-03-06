; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5666 () Bool)

(assert start!5666)

(declare-fun res!20603 () Bool)

(declare-fun e!22533 () Bool)

(assert (=> start!5666 (=> (not res!20603) (not e!22533))))

(declare-datatypes () ((Unit!410 (Unit!411))))

(declare-fun tmp!190 () Unit!410)

(declare-datatypes () ((Nat!108 (Zero!92) (Succ!89 (n!1231 Nat!108)))))

(declare-fun n!787 () Nat!108)

(declare-fun times_two_even!0 (Nat!108) Unit!410)

(assert (=> start!5666 (= res!20603 (= tmp!190 (times_two_even!0 n!787)))))

(assert (=> start!5666 e!22533))

(assert (=> start!5666 true))

(declare-fun b!43462 () Bool)

(declare-fun res!20604 () Bool)

(assert (=> b!43462 (=> (not res!20604) (not e!22533))))

(declare-fun x$74!1 () Unit!410)

(declare-fun commutative_plus!0 (Nat!108 Nat!108) Unit!410)

(declare-fun *!4 (Nat!108 Nat!108) Nat!108)

(assert (=> b!43462 (= res!20604 (= x$74!1 (commutative_plus!0 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))

(declare-fun b!43463 () Bool)

(declare-fun isEven!1 (Nat!108) Bool)

(declare-fun +!5 (Nat!108 Nat!108) Nat!108)

(assert (=> b!43463 (= e!22533 (isEven!1 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))

(assert (= (and start!5666 res!20603) b!43462))

(assert (= (and b!43462 res!20604) b!43463))

(declare-fun m!46691 () Bool)

(assert (=> start!5666 m!46691))

(declare-fun m!46693 () Bool)

(assert (=> b!43462 m!46693))

(assert (=> b!43462 m!46693))

(declare-fun m!46695 () Bool)

(assert (=> b!43462 m!46695))

(assert (=> b!43463 m!46693))

(assert (=> b!43463 m!46693))

(declare-fun m!46697 () Bool)

(assert (=> b!43463 m!46697))

(assert (=> b!43463 m!46697))

(declare-fun m!46699 () Bool)

(assert (=> b!43463 m!46699))

(push 1)

(assert (not b!43462))

(assert (not start!5666))

(assert (not b!43463))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30888 () Bool)

(assert (=> d!30888 (= (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)) (+!5 (Succ!89 Zero!92) (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))))

(assert (=> d!30888 true))

(declare-fun x$13!91 () Unit!410)

(assert (=> d!30888 (= (commutative_plus!0 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)) x$13!91)))

(declare-fun bs!17709 () Bool)

(assert (= bs!17709 d!30888))

(assert (=> bs!17709 m!46693))

(assert (=> bs!17709 m!46697))

(assert (=> bs!17709 m!46693))

(declare-fun m!46701 () Bool)

(assert (=> bs!17709 m!46701))

(assert (=> b!43462 d!30888))

(declare-fun d!30890 () Bool)

(declare-fun c!9219 () Bool)

(assert (=> d!30890 (= c!9219 (is-Zero!92 (Succ!89 (Succ!89 Zero!92))))))

(declare-fun e!22536 () Nat!108)

(assert (=> d!30890 (= (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) e!22536)))

(declare-fun b!43468 () Bool)

(assert (=> b!43468 (= e!22536 Zero!92)))

(declare-fun b!43469 () Bool)

(assert (=> b!43469 (= e!22536 (+!5 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787) n!787))))

(assert (= (and d!30890 c!9219) b!43468))

(assert (= (and d!30890 (not c!9219)) b!43469))

(declare-fun m!46703 () Bool)

(assert (=> b!43469 m!46703))

(assert (=> b!43469 m!46703))

(declare-fun m!46705 () Bool)

(assert (=> b!43469 m!46705))

(assert (=> b!43462 d!30890))

(declare-fun d!30892 () Bool)

(assert (=> d!30892 (isEven!1 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))

(assert (=> d!30892 true))

(declare-fun x$73!48 () Unit!410)

(assert (=> d!30892 (= (times_two_even!0 n!787) x$73!48)))

(declare-fun bs!17710 () Bool)

(assert (= bs!17710 d!30892))

(assert (=> bs!17710 m!46693))

(assert (=> bs!17710 m!46693))

(declare-fun m!46707 () Bool)

(assert (=> bs!17710 m!46707))

(assert (=> start!5666 d!30892))

(declare-fun d!30894 () Bool)

(declare-fun res!20609 () Bool)

(declare-fun e!22541 () Bool)

(assert (=> d!30894 (=> res!20609 e!22541)))

(assert (=> d!30894 (= res!20609 (is-Zero!92 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))

(assert (=> d!30894 (= (isEven!1 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))) e!22541)))

(declare-fun b!43474 () Bool)

(declare-fun e!22542 () Bool)

(assert (=> b!43474 (= e!22541 e!22542)))

(declare-fun res!20610 () Bool)

(assert (=> b!43474 (=> (not res!20610) (not e!22542))))

(assert (=> b!43474 (= res!20610 (not (and (is-Succ!89 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))) (is-Zero!92 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)))))))))

(declare-fun b!43475 () Bool)

(assert (=> b!43475 (= e!22542 (not (isEven!1 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))))

(assert (= (and d!30894 (not res!20609)) b!43474))

(assert (= (and b!43474 res!20610) b!43475))

(declare-fun m!46709 () Bool)

(assert (=> b!43475 m!46709))

(assert (=> b!43463 d!30894))

(declare-fun d!30896 () Bool)

(declare-fun c!9222 () Bool)

(assert (=> d!30896 (= c!9222 (is-Zero!92 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))))

(declare-fun e!22545 () Nat!108)

(assert (=> d!30896 (= (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)) e!22545)))

(declare-fun b!43480 () Bool)

(assert (=> b!43480 (= e!22545 (Succ!89 Zero!92))))

(declare-fun b!43481 () Bool)

(assert (=> b!43481 (= e!22545 (Succ!89 (+!5 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)) (Succ!89 Zero!92))))))

(assert (= (and d!30896 c!9222) b!43480))

(assert (= (and d!30896 (not c!9222)) b!43481))

(declare-fun m!46711 () Bool)

(assert (=> b!43481 m!46711))

(assert (=> b!43463 d!30896))

(assert (=> b!43463 d!30890))

(push 1)

(assert (not d!30888))

(assert (not b!43475))

(assert (not d!30892))

(assert (not b!43469))

(assert (not b!43481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30898 () Bool)

(declare-fun c!9223 () Bool)

(assert (=> d!30898 (= c!9223 (is-Zero!92 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))))

(declare-fun e!22546 () Nat!108)

(assert (=> d!30898 (= (+!5 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)) (Succ!89 Zero!92)) e!22546)))

(declare-fun b!43482 () Bool)

(assert (=> b!43482 (= e!22546 (Succ!89 Zero!92))))

(declare-fun b!43483 () Bool)

(assert (=> b!43483 (= e!22546 (Succ!89 (+!5 (n!1231 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))) (Succ!89 Zero!92))))))

(assert (= (and d!30898 c!9223) b!43482))

(assert (= (and d!30898 (not c!9223)) b!43483))

(declare-fun m!46713 () Bool)

(assert (=> b!43483 m!46713))

(assert (=> b!43481 d!30898))

(declare-fun d!30900 () Bool)

(declare-fun res!20611 () Bool)

(declare-fun e!22547 () Bool)

(assert (=> d!30900 (=> res!20611 e!22547)))

(assert (=> d!30900 (= res!20611 (is-Zero!92 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))))

(assert (=> d!30900 (= (isEven!1 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)) e!22547)))

(declare-fun b!43484 () Bool)

(declare-fun e!22548 () Bool)

(assert (=> b!43484 (= e!22547 e!22548)))

(declare-fun res!20612 () Bool)

(assert (=> b!43484 (=> (not res!20612) (not e!22548))))

(assert (=> b!43484 (= res!20612 (not (and (is-Succ!89 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)) (is-Zero!92 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))))))

(declare-fun b!43485 () Bool)

(assert (=> b!43485 (= e!22548 (not (isEven!1 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))))))

(assert (= (and d!30900 (not res!20611)) b!43484))

(assert (= (and b!43484 res!20612) b!43485))

(declare-fun m!46715 () Bool)

(assert (=> b!43485 m!46715))

(assert (=> d!30892 d!30900))

(assert (=> d!30892 d!30890))

(declare-fun d!30902 () Bool)

(declare-fun c!9224 () Bool)

(assert (=> d!30902 (= c!9224 (is-Zero!92 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787)))))

(declare-fun e!22549 () Nat!108)

(assert (=> d!30902 (= (+!5 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787) n!787) e!22549)))

(declare-fun b!43486 () Bool)

(assert (=> b!43486 (= e!22549 n!787)))

(declare-fun b!43487 () Bool)

(assert (=> b!43487 (= e!22549 (Succ!89 (+!5 (n!1231 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787)) n!787)))))

(assert (= (and d!30902 c!9224) b!43486))

(assert (= (and d!30902 (not c!9224)) b!43487))

(declare-fun m!46717 () Bool)

(assert (=> b!43487 m!46717))

(assert (=> b!43469 d!30902))

(declare-fun d!30904 () Bool)

(declare-fun c!9225 () Bool)

(assert (=> d!30904 (= c!9225 (is-Zero!92 (n!1231 (Succ!89 (Succ!89 Zero!92)))))))

(declare-fun e!22550 () Nat!108)

(assert (=> d!30904 (= (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787) e!22550)))

(declare-fun b!43488 () Bool)

(assert (=> b!43488 (= e!22550 Zero!92)))

(declare-fun b!43489 () Bool)

(assert (=> b!43489 (= e!22550 (+!5 (*!4 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92)))) n!787) n!787))))

(assert (= (and d!30904 c!9225) b!43488))

(assert (= (and d!30904 (not c!9225)) b!43489))

(declare-fun m!46719 () Bool)

(assert (=> b!43489 m!46719))

(assert (=> b!43489 m!46719))

(declare-fun m!46721 () Bool)

(assert (=> b!43489 m!46721))

(assert (=> b!43469 d!30904))

(declare-fun d!30906 () Bool)

(declare-fun res!20613 () Bool)

(declare-fun e!22551 () Bool)

(assert (=> d!30906 (=> res!20613 e!22551)))

(assert (=> d!30906 (= res!20613 (is-Zero!92 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)))))))

(assert (=> d!30906 (= (isEven!1 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)))) e!22551)))

(declare-fun b!43490 () Bool)

(declare-fun e!22552 () Bool)

(assert (=> b!43490 (= e!22551 e!22552)))

(declare-fun res!20614 () Bool)

(assert (=> b!43490 (=> (not res!20614) (not e!22552))))

(assert (=> b!43490 (= res!20614 (not (and (is-Succ!89 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)))) (is-Zero!92 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))))))

(declare-fun b!43491 () Bool)

(assert (=> b!43491 (= e!22552 (not (isEven!1 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)))))))))

(assert (= (and d!30906 (not res!20613)) b!43490))

(assert (= (and b!43490 res!20614) b!43491))

(declare-fun m!46723 () Bool)

(assert (=> b!43491 m!46723))

(assert (=> b!43475 d!30906))

(assert (=> d!30888 d!30896))

(declare-fun d!30908 () Bool)

(declare-fun c!9226 () Bool)

(assert (=> d!30908 (= c!9226 (is-Zero!92 (Succ!89 Zero!92)))))

(declare-fun e!22553 () Nat!108)

(assert (=> d!30908 (= (+!5 (Succ!89 Zero!92) (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)) e!22553)))

(declare-fun b!43492 () Bool)

(assert (=> b!43492 (= e!22553 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))

(declare-fun b!43493 () Bool)

(assert (=> b!43493 (= e!22553 (Succ!89 (+!5 (n!1231 (Succ!89 Zero!92)) (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))))

(assert (= (and d!30908 c!9226) b!43492))

(assert (= (and d!30908 (not c!9226)) b!43493))

(assert (=> b!43493 m!46693))

(declare-fun m!46725 () Bool)

(assert (=> b!43493 m!46725))

(assert (=> d!30888 d!30908))

(push 1)

(assert (not b!43489))

(assert (not b!43485))

(assert (not b!43493))

(assert (not b!43483))

(assert (not b!43491))

(assert (not b!43487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30910 () Bool)

(declare-fun c!9227 () Bool)

(assert (=> d!30910 (= c!9227 (is-Zero!92 (n!1231 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))))))

(declare-fun e!22554 () Nat!108)

(assert (=> d!30910 (= (+!5 (n!1231 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))) (Succ!89 Zero!92)) e!22554)))

(declare-fun b!43494 () Bool)

(assert (=> b!43494 (= e!22554 (Succ!89 Zero!92))))

(declare-fun b!43495 () Bool)

(assert (=> b!43495 (= e!22554 (Succ!89 (+!5 (n!1231 (n!1231 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))) (Succ!89 Zero!92))))))

(assert (= (and d!30910 c!9227) b!43494))

(assert (= (and d!30910 (not c!9227)) b!43495))

(declare-fun m!46727 () Bool)

(assert (=> b!43495 m!46727))

(assert (=> b!43483 d!30910))

(declare-fun d!30912 () Bool)

(declare-fun c!9228 () Bool)

(assert (=> d!30912 (= c!9228 (is-Zero!92 (n!1231 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787))))))

(declare-fun e!22555 () Nat!108)

(assert (=> d!30912 (= (+!5 (n!1231 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787)) n!787) e!22555)))

(declare-fun b!43496 () Bool)

(assert (=> b!43496 (= e!22555 n!787)))

(declare-fun b!43497 () Bool)

(assert (=> b!43497 (= e!22555 (Succ!89 (+!5 (n!1231 (n!1231 (*!4 (n!1231 (Succ!89 (Succ!89 Zero!92))) n!787))) n!787)))))

(assert (= (and d!30912 c!9228) b!43496))

(assert (= (and d!30912 (not c!9228)) b!43497))

(declare-fun m!46729 () Bool)

(assert (=> b!43497 m!46729))

(assert (=> b!43487 d!30912))

(declare-fun d!30914 () Bool)

(declare-fun res!20615 () Bool)

(declare-fun e!22556 () Bool)

(assert (=> d!30914 (=> res!20615 e!22556)))

(assert (=> d!30914 (= res!20615 (is-Zero!92 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))))

(assert (=> d!30914 (= (isEven!1 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))) e!22556)))

(declare-fun b!43498 () Bool)

(declare-fun e!22557 () Bool)

(assert (=> b!43498 (= e!22556 e!22557)))

(declare-fun res!20616 () Bool)

(assert (=> b!43498 (=> (not res!20616) (not e!22557))))

(assert (=> b!43498 (= res!20616 (not (and (is-Succ!89 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))) (is-Zero!92 (n!1231 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92)))))))))))

(declare-fun b!43499 () Bool)

(assert (=> b!43499 (= e!22557 (not (isEven!1 (n!1231 (n!1231 (n!1231 (+!5 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787) (Succ!89 Zero!92))))))))))

(assert (= (and d!30914 (not res!20615)) b!43498))

(assert (= (and b!43498 res!20616) b!43499))

(declare-fun m!46731 () Bool)

(assert (=> b!43499 m!46731))

(assert (=> b!43491 d!30914))

(declare-fun d!30916 () Bool)

(declare-fun c!9229 () Bool)

(assert (=> d!30916 (= c!9229 (is-Zero!92 (*!4 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92)))) n!787)))))

(declare-fun e!22558 () Nat!108)

(assert (=> d!30916 (= (+!5 (*!4 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92)))) n!787) n!787) e!22558)))

(declare-fun b!43500 () Bool)

(assert (=> b!43500 (= e!22558 n!787)))

(declare-fun b!43501 () Bool)

(assert (=> b!43501 (= e!22558 (Succ!89 (+!5 (n!1231 (*!4 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92)))) n!787)) n!787)))))

(assert (= (and d!30916 c!9229) b!43500))

(assert (= (and d!30916 (not c!9229)) b!43501))

(declare-fun m!46733 () Bool)

(assert (=> b!43501 m!46733))

(assert (=> b!43489 d!30916))

(declare-fun d!30918 () Bool)

(declare-fun c!9230 () Bool)

(assert (=> d!30918 (= c!9230 (is-Zero!92 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92))))))))

(declare-fun e!22559 () Nat!108)

(assert (=> d!30918 (= (*!4 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92)))) n!787) e!22559)))

(declare-fun b!43502 () Bool)

(assert (=> b!43502 (= e!22559 Zero!92)))

(declare-fun b!43503 () Bool)

(assert (=> b!43503 (= e!22559 (+!5 (*!4 (n!1231 (n!1231 (n!1231 (Succ!89 (Succ!89 Zero!92))))) n!787) n!787))))

(assert (= (and d!30918 c!9230) b!43502))

(assert (= (and d!30918 (not c!9230)) b!43503))

(declare-fun m!46735 () Bool)

(assert (=> b!43503 m!46735))

(assert (=> b!43503 m!46735))

(declare-fun m!46737 () Bool)

(assert (=> b!43503 m!46737))

(assert (=> b!43489 d!30918))

(declare-fun d!30920 () Bool)

(declare-fun c!9231 () Bool)

(assert (=> d!30920 (= c!9231 (is-Zero!92 (n!1231 (Succ!89 Zero!92))))))

(declare-fun e!22560 () Nat!108)

(assert (=> d!30920 (= (+!5 (n!1231 (Succ!89 Zero!92)) (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)) e!22560)))

(declare-fun b!43504 () Bool)

(assert (=> b!43504 (= e!22560 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))

(declare-fun b!43505 () Bool)

(assert (=> b!43505 (= e!22560 (Succ!89 (+!5 (n!1231 (n!1231 (Succ!89 Zero!92))) (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))))

(assert (= (and d!30920 c!9231) b!43504))

(assert (= (and d!30920 (not c!9231)) b!43505))

(assert (=> b!43505 m!46693))

(declare-fun m!46739 () Bool)

(assert (=> b!43505 m!46739))

(assert (=> b!43493 d!30920))

(declare-fun d!30922 () Bool)

(declare-fun res!20617 () Bool)

(declare-fun e!22561 () Bool)

(assert (=> d!30922 (=> res!20617 e!22561)))

(assert (=> d!30922 (= res!20617 (is-Zero!92 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))))

(assert (=> d!30922 (= (isEven!1 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))) e!22561)))

(declare-fun b!43506 () Bool)

(declare-fun e!22562 () Bool)

(assert (=> b!43506 (= e!22561 e!22562)))

(declare-fun res!20618 () Bool)

(assert (=> b!43506 (=> (not res!20618) (not e!22562))))

(assert (=> b!43506 (= res!20618 (not (and (is-Succ!89 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))) (is-Zero!92 (n!1231 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787)))))))))

(declare-fun b!43507 () Bool)

(assert (=> b!43507 (= e!22562 (not (isEven!1 (n!1231 (n!1231 (*!4 (Succ!89 (Succ!89 Zero!92)) n!787))))))))

(assert (= (and d!30922 (not res!20617)) b!43506))

(assert (= (and b!43506 res!20618) b!43507))

(declare-fun m!46741 () Bool)

(assert (=> b!43507 m!46741))

(assert (=> b!43485 d!30922))

(push 1)

(assert (not b!43497))

(assert (not b!43499))

(assert (not b!43507))

(assert (not b!43501))

(assert (not b!43505))

(assert (not b!43495))

(assert (not b!43503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

