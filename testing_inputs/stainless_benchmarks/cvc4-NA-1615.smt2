; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11218 () Bool)

(assert start!11218)

(declare-fun b!85593 () Bool)

(assert (=> b!85593 true))

(declare-fun res!44472 () Bool)

(declare-fun e!46411 () Bool)

(assert (=> start!11218 (=> (not res!44472) (not e!46411))))

(declare-datatypes () ((Unit!1205 (Unit!1206))))

(declare-fun tmp!524 () Unit!1205)

(declare-fun Unit!1207 () Unit!1205)

(assert (=> start!11218 (= res!44472 (= tmp!524 Unit!1207))))

(declare-datatypes () ((List!713 (Cons!670 (h!1043 Int) (t!48158 List!713)) (Nil!672))))

(declare-fun ls!37 () List!713)

(declare-fun x!29237 () Int)

(declare-fun filter_equal_sorted!0 (List!713 Int) Bool)

(assert (=> start!11218 (filter_equal_sorted!0 ls!37 x!29237)))

(assert (=> start!11218 e!46411))

(assert (=> start!11218 true))

(declare-fun lambda!10794 () Int)

(declare-fun isSorted!1 (List!713) Bool)

(declare-fun filter!46 (List!713 Int) List!713)

(assert (=> b!85593 (= e!46411 (not (isSorted!1 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))))))

(assert (= (and start!11218 res!44472) b!85593))

(declare-fun m!81404 () Bool)

(assert (=> start!11218 m!81404))

(declare-fun m!81406 () Bool)

(assert (=> b!85593 m!81406))

(declare-fun m!81408 () Bool)

(assert (=> b!85593 m!81408))

(push 1)

(assert (not start!11218))

(assert (not b!85593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!41069 () Bool)

(declare-fun b!85600 () Bool)

(assert (= bs!41069 (and b!85600 b!85593)))

(declare-fun lambda!10799 () Int)

(assert (=> bs!41069 (= lambda!10799 lambda!10794)))

(assert (=> b!85600 true))

(declare-fun bs!41070 () Bool)

(declare-fun b!85601 () Bool)

(assert (= bs!41070 (and b!85601 b!85593)))

(declare-fun lambda!10800 () Int)

(assert (=> bs!41070 (= lambda!10800 lambda!10794)))

(declare-fun bs!41071 () Bool)

(assert (= bs!41071 (and b!85601 b!85600)))

(assert (=> bs!41071 (= lambda!10800 lambda!10799)))

(assert (=> b!85601 true))

(declare-fun e!46414 () Bool)

(assert (=> b!85600 (= e!46414 (isSorted!1 (filter!46 ls!37 lambda!10799)))))

(declare-fun lt!19922 () Bool)

(assert (=> b!85600 (= lt!19922 (filter_equal_sorted!0 (t!48158 ls!37) x!29237))))

(declare-fun d!57405 () Bool)

(assert (=> d!57405 e!46414))

(declare-fun c!21235 () Bool)

(assert (=> d!57405 (= c!21235 (is-Cons!670 ls!37))))

(assert (=> d!57405 (= (filter_equal_sorted!0 ls!37 x!29237) true)))

(assert (=> b!85601 (= e!46414 (isSorted!1 (filter!46 ls!37 lambda!10800)))))

(assert (= (and d!57405 c!21235) b!85600))

(assert (= (and d!57405 (not c!21235)) b!85601))

(declare-fun m!81410 () Bool)

(assert (=> b!85600 m!81410))

(assert (=> b!85600 m!81410))

(declare-fun m!81412 () Bool)

(assert (=> b!85600 m!81412))

(declare-fun m!81414 () Bool)

(assert (=> b!85600 m!81414))

(declare-fun m!81416 () Bool)

(assert (=> b!85601 m!81416))

(assert (=> b!85601 m!81416))

(declare-fun m!81418 () Bool)

(assert (=> b!85601 m!81418))

(assert (=> start!11218 d!57405))

(declare-fun d!57407 () Bool)

(declare-fun res!44477 () Bool)

(declare-fun e!46419 () Bool)

(assert (=> d!57407 (=> res!44477 e!46419)))

(assert (=> d!57407 (= res!44477 (not (and (is-Cons!670 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794))) (is-Cons!670 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))))))))

(assert (=> d!57407 (= (isSorted!1 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794))) e!46419)))

(declare-fun b!85606 () Bool)

(declare-fun e!46420 () Bool)

(assert (=> b!85606 (= e!46419 e!46420)))

(declare-fun res!44478 () Bool)

(assert (=> b!85606 (=> (not res!44478) (not e!46420))))

(assert (=> b!85606 (= res!44478 (<= (h!1043 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794))) (h!1043 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794))))))))

(declare-fun b!85607 () Bool)

(assert (=> b!85607 (= e!46420 (isSorted!1 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))))))

(assert (= (and d!57407 (not res!44477)) b!85606))

(assert (= (and b!85606 res!44478) b!85607))

(declare-fun m!81420 () Bool)

(assert (=> b!85607 m!81420))

(assert (=> b!85593 d!57407))

(declare-fun b!85622 () Bool)

(declare-fun e!46432 () List!713)

(declare-fun lt!19928 () List!713)

(assert (=> b!85622 (= e!46432 lt!19928)))

(declare-fun d!57409 () Bool)

(declare-fun e!46430 () Bool)

(assert (=> d!57409 e!46430))

(declare-fun res!44489 () Bool)

(assert (=> d!57409 (=> (not res!44489) (not e!46430))))

(declare-fun lt!19927 () List!713)

(declare-fun size!682 (List!713) Int)

(assert (=> d!57409 (= res!44489 (<= (size!682 lt!19927) (size!682 ls!37)))))

(declare-fun e!46429 () List!713)

(assert (=> d!57409 (= lt!19927 e!46429)))

(declare-fun c!21241 () Bool)

(assert (=> d!57409 (= c!21241 (is-Nil!672 ls!37))))

(assert (=> d!57409 (= (filter!46 ls!37 lambda!10794) lt!19927)))

(declare-fun b!85623 () Bool)

(assert (=> b!85623 (= e!46429 Nil!672)))

(declare-fun b!85624 () Bool)

(declare-fun e!46431 () Bool)

(declare-fun dynLambda!1021 (Int Int) Bool)

(assert (=> b!85624 (= e!46431 (dynLambda!1021 lambda!10794 (h!1043 ls!37)))))

(declare-fun b!85625 () Bool)

(assert (=> b!85625 (= e!46432 (Cons!670 (h!1043 ls!37) lt!19928))))

(declare-fun b!85626 () Bool)

(assert (=> b!85626 (= e!46429 e!46432)))

(declare-fun c!21240 () Bool)

(assert (=> b!85626 (= c!21240 e!46431)))

(declare-fun res!44490 () Bool)

(assert (=> b!85626 (=> (not res!44490) (not e!46431))))

(assert (=> b!85626 (= res!44490 (is-Cons!670 ls!37))))

(assert (=> b!85626 (= lt!19928 (filter!46 (t!48158 ls!37) lambda!10794))))

(declare-fun b!85627 () Bool)

(declare-fun res!44491 () Bool)

(assert (=> b!85627 (=> (not res!44491) (not e!46430))))

(declare-fun content!154 (List!713) (Set Int))

(assert (=> b!85627 (= res!44491 (subset (content!154 lt!19927) (content!154 ls!37)))))

(declare-fun b!85628 () Bool)

(declare-fun forall!60 (List!713 Int) Bool)

(assert (=> b!85628 (= e!46430 (forall!60 lt!19927 lambda!10794))))

(assert (= (and b!85626 res!44490) b!85624))

(assert (= (and b!85626 c!21240) b!85625))

(assert (= (and b!85626 (not c!21240)) b!85622))

(assert (= (and d!57409 c!21241) b!85623))

(assert (= (and d!57409 (not c!21241)) b!85626))

(assert (= (and d!57409 res!44489) b!85627))

(assert (= (and b!85627 res!44491) b!85628))

(declare-fun b_lambda!16883 () Bool)

(assert (=> (not b_lambda!16883) (not b!85624)))

(declare-fun m!81422 () Bool)

(assert (=> b!85628 m!81422))

(declare-fun m!81424 () Bool)

(assert (=> d!57409 m!81424))

(declare-fun m!81426 () Bool)

(assert (=> d!57409 m!81426))

(declare-fun m!81428 () Bool)

(assert (=> b!85624 m!81428))

(declare-fun m!81430 () Bool)

(assert (=> b!85627 m!81430))

(declare-fun m!81432 () Bool)

(assert (=> b!85627 m!81432))

(declare-fun m!81434 () Bool)

(assert (=> b!85626 m!81434))

(assert (=> b!85593 d!57409))

(declare-fun b_lambda!16885 () Bool)

(assert (= b_lambda!16883 (or b!85593 b_lambda!16885)))

(declare-fun bs!41072 () Bool)

(declare-fun d!57411 () Bool)

(assert (= bs!41072 (and d!57411 b!85593)))

(assert (=> bs!41072 (= (dynLambda!1021 lambda!10794 (h!1043 ls!37)) (= (h!1043 ls!37) x!29237))))

(assert (=> b!85624 d!57411))

(push 1)

(assert (not b!85627))

(assert (not b_lambda!16885))

(assert (not b!85626))

(assert (not d!57409))

(assert (not b!85607))

(assert (not b!85628))

(assert (not b!85601))

(assert (not b!85600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!57413 () Bool)

(declare-fun lt!19931 () Int)

(assert (=> d!57413 (>= lt!19931 0)))

(declare-fun e!46435 () Int)

(assert (=> d!57413 (= lt!19931 e!46435)))

(declare-fun c!21244 () Bool)

(assert (=> d!57413 (= c!21244 (is-Nil!672 lt!19927))))

(assert (=> d!57413 (= (size!682 lt!19927) lt!19931)))

(declare-fun b!85633 () Bool)

(assert (=> b!85633 (= e!46435 0)))

(declare-fun b!85634 () Bool)

(assert (=> b!85634 (= e!46435 (+ 1 (size!682 (t!48158 lt!19927))))))

(assert (= (and d!57413 c!21244) b!85633))

(assert (= (and d!57413 (not c!21244)) b!85634))

(declare-fun m!81436 () Bool)

(assert (=> b!85634 m!81436))

(assert (=> d!57409 d!57413))

(declare-fun d!57415 () Bool)

(declare-fun lt!19932 () Int)

(assert (=> d!57415 (>= lt!19932 0)))

(declare-fun e!46436 () Int)

(assert (=> d!57415 (= lt!19932 e!46436)))

(declare-fun c!21245 () Bool)

(assert (=> d!57415 (= c!21245 (is-Nil!672 ls!37))))

(assert (=> d!57415 (= (size!682 ls!37) lt!19932)))

(declare-fun b!85635 () Bool)

(assert (=> b!85635 (= e!46436 0)))

(declare-fun b!85636 () Bool)

(assert (=> b!85636 (= e!46436 (+ 1 (size!682 (t!48158 ls!37))))))

(assert (= (and d!57415 c!21245) b!85635))

(assert (= (and d!57415 (not c!21245)) b!85636))

(declare-fun m!81438 () Bool)

(assert (=> b!85636 m!81438))

(assert (=> d!57409 d!57415))

(declare-fun d!57417 () Bool)

(declare-fun res!44492 () Bool)

(declare-fun e!46437 () Bool)

(assert (=> d!57417 (=> res!44492 e!46437)))

(assert (=> d!57417 (= res!44492 (not (and (is-Cons!670 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))) (is-Cons!670 (t!48158 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794))))))))))

(assert (=> d!57417 (= (isSorted!1 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))) e!46437)))

(declare-fun b!85637 () Bool)

(declare-fun e!46438 () Bool)

(assert (=> b!85637 (= e!46437 e!46438)))

(declare-fun res!44493 () Bool)

(assert (=> b!85637 (=> (not res!44493) (not e!46438))))

(assert (=> b!85637 (= res!44493 (<= (h!1043 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))) (h!1043 (t!48158 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794)))))))))

(declare-fun b!85638 () Bool)

(assert (=> b!85638 (= e!46438 (isSorted!1 (t!48158 (t!48158 (Cons!670 x!29237 (filter!46 ls!37 lambda!10794))))))))

(assert (= (and d!57417 (not res!44492)) b!85637))

(assert (= (and b!85637 res!44493) b!85638))

(declare-fun m!81440 () Bool)

(assert (=> b!85638 m!81440))

(assert (=> b!85607 d!57417))

(declare-fun d!57419 () Bool)

(declare-fun res!44494 () Bool)

(declare-fun e!46439 () Bool)

(assert (=> d!57419 (=> res!44494 e!46439)))

(assert (=> d!57419 (= res!44494 (not (and (is-Cons!670 (filter!46 ls!37 lambda!10800)) (is-Cons!670 (t!48158 (filter!46 ls!37 lambda!10800))))))))

(assert (=> d!57419 (= (isSorted!1 (filter!46 ls!37 lambda!10800)) e!46439)))

(declare-fun b!85639 () Bool)

(declare-fun e!46440 () Bool)

(assert (=> b!85639 (= e!46439 e!46440)))

(declare-fun res!44495 () Bool)

(assert (=> b!85639 (=> (not res!44495) (not e!46440))))

(assert (=> b!85639 (= res!44495 (<= (h!1043 (filter!46 ls!37 lambda!10800)) (h!1043 (t!48158 (filter!46 ls!37 lambda!10800)))))))

(declare-fun b!85640 () Bool)

(assert (=> b!85640 (= e!46440 (isSorted!1 (t!48158 (filter!46 ls!37 lambda!10800))))))

(assert (= (and d!57419 (not res!44494)) b!85639))

(assert (= (and b!85639 res!44495) b!85640))

(declare-fun m!81442 () Bool)

(assert (=> b!85640 m!81442))

(assert (=> b!85601 d!57419))

(declare-fun b!85641 () Bool)

(declare-fun e!46444 () List!713)

(declare-fun lt!19934 () List!713)

(assert (=> b!85641 (= e!46444 lt!19934)))

(declare-fun d!57421 () Bool)

(declare-fun e!46442 () Bool)

(assert (=> d!57421 e!46442))

(declare-fun res!44496 () Bool)

(assert (=> d!57421 (=> (not res!44496) (not e!46442))))

(declare-fun lt!19933 () List!713)

(assert (=> d!57421 (= res!44496 (<= (size!682 lt!19933) (size!682 ls!37)))))

(declare-fun e!46441 () List!713)

(assert (=> d!57421 (= lt!19933 e!46441)))

(declare-fun c!21247 () Bool)

(assert (=> d!57421 (= c!21247 (is-Nil!672 ls!37))))

(assert (=> d!57421 (= (filter!46 ls!37 lambda!10800) lt!19933)))

(declare-fun b!85642 () Bool)

(assert (=> b!85642 (= e!46441 Nil!672)))

(declare-fun b!85643 () Bool)

(declare-fun e!46443 () Bool)

(assert (=> b!85643 (= e!46443 (dynLambda!1021 lambda!10800 (h!1043 ls!37)))))

(declare-fun b!85644 () Bool)

(assert (=> b!85644 (= e!46444 (Cons!670 (h!1043 ls!37) lt!19934))))

(declare-fun b!85645 () Bool)

(assert (=> b!85645 (= e!46441 e!46444)))

(declare-fun c!21246 () Bool)

(assert (=> b!85645 (= c!21246 e!46443)))

(declare-fun res!44497 () Bool)

(assert (=> b!85645 (=> (not res!44497) (not e!46443))))

(assert (=> b!85645 (= res!44497 (is-Cons!670 ls!37))))

(assert (=> b!85645 (= lt!19934 (filter!46 (t!48158 ls!37) lambda!10800))))

(declare-fun b!85646 () Bool)

(declare-fun res!44498 () Bool)

(assert (=> b!85646 (=> (not res!44498) (not e!46442))))

(assert (=> b!85646 (= res!44498 (subset (content!154 lt!19933) (content!154 ls!37)))))

(declare-fun b!85647 () Bool)

(assert (=> b!85647 (= e!46442 (forall!60 lt!19933 lambda!10800))))

(assert (= (and b!85645 res!44497) b!85643))

(assert (= (and b!85645 c!21246) b!85644))

(assert (= (and b!85645 (not c!21246)) b!85641))

(assert (= (and d!57421 c!21247) b!85642))

(assert (= (and d!57421 (not c!21247)) b!85645))

(assert (= (and d!57421 res!44496) b!85646))

(assert (= (and b!85646 res!44498) b!85647))

(declare-fun b_lambda!16887 () Bool)

(assert (=> (not b_lambda!16887) (not b!85643)))

(declare-fun m!81444 () Bool)

(assert (=> b!85647 m!81444))

(declare-fun m!81446 () Bool)

(assert (=> d!57421 m!81446))

(assert (=> d!57421 m!81426))

(declare-fun m!81448 () Bool)

(assert (=> b!85643 m!81448))

(declare-fun m!81450 () Bool)

(assert (=> b!85646 m!81450))

(assert (=> b!85646 m!81432))

(declare-fun m!81452 () Bool)

(assert (=> b!85645 m!81452))

(assert (=> b!85601 d!57421))

(declare-fun d!57423 () Bool)

(declare-fun c!21250 () Bool)

(assert (=> d!57423 (= c!21250 (is-Nil!672 lt!19927))))

(declare-fun e!46447 () (Set Int))

(assert (=> d!57423 (= (content!154 lt!19927) e!46447)))

(declare-fun b!85652 () Bool)

(assert (=> b!85652 (= e!46447 (as emptyset (Set Int)))))

(declare-fun b!85653 () Bool)

(assert (=> b!85653 (= e!46447 (union (insert (h!1043 lt!19927) (as emptyset (Set Int))) (content!154 (t!48158 lt!19927))))))

(assert (= (and d!57423 c!21250) b!85652))

(assert (= (and d!57423 (not c!21250)) b!85653))

(declare-fun m!81454 () Bool)

(assert (=> b!85653 m!81454))

(declare-fun m!81456 () Bool)

(assert (=> b!85653 m!81456))

(assert (=> b!85627 d!57423))

(declare-fun d!57425 () Bool)

(declare-fun c!21251 () Bool)

(assert (=> d!57425 (= c!21251 (is-Nil!672 ls!37))))

(declare-fun e!46448 () (Set Int))

(assert (=> d!57425 (= (content!154 ls!37) e!46448)))

(declare-fun b!85654 () Bool)

(assert (=> b!85654 (= e!46448 (as emptyset (Set Int)))))

(declare-fun b!85655 () Bool)

(assert (=> b!85655 (= e!46448 (union (insert (h!1043 ls!37) (as emptyset (Set Int))) (content!154 (t!48158 ls!37))))))

(assert (= (and d!57425 c!21251) b!85654))

(assert (= (and d!57425 (not c!21251)) b!85655))

(declare-fun m!81458 () Bool)

(assert (=> b!85655 m!81458))

(declare-fun m!81460 () Bool)

(assert (=> b!85655 m!81460))

(assert (=> b!85627 d!57425))

(declare-fun d!57427 () Bool)

(declare-fun res!44503 () Bool)

(declare-fun e!46453 () Bool)

(assert (=> d!57427 (=> res!44503 e!46453)))

(assert (=> d!57427 (= res!44503 (is-Nil!672 lt!19927))))

(assert (=> d!57427 (= (forall!60 lt!19927 lambda!10794) e!46453)))

(declare-fun b!85660 () Bool)

(declare-fun e!46454 () Bool)

(assert (=> b!85660 (= e!46453 e!46454)))

(declare-fun res!44504 () Bool)

(assert (=> b!85660 (=> (not res!44504) (not e!46454))))

(assert (=> b!85660 (= res!44504 (dynLambda!1021 lambda!10794 (h!1043 lt!19927)))))

(declare-fun b!85661 () Bool)

(assert (=> b!85661 (= e!46454 (forall!60 (t!48158 lt!19927) lambda!10794))))

(assert (= (and d!57427 (not res!44503)) b!85660))

(assert (= (and b!85660 res!44504) b!85661))

(declare-fun b_lambda!16889 () Bool)

(assert (=> (not b_lambda!16889) (not b!85660)))

(declare-fun m!81462 () Bool)

(assert (=> b!85660 m!81462))

(declare-fun m!81464 () Bool)

(assert (=> b!85661 m!81464))

(assert (=> b!85628 d!57427))

(declare-fun b!85662 () Bool)

(declare-fun e!46458 () List!713)

(declare-fun lt!19936 () List!713)

(assert (=> b!85662 (= e!46458 lt!19936)))

(declare-fun d!57429 () Bool)

(declare-fun e!46456 () Bool)

(assert (=> d!57429 e!46456))

(declare-fun res!44505 () Bool)

(assert (=> d!57429 (=> (not res!44505) (not e!46456))))

(declare-fun lt!19935 () List!713)

(assert (=> d!57429 (= res!44505 (<= (size!682 lt!19935) (size!682 (t!48158 ls!37))))))

(declare-fun e!46455 () List!713)

(assert (=> d!57429 (= lt!19935 e!46455)))

(declare-fun c!21253 () Bool)

(assert (=> d!57429 (= c!21253 (is-Nil!672 (t!48158 ls!37)))))

(assert (=> d!57429 (= (filter!46 (t!48158 ls!37) lambda!10794) lt!19935)))

(declare-fun b!85663 () Bool)

(assert (=> b!85663 (= e!46455 Nil!672)))

(declare-fun b!85664 () Bool)

(declare-fun e!46457 () Bool)

(assert (=> b!85664 (= e!46457 (dynLambda!1021 lambda!10794 (h!1043 (t!48158 ls!37))))))

(declare-fun b!85665 () Bool)

(assert (=> b!85665 (= e!46458 (Cons!670 (h!1043 (t!48158 ls!37)) lt!19936))))

(declare-fun b!85666 () Bool)

(assert (=> b!85666 (= e!46455 e!46458)))

(declare-fun c!21252 () Bool)

(assert (=> b!85666 (= c!21252 e!46457)))

(declare-fun res!44506 () Bool)

(assert (=> b!85666 (=> (not res!44506) (not e!46457))))

(assert (=> b!85666 (= res!44506 (is-Cons!670 (t!48158 ls!37)))))

(assert (=> b!85666 (= lt!19936 (filter!46 (t!48158 (t!48158 ls!37)) lambda!10794))))

(declare-fun b!85667 () Bool)

(declare-fun res!44507 () Bool)

(assert (=> b!85667 (=> (not res!44507) (not e!46456))))

(assert (=> b!85667 (= res!44507 (subset (content!154 lt!19935) (content!154 (t!48158 ls!37))))))

(declare-fun b!85668 () Bool)

(assert (=> b!85668 (= e!46456 (forall!60 lt!19935 lambda!10794))))

(assert (= (and b!85666 res!44506) b!85664))

(assert (= (and b!85666 c!21252) b!85665))

(assert (= (and b!85666 (not c!21252)) b!85662))

(assert (= (and d!57429 c!21253) b!85663))

(assert (= (and d!57429 (not c!21253)) b!85666))

(assert (= (and d!57429 res!44505) b!85667))

(assert (= (and b!85667 res!44507) b!85668))

(declare-fun b_lambda!16891 () Bool)

(assert (=> (not b_lambda!16891) (not b!85664)))

(declare-fun m!81466 () Bool)

(assert (=> b!85668 m!81466))

(declare-fun m!81468 () Bool)

(assert (=> d!57429 m!81468))

(assert (=> d!57429 m!81438))

(declare-fun m!81470 () Bool)

(assert (=> b!85664 m!81470))

(declare-fun m!81472 () Bool)

(assert (=> b!85667 m!81472))

(assert (=> b!85667 m!81460))

(declare-fun m!81474 () Bool)

(assert (=> b!85666 m!81474))

(assert (=> b!85626 d!57429))

(declare-fun d!57431 () Bool)

(declare-fun res!44508 () Bool)

(declare-fun e!46459 () Bool)

(assert (=> d!57431 (=> res!44508 e!46459)))

(assert (=> d!57431 (= res!44508 (not (and (is-Cons!670 (filter!46 ls!37 lambda!10799)) (is-Cons!670 (t!48158 (filter!46 ls!37 lambda!10799))))))))

(assert (=> d!57431 (= (isSorted!1 (filter!46 ls!37 lambda!10799)) e!46459)))

(declare-fun b!85669 () Bool)

(declare-fun e!46460 () Bool)

(assert (=> b!85669 (= e!46459 e!46460)))

(declare-fun res!44509 () Bool)

(assert (=> b!85669 (=> (not res!44509) (not e!46460))))

(assert (=> b!85669 (= res!44509 (<= (h!1043 (filter!46 ls!37 lambda!10799)) (h!1043 (t!48158 (filter!46 ls!37 lambda!10799)))))))

(declare-fun b!85670 () Bool)

(assert (=> b!85670 (= e!46460 (isSorted!1 (t!48158 (filter!46 ls!37 lambda!10799))))))

(assert (= (and d!57431 (not res!44508)) b!85669))

(assert (= (and b!85669 res!44509) b!85670))

(declare-fun m!81476 () Bool)

(assert (=> b!85670 m!81476))

(assert (=> b!85600 d!57431))

(declare-fun b!85671 () Bool)

(declare-fun e!46464 () List!713)

(declare-fun lt!19938 () List!713)

(assert (=> b!85671 (= e!46464 lt!19938)))

(declare-fun d!57433 () Bool)

(declare-fun e!46462 () Bool)

(assert (=> d!57433 e!46462))

(declare-fun res!44510 () Bool)

(assert (=> d!57433 (=> (not res!44510) (not e!46462))))

(declare-fun lt!19937 () List!713)

(assert (=> d!57433 (= res!44510 (<= (size!682 lt!19937) (size!682 ls!37)))))

(declare-fun e!46461 () List!713)

(assert (=> d!57433 (= lt!19937 e!46461)))

(declare-fun c!21255 () Bool)

(assert (=> d!57433 (= c!21255 (is-Nil!672 ls!37))))

(assert (=> d!57433 (= (filter!46 ls!37 lambda!10799) lt!19937)))

(declare-fun b!85672 () Bool)

(assert (=> b!85672 (= e!46461 Nil!672)))

(declare-fun b!85673 () Bool)

(declare-fun e!46463 () Bool)

(assert (=> b!85673 (= e!46463 (dynLambda!1021 lambda!10799 (h!1043 ls!37)))))

(declare-fun b!85674 () Bool)

(assert (=> b!85674 (= e!46464 (Cons!670 (h!1043 ls!37) lt!19938))))

(declare-fun b!85675 () Bool)

(assert (=> b!85675 (= e!46461 e!46464)))

(declare-fun c!21254 () Bool)

(assert (=> b!85675 (= c!21254 e!46463)))

(declare-fun res!44511 () Bool)

(assert (=> b!85675 (=> (not res!44511) (not e!46463))))

(assert (=> b!85675 (= res!44511 (is-Cons!670 ls!37))))

(assert (=> b!85675 (= lt!19938 (filter!46 (t!48158 ls!37) lambda!10799))))

(declare-fun b!85676 () Bool)

(declare-fun res!44512 () Bool)

(assert (=> b!85676 (=> (not res!44512) (not e!46462))))

(assert (=> b!85676 (= res!44512 (subset (content!154 lt!19937) (content!154 ls!37)))))

(declare-fun b!85677 () Bool)

(assert (=> b!85677 (= e!46462 (forall!60 lt!19937 lambda!10799))))

(assert (= (and b!85675 res!44511) b!85673))

(assert (= (and b!85675 c!21254) b!85674))

(assert (= (and b!85675 (not c!21254)) b!85671))

(assert (= (and d!57433 c!21255) b!85672))

(assert (= (and d!57433 (not c!21255)) b!85675))

(assert (= (and d!57433 res!44510) b!85676))

(assert (= (and b!85676 res!44512) b!85677))

(declare-fun b_lambda!16893 () Bool)

(assert (=> (not b_lambda!16893) (not b!85673)))

(declare-fun m!81478 () Bool)

(assert (=> b!85677 m!81478))

(declare-fun m!81480 () Bool)

(assert (=> d!57433 m!81480))

(assert (=> d!57433 m!81426))

(declare-fun m!81482 () Bool)

(assert (=> b!85673 m!81482))

(declare-fun m!81484 () Bool)

(assert (=> b!85676 m!81484))

(assert (=> b!85676 m!81432))

(declare-fun m!81486 () Bool)

(assert (=> b!85675 m!81486))

(assert (=> b!85600 d!57433))

(declare-fun bs!41073 () Bool)

(declare-fun b!85678 () Bool)

(assert (= bs!41073 (and b!85678 b!85593)))

(declare-fun lambda!10801 () Int)

(assert (=> bs!41073 (= lambda!10801 lambda!10794)))

(declare-fun bs!41074 () Bool)

(assert (= bs!41074 (and b!85678 b!85600)))

(assert (=> bs!41074 (= lambda!10801 lambda!10799)))

(declare-fun bs!41075 () Bool)

(assert (= bs!41075 (and b!85678 b!85601)))

(assert (=> bs!41075 (= lambda!10801 lambda!10800)))

(assert (=> b!85678 true))

(declare-fun bs!41076 () Bool)

(declare-fun b!85679 () Bool)

(assert (= bs!41076 (and b!85679 b!85593)))

(declare-fun lambda!10802 () Int)

(assert (=> bs!41076 (= lambda!10802 lambda!10794)))

(declare-fun bs!41077 () Bool)

(assert (= bs!41077 (and b!85679 b!85600)))

(assert (=> bs!41077 (= lambda!10802 lambda!10799)))

(declare-fun bs!41078 () Bool)

(assert (= bs!41078 (and b!85679 b!85601)))

(assert (=> bs!41078 (= lambda!10802 lambda!10800)))

(declare-fun bs!41079 () Bool)

(assert (= bs!41079 (and b!85679 b!85678)))

(assert (=> bs!41079 (= lambda!10802 lambda!10801)))

(assert (=> b!85679 true))

(declare-fun e!46465 () Bool)

(assert (=> b!85678 (= e!46465 (isSorted!1 (filter!46 (t!48158 ls!37) lambda!10801)))))

(declare-fun lt!19939 () Bool)

(assert (=> b!85678 (= lt!19939 (filter_equal_sorted!0 (t!48158 (t!48158 ls!37)) x!29237))))

(declare-fun d!57435 () Bool)

(assert (=> d!57435 e!46465))

(declare-fun c!21256 () Bool)

(assert (=> d!57435 (= c!21256 (is-Cons!670 (t!48158 ls!37)))))

(assert (=> d!57435 (= (filter_equal_sorted!0 (t!48158 ls!37) x!29237) true)))

(assert (=> b!85679 (= e!46465 (isSorted!1 (filter!46 (t!48158 ls!37) lambda!10802)))))

(assert (= (and d!57435 c!21256) b!85678))

(assert (= (and d!57435 (not c!21256)) b!85679))

(declare-fun m!81488 () Bool)

(assert (=> b!85678 m!81488))

(assert (=> b!85678 m!81488))

(declare-fun m!81490 () Bool)

(assert (=> b!85678 m!81490))

(declare-fun m!81492 () Bool)

(assert (=> b!85678 m!81492))

(declare-fun m!81494 () Bool)

(assert (=> b!85679 m!81494))

(assert (=> b!85679 m!81494))

(declare-fun m!81496 () Bool)

(assert (=> b!85679 m!81496))

(assert (=> b!85600 d!57435))

(declare-fun b_lambda!16895 () Bool)

(assert (= b_lambda!16893 (or b!85600 b_lambda!16895)))

(declare-fun bs!41080 () Bool)

(declare-fun d!57437 () Bool)

(assert (= bs!41080 (and d!57437 b!85600)))

(assert (=> bs!41080 (= (dynLambda!1021 lambda!10799 (h!1043 ls!37)) (= (h!1043 ls!37) x!29237))))

(assert (=> b!85673 d!57437))

(declare-fun b_lambda!16897 () Bool)

(assert (= b_lambda!16887 (or b!85601 b_lambda!16897)))

(declare-fun bs!41081 () Bool)

(declare-fun d!57439 () Bool)

(assert (= bs!41081 (and d!57439 b!85601)))

(assert (=> bs!41081 (= (dynLambda!1021 lambda!10800 (h!1043 ls!37)) (= (h!1043 ls!37) x!29237))))

(assert (=> b!85643 d!57439))

(declare-fun b_lambda!16899 () Bool)

(assert (= b_lambda!16891 (or b!85593 b_lambda!16899)))

(declare-fun bs!41082 () Bool)

(declare-fun d!57441 () Bool)

(assert (= bs!41082 (and d!57441 b!85593)))

(assert (=> bs!41082 (= (dynLambda!1021 lambda!10794 (h!1043 (t!48158 ls!37))) (= (h!1043 (t!48158 ls!37)) x!29237))))

(assert (=> b!85664 d!57441))

(declare-fun b_lambda!16901 () Bool)

(assert (= b_lambda!16889 (or b!85593 b_lambda!16901)))

(declare-fun bs!41083 () Bool)

(declare-fun d!57443 () Bool)

(assert (= bs!41083 (and d!57443 b!85593)))

(assert (=> bs!41083 (= (dynLambda!1021 lambda!10794 (h!1043 lt!19927)) (= (h!1043 lt!19927) x!29237))))

(assert (=> b!85660 d!57443))

(push 1)

(assert (not b!85638))

(assert (not b!85636))

(assert (not d!57429))

(assert (not b!85646))

(assert (not b_lambda!16885))

(assert (not b!85668))

(assert (not b!85661))

(assert (not b_lambda!16895))

(assert (not b!85676))

(assert (not b!85667))

(assert (not d!57433))

(assert (not b!85666))

(assert (not b_lambda!16901))

(assert (not b!85645))

(assert (not b_lambda!16899))

(assert (not b!85670))

(assert (not b!85675))

(assert (not d!57421))

(assert (not b!85653))

(assert (not b!85679))

(assert (not b_lambda!16897))

(assert (not b!85640))

(assert (not b!85634))

(assert (not b!85647))

(assert (not b!85678))

(assert (not b!85677))

(assert (not b!85655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

