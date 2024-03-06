; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4894 () Bool)

(assert start!4894)

(declare-fun b!38020 () Bool)

(declare-fun b_free!2385 () Bool)

(declare-fun b_next!5685 () Bool)

(assert (=> b!38020 (= b_free!2385 (not b_next!5685))))

(declare-fun tp!7658 () Bool)

(declare-fun b_and!8475 () Bool)

(assert (=> b!38020 (= tp!7658 b_and!8475)))

(declare-fun b_free!2387 () Bool)

(declare-fun b_next!5687 () Bool)

(assert (=> b!38020 (= b_free!2387 (not b_next!5687))))

(declare-fun tp!7662 () Bool)

(declare-fun b_and!8477 () Bool)

(assert (=> b!38020 (= tp!7662 b_and!8477)))

(declare-fun b_free!2389 () Bool)

(declare-fun b_next!5689 () Bool)

(assert (=> b!38020 (= b_free!2389 (not b_next!5689))))

(declare-fun tp!7666 () Bool)

(declare-fun b_and!8479 () Bool)

(assert (=> b!38020 (= tp!7666 b_and!8479)))

(declare-fun b!38023 () Bool)

(declare-fun b_free!2391 () Bool)

(declare-fun b_next!5691 () Bool)

(assert (=> b!38023 (= b_free!2391 (not b_next!5691))))

(declare-fun tp!7665 () Bool)

(declare-fun b_and!8481 () Bool)

(assert (=> b!38023 (= tp!7665 b_and!8481)))

(declare-fun b_free!2393 () Bool)

(declare-fun b_next!5693 () Bool)

(assert (=> b!38023 (= b_free!2393 (not b_next!5693))))

(declare-fun tp!7657 () Bool)

(declare-fun b_and!8483 () Bool)

(assert (=> b!38023 (= tp!7657 b_and!8483)))

(declare-fun b_free!2395 () Bool)

(declare-fun b_next!5695 () Bool)

(assert (=> b!38023 (= b_free!2395 (not b_next!5695))))

(declare-fun tp!7664 () Bool)

(declare-fun b_and!8485 () Bool)

(assert (=> b!38023 (= tp!7664 b_and!8485)))

(declare-fun b!38025 () Bool)

(declare-fun b_free!2397 () Bool)

(declare-fun b_next!5697 () Bool)

(assert (=> b!38025 (= b_free!2397 (not b_next!5697))))

(declare-fun tp!7655 () Bool)

(declare-fun b_and!8487 () Bool)

(assert (=> b!38025 (= tp!7655 b_and!8487)))

(declare-fun b_free!2399 () Bool)

(declare-fun b_next!5699 () Bool)

(assert (=> b!38025 (= b_free!2399 (not b_next!5699))))

(declare-fun tp!7663 () Bool)

(declare-fun b_and!8489 () Bool)

(assert (=> b!38025 (= tp!7663 b_and!8489)))

(declare-fun b_free!2401 () Bool)

(declare-fun b_next!5701 () Bool)

(assert (=> b!38025 (= b_free!2401 (not b_next!5701))))

(declare-fun tp!7661 () Bool)

(declare-fun b_and!8491 () Bool)

(assert (=> b!38025 (= tp!7661 b_and!8491)))

(declare-fun b!38022 () Bool)

(declare-fun b_free!2403 () Bool)

(declare-fun b_next!5703 () Bool)

(assert (=> b!38022 (= b_free!2403 (not b_next!5703))))

(declare-fun tp!7660 () Bool)

(declare-fun b_and!8493 () Bool)

(assert (=> b!38022 (= tp!7660 b_and!8493)))

(declare-fun b_free!2405 () Bool)

(declare-fun b_next!5705 () Bool)

(assert (=> b!38022 (= b_free!2405 (not b_next!5705))))

(declare-fun tp!7659 () Bool)

(declare-fun b_and!8495 () Bool)

(assert (=> b!38022 (= tp!7659 b_and!8495)))

(declare-fun b_free!2407 () Bool)

(declare-fun b_next!5707 () Bool)

(assert (=> b!38022 (= b_free!2407 (not b_next!5707))))

(declare-fun tp!7656 () Bool)

(declare-fun b_and!8497 () Bool)

(assert (=> b!38022 (= tp!7656 b_and!8497)))

(declare-fun b!38015 () Bool)

(assert (=> b!38015 true))

(assert (=> b!38015 true))

(declare-fun b_next!5709 () Bool)

(declare-datatypes () ((Nat!48 (Zero!32) (Succ!29 (n!1115 Nat!48)))))

(declare-datatypes () ((tuple2!174 (tuple2!175 (_1!113 Nat!48) (_2!113 Nat!48)))))

(declare-datatypes () ((RAEqEvidence!46 (RAEqEvidence!47 (x!13168 Int) (y!1362 Int) (evidence!475 Int)))))

(declare-fun x$104!2 () RAEqEvidence!46)

(declare-fun lambda!4381 () Int)

(assert (=> b!38022 (= b_next!5703 (or (and b!38015 (= lambda!4381 (x!13168 x$104!2))) b_next!5709))))

(declare-datatypes () ((Unit!307 (Unit!308))))

(declare-datatypes () ((RAEqEvidence!48 (RAEqEvidence!49 (x!13169 Int) (y!1363 Int) (evidence!476 Int)))))

(declare-fun x$102!4 () RAEqEvidence!48)

(declare-fun b_next!5711 () Bool)

(assert (=> b!38025 (= b_next!5699 (or (and b!38015 (= lambda!4381 (y!1363 x$102!4))) b_next!5711))))

(declare-fun b_next!5713 () Bool)

(declare-fun x$103!3 () RAEqEvidence!46)

(assert (=> b!38020 (= b_next!5687 (or (and b!38015 (= lambda!4381 (y!1362 x$103!3))) b_next!5713))))

(declare-fun b_next!5715 () Bool)

(assert (=> b!38020 (= b_next!5685 (or (and b!38015 (= lambda!4381 (x!13168 x$103!3))) b_next!5715))))

(declare-fun x$101!5 () RAEqEvidence!48)

(declare-fun b_next!5717 () Bool)

(assert (=> b!38023 (= b_next!5693 (or (and b!38015 (= lambda!4381 (y!1363 x$101!5))) b_next!5717))))

(declare-fun b_next!5719 () Bool)

(assert (=> b!38023 (= b_next!5691 (or (and b!38015 (= lambda!4381 (x!13169 x$101!5))) b_next!5719))))

(declare-fun b_next!5721 () Bool)

(assert (=> b!38022 (= b_next!5705 (or (and b!38015 (= lambda!4381 (y!1362 x$104!2))) b_next!5721))))

(declare-fun b_next!5723 () Bool)

(assert (=> b!38025 (= b_next!5697 (or (and b!38015 (= lambda!4381 (x!13169 x$102!4))) b_next!5723))))

(declare-fun m!39243 () Bool)

(assert (=> b!38015 m!39243))

(declare-fun lambda!4382 () Int)

(declare-fun dynLambda!682 (Int) Bool)

(assert (=> (and b!38020 b!38015 (= (dynLambda!682 lambda!4382) (dynLambda!682 (evidence!475 x$103!3)))) (= lambda!4382 (evidence!475 x$103!3))))

(assert (=> (and b!38022 b!38015 (= (dynLambda!682 lambda!4382) (dynLambda!682 (evidence!475 x$104!2)))) (= lambda!4382 (evidence!475 x$104!2))))

(declare-fun b_next!5725 () Bool)

(assert (=> b!38020 (= b_next!5689 (or (and b!38015 (= lambda!4382 (evidence!475 x$103!3))) b_next!5725))))

(declare-fun b_next!5727 () Bool)

(assert (=> b!38022 (= b_next!5707 (or (and b!38015 (= lambda!4382 (evidence!475 x$104!2))) b_next!5727))))

(declare-fun bs!11595 () Bool)

(declare-fun b!38018 () Bool)

(assert (= bs!11595 (and b!38018 b!38015)))

(declare-fun lambda!4383 () Int)

(assert (=> bs!11595 (not (= lambda!4383 lambda!4381))))

(assert (=> b!38018 true))

(assert (=> b!38018 true))

(declare-fun dynLambda!683 (Int) tuple2!174)

(assert (=> (and b!38022 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (x!13168 x$104!2)))) (= lambda!4383 (x!13168 x$104!2))))

(assert (=> (and b!38025 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (y!1363 x$102!4)))) (= lambda!4383 (y!1363 x$102!4))))

(assert (=> (and b!38020 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (y!1362 x$103!3)))) (= lambda!4383 (y!1362 x$103!3))))

(assert (=> (and b!38020 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (x!13168 x$103!3)))) (= lambda!4383 (x!13168 x$103!3))))

(assert (=> (and b!38023 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (y!1363 x$101!5)))) (= lambda!4383 (y!1363 x$101!5))))

(assert (=> (and b!38023 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (x!13169 x$101!5)))) (= lambda!4383 (x!13169 x$101!5))))

(assert (=> (and b!38022 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (y!1362 x$104!2)))) (= lambda!4383 (y!1362 x$104!2))))

(assert (=> (and b!38025 b!38018 (= (dynLambda!683 lambda!4383) (dynLambda!683 (x!13169 x$102!4)))) (= lambda!4383 (x!13169 x$102!4))))

(declare-fun b_next!5729 () Bool)

(assert (=> b!38022 (= b_next!5709 (or (and b!38018 (= lambda!4383 (x!13168 x$104!2))) b_next!5729))))

(declare-fun b_next!5731 () Bool)

(assert (=> b!38025 (= b_next!5711 (or (and b!38018 (= lambda!4383 (y!1363 x$102!4))) b_next!5731))))

(declare-fun b_next!5733 () Bool)

(assert (=> b!38020 (= b_next!5713 (or (and b!38018 (= lambda!4383 (y!1362 x$103!3))) b_next!5733))))

(declare-fun b_next!5735 () Bool)

(assert (=> b!38020 (= b_next!5715 (or (and b!38018 (= lambda!4383 (x!13168 x$103!3))) b_next!5735))))

(declare-fun b_next!5737 () Bool)

(assert (=> b!38023 (= b_next!5717 (or (and b!38018 (= lambda!4383 (y!1363 x$101!5))) b_next!5737))))

(declare-fun b_next!5739 () Bool)

(assert (=> b!38023 (= b_next!5719 (or (and b!38018 (= lambda!4383 (x!13169 x$101!5))) b_next!5739))))

(declare-fun b_next!5741 () Bool)

(assert (=> b!38022 (= b_next!5721 (or (and b!38018 (= lambda!4383 (y!1362 x$104!2))) b_next!5741))))

(declare-fun b_next!5743 () Bool)

(assert (=> b!38025 (= b_next!5723 (or (and b!38018 (= lambda!4383 (x!13169 x$102!4))) b_next!5743))))

(declare-fun bs!11596 () Bool)

(declare-fun b!38017 () Bool)

(assert (= bs!11596 (and b!38017 b!38015)))

(declare-fun lambda!4384 () Int)

(assert (=> bs!11596 (not (= lambda!4384 lambda!4381))))

(declare-fun bs!11597 () Bool)

(assert (= bs!11597 (and b!38017 b!38018)))

(assert (=> bs!11597 (not (= lambda!4384 lambda!4383))))

(assert (=> b!38017 true))

(assert (=> b!38017 true))

(declare-fun b_next!5745 () Bool)

(assert (=> b!38022 (= b_next!5729 (or (and b!38017 (= lambda!4384 (x!13168 x$104!2))) b_next!5745))))

(declare-fun b_next!5747 () Bool)

(assert (=> b!38025 (= b_next!5731 (or (and b!38017 (= lambda!4384 (y!1363 x$102!4))) b_next!5747))))

(declare-fun b_next!5749 () Bool)

(assert (=> b!38020 (= b_next!5733 (or (and b!38017 (= lambda!4384 (y!1362 x$103!3))) b_next!5749))))

(declare-fun b_next!5751 () Bool)

(assert (=> b!38020 (= b_next!5735 (or (and b!38017 (= lambda!4384 (x!13168 x$103!3))) b_next!5751))))

(declare-fun b_next!5753 () Bool)

(assert (=> b!38023 (= b_next!5737 (or (and b!38017 (= lambda!4384 (y!1363 x$101!5))) b_next!5753))))

(declare-fun b_next!5755 () Bool)

(assert (=> b!38023 (= b_next!5739 (or (and b!38017 (= lambda!4384 (x!13169 x$101!5))) b_next!5755))))

(declare-fun b_next!5757 () Bool)

(assert (=> b!38022 (= b_next!5741 (or (and b!38017 (= lambda!4384 (y!1362 x$104!2))) b_next!5757))))

(declare-fun b_next!5759 () Bool)

(assert (=> b!38025 (= b_next!5743 (or (and b!38017 (= lambda!4384 (x!13169 x$102!4))) b_next!5759))))

(assert (=> b!38017 true))

(assert (=> b!38017 true))

(declare-fun lambda!4385 () Int)

(declare-fun b_next!5761 () Bool)

(assert (=> b!38023 (= b_next!5695 (or (and b!38017 (= lambda!4385 (evidence!476 x$101!5))) b_next!5761))))

(declare-fun b_next!5763 () Bool)

(assert (=> b!38025 (= b_next!5701 (or (and b!38017 (= lambda!4385 (evidence!476 x$102!4))) b_next!5763))))

(declare-fun bs!11598 () Bool)

(declare-fun b!38026 () Bool)

(assert (= bs!11598 (and b!38026 b!38015)))

(declare-fun lambda!4386 () Int)

(assert (=> bs!11598 (not (= lambda!4386 lambda!4381))))

(declare-fun bs!11599 () Bool)

(assert (= bs!11599 (and b!38026 b!38018)))

(assert (=> bs!11599 (not (= lambda!4386 lambda!4383))))

(declare-fun bs!11600 () Bool)

(assert (= bs!11600 (and b!38026 b!38017)))

(assert (=> bs!11600 (not (= lambda!4386 lambda!4384))))

(assert (=> b!38026 true))

(assert (=> b!38026 true))

(declare-fun b_next!5765 () Bool)

(assert (=> b!38022 (= b_next!5745 (or (and b!38026 (= lambda!4386 (x!13168 x$104!2))) b_next!5765))))

(declare-fun b_next!5767 () Bool)

(assert (=> b!38025 (= b_next!5747 (or (and b!38026 (= lambda!4386 (y!1363 x$102!4))) b_next!5767))))

(declare-fun b_next!5769 () Bool)

(assert (=> b!38020 (= b_next!5749 (or (and b!38026 (= lambda!4386 (y!1362 x$103!3))) b_next!5769))))

(declare-fun b_next!5771 () Bool)

(assert (=> b!38020 (= b_next!5751 (or (and b!38026 (= lambda!4386 (x!13168 x$103!3))) b_next!5771))))

(declare-fun b_next!5773 () Bool)

(assert (=> b!38023 (= b_next!5753 (or (and b!38026 (= lambda!4386 (y!1363 x$101!5))) b_next!5773))))

(declare-fun b_next!5775 () Bool)

(assert (=> b!38023 (= b_next!5755 (or (and b!38026 (= lambda!4386 (x!13169 x$101!5))) b_next!5775))))

(declare-fun b_next!5777 () Bool)

(assert (=> b!38022 (= b_next!5757 (or (and b!38026 (= lambda!4386 (y!1362 x$104!2))) b_next!5777))))

(declare-fun b_next!5779 () Bool)

(assert (=> b!38025 (= b_next!5759 (or (and b!38026 (= lambda!4386 (x!13169 x$102!4))) b_next!5779))))

(declare-fun lambda!4387 () Int)

(assert (=> bs!11600 (not (= lambda!4387 lambda!4385))))

(assert (=> b!38026 true))

(declare-fun b_next!5781 () Bool)

(assert (=> b!38023 (= b_next!5761 (or (and b!38026 (= lambda!4387 (evidence!476 x$101!5))) b_next!5781))))

(declare-fun b_next!5783 () Bool)

(assert (=> b!38025 (= b_next!5763 (or (and b!38026 (= lambda!4387 (evidence!476 x$102!4))) b_next!5783))))

(declare-fun res!18146 () Bool)

(declare-fun e!19553 () Bool)

(assert (=> b!38015 (=> (not res!18146) (not e!19553))))

(assert (=> b!38015 (= res!18146 (= x$104!2 (RAEqEvidence!47 lambda!4381 lambda!4381 lambda!4382)))))

(declare-fun b!38016 () Bool)

(declare-fun res!18149 () Bool)

(assert (=> b!38016 (=> (not res!18149) (not e!19553))))

(declare-fun remainder!2 () Nat!48)

(declare-fun p1!72 () Nat!48)

(declare-fun x$98!1 () tuple2!174)

(assert (=> b!38016 (= res!18149 (and (= p1!72 (_1!113 x$98!1)) (= remainder!2 (_2!113 x$98!1))))))

(declare-fun res!18147 () Bool)

(assert (=> b!38017 (=> (not res!18147) (not e!19553))))

(assert (=> b!38017 (= res!18147 (= x$102!4 (RAEqEvidence!49 lambda!4384 lambda!4384 lambda!4385)))))

(declare-fun res!18152 () Bool)

(assert (=> b!38018 (=> (not res!18152) (not e!19553))))

(assert (=> b!38018 (= res!18152 (= x$103!3 (RAEqEvidence!47 lambda!4383 lambda!4383 lambda!4382)))))

(declare-fun b!38019 () Bool)

(declare-fun that!1456 () Nat!48)

(declare-fun >!2 (Nat!48 Nat!48) Bool)

(assert (=> b!38019 (= e!19553 (not (>!2 that!1456 Zero!32)))))

(declare-fun e!19554 () Bool)

(assert (=> b!38020 (= e!19554 (and tp!7658 tp!7662 tp!7666))))

(declare-fun b!38021 () Bool)

(declare-fun res!18145 () Bool)

(assert (=> b!38021 (=> (not res!18145) (not e!19553))))

(declare-fun thiss!6270 () Nat!48)

(declare-fun n2!332 () Nat!48)

(declare-fun *!4 (Nat!48 Nat!48) Nat!48)

(assert (=> b!38021 (= res!18145 (= thiss!6270 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332)))))

(declare-fun e!19550 () Bool)

(assert (=> b!38022 (= e!19550 (and tp!7660 tp!7659 tp!7656))))

(declare-fun e!19552 () Bool)

(assert (=> b!38023 (= e!19552 (and tp!7665 tp!7657 tp!7664))))

(declare-fun res!18153 () Bool)

(assert (=> start!4894 (=> (not res!18153) (not e!19553))))

(declare-fun n1!316 () Nat!48)

(declare-fun log2_and_remainder!0 (Nat!48) tuple2!174)

(declare-fun pair!0 (Nat!48 Nat!48) Nat!48)

(assert (=> start!4894 (= res!18153 (= x$98!1 (tuple2!175 (_1!113 (log2_and_remainder!0 (Succ!29 (pair!0 n1!316 n2!332)))) (_2!113 (log2_and_remainder!0 (Succ!29 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!4894 e!19553))

(assert (=> start!4894 true))

(declare-fun inv!672 (RAEqEvidence!46) Bool)

(assert (=> start!4894 (and (inv!672 x$103!3) e!19554)))

(declare-fun inv!673 (RAEqEvidence!48) Bool)

(assert (=> start!4894 (and (inv!673 x$101!5) e!19552)))

(declare-fun e!19551 () Bool)

(assert (=> start!4894 (and (inv!673 x$102!4) e!19551)))

(assert (=> start!4894 (and (inv!672 x$104!2) e!19550)))

(declare-fun b!38024 () Bool)

(declare-fun res!18151 () Bool)

(assert (=> b!38024 (=> (not res!18151) (not e!19553))))

(assert (=> b!38024 (= res!18151 (= that!1456 (Succ!29 (Succ!29 Zero!32))))))

(assert (=> b!38025 (= e!19551 (and tp!7655 tp!7663 tp!7661))))

(declare-fun res!18150 () Bool)

(assert (=> b!38026 (=> (not res!18150) (not e!19553))))

(assert (=> b!38026 (= res!18150 (= x$101!5 (RAEqEvidence!49 lambda!4386 lambda!4386 lambda!4387)))))

(declare-fun b!38027 () Bool)

(declare-fun res!18148 () Bool)

(assert (=> b!38027 (=> (not res!18148) (not e!19553))))

(declare-fun p2!66 () Nat!48)

(declare-fun /!2 (Nat!48 Nat!48) Nat!48)

(declare-fun -!4 (Nat!48 Nat!48) Nat!48)

(assert (=> b!38027 (= res!18148 (= p2!66 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (= (and start!4894 res!18153) b!38016))

(assert (= (and b!38016 res!18149) b!38027))

(assert (= (and b!38027 res!18148) b!38015))

(assert (= (and b!38015 res!18146) b!38018))

(assert (= (and b!38018 res!18152) b!38017))

(assert (= (and b!38017 res!18147) b!38026))

(assert (= (and b!38026 res!18150) b!38021))

(assert (= (and b!38021 res!18145) b!38024))

(assert (= (and b!38024 res!18151) b!38019))

(assert (= start!4894 b!38020))

(assert (= start!4894 b!38023))

(assert (= start!4894 b!38025))

(assert (= start!4894 b!38022))

(declare-fun m!39245 () Bool)

(assert (=> b!38019 m!39245))

(declare-fun m!39247 () Bool)

(assert (=> b!38021 m!39247))

(declare-fun m!39249 () Bool)

(assert (=> start!4894 m!39249))

(declare-fun m!39251 () Bool)

(assert (=> start!4894 m!39251))

(declare-fun m!39253 () Bool)

(assert (=> start!4894 m!39253))

(declare-fun m!39255 () Bool)

(assert (=> start!4894 m!39255))

(declare-fun m!39257 () Bool)

(assert (=> start!4894 m!39257))

(declare-fun m!39259 () Bool)

(assert (=> start!4894 m!39259))

(declare-fun m!39261 () Bool)

(assert (=> b!38027 m!39261))

(assert (=> b!38027 m!39261))

(declare-fun m!39263 () Bool)

(assert (=> b!38027 m!39263))

(push 1)

(assert b_and!8477)

(assert b_and!8481)

(assert (not b!38019))

(assert (not b!38018))

(assert (not b_next!5771))

(assert b_and!8475)

(assert (not b_next!5781))

(assert b_and!8495)

(assert (not b_next!5769))

(assert (not b_next!5767))

(assert (not b_next!5777))

(assert (not b_next!5773))

(assert b_and!8489)

(assert b_and!8487)

(assert (not b_next!5727))

(assert (not b_next!5725))

(assert (not b!38021))

(assert (not start!4894))

(assert (not b!38027))

(assert b_and!8493)

(assert (not b_next!5765))

(assert (not b_next!5779))

(assert b_and!8491)

(assert b_and!8479)

(assert b_and!8497)

(assert (not b_next!5783))

(assert (not b!38015))

(assert b_and!8485)

(assert b_and!8483)

(assert (not b_next!5775))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8477)

(assert b_and!8481)

(assert (not b_next!5771))

(assert b_and!8475)

(assert (not b_next!5781))

(assert b_and!8495)

(assert (not b_next!5769))

(assert (not b_next!5767))

(assert (not b_next!5777))

(assert (not b_next!5773))

(assert b_and!8489)

(assert b_and!8487)

(assert (not b_next!5727))

(assert (not b_next!5725))

(assert b_and!8493)

(assert (not b_next!5765))

(assert (not b_next!5779))

(assert b_and!8491)

(assert b_and!8479)

(assert b_and!8497)

(assert (not b_next!5783))

(assert b_and!8485)

(assert b_and!8483)

(assert (not b_next!5775))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!19012 () Bool)

(assert (=> d!19012 (= (inv!673 x$101!5) (= (dynLambda!683 (x!13169 x$101!5)) (dynLambda!683 (y!1363 x$101!5))))))

(declare-fun b_lambda!10031 () Bool)

(assert (=> (not b_lambda!10031) (not d!19012)))

(declare-fun tb!4565 () Bool)

(declare-fun t!5386 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (x!13169 x$101!5)) t!5386) tb!4565))

(declare-fun result!4841 () Bool)

(assert (=> tb!4565 (= result!4841 true)))

(assert (=> d!19012 t!5386))

(declare-fun b_and!8499 () Bool)

(assert (= b_and!8477 (and (=> t!5386 result!4841) b_and!8499)))

(declare-fun t!5388 () Bool)

(declare-fun tb!4567 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (x!13169 x$101!5)) t!5388) tb!4567))

(declare-fun result!4843 () Bool)

(assert (=> tb!4567 (= result!4843 true)))

(assert (=> d!19012 t!5388))

(declare-fun b_and!8501 () Bool)

(assert (= b_and!8487 (and (=> t!5388 result!4843) b_and!8501)))

(declare-fun t!5390 () Bool)

(declare-fun tb!4569 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (x!13169 x$101!5)) t!5390) tb!4569))

(declare-fun result!4845 () Bool)

(assert (=> tb!4569 (= result!4845 true)))

(assert (=> d!19012 t!5390))

(declare-fun b_and!8503 () Bool)

(assert (= b_and!8481 (and (=> t!5390 result!4845) b_and!8503)))

(declare-fun t!5392 () Bool)

(declare-fun tb!4571 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (x!13169 x$101!5)) t!5392) tb!4571))

(declare-fun result!4847 () Bool)

(assert (=> tb!4571 (= result!4847 true)))

(assert (=> d!19012 t!5392))

(declare-fun b_and!8505 () Bool)

(assert (= b_and!8483 (and (=> t!5392 result!4847) b_and!8505)))

(declare-fun t!5394 () Bool)

(declare-fun tb!4573 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (x!13169 x$101!5)) t!5394) tb!4573))

(declare-fun result!4849 () Bool)

(assert (=> tb!4573 (= result!4849 true)))

(assert (=> d!19012 t!5394))

(declare-fun b_and!8507 () Bool)

(assert (= b_and!8495 (and (=> t!5394 result!4849) b_and!8507)))

(declare-fun tb!4575 () Bool)

(declare-fun t!5396 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (x!13169 x$101!5)) t!5396) tb!4575))

(declare-fun result!4851 () Bool)

(assert (=> tb!4575 (= result!4851 true)))

(assert (=> d!19012 t!5396))

(declare-fun b_and!8509 () Bool)

(assert (= b_and!8475 (and (=> t!5396 result!4851) b_and!8509)))

(declare-fun t!5398 () Bool)

(declare-fun tb!4577 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (x!13169 x$101!5)) t!5398) tb!4577))

(declare-fun result!4853 () Bool)

(assert (=> tb!4577 (= result!4853 true)))

(assert (=> d!19012 t!5398))

(declare-fun b_and!8511 () Bool)

(assert (= b_and!8489 (and (=> t!5398 result!4853) b_and!8511)))

(declare-fun tb!4579 () Bool)

(declare-fun t!5400 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (x!13169 x$101!5)) t!5400) tb!4579))

(declare-fun result!4855 () Bool)

(assert (=> tb!4579 (= result!4855 true)))

(assert (=> d!19012 t!5400))

(declare-fun b_and!8513 () Bool)

(assert (= b_and!8493 (and (=> t!5400 result!4855) b_and!8513)))

(declare-fun b_lambda!10033 () Bool)

(assert (=> (not b_lambda!10033) (not d!19012)))

(declare-fun t!5402 () Bool)

(declare-fun tb!4581 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (y!1363 x$101!5)) t!5402) tb!4581))

(declare-fun result!4857 () Bool)

(assert (=> tb!4581 (= result!4857 true)))

(assert (=> d!19012 t!5402))

(declare-fun b_and!8515 () Bool)

(assert (= b_and!8509 (and (=> t!5402 result!4857) b_and!8515)))

(declare-fun tb!4583 () Bool)

(declare-fun t!5404 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (y!1363 x$101!5)) t!5404) tb!4583))

(declare-fun result!4859 () Bool)

(assert (=> tb!4583 (= result!4859 true)))

(assert (=> d!19012 t!5404))

(declare-fun b_and!8517 () Bool)

(assert (= b_and!8507 (and (=> t!5404 result!4859) b_and!8517)))

(declare-fun t!5406 () Bool)

(declare-fun tb!4585 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (y!1363 x$101!5)) t!5406) tb!4585))

(declare-fun result!4861 () Bool)

(assert (=> tb!4585 (= result!4861 true)))

(assert (=> d!19012 t!5406))

(declare-fun b_and!8519 () Bool)

(assert (= b_and!8513 (and (=> t!5406 result!4861) b_and!8519)))

(declare-fun t!5408 () Bool)

(declare-fun tb!4587 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (y!1363 x$101!5)) t!5408) tb!4587))

(declare-fun result!4863 () Bool)

(assert (=> tb!4587 (= result!4863 true)))

(assert (=> d!19012 t!5408))

(declare-fun b_and!8521 () Bool)

(assert (= b_and!8511 (and (=> t!5408 result!4863) b_and!8521)))

(declare-fun t!5410 () Bool)

(declare-fun tb!4589 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (y!1363 x$101!5)) t!5410) tb!4589))

(declare-fun result!4865 () Bool)

(assert (=> tb!4589 (= result!4865 true)))

(assert (=> d!19012 t!5410))

(declare-fun b_and!8523 () Bool)

(assert (= b_and!8503 (and (=> t!5410 result!4865) b_and!8523)))

(declare-fun t!5412 () Bool)

(declare-fun tb!4591 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (y!1363 x$101!5)) t!5412) tb!4591))

(declare-fun result!4867 () Bool)

(assert (=> tb!4591 (= result!4867 true)))

(assert (=> d!19012 t!5412))

(declare-fun b_and!8525 () Bool)

(assert (= b_and!8505 (and (=> t!5412 result!4867) b_and!8525)))

(declare-fun t!5414 () Bool)

(declare-fun tb!4593 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (y!1363 x$101!5)) t!5414) tb!4593))

(declare-fun result!4869 () Bool)

(assert (=> tb!4593 (= result!4869 true)))

(assert (=> d!19012 t!5414))

(declare-fun b_and!8527 () Bool)

(assert (= b_and!8501 (and (=> t!5414 result!4869) b_and!8527)))

(declare-fun t!5416 () Bool)

(declare-fun tb!4595 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (y!1363 x$101!5)) t!5416) tb!4595))

(declare-fun result!4871 () Bool)

(assert (=> tb!4595 (= result!4871 true)))

(assert (=> d!19012 t!5416))

(declare-fun b_and!8529 () Bool)

(assert (= b_and!8499 (and (=> t!5416 result!4871) b_and!8529)))

(declare-fun m!39265 () Bool)

(assert (=> d!19012 m!39265))

(declare-fun m!39267 () Bool)

(assert (=> d!19012 m!39267))

(assert (=> start!4894 d!19012))

(declare-fun d!19014 () Bool)

(declare-fun pow!0 (Nat!48 Nat!48) Nat!48)

(declare-fun +!5 (Nat!48 Nat!48) Nat!48)

(assert (=> d!19014 (= (pair!0 n1!316 n2!332) (-!4 (*!4 (pow!0 (Succ!29 (Succ!29 Zero!32)) n1!316) (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32))) (Succ!29 Zero!32)))))

(declare-fun bs!11601 () Bool)

(assert (= bs!11601 d!19014))

(declare-fun m!39269 () Bool)

(assert (=> bs!11601 m!39269))

(assert (=> bs!11601 m!39247))

(declare-fun m!39271 () Bool)

(assert (=> bs!11601 m!39271))

(declare-fun m!39273 () Bool)

(assert (=> bs!11601 m!39273))

(assert (=> bs!11601 m!39269))

(declare-fun m!39275 () Bool)

(assert (=> bs!11601 m!39275))

(assert (=> bs!11601 m!39271))

(assert (=> bs!11601 m!39247))

(assert (=> bs!11601 m!39275))

(assert (=> start!4894 d!19014))

(declare-fun d!19016 () Bool)

(assert (=> d!19016 (= (inv!672 x$104!2) (= (dynLambda!683 (x!13168 x$104!2)) (dynLambda!683 (y!1362 x$104!2))))))

(declare-fun b_lambda!10035 () Bool)

(assert (=> (not b_lambda!10035) (not d!19016)))

(declare-fun t!5418 () Bool)

(declare-fun tb!4597 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (x!13168 x$104!2)) t!5418) tb!4597))

(declare-fun result!4873 () Bool)

(assert (=> tb!4597 (= result!4873 true)))

(assert (=> d!19016 t!5418))

(declare-fun b_and!8531 () Bool)

(assert (= b_and!8529 (and (=> t!5418 result!4873) b_and!8531)))

(declare-fun t!5420 () Bool)

(declare-fun tb!4599 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (x!13168 x$104!2)) t!5420) tb!4599))

(declare-fun result!4875 () Bool)

(assert (=> tb!4599 (= result!4875 true)))

(assert (=> d!19016 t!5420))

(declare-fun b_and!8533 () Bool)

(assert (= b_and!8515 (and (=> t!5420 result!4875) b_and!8533)))

(declare-fun tb!4601 () Bool)

(declare-fun t!5422 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (x!13168 x$104!2)) t!5422) tb!4601))

(declare-fun result!4877 () Bool)

(assert (=> tb!4601 (= result!4877 true)))

(assert (=> d!19016 t!5422))

(declare-fun b_and!8535 () Bool)

(assert (= b_and!8525 (and (=> t!5422 result!4877) b_and!8535)))

(declare-fun tb!4603 () Bool)

(declare-fun t!5424 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (x!13168 x$104!2)) t!5424) tb!4603))

(declare-fun result!4879 () Bool)

(assert (=> tb!4603 (= result!4879 true)))

(assert (=> d!19016 t!5424))

(declare-fun b_and!8537 () Bool)

(assert (= b_and!8523 (and (=> t!5424 result!4879) b_and!8537)))

(declare-fun t!5426 () Bool)

(declare-fun tb!4605 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (x!13168 x$104!2)) t!5426) tb!4605))

(declare-fun result!4881 () Bool)

(assert (=> tb!4605 (= result!4881 true)))

(assert (=> d!19016 t!5426))

(declare-fun b_and!8539 () Bool)

(assert (= b_and!8519 (and (=> t!5426 result!4881) b_and!8539)))

(declare-fun tb!4607 () Bool)

(declare-fun t!5428 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (x!13168 x$104!2)) t!5428) tb!4607))

(declare-fun result!4883 () Bool)

(assert (=> tb!4607 (= result!4883 true)))

(assert (=> d!19016 t!5428))

(declare-fun b_and!8541 () Bool)

(assert (= b_and!8527 (and (=> t!5428 result!4883) b_and!8541)))

(declare-fun tb!4609 () Bool)

(declare-fun t!5430 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (x!13168 x$104!2)) t!5430) tb!4609))

(declare-fun result!4885 () Bool)

(assert (=> tb!4609 (= result!4885 true)))

(assert (=> d!19016 t!5430))

(declare-fun b_and!8543 () Bool)

(assert (= b_and!8521 (and (=> t!5430 result!4885) b_and!8543)))

(declare-fun t!5432 () Bool)

(declare-fun tb!4611 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (x!13168 x$104!2)) t!5432) tb!4611))

(declare-fun result!4887 () Bool)

(assert (=> tb!4611 (= result!4887 true)))

(assert (=> d!19016 t!5432))

(declare-fun b_and!8545 () Bool)

(assert (= b_and!8517 (and (=> t!5432 result!4887) b_and!8545)))

(declare-fun b_lambda!10037 () Bool)

(assert (=> (not b_lambda!10037) (not d!19016)))

(declare-fun tb!4613 () Bool)

(declare-fun t!5434 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (y!1362 x$104!2)) t!5434) tb!4613))

(declare-fun result!4889 () Bool)

(assert (=> tb!4613 (= result!4889 true)))

(assert (=> d!19016 t!5434))

(declare-fun b_and!8547 () Bool)

(assert (= b_and!8537 (and (=> t!5434 result!4889) b_and!8547)))

(declare-fun t!5436 () Bool)

(declare-fun tb!4615 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (y!1362 x$104!2)) t!5436) tb!4615))

(declare-fun result!4891 () Bool)

(assert (=> tb!4615 (= result!4891 true)))

(assert (=> d!19016 t!5436))

(declare-fun b_and!8549 () Bool)

(assert (= b_and!8539 (and (=> t!5436 result!4891) b_and!8549)))

(declare-fun tb!4617 () Bool)

(declare-fun t!5438 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (y!1362 x$104!2)) t!5438) tb!4617))

(declare-fun result!4893 () Bool)

(assert (=> tb!4617 (= result!4893 true)))

(assert (=> d!19016 t!5438))

(declare-fun b_and!8551 () Bool)

(assert (= b_and!8543 (and (=> t!5438 result!4893) b_and!8551)))

(declare-fun tb!4619 () Bool)

(declare-fun t!5440 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (y!1362 x$104!2)) t!5440) tb!4619))

(declare-fun result!4895 () Bool)

(assert (=> tb!4619 (= result!4895 true)))

(assert (=> d!19016 t!5440))

(declare-fun b_and!8553 () Bool)

(assert (= b_and!8531 (and (=> t!5440 result!4895) b_and!8553)))

(declare-fun tb!4621 () Bool)

(declare-fun t!5442 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (y!1362 x$104!2)) t!5442) tb!4621))

(declare-fun result!4897 () Bool)

(assert (=> tb!4621 (= result!4897 true)))

(assert (=> d!19016 t!5442))

(declare-fun b_and!8555 () Bool)

(assert (= b_and!8535 (and (=> t!5442 result!4897) b_and!8555)))

(declare-fun t!5444 () Bool)

(declare-fun tb!4623 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (y!1362 x$104!2)) t!5444) tb!4623))

(declare-fun result!4899 () Bool)

(assert (=> tb!4623 (= result!4899 true)))

(assert (=> d!19016 t!5444))

(declare-fun b_and!8557 () Bool)

(assert (= b_and!8541 (and (=> t!5444 result!4899) b_and!8557)))

(declare-fun t!5446 () Bool)

(declare-fun tb!4625 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (y!1362 x$104!2)) t!5446) tb!4625))

(declare-fun result!4901 () Bool)

(assert (=> tb!4625 (= result!4901 true)))

(assert (=> d!19016 t!5446))

(declare-fun b_and!8559 () Bool)

(assert (= b_and!8545 (and (=> t!5446 result!4901) b_and!8559)))

(declare-fun t!5448 () Bool)

(declare-fun tb!4627 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (y!1362 x$104!2)) t!5448) tb!4627))

(declare-fun result!4903 () Bool)

(assert (=> tb!4627 (= result!4903 true)))

(assert (=> d!19016 t!5448))

(declare-fun b_and!8561 () Bool)

(assert (= b_and!8533 (and (=> t!5448 result!4903) b_and!8561)))

(declare-fun m!39277 () Bool)

(assert (=> d!19016 m!39277))

(declare-fun m!39279 () Bool)

(assert (=> d!19016 m!39279))

(assert (=> start!4894 d!19016))

(declare-fun d!19018 () Bool)

(assert (=> d!19018 (= (inv!673 x$102!4) (= (dynLambda!683 (x!13169 x$102!4)) (dynLambda!683 (y!1363 x$102!4))))))

(declare-fun b_lambda!10039 () Bool)

(assert (=> (not b_lambda!10039) (not d!19018)))

(declare-fun t!5450 () Bool)

(declare-fun tb!4629 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (x!13169 x$102!4)) t!5450) tb!4629))

(declare-fun result!4905 () Bool)

(assert (=> tb!4629 (= result!4905 true)))

(assert (=> d!19018 t!5450))

(declare-fun b_and!8563 () Bool)

(assert (= b_and!8557 (and (=> t!5450 result!4905) b_and!8563)))

(declare-fun tb!4631 () Bool)

(declare-fun t!5452 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (x!13169 x$102!4)) t!5452) tb!4631))

(declare-fun result!4907 () Bool)

(assert (=> tb!4631 (= result!4907 true)))

(assert (=> d!19018 t!5452))

(declare-fun b_and!8565 () Bool)

(assert (= b_and!8553 (and (=> t!5452 result!4907) b_and!8565)))

(declare-fun t!5454 () Bool)

(declare-fun tb!4633 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (x!13169 x$102!4)) t!5454) tb!4633))

(declare-fun result!4909 () Bool)

(assert (=> tb!4633 (= result!4909 true)))

(assert (=> d!19018 t!5454))

(declare-fun b_and!8567 () Bool)

(assert (= b_and!8561 (and (=> t!5454 result!4909) b_and!8567)))

(declare-fun t!5456 () Bool)

(declare-fun tb!4635 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (x!13169 x$102!4)) t!5456) tb!4635))

(declare-fun result!4911 () Bool)

(assert (=> tb!4635 (= result!4911 true)))

(assert (=> d!19018 t!5456))

(declare-fun b_and!8569 () Bool)

(assert (= b_and!8549 (and (=> t!5456 result!4911) b_and!8569)))

(declare-fun tb!4637 () Bool)

(declare-fun t!5458 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (x!13169 x$102!4)) t!5458) tb!4637))

(declare-fun result!4913 () Bool)

(assert (=> tb!4637 (= result!4913 true)))

(assert (=> d!19018 t!5458))

(declare-fun b_and!8571 () Bool)

(assert (= b_and!8547 (and (=> t!5458 result!4913) b_and!8571)))

(declare-fun t!5460 () Bool)

(declare-fun tb!4639 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (x!13169 x$102!4)) t!5460) tb!4639))

(declare-fun result!4915 () Bool)

(assert (=> tb!4639 (= result!4915 true)))

(assert (=> d!19018 t!5460))

(declare-fun b_and!8573 () Bool)

(assert (= b_and!8555 (and (=> t!5460 result!4915) b_and!8573)))

(declare-fun t!5462 () Bool)

(declare-fun tb!4641 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (x!13169 x$102!4)) t!5462) tb!4641))

(declare-fun result!4917 () Bool)

(assert (=> tb!4641 (= result!4917 true)))

(assert (=> d!19018 t!5462))

(declare-fun b_and!8575 () Bool)

(assert (= b_and!8551 (and (=> t!5462 result!4917) b_and!8575)))

(declare-fun t!5464 () Bool)

(declare-fun tb!4643 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (x!13169 x$102!4)) t!5464) tb!4643))

(declare-fun result!4919 () Bool)

(assert (=> tb!4643 (= result!4919 true)))

(assert (=> d!19018 t!5464))

(declare-fun b_and!8577 () Bool)

(assert (= b_and!8559 (and (=> t!5464 result!4919) b_and!8577)))

(declare-fun b_lambda!10041 () Bool)

(assert (=> (not b_lambda!10041) (not d!19018)))

(declare-fun tb!4645 () Bool)

(declare-fun t!5466 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (y!1363 x$102!4)) t!5466) tb!4645))

(declare-fun result!4921 () Bool)

(assert (=> tb!4645 (= result!4921 true)))

(assert (=> d!19018 t!5466))

(declare-fun b_and!8579 () Bool)

(assert (= b_and!8569 (and (=> t!5466 result!4921) b_and!8579)))

(declare-fun t!5468 () Bool)

(declare-fun tb!4647 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (y!1363 x$102!4)) t!5468) tb!4647))

(declare-fun result!4923 () Bool)

(assert (=> tb!4647 (= result!4923 true)))

(assert (=> d!19018 t!5468))

(declare-fun b_and!8581 () Bool)

(assert (= b_and!8565 (and (=> t!5468 result!4923) b_and!8581)))

(declare-fun t!5470 () Bool)

(declare-fun tb!4649 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (y!1363 x$102!4)) t!5470) tb!4649))

(declare-fun result!4925 () Bool)

(assert (=> tb!4649 (= result!4925 true)))

(assert (=> d!19018 t!5470))

(declare-fun b_and!8583 () Bool)

(assert (= b_and!8577 (and (=> t!5470 result!4925) b_and!8583)))

(declare-fun t!5472 () Bool)

(declare-fun tb!4651 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (y!1363 x$102!4)) t!5472) tb!4651))

(declare-fun result!4927 () Bool)

(assert (=> tb!4651 (= result!4927 true)))

(assert (=> d!19018 t!5472))

(declare-fun b_and!8585 () Bool)

(assert (= b_and!8567 (and (=> t!5472 result!4927) b_and!8585)))

(declare-fun t!5474 () Bool)

(declare-fun tb!4653 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (y!1363 x$102!4)) t!5474) tb!4653))

(declare-fun result!4929 () Bool)

(assert (=> tb!4653 (= result!4929 true)))

(assert (=> d!19018 t!5474))

(declare-fun b_and!8587 () Bool)

(assert (= b_and!8575 (and (=> t!5474 result!4929) b_and!8587)))

(declare-fun t!5476 () Bool)

(declare-fun tb!4655 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (y!1363 x$102!4)) t!5476) tb!4655))

(declare-fun result!4931 () Bool)

(assert (=> tb!4655 (= result!4931 true)))

(assert (=> d!19018 t!5476))

(declare-fun b_and!8589 () Bool)

(assert (= b_and!8571 (and (=> t!5476 result!4931) b_and!8589)))

(declare-fun t!5478 () Bool)

(declare-fun tb!4657 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (y!1363 x$102!4)) t!5478) tb!4657))

(declare-fun result!4933 () Bool)

(assert (=> tb!4657 (= result!4933 true)))

(assert (=> d!19018 t!5478))

(declare-fun b_and!8591 () Bool)

(assert (= b_and!8563 (and (=> t!5478 result!4933) b_and!8591)))

(declare-fun tb!4659 () Bool)

(declare-fun t!5480 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (y!1363 x$102!4)) t!5480) tb!4659))

(declare-fun result!4935 () Bool)

(assert (=> tb!4659 (= result!4935 true)))

(assert (=> d!19018 t!5480))

(declare-fun b_and!8593 () Bool)

(assert (= b_and!8573 (and (=> t!5480 result!4935) b_and!8593)))

(declare-fun m!39281 () Bool)

(assert (=> d!19018 m!39281))

(declare-fun m!39283 () Bool)

(assert (=> d!19018 m!39283))

(assert (=> start!4894 d!19018))

(declare-fun d!19020 () Bool)

(assert (=> d!19020 (= (inv!672 x$103!3) (= (dynLambda!683 (x!13168 x$103!3)) (dynLambda!683 (y!1362 x$103!3))))))

(declare-fun b_lambda!10043 () Bool)

(assert (=> (not b_lambda!10043) (not d!19020)))

(declare-fun tb!4661 () Bool)

(declare-fun t!5482 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (x!13168 x$103!3)) t!5482) tb!4661))

(declare-fun result!4937 () Bool)

(assert (=> tb!4661 (= result!4937 true)))

(assert (=> d!19020 t!5482))

(declare-fun b_and!8595 () Bool)

(assert (= b_and!8593 (and (=> t!5482 result!4937) b_and!8595)))

(declare-fun tb!4663 () Bool)

(declare-fun t!5484 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (x!13168 x$103!3)) t!5484) tb!4663))

(declare-fun result!4939 () Bool)

(assert (=> tb!4663 (= result!4939 true)))

(assert (=> d!19020 t!5484))

(declare-fun b_and!8597 () Bool)

(assert (= b_and!8583 (and (=> t!5484 result!4939) b_and!8597)))

(declare-fun t!5486 () Bool)

(declare-fun tb!4665 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (x!13168 x$103!3)) t!5486) tb!4665))

(declare-fun result!4941 () Bool)

(assert (=> tb!4665 (= result!4941 true)))

(assert (=> d!19020 t!5486))

(declare-fun b_and!8599 () Bool)

(assert (= b_and!8589 (and (=> t!5486 result!4941) b_and!8599)))

(declare-fun tb!4667 () Bool)

(declare-fun t!5488 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (x!13168 x$103!3)) t!5488) tb!4667))

(declare-fun result!4943 () Bool)

(assert (=> tb!4667 (= result!4943 true)))

(assert (=> d!19020 t!5488))

(declare-fun b_and!8601 () Bool)

(assert (= b_and!8587 (and (=> t!5488 result!4943) b_and!8601)))

(declare-fun t!5490 () Bool)

(declare-fun tb!4669 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (x!13168 x$103!3)) t!5490) tb!4669))

(declare-fun result!4945 () Bool)

(assert (=> tb!4669 (= result!4945 true)))

(assert (=> d!19020 t!5490))

(declare-fun b_and!8603 () Bool)

(assert (= b_and!8579 (and (=> t!5490 result!4945) b_and!8603)))

(declare-fun t!5492 () Bool)

(declare-fun tb!4671 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (x!13168 x$103!3)) t!5492) tb!4671))

(declare-fun result!4947 () Bool)

(assert (=> tb!4671 (= result!4947 true)))

(assert (=> d!19020 t!5492))

(declare-fun b_and!8605 () Bool)

(assert (= b_and!8581 (and (=> t!5492 result!4947) b_and!8605)))

(declare-fun t!5494 () Bool)

(declare-fun tb!4673 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (x!13168 x$103!3)) t!5494) tb!4673))

(declare-fun result!4949 () Bool)

(assert (=> tb!4673 (= result!4949 true)))

(assert (=> d!19020 t!5494))

(declare-fun b_and!8607 () Bool)

(assert (= b_and!8585 (and (=> t!5494 result!4949) b_and!8607)))

(declare-fun t!5496 () Bool)

(declare-fun tb!4675 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (x!13168 x$103!3)) t!5496) tb!4675))

(declare-fun result!4951 () Bool)

(assert (=> tb!4675 (= result!4951 true)))

(assert (=> d!19020 t!5496))

(declare-fun b_and!8609 () Bool)

(assert (= b_and!8591 (and (=> t!5496 result!4951) b_and!8609)))

(declare-fun b_lambda!10045 () Bool)

(assert (=> (not b_lambda!10045) (not d!19020)))

(declare-fun t!5498 () Bool)

(declare-fun tb!4677 () Bool)

(assert (=> (and b!38020 (= (y!1362 x$103!3) (y!1362 x$103!3)) t!5498) tb!4677))

(declare-fun result!4953 () Bool)

(assert (=> tb!4677 (= result!4953 true)))

(assert (=> d!19020 t!5498))

(declare-fun b_and!8611 () Bool)

(assert (= b_and!8605 (and (=> t!5498 result!4953) b_and!8611)))

(declare-fun t!5500 () Bool)

(declare-fun tb!4679 () Bool)

(assert (=> (and b!38022 (= (x!13168 x$104!2) (y!1362 x$103!3)) t!5500) tb!4679))

(declare-fun result!4955 () Bool)

(assert (=> tb!4679 (= result!4955 true)))

(assert (=> d!19020 t!5500))

(declare-fun b_and!8613 () Bool)

(assert (= b_and!8603 (and (=> t!5500 result!4955) b_and!8613)))

(declare-fun tb!4681 () Bool)

(declare-fun t!5502 () Bool)

(assert (=> (and b!38025 (= (y!1363 x$102!4) (y!1362 x$103!3)) t!5502) tb!4681))

(declare-fun result!4957 () Bool)

(assert (=> tb!4681 (= result!4957 true)))

(assert (=> d!19020 t!5502))

(declare-fun b_and!8615 () Bool)

(assert (= b_and!8601 (and (=> t!5502 result!4957) b_and!8615)))

(declare-fun t!5504 () Bool)

(declare-fun tb!4683 () Bool)

(assert (=> (and b!38023 (= (y!1363 x$101!5) (y!1362 x$103!3)) t!5504) tb!4683))

(declare-fun result!4959 () Bool)

(assert (=> tb!4683 (= result!4959 true)))

(assert (=> d!19020 t!5504))

(declare-fun b_and!8617 () Bool)

(assert (= b_and!8595 (and (=> t!5504 result!4959) b_and!8617)))

(declare-fun tb!4685 () Bool)

(declare-fun t!5506 () Bool)

(assert (=> (and b!38025 (= (x!13169 x$102!4) (y!1362 x$103!3)) t!5506) tb!4685))

(declare-fun result!4961 () Bool)

(assert (=> tb!4685 (= result!4961 true)))

(assert (=> d!19020 t!5506))

(declare-fun b_and!8619 () Bool)

(assert (= b_and!8609 (and (=> t!5506 result!4961) b_and!8619)))

(declare-fun t!5508 () Bool)

(declare-fun tb!4687 () Bool)

(assert (=> (and b!38020 (= (x!13168 x$103!3) (y!1362 x$103!3)) t!5508) tb!4687))

(declare-fun result!4963 () Bool)

(assert (=> tb!4687 (= result!4963 true)))

(assert (=> d!19020 t!5508))

(declare-fun b_and!8621 () Bool)

(assert (= b_and!8607 (and (=> t!5508 result!4963) b_and!8621)))

(declare-fun tb!4689 () Bool)

(declare-fun t!5510 () Bool)

(assert (=> (and b!38022 (= (y!1362 x$104!2) (y!1362 x$103!3)) t!5510) tb!4689))

(declare-fun result!4965 () Bool)

(assert (=> tb!4689 (= result!4965 true)))

(assert (=> d!19020 t!5510))

(declare-fun b_and!8623 () Bool)

(assert (= b_and!8597 (and (=> t!5510 result!4965) b_and!8623)))

(declare-fun t!5512 () Bool)

(declare-fun tb!4691 () Bool)

(assert (=> (and b!38023 (= (x!13169 x$101!5) (y!1362 x$103!3)) t!5512) tb!4691))

(declare-fun result!4967 () Bool)

(assert (=> tb!4691 (= result!4967 true)))

(assert (=> d!19020 t!5512))

(declare-fun b_and!8625 () Bool)

(assert (= b_and!8599 (and (=> t!5512 result!4967) b_and!8625)))

(declare-fun m!39285 () Bool)

(assert (=> d!19020 m!39285))

(declare-fun m!39287 () Bool)

(assert (=> d!19020 m!39287))

(assert (=> start!4894 d!19020))

(declare-fun d!19022 () Bool)

(declare-fun c!8253 () Bool)

(declare-fun e!19560 () Bool)

(assert (=> d!19022 (= c!8253 e!19560)))

(declare-fun res!18156 () Bool)

(assert (=> d!19022 (=> (not res!18156) (not e!19560))))

(declare-fun isEven!1 (Nat!48) Bool)

(assert (=> d!19022 (= res!18156 (isEven!1 (Succ!29 (pair!0 n1!316 n2!332))))))

(declare-fun e!19559 () tuple2!174)

(assert (=> d!19022 (= (log2_and_remainder!0 (Succ!29 (pair!0 n1!316 n2!332))) e!19559)))

(declare-fun b!38041 () Bool)

(assert (=> b!38041 (= e!19560 (>!2 (Succ!29 (pair!0 n1!316 n2!332)) Zero!32))))

(declare-fun b!38039 () Bool)

(assert (=> b!38039 (= e!19559 (tuple2!175 (Succ!29 (_1!113 (log2_and_remainder!0 (/!2 (Succ!29 (pair!0 n1!316 n2!332)) (Succ!29 (Succ!29 Zero!32)))))) (_2!113 (log2_and_remainder!0 (/!2 (Succ!29 (pair!0 n1!316 n2!332)) (Succ!29 (Succ!29 Zero!32)))))))))

(declare-fun b!38040 () Bool)

(assert (=> b!38040 (= e!19559 (tuple2!175 Zero!32 (Succ!29 (pair!0 n1!316 n2!332))))))

(assert (= (and d!19022 res!18156) b!38041))

(assert (= (and d!19022 c!8253) b!38039))

(assert (= (and d!19022 (not c!8253)) b!38040))

(declare-fun m!39289 () Bool)

(assert (=> d!19022 m!39289))

(declare-fun m!39291 () Bool)

(assert (=> b!38041 m!39291))

(declare-fun m!39293 () Bool)

(assert (=> b!38039 m!39293))

(assert (=> b!38039 m!39293))

(declare-fun m!39295 () Bool)

(assert (=> b!38039 m!39295))

(assert (=> start!4894 d!19022))

(declare-fun d!19024 () Bool)

(declare-fun res!18159 () Bool)

(declare-fun e!19563 () Bool)

(assert (=> d!19024 (=> (not res!18159) (not e!19563))))

(declare-fun <!2 (Nat!48 Nat!48) Bool)

(assert (=> d!19024 (= res!18159 (not (<!2 that!1456 Zero!32)))))

(assert (=> d!19024 (= (>!2 that!1456 Zero!32) e!19563)))

(declare-fun b!38044 () Bool)

(assert (=> b!38044 (= e!19563 (not (= that!1456 Zero!32)))))

(assert (= (and d!19024 res!18159) b!38044))

(declare-fun m!39297 () Bool)

(assert (=> d!19024 m!39297))

(assert (=> b!38019 d!19024))

(declare-fun b!38055 () Bool)

(declare-fun e!19571 () Bool)

(declare-fun lt!7530 () Nat!48)

(declare-fun repr!0 (Nat!48) Int)

(assert (=> b!38055 (= e!19571 (< (repr!0 lt!7530) (repr!0 (-!4 remainder!2 (Succ!29 Zero!32)))))))

(declare-fun b!38056 () Bool)

(declare-fun e!19572 () Bool)

(assert (=> b!38056 (= e!19572 e!19571)))

(declare-fun res!18168 () Bool)

(assert (=> b!38056 (=> res!18168 e!19571)))

(assert (=> b!38056 (= res!18168 (not (>!2 (-!4 remainder!2 (Succ!29 Zero!32)) Zero!32)))))

(declare-fun b!38057 () Bool)

(declare-fun e!19570 () Nat!48)

(assert (=> b!38057 (= e!19570 Zero!32)))

(declare-fun b!38058 () Bool)

(assert (=> b!38058 (= e!19570 (Succ!29 (/!2 (-!4 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32))) (Succ!29 (Succ!29 Zero!32)))))))

(declare-fun b!38059 () Bool)

(declare-fun res!18169 () Bool)

(assert (=> b!38059 (=> res!18169 e!19571)))

(assert (=> b!38059 (= res!18169 (not (>!2 (Succ!29 (Succ!29 Zero!32)) (Succ!29 Zero!32))))))

(declare-fun d!19026 () Bool)

(assert (=> d!19026 e!19572))

(declare-fun res!18167 () Bool)

(assert (=> d!19026 (=> (not res!18167) (not e!19572))))

(assert (=> d!19026 (= res!18167 (<= (repr!0 lt!7530) (repr!0 (-!4 remainder!2 (Succ!29 Zero!32)))))))

(assert (=> d!19026 (= lt!7530 e!19570)))

(declare-fun c!8256 () Bool)

(assert (=> d!19026 (= c!8256 (<!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32))))))

(assert (=> d!19026 (>!2 (Succ!29 (Succ!29 Zero!32)) Zero!32)))

(assert (=> d!19026 (= (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32))) lt!7530)))

(assert (= (and d!19026 c!8256) b!38057))

(assert (= (and d!19026 (not c!8256)) b!38058))

(assert (= (and d!19026 res!18167) b!38056))

(assert (= (and b!38056 (not res!18168)) b!38059))

(assert (= (and b!38059 (not res!18169)) b!38055))

(declare-fun m!39299 () Bool)

(assert (=> b!38055 m!39299))

(assert (=> b!38055 m!39261))

(declare-fun m!39301 () Bool)

(assert (=> b!38055 m!39301))

(declare-fun m!39303 () Bool)

(assert (=> b!38059 m!39303))

(assert (=> b!38058 m!39261))

(declare-fun m!39305 () Bool)

(assert (=> b!38058 m!39305))

(assert (=> b!38058 m!39305))

(declare-fun m!39307 () Bool)

(assert (=> b!38058 m!39307))

(assert (=> b!38056 m!39261))

(declare-fun m!39309 () Bool)

(assert (=> b!38056 m!39309))

(assert (=> d!19026 m!39299))

(assert (=> d!19026 m!39261))

(assert (=> d!19026 m!39301))

(assert (=> d!19026 m!39261))

(declare-fun m!39311 () Bool)

(assert (=> d!19026 m!39311))

(declare-fun m!39313 () Bool)

(assert (=> d!19026 m!39313))

(assert (=> b!38027 d!19026))

(declare-fun b!38070 () Bool)

(declare-fun e!19580 () Nat!48)

(assert (=> b!38070 (= e!19580 (-!4 (n!1115 remainder!2) (n!1115 (Succ!29 Zero!32))))))

(declare-fun b!38071 () Bool)

(declare-fun res!18179 () Bool)

(declare-fun e!19579 () Bool)

(assert (=> b!38071 (=> res!18179 e!19579)))

(assert (=> b!38071 (= res!18179 (not (>!2 (Succ!29 Zero!32) Zero!32)))))

(declare-fun d!19028 () Bool)

(declare-fun e!19581 () Bool)

(assert (=> d!19028 e!19581))

(declare-fun res!18178 () Bool)

(assert (=> d!19028 (=> (not res!18178) (not e!19581))))

(declare-fun lt!7533 () Nat!48)

(assert (=> d!19028 (= res!18178 (<= (repr!0 lt!7533) (repr!0 remainder!2)))))

(assert (=> d!19028 (= lt!7533 e!19580)))

(declare-fun c!8259 () Bool)

(assert (=> d!19028 (= c!8259 (and (is-Succ!29 remainder!2) (is-Succ!29 (Succ!29 Zero!32))))))

(assert (=> d!19028 (= (-!4 remainder!2 (Succ!29 Zero!32)) lt!7533)))

(declare-fun b!38072 () Bool)

(assert (=> b!38072 (= e!19581 e!19579)))

(declare-fun res!18177 () Bool)

(assert (=> b!38072 (=> res!18177 e!19579)))

(assert (=> b!38072 (= res!18177 (not (>!2 remainder!2 Zero!32)))))

(declare-fun b!38073 () Bool)

(assert (=> b!38073 (= e!19580 remainder!2)))

(declare-fun b!38074 () Bool)

(assert (=> b!38074 (= e!19579 (< (repr!0 lt!7533) (repr!0 remainder!2)))))

(assert (= (and d!19028 c!8259) b!38070))

(assert (= (and d!19028 (not c!8259)) b!38073))

(assert (= (and d!19028 res!18178) b!38072))

(assert (= (and b!38072 (not res!18177)) b!38071))

(assert (= (and b!38071 (not res!18179)) b!38074))

(declare-fun m!39315 () Bool)

(assert (=> d!19028 m!39315))

(declare-fun m!39317 () Bool)

(assert (=> d!19028 m!39317))

(declare-fun m!39319 () Bool)

(assert (=> b!38072 m!39319))

(declare-fun m!39321 () Bool)

(assert (=> b!38070 m!39321))

(declare-fun m!39323 () Bool)

(assert (=> b!38071 m!39323))

(assert (=> b!38074 m!39315))

(assert (=> b!38074 m!39317))

(assert (=> b!38027 d!19028))

(declare-fun d!19030 () Bool)

(declare-fun c!8262 () Bool)

(assert (=> d!19030 (= c!8262 (is-Zero!32 (Succ!29 (Succ!29 Zero!32))))))

(declare-fun e!19584 () Nat!48)

(assert (=> d!19030 (= (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) e!19584)))

(declare-fun b!38079 () Bool)

(assert (=> b!38079 (= e!19584 Zero!32)))

(declare-fun b!38080 () Bool)

(assert (=> b!38080 (= e!19584 (+!5 (*!4 (n!1115 (Succ!29 (Succ!29 Zero!32))) n2!332) n2!332))))

(assert (= (and d!19030 c!8262) b!38079))

(assert (= (and d!19030 (not c!8262)) b!38080))

(declare-fun m!39325 () Bool)

(assert (=> b!38080 m!39325))

(assert (=> b!38080 m!39325))

(declare-fun m!39327 () Bool)

(assert (=> b!38080 m!39327))

(assert (=> b!38021 d!19030))

(declare-fun d!19032 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!19032 (= trivial!1 true)))

(assert (=> b!38018 d!19032))

(assert (=> b!38015 d!19032))

(declare-fun b_lambda!10047 () Bool)

(assert (= b_lambda!10033 (or (and b!38022 b_free!2405 (= (y!1362 x$104!2) (y!1363 x$101!5))) (and b!38022 b_free!2403 (= (x!13168 x$104!2) (y!1363 x$101!5))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (y!1363 x$101!5))) (and b!38015 (= lambda!4381 (y!1363 x$101!5))) (and b!38020 b_free!2387 (= (y!1362 x$103!3) (y!1363 x$101!5))) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (y!1363 x$101!5))) (and b!38026 (= lambda!4386 (y!1363 x$101!5))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (y!1363 x$101!5))) (and b!38017 (= lambda!4384 (y!1363 x$101!5))) (and b!38018 (= lambda!4383 (y!1363 x$101!5))) (and b!38023 b_free!2393) (and b!38025 b_free!2399 (= (y!1363 x$102!4) (y!1363 x$101!5))) b_lambda!10047)))

(declare-fun bs!11602 () Bool)

(declare-fun d!19034 () Bool)

(assert (= bs!11602 (and d!19034 b!38017)))

(assert (=> bs!11602 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11602 m!39261))

(assert (=> bs!11602 m!39261))

(assert (=> bs!11602 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (y!1363 x$101!5)) d!19012) d!19034))

(declare-fun bs!11603 () Bool)

(declare-fun d!19036 () Bool)

(assert (= bs!11603 (and d!19036 b!38026)))

(assert (=> bs!11603 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(declare-fun m!39329 () Bool)

(assert (=> bs!11603 m!39329))

(declare-fun m!39331 () Bool)

(assert (=> bs!11603 m!39331))

(assert (=> bs!11603 m!39275))

(assert (=> bs!11603 m!39329))

(assert (=> bs!11603 m!39247))

(assert (=> bs!11603 m!39275))

(assert (=> bs!11603 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (y!1363 x$101!5)) d!19012) d!19036))

(declare-fun bs!11604 () Bool)

(declare-fun d!19038 () Bool)

(assert (= bs!11604 (and d!19038 b!38018)))

(assert (=> bs!11604 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (y!1363 x$101!5)) d!19012) d!19038))

(declare-fun bs!11605 () Bool)

(declare-fun d!19040 () Bool)

(assert (= bs!11605 (and d!19040 b!38015)))

(declare-fun project!0 (Nat!48) tuple2!174)

(assert (=> bs!11605 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11605 m!39259))

(assert (=> bs!11605 m!39259))

(declare-fun m!39333 () Bool)

(assert (=> bs!11605 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (y!1363 x$101!5)) d!19012) d!19040))

(declare-fun b_lambda!10049 () Bool)

(assert (= b_lambda!10043 (or (and b!38025 b_free!2399 (= (y!1363 x$102!4) (x!13168 x$103!3))) (and b!38022 b_free!2403 (= (x!13168 x$104!2) (x!13168 x$103!3))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (x!13168 x$103!3))) (and b!38020 b_free!2385) (and b!38022 b_free!2405 (= (y!1362 x$104!2) (x!13168 x$103!3))) (and b!38018 (= lambda!4383 (x!13168 x$103!3))) (and b!38015 (= lambda!4381 (x!13168 x$103!3))) (and b!38020 b_free!2387 (= (y!1362 x$103!3) (x!13168 x$103!3))) (and b!38026 (= lambda!4386 (x!13168 x$103!3))) (and b!38017 (= lambda!4384 (x!13168 x$103!3))) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (x!13168 x$103!3))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (x!13168 x$103!3))) b_lambda!10049)))

(declare-fun bs!11606 () Bool)

(declare-fun d!19042 () Bool)

(assert (= bs!11606 (and d!19042 b!38015)))

(assert (=> bs!11606 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11606 m!39259))

(assert (=> bs!11606 m!39259))

(assert (=> bs!11606 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (x!13168 x$103!3)) d!19020) d!19042))

(declare-fun bs!11607 () Bool)

(declare-fun d!19044 () Bool)

(assert (= bs!11607 (and d!19044 b!38018)))

(assert (=> bs!11607 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (x!13168 x$103!3)) d!19020) d!19044))

(declare-fun bs!11608 () Bool)

(declare-fun d!19046 () Bool)

(assert (= bs!11608 (and d!19046 b!38017)))

(assert (=> bs!11608 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11608 m!39261))

(assert (=> bs!11608 m!39261))

(assert (=> bs!11608 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (x!13168 x$103!3)) d!19020) d!19046))

(declare-fun bs!11609 () Bool)

(declare-fun d!19048 () Bool)

(assert (= bs!11609 (and d!19048 b!38026)))

(assert (=> bs!11609 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11609 m!39329))

(assert (=> bs!11609 m!39331))

(assert (=> bs!11609 m!39275))

(assert (=> bs!11609 m!39329))

(assert (=> bs!11609 m!39247))

(assert (=> bs!11609 m!39275))

(assert (=> bs!11609 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (x!13168 x$103!3)) d!19020) d!19048))

(declare-fun b_lambda!10051 () Bool)

(assert (= b_lambda!10045 (or (and b!38022 b_free!2403 (= (x!13168 x$104!2) (y!1362 x$103!3))) (and b!38025 b_free!2399 (= (y!1363 x$102!4) (y!1362 x$103!3))) (and b!38015 (= lambda!4381 (y!1362 x$103!3))) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (y!1362 x$103!3))) (and b!38020 b_free!2387) (and b!38022 b_free!2405 (= (y!1362 x$104!2) (y!1362 x$103!3))) (and b!38026 (= lambda!4386 (y!1362 x$103!3))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (y!1362 x$103!3))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (y!1362 x$103!3))) (and b!38018 (= lambda!4383 (y!1362 x$103!3))) (and b!38017 (= lambda!4384 (y!1362 x$103!3))) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (y!1362 x$103!3))) b_lambda!10051)))

(declare-fun bs!11610 () Bool)

(declare-fun d!19050 () Bool)

(assert (= bs!11610 (and d!19050 b!38026)))

(assert (=> bs!11610 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11610 m!39329))

(assert (=> bs!11610 m!39331))

(assert (=> bs!11610 m!39275))

(assert (=> bs!11610 m!39329))

(assert (=> bs!11610 m!39247))

(assert (=> bs!11610 m!39275))

(assert (=> bs!11610 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (y!1362 x$103!3)) d!19020) d!19050))

(declare-fun bs!11611 () Bool)

(declare-fun d!19052 () Bool)

(assert (= bs!11611 (and d!19052 b!38017)))

(assert (=> bs!11611 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11611 m!39261))

(assert (=> bs!11611 m!39261))

(assert (=> bs!11611 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (y!1362 x$103!3)) d!19020) d!19052))

(declare-fun bs!11612 () Bool)

(declare-fun d!19054 () Bool)

(assert (= bs!11612 (and d!19054 b!38015)))

(assert (=> bs!11612 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11612 m!39259))

(assert (=> bs!11612 m!39259))

(assert (=> bs!11612 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (y!1362 x$103!3)) d!19020) d!19054))

(declare-fun bs!11613 () Bool)

(declare-fun d!19056 () Bool)

(assert (= bs!11613 (and d!19056 b!38018)))

(assert (=> bs!11613 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (y!1362 x$103!3)) d!19020) d!19056))

(declare-fun b_lambda!10053 () Bool)

(assert (= b_lambda!10031 (or (and b!38017 (= lambda!4384 (x!13169 x$101!5))) (and b!38020 b_free!2387 (= (y!1362 x$103!3) (x!13169 x$101!5))) (and b!38022 b_free!2403 (= (x!13168 x$104!2) (x!13169 x$101!5))) (and b!38025 b_free!2399 (= (y!1363 x$102!4) (x!13169 x$101!5))) (and b!38018 (= lambda!4383 (x!13169 x$101!5))) (and b!38023 b_free!2391) (and b!38026 (= lambda!4386 (x!13169 x$101!5))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (x!13169 x$101!5))) (and b!38022 b_free!2405 (= (y!1362 x$104!2) (x!13169 x$101!5))) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (x!13169 x$101!5))) (and b!38015 (= lambda!4381 (x!13169 x$101!5))) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (x!13169 x$101!5))) b_lambda!10053)))

(declare-fun bs!11614 () Bool)

(declare-fun d!19058 () Bool)

(assert (= bs!11614 (and d!19058 b!38017)))

(assert (=> bs!11614 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11614 m!39261))

(assert (=> bs!11614 m!39261))

(assert (=> bs!11614 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (x!13169 x$101!5)) d!19012) d!19058))

(declare-fun bs!11615 () Bool)

(declare-fun d!19060 () Bool)

(assert (= bs!11615 (and d!19060 b!38015)))

(assert (=> bs!11615 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11615 m!39259))

(assert (=> bs!11615 m!39259))

(assert (=> bs!11615 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (x!13169 x$101!5)) d!19012) d!19060))

(declare-fun bs!11616 () Bool)

(declare-fun d!19062 () Bool)

(assert (= bs!11616 (and d!19062 b!38026)))

(assert (=> bs!11616 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11616 m!39329))

(assert (=> bs!11616 m!39331))

(assert (=> bs!11616 m!39275))

(assert (=> bs!11616 m!39329))

(assert (=> bs!11616 m!39247))

(assert (=> bs!11616 m!39275))

(assert (=> bs!11616 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (x!13169 x$101!5)) d!19012) d!19062))

(declare-fun bs!11617 () Bool)

(declare-fun d!19064 () Bool)

(assert (= bs!11617 (and d!19064 b!38018)))

(assert (=> bs!11617 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (x!13169 x$101!5)) d!19012) d!19064))

(declare-fun b_lambda!10055 () Bool)

(assert (= b_lambda!10035 (or (and b!38017 (= lambda!4384 (x!13168 x$104!2))) (and b!38020 b_free!2387 (= (y!1362 x$103!3) (x!13168 x$104!2))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (x!13168 x$104!2))) (and b!38025 b_free!2399 (= (y!1363 x$102!4) (x!13168 x$104!2))) (and b!38022 b_free!2405 (= (y!1362 x$104!2) (x!13168 x$104!2))) (and b!38018 (= lambda!4383 (x!13168 x$104!2))) (and b!38026 (= lambda!4386 (x!13168 x$104!2))) (and b!38022 b_free!2403) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (x!13168 x$104!2))) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (x!13168 x$104!2))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (x!13168 x$104!2))) (and b!38015 (= lambda!4381 (x!13168 x$104!2))) b_lambda!10055)))

(declare-fun bs!11618 () Bool)

(declare-fun d!19066 () Bool)

(assert (= bs!11618 (and d!19066 b!38018)))

(assert (=> bs!11618 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (x!13168 x$104!2)) d!19016) d!19066))

(declare-fun bs!11619 () Bool)

(declare-fun d!19068 () Bool)

(assert (= bs!11619 (and d!19068 b!38026)))

(assert (=> bs!11619 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11619 m!39329))

(assert (=> bs!11619 m!39331))

(assert (=> bs!11619 m!39275))

(assert (=> bs!11619 m!39329))

(assert (=> bs!11619 m!39247))

(assert (=> bs!11619 m!39275))

(assert (=> bs!11619 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (x!13168 x$104!2)) d!19016) d!19068))

(declare-fun bs!11620 () Bool)

(declare-fun d!19070 () Bool)

(assert (= bs!11620 (and d!19070 b!38017)))

(assert (=> bs!11620 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11620 m!39261))

(assert (=> bs!11620 m!39261))

(assert (=> bs!11620 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (x!13168 x$104!2)) d!19016) d!19070))

(declare-fun bs!11621 () Bool)

(declare-fun d!19072 () Bool)

(assert (= bs!11621 (and d!19072 b!38015)))

(assert (=> bs!11621 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11621 m!39259))

(assert (=> bs!11621 m!39259))

(assert (=> bs!11621 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (x!13168 x$104!2)) d!19016) d!19072))

(declare-fun b_lambda!10057 () Bool)

(assert (= b_lambda!10041 (or (and b!38020 b_free!2387 (= (y!1362 x$103!3) (y!1363 x$102!4))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (y!1363 x$102!4))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (y!1363 x$102!4))) (and b!38015 (= lambda!4381 (y!1363 x$102!4))) (and b!38022 b_free!2405 (= (y!1362 x$104!2) (y!1363 x$102!4))) (and b!38018 (= lambda!4383 (y!1363 x$102!4))) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (y!1363 x$102!4))) (and b!38022 b_free!2403 (= (x!13168 x$104!2) (y!1363 x$102!4))) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (y!1363 x$102!4))) (and b!38026 (= lambda!4386 (y!1363 x$102!4))) (and b!38025 b_free!2399) (and b!38017 (= lambda!4384 (y!1363 x$102!4))) b_lambda!10057)))

(declare-fun bs!11622 () Bool)

(declare-fun d!19074 () Bool)

(assert (= bs!11622 (and d!19074 b!38026)))

(assert (=> bs!11622 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11622 m!39329))

(assert (=> bs!11622 m!39331))

(assert (=> bs!11622 m!39275))

(assert (=> bs!11622 m!39329))

(assert (=> bs!11622 m!39247))

(assert (=> bs!11622 m!39275))

(assert (=> bs!11622 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (y!1363 x$102!4)) d!19018) d!19074))

(declare-fun bs!11623 () Bool)

(declare-fun d!19076 () Bool)

(assert (= bs!11623 (and d!19076 b!38017)))

(assert (=> bs!11623 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11623 m!39261))

(assert (=> bs!11623 m!39261))

(assert (=> bs!11623 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (y!1363 x$102!4)) d!19018) d!19076))

(declare-fun bs!11624 () Bool)

(declare-fun d!19078 () Bool)

(assert (= bs!11624 (and d!19078 b!38018)))

(assert (=> bs!11624 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (y!1363 x$102!4)) d!19018) d!19078))

(declare-fun bs!11625 () Bool)

(declare-fun d!19080 () Bool)

(assert (= bs!11625 (and d!19080 b!38015)))

(assert (=> bs!11625 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11625 m!39259))

(assert (=> bs!11625 m!39259))

(assert (=> bs!11625 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (y!1363 x$102!4)) d!19018) d!19080))

(declare-fun b_lambda!10059 () Bool)

(assert (= b_lambda!10039 (or (and b!38018 (= lambda!4383 (x!13169 x$102!4))) (and b!38025 b_free!2397) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (x!13169 x$102!4))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (x!13169 x$102!4))) (and b!38025 b_free!2399 (= (y!1363 x$102!4) (x!13169 x$102!4))) (and b!38022 b_free!2405 (= (y!1362 x$104!2) (x!13169 x$102!4))) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (x!13169 x$102!4))) (and b!38015 (= lambda!4381 (x!13169 x$102!4))) (and b!38022 b_free!2403 (= (x!13168 x$104!2) (x!13169 x$102!4))) (and b!38026 (= lambda!4386 (x!13169 x$102!4))) (and b!38020 b_free!2387 (= (y!1362 x$103!3) (x!13169 x$102!4))) (and b!38017 (= lambda!4384 (x!13169 x$102!4))) b_lambda!10059)))

(declare-fun bs!11626 () Bool)

(declare-fun d!19082 () Bool)

(assert (= bs!11626 (and d!19082 b!38017)))

(assert (=> bs!11626 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11626 m!39261))

(assert (=> bs!11626 m!39261))

(assert (=> bs!11626 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (x!13169 x$102!4)) d!19018) d!19082))

(declare-fun bs!11627 () Bool)

(declare-fun d!19084 () Bool)

(assert (= bs!11627 (and d!19084 b!38026)))

(assert (=> bs!11627 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11627 m!39329))

(assert (=> bs!11627 m!39331))

(assert (=> bs!11627 m!39275))

(assert (=> bs!11627 m!39329))

(assert (=> bs!11627 m!39247))

(assert (=> bs!11627 m!39275))

(assert (=> bs!11627 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (x!13169 x$102!4)) d!19018) d!19084))

(declare-fun bs!11628 () Bool)

(declare-fun d!19086 () Bool)

(assert (= bs!11628 (and d!19086 b!38015)))

(assert (=> bs!11628 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11628 m!39259))

(assert (=> bs!11628 m!39259))

(assert (=> bs!11628 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (x!13169 x$102!4)) d!19018) d!19086))

(declare-fun bs!11629 () Bool)

(declare-fun d!19088 () Bool)

(assert (= bs!11629 (and d!19088 b!38018)))

(assert (=> bs!11629 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (x!13169 x$102!4)) d!19018) d!19088))

(declare-fun b_lambda!10061 () Bool)

(assert (= b_lambda!10037 (or (and b!38022 b_free!2403 (= (x!13168 x$104!2) (y!1362 x$104!2))) (and b!38023 b_free!2391 (= (x!13169 x$101!5) (y!1362 x$104!2))) (and b!38026 (= lambda!4386 (y!1362 x$104!2))) (and b!38015 (= lambda!4381 (y!1362 x$104!2))) (and b!38025 b_free!2399 (= (y!1363 x$102!4) (y!1362 x$104!2))) (and b!38017 (= lambda!4384 (y!1362 x$104!2))) (and b!38025 b_free!2397 (= (x!13169 x$102!4) (y!1362 x$104!2))) (and b!38022 b_free!2405) (and b!38020 b_free!2387 (= (y!1362 x$103!3) (y!1362 x$104!2))) (and b!38023 b_free!2393 (= (y!1363 x$101!5) (y!1362 x$104!2))) (and b!38018 (= lambda!4383 (y!1362 x$104!2))) (and b!38020 b_free!2385 (= (x!13168 x$103!3) (y!1362 x$104!2))) b_lambda!10061)))

(declare-fun bs!11630 () Bool)

(declare-fun d!19090 () Bool)

(assert (= bs!11630 (and d!19090 b!38018)))

(assert (=> bs!11630 (= (dynLambda!683 lambda!4383) (tuple2!175 p1!72 p2!66))))

(assert (=> (and b!38018 (= lambda!4383 (y!1362 x$104!2)) d!19016) d!19090))

(declare-fun bs!11631 () Bool)

(declare-fun d!19092 () Bool)

(assert (= bs!11631 (and d!19092 b!38017)))

(assert (=> bs!11631 (= (dynLambda!683 lambda!4384) (tuple2!175 p1!72 (/!2 (-!4 remainder!2 (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11631 m!39261))

(assert (=> bs!11631 m!39261))

(assert (=> bs!11631 m!39263))

(assert (=> (and b!38017 (= lambda!4384 (y!1362 x$104!2)) d!19016) d!19092))

(declare-fun bs!11632 () Bool)

(declare-fun d!19094 () Bool)

(assert (= bs!11632 (and d!19094 b!38026)))

(assert (=> bs!11632 (= (dynLambda!683 lambda!4386) (tuple2!175 n1!316 (/!2 (-!4 (+!5 (*!4 (Succ!29 (Succ!29 Zero!32)) n2!332) (Succ!29 Zero!32)) (Succ!29 Zero!32)) (Succ!29 (Succ!29 Zero!32)))))))

(assert (=> bs!11632 m!39329))

(assert (=> bs!11632 m!39331))

(assert (=> bs!11632 m!39275))

(assert (=> bs!11632 m!39329))

(assert (=> bs!11632 m!39247))

(assert (=> bs!11632 m!39275))

(assert (=> bs!11632 m!39247))

(assert (=> (and b!38026 (= lambda!4386 (y!1362 x$104!2)) d!19016) d!19094))

(declare-fun bs!11633 () Bool)

(declare-fun d!19096 () Bool)

(assert (= bs!11633 (and d!19096 b!38015)))

(assert (=> bs!11633 (= (dynLambda!683 lambda!4381) (project!0 (pair!0 n1!316 n2!332)))))

(assert (=> bs!11633 m!39259))

(assert (=> bs!11633 m!39259))

(assert (=> bs!11633 m!39333))

(assert (=> (and b!38015 (= lambda!4381 (y!1362 x$104!2)) d!19016) d!19096))

(push 1)

(assert (not b!38039))

(assert (not bs!11616))

(assert (not b_lambda!10049))

(assert (not b!38041))

(assert b_and!8617)

(assert (not b!38059))

(assert (not bs!11622))

(assert (not bs!11603))

(assert (not b!38058))

(assert (not b!38056))

(assert b_and!8611)

(assert (not bs!11619))

(assert (not d!19022))

(assert (not bs!11605))

(assert (not bs!11612))

(assert (not b_lambda!10047))

(assert (not b!38071))

(assert (not b_next!5771))

(assert (not bs!11620))

(assert b_and!8625)

(assert (not b!38072))

(assert (not b_lambda!10051))

(assert (not bs!11628))

(assert (not b_next!5781))

(assert (not d!19026))

(assert (not d!19014))

(assert (not b_lambda!10061))

(assert (not b_next!5769))

(assert (not b_next!5767))

(assert (not bs!11623))

(assert (not b_next!5777))

(assert (not bs!11610))

(assert (not b_next!5773))

(assert (not b_lambda!10059))

(assert (not bs!11615))

(assert (not bs!11602))

(assert (not bs!11621))

(assert (not b_lambda!10055))

(assert (not bs!11609))

(assert (not bs!11606))

(assert (not bs!11633))

(assert (not b_next!5727))

(assert (not b_next!5725))

(assert (not bs!11632))

(assert (not bs!11631))

(assert (not b_lambda!10053))

(assert (not b!38070))

(assert b_and!8615)

(assert b_and!8619)

(assert (not b_next!5765))

(assert (not b_next!5779))

(assert (not d!19028))

(assert (not d!19024))

(assert (not bs!11608))

(assert b_and!8491)

(assert (not bs!11614))

(assert b_and!8479)

(assert b_and!8497)

(assert b_and!8621)

(assert b_and!8613)

(assert (not b_lambda!10057))

(assert (not bs!11627))

(assert (not b!38080))

(assert (not b_next!5783))

(assert (not b!38074))

(assert (not bs!11611))

(assert b_and!8485)

(assert (not bs!11626))

(assert b_and!8623)

(assert (not bs!11625))

(assert (not b!38055))

(assert (not b_next!5775))

(check-sat)

(pop 1)

(push 1)

(assert b_and!8617)

(assert b_and!8611)

(assert (not b_next!5771))

(assert b_and!8625)

(assert (not b_next!5781))

(assert (not b_next!5769))

(assert (not b_next!5767))

(assert (not b_next!5777))

(assert (not b_next!5773))

(assert (not b_next!5727))

(assert (not b_next!5725))

(assert b_and!8615)

(assert b_and!8619)

(assert (not b_next!5765))

(assert (not b_next!5779))

(assert b_and!8491)

(assert b_and!8479)

(assert b_and!8497)

(assert b_and!8621)

(assert b_and!8613)

(assert (not b_next!5783))

(assert b_and!8485)

(assert b_and!8623)

(assert (not b_next!5775))

(check-sat)

(pop 1)

