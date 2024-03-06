; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6170 () Bool)

(assert start!6170)

(declare-fun b!45825 () Bool)

(declare-fun b_free!5025 () Bool)

(declare-fun b_next!23563 () Bool)

(assert (=> b!45825 (= b_free!5025 (not b_next!23563))))

(declare-fun tp!11613 () Bool)

(declare-fun b_and!34733 () Bool)

(assert (=> b!45825 (= tp!11613 b_and!34733)))

(declare-fun b_free!5027 () Bool)

(declare-fun b_next!23565 () Bool)

(assert (=> b!45825 (= b_free!5027 (not b_next!23565))))

(declare-fun tp!11616 () Bool)

(declare-fun b_and!34735 () Bool)

(assert (=> b!45825 (= tp!11616 b_and!34735)))

(declare-fun b_free!5029 () Bool)

(declare-fun b_next!23567 () Bool)

(assert (=> b!45825 (= b_free!5029 (not b_next!23567))))

(declare-fun tp!11617 () Bool)

(declare-fun b_and!34737 () Bool)

(assert (=> b!45825 (= tp!11617 b_and!34737)))

(declare-fun b!45821 () Bool)

(declare-fun b_free!5031 () Bool)

(declare-fun b_next!23569 () Bool)

(assert (=> b!45821 (= b_free!5031 (not b_next!23569))))

(declare-fun tp!11612 () Bool)

(declare-fun b_and!34739 () Bool)

(assert (=> b!45821 (= tp!11612 b_and!34739)))

(declare-fun b_free!5033 () Bool)

(declare-fun b_next!23571 () Bool)

(assert (=> b!45821 (= b_free!5033 (not b_next!23571))))

(declare-fun tp!11609 () Bool)

(declare-fun b_and!34741 () Bool)

(assert (=> b!45821 (= tp!11609 b_and!34741)))

(declare-fun b_free!5035 () Bool)

(declare-fun b_next!23573 () Bool)

(assert (=> b!45821 (= b_free!5035 (not b_next!23573))))

(declare-fun tp!11615 () Bool)

(declare-fun b_and!34743 () Bool)

(assert (=> b!45821 (= tp!11615 b_and!34743)))

(declare-fun b!45820 () Bool)

(declare-fun b_free!5037 () Bool)

(declare-fun b_next!23575 () Bool)

(assert (=> b!45820 (= b_free!5037 (not b_next!23575))))

(declare-fun tp!11610 () Bool)

(declare-fun b_and!34745 () Bool)

(assert (=> b!45820 (= tp!11610 b_and!34745)))

(declare-fun b_free!5039 () Bool)

(declare-fun b_next!23577 () Bool)

(assert (=> b!45820 (= b_free!5039 (not b_next!23577))))

(declare-fun tp!11614 () Bool)

(declare-fun b_and!34747 () Bool)

(assert (=> b!45820 (= tp!11614 b_and!34747)))

(declare-fun b_free!5041 () Bool)

(declare-fun b_next!23579 () Bool)

(assert (=> b!45820 (= b_free!5041 (not b_next!23579))))

(declare-fun tp!11611 () Bool)

(declare-fun b_and!34749 () Bool)

(assert (=> b!45820 (= tp!11611 b_and!34749)))

(declare-fun b!45823 () Bool)

(assert (=> b!45823 true))

(declare-fun b_next!23581 () Bool)

(declare-fun lambda!6547 () Int)

(declare-datatypes () ((RAEqEvidence!282 (RAEqEvidence!283 (x!16976 Int) (y!1480 Int) (evidence!593 Int)))))

(declare-fun thiss!5674 () RAEqEvidence!282)

(assert (=> b!45821 (= b_next!23569 (or (and b!45823 (= lambda!6547 (x!16976 thiss!5674))) b_next!23581))))

(declare-fun b_next!23583 () Bool)

(declare-datatypes () ((Unit!564 (Unit!565))))

(declare-datatypes () ((RAEqEvidence!284 (RAEqEvidence!285 (x!16977 Int) (y!1481 Int) (evidence!594 Int)))))

(declare-fun x$72!18 () RAEqEvidence!284)

(assert (=> b!45825 (= b_next!23563 (or (and b!45823 (= lambda!6547 (x!16977 x$72!18))) b_next!23583))))

(declare-fun prev!600 () RAEqEvidence!284)

(declare-fun b_next!23585 () Bool)

(assert (=> b!45820 (= b_next!23575 (or (and b!45823 (= lambda!6547 (x!16977 prev!600))) b_next!23585))))

(declare-fun b_next!23587 () Bool)

(assert (=> b!45820 (= b_next!23577 (or (and b!45823 (= lambda!6547 (y!1481 prev!600))) b_next!23587))))

(declare-fun b_next!23589 () Bool)

(assert (=> b!45825 (= b_next!23565 (or (and b!45823 (= lambda!6547 (y!1481 x$72!18))) b_next!23589))))

(declare-fun b_next!23591 () Bool)

(assert (=> b!45821 (= b_next!23571 (or (and b!45823 (= lambda!6547 (y!1480 thiss!5674))) b_next!23591))))

(declare-fun b_next!23593 () Bool)

(assert (=> b!45821 (= b_next!23573 (or (and b!45823 (= lambda!6547 (evidence!593 thiss!5674))) b_next!23593))))

(assert (=> b!45823 true))

(declare-fun lambda!6548 () Int)

(declare-fun b_next!23595 () Bool)

(assert (=> b!45825 (= b_next!23567 (or (and b!45823 (= lambda!6548 (evidence!594 x$72!18))) b_next!23595))))

(declare-fun b_next!23597 () Bool)

(assert (=> b!45820 (= b_next!23579 (or (and b!45823 (= lambda!6548 (evidence!594 prev!600))) b_next!23597))))

(declare-fun bs!18091 () Bool)

(declare-fun b!45824 () Bool)

(assert (= bs!18091 (and b!45824 b!45823)))

(declare-datatypes () ((Nat!179 (Zero!163) (Succ!160 (n!1312 Nat!179)))))

(declare-fun n!723 () Nat!179)

(declare-fun lambda!6549 () Int)

(assert (=> bs!18091 (= (and (= n!723 (Succ!160 (Succ!160 Zero!163))) (= (Succ!160 (Succ!160 Zero!163)) n!723)) (= lambda!6549 lambda!6547))))

(assert (=> b!45824 true))

(declare-fun b_next!23599 () Bool)

(assert (=> b!45821 (= b_next!23581 (or (and b!45824 (= lambda!6549 (x!16976 thiss!5674))) b_next!23599))))

(declare-fun b_next!23601 () Bool)

(assert (=> b!45825 (= b_next!23583 (or (and b!45824 (= lambda!6549 (x!16977 x$72!18))) b_next!23601))))

(declare-fun b_next!23603 () Bool)

(assert (=> b!45820 (= b_next!23585 (or (and b!45824 (= lambda!6549 (x!16977 prev!600))) b_next!23603))))

(declare-fun b_next!23605 () Bool)

(assert (=> b!45820 (= b_next!23587 (or (and b!45824 (= lambda!6549 (y!1481 prev!600))) b_next!23605))))

(declare-fun b_next!23607 () Bool)

(assert (=> b!45825 (= b_next!23589 (or (and b!45824 (= lambda!6549 (y!1481 x$72!18))) b_next!23607))))

(declare-fun b_next!23609 () Bool)

(assert (=> b!45821 (= b_next!23591 (or (and b!45824 (= lambda!6549 (y!1480 thiss!5674))) b_next!23609))))

(declare-fun b_next!23611 () Bool)

(assert (=> b!45821 (= b_next!23593 (or (and b!45824 (= lambda!6549 (evidence!593 thiss!5674))) b_next!23611))))

(declare-fun lambda!6550 () Int)

(assert (=> bs!18091 (not (= lambda!6550 lambda!6547))))

(assert (=> b!45824 (not (= lambda!6550 lambda!6549))))

(declare-fun dynLambda!777 (Int) Bool)

(assert (=> (and b!45821 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (x!16976 thiss!5674)))) (= lambda!6550 (x!16976 thiss!5674))))

(assert (=> (and b!45825 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (x!16977 x$72!18)))) (= lambda!6550 (x!16977 x$72!18))))

(assert (=> (and b!45820 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (x!16977 prev!600)))) (= lambda!6550 (x!16977 prev!600))))

(assert (=> (and b!45820 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (y!1481 prev!600)))) (= lambda!6550 (y!1481 prev!600))))

(assert (=> (and b!45825 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (y!1481 x$72!18)))) (= lambda!6550 (y!1481 x$72!18))))

(assert (=> (and b!45821 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (y!1480 thiss!5674)))) (= lambda!6550 (y!1480 thiss!5674))))

(assert (=> (and b!45821 b!45824 (= (dynLambda!777 lambda!6550) (dynLambda!777 (evidence!593 thiss!5674)))) (= lambda!6550 (evidence!593 thiss!5674))))

(declare-fun b_next!23613 () Bool)

(assert (=> b!45821 (= b_next!23599 (or (and b!45824 (= lambda!6550 (x!16976 thiss!5674))) b_next!23613))))

(declare-fun b_next!23615 () Bool)

(assert (=> b!45825 (= b_next!23601 (or (and b!45824 (= lambda!6550 (x!16977 x$72!18))) b_next!23615))))

(declare-fun b_next!23617 () Bool)

(assert (=> b!45820 (= b_next!23603 (or (and b!45824 (= lambda!6550 (x!16977 prev!600))) b_next!23617))))

(declare-fun b_next!23619 () Bool)

(assert (=> b!45820 (= b_next!23605 (or (and b!45824 (= lambda!6550 (y!1481 prev!600))) b_next!23619))))

(declare-fun b_next!23621 () Bool)

(assert (=> b!45825 (= b_next!23607 (or (and b!45824 (= lambda!6550 (y!1481 x$72!18))) b_next!23621))))

(declare-fun b_next!23623 () Bool)

(assert (=> b!45821 (= b_next!23609 (or (and b!45824 (= lambda!6550 (y!1480 thiss!5674))) b_next!23623))))

(declare-fun b_next!23625 () Bool)

(assert (=> b!45821 (= b_next!23611 (or (and b!45824 (= lambda!6550 (evidence!593 thiss!5674))) b_next!23625))))

(declare-fun m!48733 () Bool)

(assert (=> b!45824 m!48733))

(declare-fun lambda!6551 () Int)

(assert (=> bs!18091 (not (= lambda!6551 lambda!6547))))

(assert (=> b!45824 (not (= lambda!6551 lambda!6549))))

(declare-fun trivial!1 () Bool)

(assert (=> b!45824 (= (= trivial!1 true) (= lambda!6551 lambda!6550))))

(assert (=> (and b!45821 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (x!16976 thiss!5674)))) (= lambda!6551 (x!16976 thiss!5674))))

(assert (=> (and b!45825 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (x!16977 x$72!18)))) (= lambda!6551 (x!16977 x$72!18))))

(assert (=> (and b!45820 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (x!16977 prev!600)))) (= lambda!6551 (x!16977 prev!600))))

(assert (=> (and b!45820 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (y!1481 prev!600)))) (= lambda!6551 (y!1481 prev!600))))

(assert (=> (and b!45825 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (y!1481 x$72!18)))) (= lambda!6551 (y!1481 x$72!18))))

(assert (=> (and b!45821 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (y!1480 thiss!5674)))) (= lambda!6551 (y!1480 thiss!5674))))

(assert (=> (and b!45821 b!45824 (= (dynLambda!777 lambda!6551) (dynLambda!777 (evidence!593 thiss!5674)))) (= lambda!6551 (evidence!593 thiss!5674))))

(declare-fun b_next!23627 () Bool)

(assert (=> b!45821 (= b_next!23613 (or (and b!45824 (= lambda!6551 (x!16976 thiss!5674))) b_next!23627))))

(declare-fun b_next!23629 () Bool)

(assert (=> b!45825 (= b_next!23615 (or (and b!45824 (= lambda!6551 (x!16977 x$72!18))) b_next!23629))))

(declare-fun b_next!23631 () Bool)

(assert (=> b!45820 (= b_next!23617 (or (and b!45824 (= lambda!6551 (x!16977 prev!600))) b_next!23631))))

(declare-fun b_next!23633 () Bool)

(assert (=> b!45820 (= b_next!23619 (or (and b!45824 (= lambda!6551 (y!1481 prev!600))) b_next!23633))))

(declare-fun b_next!23635 () Bool)

(assert (=> b!45825 (= b_next!23621 (or (and b!45824 (= lambda!6551 (y!1481 x$72!18))) b_next!23635))))

(declare-fun b_next!23637 () Bool)

(assert (=> b!45821 (= b_next!23623 (or (and b!45824 (= lambda!6551 (y!1480 thiss!5674))) b_next!23637))))

(declare-fun b_next!23639 () Bool)

(assert (=> b!45821 (= b_next!23625 (or (and b!45824 (= lambda!6551 (evidence!593 thiss!5674))) b_next!23639))))

(declare-fun b!45818 () Bool)

(declare-fun res!21646 () Bool)

(declare-fun e!23774 () Bool)

(assert (=> b!45818 (=> (not res!21646) (not e!23774))))

(declare-fun keepEvidence!38 (Unit!564) Bool)

(declare-fun dynLambda!778 (Int) Unit!564)

(assert (=> b!45818 (= res!21646 (keepEvidence!38 (dynLambda!778 (evidence!594 prev!600))))))

(declare-fun b!45819 () Bool)

(declare-fun res!21643 () Bool)

(assert (=> b!45819 (=> (not res!21643) (not e!23774))))

(assert (=> b!45819 (= res!21643 (= prev!600 x$72!18))))

(declare-fun res!21647 () Bool)

(assert (=> start!6170 (=> (not res!21647) (not e!23774))))

(assert (=> start!6170 (= res!21647 (not (is-Zero!163 n!723)))))

(assert (=> start!6170 e!23774))

(assert (=> start!6170 true))

(declare-fun e!23776 () Bool)

(declare-fun inv!790 (RAEqEvidence!284) Bool)

(assert (=> start!6170 (and (inv!790 x$72!18) e!23776)))

(declare-fun e!23775 () Bool)

(declare-fun inv!791 (RAEqEvidence!282) Bool)

(assert (=> start!6170 (and (inv!791 thiss!5674) e!23775)))

(declare-fun e!23777 () Bool)

(assert (=> start!6170 (and (inv!790 prev!600) e!23777)))

(assert (=> b!45820 (= e!23777 (and tp!11610 tp!11614 tp!11611))))

(assert (=> b!45821 (= e!23775 (and tp!11612 tp!11609 tp!11615))))

(declare-fun b!45822 () Bool)

(assert (=> b!45822 (= e!23774 (not (= (dynLambda!777 (y!1481 prev!600)) (dynLambda!777 (x!16976 thiss!5674)))))))

(declare-fun res!21644 () Bool)

(assert (=> b!45823 (=> (not res!21644) (not e!23774))))

(assert (=> b!45823 (= res!21644 (= x$72!18 (RAEqEvidence!285 lambda!6547 lambda!6547 lambda!6548)))))

(declare-fun res!21645 () Bool)

(assert (=> b!45824 (=> (not res!21645) (not e!23774))))

(assert (=> b!45824 (= res!21645 (= thiss!5674 (RAEqEvidence!283 lambda!6549 lambda!6550 lambda!6551)))))

(assert (=> b!45825 (= e!23776 (and tp!11613 tp!11616 tp!11617))))

(assert (= (and start!6170 res!21647) b!45823))

(assert (= (and b!45823 res!21644) b!45824))

(assert (= (and b!45824 res!21645) b!45819))

(assert (= (and b!45819 res!21643) b!45818))

(assert (= (and b!45818 res!21646) b!45822))

(assert (= start!6170 b!45825))

(assert (= start!6170 b!45821))

(assert (= start!6170 b!45820))

(declare-fun b_lambda!12199 () Bool)

(assert (=> (not b_lambda!12199) (not b!45818)))

(declare-fun t!27237 () Bool)

(declare-fun tb!26415 () Bool)

(assert (=> (and b!45825 (= (evidence!594 x$72!18) (evidence!594 prev!600)) t!27237) tb!26415))

(declare-fun result!26691 () Bool)

(assert (=> tb!26415 (= result!26691 true)))

(assert (=> b!45818 t!27237))

(declare-fun b_and!34751 () Bool)

(assert (= b_and!34737 (and (=> t!27237 result!26691) b_and!34751)))

(declare-fun t!27239 () Bool)

(declare-fun tb!26417 () Bool)

(assert (=> (and b!45820 (= (evidence!594 prev!600) (evidence!594 prev!600)) t!27239) tb!26417))

(declare-fun result!26693 () Bool)

(assert (=> tb!26417 (= result!26693 true)))

(assert (=> b!45818 t!27239))

(declare-fun b_and!34753 () Bool)

(assert (= b_and!34749 (and (=> t!27239 result!26693) b_and!34753)))

(declare-fun b_lambda!12201 () Bool)

(assert (=> (not b_lambda!12201) (not b!45822)))

(declare-fun tb!26419 () Bool)

(declare-fun t!27241 () Bool)

(assert (=> (and b!45825 (= (y!1481 x$72!18) (y!1481 prev!600)) t!27241) tb!26419))

(declare-fun result!26695 () Bool)

(assert (=> tb!26419 (= result!26695 true)))

(assert (=> b!45822 t!27241))

(declare-fun b_and!34755 () Bool)

(assert (= b_and!34735 (and (=> t!27241 result!26695) b_and!34755)))

(declare-fun t!27243 () Bool)

(declare-fun tb!26421 () Bool)

(assert (=> (and b!45820 (= (x!16977 prev!600) (y!1481 prev!600)) t!27243) tb!26421))

(declare-fun result!26697 () Bool)

(assert (=> tb!26421 (= result!26697 true)))

(assert (=> b!45822 t!27243))

(declare-fun b_and!34757 () Bool)

(assert (= b_and!34745 (and (=> t!27243 result!26697) b_and!34757)))

(declare-fun tb!26423 () Bool)

(declare-fun t!27245 () Bool)

(assert (=> (and b!45821 (= (y!1480 thiss!5674) (y!1481 prev!600)) t!27245) tb!26423))

(declare-fun result!26699 () Bool)

(assert (=> tb!26423 (= result!26699 true)))

(assert (=> b!45822 t!27245))

(declare-fun b_and!34759 () Bool)

(assert (= b_and!34741 (and (=> t!27245 result!26699) b_and!34759)))

(declare-fun tb!26425 () Bool)

(declare-fun t!27247 () Bool)

(assert (=> (and b!45821 (= (x!16976 thiss!5674) (y!1481 prev!600)) t!27247) tb!26425))

(declare-fun result!26701 () Bool)

(assert (=> tb!26425 (= result!26701 true)))

(assert (=> b!45822 t!27247))

(declare-fun b_and!34761 () Bool)

(assert (= b_and!34739 (and (=> t!27247 result!26701) b_and!34761)))

(declare-fun t!27249 () Bool)

(declare-fun tb!26427 () Bool)

(assert (=> (and b!45820 (= (y!1481 prev!600) (y!1481 prev!600)) t!27249) tb!26427))

(declare-fun result!26703 () Bool)

(assert (=> tb!26427 (= result!26703 true)))

(assert (=> b!45822 t!27249))

(declare-fun b_and!34763 () Bool)

(assert (= b_and!34747 (and (=> t!27249 result!26703) b_and!34763)))

(declare-fun t!27251 () Bool)

(declare-fun tb!26429 () Bool)

(assert (=> (and b!45825 (= (x!16977 x$72!18) (y!1481 prev!600)) t!27251) tb!26429))

(declare-fun result!26705 () Bool)

(assert (=> tb!26429 (= result!26705 true)))

(assert (=> b!45822 t!27251))

(declare-fun b_and!34765 () Bool)

(assert (= b_and!34733 (and (=> t!27251 result!26705) b_and!34765)))

(declare-fun tb!26431 () Bool)

(declare-fun t!27253 () Bool)

(assert (=> (and b!45821 (= (evidence!593 thiss!5674) (y!1481 prev!600)) t!27253) tb!26431))

(declare-fun result!26707 () Bool)

(assert (=> tb!26431 (= result!26707 true)))

(assert (=> b!45822 t!27253))

(declare-fun b_and!34767 () Bool)

(assert (= b_and!34743 (and (=> t!27253 result!26707) b_and!34767)))

(declare-fun b_lambda!12203 () Bool)

(assert (=> (not b_lambda!12203) (not b!45822)))

(declare-fun t!27255 () Bool)

(declare-fun tb!26433 () Bool)

(assert (=> (and b!45820 (= (y!1481 prev!600) (x!16976 thiss!5674)) t!27255) tb!26433))

(declare-fun result!26709 () Bool)

(assert (=> tb!26433 (= result!26709 true)))

(assert (=> b!45822 t!27255))

(declare-fun b_and!34769 () Bool)

(assert (= b_and!34763 (and (=> t!27255 result!26709) b_and!34769)))

(declare-fun t!27257 () Bool)

(declare-fun tb!26435 () Bool)

(assert (=> (and b!45825 (= (y!1481 x$72!18) (x!16976 thiss!5674)) t!27257) tb!26435))

(declare-fun result!26711 () Bool)

(assert (=> tb!26435 (= result!26711 true)))

(assert (=> b!45822 t!27257))

(declare-fun b_and!34771 () Bool)

(assert (= b_and!34755 (and (=> t!27257 result!26711) b_and!34771)))

(declare-fun t!27259 () Bool)

(declare-fun tb!26437 () Bool)

(assert (=> (and b!45820 (= (x!16977 prev!600) (x!16976 thiss!5674)) t!27259) tb!26437))

(declare-fun result!26713 () Bool)

(assert (=> tb!26437 (= result!26713 true)))

(assert (=> b!45822 t!27259))

(declare-fun b_and!34773 () Bool)

(assert (= b_and!34757 (and (=> t!27259 result!26713) b_and!34773)))

(declare-fun t!27261 () Bool)

(declare-fun tb!26439 () Bool)

(assert (=> (and b!45821 (= (x!16976 thiss!5674) (x!16976 thiss!5674)) t!27261) tb!26439))

(declare-fun result!26715 () Bool)

(assert (=> tb!26439 (= result!26715 true)))

(assert (=> b!45822 t!27261))

(declare-fun b_and!34775 () Bool)

(assert (= b_and!34761 (and (=> t!27261 result!26715) b_and!34775)))

(declare-fun tb!26441 () Bool)

(declare-fun t!27263 () Bool)

(assert (=> (and b!45825 (= (x!16977 x$72!18) (x!16976 thiss!5674)) t!27263) tb!26441))

(declare-fun result!26717 () Bool)

(assert (=> tb!26441 (= result!26717 true)))

(assert (=> b!45822 t!27263))

(declare-fun b_and!34777 () Bool)

(assert (= b_and!34765 (and (=> t!27263 result!26717) b_and!34777)))

(declare-fun t!27265 () Bool)

(declare-fun tb!26443 () Bool)

(assert (=> (and b!45821 (= (evidence!593 thiss!5674) (x!16976 thiss!5674)) t!27265) tb!26443))

(declare-fun result!26719 () Bool)

(assert (=> tb!26443 (= result!26719 true)))

(assert (=> b!45822 t!27265))

(declare-fun b_and!34779 () Bool)

(assert (= b_and!34767 (and (=> t!27265 result!26719) b_and!34779)))

(declare-fun t!27267 () Bool)

(declare-fun tb!26445 () Bool)

(assert (=> (and b!45821 (= (y!1480 thiss!5674) (x!16976 thiss!5674)) t!27267) tb!26445))

(declare-fun result!26721 () Bool)

(assert (=> tb!26445 (= result!26721 true)))

(assert (=> b!45822 t!27267))

(declare-fun b_and!34781 () Bool)

(assert (= b_and!34759 (and (=> t!27267 result!26721) b_and!34781)))

(declare-fun m!48735 () Bool)

(assert (=> b!45818 m!48735))

(assert (=> b!45818 m!48735))

(declare-fun m!48737 () Bool)

(assert (=> b!45818 m!48737))

(declare-fun m!48739 () Bool)

(assert (=> start!6170 m!48739))

(declare-fun m!48741 () Bool)

(assert (=> start!6170 m!48741))

(declare-fun m!48743 () Bool)

(assert (=> start!6170 m!48743))

(declare-fun m!48745 () Bool)

(assert (=> b!45822 m!48745))

(declare-fun m!48747 () Bool)

(assert (=> b!45822 m!48747))

(push 1)

(assert b_and!34779)

(assert (not b_lambda!12201))

(assert b_and!34775)

(assert (not b_lambda!12203))

(assert b_and!34771)

(assert (not b_next!23597))

(assert b_and!34753)

(assert b_and!34769)

(assert (not b_next!23637))

(assert (not start!6170))

(assert (not b_lambda!12199))

(assert (not b_next!23631))

(assert b_and!34777)

(assert (not b!45824))

(assert (not b_next!23627))

(assert b_and!34781)

(assert b_and!34773)

(assert b_and!34751)

(assert (not b_next!23633))

(assert (not b_next!23595))

(assert (not b!45818))

(assert (not b_next!23635))

(assert (not b_next!23629))

(assert (not b_next!23639))

(check-sat)

(pop 1)

(push 1)

(assert b_and!34779)

(assert b_and!34775)

(assert b_and!34771)

(assert (not b_next!23597))

(assert b_and!34753)

(assert b_and!34769)

(assert (not b_next!23637))

(assert (not b_next!23631))

(assert b_and!34777)

(assert (not b_next!23627))

(assert b_and!34781)

(assert b_and!34773)

(assert b_and!34751)

(assert (not b_next!23633))

(assert (not b_next!23595))

(assert (not b_next!23635))

(assert (not b_next!23629))

(assert (not b_next!23639))

(check-sat)

(pop 1)

