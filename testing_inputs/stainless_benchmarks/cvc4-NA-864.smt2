; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6484 () Bool)

(assert start!6484)

(declare-fun b!47942 () Bool)

(declare-fun b_free!5865 () Bool)

(declare-fun b_next!26489 () Bool)

(assert (=> b!47942 (= b_free!5865 (not b_next!26489))))

(declare-fun tp!12873 () Bool)

(declare-fun b_and!38295 () Bool)

(assert (=> b!47942 (= tp!12873 b_and!38295)))

(declare-fun b_free!5867 () Bool)

(declare-fun b_next!26491 () Bool)

(assert (=> b!47942 (= b_free!5867 (not b_next!26491))))

(declare-fun tp!12876 () Bool)

(declare-fun b_and!38297 () Bool)

(assert (=> b!47942 (= tp!12876 b_and!38297)))

(declare-fun b_free!5869 () Bool)

(declare-fun b_next!26493 () Bool)

(assert (=> b!47942 (= b_free!5869 (not b_next!26493))))

(declare-fun tp!12870 () Bool)

(declare-fun b_and!38299 () Bool)

(assert (=> b!47942 (= tp!12870 b_and!38299)))

(declare-fun b!47943 () Bool)

(declare-fun b_free!5871 () Bool)

(declare-fun b_next!26495 () Bool)

(assert (=> b!47943 (= b_free!5871 (not b_next!26495))))

(declare-fun tp!12869 () Bool)

(declare-fun b_and!38301 () Bool)

(assert (=> b!47943 (= tp!12869 b_and!38301)))

(declare-fun b_free!5873 () Bool)

(declare-fun b_next!26497 () Bool)

(assert (=> b!47943 (= b_free!5873 (not b_next!26497))))

(declare-fun tp!12872 () Bool)

(declare-fun b_and!38303 () Bool)

(assert (=> b!47943 (= tp!12872 b_and!38303)))

(declare-fun b_free!5875 () Bool)

(declare-fun b_next!26499 () Bool)

(assert (=> b!47943 (= b_free!5875 (not b_next!26499))))

(declare-fun tp!12875 () Bool)

(declare-fun b_and!38305 () Bool)

(assert (=> b!47943 (= tp!12875 b_and!38305)))

(declare-fun b!47937 () Bool)

(declare-fun b_free!5877 () Bool)

(declare-fun b_next!26501 () Bool)

(assert (=> b!47937 (= b_free!5877 (not b_next!26501))))

(declare-fun tp!12877 () Bool)

(declare-fun b_and!38307 () Bool)

(assert (=> b!47937 (= tp!12877 b_and!38307)))

(declare-fun b_free!5879 () Bool)

(declare-fun b_next!26503 () Bool)

(assert (=> b!47937 (= b_free!5879 (not b_next!26503))))

(declare-fun tp!12874 () Bool)

(declare-fun b_and!38309 () Bool)

(assert (=> b!47937 (= tp!12874 b_and!38309)))

(declare-fun b_free!5881 () Bool)

(declare-fun b_next!26505 () Bool)

(assert (=> b!47937 (= b_free!5881 (not b_next!26505))))

(declare-fun tp!12871 () Bool)

(declare-fun b_and!38311 () Bool)

(assert (=> b!47937 (= tp!12871 b_and!38311)))

(declare-fun b!47939 () Bool)

(assert (=> b!47939 true))

(assert (=> b!47939 true))

(assert (=> b!47939 true))

(declare-fun b_next!26507 () Bool)

(declare-fun lambda!7043 () Int)

(declare-datatypes () ((Nat!225 (Zero!209) (Succ!206 (n!1362 Nat!225)))))

(declare-datatypes () ((RAEqEvidence!376 (RAEqEvidence!377 (x!17693 Int) (y!1527 Int) (evidence!640 Int)))))

(declare-fun x$41!67 () RAEqEvidence!376)

(assert (=> b!47942 (= b_next!26489 (or (and b!47939 (= lambda!7043 (x!17693 x$41!67))) b_next!26507))))

(declare-fun b_next!26509 () Bool)

(assert (=> b!47942 (= b_next!26491 (or (and b!47939 (= lambda!7043 (y!1527 x$41!67))) b_next!26509))))

(declare-fun b_next!26511 () Bool)

(declare-datatypes () ((Unit!658 (Unit!659))))

(declare-datatypes () ((RAEqEvidence!378 (RAEqEvidence!379 (x!17694 Int) (y!1528 Int) (evidence!641 Int)))))

(declare-fun thiss!6327 () RAEqEvidence!378)

(assert (=> b!47937 (= b_next!26503 (or (and b!47939 (= lambda!7043 (y!1528 thiss!6327))) b_next!26511))))

(declare-fun b_next!26513 () Bool)

(declare-fun prev!762 () RAEqEvidence!376)

(assert (=> b!47943 (= b_next!26497 (or (and b!47939 (= lambda!7043 (y!1527 prev!762))) b_next!26513))))

(declare-fun b_next!26515 () Bool)

(assert (=> b!47937 (= b_next!26501 (or (and b!47939 (= lambda!7043 (x!17694 thiss!6327))) b_next!26515))))

(declare-fun b_next!26517 () Bool)

(assert (=> b!47943 (= b_next!26495 (or (and b!47939 (= lambda!7043 (x!17693 prev!762))) b_next!26517))))

(declare-fun m!50889 () Bool)

(assert (=> b!47939 m!50889))

(declare-fun lambda!7044 () Int)

(declare-fun dynLambda!813 (Int) Bool)

(assert (=> (and b!47942 b!47939 (= (dynLambda!813 lambda!7044) (dynLambda!813 (evidence!640 x$41!67)))) (= lambda!7044 (evidence!640 x$41!67))))

(assert (=> (and b!47943 b!47939 (= (dynLambda!813 lambda!7044) (dynLambda!813 (evidence!640 prev!762)))) (= lambda!7044 (evidence!640 prev!762))))

(declare-fun b_next!26519 () Bool)

(assert (=> b!47942 (= b_next!26493 (or (and b!47939 (= lambda!7044 (evidence!640 x$41!67))) b_next!26519))))

(declare-fun b_next!26521 () Bool)

(assert (=> b!47943 (= b_next!26499 (or (and b!47939 (= lambda!7044 (evidence!640 prev!762))) b_next!26521))))

(declare-fun bs!18834 () Bool)

(declare-fun b!47941 () Bool)

(assert (= bs!18834 (and b!47941 b!47939)))

(declare-fun lambda!7045 () Int)

(assert (=> bs!18834 (not (= lambda!7045 lambda!7043))))

(assert (=> b!47941 true))

(assert (=> b!47941 true))

(assert (=> b!47941 true))

(declare-fun b_next!26523 () Bool)

(assert (=> b!47942 (= b_next!26507 (or (and b!47941 (= lambda!7045 (x!17693 x$41!67))) b_next!26523))))

(declare-fun b_next!26525 () Bool)

(assert (=> b!47942 (= b_next!26509 (or (and b!47941 (= lambda!7045 (y!1527 x$41!67))) b_next!26525))))

(declare-fun b_next!26527 () Bool)

(assert (=> b!47937 (= b_next!26511 (or (and b!47941 (= lambda!7045 (y!1528 thiss!6327))) b_next!26527))))

(declare-fun b_next!26529 () Bool)

(assert (=> b!47943 (= b_next!26513 (or (and b!47941 (= lambda!7045 (y!1527 prev!762))) b_next!26529))))

(declare-fun b_next!26531 () Bool)

(assert (=> b!47937 (= b_next!26515 (or (and b!47941 (= lambda!7045 (x!17694 thiss!6327))) b_next!26531))))

(declare-fun b_next!26533 () Bool)

(assert (=> b!47943 (= b_next!26517 (or (and b!47941 (= lambda!7045 (x!17693 prev!762))) b_next!26533))))

(declare-fun lambda!7046 () Int)

(assert (=> bs!18834 (not (= lambda!7046 lambda!7043))))

(assert (=> b!47941 (not (= lambda!7046 lambda!7045))))

(assert (=> b!47941 true))

(assert (=> b!47941 true))

(assert (=> b!47941 true))

(declare-fun b_next!26535 () Bool)

(assert (=> b!47942 (= b_next!26523 (or (and b!47941 (= lambda!7046 (x!17693 x$41!67))) b_next!26535))))

(declare-fun b_next!26537 () Bool)

(assert (=> b!47942 (= b_next!26525 (or (and b!47941 (= lambda!7046 (y!1527 x$41!67))) b_next!26537))))

(declare-fun b_next!26539 () Bool)

(assert (=> b!47937 (= b_next!26527 (or (and b!47941 (= lambda!7046 (y!1528 thiss!6327))) b_next!26539))))

(declare-fun b_next!26541 () Bool)

(assert (=> b!47943 (= b_next!26529 (or (and b!47941 (= lambda!7046 (y!1527 prev!762))) b_next!26541))))

(declare-fun b_next!26543 () Bool)

(assert (=> b!47937 (= b_next!26531 (or (and b!47941 (= lambda!7046 (x!17694 thiss!6327))) b_next!26543))))

(declare-fun b_next!26545 () Bool)

(assert (=> b!47943 (= b_next!26533 (or (and b!47941 (= lambda!7046 (x!17693 prev!762))) b_next!26545))))

(assert (=> b!47941 true))

(assert (=> b!47941 true))

(assert (=> b!47941 true))

(declare-fun lambda!7047 () Int)

(declare-fun b_next!26547 () Bool)

(assert (=> b!47937 (= b_next!26505 (or (and b!47941 (= lambda!7047 (evidence!641 thiss!6327))) b_next!26547))))

(declare-fun b!47936 () Bool)

(declare-fun e!24984 () Bool)

(declare-fun dynLambda!814 (Int) Nat!225)

(assert (=> b!47936 (= e!24984 (not (= (dynLambda!814 (y!1527 prev!762)) (dynLambda!814 (x!17694 thiss!6327)))))))

(declare-fun e!24986 () Bool)

(assert (=> b!47937 (= e!24986 (and tp!12877 tp!12874 tp!12871))))

(declare-fun b!47938 () Bool)

(declare-fun res!22461 () Bool)

(assert (=> b!47938 (=> (not res!22461) (not e!24984))))

(declare-fun keepEvidence!50 (Bool) Bool)

(assert (=> b!47938 (= res!22461 (keepEvidence!50 (dynLambda!813 (evidence!640 prev!762))))))

(declare-fun res!22463 () Bool)

(assert (=> b!47939 (=> (not res!22463) (not e!24984))))

(assert (=> b!47939 (= res!22463 (= x$41!67 (RAEqEvidence!377 lambda!7043 lambda!7043 lambda!7044)))))

(declare-fun res!22462 () Bool)

(assert (=> start!6484 (=> (not res!22462) (not e!24984))))

(declare-fun n1!336 () Nat!225)

(assert (=> start!6484 (= res!22462 (not (is-Zero!209 n1!336)))))

(assert (=> start!6484 e!24984))

(assert (=> start!6484 true))

(declare-fun e!24985 () Bool)

(declare-fun inv!837 (RAEqEvidence!376) Bool)

(assert (=> start!6484 (and (inv!837 x$41!67) e!24985)))

(declare-fun e!24983 () Bool)

(assert (=> start!6484 (and (inv!837 prev!762) e!24983)))

(declare-fun inv!838 (RAEqEvidence!378) Bool)

(assert (=> start!6484 (and (inv!838 thiss!6327) e!24986)))

(declare-fun b!47940 () Bool)

(declare-fun res!22460 () Bool)

(assert (=> b!47940 (=> (not res!22460) (not e!24984))))

(assert (=> b!47940 (= res!22460 (= prev!762 x$41!67))))

(declare-fun res!22459 () Bool)

(assert (=> b!47941 (=> (not res!22459) (not e!24984))))

(assert (=> b!47941 (= res!22459 (= thiss!6327 (RAEqEvidence!379 lambda!7045 lambda!7046 lambda!7047)))))

(assert (=> b!47942 (= e!24985 (and tp!12873 tp!12876 tp!12870))))

(assert (=> b!47943 (= e!24983 (and tp!12869 tp!12872 tp!12875))))

(assert (= (and start!6484 res!22462) b!47939))

(assert (= (and b!47939 res!22463) b!47941))

(assert (= (and b!47941 res!22459) b!47940))

(assert (= (and b!47940 res!22460) b!47938))

(assert (= (and b!47938 res!22461) b!47936))

(assert (= start!6484 b!47942))

(assert (= start!6484 b!47943))

(assert (= start!6484 b!47937))

(declare-fun b_lambda!12713 () Bool)

(assert (=> (not b_lambda!12713) (not b!47936)))

(declare-fun t!29583 () Bool)

(declare-fun tb!28761 () Bool)

(assert (=> (and b!47943 (= (y!1527 prev!762) (y!1527 prev!762)) t!29583) tb!28761))

(declare-fun result!29037 () Bool)

(assert (=> tb!28761 (= result!29037 true)))

(assert (=> b!47936 t!29583))

(declare-fun b_and!38313 () Bool)

(assert (= b_and!38303 (and (=> t!29583 result!29037) b_and!38313)))

(declare-fun tb!28763 () Bool)

(declare-fun t!29585 () Bool)

(assert (=> (and b!47937 (= (x!17694 thiss!6327) (y!1527 prev!762)) t!29585) tb!28763))

(declare-fun result!29039 () Bool)

(assert (=> tb!28763 (= result!29039 true)))

(assert (=> b!47936 t!29585))

(declare-fun b_and!38315 () Bool)

(assert (= b_and!38307 (and (=> t!29585 result!29039) b_and!38315)))

(declare-fun t!29587 () Bool)

(declare-fun tb!28765 () Bool)

(assert (=> (and b!47942 (= (x!17693 x$41!67) (y!1527 prev!762)) t!29587) tb!28765))

(declare-fun result!29041 () Bool)

(assert (=> tb!28765 (= result!29041 true)))

(assert (=> b!47936 t!29587))

(declare-fun b_and!38317 () Bool)

(assert (= b_and!38295 (and (=> t!29587 result!29041) b_and!38317)))

(declare-fun t!29589 () Bool)

(declare-fun tb!28767 () Bool)

(assert (=> (and b!47937 (= (y!1528 thiss!6327) (y!1527 prev!762)) t!29589) tb!28767))

(declare-fun result!29043 () Bool)

(assert (=> tb!28767 (= result!29043 true)))

(assert (=> b!47936 t!29589))

(declare-fun b_and!38319 () Bool)

(assert (= b_and!38309 (and (=> t!29589 result!29043) b_and!38319)))

(declare-fun t!29591 () Bool)

(declare-fun tb!28769 () Bool)

(assert (=> (and b!47942 (= (y!1527 x$41!67) (y!1527 prev!762)) t!29591) tb!28769))

(declare-fun result!29045 () Bool)

(assert (=> tb!28769 (= result!29045 true)))

(assert (=> b!47936 t!29591))

(declare-fun b_and!38321 () Bool)

(assert (= b_and!38297 (and (=> t!29591 result!29045) b_and!38321)))

(declare-fun t!29593 () Bool)

(declare-fun tb!28771 () Bool)

(assert (=> (and b!47943 (= (x!17693 prev!762) (y!1527 prev!762)) t!29593) tb!28771))

(declare-fun result!29047 () Bool)

(assert (=> tb!28771 (= result!29047 true)))

(assert (=> b!47936 t!29593))

(declare-fun b_and!38323 () Bool)

(assert (= b_and!38301 (and (=> t!29593 result!29047) b_and!38323)))

(declare-fun b_lambda!12715 () Bool)

(assert (=> (not b_lambda!12715) (not b!47936)))

(declare-fun t!29595 () Bool)

(declare-fun tb!28773 () Bool)

(assert (=> (and b!47942 (= (y!1527 x$41!67) (x!17694 thiss!6327)) t!29595) tb!28773))

(declare-fun result!29049 () Bool)

(assert (=> tb!28773 (= result!29049 true)))

(assert (=> b!47936 t!29595))

(declare-fun b_and!38325 () Bool)

(assert (= b_and!38321 (and (=> t!29595 result!29049) b_and!38325)))

(declare-fun t!29597 () Bool)

(declare-fun tb!28775 () Bool)

(assert (=> (and b!47937 (= (y!1528 thiss!6327) (x!17694 thiss!6327)) t!29597) tb!28775))

(declare-fun result!29051 () Bool)

(assert (=> tb!28775 (= result!29051 true)))

(assert (=> b!47936 t!29597))

(declare-fun b_and!38327 () Bool)

(assert (= b_and!38319 (and (=> t!29597 result!29051) b_and!38327)))

(declare-fun tb!28777 () Bool)

(declare-fun t!29599 () Bool)

(assert (=> (and b!47943 (= (y!1527 prev!762) (x!17694 thiss!6327)) t!29599) tb!28777))

(declare-fun result!29053 () Bool)

(assert (=> tb!28777 (= result!29053 true)))

(assert (=> b!47936 t!29599))

(declare-fun b_and!38329 () Bool)

(assert (= b_and!38313 (and (=> t!29599 result!29053) b_and!38329)))

(declare-fun tb!28779 () Bool)

(declare-fun t!29601 () Bool)

(assert (=> (and b!47943 (= (x!17693 prev!762) (x!17694 thiss!6327)) t!29601) tb!28779))

(declare-fun result!29055 () Bool)

(assert (=> tb!28779 (= result!29055 true)))

(assert (=> b!47936 t!29601))

(declare-fun b_and!38331 () Bool)

(assert (= b_and!38323 (and (=> t!29601 result!29055) b_and!38331)))

(declare-fun t!29603 () Bool)

(declare-fun tb!28781 () Bool)

(assert (=> (and b!47937 (= (x!17694 thiss!6327) (x!17694 thiss!6327)) t!29603) tb!28781))

(declare-fun result!29057 () Bool)

(assert (=> tb!28781 (= result!29057 true)))

(assert (=> b!47936 t!29603))

(declare-fun b_and!38333 () Bool)

(assert (= b_and!38315 (and (=> t!29603 result!29057) b_and!38333)))

(declare-fun t!29605 () Bool)

(declare-fun tb!28783 () Bool)

(assert (=> (and b!47942 (= (x!17693 x$41!67) (x!17694 thiss!6327)) t!29605) tb!28783))

(declare-fun result!29059 () Bool)

(assert (=> tb!28783 (= result!29059 true)))

(assert (=> b!47936 t!29605))

(declare-fun b_and!38335 () Bool)

(assert (= b_and!38317 (and (=> t!29605 result!29059) b_and!38335)))

(declare-fun b_lambda!12717 () Bool)

(assert (=> (not b_lambda!12717) (not b!47938)))

(declare-fun t!29607 () Bool)

(declare-fun tb!28785 () Bool)

(assert (=> (and b!47942 (= (evidence!640 x$41!67) (evidence!640 prev!762)) t!29607) tb!28785))

(declare-fun result!29061 () Bool)

(assert (=> tb!28785 (= result!29061 true)))

(assert (=> b!47938 t!29607))

(declare-fun b_and!38337 () Bool)

(assert (= b_and!38299 (and (=> t!29607 result!29061) b_and!38337)))

(declare-fun t!29609 () Bool)

(declare-fun tb!28787 () Bool)

(assert (=> (and b!47943 (= (evidence!640 prev!762) (evidence!640 prev!762)) t!29609) tb!28787))

(declare-fun result!29063 () Bool)

(assert (=> tb!28787 (= result!29063 true)))

(assert (=> b!47938 t!29609))

(declare-fun b_and!38339 () Bool)

(assert (= b_and!38305 (and (=> t!29609 result!29063) b_and!38339)))

(declare-fun m!50891 () Bool)

(assert (=> b!47936 m!50891))

(declare-fun m!50893 () Bool)

(assert (=> b!47936 m!50893))

(declare-fun m!50895 () Bool)

(assert (=> b!47938 m!50895))

(assert (=> b!47938 m!50895))

(declare-fun m!50897 () Bool)

(assert (=> b!47938 m!50897))

(declare-fun m!50899 () Bool)

(assert (=> start!6484 m!50899))

(declare-fun m!50901 () Bool)

(assert (=> start!6484 m!50901))

(declare-fun m!50903 () Bool)

(assert (=> start!6484 m!50903))

(push 1)

(assert (not b_next!26519))

(assert b_and!38333)

(assert b_and!38335)

(assert (not b_lambda!12713))

(assert (not start!6484))

(assert (not b_next!26541))

(assert (not b!47938))

(assert b_and!38339)

(assert (not b_next!26521))

(assert (not b_lambda!12715))

(assert b_and!38337)

(assert b_and!38329)

(assert b_and!38327)

(assert (not b_next!26547))

(assert b_and!38325)

(assert (not b_next!26543))

(assert (not b_next!26537))

(assert b_and!38311)

(assert (not b_next!26539))

(assert (not b_lambda!12717))

(assert b_and!38331)

(assert (not b_next!26535))

(assert (not b!47939))

(assert (not b_next!26545))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26519))

(assert b_and!38333)

(assert b_and!38335)

(assert (not b_next!26541))

(assert b_and!38339)

(assert (not b_next!26521))

(assert b_and!38337)

(assert b_and!38329)

(assert b_and!38327)

(assert (not b_next!26547))

(assert b_and!38325)

(assert (not b_next!26543))

(assert (not b_next!26537))

(assert b_and!38311)

(assert (not b_next!26539))

(assert b_and!38331)

(assert (not b_next!26535))

(assert (not b_next!26545))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!12719 () Bool)

(assert (= b_lambda!12717 (or (and b!47939 (= lambda!7044 (evidence!640 prev!762))) (and b!47942 b_free!5869 (= (evidence!640 x$41!67) (evidence!640 prev!762))) (and b!47943 b_free!5875) b_lambda!12719)))

(declare-fun bs!18835 () Bool)

(declare-fun d!34058 () Bool)

(assert (= bs!18835 (and d!34058 b!47939)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!18835 (= (dynLambda!813 lambda!7044) trivial!1)))

(assert (=> (and b!47939 (= lambda!7044 (evidence!640 prev!762)) b!47938) d!34058))

(declare-fun b_lambda!12721 () Bool)

(assert (= b_lambda!12713 (or (and b!47941 (= lambda!7045 (y!1527 prev!762))) (and b!47937 b_free!5877 (= (x!17694 thiss!6327) (y!1527 prev!762))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (y!1527 prev!762))) (and b!47943 b_free!5871 (= (x!17693 prev!762) (y!1527 prev!762))) (and b!47943 b_free!5873) (and b!47941 (= lambda!7046 (y!1527 prev!762))) (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (y!1527 prev!762))) (and b!47942 b_free!5865 (= (x!17693 x$41!67) (y!1527 prev!762))) (and b!47939 (= lambda!7043 (y!1527 prev!762))) b_lambda!12721)))

(declare-fun bs!18836 () Bool)

(declare-fun d!34060 () Bool)

(assert (= bs!18836 (and d!34060 b!47941)))

(declare-fun n2!352 () Nat!225)

(declare-fun n3!59 () Nat!225)

(declare-fun +!5 (Nat!225 Nat!225) Nat!225)

(declare-fun *!4 (Nat!225 Nat!225) Nat!225)

(assert (=> bs!18836 (= (dynLambda!814 lambda!7045) (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(declare-fun m!50905 () Bool)

(assert (=> bs!18836 m!50905))

(assert (=> bs!18836 m!50905))

(declare-fun m!50907 () Bool)

(assert (=> bs!18836 m!50907))

(assert (=> bs!18836 m!50907))

(assert (=> bs!18836 m!50905))

(declare-fun m!50909 () Bool)

(assert (=> bs!18836 m!50909))

(assert (=> (and b!47941 (= lambda!7045 (y!1527 prev!762)) b!47936) d!34060))

(declare-fun bs!18837 () Bool)

(declare-fun d!34062 () Bool)

(assert (= bs!18837 (and d!34062 b!47939)))

(assert (=> bs!18837 (= (dynLambda!814 lambda!7043) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18837 m!50905))

(assert (=> bs!18837 m!50905))

(declare-fun m!50911 () Bool)

(assert (=> bs!18837 m!50911))

(assert (=> (and b!47939 (= lambda!7043 (y!1527 prev!762)) b!47936) d!34062))

(declare-fun bs!18838 () Bool)

(declare-fun d!34064 () Bool)

(assert (= bs!18838 (and d!34064 b!47941)))

(assert (=> bs!18838 (= (dynLambda!814 lambda!7046) (*!4 (*!4 n1!336 n2!352) n3!59))))

(declare-fun m!50913 () Bool)

(assert (=> bs!18838 m!50913))

(assert (=> bs!18838 m!50913))

(declare-fun m!50915 () Bool)

(assert (=> bs!18838 m!50915))

(assert (=> (and b!47941 (= lambda!7046 (y!1527 prev!762)) b!47936) d!34064))

(declare-fun b_lambda!12723 () Bool)

(assert (= b_lambda!12715 (or (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (x!17694 thiss!6327))) (and b!47943 b_free!5873 (= (y!1527 prev!762) (x!17694 thiss!6327))) (and b!47943 b_free!5871 (= (x!17693 prev!762) (x!17694 thiss!6327))) (and b!47939 (= lambda!7043 (x!17694 thiss!6327))) (and b!47937 b_free!5877) (and b!47942 b_free!5865 (= (x!17693 x$41!67) (x!17694 thiss!6327))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (x!17694 thiss!6327))) (and b!47941 (= lambda!7045 (x!17694 thiss!6327))) (and b!47941 (= lambda!7046 (x!17694 thiss!6327))) b_lambda!12723)))

(declare-fun bs!18839 () Bool)

(declare-fun d!34066 () Bool)

(assert (= bs!18839 (and d!34066 b!47941)))

(assert (=> bs!18839 (= (dynLambda!814 lambda!7046) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18839 m!50913))

(assert (=> bs!18839 m!50913))

(assert (=> bs!18839 m!50915))

(assert (=> (and b!47941 (= lambda!7046 (x!17694 thiss!6327)) b!47936) d!34066))

(declare-fun bs!18840 () Bool)

(declare-fun d!34068 () Bool)

(assert (= bs!18840 (and d!34068 b!47941)))

(assert (=> bs!18840 (= (dynLambda!814 lambda!7045) (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18840 m!50905))

(assert (=> bs!18840 m!50905))

(assert (=> bs!18840 m!50907))

(assert (=> bs!18840 m!50907))

(assert (=> bs!18840 m!50905))

(assert (=> bs!18840 m!50909))

(assert (=> (and b!47941 (= lambda!7045 (x!17694 thiss!6327)) b!47936) d!34068))

(declare-fun bs!18841 () Bool)

(declare-fun d!34070 () Bool)

(assert (= bs!18841 (and d!34070 b!47939)))

(assert (=> bs!18841 (= (dynLambda!814 lambda!7043) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18841 m!50905))

(assert (=> bs!18841 m!50905))

(assert (=> bs!18841 m!50911))

(assert (=> (and b!47939 (= lambda!7043 (x!17694 thiss!6327)) b!47936) d!34070))

(push 1)

(assert (not b_next!26519))

(assert (not b_lambda!12721))

(assert b_and!38333)

(assert (not bs!18838))

(assert b_and!38335)

(assert (not bs!18837))

(assert (not b_lambda!12723))

(assert (not start!6484))

(assert (not b_next!26541))

(assert (not b!47938))

(assert b_and!38339)

(assert (not b_next!26521))

(assert (not bs!18841))

(assert (not bs!18839))

(assert b_and!38337)

(assert b_and!38329)

(assert b_and!38327)

(assert (not b_lambda!12719))

(assert (not b_next!26547))

(assert b_and!38325)

(assert (not b_next!26543))

(assert (not bs!18836))

(assert (not bs!18840))

(assert (not b_next!26537))

(assert b_and!38311)

(assert (not b_next!26539))

(assert b_and!38331)

(assert (not b_next!26535))

(assert (not b!47939))

(assert (not b_next!26545))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26519))

(assert b_and!38333)

(assert b_and!38335)

(assert (not b_next!26541))

(assert b_and!38339)

(assert (not b_next!26521))

(assert b_and!38337)

(assert b_and!38329)

(assert b_and!38327)

(assert (not b_next!26547))

(assert b_and!38325)

(assert (not b_next!26543))

(assert (not b_next!26537))

(assert b_and!38311)

(assert (not b_next!26539))

(assert b_and!38331)

(assert (not b_next!26535))

(assert (not b_next!26545))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!34072 () Bool)

(assert (=> d!34072 (= (keepEvidence!50 (dynLambda!813 (evidence!640 prev!762))) true)))

(assert (=> b!47938 d!34072))

(declare-fun d!34074 () Bool)

(assert (=> d!34074 (= (inv!837 x$41!67) (= (dynLambda!814 (x!17693 x$41!67)) (dynLambda!814 (y!1527 x$41!67))))))

(declare-fun b_lambda!12725 () Bool)

(assert (=> (not b_lambda!12725) (not d!34074)))

(declare-fun t!29611 () Bool)

(declare-fun tb!28789 () Bool)

(assert (=> (and b!47942 (= (y!1527 x$41!67) (x!17693 x$41!67)) t!29611) tb!28789))

(declare-fun result!29065 () Bool)

(assert (=> tb!28789 (= result!29065 true)))

(assert (=> d!34074 t!29611))

(declare-fun b_and!38341 () Bool)

(assert (= b_and!38325 (and (=> t!29611 result!29065) b_and!38341)))

(declare-fun tb!28791 () Bool)

(declare-fun t!29613 () Bool)

(assert (=> (and b!47937 (= (x!17694 thiss!6327) (x!17693 x$41!67)) t!29613) tb!28791))

(declare-fun result!29067 () Bool)

(assert (=> tb!28791 (= result!29067 true)))

(assert (=> d!34074 t!29613))

(declare-fun b_and!38343 () Bool)

(assert (= b_and!38333 (and (=> t!29613 result!29067) b_and!38343)))

(declare-fun tb!28793 () Bool)

(declare-fun t!29615 () Bool)

(assert (=> (and b!47937 (= (y!1528 thiss!6327) (x!17693 x$41!67)) t!29615) tb!28793))

(declare-fun result!29069 () Bool)

(assert (=> tb!28793 (= result!29069 true)))

(assert (=> d!34074 t!29615))

(declare-fun b_and!38345 () Bool)

(assert (= b_and!38327 (and (=> t!29615 result!29069) b_and!38345)))

(declare-fun t!29617 () Bool)

(declare-fun tb!28795 () Bool)

(assert (=> (and b!47943 (= (y!1527 prev!762) (x!17693 x$41!67)) t!29617) tb!28795))

(declare-fun result!29071 () Bool)

(assert (=> tb!28795 (= result!29071 true)))

(assert (=> d!34074 t!29617))

(declare-fun b_and!38347 () Bool)

(assert (= b_and!38329 (and (=> t!29617 result!29071) b_and!38347)))

(declare-fun t!29619 () Bool)

(declare-fun tb!28797 () Bool)

(assert (=> (and b!47942 (= (x!17693 x$41!67) (x!17693 x$41!67)) t!29619) tb!28797))

(declare-fun result!29073 () Bool)

(assert (=> tb!28797 (= result!29073 true)))

(assert (=> d!34074 t!29619))

(declare-fun b_and!38349 () Bool)

(assert (= b_and!38335 (and (=> t!29619 result!29073) b_and!38349)))

(declare-fun t!29621 () Bool)

(declare-fun tb!28799 () Bool)

(assert (=> (and b!47943 (= (x!17693 prev!762) (x!17693 x$41!67)) t!29621) tb!28799))

(declare-fun result!29075 () Bool)

(assert (=> tb!28799 (= result!29075 true)))

(assert (=> d!34074 t!29621))

(declare-fun b_and!38351 () Bool)

(assert (= b_and!38331 (and (=> t!29621 result!29075) b_and!38351)))

(declare-fun b_lambda!12727 () Bool)

(assert (=> (not b_lambda!12727) (not d!34074)))

(declare-fun t!29623 () Bool)

(declare-fun tb!28801 () Bool)

(assert (=> (and b!47943 (= (x!17693 prev!762) (y!1527 x$41!67)) t!29623) tb!28801))

(declare-fun result!29077 () Bool)

(assert (=> tb!28801 (= result!29077 true)))

(assert (=> d!34074 t!29623))

(declare-fun b_and!38353 () Bool)

(assert (= b_and!38351 (and (=> t!29623 result!29077) b_and!38353)))

(declare-fun t!29625 () Bool)

(declare-fun tb!28803 () Bool)

(assert (=> (and b!47942 (= (x!17693 x$41!67) (y!1527 x$41!67)) t!29625) tb!28803))

(declare-fun result!29079 () Bool)

(assert (=> tb!28803 (= result!29079 true)))

(assert (=> d!34074 t!29625))

(declare-fun b_and!38355 () Bool)

(assert (= b_and!38349 (and (=> t!29625 result!29079) b_and!38355)))

(declare-fun t!29627 () Bool)

(declare-fun tb!28805 () Bool)

(assert (=> (and b!47943 (= (y!1527 prev!762) (y!1527 x$41!67)) t!29627) tb!28805))

(declare-fun result!29081 () Bool)

(assert (=> tb!28805 (= result!29081 true)))

(assert (=> d!34074 t!29627))

(declare-fun b_and!38357 () Bool)

(assert (= b_and!38347 (and (=> t!29627 result!29081) b_and!38357)))

(declare-fun t!29629 () Bool)

(declare-fun tb!28807 () Bool)

(assert (=> (and b!47937 (= (x!17694 thiss!6327) (y!1527 x$41!67)) t!29629) tb!28807))

(declare-fun result!29083 () Bool)

(assert (=> tb!28807 (= result!29083 true)))

(assert (=> d!34074 t!29629))

(declare-fun b_and!38359 () Bool)

(assert (= b_and!38343 (and (=> t!29629 result!29083) b_and!38359)))

(declare-fun tb!28809 () Bool)

(declare-fun t!29631 () Bool)

(assert (=> (and b!47937 (= (y!1528 thiss!6327) (y!1527 x$41!67)) t!29631) tb!28809))

(declare-fun result!29085 () Bool)

(assert (=> tb!28809 (= result!29085 true)))

(assert (=> d!34074 t!29631))

(declare-fun b_and!38361 () Bool)

(assert (= b_and!38345 (and (=> t!29631 result!29085) b_and!38361)))

(declare-fun t!29633 () Bool)

(declare-fun tb!28811 () Bool)

(assert (=> (and b!47942 (= (y!1527 x$41!67) (y!1527 x$41!67)) t!29633) tb!28811))

(declare-fun result!29087 () Bool)

(assert (=> tb!28811 (= result!29087 true)))

(assert (=> d!34074 t!29633))

(declare-fun b_and!38363 () Bool)

(assert (= b_and!38341 (and (=> t!29633 result!29087) b_and!38363)))

(declare-fun m!50917 () Bool)

(assert (=> d!34074 m!50917))

(declare-fun m!50919 () Bool)

(assert (=> d!34074 m!50919))

(assert (=> start!6484 d!34074))

(declare-fun d!34076 () Bool)

(assert (=> d!34076 (= (inv!837 prev!762) (= (dynLambda!814 (x!17693 prev!762)) (dynLambda!814 (y!1527 prev!762))))))

(declare-fun b_lambda!12729 () Bool)

(assert (=> (not b_lambda!12729) (not d!34076)))

(declare-fun t!29635 () Bool)

(declare-fun tb!28813 () Bool)

(assert (=> (and b!47942 (= (y!1527 x$41!67) (x!17693 prev!762)) t!29635) tb!28813))

(declare-fun result!29089 () Bool)

(assert (=> tb!28813 (= result!29089 true)))

(assert (=> d!34076 t!29635))

(declare-fun b_and!38365 () Bool)

(assert (= b_and!38363 (and (=> t!29635 result!29089) b_and!38365)))

(declare-fun t!29637 () Bool)

(declare-fun tb!28815 () Bool)

(assert (=> (and b!47942 (= (x!17693 x$41!67) (x!17693 prev!762)) t!29637) tb!28815))

(declare-fun result!29091 () Bool)

(assert (=> tb!28815 (= result!29091 true)))

(assert (=> d!34076 t!29637))

(declare-fun b_and!38367 () Bool)

(assert (= b_and!38355 (and (=> t!29637 result!29091) b_and!38367)))

(declare-fun t!29639 () Bool)

(declare-fun tb!28817 () Bool)

(assert (=> (and b!47943 (= (y!1527 prev!762) (x!17693 prev!762)) t!29639) tb!28817))

(declare-fun result!29093 () Bool)

(assert (=> tb!28817 (= result!29093 true)))

(assert (=> d!34076 t!29639))

(declare-fun b_and!38369 () Bool)

(assert (= b_and!38357 (and (=> t!29639 result!29093) b_and!38369)))

(declare-fun tb!28819 () Bool)

(declare-fun t!29641 () Bool)

(assert (=> (and b!47937 (= (y!1528 thiss!6327) (x!17693 prev!762)) t!29641) tb!28819))

(declare-fun result!29095 () Bool)

(assert (=> tb!28819 (= result!29095 true)))

(assert (=> d!34076 t!29641))

(declare-fun b_and!38371 () Bool)

(assert (= b_and!38361 (and (=> t!29641 result!29095) b_and!38371)))

(declare-fun t!29643 () Bool)

(declare-fun tb!28821 () Bool)

(assert (=> (and b!47943 (= (x!17693 prev!762) (x!17693 prev!762)) t!29643) tb!28821))

(declare-fun result!29097 () Bool)

(assert (=> tb!28821 (= result!29097 true)))

(assert (=> d!34076 t!29643))

(declare-fun b_and!38373 () Bool)

(assert (= b_and!38353 (and (=> t!29643 result!29097) b_and!38373)))

(declare-fun tb!28823 () Bool)

(declare-fun t!29645 () Bool)

(assert (=> (and b!47937 (= (x!17694 thiss!6327) (x!17693 prev!762)) t!29645) tb!28823))

(declare-fun result!29099 () Bool)

(assert (=> tb!28823 (= result!29099 true)))

(assert (=> d!34076 t!29645))

(declare-fun b_and!38375 () Bool)

(assert (= b_and!38359 (and (=> t!29645 result!29099) b_and!38375)))

(declare-fun b_lambda!12731 () Bool)

(assert (=> (not b_lambda!12731) (not d!34076)))

(assert (=> d!34076 t!29589))

(declare-fun b_and!38377 () Bool)

(assert (= b_and!38371 (and (=> t!29589 result!29043) b_and!38377)))

(assert (=> d!34076 t!29587))

(declare-fun b_and!38379 () Bool)

(assert (= b_and!38367 (and (=> t!29587 result!29041) b_and!38379)))

(assert (=> d!34076 t!29585))

(declare-fun b_and!38381 () Bool)

(assert (= b_and!38375 (and (=> t!29585 result!29039) b_and!38381)))

(assert (=> d!34076 t!29593))

(declare-fun b_and!38383 () Bool)

(assert (= b_and!38373 (and (=> t!29593 result!29047) b_and!38383)))

(assert (=> d!34076 t!29591))

(declare-fun b_and!38385 () Bool)

(assert (= b_and!38365 (and (=> t!29591 result!29045) b_and!38385)))

(assert (=> d!34076 t!29583))

(declare-fun b_and!38387 () Bool)

(assert (= b_and!38369 (and (=> t!29583 result!29037) b_and!38387)))

(declare-fun m!50921 () Bool)

(assert (=> d!34076 m!50921))

(assert (=> d!34076 m!50891))

(assert (=> start!6484 d!34076))

(declare-fun d!34078 () Bool)

(assert (=> d!34078 (= (inv!838 thiss!6327) (= (dynLambda!814 (x!17694 thiss!6327)) (dynLambda!814 (y!1528 thiss!6327))))))

(declare-fun b_lambda!12733 () Bool)

(assert (=> (not b_lambda!12733) (not d!34078)))

(assert (=> d!34078 t!29605))

(declare-fun b_and!38389 () Bool)

(assert (= b_and!38379 (and (=> t!29605 result!29059) b_and!38389)))

(assert (=> d!34078 t!29597))

(declare-fun b_and!38391 () Bool)

(assert (= b_and!38377 (and (=> t!29597 result!29051) b_and!38391)))

(assert (=> d!34078 t!29603))

(declare-fun b_and!38393 () Bool)

(assert (= b_and!38381 (and (=> t!29603 result!29057) b_and!38393)))

(assert (=> d!34078 t!29601))

(declare-fun b_and!38395 () Bool)

(assert (= b_and!38383 (and (=> t!29601 result!29055) b_and!38395)))

(assert (=> d!34078 t!29595))

(declare-fun b_and!38397 () Bool)

(assert (= b_and!38385 (and (=> t!29595 result!29049) b_and!38397)))

(assert (=> d!34078 t!29599))

(declare-fun b_and!38399 () Bool)

(assert (= b_and!38387 (and (=> t!29599 result!29053) b_and!38399)))

(declare-fun b_lambda!12735 () Bool)

(assert (=> (not b_lambda!12735) (not d!34078)))

(declare-fun tb!28825 () Bool)

(declare-fun t!29647 () Bool)

(assert (=> (and b!47943 (= (y!1527 prev!762) (y!1528 thiss!6327)) t!29647) tb!28825))

(declare-fun result!29101 () Bool)

(assert (=> tb!28825 (= result!29101 true)))

(assert (=> d!34078 t!29647))

(declare-fun b_and!38401 () Bool)

(assert (= b_and!38399 (and (=> t!29647 result!29101) b_and!38401)))

(declare-fun t!29649 () Bool)

(declare-fun tb!28827 () Bool)

(assert (=> (and b!47937 (= (y!1528 thiss!6327) (y!1528 thiss!6327)) t!29649) tb!28827))

(declare-fun result!29103 () Bool)

(assert (=> tb!28827 (= result!29103 true)))

(assert (=> d!34078 t!29649))

(declare-fun b_and!38403 () Bool)

(assert (= b_and!38391 (and (=> t!29649 result!29103) b_and!38403)))

(declare-fun tb!28829 () Bool)

(declare-fun t!29651 () Bool)

(assert (=> (and b!47942 (= (x!17693 x$41!67) (y!1528 thiss!6327)) t!29651) tb!28829))

(declare-fun result!29105 () Bool)

(assert (=> tb!28829 (= result!29105 true)))

(assert (=> d!34078 t!29651))

(declare-fun b_and!38405 () Bool)

(assert (= b_and!38389 (and (=> t!29651 result!29105) b_and!38405)))

(declare-fun t!29653 () Bool)

(declare-fun tb!28831 () Bool)

(assert (=> (and b!47943 (= (x!17693 prev!762) (y!1528 thiss!6327)) t!29653) tb!28831))

(declare-fun result!29107 () Bool)

(assert (=> tb!28831 (= result!29107 true)))

(assert (=> d!34078 t!29653))

(declare-fun b_and!38407 () Bool)

(assert (= b_and!38395 (and (=> t!29653 result!29107) b_and!38407)))

(declare-fun t!29655 () Bool)

(declare-fun tb!28833 () Bool)

(assert (=> (and b!47942 (= (y!1527 x$41!67) (y!1528 thiss!6327)) t!29655) tb!28833))

(declare-fun result!29109 () Bool)

(assert (=> tb!28833 (= result!29109 true)))

(assert (=> d!34078 t!29655))

(declare-fun b_and!38409 () Bool)

(assert (= b_and!38397 (and (=> t!29655 result!29109) b_and!38409)))

(declare-fun t!29657 () Bool)

(declare-fun tb!28835 () Bool)

(assert (=> (and b!47937 (= (x!17694 thiss!6327) (y!1528 thiss!6327)) t!29657) tb!28835))

(declare-fun result!29111 () Bool)

(assert (=> tb!28835 (= result!29111 true)))

(assert (=> d!34078 t!29657))

(declare-fun b_and!38411 () Bool)

(assert (= b_and!38393 (and (=> t!29657 result!29111) b_and!38411)))

(assert (=> d!34078 m!50893))

(declare-fun m!50923 () Bool)

(assert (=> d!34078 m!50923))

(assert (=> start!6484 d!34078))

(declare-fun c!10109 () Bool)

(declare-fun d!34080 () Bool)

(assert (=> d!34080 (= c!10109 (is-Zero!209 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59))))))

(declare-fun e!24989 () Nat!225)

(assert (=> d!34080 (= (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)) e!24989)))

(declare-fun b!47952 () Bool)

(assert (=> b!47952 (= e!24989 (*!4 n2!352 n3!59))))

(declare-fun b!47953 () Bool)

(assert (=> b!47953 (= e!24989 (Succ!206 (+!5 (n!1362 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59))) (*!4 n2!352 n3!59))))))

(assert (= (and d!34080 c!10109) b!47952))

(assert (= (and d!34080 (not c!10109)) b!47953))

(assert (=> b!47953 m!50905))

(declare-fun m!50925 () Bool)

(assert (=> b!47953 m!50925))

(assert (=> bs!18840 d!34080))

(declare-fun d!34082 () Bool)

(declare-fun c!10112 () Bool)

(assert (=> d!34082 (= c!10112 (is-Zero!209 (n!1362 n1!336)))))

(declare-fun e!24992 () Nat!225)

(assert (=> d!34082 (= (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) e!24992)))

(declare-fun b!47958 () Bool)

(assert (=> b!47958 (= e!24992 Zero!209)))

(declare-fun b!47959 () Bool)

(assert (=> b!47959 (= e!24992 (+!5 (*!4 (n!1362 (n!1362 n1!336)) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!34082 c!10112) b!47958))

(assert (= (and d!34082 (not c!10112)) b!47959))

(assert (=> b!47959 m!50905))

(declare-fun m!50927 () Bool)

(assert (=> b!47959 m!50927))

(assert (=> b!47959 m!50927))

(assert (=> b!47959 m!50905))

(declare-fun m!50929 () Bool)

(assert (=> b!47959 m!50929))

(assert (=> bs!18840 d!34082))

(declare-fun d!34084 () Bool)

(declare-fun c!10113 () Bool)

(assert (=> d!34084 (= c!10113 (is-Zero!209 n2!352))))

(declare-fun e!24993 () Nat!225)

(assert (=> d!34084 (= (*!4 n2!352 n3!59) e!24993)))

(declare-fun b!47960 () Bool)

(assert (=> b!47960 (= e!24993 Zero!209)))

(declare-fun b!47961 () Bool)

(assert (=> b!47961 (= e!24993 (+!5 (*!4 (n!1362 n2!352) n3!59) n3!59))))

(assert (= (and d!34084 c!10113) b!47960))

(assert (= (and d!34084 (not c!10113)) b!47961))

(declare-fun m!50931 () Bool)

(assert (=> b!47961 m!50931))

(assert (=> b!47961 m!50931))

(declare-fun m!50933 () Bool)

(assert (=> b!47961 m!50933))

(assert (=> bs!18840 d!34084))

(declare-fun d!34086 () Bool)

(declare-fun c!10114 () Bool)

(assert (=> d!34086 (= c!10114 (is-Zero!209 n1!336))))

(declare-fun e!24994 () Nat!225)

(assert (=> d!34086 (= (*!4 n1!336 (*!4 n2!352 n3!59)) e!24994)))

(declare-fun b!47962 () Bool)

(assert (=> b!47962 (= e!24994 Zero!209)))

(declare-fun b!47963 () Bool)

(assert (=> b!47963 (= e!24994 (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!34086 c!10114) b!47962))

(assert (= (and d!34086 (not c!10114)) b!47963))

(assert (=> b!47963 m!50905))

(assert (=> b!47963 m!50907))

(assert (=> b!47963 m!50907))

(assert (=> b!47963 m!50905))

(assert (=> b!47963 m!50909))

(assert (=> bs!18841 d!34086))

(assert (=> bs!18841 d!34084))

(declare-fun d!34088 () Bool)

(declare-fun c!10115 () Bool)

(assert (=> d!34088 (= c!10115 (is-Zero!209 (*!4 n1!336 n2!352)))))

(declare-fun e!24995 () Nat!225)

(assert (=> d!34088 (= (*!4 (*!4 n1!336 n2!352) n3!59) e!24995)))

(declare-fun b!47964 () Bool)

(assert (=> b!47964 (= e!24995 Zero!209)))

(declare-fun b!47965 () Bool)

(assert (=> b!47965 (= e!24995 (+!5 (*!4 (n!1362 (*!4 n1!336 n2!352)) n3!59) n3!59))))

(assert (= (and d!34088 c!10115) b!47964))

(assert (= (and d!34088 (not c!10115)) b!47965))

(declare-fun m!50935 () Bool)

(assert (=> b!47965 m!50935))

(assert (=> b!47965 m!50935))

(declare-fun m!50937 () Bool)

(assert (=> b!47965 m!50937))

(assert (=> bs!18839 d!34088))

(declare-fun d!34090 () Bool)

(declare-fun c!10116 () Bool)

(assert (=> d!34090 (= c!10116 (is-Zero!209 n1!336))))

(declare-fun e!24996 () Nat!225)

(assert (=> d!34090 (= (*!4 n1!336 n2!352) e!24996)))

(declare-fun b!47966 () Bool)

(assert (=> b!47966 (= e!24996 Zero!209)))

(declare-fun b!47967 () Bool)

(assert (=> b!47967 (= e!24996 (+!5 (*!4 (n!1362 n1!336) n2!352) n2!352))))

(assert (= (and d!34090 c!10116) b!47966))

(assert (= (and d!34090 (not c!10116)) b!47967))

(declare-fun m!50939 () Bool)

(assert (=> b!47967 m!50939))

(assert (=> b!47967 m!50939))

(declare-fun m!50941 () Bool)

(assert (=> b!47967 m!50941))

(assert (=> bs!18839 d!34090))

(assert (=> bs!18838 d!34088))

(assert (=> bs!18838 d!34090))

(assert (=> bs!18837 d!34086))

(assert (=> bs!18837 d!34084))

(assert (=> bs!18836 d!34080))

(assert (=> bs!18836 d!34082))

(assert (=> bs!18836 d!34084))

(declare-fun d!34092 () Bool)

(assert (=> d!34092 (= trivial!1 true)))

(assert (=> b!47939 d!34092))

(declare-fun b_lambda!12737 () Bool)

(assert (= b_lambda!12727 (or (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (y!1527 x$41!67))) (and b!47939 (= lambda!7043 (y!1527 x$41!67))) (and b!47941 (= lambda!7046 (y!1527 x$41!67))) (and b!47943 b_free!5871 (= (x!17693 prev!762) (y!1527 x$41!67))) (and b!47943 b_free!5873 (= (y!1527 prev!762) (y!1527 x$41!67))) (and b!47942 b_free!5867) (and b!47941 (= lambda!7045 (y!1527 x$41!67))) (and b!47937 b_free!5877 (= (x!17694 thiss!6327) (y!1527 x$41!67))) (and b!47942 b_free!5865 (= (x!17693 x$41!67) (y!1527 x$41!67))) b_lambda!12737)))

(declare-fun bs!18842 () Bool)

(declare-fun d!34094 () Bool)

(assert (= bs!18842 (and d!34094 b!47941)))

(assert (=> bs!18842 (= (dynLambda!814 lambda!7046) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18842 m!50913))

(assert (=> bs!18842 m!50913))

(assert (=> bs!18842 m!50915))

(assert (=> (and b!47941 (= lambda!7046 (y!1527 x$41!67)) d!34074) d!34094))

(declare-fun bs!18843 () Bool)

(declare-fun d!34096 () Bool)

(assert (= bs!18843 (and d!34096 b!47939)))

(assert (=> bs!18843 (= (dynLambda!814 lambda!7043) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18843 m!50905))

(assert (=> bs!18843 m!50905))

(assert (=> bs!18843 m!50911))

(assert (=> (and b!47939 (= lambda!7043 (y!1527 x$41!67)) d!34074) d!34096))

(declare-fun bs!18844 () Bool)

(declare-fun d!34098 () Bool)

(assert (= bs!18844 (and d!34098 b!47941)))

(assert (=> bs!18844 (= (dynLambda!814 lambda!7045) (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18844 m!50905))

(assert (=> bs!18844 m!50905))

(assert (=> bs!18844 m!50907))

(assert (=> bs!18844 m!50907))

(assert (=> bs!18844 m!50905))

(assert (=> bs!18844 m!50909))

(assert (=> (and b!47941 (= lambda!7045 (y!1527 x$41!67)) d!34074) d!34098))

(declare-fun b_lambda!12739 () Bool)

(assert (= b_lambda!12729 (or (and b!47942 b_free!5865 (= (x!17693 x$41!67) (x!17693 prev!762))) (and b!47943 b_free!5873 (= (y!1527 prev!762) (x!17693 prev!762))) (and b!47937 b_free!5877 (= (x!17694 thiss!6327) (x!17693 prev!762))) (and b!47941 (= lambda!7046 (x!17693 prev!762))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (x!17693 prev!762))) (and b!47941 (= lambda!7045 (x!17693 prev!762))) (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (x!17693 prev!762))) (and b!47939 (= lambda!7043 (x!17693 prev!762))) (and b!47943 b_free!5871) b_lambda!12739)))

(declare-fun bs!18845 () Bool)

(declare-fun d!34100 () Bool)

(assert (= bs!18845 (and d!34100 b!47939)))

(assert (=> bs!18845 (= (dynLambda!814 lambda!7043) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18845 m!50905))

(assert (=> bs!18845 m!50905))

(assert (=> bs!18845 m!50911))

(assert (=> (and b!47939 (= lambda!7043 (x!17693 prev!762)) d!34076) d!34100))

(declare-fun bs!18846 () Bool)

(declare-fun d!34102 () Bool)

(assert (= bs!18846 (and d!34102 b!47941)))

(assert (=> bs!18846 (= (dynLambda!814 lambda!7045) (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18846 m!50905))

(assert (=> bs!18846 m!50905))

(assert (=> bs!18846 m!50907))

(assert (=> bs!18846 m!50907))

(assert (=> bs!18846 m!50905))

(assert (=> bs!18846 m!50909))

(assert (=> (and b!47941 (= lambda!7045 (x!17693 prev!762)) d!34076) d!34102))

(declare-fun bs!18847 () Bool)

(declare-fun d!34104 () Bool)

(assert (= bs!18847 (and d!34104 b!47941)))

(assert (=> bs!18847 (= (dynLambda!814 lambda!7046) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18847 m!50913))

(assert (=> bs!18847 m!50913))

(assert (=> bs!18847 m!50915))

(assert (=> (and b!47941 (= lambda!7046 (x!17693 prev!762)) d!34076) d!34104))

(declare-fun b_lambda!12741 () Bool)

(assert (= b_lambda!12725 (or (and b!47942 b_free!5865) (and b!47941 (= lambda!7046 (x!17693 x$41!67))) (and b!47937 b_free!5877 (= (x!17694 thiss!6327) (x!17693 x$41!67))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (x!17693 x$41!67))) (and b!47939 (= lambda!7043 (x!17693 x$41!67))) (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (x!17693 x$41!67))) (and b!47941 (= lambda!7045 (x!17693 x$41!67))) (and b!47943 b_free!5871 (= (x!17693 prev!762) (x!17693 x$41!67))) (and b!47943 b_free!5873 (= (y!1527 prev!762) (x!17693 x$41!67))) b_lambda!12741)))

(declare-fun bs!18848 () Bool)

(declare-fun d!34106 () Bool)

(assert (= bs!18848 (and d!34106 b!47941)))

(assert (=> bs!18848 (= (dynLambda!814 lambda!7046) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18848 m!50913))

(assert (=> bs!18848 m!50913))

(assert (=> bs!18848 m!50915))

(assert (=> (and b!47941 (= lambda!7046 (x!17693 x$41!67)) d!34074) d!34106))

(declare-fun bs!18849 () Bool)

(declare-fun d!34108 () Bool)

(assert (= bs!18849 (and d!34108 b!47941)))

(assert (=> bs!18849 (= (dynLambda!814 lambda!7045) (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18849 m!50905))

(assert (=> bs!18849 m!50905))

(assert (=> bs!18849 m!50907))

(assert (=> bs!18849 m!50907))

(assert (=> bs!18849 m!50905))

(assert (=> bs!18849 m!50909))

(assert (=> (and b!47941 (= lambda!7045 (x!17693 x$41!67)) d!34074) d!34108))

(declare-fun bs!18850 () Bool)

(declare-fun d!34110 () Bool)

(assert (= bs!18850 (and d!34110 b!47939)))

(assert (=> bs!18850 (= (dynLambda!814 lambda!7043) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18850 m!50905))

(assert (=> bs!18850 m!50905))

(assert (=> bs!18850 m!50911))

(assert (=> (and b!47939 (= lambda!7043 (x!17693 x$41!67)) d!34074) d!34110))

(declare-fun b_lambda!12743 () Bool)

(assert (= b_lambda!12735 (or (and b!47939 (= lambda!7043 (y!1528 thiss!6327))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (y!1528 thiss!6327))) (and b!47941 (= lambda!7045 (y!1528 thiss!6327))) (and b!47943 b_free!5873 (= (y!1527 prev!762) (y!1528 thiss!6327))) (and b!47937 b_free!5877 (= (x!17694 thiss!6327) (y!1528 thiss!6327))) (and b!47937 b_free!5879) (and b!47943 b_free!5871 (= (x!17693 prev!762) (y!1528 thiss!6327))) (and b!47942 b_free!5865 (= (x!17693 x$41!67) (y!1528 thiss!6327))) (and b!47941 (= lambda!7046 (y!1528 thiss!6327))) b_lambda!12743)))

(declare-fun bs!18851 () Bool)

(declare-fun d!34112 () Bool)

(assert (= bs!18851 (and d!34112 b!47941)))

(assert (=> bs!18851 (= (dynLambda!814 lambda!7046) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18851 m!50913))

(assert (=> bs!18851 m!50913))

(assert (=> bs!18851 m!50915))

(assert (=> (and b!47941 (= lambda!7046 (y!1528 thiss!6327)) d!34078) d!34112))

(declare-fun bs!18852 () Bool)

(declare-fun d!34114 () Bool)

(assert (= bs!18852 (and d!34114 b!47939)))

(assert (=> bs!18852 (= (dynLambda!814 lambda!7043) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18852 m!50905))

(assert (=> bs!18852 m!50905))

(assert (=> bs!18852 m!50911))

(assert (=> (and b!47939 (= lambda!7043 (y!1528 thiss!6327)) d!34078) d!34114))

(declare-fun bs!18853 () Bool)

(declare-fun d!34116 () Bool)

(assert (= bs!18853 (and d!34116 b!47941)))

(assert (=> bs!18853 (= (dynLambda!814 lambda!7045) (+!5 (*!4 (n!1362 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18853 m!50905))

(assert (=> bs!18853 m!50905))

(assert (=> bs!18853 m!50907))

(assert (=> bs!18853 m!50907))

(assert (=> bs!18853 m!50905))

(assert (=> bs!18853 m!50909))

(assert (=> (and b!47941 (= lambda!7045 (y!1528 thiss!6327)) d!34078) d!34116))

(declare-fun b_lambda!12745 () Bool)

(assert (= b_lambda!12733 (or (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (x!17694 thiss!6327))) (and b!47943 b_free!5873 (= (y!1527 prev!762) (x!17694 thiss!6327))) (and b!47943 b_free!5871 (= (x!17693 prev!762) (x!17694 thiss!6327))) (and b!47939 (= lambda!7043 (x!17694 thiss!6327))) (and b!47937 b_free!5877) (and b!47942 b_free!5865 (= (x!17693 x$41!67) (x!17694 thiss!6327))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (x!17694 thiss!6327))) (and b!47941 (= lambda!7045 (x!17694 thiss!6327))) (and b!47941 (= lambda!7046 (x!17694 thiss!6327))) b_lambda!12745)))

(assert (=> (and b!47941 (= lambda!7046 (x!17694 thiss!6327)) d!34078) d!34066))

(assert (=> (and b!47941 (= lambda!7045 (x!17694 thiss!6327)) d!34078) d!34068))

(assert (=> (and b!47939 (= lambda!7043 (x!17694 thiss!6327)) d!34078) d!34070))

(declare-fun b_lambda!12747 () Bool)

(assert (= b_lambda!12731 (or (and b!47941 (= lambda!7045 (y!1527 prev!762))) (and b!47937 b_free!5877 (= (x!17694 thiss!6327) (y!1527 prev!762))) (and b!47942 b_free!5867 (= (y!1527 x$41!67) (y!1527 prev!762))) (and b!47943 b_free!5871 (= (x!17693 prev!762) (y!1527 prev!762))) (and b!47943 b_free!5873) (and b!47941 (= lambda!7046 (y!1527 prev!762))) (and b!47937 b_free!5879 (= (y!1528 thiss!6327) (y!1527 prev!762))) (and b!47942 b_free!5865 (= (x!17693 x$41!67) (y!1527 prev!762))) (and b!47939 (= lambda!7043 (y!1527 prev!762))) b_lambda!12747)))

(assert (=> (and b!47941 (= lambda!7045 (y!1527 prev!762)) d!34076) d!34060))

(assert (=> (and b!47939 (= lambda!7043 (y!1527 prev!762)) d!34076) d!34062))

(assert (=> (and b!47941 (= lambda!7046 (y!1527 prev!762)) d!34076) d!34064))

(push 1)

(assert b_and!38409)

(assert (not b_next!26519))

(assert b_and!38411)

(assert (not b_lambda!12737))

(assert (not b_lambda!12721))

(assert (not b!47953))

(assert (not b_lambda!12723))

(assert (not b!47963))

(assert (not bs!18844))

(assert (not bs!18843))

(assert (not bs!18846))

(assert b_and!38407)

(assert (not b_next!26541))

(assert (not b_lambda!12739))

(assert b_and!38339)

(assert b_and!38403)

(assert (not b_next!26521))

(assert (not b!47967))

(assert (not b_lambda!12743))

(assert (not bs!18851))

(assert (not b!47959))

(assert (not bs!18850))

(assert b_and!38401)

(assert b_and!38337)

(assert (not b_lambda!12719))

(assert (not bs!18847))

(assert (not b_lambda!12741))

(assert (not bs!18849))

(assert (not bs!18853))

(assert (not bs!18842))

(assert (not b_next!26547))

(assert (not b!47961))

(assert (not b_next!26543))

(assert (not bs!18852))

(assert (not bs!18848))

(assert (not bs!18845))

(assert b_and!38405)

(assert (not b_lambda!12747))

(assert (not b_next!26537))

(assert b_and!38311)

(assert (not b!47965))

(assert (not b_next!26539))

(assert (not b_next!26535))

(assert (not b_next!26545))

(assert (not b_lambda!12745))

(check-sat)

(pop 1)

(push 1)

(assert b_and!38409)

(assert (not b_next!26519))

(assert b_and!38411)

(assert b_and!38407)

(assert (not b_next!26541))

(assert b_and!38339)

(assert b_and!38403)

(assert (not b_next!26521))

(assert b_and!38401)

(assert b_and!38337)

(assert (not b_next!26547))

(assert (not b_next!26543))

(assert b_and!38405)

(assert (not b_next!26537))

(assert b_and!38311)

(assert (not b_next!26539))

(assert (not b_next!26535))

(assert (not b_next!26545))

(check-sat)

(pop 1)

