; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11454 () Bool)

(assert start!11454)

(declare-fun b_free!7459 () Bool)

(declare-fun b_next!39735 () Bool)

(assert (=> start!11454 (= b_free!7459 (not b_next!39735))))

(declare-fun tp!17110 () Bool)

(declare-fun b_and!59643 () Bool)

(assert (=> start!11454 (= tp!17110 b_and!59643)))

(declare-fun b_free!7461 () Bool)

(declare-fun b_next!39737 () Bool)

(assert (=> start!11454 (= b_free!7461 (not b_next!39737))))

(declare-fun tp!17113 () Bool)

(declare-fun b_and!59645 () Bool)

(assert (=> start!11454 (= tp!17113 b_and!59645)))

(declare-fun b_free!7463 () Bool)

(declare-fun b_next!39739 () Bool)

(assert (=> start!11454 (= b_free!7463 (not b_next!39739))))

(declare-fun tp!17112 () Bool)

(declare-fun b_and!59647 () Bool)

(assert (=> start!11454 (= tp!17112 b_and!59647)))

(declare-fun b_free!7465 () Bool)

(declare-fun b_next!39741 () Bool)

(assert (=> start!11454 (= b_free!7465 (not b_next!39741))))

(declare-fun tp!17111 () Bool)

(declare-fun b_and!59649 () Bool)

(assert (=> start!11454 (= tp!17111 b_and!59649)))

(declare-fun b_free!7467 () Bool)

(declare-fun b_next!39743 () Bool)

(assert (=> start!11454 (= b_free!7467 (not b_next!39743))))

(declare-fun tp!17109 () Bool)

(declare-fun b_and!59651 () Bool)

(assert (=> start!11454 (= tp!17109 b_and!59651)))

(declare-fun res!45793 () Bool)

(declare-fun e!47649 () Bool)

(assert (=> start!11454 (=> (not res!45793) (not e!47649))))

(declare-fun sa3!2 () Int)

(declare-fun u1!6 () Int)

(declare-fun sa1!2 () Int)

(declare-fun sa2!2 () Int)

(declare-fun union!0 (Int Int) Int)

(assert (=> start!11454 (= res!45793 (= u1!6 (union!0 (union!0 sa1!2 sa2!2) sa3!2)))))

(assert (=> start!11454 e!47649))

(assert (=> start!11454 tp!17110))

(assert (=> start!11454 tp!17109))

(assert (=> start!11454 tp!17111))

(assert (=> start!11454 true))

(assert (=> start!11454 tp!17112))

(assert (=> start!11454 tp!17113))

(declare-fun b!87745 () Bool)

(declare-fun res!45792 () Bool)

(assert (=> b!87745 (=> (not res!45792) (not e!47649))))

(declare-fun u2!6 () Int)

(assert (=> b!87745 (= res!45792 (= u2!6 (union!0 sa1!2 (union!0 sa2!2 sa3!2))))))

(declare-fun b!87746 () Bool)

(declare-fun x!30576 () (_ BitVec 32))

(declare-fun dynLambda!1030 (Int (_ BitVec 32)) Bool)

(assert (=> b!87746 (= e!47649 (not (= (dynLambda!1030 u1!6 x!30576) (dynLambda!1030 u2!6 x!30576))))))

(assert (= (and start!11454 res!45793) b!87745))

(assert (= (and b!87745 res!45792) b!87746))

(declare-fun b_lambda!17303 () Bool)

(assert (=> (not b_lambda!17303) (not b!87746)))

(declare-fun tb!46489 () Bool)

(declare-fun t!48500 () Bool)

(assert (=> (and start!11454 (= sa3!2 u1!6) t!48500) tb!46489))

(declare-fun result!46919 () Bool)

(assert (=> tb!46489 (= result!46919 true)))

(assert (=> b!87746 t!48500))

(declare-fun b_and!59653 () Bool)

(assert (= b_and!59643 (and (=> t!48500 result!46919) b_and!59653)))

(declare-fun t!48502 () Bool)

(declare-fun tb!46491 () Bool)

(assert (=> (and start!11454 (= u1!6 u1!6) t!48502) tb!46491))

(declare-fun result!46921 () Bool)

(assert (=> tb!46491 (= result!46921 true)))

(assert (=> b!87746 t!48502))

(declare-fun b_and!59655 () Bool)

(assert (= b_and!59651 (and (=> t!48502 result!46921) b_and!59655)))

(declare-fun tb!46493 () Bool)

(declare-fun t!48504 () Bool)

(assert (=> (and start!11454 (= u2!6 u1!6) t!48504) tb!46493))

(declare-fun result!46923 () Bool)

(assert (=> tb!46493 (= result!46923 true)))

(assert (=> b!87746 t!48504))

(declare-fun b_and!59657 () Bool)

(assert (= b_and!59647 (and (=> t!48504 result!46923) b_and!59657)))

(declare-fun tb!46495 () Bool)

(declare-fun t!48506 () Bool)

(assert (=> (and start!11454 (= sa2!2 u1!6) t!48506) tb!46495))

(declare-fun result!46925 () Bool)

(assert (=> tb!46495 (= result!46925 true)))

(assert (=> b!87746 t!48506))

(declare-fun b_and!59659 () Bool)

(assert (= b_and!59645 (and (=> t!48506 result!46925) b_and!59659)))

(declare-fun tb!46497 () Bool)

(declare-fun t!48508 () Bool)

(assert (=> (and start!11454 (= sa1!2 u1!6) t!48508) tb!46497))

(declare-fun result!46927 () Bool)

(assert (=> tb!46497 (= result!46927 true)))

(assert (=> b!87746 t!48508))

(declare-fun b_and!59661 () Bool)

(assert (= b_and!59649 (and (=> t!48508 result!46927) b_and!59661)))

(declare-fun b_lambda!17305 () Bool)

(assert (=> (not b_lambda!17305) (not b!87746)))

(declare-fun t!48510 () Bool)

(declare-fun tb!46499 () Bool)

(assert (=> (and start!11454 (= sa3!2 u2!6) t!48510) tb!46499))

(declare-fun result!46929 () Bool)

(assert (=> tb!46499 (= result!46929 true)))

(assert (=> b!87746 t!48510))

(declare-fun b_and!59663 () Bool)

(assert (= b_and!59653 (and (=> t!48510 result!46929) b_and!59663)))

(declare-fun t!48512 () Bool)

(declare-fun tb!46501 () Bool)

(assert (=> (and start!11454 (= u2!6 u2!6) t!48512) tb!46501))

(declare-fun result!46931 () Bool)

(assert (=> tb!46501 (= result!46931 true)))

(assert (=> b!87746 t!48512))

(declare-fun b_and!59665 () Bool)

(assert (= b_and!59657 (and (=> t!48512 result!46931) b_and!59665)))

(declare-fun t!48514 () Bool)

(declare-fun tb!46503 () Bool)

(assert (=> (and start!11454 (= sa2!2 u2!6) t!48514) tb!46503))

(declare-fun result!46933 () Bool)

(assert (=> tb!46503 (= result!46933 true)))

(assert (=> b!87746 t!48514))

(declare-fun b_and!59667 () Bool)

(assert (= b_and!59659 (and (=> t!48514 result!46933) b_and!59667)))

(declare-fun t!48516 () Bool)

(declare-fun tb!46505 () Bool)

(assert (=> (and start!11454 (= sa1!2 u2!6) t!48516) tb!46505))

(declare-fun result!46935 () Bool)

(assert (=> tb!46505 (= result!46935 true)))

(assert (=> b!87746 t!48516))

(declare-fun b_and!59669 () Bool)

(assert (= b_and!59661 (and (=> t!48516 result!46935) b_and!59669)))

(declare-fun tb!46507 () Bool)

(declare-fun t!48518 () Bool)

(assert (=> (and start!11454 (= u1!6 u2!6) t!48518) tb!46507))

(declare-fun result!46937 () Bool)

(assert (=> tb!46507 (= result!46937 true)))

(assert (=> b!87746 t!48518))

(declare-fun b_and!59671 () Bool)

(assert (= b_and!59655 (and (=> t!48518 result!46937) b_and!59671)))

(declare-fun m!84038 () Bool)

(assert (=> start!11454 m!84038))

(assert (=> start!11454 m!84038))

(declare-fun m!84040 () Bool)

(assert (=> start!11454 m!84040))

(declare-fun m!84042 () Bool)

(assert (=> b!87745 m!84042))

(assert (=> b!87745 m!84042))

(declare-fun m!84044 () Bool)

(assert (=> b!87745 m!84044))

(declare-fun m!84046 () Bool)

(assert (=> b!87746 m!84046))

(declare-fun m!84048 () Bool)

(assert (=> b!87746 m!84048))

(push 1)

(assert (not b_next!39739))

(assert (not b_next!39743))

(assert (not b_lambda!17303))

(assert (not b!87745))

(assert b_and!59663)

(assert b_and!59665)

(assert (not b_next!39737))

(assert (not b_next!39735))

(assert b_and!59669)

(assert b_and!59667)

(assert b_and!59671)

(assert (not b_next!39741))

(assert (not b_lambda!17305))

(assert (not start!11454))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39739))

(assert (not b_next!39743))

(assert b_and!59663)

(assert b_and!59665)

(assert (not b_next!39737))

(assert (not b_next!39735))

(assert b_and!59669)

(assert b_and!59667)

(assert b_and!59671)

(assert (not b_next!39741))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17307 () Bool)

(assert (= b_lambda!17305 (or (and start!11454 b_free!7461 (= sa2!2 u2!6)) (and start!11454 b_free!7459 (= sa3!2 u2!6)) (and start!11454 b_free!7463) (and start!11454 b_free!7467 (= u1!6 u2!6)) (and start!11454 b_free!7465 (= sa1!2 u2!6)) b_lambda!17307)))

(declare-fun b_lambda!17309 () Bool)

(assert (= b_lambda!17303 (or (and start!11454 b_free!7459 (= sa3!2 u1!6)) (and start!11454 b_free!7465 (= sa1!2 u1!6)) (and start!11454 b_free!7467) (and start!11454 b_free!7463 (= u2!6 u1!6)) (and start!11454 b_free!7461 (= sa2!2 u1!6)) b_lambda!17309)))

(push 1)

(assert (not b_next!39739))

(assert (not b_next!39743))

(assert (not b!87745))

(assert (not b_lambda!17309))

(assert (not b_lambda!17307))

(assert b_and!59663)

(assert b_and!59665)

(assert (not b_next!39737))

(assert (not b_next!39735))

(assert b_and!59669)

(assert b_and!59667)

(assert b_and!59671)

(assert (not b_next!39741))

(assert (not start!11454))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39739))

(assert (not b_next!39743))

(assert b_and!59663)

(assert b_and!59665)

(assert (not b_next!39737))

(assert (not b_next!39735))

(assert b_and!59669)

(assert b_and!59667)

(assert b_and!59671)

(assert (not b_next!39741))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58465 () Bool)

(assert (=> d!58465 true))

(declare-fun order!479 () Int)

(declare-fun lambda!10849 () Int)

(declare-fun dynLambda!1031 (Int Int) Int)

(assert (=> d!58465 (< (dynLambda!1031 order!479 sa1!2) (dynLambda!1031 order!479 lambda!10849))))

(assert (=> d!58465 true))

(assert (=> d!58465 (< (dynLambda!1031 order!479 (union!0 sa2!2 sa3!2)) (dynLambda!1031 order!479 lambda!10849))))

(declare-fun b_next!39745 () Bool)

(assert (=> start!11454 (= b_next!39739 (or (and d!58465 (= lambda!10849 u2!6)) b_next!39745))))

(declare-fun b_next!39747 () Bool)

(assert (=> start!11454 (= b_next!39743 (or (and d!58465 (= lambda!10849 u1!6)) b_next!39747))))

(declare-fun b_next!39749 () Bool)

(assert (=> start!11454 (= b_next!39737 (or (and d!58465 (= lambda!10849 sa2!2)) b_next!39749))))

(declare-fun b_next!39751 () Bool)

(assert (=> start!11454 (= b_next!39735 (or (and d!58465 (= lambda!10849 sa3!2)) b_next!39751))))

(assert (=> d!58465 (= (union!0 sa1!2 (union!0 sa2!2 sa3!2)) lambda!10849)))

(assert (=> b!87745 d!58465))

(declare-fun bs!41230 () Bool)

(declare-fun d!58467 () Bool)

(assert (= bs!41230 (and d!58467 d!58465)))

(declare-fun lambda!10850 () Int)

(assert (=> bs!41230 (= (and (= sa2!2 sa1!2) (= sa3!2 (union!0 sa2!2 sa3!2))) (= lambda!10850 lambda!10849))))

(assert (=> d!58467 true))

(assert (=> d!58467 (< (dynLambda!1031 order!479 sa2!2) (dynLambda!1031 order!479 lambda!10850))))

(assert (=> d!58467 true))

(assert (=> d!58467 (< (dynLambda!1031 order!479 sa3!2) (dynLambda!1031 order!479 lambda!10850))))

(declare-fun b_next!39753 () Bool)

(assert (=> start!11454 (= b_next!39745 (or (and d!58467 (= lambda!10850 u2!6)) b_next!39753))))

(declare-fun b_next!39755 () Bool)

(assert (=> start!11454 (= b_next!39747 (or (and d!58467 (= lambda!10850 u1!6)) b_next!39755))))

(declare-fun b_next!39757 () Bool)

(assert (=> start!11454 (= b_next!39741 (or (and d!58467 (= lambda!10850 sa1!2)) b_next!39757))))

(assert (=> d!58467 (= (union!0 sa2!2 sa3!2) lambda!10850)))

(assert (=> b!87745 d!58467))

(declare-fun bs!41231 () Bool)

(declare-fun d!58469 () Bool)

(assert (= bs!41231 (and d!58469 d!58465)))

(declare-fun lambda!10851 () Int)

(assert (=> bs!41231 (= (and (= (union!0 sa1!2 sa2!2) sa1!2) (= sa3!2 (union!0 sa2!2 sa3!2))) (= lambda!10851 lambda!10849))))

(declare-fun bs!41232 () Bool)

(assert (= bs!41232 (and d!58469 d!58467)))

(assert (=> bs!41232 (= (= (union!0 sa1!2 sa2!2) sa2!2) (= lambda!10851 lambda!10850))))

(assert (=> d!58469 true))

(assert (=> d!58469 (< (dynLambda!1031 order!479 (union!0 sa1!2 sa2!2)) (dynLambda!1031 order!479 lambda!10851))))

(assert (=> d!58469 true))

(assert (=> d!58469 (< (dynLambda!1031 order!479 sa3!2) (dynLambda!1031 order!479 lambda!10851))))

(declare-fun b_next!39759 () Bool)

(assert (=> start!11454 (= b_next!39753 (or (and d!58469 (= lambda!10851 u2!6)) b_next!39759))))

(declare-fun b_next!39761 () Bool)

(assert (=> start!11454 (= b_next!39755 (or (and d!58469 (= lambda!10851 u1!6)) b_next!39761))))

(declare-fun b_next!39763 () Bool)

(assert (=> start!11454 (= b_next!39757 (or (and d!58469 (= lambda!10851 sa1!2)) b_next!39763))))

(declare-fun b_next!39765 () Bool)

(assert (=> start!11454 (= b_next!39749 (or (and d!58469 (= lambda!10851 sa2!2)) b_next!39765))))

(assert (=> d!58469 (= (union!0 (union!0 sa1!2 sa2!2) sa3!2) lambda!10851)))

(assert (=> start!11454 d!58469))

(declare-fun bs!41233 () Bool)

(declare-fun d!58471 () Bool)

(assert (= bs!41233 (and d!58471 d!58465)))

(declare-fun lambda!10852 () Int)

(assert (=> bs!41233 (= (= sa2!2 (union!0 sa2!2 sa3!2)) (= lambda!10852 lambda!10849))))

(declare-fun bs!41234 () Bool)

(assert (= bs!41234 (and d!58471 d!58467)))

(assert (=> bs!41234 (= (and (= sa1!2 sa2!2) (= sa2!2 sa3!2)) (= lambda!10852 lambda!10850))))

(declare-fun bs!41235 () Bool)

(assert (= bs!41235 (and d!58471 d!58469)))

(assert (=> bs!41235 (= (and (= sa1!2 (union!0 sa1!2 sa2!2)) (= sa2!2 sa3!2)) (= lambda!10852 lambda!10851))))

(assert (=> d!58471 true))

(assert (=> d!58471 (< (dynLambda!1031 order!479 sa1!2) (dynLambda!1031 order!479 lambda!10852))))

(assert (=> d!58471 true))

(assert (=> d!58471 (< (dynLambda!1031 order!479 sa2!2) (dynLambda!1031 order!479 lambda!10852))))

(declare-fun b_next!39767 () Bool)

(assert (=> start!11454 (= b_next!39759 (or (and d!58471 (= lambda!10852 u2!6)) b_next!39767))))

(declare-fun b_next!39769 () Bool)

(assert (=> start!11454 (= b_next!39761 (or (and d!58471 (= lambda!10852 u1!6)) b_next!39769))))

(declare-fun b_next!39771 () Bool)

(assert (=> start!11454 (= b_next!39751 (or (and d!58471 (= lambda!10852 sa3!2)) b_next!39771))))

(assert (=> d!58471 (= (union!0 sa1!2 sa2!2) lambda!10852)))

(assert (=> start!11454 d!58471))

(push 1)

(assert (not b_next!39763))

(assert (not b_next!39767))

(assert (not b_next!39765))

(assert (not b_lambda!17309))

(assert (not b_lambda!17307))

(assert b_and!59663)

(assert b_and!59665)

(assert (not b_next!39769))

(assert b_and!59669)

(assert b_and!59667)

(assert b_and!59671)

(assert (not b_next!39771))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39763))

(assert (not b_next!39767))

(assert (not b_next!39765))

(assert b_and!59663)

(assert b_and!59665)

(assert (not b_next!39769))

(assert b_and!59669)

(assert b_and!59667)

(assert b_and!59671)

(assert (not b_next!39771))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17311 () Bool)

(assert (= b_lambda!17307 (or (and d!58465 (= lambda!10849 u2!6)) (and d!58467 (= lambda!10850 u2!6)) (and d!58469 (= lambda!10851 u2!6)) (and d!58471 (= lambda!10852 u2!6)) b_lambda!17311)))

(declare-fun bs!41236 () Bool)

(declare-fun d!58473 () Bool)

(assert (= bs!41236 (and d!58473 d!58465)))

(declare-fun res!45796 () Bool)

(declare-fun e!47652 () Bool)

(assert (=> bs!41236 (=> res!45796 e!47652)))

(assert (=> bs!41236 (= res!45796 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41236 (= (dynLambda!1030 lambda!10849 x!30576) e!47652)))

(declare-fun b!87751 () Bool)

(assert (=> b!87751 (= e!47652 (dynLambda!1030 (union!0 sa2!2 sa3!2) x!30576))))

(assert (= (and bs!41236 (not res!45796)) b!87751))

(declare-fun b_lambda!17315 () Bool)

(assert (=> (not b_lambda!17315) (not bs!41236)))

(declare-fun t!48520 () Bool)

(declare-fun tb!46509 () Bool)

(assert (=> (and start!11454 (= sa1!2 sa1!2) t!48520) tb!46509))

(declare-fun result!46939 () Bool)

(assert (=> tb!46509 (= result!46939 true)))

(assert (=> bs!41236 t!48520))

(declare-fun b_and!59673 () Bool)

(assert (= b_and!59669 (and (=> t!48520 result!46939) b_and!59673)))

(declare-fun t!48522 () Bool)

(declare-fun tb!46511 () Bool)

(assert (=> (and start!11454 (= u1!6 sa1!2) t!48522) tb!46511))

(declare-fun result!46941 () Bool)

(assert (=> tb!46511 (= result!46941 true)))

(assert (=> bs!41236 t!48522))

(declare-fun b_and!59675 () Bool)

(assert (= b_and!59671 (and (=> t!48522 result!46941) b_and!59675)))

(declare-fun tb!46513 () Bool)

(declare-fun t!48524 () Bool)

(assert (=> (and start!11454 (= sa3!2 sa1!2) t!48524) tb!46513))

(declare-fun result!46943 () Bool)

(assert (=> tb!46513 (= result!46943 true)))

(assert (=> bs!41236 t!48524))

(declare-fun b_and!59677 () Bool)

(assert (= b_and!59663 (and (=> t!48524 result!46943) b_and!59677)))

(declare-fun tb!46515 () Bool)

(declare-fun t!48526 () Bool)

(assert (=> (and start!11454 (= u2!6 sa1!2) t!48526) tb!46515))

(declare-fun result!46945 () Bool)

(assert (=> tb!46515 (= result!46945 true)))

(assert (=> bs!41236 t!48526))

(declare-fun b_and!59679 () Bool)

(assert (= b_and!59665 (and (=> t!48526 result!46945) b_and!59679)))

(declare-fun t!48528 () Bool)

(declare-fun tb!46517 () Bool)

(assert (=> (and start!11454 (= sa2!2 sa1!2) t!48528) tb!46517))

(declare-fun result!46947 () Bool)

(assert (=> tb!46517 (= result!46947 true)))

(assert (=> bs!41236 t!48528))

(declare-fun b_and!59681 () Bool)

(assert (= b_and!59667 (and (=> t!48528 result!46947) b_and!59681)))

(declare-fun b_lambda!17317 () Bool)

(assert (=> (not b_lambda!17317) (not b!87751)))

(declare-fun m!84050 () Bool)

(assert (=> bs!41236 m!84050))

(declare-fun m!84052 () Bool)

(assert (=> b!87751 m!84052))

(assert (=> (and d!58465 (= lambda!10849 u2!6) b!87746) d!58473))

(declare-fun bs!41237 () Bool)

(declare-fun d!58475 () Bool)

(assert (= bs!41237 (and d!58475 d!58467)))

(declare-fun res!45797 () Bool)

(declare-fun e!47653 () Bool)

(assert (=> bs!41237 (=> res!45797 e!47653)))

(assert (=> bs!41237 (= res!45797 (dynLambda!1030 sa2!2 x!30576))))

(assert (=> bs!41237 (= (dynLambda!1030 lambda!10850 x!30576) e!47653)))

(declare-fun b!87752 () Bool)

(assert (=> b!87752 (= e!47653 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41237 (not res!45797)) b!87752))

(declare-fun b_lambda!17319 () Bool)

(assert (=> (not b_lambda!17319) (not bs!41237)))

(declare-fun tb!46519 () Bool)

(declare-fun t!48530 () Bool)

(assert (=> (and start!11454 (= sa1!2 sa2!2) t!48530) tb!46519))

(declare-fun result!46949 () Bool)

(assert (=> tb!46519 (= result!46949 true)))

(assert (=> bs!41237 t!48530))

(declare-fun b_and!59683 () Bool)

(assert (= b_and!59673 (and (=> t!48530 result!46949) b_and!59683)))

(declare-fun t!48532 () Bool)

(declare-fun tb!46521 () Bool)

(assert (=> (and start!11454 (= sa2!2 sa2!2) t!48532) tb!46521))

(declare-fun result!46951 () Bool)

(assert (=> tb!46521 (= result!46951 true)))

(assert (=> bs!41237 t!48532))

(declare-fun b_and!59685 () Bool)

(assert (= b_and!59681 (and (=> t!48532 result!46951) b_and!59685)))

(declare-fun t!48534 () Bool)

(declare-fun tb!46523 () Bool)

(assert (=> (and start!11454 (= u1!6 sa2!2) t!48534) tb!46523))

(declare-fun result!46953 () Bool)

(assert (=> tb!46523 (= result!46953 true)))

(assert (=> bs!41237 t!48534))

(declare-fun b_and!59687 () Bool)

(assert (= b_and!59675 (and (=> t!48534 result!46953) b_and!59687)))

(declare-fun t!48536 () Bool)

(declare-fun tb!46525 () Bool)

(assert (=> (and start!11454 (= sa3!2 sa2!2) t!48536) tb!46525))

(declare-fun result!46955 () Bool)

(assert (=> tb!46525 (= result!46955 true)))

(assert (=> bs!41237 t!48536))

(declare-fun b_and!59689 () Bool)

(assert (= b_and!59677 (and (=> t!48536 result!46955) b_and!59689)))

(declare-fun tb!46527 () Bool)

(declare-fun t!48538 () Bool)

(assert (=> (and start!11454 (= u2!6 sa2!2) t!48538) tb!46527))

(declare-fun result!46957 () Bool)

(assert (=> tb!46527 (= result!46957 true)))

(assert (=> bs!41237 t!48538))

(declare-fun b_and!59691 () Bool)

(assert (= b_and!59679 (and (=> t!48538 result!46957) b_and!59691)))

(declare-fun b_lambda!17321 () Bool)

(assert (=> (not b_lambda!17321) (not b!87752)))

(declare-fun tb!46529 () Bool)

(declare-fun t!48540 () Bool)

(assert (=> (and start!11454 (= u2!6 sa3!2) t!48540) tb!46529))

(declare-fun result!46959 () Bool)

(assert (=> tb!46529 (= result!46959 true)))

(assert (=> b!87752 t!48540))

(declare-fun b_and!59693 () Bool)

(assert (= b_and!59691 (and (=> t!48540 result!46959) b_and!59693)))

(declare-fun tb!46531 () Bool)

(declare-fun t!48542 () Bool)

(assert (=> (and start!11454 (= sa1!2 sa3!2) t!48542) tb!46531))

(declare-fun result!46961 () Bool)

(assert (=> tb!46531 (= result!46961 true)))

(assert (=> b!87752 t!48542))

(declare-fun b_and!59695 () Bool)

(assert (= b_and!59683 (and (=> t!48542 result!46961) b_and!59695)))

(declare-fun t!48544 () Bool)

(declare-fun tb!46533 () Bool)

(assert (=> (and start!11454 (= sa3!2 sa3!2) t!48544) tb!46533))

(declare-fun result!46963 () Bool)

(assert (=> tb!46533 (= result!46963 true)))

(assert (=> b!87752 t!48544))

(declare-fun b_and!59697 () Bool)

(assert (= b_and!59689 (and (=> t!48544 result!46963) b_and!59697)))

(declare-fun tb!46535 () Bool)

(declare-fun t!48546 () Bool)

(assert (=> (and start!11454 (= sa2!2 sa3!2) t!48546) tb!46535))

(declare-fun result!46965 () Bool)

(assert (=> tb!46535 (= result!46965 true)))

(assert (=> b!87752 t!48546))

(declare-fun b_and!59699 () Bool)

(assert (= b_and!59685 (and (=> t!48546 result!46965) b_and!59699)))

(declare-fun t!48548 () Bool)

(declare-fun tb!46537 () Bool)

(assert (=> (and start!11454 (= u1!6 sa3!2) t!48548) tb!46537))

(declare-fun result!46967 () Bool)

(assert (=> tb!46537 (= result!46967 true)))

(assert (=> b!87752 t!48548))

(declare-fun b_and!59701 () Bool)

(assert (= b_and!59687 (and (=> t!48548 result!46967) b_and!59701)))

(declare-fun m!84054 () Bool)

(assert (=> bs!41237 m!84054))

(declare-fun m!84056 () Bool)

(assert (=> b!87752 m!84056))

(assert (=> (and d!58467 (= lambda!10850 u2!6) b!87746) d!58475))

(declare-fun bs!41238 () Bool)

(declare-fun d!58477 () Bool)

(assert (= bs!41238 (and d!58477 d!58469)))

(declare-fun res!45798 () Bool)

(declare-fun e!47654 () Bool)

(assert (=> bs!41238 (=> res!45798 e!47654)))

(assert (=> bs!41238 (= res!45798 (dynLambda!1030 (union!0 sa1!2 sa2!2) x!30576))))

(assert (=> bs!41238 (= (dynLambda!1030 lambda!10851 x!30576) e!47654)))

(declare-fun b!87753 () Bool)

(assert (=> b!87753 (= e!47654 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41238 (not res!45798)) b!87753))

(declare-fun b_lambda!17323 () Bool)

(assert (=> (not b_lambda!17323) (not bs!41238)))

(declare-fun b_lambda!17325 () Bool)

(assert (=> (not b_lambda!17325) (not b!87753)))

(assert (=> b!87753 t!48544))

(declare-fun b_and!59703 () Bool)

(assert (= b_and!59697 (and (=> t!48544 result!46963) b_and!59703)))

(assert (=> b!87753 t!48548))

(declare-fun b_and!59705 () Bool)

(assert (= b_and!59701 (and (=> t!48548 result!46967) b_and!59705)))

(assert (=> b!87753 t!48542))

(declare-fun b_and!59707 () Bool)

(assert (= b_and!59695 (and (=> t!48542 result!46961) b_and!59707)))

(assert (=> b!87753 t!48546))

(declare-fun b_and!59709 () Bool)

(assert (= b_and!59699 (and (=> t!48546 result!46965) b_and!59709)))

(assert (=> b!87753 t!48540))

(declare-fun b_and!59711 () Bool)

(assert (= b_and!59693 (and (=> t!48540 result!46959) b_and!59711)))

(declare-fun m!84058 () Bool)

(assert (=> bs!41238 m!84058))

(assert (=> b!87753 m!84056))

(assert (=> (and d!58469 (= lambda!10851 u2!6) b!87746) d!58477))

(declare-fun bs!41239 () Bool)

(declare-fun d!58479 () Bool)

(assert (= bs!41239 (and d!58479 d!58471)))

(declare-fun res!45799 () Bool)

(declare-fun e!47655 () Bool)

(assert (=> bs!41239 (=> res!45799 e!47655)))

(assert (=> bs!41239 (= res!45799 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41239 (= (dynLambda!1030 lambda!10852 x!30576) e!47655)))

(declare-fun b!87754 () Bool)

(assert (=> b!87754 (= e!47655 (dynLambda!1030 sa2!2 x!30576))))

(assert (= (and bs!41239 (not res!45799)) b!87754))

(declare-fun b_lambda!17327 () Bool)

(assert (=> (not b_lambda!17327) (not bs!41239)))

(assert (=> bs!41239 t!48528))

(declare-fun b_and!59713 () Bool)

(assert (= b_and!59709 (and (=> t!48528 result!46947) b_and!59713)))

(assert (=> bs!41239 t!48526))

(declare-fun b_and!59715 () Bool)

(assert (= b_and!59711 (and (=> t!48526 result!46945) b_and!59715)))

(assert (=> bs!41239 t!48520))

(declare-fun b_and!59717 () Bool)

(assert (= b_and!59707 (and (=> t!48520 result!46939) b_and!59717)))

(assert (=> bs!41239 t!48524))

(declare-fun b_and!59719 () Bool)

(assert (= b_and!59703 (and (=> t!48524 result!46943) b_and!59719)))

(assert (=> bs!41239 t!48522))

(declare-fun b_and!59721 () Bool)

(assert (= b_and!59705 (and (=> t!48522 result!46941) b_and!59721)))

(declare-fun b_lambda!17329 () Bool)

(assert (=> (not b_lambda!17329) (not b!87754)))

(assert (=> b!87754 t!48534))

(declare-fun b_and!59723 () Bool)

(assert (= b_and!59721 (and (=> t!48534 result!46953) b_and!59723)))

(assert (=> b!87754 t!48530))

(declare-fun b_and!59725 () Bool)

(assert (= b_and!59717 (and (=> t!48530 result!46949) b_and!59725)))

(assert (=> b!87754 t!48536))

(declare-fun b_and!59727 () Bool)

(assert (= b_and!59719 (and (=> t!48536 result!46955) b_and!59727)))

(assert (=> b!87754 t!48532))

(declare-fun b_and!59729 () Bool)

(assert (= b_and!59713 (and (=> t!48532 result!46951) b_and!59729)))

(assert (=> b!87754 t!48538))

(declare-fun b_and!59731 () Bool)

(assert (= b_and!59715 (and (=> t!48538 result!46957) b_and!59731)))

(assert (=> bs!41239 m!84050))

(assert (=> b!87754 m!84054))

(assert (=> (and d!58471 (= lambda!10852 u2!6) b!87746) d!58479))

(declare-fun b_lambda!17313 () Bool)

(assert (= b_lambda!17309 (or (and d!58465 (= lambda!10849 u1!6)) (and d!58467 (= lambda!10850 u1!6)) (and d!58469 (= lambda!10851 u1!6)) (and d!58471 (= lambda!10852 u1!6)) b_lambda!17313)))

(declare-fun bs!41240 () Bool)

(declare-fun d!58481 () Bool)

(assert (= bs!41240 (and d!58481 d!58465)))

(declare-fun res!45800 () Bool)

(declare-fun e!47656 () Bool)

(assert (=> bs!41240 (=> res!45800 e!47656)))

(assert (=> bs!41240 (= res!45800 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41240 (= (dynLambda!1030 lambda!10849 x!30576) e!47656)))

(declare-fun b!87755 () Bool)

(assert (=> b!87755 (= e!47656 (dynLambda!1030 (union!0 sa2!2 sa3!2) x!30576))))

(assert (= (and bs!41240 (not res!45800)) b!87755))

(declare-fun b_lambda!17331 () Bool)

(assert (=> (not b_lambda!17331) (not bs!41240)))

(assert (=> bs!41240 t!48526))

(declare-fun b_and!59733 () Bool)

(assert (= b_and!59731 (and (=> t!48526 result!46945) b_and!59733)))

(assert (=> bs!41240 t!48524))

(declare-fun b_and!59735 () Bool)

(assert (= b_and!59727 (and (=> t!48524 result!46943) b_and!59735)))

(assert (=> bs!41240 t!48528))

(declare-fun b_and!59737 () Bool)

(assert (= b_and!59729 (and (=> t!48528 result!46947) b_and!59737)))

(assert (=> bs!41240 t!48520))

(declare-fun b_and!59739 () Bool)

(assert (= b_and!59725 (and (=> t!48520 result!46939) b_and!59739)))

(assert (=> bs!41240 t!48522))

(declare-fun b_and!59741 () Bool)

(assert (= b_and!59723 (and (=> t!48522 result!46941) b_and!59741)))

(declare-fun b_lambda!17333 () Bool)

(assert (=> (not b_lambda!17333) (not b!87755)))

(assert (=> bs!41240 m!84050))

(assert (=> b!87755 m!84052))

(assert (=> (and d!58465 (= lambda!10849 u1!6) b!87746) d!58481))

(declare-fun bs!41241 () Bool)

(declare-fun d!58483 () Bool)

(assert (= bs!41241 (and d!58483 d!58467)))

(declare-fun res!45801 () Bool)

(declare-fun e!47657 () Bool)

(assert (=> bs!41241 (=> res!45801 e!47657)))

(assert (=> bs!41241 (= res!45801 (dynLambda!1030 sa2!2 x!30576))))

(assert (=> bs!41241 (= (dynLambda!1030 lambda!10850 x!30576) e!47657)))

(declare-fun b!87756 () Bool)

(assert (=> b!87756 (= e!47657 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41241 (not res!45801)) b!87756))

(declare-fun b_lambda!17335 () Bool)

(assert (=> (not b_lambda!17335) (not bs!41241)))

(assert (=> bs!41241 t!48530))

(declare-fun b_and!59743 () Bool)

(assert (= b_and!59739 (and (=> t!48530 result!46949) b_and!59743)))

(assert (=> bs!41241 t!48534))

(declare-fun b_and!59745 () Bool)

(assert (= b_and!59741 (and (=> t!48534 result!46953) b_and!59745)))

(assert (=> bs!41241 t!48538))

(declare-fun b_and!59747 () Bool)

(assert (= b_and!59733 (and (=> t!48538 result!46957) b_and!59747)))

(assert (=> bs!41241 t!48536))

(declare-fun b_and!59749 () Bool)

(assert (= b_and!59735 (and (=> t!48536 result!46955) b_and!59749)))

(assert (=> bs!41241 t!48532))

(declare-fun b_and!59751 () Bool)

(assert (= b_and!59737 (and (=> t!48532 result!46951) b_and!59751)))

(declare-fun b_lambda!17337 () Bool)

(assert (=> (not b_lambda!17337) (not b!87756)))

(assert (=> b!87756 t!48540))

(declare-fun b_and!59753 () Bool)

(assert (= b_and!59747 (and (=> t!48540 result!46959) b_and!59753)))

(assert (=> b!87756 t!48542))

(declare-fun b_and!59755 () Bool)

(assert (= b_and!59743 (and (=> t!48542 result!46961) b_and!59755)))

(assert (=> b!87756 t!48546))

(declare-fun b_and!59757 () Bool)

(assert (= b_and!59751 (and (=> t!48546 result!46965) b_and!59757)))

(assert (=> b!87756 t!48544))

(declare-fun b_and!59759 () Bool)

(assert (= b_and!59749 (and (=> t!48544 result!46963) b_and!59759)))

(assert (=> b!87756 t!48548))

(declare-fun b_and!59761 () Bool)

(assert (= b_and!59745 (and (=> t!48548 result!46967) b_and!59761)))

(assert (=> bs!41241 m!84054))

(assert (=> b!87756 m!84056))

(assert (=> (and d!58467 (= lambda!10850 u1!6) b!87746) d!58483))

(declare-fun bs!41242 () Bool)

(declare-fun d!58485 () Bool)

(assert (= bs!41242 (and d!58485 d!58469)))

(declare-fun res!45802 () Bool)

(declare-fun e!47658 () Bool)

(assert (=> bs!41242 (=> res!45802 e!47658)))

(assert (=> bs!41242 (= res!45802 (dynLambda!1030 (union!0 sa1!2 sa2!2) x!30576))))

(assert (=> bs!41242 (= (dynLambda!1030 lambda!10851 x!30576) e!47658)))

(declare-fun b!87757 () Bool)

(assert (=> b!87757 (= e!47658 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41242 (not res!45802)) b!87757))

(declare-fun b_lambda!17339 () Bool)

(assert (=> (not b_lambda!17339) (not bs!41242)))

(declare-fun b_lambda!17341 () Bool)

(assert (=> (not b_lambda!17341) (not b!87757)))

(assert (=> b!87757 t!48544))

(declare-fun b_and!59763 () Bool)

(assert (= b_and!59759 (and (=> t!48544 result!46963) b_and!59763)))

(assert (=> b!87757 t!48548))

(declare-fun b_and!59765 () Bool)

(assert (= b_and!59761 (and (=> t!48548 result!46967) b_and!59765)))

(assert (=> b!87757 t!48542))

(declare-fun b_and!59767 () Bool)

(assert (= b_and!59755 (and (=> t!48542 result!46961) b_and!59767)))

(assert (=> b!87757 t!48540))

(declare-fun b_and!59769 () Bool)

(assert (= b_and!59753 (and (=> t!48540 result!46959) b_and!59769)))

(assert (=> b!87757 t!48546))

(declare-fun b_and!59771 () Bool)

(assert (= b_and!59757 (and (=> t!48546 result!46965) b_and!59771)))

(assert (=> bs!41242 m!84058))

(assert (=> b!87757 m!84056))

(assert (=> (and d!58469 (= lambda!10851 u1!6) b!87746) d!58485))

(declare-fun bs!41243 () Bool)

(declare-fun d!58487 () Bool)

(assert (= bs!41243 (and d!58487 d!58471)))

(declare-fun res!45803 () Bool)

(declare-fun e!47659 () Bool)

(assert (=> bs!41243 (=> res!45803 e!47659)))

(assert (=> bs!41243 (= res!45803 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41243 (= (dynLambda!1030 lambda!10852 x!30576) e!47659)))

(declare-fun b!87758 () Bool)

(assert (=> b!87758 (= e!47659 (dynLambda!1030 sa2!2 x!30576))))

(assert (= (and bs!41243 (not res!45803)) b!87758))

(declare-fun b_lambda!17343 () Bool)

(assert (=> (not b_lambda!17343) (not bs!41243)))

(assert (=> bs!41243 t!48520))

(declare-fun b_and!59773 () Bool)

(assert (= b_and!59767 (and (=> t!48520 result!46939) b_and!59773)))

(assert (=> bs!41243 t!48528))

(declare-fun b_and!59775 () Bool)

(assert (= b_and!59771 (and (=> t!48528 result!46947) b_and!59775)))

(assert (=> bs!41243 t!48526))

(declare-fun b_and!59777 () Bool)

(assert (= b_and!59769 (and (=> t!48526 result!46945) b_and!59777)))

(assert (=> bs!41243 t!48522))

(declare-fun b_and!59779 () Bool)

(assert (= b_and!59765 (and (=> t!48522 result!46941) b_and!59779)))

(assert (=> bs!41243 t!48524))

(declare-fun b_and!59781 () Bool)

(assert (= b_and!59763 (and (=> t!48524 result!46943) b_and!59781)))

(declare-fun b_lambda!17345 () Bool)

(assert (=> (not b_lambda!17345) (not b!87758)))

(assert (=> b!87758 t!48532))

(declare-fun b_and!59783 () Bool)

(assert (= b_and!59775 (and (=> t!48532 result!46951) b_and!59783)))

(assert (=> b!87758 t!48538))

(declare-fun b_and!59785 () Bool)

(assert (= b_and!59777 (and (=> t!48538 result!46957) b_and!59785)))

(assert (=> b!87758 t!48534))

(declare-fun b_and!59787 () Bool)

(assert (= b_and!59779 (and (=> t!48534 result!46953) b_and!59787)))

(assert (=> b!87758 t!48530))

(declare-fun b_and!59789 () Bool)

(assert (= b_and!59773 (and (=> t!48530 result!46949) b_and!59789)))

(assert (=> b!87758 t!48536))

(declare-fun b_and!59791 () Bool)

(assert (= b_and!59781 (and (=> t!48536 result!46955) b_and!59791)))

(assert (=> bs!41243 m!84050))

(assert (=> b!87758 m!84054))

(assert (=> (and d!58471 (= lambda!10852 u1!6) b!87746) d!58487))

(push 1)

(assert b_and!59791)

(assert (not b_lambda!17323))

(assert (not b_lambda!17339))

(assert (not b_lambda!17311))

(assert (not b_lambda!17317))

(assert (not b_next!39763))

(assert (not b_next!39767))

(assert (not b_lambda!17329))

(assert b_and!59783)

(assert (not b_lambda!17343))

(assert (not b_next!39765))

(assert b_and!59785)

(assert b_and!59789)

(assert (not b_lambda!17321))

(assert (not b_lambda!17327))

(assert (not b_lambda!17313))

(assert (not b_lambda!17331))

(assert (not b_lambda!17335))

(assert (not b_lambda!17345))

(assert (not b_lambda!17341))

(assert (not b_lambda!17337))

(assert (not b_lambda!17319))

(assert (not b_lambda!17315))

(assert (not b_next!39769))

(assert (not b_lambda!17325))

(assert (not b_lambda!17333))

(assert (not b_next!39771))

(assert b_and!59787)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59791)

(assert (not b_next!39763))

(assert (not b_next!39767))

(assert b_and!59783)

(assert (not b_next!39765))

(assert b_and!59785)

(assert b_and!59789)

(assert (not b_next!39769))

(assert (not b_next!39771))

(assert b_and!59787)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17347 () Bool)

(assert (= b_lambda!17317 (or d!58467 b_lambda!17347)))

(declare-fun bs!41244 () Bool)

(declare-fun d!58489 () Bool)

(assert (= bs!41244 (and d!58489 d!58467)))

(declare-fun res!45804 () Bool)

(declare-fun e!47660 () Bool)

(assert (=> bs!41244 (=> res!45804 e!47660)))

(assert (=> bs!41244 (= res!45804 (dynLambda!1030 sa2!2 x!30576))))

(assert (=> bs!41244 (= (dynLambda!1030 lambda!10850 x!30576) e!47660)))

(declare-fun b!87759 () Bool)

(assert (=> b!87759 (= e!47660 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41244 (not res!45804)) b!87759))

(declare-fun b_lambda!17379 () Bool)

(assert (=> (not b_lambda!17379) (not bs!41244)))

(assert (=> bs!41244 t!48532))

(declare-fun b_and!59793 () Bool)

(assert (= b_and!59783 (and (=> t!48532 result!46951) b_and!59793)))

(assert (=> bs!41244 t!48534))

(declare-fun b_and!59795 () Bool)

(assert (= b_and!59787 (and (=> t!48534 result!46953) b_and!59795)))

(assert (=> bs!41244 t!48536))

(declare-fun b_and!59797 () Bool)

(assert (= b_and!59791 (and (=> t!48536 result!46955) b_and!59797)))

(assert (=> bs!41244 t!48538))

(declare-fun b_and!59799 () Bool)

(assert (= b_and!59785 (and (=> t!48538 result!46957) b_and!59799)))

(assert (=> bs!41244 t!48530))

(declare-fun b_and!59801 () Bool)

(assert (= b_and!59789 (and (=> t!48530 result!46949) b_and!59801)))

(declare-fun b_lambda!17381 () Bool)

(assert (=> (not b_lambda!17381) (not b!87759)))

(assert (=> b!87759 t!48544))

(declare-fun b_and!59803 () Bool)

(assert (= b_and!59797 (and (=> t!48544 result!46963) b_and!59803)))

(assert (=> b!87759 t!48540))

(declare-fun b_and!59805 () Bool)

(assert (= b_and!59799 (and (=> t!48540 result!46959) b_and!59805)))

(assert (=> b!87759 t!48542))

(declare-fun b_and!59807 () Bool)

(assert (= b_and!59801 (and (=> t!48542 result!46961) b_and!59807)))

(assert (=> b!87759 t!48548))

(declare-fun b_and!59809 () Bool)

(assert (= b_and!59795 (and (=> t!48548 result!46967) b_and!59809)))

(assert (=> b!87759 t!48546))

(declare-fun b_and!59811 () Bool)

(assert (= b_and!59793 (and (=> t!48546 result!46965) b_and!59811)))

(assert (=> bs!41244 m!84054))

(assert (=> b!87759 m!84056))

(assert (=> b!87751 d!58489))

(declare-fun b_lambda!17349 () Bool)

(assert (= b_lambda!17333 (or d!58467 b_lambda!17349)))

(assert (=> b!87755 d!58489))

(declare-fun b_lambda!17351 () Bool)

(assert (= b_lambda!17325 (or (and start!11454 b_free!7463 (= u2!6 sa3!2)) (and start!11454 b_free!7467 (= u1!6 sa3!2)) (and start!11454 b_free!7459) (and d!58465 (= lambda!10849 sa3!2)) (and start!11454 b_free!7465 (= sa1!2 sa3!2)) (and d!58471 (= lambda!10852 sa3!2)) (and start!11454 b_free!7461 (= sa2!2 sa3!2)) b_lambda!17351)))

(declare-fun bs!41245 () Bool)

(declare-fun d!58491 () Bool)

(assert (= bs!41245 (and d!58491 d!58471)))

(declare-fun res!45805 () Bool)

(declare-fun e!47661 () Bool)

(assert (=> bs!41245 (=> res!45805 e!47661)))

(assert (=> bs!41245 (= res!45805 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41245 (= (dynLambda!1030 lambda!10852 x!30576) e!47661)))

(declare-fun b!87760 () Bool)

(assert (=> b!87760 (= e!47661 (dynLambda!1030 sa2!2 x!30576))))

(assert (= (and bs!41245 (not res!45805)) b!87760))

(declare-fun b_lambda!17383 () Bool)

(assert (=> (not b_lambda!17383) (not bs!41245)))

(assert (=> bs!41245 t!48520))

(declare-fun b_and!59813 () Bool)

(assert (= b_and!59807 (and (=> t!48520 result!46939) b_and!59813)))

(assert (=> bs!41245 t!48526))

(declare-fun b_and!59815 () Bool)

(assert (= b_and!59805 (and (=> t!48526 result!46945) b_and!59815)))

(assert (=> bs!41245 t!48522))

(declare-fun b_and!59817 () Bool)

(assert (= b_and!59809 (and (=> t!48522 result!46941) b_and!59817)))

(assert (=> bs!41245 t!48528))

(declare-fun b_and!59819 () Bool)

(assert (= b_and!59811 (and (=> t!48528 result!46947) b_and!59819)))

(assert (=> bs!41245 t!48524))

(declare-fun b_and!59821 () Bool)

(assert (= b_and!59803 (and (=> t!48524 result!46943) b_and!59821)))

(declare-fun b_lambda!17385 () Bool)

(assert (=> (not b_lambda!17385) (not b!87760)))

(assert (=> b!87760 t!48530))

(declare-fun b_and!59823 () Bool)

(assert (= b_and!59813 (and (=> t!48530 result!46949) b_and!59823)))

(assert (=> b!87760 t!48534))

(declare-fun b_and!59825 () Bool)

(assert (= b_and!59817 (and (=> t!48534 result!46953) b_and!59825)))

(assert (=> b!87760 t!48532))

(declare-fun b_and!59827 () Bool)

(assert (= b_and!59819 (and (=> t!48532 result!46951) b_and!59827)))

(assert (=> b!87760 t!48538))

(declare-fun b_and!59829 () Bool)

(assert (= b_and!59815 (and (=> t!48538 result!46957) b_and!59829)))

(assert (=> b!87760 t!48536))

(declare-fun b_and!59831 () Bool)

(assert (= b_and!59821 (and (=> t!48536 result!46955) b_and!59831)))

(assert (=> bs!41245 m!84050))

(assert (=> b!87760 m!84054))

(assert (=> (and d!58471 (= lambda!10852 sa3!2) b!87753) d!58491))

(declare-fun bs!41246 () Bool)

(declare-fun d!58493 () Bool)

(assert (= bs!41246 (and d!58493 d!58465)))

(declare-fun res!45806 () Bool)

(declare-fun e!47662 () Bool)

(assert (=> bs!41246 (=> res!45806 e!47662)))

(assert (=> bs!41246 (= res!45806 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41246 (= (dynLambda!1030 lambda!10849 x!30576) e!47662)))

(declare-fun b!87761 () Bool)

(assert (=> b!87761 (= e!47662 (dynLambda!1030 (union!0 sa2!2 sa3!2) x!30576))))

(assert (= (and bs!41246 (not res!45806)) b!87761))

(declare-fun b_lambda!17387 () Bool)

(assert (=> (not b_lambda!17387) (not bs!41246)))

(assert (=> bs!41246 t!48522))

(declare-fun b_and!59833 () Bool)

(assert (= b_and!59825 (and (=> t!48522 result!46941) b_and!59833)))

(assert (=> bs!41246 t!48520))

(declare-fun b_and!59835 () Bool)

(assert (= b_and!59823 (and (=> t!48520 result!46939) b_and!59835)))

(assert (=> bs!41246 t!48528))

(declare-fun b_and!59837 () Bool)

(assert (= b_and!59827 (and (=> t!48528 result!46947) b_and!59837)))

(assert (=> bs!41246 t!48524))

(declare-fun b_and!59839 () Bool)

(assert (= b_and!59831 (and (=> t!48524 result!46943) b_and!59839)))

(assert (=> bs!41246 t!48526))

(declare-fun b_and!59841 () Bool)

(assert (= b_and!59829 (and (=> t!48526 result!46945) b_and!59841)))

(declare-fun b_lambda!17389 () Bool)

(assert (=> (not b_lambda!17389) (not b!87761)))

(assert (=> bs!41246 m!84050))

(assert (=> b!87761 m!84052))

(assert (=> (and d!58465 (= lambda!10849 sa3!2) b!87753) d!58493))

(declare-fun b_lambda!17353 () Bool)

(assert (= b_lambda!17323 (or d!58471 b_lambda!17353)))

(declare-fun bs!41247 () Bool)

(declare-fun d!58495 () Bool)

(assert (= bs!41247 (and d!58495 d!58471)))

(declare-fun res!45807 () Bool)

(declare-fun e!47663 () Bool)

(assert (=> bs!41247 (=> res!45807 e!47663)))

(assert (=> bs!41247 (= res!45807 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41247 (= (dynLambda!1030 lambda!10852 x!30576) e!47663)))

(declare-fun b!87762 () Bool)

(assert (=> b!87762 (= e!47663 (dynLambda!1030 sa2!2 x!30576))))

(assert (= (and bs!41247 (not res!45807)) b!87762))

(declare-fun b_lambda!17391 () Bool)

(assert (=> (not b_lambda!17391) (not bs!41247)))

(assert (=> bs!41247 t!48524))

(declare-fun b_and!59843 () Bool)

(assert (= b_and!59839 (and (=> t!48524 result!46943) b_and!59843)))

(assert (=> bs!41247 t!48526))

(declare-fun b_and!59845 () Bool)

(assert (= b_and!59841 (and (=> t!48526 result!46945) b_and!59845)))

(assert (=> bs!41247 t!48522))

(declare-fun b_and!59847 () Bool)

(assert (= b_and!59833 (and (=> t!48522 result!46941) b_and!59847)))

(assert (=> bs!41247 t!48528))

(declare-fun b_and!59849 () Bool)

(assert (= b_and!59837 (and (=> t!48528 result!46947) b_and!59849)))

(assert (=> bs!41247 t!48520))

(declare-fun b_and!59851 () Bool)

(assert (= b_and!59835 (and (=> t!48520 result!46939) b_and!59851)))

(declare-fun b_lambda!17393 () Bool)

(assert (=> (not b_lambda!17393) (not b!87762)))

(assert (=> b!87762 t!48534))

(declare-fun b_and!59853 () Bool)

(assert (= b_and!59847 (and (=> t!48534 result!46953) b_and!59853)))

(assert (=> b!87762 t!48538))

(declare-fun b_and!59855 () Bool)

(assert (= b_and!59845 (and (=> t!48538 result!46957) b_and!59855)))

(assert (=> b!87762 t!48532))

(declare-fun b_and!59857 () Bool)

(assert (= b_and!59849 (and (=> t!48532 result!46951) b_and!59857)))

(assert (=> b!87762 t!48530))

(declare-fun b_and!59859 () Bool)

(assert (= b_and!59851 (and (=> t!48530 result!46949) b_and!59859)))

(assert (=> b!87762 t!48536))

(declare-fun b_and!59861 () Bool)

(assert (= b_and!59843 (and (=> t!48536 result!46955) b_and!59861)))

(assert (=> bs!41247 m!84050))

(assert (=> b!87762 m!84054))

(assert (=> bs!41238 d!58495))

(declare-fun b_lambda!17355 () Bool)

(assert (= b_lambda!17335 (or (and start!11454 b_free!7465 (= sa1!2 sa2!2)) (and start!11454 b_free!7467 (= u1!6 sa2!2)) (and d!58465 (= lambda!10849 sa2!2)) (and d!58469 (= lambda!10851 sa2!2)) (and start!11454 b_free!7461) (and start!11454 b_free!7459 (= sa3!2 sa2!2)) (and start!11454 b_free!7463 (= u2!6 sa2!2)) b_lambda!17355)))

(declare-fun bs!41248 () Bool)

(declare-fun d!58497 () Bool)

(assert (= bs!41248 (and d!58497 d!58465)))

(declare-fun res!45808 () Bool)

(declare-fun e!47664 () Bool)

(assert (=> bs!41248 (=> res!45808 e!47664)))

(assert (=> bs!41248 (= res!45808 (dynLambda!1030 sa1!2 x!30576))))

(assert (=> bs!41248 (= (dynLambda!1030 lambda!10849 x!30576) e!47664)))

(declare-fun b!87763 () Bool)

(assert (=> b!87763 (= e!47664 (dynLambda!1030 (union!0 sa2!2 sa3!2) x!30576))))

(assert (= (and bs!41248 (not res!45808)) b!87763))

(declare-fun b_lambda!17395 () Bool)

(assert (=> (not b_lambda!17395) (not bs!41248)))

(assert (=> bs!41248 t!48526))

(declare-fun b_and!59863 () Bool)

(assert (= b_and!59855 (and (=> t!48526 result!46945) b_and!59863)))

(assert (=> bs!41248 t!48524))

(declare-fun b_and!59865 () Bool)

(assert (= b_and!59861 (and (=> t!48524 result!46943) b_and!59865)))

(assert (=> bs!41248 t!48528))

(declare-fun b_and!59867 () Bool)

(assert (= b_and!59857 (and (=> t!48528 result!46947) b_and!59867)))

(assert (=> bs!41248 t!48520))

(declare-fun b_and!59869 () Bool)

(assert (= b_and!59859 (and (=> t!48520 result!46939) b_and!59869)))

(assert (=> bs!41248 t!48522))

(declare-fun b_and!59871 () Bool)

(assert (= b_and!59853 (and (=> t!48522 result!46941) b_and!59871)))

(declare-fun b_lambda!17397 () Bool)

(assert (=> (not b_lambda!17397) (not b!87763)))

(assert (=> bs!41248 m!84050))

(assert (=> b!87763 m!84052))

(assert (=> (and d!58465 (= lambda!10849 sa2!2) bs!41241) d!58497))

(declare-fun bs!41249 () Bool)

(declare-fun d!58499 () Bool)

(assert (= bs!41249 (and d!58499 d!58469)))

(declare-fun res!45809 () Bool)

(declare-fun e!47665 () Bool)

(assert (=> bs!41249 (=> res!45809 e!47665)))

(assert (=> bs!41249 (= res!45809 (dynLambda!1030 (union!0 sa1!2 sa2!2) x!30576))))

(assert (=> bs!41249 (= (dynLambda!1030 lambda!10851 x!30576) e!47665)))

(declare-fun b!87764 () Bool)

(assert (=> b!87764 (= e!47665 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41249 (not res!45809)) b!87764))

(declare-fun b_lambda!17399 () Bool)

(assert (=> (not b_lambda!17399) (not bs!41249)))

(declare-fun b_lambda!17401 () Bool)

(assert (=> (not b_lambda!17401) (not b!87764)))

(assert (=> b!87764 t!48540))

(declare-fun b_and!59873 () Bool)

(assert (= b_and!59863 (and (=> t!48540 result!46959) b_and!59873)))

(assert (=> b!87764 t!48544))

(declare-fun b_and!59875 () Bool)

(assert (= b_and!59865 (and (=> t!48544 result!46963) b_and!59875)))

(assert (=> b!87764 t!48548))

(declare-fun b_and!59877 () Bool)

(assert (= b_and!59871 (and (=> t!48548 result!46967) b_and!59877)))

(assert (=> b!87764 t!48542))

(declare-fun b_and!59879 () Bool)

(assert (= b_and!59869 (and (=> t!48542 result!46961) b_and!59879)))

(assert (=> b!87764 t!48546))

(declare-fun b_and!59881 () Bool)

(assert (= b_and!59867 (and (=> t!48546 result!46965) b_and!59881)))

(assert (=> bs!41249 m!84058))

(assert (=> b!87764 m!84056))

(assert (=> (and d!58469 (= lambda!10851 sa2!2) bs!41241) d!58499))

(declare-fun b_lambda!17357 () Bool)

(assert (= b_lambda!17341 (or (and start!11454 b_free!7463 (= u2!6 sa3!2)) (and start!11454 b_free!7467 (= u1!6 sa3!2)) (and start!11454 b_free!7459) (and d!58465 (= lambda!10849 sa3!2)) (and start!11454 b_free!7465 (= sa1!2 sa3!2)) (and d!58471 (= lambda!10852 sa3!2)) (and start!11454 b_free!7461 (= sa2!2 sa3!2)) b_lambda!17357)))

(assert (=> (and d!58471 (= lambda!10852 sa3!2) b!87757) d!58491))

(assert (=> (and d!58465 (= lambda!10849 sa3!2) b!87757) d!58493))

(declare-fun b_lambda!17359 () Bool)

(assert (= b_lambda!17315 (or (and start!11454 b_free!7459 (= sa3!2 sa1!2)) (and start!11454 b_free!7461 (= sa2!2 sa1!2)) (and start!11454 b_free!7467 (= u1!6 sa1!2)) (and d!58467 (= lambda!10850 sa1!2)) (and d!58469 (= lambda!10851 sa1!2)) (and start!11454 b_free!7465) (and start!11454 b_free!7463 (= u2!6 sa1!2)) b_lambda!17359)))

(declare-fun bs!41250 () Bool)

(declare-fun d!58501 () Bool)

(assert (= bs!41250 (and d!58501 d!58467)))

(declare-fun res!45810 () Bool)

(declare-fun e!47666 () Bool)

(assert (=> bs!41250 (=> res!45810 e!47666)))

(assert (=> bs!41250 (= res!45810 (dynLambda!1030 sa2!2 x!30576))))

(assert (=> bs!41250 (= (dynLambda!1030 lambda!10850 x!30576) e!47666)))

(declare-fun b!87765 () Bool)

(assert (=> b!87765 (= e!47666 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41250 (not res!45810)) b!87765))

(declare-fun b_lambda!17403 () Bool)

(assert (=> (not b_lambda!17403) (not bs!41250)))

(assert (=> bs!41250 t!48532))

(declare-fun b_and!59883 () Bool)

(assert (= b_and!59881 (and (=> t!48532 result!46951) b_and!59883)))

(assert (=> bs!41250 t!48536))

(declare-fun b_and!59885 () Bool)

(assert (= b_and!59875 (and (=> t!48536 result!46955) b_and!59885)))

(assert (=> bs!41250 t!48534))

(declare-fun b_and!59887 () Bool)

(assert (= b_and!59877 (and (=> t!48534 result!46953) b_and!59887)))

(assert (=> bs!41250 t!48538))

(declare-fun b_and!59889 () Bool)

(assert (= b_and!59873 (and (=> t!48538 result!46957) b_and!59889)))

(assert (=> bs!41250 t!48530))

(declare-fun b_and!59891 () Bool)

(assert (= b_and!59879 (and (=> t!48530 result!46949) b_and!59891)))

(declare-fun b_lambda!17405 () Bool)

(assert (=> (not b_lambda!17405) (not b!87765)))

(assert (=> b!87765 t!48542))

(declare-fun b_and!59893 () Bool)

(assert (= b_and!59891 (and (=> t!48542 result!46961) b_and!59893)))

(assert (=> b!87765 t!48544))

(declare-fun b_and!59895 () Bool)

(assert (= b_and!59885 (and (=> t!48544 result!46963) b_and!59895)))

(assert (=> b!87765 t!48540))

(declare-fun b_and!59897 () Bool)

(assert (= b_and!59889 (and (=> t!48540 result!46959) b_and!59897)))

(assert (=> b!87765 t!48546))

(declare-fun b_and!59899 () Bool)

(assert (= b_and!59883 (and (=> t!48546 result!46965) b_and!59899)))

(assert (=> b!87765 t!48548))

(declare-fun b_and!59901 () Bool)

(assert (= b_and!59887 (and (=> t!48548 result!46967) b_and!59901)))

(assert (=> bs!41250 m!84054))

(assert (=> b!87765 m!84056))

(assert (=> (and d!58467 (= lambda!10850 sa1!2) bs!41236) d!58501))

(declare-fun bs!41251 () Bool)

(declare-fun d!58503 () Bool)

(assert (= bs!41251 (and d!58503 d!58469)))

(declare-fun res!45811 () Bool)

(declare-fun e!47667 () Bool)

(assert (=> bs!41251 (=> res!45811 e!47667)))

(assert (=> bs!41251 (= res!45811 (dynLambda!1030 (union!0 sa1!2 sa2!2) x!30576))))

(assert (=> bs!41251 (= (dynLambda!1030 lambda!10851 x!30576) e!47667)))

(declare-fun b!87766 () Bool)

(assert (=> b!87766 (= e!47667 (dynLambda!1030 sa3!2 x!30576))))

(assert (= (and bs!41251 (not res!45811)) b!87766))

(declare-fun b_lambda!17407 () Bool)

(assert (=> (not b_lambda!17407) (not bs!41251)))

(declare-fun b_lambda!17409 () Bool)

(assert (=> (not b_lambda!17409) (not b!87766)))

(assert (=> b!87766 t!48548))

(declare-fun b_and!59903 () Bool)

(assert (= b_and!59901 (and (=> t!48548 result!46967) b_and!59903)))

(assert (=> b!87766 t!48546))

(declare-fun b_and!59905 () Bool)

(assert (= b_and!59899 (and (=> t!48546 result!46965) b_and!59905)))

(assert (=> b!87766 t!48544))

(declare-fun b_and!59907 () Bool)

(assert (= b_and!59895 (and (=> t!48544 result!46963) b_and!59907)))

(assert (=> b!87766 t!48542))

(declare-fun b_and!59909 () Bool)

(assert (= b_and!59893 (and (=> t!48542 result!46961) b_and!59909)))

(assert (=> b!87766 t!48540))

(declare-fun b_and!59911 () Bool)

(assert (= b_and!59897 (and (=> t!48540 result!46959) b_and!59911)))

(assert (=> bs!41251 m!84058))

(assert (=> b!87766 m!84056))

(assert (=> (and d!58469 (= lambda!10851 sa1!2) bs!41236) d!58503))

(declare-fun b_lambda!17361 () Bool)

(assert (= b_lambda!17337 (or (and start!11454 b_free!7463 (= u2!6 sa3!2)) (and start!11454 b_free!7467 (= u1!6 sa3!2)) (and start!11454 b_free!7459) (and d!58465 (= lambda!10849 sa3!2)) (and start!11454 b_free!7465 (= sa1!2 sa3!2)) (and d!58471 (= lambda!10852 sa3!2)) (and start!11454 b_free!7461 (= sa2!2 sa3!2)) b_lambda!17361)))

(assert (=> (and d!58471 (= lambda!10852 sa3!2) b!87756) d!58491))

(assert (=> (and d!58465 (= lambda!10849 sa3!2) b!87756) d!58493))

(declare-fun b_lambda!17363 () Bool)

(assert (= b_lambda!17319 (or (and start!11454 b_free!7465 (= sa1!2 sa2!2)) (and start!11454 b_free!7467 (= u1!6 sa2!2)) (and d!58465 (= lambda!10849 sa2!2)) (and d!58469 (= lambda!10851 sa2!2)) (and start!11454 b_free!7461) (and start!11454 b_free!7459 (= sa3!2 sa2!2)) (and start!11454 b_free!7463 (= u2!6 sa2!2)) b_lambda!17363)))

(assert (=> (and d!58465 (= lambda!10849 sa2!2) bs!41237) d!58497))

(assert (=> (and d!58469 (= lambda!10851 sa2!2) bs!41237) d!58499))

(declare-fun b_lambda!17365 () Bool)

(assert (= b_lambda!17321 (or (and start!11454 b_free!7463 (= u2!6 sa3!2)) (and start!11454 b_free!7467 (= u1!6 sa3!2)) (and start!11454 b_free!7459) (and d!58465 (= lambda!10849 sa3!2)) (and start!11454 b_free!7465 (= sa1!2 sa3!2)) (and d!58471 (= lambda!10852 sa3!2)) (and start!11454 b_free!7461 (= sa2!2 sa3!2)) b_lambda!17365)))

(assert (=> (and d!58471 (= lambda!10852 sa3!2) b!87752) d!58491))

(assert (=> (and d!58465 (= lambda!10849 sa3!2) b!87752) d!58493))

(declare-fun b_lambda!17367 () Bool)

(assert (= b_lambda!17327 (or (and start!11454 b_free!7459 (= sa3!2 sa1!2)) (and start!11454 b_free!7461 (= sa2!2 sa1!2)) (and start!11454 b_free!7467 (= u1!6 sa1!2)) (and d!58467 (= lambda!10850 sa1!2)) (and d!58469 (= lambda!10851 sa1!2)) (and start!11454 b_free!7465) (and start!11454 b_free!7463 (= u2!6 sa1!2)) b_lambda!17367)))

(assert (=> (and d!58467 (= lambda!10850 sa1!2) bs!41239) d!58501))

(assert (=> (and d!58469 (= lambda!10851 sa1!2) bs!41239) d!58503))

(declare-fun b_lambda!17369 () Bool)

(assert (= b_lambda!17343 (or (and start!11454 b_free!7459 (= sa3!2 sa1!2)) (and start!11454 b_free!7461 (= sa2!2 sa1!2)) (and start!11454 b_free!7467 (= u1!6 sa1!2)) (and d!58467 (= lambda!10850 sa1!2)) (and d!58469 (= lambda!10851 sa1!2)) (and start!11454 b_free!7465) (and start!11454 b_free!7463 (= u2!6 sa1!2)) b_lambda!17369)))

(assert (=> (and d!58467 (= lambda!10850 sa1!2) bs!41243) d!58501))

(assert (=> (and d!58469 (= lambda!10851 sa1!2) bs!41243) d!58503))

(declare-fun b_lambda!17371 () Bool)

(assert (= b_lambda!17345 (or (and start!11454 b_free!7465 (= sa1!2 sa2!2)) (and start!11454 b_free!7467 (= u1!6 sa2!2)) (and d!58465 (= lambda!10849 sa2!2)) (and d!58469 (= lambda!10851 sa2!2)) (and start!11454 b_free!7461) (and start!11454 b_free!7459 (= sa3!2 sa2!2)) (and start!11454 b_free!7463 (= u2!6 sa2!2)) b_lambda!17371)))

(assert (=> (and d!58465 (= lambda!10849 sa2!2) b!87758) d!58497))

(assert (=> (and d!58469 (= lambda!10851 sa2!2) b!87758) d!58499))

(declare-fun b_lambda!17373 () Bool)

(assert (= b_lambda!17329 (or (and start!11454 b_free!7465 (= sa1!2 sa2!2)) (and start!11454 b_free!7467 (= u1!6 sa2!2)) (and d!58465 (= lambda!10849 sa2!2)) (and d!58469 (= lambda!10851 sa2!2)) (and start!11454 b_free!7461) (and start!11454 b_free!7459 (= sa3!2 sa2!2)) (and start!11454 b_free!7463 (= u2!6 sa2!2)) b_lambda!17373)))

(assert (=> (and d!58465 (= lambda!10849 sa2!2) b!87754) d!58497))

(assert (=> (and d!58469 (= lambda!10851 sa2!2) b!87754) d!58499))

(declare-fun b_lambda!17375 () Bool)

(assert (= b_lambda!17339 (or d!58471 b_lambda!17375)))

(assert (=> bs!41242 d!58495))

(declare-fun b_lambda!17377 () Bool)

(assert (= b_lambda!17331 (or (and start!11454 b_free!7459 (= sa3!2 sa1!2)) (and start!11454 b_free!7461 (= sa2!2 sa1!2)) (and start!11454 b_free!7467 (= u1!6 sa1!2)) (and d!58467 (= lambda!10850 sa1!2)) (and d!58469 (= lambda!10851 sa1!2)) (and start!11454 b_free!7465) (and start!11454 b_free!7463 (= u2!6 sa1!2)) b_lambda!17377)))

(assert (=> (and d!58467 (= lambda!10850 sa1!2) bs!41240) d!58501))

(assert (=> (and d!58469 (= lambda!10851 sa1!2) bs!41240) d!58503))

(push 1)

(assert (not b_lambda!17389))

(assert b_and!59907)

(assert (not b_lambda!17361))

(assert (not b_lambda!17383))

(assert b_and!59909)

(assert (not b_lambda!17311))

(assert (not b_next!39763))

(assert (not b_next!39767))

(assert (not b_next!39765))

(assert (not b_lambda!17395))

(assert (not b_lambda!17403))

(assert (not b_lambda!17399))

(assert (not b_lambda!17349))

(assert (not b_lambda!17353))

(assert (not b_lambda!17351))

(assert (not b_lambda!17377))

(assert (not b_lambda!17409))

(assert (not b_lambda!17347))

(assert (not b_lambda!17313))

(assert b_and!59911)

(assert (not b_lambda!17401))

(assert (not b_lambda!17355))

(assert (not b_lambda!17387))

(assert b_and!59905)

(assert (not b_lambda!17371))

(assert (not b_lambda!17369))

(assert (not b_lambda!17381))

(assert (not b_lambda!17405))

(assert (not b_lambda!17363))

(assert (not b_lambda!17373))

(assert (not b_lambda!17375))

(assert (not b_lambda!17391))

(assert (not b_lambda!17359))

(assert (not b_lambda!17393))

(assert b_and!59903)

(assert (not b_next!39769))

(assert (not b_lambda!17367))

(assert (not b_lambda!17397))

(assert (not b_lambda!17365))

(assert (not b_lambda!17407))

(assert (not b_lambda!17357))

(assert (not b_next!39771))

(assert (not b_lambda!17379))

(assert (not b_lambda!17385))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59907)

(assert b_and!59909)

(assert (not b_next!39763))

(assert (not b_next!39767))

(assert (not b_next!39765))

(assert b_and!59911)

(assert b_and!59905)

(assert b_and!59903)

(assert (not b_next!39769))

(assert (not b_next!39771))

(check-sat)

(pop 1)

