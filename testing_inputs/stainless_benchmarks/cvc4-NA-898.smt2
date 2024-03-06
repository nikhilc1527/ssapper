; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6866 () Bool)

(assert start!6866)

(declare-fun b!50859 () Bool)

(declare-fun b_free!7197 () Bool)

(declare-fun b_next!38465 () Bool)

(assert (=> b!50859 (= b_free!7197 (not b_next!38465))))

(declare-fun tp!14868 () Bool)

(declare-fun b_and!58115 () Bool)

(assert (=> b!50859 (= tp!14868 b_and!58115)))

(declare-fun b_free!7199 () Bool)

(declare-fun b_next!38467 () Bool)

(assert (=> b!50859 (= b_free!7199 (not b_next!38467))))

(declare-fun tp!14873 () Bool)

(declare-fun b_and!58117 () Bool)

(assert (=> b!50859 (= tp!14873 b_and!58117)))

(declare-fun b_free!7201 () Bool)

(declare-fun b_next!38469 () Bool)

(assert (=> b!50859 (= b_free!7201 (not b_next!38469))))

(declare-fun tp!14869 () Bool)

(declare-fun b_and!58119 () Bool)

(assert (=> b!50859 (= tp!14869 b_and!58119)))

(declare-fun b!50862 () Bool)

(declare-fun b_free!7203 () Bool)

(declare-fun b_next!38471 () Bool)

(assert (=> b!50862 (= b_free!7203 (not b_next!38471))))

(declare-fun tp!14870 () Bool)

(declare-fun b_and!58121 () Bool)

(assert (=> b!50862 (= tp!14870 b_and!58121)))

(declare-fun b_free!7205 () Bool)

(declare-fun b_next!38473 () Bool)

(assert (=> b!50862 (= b_free!7205 (not b_next!38473))))

(declare-fun tp!14875 () Bool)

(declare-fun b_and!58123 () Bool)

(assert (=> b!50862 (= tp!14875 b_and!58123)))

(declare-fun b_free!7207 () Bool)

(declare-fun b_next!38475 () Bool)

(assert (=> b!50862 (= b_free!7207 (not b_next!38475))))

(declare-fun tp!14867 () Bool)

(declare-fun b_and!58125 () Bool)

(assert (=> b!50862 (= tp!14867 b_and!58125)))

(declare-fun b!50856 () Bool)

(declare-fun b_free!7209 () Bool)

(declare-fun b_next!38477 () Bool)

(assert (=> b!50856 (= b_free!7209 (not b_next!38477))))

(declare-fun tp!14874 () Bool)

(declare-fun b_and!58127 () Bool)

(assert (=> b!50856 (= tp!14874 b_and!58127)))

(declare-fun b_free!7211 () Bool)

(declare-fun b_next!38479 () Bool)

(assert (=> b!50856 (= b_free!7211 (not b_next!38479))))

(declare-fun tp!14872 () Bool)

(declare-fun b_and!58129 () Bool)

(assert (=> b!50856 (= tp!14872 b_and!58129)))

(declare-fun b_free!7213 () Bool)

(declare-fun b_next!38481 () Bool)

(assert (=> b!50856 (= b_free!7213 (not b_next!38481))))

(declare-fun tp!14871 () Bool)

(declare-fun b_and!58131 () Bool)

(assert (=> b!50856 (= tp!14871 b_and!58131)))

(declare-fun b!50861 () Bool)

(assert (=> b!50861 true))

(assert (=> b!50861 true))

(declare-fun b_next!38483 () Bool)

(declare-datatypes () ((Nat!259 (Zero!243) (Succ!240 (n!1397 Nat!259)))))

(declare-datatypes () ((RAEqEvidence!476 (RAEqEvidence!477 (x!19727 Int) (y!1577 Int) (evidence!690 Int)))))

(declare-fun x$12!40 () RAEqEvidence!476)

(declare-fun lambda!8543 () Int)

(assert (=> b!50859 (= b_next!38467 (or (and b!50861 (= lambda!8543 (y!1577 x$12!40))) b_next!38483))))

(declare-fun thiss!5583 () RAEqEvidence!476)

(declare-fun b_next!38485 () Bool)

(assert (=> b!50856 (= b_next!38477 (or (and b!50861 (= lambda!8543 (x!19727 thiss!5583))) b_next!38485))))

(declare-fun b_next!38487 () Bool)

(assert (=> b!50856 (= b_next!38479 (or (and b!50861 (= lambda!8543 (y!1577 thiss!5583))) b_next!38487))))

(declare-fun b_next!38489 () Bool)

(declare-fun prev!558 () RAEqEvidence!476)

(assert (=> b!50862 (= b_next!38471 (or (and b!50861 (= lambda!8543 (x!19727 prev!558))) b_next!38489))))

(declare-fun b_next!38491 () Bool)

(assert (=> b!50862 (= b_next!38473 (or (and b!50861 (= lambda!8543 (y!1577 prev!558))) b_next!38491))))

(declare-fun b_next!38493 () Bool)

(assert (=> b!50859 (= b_next!38465 (or (and b!50861 (= lambda!8543 (x!19727 x$12!40))) b_next!38493))))

(declare-fun m!54439 () Bool)

(assert (=> b!50861 m!54439))

(declare-fun lambda!8544 () Int)

(declare-fun dynLambda!883 (Int) Bool)

(assert (=> (and b!50859 b!50861 (= (dynLambda!883 lambda!8544) (dynLambda!883 (evidence!690 x$12!40)))) (= lambda!8544 (evidence!690 x$12!40))))

(assert (=> (and b!50862 b!50861 (= (dynLambda!883 lambda!8544) (dynLambda!883 (evidence!690 prev!558)))) (= lambda!8544 (evidence!690 prev!558))))

(assert (=> (and b!50856 b!50861 (= (dynLambda!883 lambda!8544) (dynLambda!883 (evidence!690 thiss!5583)))) (= lambda!8544 (evidence!690 thiss!5583))))

(declare-fun b_next!38495 () Bool)

(assert (=> b!50859 (= b_next!38469 (or (and b!50861 (= lambda!8544 (evidence!690 x$12!40))) b_next!38495))))

(declare-fun b_next!38497 () Bool)

(assert (=> b!50862 (= b_next!38475 (or (and b!50861 (= lambda!8544 (evidence!690 prev!558))) b_next!38497))))

(declare-fun b_next!38499 () Bool)

(assert (=> b!50856 (= b_next!38481 (or (and b!50861 (= lambda!8544 (evidence!690 thiss!5583))) b_next!38499))))

(declare-fun bs!23690 () Bool)

(declare-fun b!50863 () Bool)

(assert (= bs!23690 (and b!50863 b!50861)))

(declare-fun n1!178 () Nat!259)

(declare-fun n2!189 () Nat!259)

(declare-fun lambda!8545 () Int)

(assert (=> bs!23690 (= (and (= n2!189 n1!178) (= n1!178 n2!189)) (= lambda!8545 lambda!8543))))

(assert (=> b!50863 true))

(assert (=> b!50863 true))

(declare-fun b_next!38501 () Bool)

(assert (=> b!50859 (= b_next!38483 (or (and b!50863 (= lambda!8545 (y!1577 x$12!40))) b_next!38501))))

(declare-fun b_next!38503 () Bool)

(assert (=> b!50856 (= b_next!38485 (or (and b!50863 (= lambda!8545 (x!19727 thiss!5583))) b_next!38503))))

(declare-fun b_next!38505 () Bool)

(assert (=> b!50856 (= b_next!38487 (or (and b!50863 (= lambda!8545 (y!1577 thiss!5583))) b_next!38505))))

(declare-fun b_next!38507 () Bool)

(assert (=> b!50862 (= b_next!38489 (or (and b!50863 (= lambda!8545 (x!19727 prev!558))) b_next!38507))))

(declare-fun b_next!38509 () Bool)

(assert (=> b!50862 (= b_next!38491 (or (and b!50863 (= lambda!8545 (y!1577 prev!558))) b_next!38509))))

(declare-fun b_next!38511 () Bool)

(assert (=> b!50859 (= b_next!38493 (or (and b!50863 (= lambda!8545 (x!19727 x$12!40))) b_next!38511))))

(declare-fun e!26389 () Bool)

(assert (=> b!50856 (= e!26389 (and tp!14874 tp!14872 tp!14871))))

(declare-fun b!50857 () Bool)

(declare-fun e!26390 () Bool)

(declare-fun dynLambda!884 (Int) Nat!259)

(assert (=> b!50857 (= e!26390 (not (= (dynLambda!884 (y!1577 prev!558)) (dynLambda!884 (x!19727 thiss!5583)))))))

(declare-fun b!50858 () Bool)

(declare-fun res!23339 () Bool)

(assert (=> b!50858 (=> (not res!23339) (not e!26390))))

(declare-fun keepEvidence!74 (Bool) Bool)

(assert (=> b!50858 (= res!23339 (keepEvidence!74 (dynLambda!883 (evidence!690 prev!558))))))

(declare-fun e!26387 () Bool)

(assert (=> b!50859 (= e!26387 (and tp!14868 tp!14873 tp!14869))))

(declare-fun b!50860 () Bool)

(declare-fun res!23337 () Bool)

(assert (=> b!50860 (=> (not res!23337) (not e!26390))))

(assert (=> b!50860 (= res!23337 (= prev!558 x$12!40))))

(declare-fun res!23336 () Bool)

(assert (=> b!50861 (=> (not res!23336) (not e!26390))))

(assert (=> b!50861 (= res!23336 (= x$12!40 (RAEqEvidence!477 lambda!8543 lambda!8543 lambda!8544)))))

(declare-fun e!26388 () Bool)

(assert (=> b!50862 (= e!26388 (and tp!14870 tp!14875 tp!14867))))

(declare-fun res!23338 () Bool)

(assert (=> start!6866 (=> (not res!23338) (not e!26390))))

(assert (=> start!6866 (= res!23338 (not (is-Zero!243 n1!178)))))

(assert (=> start!6866 e!26390))

(declare-fun inv!887 (RAEqEvidence!476) Bool)

(assert (=> start!6866 (and (inv!887 x$12!40) e!26387)))

(assert (=> start!6866 (and (inv!887 prev!558) e!26388)))

(assert (=> start!6866 (and (inv!887 thiss!5583) e!26389)))

(assert (=> start!6866 true))

(declare-fun res!23335 () Bool)

(assert (=> b!50863 (=> (not res!23335) (not e!26390))))

(assert (=> b!50863 (= res!23335 (= thiss!5583 (RAEqEvidence!477 lambda!8543 lambda!8545 lambda!8544)))))

(assert (= (and start!6866 res!23338) b!50861))

(assert (= (and b!50861 res!23336) b!50863))

(assert (= (and b!50863 res!23335) b!50860))

(assert (= (and b!50860 res!23337) b!50858))

(assert (= (and b!50858 res!23339) b!50857))

(assert (= start!6866 b!50859))

(assert (= start!6866 b!50862))

(assert (= start!6866 b!50856))

(declare-fun b_lambda!14519 () Bool)

(assert (=> (not b_lambda!14519) (not b!50857)))

(declare-fun tb!45729 () Bool)

(declare-fun t!46551 () Bool)

(assert (=> (and b!50859 (= (y!1577 x$12!40) (y!1577 prev!558)) t!46551) tb!45729))

(declare-fun result!46005 () Bool)

(assert (=> tb!45729 (= result!46005 true)))

(assert (=> b!50857 t!46551))

(declare-fun b_and!58133 () Bool)

(assert (= b_and!58117 (and (=> t!46551 result!46005) b_and!58133)))

(declare-fun t!46553 () Bool)

(declare-fun tb!45731 () Bool)

(assert (=> (and b!50862 (= (x!19727 prev!558) (y!1577 prev!558)) t!46553) tb!45731))

(declare-fun result!46007 () Bool)

(assert (=> tb!45731 (= result!46007 true)))

(assert (=> b!50857 t!46553))

(declare-fun b_and!58135 () Bool)

(assert (= b_and!58121 (and (=> t!46553 result!46007) b_and!58135)))

(declare-fun tb!45733 () Bool)

(declare-fun t!46555 () Bool)

(assert (=> (and b!50859 (= (x!19727 x$12!40) (y!1577 prev!558)) t!46555) tb!45733))

(declare-fun result!46009 () Bool)

(assert (=> tb!45733 (= result!46009 true)))

(assert (=> b!50857 t!46555))

(declare-fun b_and!58137 () Bool)

(assert (= b_and!58115 (and (=> t!46555 result!46009) b_and!58137)))

(declare-fun tb!45735 () Bool)

(declare-fun t!46557 () Bool)

(assert (=> (and b!50856 (= (x!19727 thiss!5583) (y!1577 prev!558)) t!46557) tb!45735))

(declare-fun result!46011 () Bool)

(assert (=> tb!45735 (= result!46011 true)))

(assert (=> b!50857 t!46557))

(declare-fun b_and!58139 () Bool)

(assert (= b_and!58127 (and (=> t!46557 result!46011) b_and!58139)))

(declare-fun tb!45737 () Bool)

(declare-fun t!46559 () Bool)

(assert (=> (and b!50856 (= (y!1577 thiss!5583) (y!1577 prev!558)) t!46559) tb!45737))

(declare-fun result!46013 () Bool)

(assert (=> tb!45737 (= result!46013 true)))

(assert (=> b!50857 t!46559))

(declare-fun b_and!58141 () Bool)

(assert (= b_and!58129 (and (=> t!46559 result!46013) b_and!58141)))

(declare-fun t!46561 () Bool)

(declare-fun tb!45739 () Bool)

(assert (=> (and b!50862 (= (y!1577 prev!558) (y!1577 prev!558)) t!46561) tb!45739))

(declare-fun result!46015 () Bool)

(assert (=> tb!45739 (= result!46015 true)))

(assert (=> b!50857 t!46561))

(declare-fun b_and!58143 () Bool)

(assert (= b_and!58123 (and (=> t!46561 result!46015) b_and!58143)))

(declare-fun b_lambda!14521 () Bool)

(assert (=> (not b_lambda!14521) (not b!50857)))

(declare-fun t!46563 () Bool)

(declare-fun tb!45741 () Bool)

(assert (=> (and b!50862 (= (x!19727 prev!558) (x!19727 thiss!5583)) t!46563) tb!45741))

(declare-fun result!46017 () Bool)

(assert (=> tb!45741 (= result!46017 true)))

(assert (=> b!50857 t!46563))

(declare-fun b_and!58145 () Bool)

(assert (= b_and!58135 (and (=> t!46563 result!46017) b_and!58145)))

(declare-fun t!46565 () Bool)

(declare-fun tb!45743 () Bool)

(assert (=> (and b!50859 (= (x!19727 x$12!40) (x!19727 thiss!5583)) t!46565) tb!45743))

(declare-fun result!46019 () Bool)

(assert (=> tb!45743 (= result!46019 true)))

(assert (=> b!50857 t!46565))

(declare-fun b_and!58147 () Bool)

(assert (= b_and!58137 (and (=> t!46565 result!46019) b_and!58147)))

(declare-fun t!46567 () Bool)

(declare-fun tb!45745 () Bool)

(assert (=> (and b!50856 (= (y!1577 thiss!5583) (x!19727 thiss!5583)) t!46567) tb!45745))

(declare-fun result!46021 () Bool)

(assert (=> tb!45745 (= result!46021 true)))

(assert (=> b!50857 t!46567))

(declare-fun b_and!58149 () Bool)

(assert (= b_and!58141 (and (=> t!46567 result!46021) b_and!58149)))

(declare-fun t!46569 () Bool)

(declare-fun tb!45747 () Bool)

(assert (=> (and b!50856 (= (x!19727 thiss!5583) (x!19727 thiss!5583)) t!46569) tb!45747))

(declare-fun result!46023 () Bool)

(assert (=> tb!45747 (= result!46023 true)))

(assert (=> b!50857 t!46569))

(declare-fun b_and!58151 () Bool)

(assert (= b_and!58139 (and (=> t!46569 result!46023) b_and!58151)))

(declare-fun t!46571 () Bool)

(declare-fun tb!45749 () Bool)

(assert (=> (and b!50862 (= (y!1577 prev!558) (x!19727 thiss!5583)) t!46571) tb!45749))

(declare-fun result!46025 () Bool)

(assert (=> tb!45749 (= result!46025 true)))

(assert (=> b!50857 t!46571))

(declare-fun b_and!58153 () Bool)

(assert (= b_and!58143 (and (=> t!46571 result!46025) b_and!58153)))

(declare-fun t!46573 () Bool)

(declare-fun tb!45751 () Bool)

(assert (=> (and b!50859 (= (y!1577 x$12!40) (x!19727 thiss!5583)) t!46573) tb!45751))

(declare-fun result!46027 () Bool)

(assert (=> tb!45751 (= result!46027 true)))

(assert (=> b!50857 t!46573))

(declare-fun b_and!58155 () Bool)

(assert (= b_and!58133 (and (=> t!46573 result!46027) b_and!58155)))

(declare-fun b_lambda!14523 () Bool)

(assert (=> (not b_lambda!14523) (not b!50858)))

(declare-fun tb!45753 () Bool)

(declare-fun t!46575 () Bool)

(assert (=> (and b!50859 (= (evidence!690 x$12!40) (evidence!690 prev!558)) t!46575) tb!45753))

(declare-fun result!46029 () Bool)

(assert (=> tb!45753 (= result!46029 true)))

(assert (=> b!50858 t!46575))

(declare-fun b_and!58157 () Bool)

(assert (= b_and!58119 (and (=> t!46575 result!46029) b_and!58157)))

(declare-fun t!46577 () Bool)

(declare-fun tb!45755 () Bool)

(assert (=> (and b!50862 (= (evidence!690 prev!558) (evidence!690 prev!558)) t!46577) tb!45755))

(declare-fun result!46031 () Bool)

(assert (=> tb!45755 (= result!46031 true)))

(assert (=> b!50858 t!46577))

(declare-fun b_and!58159 () Bool)

(assert (= b_and!58125 (and (=> t!46577 result!46031) b_and!58159)))

(declare-fun t!46579 () Bool)

(declare-fun tb!45757 () Bool)

(assert (=> (and b!50856 (= (evidence!690 thiss!5583) (evidence!690 prev!558)) t!46579) tb!45757))

(declare-fun result!46033 () Bool)

(assert (=> tb!45757 (= result!46033 true)))

(assert (=> b!50858 t!46579))

(declare-fun b_and!58161 () Bool)

(assert (= b_and!58131 (and (=> t!46579 result!46033) b_and!58161)))

(declare-fun m!54441 () Bool)

(assert (=> b!50857 m!54441))

(declare-fun m!54443 () Bool)

(assert (=> b!50857 m!54443))

(declare-fun m!54445 () Bool)

(assert (=> b!50858 m!54445))

(assert (=> b!50858 m!54445))

(declare-fun m!54447 () Bool)

(assert (=> b!50858 m!54447))

(declare-fun m!54449 () Bool)

(assert (=> start!6866 m!54449))

(declare-fun m!54451 () Bool)

(assert (=> start!6866 m!54451))

(declare-fun m!54453 () Bool)

(assert (=> start!6866 m!54453))

(push 1)

(assert (not start!6866))

(assert b_and!58151)

(assert b_and!58155)

(assert (not b_next!38505))

(assert (not b!50863))

(assert b_and!58161)

(assert (not b_next!38501))

(assert (not b_next!38511))

(assert (not b_lambda!14523))

(assert (not b_lambda!14521))

(assert (not b_lambda!14519))

(assert (not b!50861))

(assert (not b_next!38495))

(assert b_and!58157)

(assert (not b_next!38509))

(assert (not b_next!38503))

(assert (not b_next!38499))

(assert b_and!58159)

(assert b_and!58145)

(assert b_and!58153)

(assert (not b!50858))

(assert b_and!58147)

(assert (not b_next!38507))

(assert (not b_next!38497))

(assert b_and!58149)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58151)

(assert b_and!58155)

(assert (not b_next!38505))

(assert b_and!58161)

(assert (not b_next!38501))

(assert (not b_next!38511))

(assert (not b_next!38495))

(assert b_and!58157)

(assert (not b_next!38509))

(assert (not b_next!38503))

(assert (not b_next!38499))

(assert b_and!58159)

(assert b_and!58145)

(assert b_and!58153)

(assert b_and!58147)

(assert (not b_next!38507))

(assert (not b_next!38497))

(assert b_and!58149)

(check-sat)

(pop 1)

