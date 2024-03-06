; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6468 () Bool)

(assert start!6468)

(declare-fun b!47880 () Bool)

(declare-fun b_free!5841 () Bool)

(declare-fun b_next!26387 () Bool)

(assert (=> b!47880 (= b_free!5841 (not b_next!26387))))

(declare-fun tp!12840 () Bool)

(declare-fun b_and!38105 () Bool)

(assert (=> b!47880 (= tp!12840 b_and!38105)))

(declare-fun b_free!5843 () Bool)

(declare-fun b_next!26389 () Bool)

(assert (=> b!47880 (= b_free!5843 (not b_next!26389))))

(declare-fun tp!12844 () Bool)

(declare-fun b_and!38107 () Bool)

(assert (=> b!47880 (= tp!12844 b_and!38107)))

(declare-fun b_free!5845 () Bool)

(declare-fun b_next!26391 () Bool)

(assert (=> b!47880 (= b_free!5845 (not b_next!26391))))

(declare-fun tp!12846 () Bool)

(declare-fun b_and!38109 () Bool)

(assert (=> b!47880 (= tp!12846 b_and!38109)))

(declare-fun b!47889 () Bool)

(declare-fun b_free!5847 () Bool)

(declare-fun b_next!26393 () Bool)

(assert (=> b!47889 (= b_free!5847 (not b_next!26393))))

(declare-fun tp!12839 () Bool)

(declare-fun b_and!38111 () Bool)

(assert (=> b!47889 (= tp!12839 b_and!38111)))

(declare-fun b_free!5849 () Bool)

(declare-fun b_next!26395 () Bool)

(assert (=> b!47889 (= b_free!5849 (not b_next!26395))))

(declare-fun tp!12843 () Bool)

(declare-fun b_and!38113 () Bool)

(assert (=> b!47889 (= tp!12843 b_and!38113)))

(declare-fun b_free!5851 () Bool)

(declare-fun b_next!26397 () Bool)

(assert (=> b!47889 (= b_free!5851 (not b_next!26397))))

(declare-fun tp!12849 () Bool)

(declare-fun b_and!38115 () Bool)

(assert (=> b!47889 (= tp!12849 b_and!38115)))

(declare-fun b!47885 () Bool)

(declare-fun b_free!5853 () Bool)

(declare-fun b_next!26399 () Bool)

(assert (=> b!47885 (= b_free!5853 (not b_next!26399))))

(declare-fun tp!12842 () Bool)

(declare-fun b_and!38117 () Bool)

(assert (=> b!47885 (= tp!12842 b_and!38117)))

(declare-fun b_free!5855 () Bool)

(declare-fun b_next!26401 () Bool)

(assert (=> b!47885 (= b_free!5855 (not b_next!26401))))

(declare-fun tp!12841 () Bool)

(declare-fun b_and!38119 () Bool)

(assert (=> b!47885 (= tp!12841 b_and!38119)))

(declare-fun b_free!5857 () Bool)

(declare-fun b_next!26403 () Bool)

(assert (=> b!47885 (= b_free!5857 (not b_next!26403))))

(declare-fun tp!12848 () Bool)

(declare-fun b_and!38121 () Bool)

(assert (=> b!47885 (= tp!12848 b_and!38121)))

(declare-fun b!47887 () Bool)

(declare-fun b_free!5859 () Bool)

(declare-fun b_next!26405 () Bool)

(assert (=> b!47887 (= b_free!5859 (not b_next!26405))))

(declare-fun tp!12850 () Bool)

(declare-fun b_and!38123 () Bool)

(assert (=> b!47887 (= tp!12850 b_and!38123)))

(declare-fun b_free!5861 () Bool)

(declare-fun b_next!26407 () Bool)

(assert (=> b!47887 (= b_free!5861 (not b_next!26407))))

(declare-fun tp!12847 () Bool)

(declare-fun b_and!38125 () Bool)

(assert (=> b!47887 (= tp!12847 b_and!38125)))

(declare-fun b_free!5863 () Bool)

(declare-fun b_next!26409 () Bool)

(assert (=> b!47887 (= b_free!5863 (not b_next!26409))))

(declare-fun tp!12845 () Bool)

(declare-fun b_and!38127 () Bool)

(assert (=> b!47887 (= tp!12845 b_and!38127)))

(declare-fun b!47886 () Bool)

(assert (=> b!47886 true))

(assert (=> b!47886 true))

(assert (=> b!47886 true))

(declare-fun b_next!26411 () Bool)

(declare-datatypes () ((Nat!224 (Zero!208) (Succ!205 (n!1361 Nat!224)))))

(declare-datatypes () ((RAEqEvidence!372 (RAEqEvidence!373 (x!17668 Int) (y!1525 Int) (evidence!638 Int)))))

(declare-fun x$41!67 () RAEqEvidence!372)

(declare-fun lambda!7024 () Int)

(assert (=> b!47889 (= b_next!26395 (or (and b!47886 (= lambda!7024 (y!1525 x$41!67))) b_next!26411))))

(declare-fun b_next!26413 () Bool)

(declare-datatypes () ((Unit!656 (Unit!657))))

(declare-datatypes () ((RAEqEvidence!374 (RAEqEvidence!375 (x!17669 Int) (y!1526 Int) (evidence!639 Int)))))

(declare-fun x$40!15 () RAEqEvidence!374)

(assert (=> b!47885 (= b_next!26399 (or (and b!47886 (= lambda!7024 (x!17669 x$40!15))) b_next!26413))))

(declare-fun b_next!26415 () Bool)

(declare-fun thiss!6350 () RAEqEvidence!374)

(assert (=> b!47880 (= b_next!26387 (or (and b!47886 (= lambda!7024 (x!17669 thiss!6350))) b_next!26415))))

(declare-fun b_next!26417 () Bool)

(assert (=> b!47885 (= b_next!26401 (or (and b!47886 (= lambda!7024 (y!1526 x$40!15))) b_next!26417))))

(declare-fun b_next!26419 () Bool)

(assert (=> b!47889 (= b_next!26393 (or (and b!47886 (= lambda!7024 (x!17668 x$41!67))) b_next!26419))))

(declare-fun b_next!26421 () Bool)

(declare-fun prev!761 () RAEqEvidence!374)

(assert (=> b!47887 (= b_next!26405 (or (and b!47886 (= lambda!7024 (x!17669 prev!761))) b_next!26421))))

(declare-fun b_next!26423 () Bool)

(assert (=> b!47880 (= b_next!26389 (or (and b!47886 (= lambda!7024 (y!1526 thiss!6350))) b_next!26423))))

(declare-fun b_next!26425 () Bool)

(assert (=> b!47887 (= b_next!26407 (or (and b!47886 (= lambda!7024 (y!1526 prev!761))) b_next!26425))))

(declare-fun m!50809 () Bool)

(assert (=> b!47886 m!50809))

(declare-fun lambda!7025 () Int)

(declare-fun dynLambda!810 (Int) Bool)

(assert (=> (and b!47889 b!47886 (= (dynLambda!810 lambda!7025) (dynLambda!810 (evidence!638 x$41!67)))) (= lambda!7025 (evidence!638 x$41!67))))

(declare-fun b_next!26427 () Bool)

(assert (=> b!47889 (= b_next!26397 (or (and b!47886 (= lambda!7025 (evidence!638 x$41!67))) b_next!26427))))

(declare-fun bs!18794 () Bool)

(declare-fun b!47883 () Bool)

(assert (= bs!18794 (and b!47883 b!47886)))

(declare-fun lambda!7026 () Int)

(assert (=> bs!18794 (not (= lambda!7026 lambda!7024))))

(assert (=> b!47883 true))

(assert (=> b!47883 true))

(assert (=> b!47883 true))

(declare-fun b_next!26429 () Bool)

(assert (=> b!47889 (= b_next!26411 (or (and b!47883 (= lambda!7026 (y!1525 x$41!67))) b_next!26429))))

(declare-fun b_next!26431 () Bool)

(assert (=> b!47885 (= b_next!26413 (or (and b!47883 (= lambda!7026 (x!17669 x$40!15))) b_next!26431))))

(declare-fun b_next!26433 () Bool)

(assert (=> b!47880 (= b_next!26415 (or (and b!47883 (= lambda!7026 (x!17669 thiss!6350))) b_next!26433))))

(declare-fun b_next!26435 () Bool)

(assert (=> b!47885 (= b_next!26417 (or (and b!47883 (= lambda!7026 (y!1526 x$40!15))) b_next!26435))))

(declare-fun b_next!26437 () Bool)

(assert (=> b!47889 (= b_next!26419 (or (and b!47883 (= lambda!7026 (x!17668 x$41!67))) b_next!26437))))

(declare-fun b_next!26439 () Bool)

(assert (=> b!47887 (= b_next!26421 (or (and b!47883 (= lambda!7026 (x!17669 prev!761))) b_next!26439))))

(declare-fun b_next!26441 () Bool)

(assert (=> b!47880 (= b_next!26423 (or (and b!47883 (= lambda!7026 (y!1526 thiss!6350))) b_next!26441))))

(declare-fun b_next!26443 () Bool)

(assert (=> b!47887 (= b_next!26425 (or (and b!47883 (= lambda!7026 (y!1526 prev!761))) b_next!26443))))

(assert (=> b!47883 true))

(assert (=> b!47883 true))

(assert (=> b!47883 true))

(declare-fun lambda!7027 () Int)

(declare-fun b_next!26445 () Bool)

(assert (=> b!47880 (= b_next!26391 (or (and b!47883 (= lambda!7027 (evidence!639 thiss!6350))) b_next!26445))))

(declare-fun b_next!26447 () Bool)

(assert (=> b!47885 (= b_next!26403 (or (and b!47883 (= lambda!7027 (evidence!639 x$40!15))) b_next!26447))))

(declare-fun b_next!26449 () Bool)

(assert (=> b!47887 (= b_next!26409 (or (and b!47883 (= lambda!7027 (evidence!639 prev!761))) b_next!26449))))

(declare-fun bs!18795 () Bool)

(declare-fun b!47884 () Bool)

(assert (= bs!18795 (and b!47884 b!47886)))

(declare-fun lambda!7028 () Int)

(assert (=> bs!18795 (not (= lambda!7028 lambda!7024))))

(declare-fun bs!18796 () Bool)

(assert (= bs!18796 (and b!47884 b!47883)))

(assert (=> bs!18796 (not (= lambda!7028 lambda!7026))))

(assert (=> b!47884 true))

(assert (=> b!47884 true))

(assert (=> b!47884 true))

(declare-fun b_next!26451 () Bool)

(assert (=> b!47889 (= b_next!26429 (or (and b!47884 (= lambda!7028 (y!1525 x$41!67))) b_next!26451))))

(declare-fun b_next!26453 () Bool)

(assert (=> b!47885 (= b_next!26431 (or (and b!47884 (= lambda!7028 (x!17669 x$40!15))) b_next!26453))))

(declare-fun b_next!26455 () Bool)

(assert (=> b!47880 (= b_next!26433 (or (and b!47884 (= lambda!7028 (x!17669 thiss!6350))) b_next!26455))))

(declare-fun b_next!26457 () Bool)

(assert (=> b!47885 (= b_next!26435 (or (and b!47884 (= lambda!7028 (y!1526 x$40!15))) b_next!26457))))

(declare-fun b_next!26459 () Bool)

(assert (=> b!47889 (= b_next!26437 (or (and b!47884 (= lambda!7028 (x!17668 x$41!67))) b_next!26459))))

(declare-fun b_next!26461 () Bool)

(assert (=> b!47887 (= b_next!26439 (or (and b!47884 (= lambda!7028 (x!17669 prev!761))) b_next!26461))))

(declare-fun b_next!26463 () Bool)

(assert (=> b!47880 (= b_next!26441 (or (and b!47884 (= lambda!7028 (y!1526 thiss!6350))) b_next!26463))))

(declare-fun b_next!26465 () Bool)

(assert (=> b!47887 (= b_next!26443 (or (and b!47884 (= lambda!7028 (y!1526 prev!761))) b_next!26465))))

(declare-fun lambda!7029 () Int)

(assert (=> bs!18795 (not (= lambda!7029 lambda!7024))))

(assert (=> bs!18796 (not (= lambda!7029 lambda!7026))))

(assert (=> b!47884 (not (= lambda!7029 lambda!7028))))

(assert (=> b!47884 true))

(assert (=> b!47884 true))

(assert (=> b!47884 true))

(declare-fun b_next!26467 () Bool)

(assert (=> b!47889 (= b_next!26451 (or (and b!47884 (= lambda!7029 (y!1525 x$41!67))) b_next!26467))))

(declare-fun b_next!26469 () Bool)

(assert (=> b!47885 (= b_next!26453 (or (and b!47884 (= lambda!7029 (x!17669 x$40!15))) b_next!26469))))

(declare-fun b_next!26471 () Bool)

(assert (=> b!47880 (= b_next!26455 (or (and b!47884 (= lambda!7029 (x!17669 thiss!6350))) b_next!26471))))

(declare-fun b_next!26473 () Bool)

(assert (=> b!47885 (= b_next!26457 (or (and b!47884 (= lambda!7029 (y!1526 x$40!15))) b_next!26473))))

(declare-fun b_next!26475 () Bool)

(assert (=> b!47889 (= b_next!26459 (or (and b!47884 (= lambda!7029 (x!17668 x$41!67))) b_next!26475))))

(declare-fun b_next!26477 () Bool)

(assert (=> b!47887 (= b_next!26461 (or (and b!47884 (= lambda!7029 (x!17669 prev!761))) b_next!26477))))

(declare-fun b_next!26479 () Bool)

(assert (=> b!47880 (= b_next!26463 (or (and b!47884 (= lambda!7029 (y!1526 thiss!6350))) b_next!26479))))

(declare-fun b_next!26481 () Bool)

(assert (=> b!47887 (= b_next!26465 (or (and b!47884 (= lambda!7029 (y!1526 prev!761))) b_next!26481))))

(declare-fun lambda!7030 () Int)

(assert (=> bs!18796 (not (= lambda!7030 lambda!7027))))

(assert (=> b!47884 true))

(assert (=> b!47884 true))

(assert (=> b!47884 true))

(declare-fun b_next!26483 () Bool)

(assert (=> b!47880 (= b_next!26445 (or (and b!47884 (= lambda!7030 (evidence!639 thiss!6350))) b_next!26483))))

(declare-fun b_next!26485 () Bool)

(assert (=> b!47885 (= b_next!26447 (or (and b!47884 (= lambda!7030 (evidence!639 x$40!15))) b_next!26485))))

(declare-fun b_next!26487 () Bool)

(assert (=> b!47887 (= b_next!26449 (or (and b!47884 (= lambda!7030 (evidence!639 prev!761))) b_next!26487))))

(declare-fun e!24960 () Bool)

(assert (=> b!47880 (= e!24960 (and tp!12840 tp!12844 tp!12846))))

(declare-fun b!47881 () Bool)

(declare-fun e!24959 () Bool)

(declare-fun dynLambda!811 (Int) Nat!224)

(assert (=> b!47881 (= e!24959 (not (= (dynLambda!811 (y!1526 prev!761)) (dynLambda!811 (x!17669 thiss!6350)))))))

(declare-fun b!47882 () Bool)

(declare-fun res!22448 () Bool)

(assert (=> b!47882 (=> (not res!22448) (not e!24959))))

(declare-fun keepEvidence!49 (Unit!656) Bool)

(declare-fun dynLambda!812 (Int) Unit!656)

(assert (=> b!47882 (= res!22448 (keepEvidence!49 (dynLambda!812 (evidence!639 prev!761))))))

(declare-fun res!22446 () Bool)

(assert (=> b!47883 (=> (not res!22446) (not e!24959))))

(assert (=> b!47883 (= res!22446 (= x$40!15 (RAEqEvidence!375 lambda!7026 lambda!7026 lambda!7027)))))

(declare-fun res!22445 () Bool)

(assert (=> b!47884 (=> (not res!22445) (not e!24959))))

(assert (=> b!47884 (= res!22445 (= thiss!6350 (RAEqEvidence!375 lambda!7028 lambda!7029 lambda!7030)))))

(declare-fun res!22444 () Bool)

(assert (=> start!6468 (=> (not res!22444) (not e!24959))))

(declare-fun n1!336 () Nat!224)

(assert (=> start!6468 (= res!22444 (not (is-Zero!208 n1!336)))))

(assert (=> start!6468 e!24959))

(assert (=> start!6468 true))

(declare-fun inv!835 (RAEqEvidence!374) Bool)

(assert (=> start!6468 (and (inv!835 thiss!6350) e!24960)))

(declare-fun e!24957 () Bool)

(declare-fun inv!836 (RAEqEvidence!372) Bool)

(assert (=> start!6468 (and (inv!836 x$41!67) e!24957)))

(declare-fun e!24958 () Bool)

(assert (=> start!6468 (and (inv!835 x$40!15) e!24958)))

(declare-fun e!24961 () Bool)

(assert (=> start!6468 (and (inv!835 prev!761) e!24961)))

(assert (=> b!47885 (= e!24958 (and tp!12842 tp!12841 tp!12848))))

(declare-fun res!22447 () Bool)

(assert (=> b!47886 (=> (not res!22447) (not e!24959))))

(assert (=> b!47886 (= res!22447 (= x$41!67 (RAEqEvidence!373 lambda!7024 lambda!7024 lambda!7025)))))

(assert (=> b!47887 (= e!24961 (and tp!12850 tp!12847 tp!12845))))

(declare-fun b!47888 () Bool)

(declare-fun res!22443 () Bool)

(assert (=> b!47888 (=> (not res!22443) (not e!24959))))

(assert (=> b!47888 (= res!22443 (= prev!761 x$40!15))))

(assert (=> b!47889 (= e!24957 (and tp!12839 tp!12843 tp!12849))))

(assert (= (and start!6468 res!22444) b!47886))

(assert (= (and b!47886 res!22447) b!47883))

(assert (= (and b!47883 res!22446) b!47884))

(assert (= (and b!47884 res!22445) b!47888))

(assert (= (and b!47888 res!22443) b!47882))

(assert (= (and b!47882 res!22448) b!47881))

(assert (= start!6468 b!47880))

(assert (= start!6468 b!47889))

(assert (= start!6468 b!47885))

(assert (= start!6468 b!47887))

(declare-fun b_lambda!12669 () Bool)

(assert (=> (not b_lambda!12669) (not b!47881)))

(declare-fun t!29449 () Bool)

(declare-fun tb!28627 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (y!1526 prev!761)) t!29449) tb!28627))

(declare-fun result!28903 () Bool)

(assert (=> tb!28627 (= result!28903 true)))

(assert (=> b!47881 t!29449))

(declare-fun b_and!38129 () Bool)

(assert (= b_and!38111 (and (=> t!29449 result!28903) b_and!38129)))

(declare-fun tb!28629 () Bool)

(declare-fun t!29451 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (y!1526 prev!761)) t!29451) tb!28629))

(declare-fun result!28905 () Bool)

(assert (=> tb!28629 (= result!28905 true)))

(assert (=> b!47881 t!29451))

(declare-fun b_and!38131 () Bool)

(assert (= b_and!38119 (and (=> t!29451 result!28905) b_and!38131)))

(declare-fun t!29453 () Bool)

(declare-fun tb!28631 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (y!1526 prev!761)) t!29453) tb!28631))

(declare-fun result!28907 () Bool)

(assert (=> tb!28631 (= result!28907 true)))

(assert (=> b!47881 t!29453))

(declare-fun b_and!38133 () Bool)

(assert (= b_and!38125 (and (=> t!29453 result!28907) b_and!38133)))

(declare-fun t!29455 () Bool)

(declare-fun tb!28633 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (y!1526 prev!761)) t!29455) tb!28633))

(declare-fun result!28909 () Bool)

(assert (=> tb!28633 (= result!28909 true)))

(assert (=> b!47881 t!29455))

(declare-fun b_and!38135 () Bool)

(assert (= b_and!38105 (and (=> t!29455 result!28909) b_and!38135)))

(declare-fun tb!28635 () Bool)

(declare-fun t!29457 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (y!1526 prev!761)) t!29457) tb!28635))

(declare-fun result!28911 () Bool)

(assert (=> tb!28635 (= result!28911 true)))

(assert (=> b!47881 t!29457))

(declare-fun b_and!38137 () Bool)

(assert (= b_and!38117 (and (=> t!29457 result!28911) b_and!38137)))

(declare-fun t!29459 () Bool)

(declare-fun tb!28637 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (y!1526 prev!761)) t!29459) tb!28637))

(declare-fun result!28913 () Bool)

(assert (=> tb!28637 (= result!28913 true)))

(assert (=> b!47881 t!29459))

(declare-fun b_and!38139 () Bool)

(assert (= b_and!38113 (and (=> t!29459 result!28913) b_and!38139)))

(declare-fun tb!28639 () Bool)

(declare-fun t!29461 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (y!1526 prev!761)) t!29461) tb!28639))

(declare-fun result!28915 () Bool)

(assert (=> tb!28639 (= result!28915 true)))

(assert (=> b!47881 t!29461))

(declare-fun b_and!38141 () Bool)

(assert (= b_and!38107 (and (=> t!29461 result!28915) b_and!38141)))

(declare-fun t!29463 () Bool)

(declare-fun tb!28641 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (y!1526 prev!761)) t!29463) tb!28641))

(declare-fun result!28917 () Bool)

(assert (=> tb!28641 (= result!28917 true)))

(assert (=> b!47881 t!29463))

(declare-fun b_and!38143 () Bool)

(assert (= b_and!38123 (and (=> t!29463 result!28917) b_and!38143)))

(declare-fun b_lambda!12671 () Bool)

(assert (=> (not b_lambda!12671) (not b!47881)))

(declare-fun t!29465 () Bool)

(declare-fun tb!28643 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (x!17669 thiss!6350)) t!29465) tb!28643))

(declare-fun result!28919 () Bool)

(assert (=> tb!28643 (= result!28919 true)))

(assert (=> b!47881 t!29465))

(declare-fun b_and!38145 () Bool)

(assert (= b_and!38129 (and (=> t!29465 result!28919) b_and!38145)))

(declare-fun t!29467 () Bool)

(declare-fun tb!28645 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (x!17669 thiss!6350)) t!29467) tb!28645))

(declare-fun result!28921 () Bool)

(assert (=> tb!28645 (= result!28921 true)))

(assert (=> b!47881 t!29467))

(declare-fun b_and!38147 () Bool)

(assert (= b_and!38139 (and (=> t!29467 result!28921) b_and!38147)))

(declare-fun t!29469 () Bool)

(declare-fun tb!28647 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (x!17669 thiss!6350)) t!29469) tb!28647))

(declare-fun result!28923 () Bool)

(assert (=> tb!28647 (= result!28923 true)))

(assert (=> b!47881 t!29469))

(declare-fun b_and!38149 () Bool)

(assert (= b_and!38131 (and (=> t!29469 result!28923) b_and!38149)))

(declare-fun t!29471 () Bool)

(declare-fun tb!28649 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (x!17669 thiss!6350)) t!29471) tb!28649))

(declare-fun result!28925 () Bool)

(assert (=> tb!28649 (= result!28925 true)))

(assert (=> b!47881 t!29471))

(declare-fun b_and!38151 () Bool)

(assert (= b_and!38141 (and (=> t!29471 result!28925) b_and!38151)))

(declare-fun tb!28651 () Bool)

(declare-fun t!29473 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (x!17669 thiss!6350)) t!29473) tb!28651))

(declare-fun result!28927 () Bool)

(assert (=> tb!28651 (= result!28927 true)))

(assert (=> b!47881 t!29473))

(declare-fun b_and!38153 () Bool)

(assert (= b_and!38133 (and (=> t!29473 result!28927) b_and!38153)))

(declare-fun t!29475 () Bool)

(declare-fun tb!28653 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (x!17669 thiss!6350)) t!29475) tb!28653))

(declare-fun result!28929 () Bool)

(assert (=> tb!28653 (= result!28929 true)))

(assert (=> b!47881 t!29475))

(declare-fun b_and!38155 () Bool)

(assert (= b_and!38135 (and (=> t!29475 result!28929) b_and!38155)))

(declare-fun tb!28655 () Bool)

(declare-fun t!29477 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (x!17669 thiss!6350)) t!29477) tb!28655))

(declare-fun result!28931 () Bool)

(assert (=> tb!28655 (= result!28931 true)))

(assert (=> b!47881 t!29477))

(declare-fun b_and!38157 () Bool)

(assert (= b_and!38137 (and (=> t!29477 result!28931) b_and!38157)))

(declare-fun tb!28657 () Bool)

(declare-fun t!29479 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (x!17669 thiss!6350)) t!29479) tb!28657))

(declare-fun result!28933 () Bool)

(assert (=> tb!28657 (= result!28933 true)))

(assert (=> b!47881 t!29479))

(declare-fun b_and!38159 () Bool)

(assert (= b_and!38143 (and (=> t!29479 result!28933) b_and!38159)))

(declare-fun b_lambda!12673 () Bool)

(assert (=> (not b_lambda!12673) (not b!47882)))

(declare-fun tb!28659 () Bool)

(declare-fun t!29481 () Bool)

(assert (=> (and b!47880 (= (evidence!639 thiss!6350) (evidence!639 prev!761)) t!29481) tb!28659))

(declare-fun result!28935 () Bool)

(assert (=> tb!28659 (= result!28935 true)))

(assert (=> b!47882 t!29481))

(declare-fun b_and!38161 () Bool)

(assert (= b_and!38109 (and (=> t!29481 result!28935) b_and!38161)))

(declare-fun tb!28661 () Bool)

(declare-fun t!29483 () Bool)

(assert (=> (and b!47885 (= (evidence!639 x$40!15) (evidence!639 prev!761)) t!29483) tb!28661))

(declare-fun result!28937 () Bool)

(assert (=> tb!28661 (= result!28937 true)))

(assert (=> b!47882 t!29483))

(declare-fun b_and!38163 () Bool)

(assert (= b_and!38121 (and (=> t!29483 result!28937) b_and!38163)))

(declare-fun t!29485 () Bool)

(declare-fun tb!28663 () Bool)

(assert (=> (and b!47887 (= (evidence!639 prev!761) (evidence!639 prev!761)) t!29485) tb!28663))

(declare-fun result!28939 () Bool)

(assert (=> tb!28663 (= result!28939 true)))

(assert (=> b!47882 t!29485))

(declare-fun b_and!38165 () Bool)

(assert (= b_and!38127 (and (=> t!29485 result!28939) b_and!38165)))

(declare-fun m!50811 () Bool)

(assert (=> b!47881 m!50811))

(declare-fun m!50813 () Bool)

(assert (=> b!47881 m!50813))

(declare-fun m!50815 () Bool)

(assert (=> b!47882 m!50815))

(assert (=> b!47882 m!50815))

(declare-fun m!50817 () Bool)

(assert (=> b!47882 m!50817))

(declare-fun m!50819 () Bool)

(assert (=> start!6468 m!50819))

(declare-fun m!50821 () Bool)

(assert (=> start!6468 m!50821))

(declare-fun m!50823 () Bool)

(assert (=> start!6468 m!50823))

(declare-fun m!50825 () Bool)

(assert (=> start!6468 m!50825))

(push 1)

(assert (not b_next!26467))

(assert b_and!38145)

(assert (not b_next!26485))

(assert (not start!6468))

(assert (not b_next!26473))

(assert (not b_next!26477))

(assert (not b_lambda!12669))

(assert (not b_next!26427))

(assert (not b_next!26471))

(assert (not b_next!26487))

(assert b_and!38157)

(assert (not b_lambda!12673))

(assert (not b_next!26469))

(assert b_and!38149)

(assert (not b!47882))

(assert b_and!38161)

(assert (not b_lambda!12671))

(assert b_and!38151)

(assert b_and!38163)

(assert b_and!38153)

(assert (not b!47886))

(assert (not b_next!26479))

(assert (not b_next!26475))

(assert (not b_next!26481))

(assert b_and!38165)

(assert b_and!38155)

(assert (not b_next!26483))

(assert b_and!38115)

(assert b_and!38159)

(assert b_and!38147)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26467))

(assert b_and!38145)

(assert (not b_next!26485))

(assert (not b_next!26473))

(assert (not b_next!26477))

(assert (not b_next!26427))

(assert (not b_next!26471))

(assert (not b_next!26487))

(assert b_and!38157)

(assert (not b_next!26469))

(assert b_and!38149)

(assert b_and!38161)

(assert b_and!38151)

(assert b_and!38163)

(assert b_and!38153)

(assert (not b_next!26479))

(assert (not b_next!26475))

(assert (not b_next!26481))

(assert b_and!38165)

(assert b_and!38155)

(assert (not b_next!26483))

(assert b_and!38115)

(assert b_and!38159)

(assert b_and!38147)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!12675 () Bool)

(assert (= b_lambda!12669 (or (and b!47885 b_free!5855 (= (y!1526 x$40!15) (y!1526 prev!761))) (and b!47883 (= lambda!7026 (y!1526 prev!761))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (y!1526 prev!761))) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (y!1526 prev!761))) (and b!47886 (= lambda!7024 (y!1526 prev!761))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (y!1526 prev!761))) (and b!47884 (= lambda!7029 (y!1526 prev!761))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (y!1526 prev!761))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (y!1526 prev!761))) (and b!47884 (= lambda!7028 (y!1526 prev!761))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (y!1526 prev!761))) (and b!47887 b_free!5861) b_lambda!12675)))

(declare-fun bs!18797 () Bool)

(declare-fun d!33956 () Bool)

(assert (= bs!18797 (and d!33956 b!47884)))

(declare-fun n2!352 () Nat!224)

(declare-fun n3!59 () Nat!224)

(declare-fun +!5 (Nat!224 Nat!224) Nat!224)

(declare-fun *!4 (Nat!224 Nat!224) Nat!224)

(assert (=> bs!18797 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(declare-fun m!50827 () Bool)

(assert (=> bs!18797 m!50827))

(assert (=> bs!18797 m!50827))

(declare-fun m!50829 () Bool)

(assert (=> bs!18797 m!50829))

(assert (=> bs!18797 m!50829))

(declare-fun m!50831 () Bool)

(assert (=> bs!18797 m!50831))

(declare-fun m!50833 () Bool)

(assert (=> bs!18797 m!50833))

(assert (=> bs!18797 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (y!1526 prev!761)) b!47881) d!33956))

(declare-fun bs!18798 () Bool)

(declare-fun d!33958 () Bool)

(assert (= bs!18798 (and d!33958 b!47884)))

(assert (=> bs!18798 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(declare-fun m!50835 () Bool)

(assert (=> bs!18798 m!50835))

(assert (=> bs!18798 m!50835))

(declare-fun m!50837 () Bool)

(assert (=> bs!18798 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (y!1526 prev!761)) b!47881) d!33958))

(declare-fun bs!18799 () Bool)

(declare-fun d!33960 () Bool)

(assert (= bs!18799 (and d!33960 b!47883)))

(assert (=> bs!18799 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18799 m!50831))

(declare-fun m!50839 () Bool)

(assert (=> bs!18799 m!50839))

(assert (=> bs!18799 m!50831))

(assert (=> bs!18799 m!50839))

(assert (=> bs!18799 m!50831))

(declare-fun m!50841 () Bool)

(assert (=> bs!18799 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (y!1526 prev!761)) b!47881) d!33960))

(declare-fun bs!18800 () Bool)

(declare-fun d!33962 () Bool)

(assert (= bs!18800 (and d!33962 b!47886)))

(assert (=> bs!18800 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18800 m!50831))

(assert (=> bs!18800 m!50831))

(declare-fun m!50843 () Bool)

(assert (=> bs!18800 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (y!1526 prev!761)) b!47881) d!33962))

(declare-fun b_lambda!12677 () Bool)

(assert (= b_lambda!12673 (or (and b!47884 (= lambda!7030 (evidence!639 prev!761))) (and b!47887 b_free!5863) (and b!47880 b_free!5845 (= (evidence!639 thiss!6350) (evidence!639 prev!761))) (and b!47885 b_free!5857 (= (evidence!639 x$40!15) (evidence!639 prev!761))) (and b!47883 (= lambda!7027 (evidence!639 prev!761))) b_lambda!12677)))

(declare-fun bs!18801 () Bool)

(declare-fun d!33964 () Bool)

(assert (= bs!18801 (and d!33964 b!47883)))

(declare-fun associative_times!0 (Nat!224 Nat!224 Nat!224) Unit!656)

(assert (=> bs!18801 (= (dynLambda!812 lambda!7027) (associative_times!0 (n!1361 n1!336) n2!352 n3!59))))

(declare-fun m!50845 () Bool)

(assert (=> bs!18801 m!50845))

(assert (=> (and b!47883 (= lambda!7027 (evidence!639 prev!761)) b!47882) d!33964))

(declare-fun bs!18802 () Bool)

(declare-fun d!33966 () Bool)

(assert (= bs!18802 (and d!33966 b!47884)))

(declare-fun commutative_plus!0 (Nat!224 Nat!224) Unit!656)

(assert (=> bs!18802 (= (dynLambda!812 lambda!7030) (commutative_plus!0 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18802 m!50827))

(assert (=> bs!18802 m!50827))

(assert (=> bs!18802 m!50829))

(assert (=> bs!18802 m!50829))

(assert (=> bs!18802 m!50831))

(declare-fun m!50847 () Bool)

(assert (=> bs!18802 m!50847))

(assert (=> bs!18802 m!50831))

(assert (=> (and b!47884 (= lambda!7030 (evidence!639 prev!761)) b!47882) d!33966))

(declare-fun b_lambda!12679 () Bool)

(assert (= b_lambda!12671 (or (and b!47883 (= lambda!7026 (x!17669 thiss!6350))) (and b!47880 b_free!5841) (and b!47884 (= lambda!7029 (x!17669 thiss!6350))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (x!17669 thiss!6350))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (x!17669 thiss!6350))) (and b!47884 (= lambda!7028 (x!17669 thiss!6350))) (and b!47886 (= lambda!7024 (x!17669 thiss!6350))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (x!17669 thiss!6350))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (x!17669 thiss!6350))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (x!17669 thiss!6350))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (x!17669 thiss!6350))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (x!17669 thiss!6350))) b_lambda!12679)))

(declare-fun bs!18803 () Bool)

(declare-fun d!33968 () Bool)

(assert (= bs!18803 (and d!33968 b!47886)))

(assert (=> bs!18803 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18803 m!50831))

(assert (=> bs!18803 m!50831))

(assert (=> bs!18803 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (x!17669 thiss!6350)) b!47881) d!33968))

(declare-fun bs!18804 () Bool)

(declare-fun d!33970 () Bool)

(assert (= bs!18804 (and d!33970 b!47883)))

(assert (=> bs!18804 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18804 m!50831))

(assert (=> bs!18804 m!50839))

(assert (=> bs!18804 m!50831))

(assert (=> bs!18804 m!50839))

(assert (=> bs!18804 m!50831))

(assert (=> bs!18804 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (x!17669 thiss!6350)) b!47881) d!33970))

(declare-fun bs!18805 () Bool)

(declare-fun d!33972 () Bool)

(assert (= bs!18805 (and d!33972 b!47884)))

(assert (=> bs!18805 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18805 m!50835))

(assert (=> bs!18805 m!50835))

(assert (=> bs!18805 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (x!17669 thiss!6350)) b!47881) d!33972))

(declare-fun bs!18806 () Bool)

(declare-fun d!33974 () Bool)

(assert (= bs!18806 (and d!33974 b!47884)))

(assert (=> bs!18806 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18806 m!50827))

(assert (=> bs!18806 m!50827))

(assert (=> bs!18806 m!50829))

(assert (=> bs!18806 m!50829))

(assert (=> bs!18806 m!50831))

(assert (=> bs!18806 m!50833))

(assert (=> bs!18806 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (x!17669 thiss!6350)) b!47881) d!33974))

(push 1)

(assert (not b_next!26467))

(assert b_and!38145)

(assert (not b_next!26485))

(assert (not b_lambda!12675))

(assert (not start!6468))

(assert (not b_next!26473))

(assert (not b_next!26477))

(assert (not b_lambda!12677))

(assert (not b_next!26427))

(assert (not b_next!26471))

(assert (not bs!18798))

(assert (not bs!18806))

(assert (not b_next!26487))

(assert (not bs!18805))

(assert b_and!38157)

(assert (not b_next!26469))

(assert b_and!38149)

(assert (not b!47882))

(assert b_and!38161)

(assert (not bs!18801))

(assert (not bs!18803))

(assert (not bs!18800))

(assert b_and!38151)

(assert (not bs!18802))

(assert b_and!38163)

(assert b_and!38153)

(assert (not b!47886))

(assert (not bs!18804))

(assert (not bs!18799))

(assert (not b_next!26479))

(assert (not b_next!26475))

(assert (not b_next!26481))

(assert b_and!38165)

(assert (not b_lambda!12679))

(assert b_and!38155)

(assert (not b_next!26483))

(assert (not bs!18797))

(assert b_and!38115)

(assert b_and!38159)

(assert b_and!38147)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26467))

(assert b_and!38145)

(assert (not b_next!26485))

(assert (not b_next!26473))

(assert (not b_next!26477))

(assert (not b_next!26427))

(assert (not b_next!26471))

(assert (not b_next!26487))

(assert b_and!38157)

(assert (not b_next!26469))

(assert b_and!38149)

(assert b_and!38161)

(assert b_and!38151)

(assert b_and!38163)

(assert b_and!38153)

(assert (not b_next!26479))

(assert (not b_next!26475))

(assert (not b_next!26481))

(assert b_and!38165)

(assert b_and!38155)

(assert (not b_next!26483))

(assert b_and!38115)

(assert b_and!38159)

(assert b_and!38147)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33976 () Bool)

(assert (=> d!33976 (= (keepEvidence!49 (dynLambda!812 (evidence!639 prev!761))) true)))

(assert (=> b!47882 d!33976))

(declare-fun d!33978 () Bool)

(declare-fun c!10096 () Bool)

(assert (=> d!33978 (= c!10096 (is-Zero!208 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59)))))

(declare-fun e!24964 () Nat!224)

(assert (=> d!33978 (= (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)) e!24964)))

(declare-fun b!47898 () Bool)

(assert (=> b!47898 (= e!24964 (*!4 n2!352 n3!59))))

(declare-fun b!47899 () Bool)

(assert (=> b!47899 (= e!24964 (Succ!205 (+!5 (n!1361 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59)) (*!4 n2!352 n3!59))))))

(assert (= (and d!33978 c!10096) b!47898))

(assert (= (and d!33978 (not c!10096)) b!47899))

(assert (=> b!47899 m!50831))

(declare-fun m!50849 () Bool)

(assert (=> b!47899 m!50849))

(assert (=> bs!18797 d!33978))

(declare-fun d!33980 () Bool)

(declare-fun c!10099 () Bool)

(assert (=> d!33980 (= c!10099 (is-Zero!208 (*!4 (n!1361 n1!336) n2!352)))))

(declare-fun e!24967 () Nat!224)

(assert (=> d!33980 (= (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) e!24967)))

(declare-fun b!47904 () Bool)

(assert (=> b!47904 (= e!24967 Zero!208)))

(declare-fun b!47905 () Bool)

(assert (=> b!47905 (= e!24967 (+!5 (*!4 (n!1361 (*!4 (n!1361 n1!336) n2!352)) n3!59) n3!59))))

(assert (= (and d!33980 c!10099) b!47904))

(assert (= (and d!33980 (not c!10099)) b!47905))

(declare-fun m!50851 () Bool)

(assert (=> b!47905 m!50851))

(assert (=> b!47905 m!50851))

(declare-fun m!50853 () Bool)

(assert (=> b!47905 m!50853))

(assert (=> bs!18797 d!33980))

(declare-fun d!33982 () Bool)

(declare-fun c!10100 () Bool)

(assert (=> d!33982 (= c!10100 (is-Zero!208 (n!1361 n1!336)))))

(declare-fun e!24968 () Nat!224)

(assert (=> d!33982 (= (*!4 (n!1361 n1!336) n2!352) e!24968)))

(declare-fun b!47906 () Bool)

(assert (=> b!47906 (= e!24968 Zero!208)))

(declare-fun b!47907 () Bool)

(assert (=> b!47907 (= e!24968 (+!5 (*!4 (n!1361 (n!1361 n1!336)) n2!352) n2!352))))

(assert (= (and d!33982 c!10100) b!47906))

(assert (= (and d!33982 (not c!10100)) b!47907))

(declare-fun m!50855 () Bool)

(assert (=> b!47907 m!50855))

(assert (=> b!47907 m!50855))

(declare-fun m!50857 () Bool)

(assert (=> b!47907 m!50857))

(assert (=> bs!18797 d!33982))

(declare-fun d!33984 () Bool)

(declare-fun c!10101 () Bool)

(assert (=> d!33984 (= c!10101 (is-Zero!208 n2!352))))

(declare-fun e!24969 () Nat!224)

(assert (=> d!33984 (= (*!4 n2!352 n3!59) e!24969)))

(declare-fun b!47908 () Bool)

(assert (=> b!47908 (= e!24969 Zero!208)))

(declare-fun b!47909 () Bool)

(assert (=> b!47909 (= e!24969 (+!5 (*!4 (n!1361 n2!352) n3!59) n3!59))))

(assert (= (and d!33984 c!10101) b!47908))

(assert (= (and d!33984 (not c!10101)) b!47909))

(declare-fun m!50859 () Bool)

(assert (=> b!47909 m!50859))

(assert (=> b!47909 m!50859))

(declare-fun m!50861 () Bool)

(assert (=> b!47909 m!50861))

(assert (=> bs!18797 d!33984))

(declare-fun d!33986 () Bool)

(declare-fun c!10102 () Bool)

(assert (=> d!33986 (= c!10102 (is-Zero!208 (*!4 n1!336 n2!352)))))

(declare-fun e!24970 () Nat!224)

(assert (=> d!33986 (= (*!4 (*!4 n1!336 n2!352) n3!59) e!24970)))

(declare-fun b!47910 () Bool)

(assert (=> b!47910 (= e!24970 Zero!208)))

(declare-fun b!47911 () Bool)

(assert (=> b!47911 (= e!24970 (+!5 (*!4 (n!1361 (*!4 n1!336 n2!352)) n3!59) n3!59))))

(assert (= (and d!33986 c!10102) b!47910))

(assert (= (and d!33986 (not c!10102)) b!47911))

(declare-fun m!50863 () Bool)

(assert (=> b!47911 m!50863))

(assert (=> b!47911 m!50863))

(declare-fun m!50865 () Bool)

(assert (=> b!47911 m!50865))

(assert (=> bs!18798 d!33986))

(declare-fun d!33988 () Bool)

(declare-fun c!10103 () Bool)

(assert (=> d!33988 (= c!10103 (is-Zero!208 n1!336))))

(declare-fun e!24971 () Nat!224)

(assert (=> d!33988 (= (*!4 n1!336 n2!352) e!24971)))

(declare-fun b!47912 () Bool)

(assert (=> b!47912 (= e!24971 Zero!208)))

(declare-fun b!47913 () Bool)

(assert (=> b!47913 (= e!24971 (+!5 (*!4 (n!1361 n1!336) n2!352) n2!352))))

(assert (= (and d!33988 c!10103) b!47912))

(assert (= (and d!33988 (not c!10103)) b!47913))

(assert (=> b!47913 m!50827))

(assert (=> b!47913 m!50827))

(declare-fun m!50867 () Bool)

(assert (=> b!47913 m!50867))

(assert (=> bs!18798 d!33988))

(declare-fun d!33990 () Bool)

(declare-fun c!10104 () Bool)

(assert (=> d!33990 (= c!10104 (is-Zero!208 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59))))))

(declare-fun e!24972 () Nat!224)

(assert (=> d!33990 (= (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)) e!24972)))

(declare-fun b!47914 () Bool)

(assert (=> b!47914 (= e!24972 (*!4 n2!352 n3!59))))

(declare-fun b!47915 () Bool)

(assert (=> b!47915 (= e!24972 (Succ!205 (+!5 (n!1361 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59))) (*!4 n2!352 n3!59))))))

(assert (= (and d!33990 c!10104) b!47914))

(assert (= (and d!33990 (not c!10104)) b!47915))

(assert (=> b!47915 m!50831))

(declare-fun m!50869 () Bool)

(assert (=> b!47915 m!50869))

(assert (=> bs!18804 d!33990))

(declare-fun d!33992 () Bool)

(declare-fun c!10105 () Bool)

(assert (=> d!33992 (= c!10105 (is-Zero!208 (n!1361 n1!336)))))

(declare-fun e!24973 () Nat!224)

(assert (=> d!33992 (= (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) e!24973)))

(declare-fun b!47916 () Bool)

(assert (=> b!47916 (= e!24973 Zero!208)))

(declare-fun b!47917 () Bool)

(assert (=> b!47917 (= e!24973 (+!5 (*!4 (n!1361 (n!1361 n1!336)) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!33992 c!10105) b!47916))

(assert (= (and d!33992 (not c!10105)) b!47917))

(assert (=> b!47917 m!50831))

(declare-fun m!50871 () Bool)

(assert (=> b!47917 m!50871))

(assert (=> b!47917 m!50871))

(assert (=> b!47917 m!50831))

(declare-fun m!50873 () Bool)

(assert (=> b!47917 m!50873))

(assert (=> bs!18804 d!33992))

(assert (=> bs!18804 d!33984))

(assert (=> bs!18806 d!33978))

(assert (=> bs!18806 d!33980))

(assert (=> bs!18806 d!33982))

(assert (=> bs!18806 d!33984))

(assert (=> bs!18805 d!33986))

(assert (=> bs!18805 d!33988))

(declare-fun d!33994 () Bool)

(assert (=> d!33994 (= (inv!835 thiss!6350) (= (dynLambda!811 (x!17669 thiss!6350)) (dynLambda!811 (y!1526 thiss!6350))))))

(declare-fun b_lambda!12681 () Bool)

(assert (=> (not b_lambda!12681) (not d!33994)))

(assert (=> d!33994 t!29467))

(declare-fun b_and!38167 () Bool)

(assert (= b_and!38147 (and (=> t!29467 result!28921) b_and!38167)))

(assert (=> d!33994 t!29469))

(declare-fun b_and!38169 () Bool)

(assert (= b_and!38149 (and (=> t!29469 result!28923) b_and!38169)))

(assert (=> d!33994 t!29471))

(declare-fun b_and!38171 () Bool)

(assert (= b_and!38151 (and (=> t!29471 result!28925) b_and!38171)))

(assert (=> d!33994 t!29477))

(declare-fun b_and!38173 () Bool)

(assert (= b_and!38157 (and (=> t!29477 result!28931) b_and!38173)))

(assert (=> d!33994 t!29465))

(declare-fun b_and!38175 () Bool)

(assert (= b_and!38145 (and (=> t!29465 result!28919) b_and!38175)))

(assert (=> d!33994 t!29475))

(declare-fun b_and!38177 () Bool)

(assert (= b_and!38155 (and (=> t!29475 result!28929) b_and!38177)))

(assert (=> d!33994 t!29473))

(declare-fun b_and!38179 () Bool)

(assert (= b_and!38153 (and (=> t!29473 result!28927) b_and!38179)))

(assert (=> d!33994 t!29479))

(declare-fun b_and!38181 () Bool)

(assert (= b_and!38159 (and (=> t!29479 result!28933) b_and!38181)))

(declare-fun b_lambda!12683 () Bool)

(assert (=> (not b_lambda!12683) (not d!33994)))

(declare-fun tb!28665 () Bool)

(declare-fun t!29487 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (y!1526 thiss!6350)) t!29487) tb!28665))

(declare-fun result!28941 () Bool)

(assert (=> tb!28665 (= result!28941 true)))

(assert (=> d!33994 t!29487))

(declare-fun b_and!38183 () Bool)

(assert (= b_and!38175 (and (=> t!29487 result!28941) b_and!38183)))

(declare-fun t!29489 () Bool)

(declare-fun tb!28667 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (y!1526 thiss!6350)) t!29489) tb!28667))

(declare-fun result!28943 () Bool)

(assert (=> tb!28667 (= result!28943 true)))

(assert (=> d!33994 t!29489))

(declare-fun b_and!38185 () Bool)

(assert (= b_and!38169 (and (=> t!29489 result!28943) b_and!38185)))

(declare-fun t!29491 () Bool)

(declare-fun tb!28669 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (y!1526 thiss!6350)) t!29491) tb!28669))

(declare-fun result!28945 () Bool)

(assert (=> tb!28669 (= result!28945 true)))

(assert (=> d!33994 t!29491))

(declare-fun b_and!38187 () Bool)

(assert (= b_and!38171 (and (=> t!29491 result!28945) b_and!38187)))

(declare-fun t!29493 () Bool)

(declare-fun tb!28671 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (y!1526 thiss!6350)) t!29493) tb!28671))

(declare-fun result!28947 () Bool)

(assert (=> tb!28671 (= result!28947 true)))

(assert (=> d!33994 t!29493))

(declare-fun b_and!38189 () Bool)

(assert (= b_and!38181 (and (=> t!29493 result!28947) b_and!38189)))

(declare-fun t!29495 () Bool)

(declare-fun tb!28673 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (y!1526 thiss!6350)) t!29495) tb!28673))

(declare-fun result!28949 () Bool)

(assert (=> tb!28673 (= result!28949 true)))

(assert (=> d!33994 t!29495))

(declare-fun b_and!38191 () Bool)

(assert (= b_and!38173 (and (=> t!29495 result!28949) b_and!38191)))

(declare-fun t!29497 () Bool)

(declare-fun tb!28675 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (y!1526 thiss!6350)) t!29497) tb!28675))

(declare-fun result!28951 () Bool)

(assert (=> tb!28675 (= result!28951 true)))

(assert (=> d!33994 t!29497))

(declare-fun b_and!38193 () Bool)

(assert (= b_and!38179 (and (=> t!29497 result!28951) b_and!38193)))

(declare-fun tb!28677 () Bool)

(declare-fun t!29499 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (y!1526 thiss!6350)) t!29499) tb!28677))

(declare-fun result!28953 () Bool)

(assert (=> tb!28677 (= result!28953 true)))

(assert (=> d!33994 t!29499))

(declare-fun b_and!38195 () Bool)

(assert (= b_and!38167 (and (=> t!29499 result!28953) b_and!38195)))

(declare-fun t!29501 () Bool)

(declare-fun tb!28679 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (y!1526 thiss!6350)) t!29501) tb!28679))

(declare-fun result!28955 () Bool)

(assert (=> tb!28679 (= result!28955 true)))

(assert (=> d!33994 t!29501))

(declare-fun b_and!38197 () Bool)

(assert (= b_and!38177 (and (=> t!29501 result!28955) b_and!38197)))

(assert (=> d!33994 m!50813))

(declare-fun m!50875 () Bool)

(assert (=> d!33994 m!50875))

(assert (=> start!6468 d!33994))

(declare-fun d!33996 () Bool)

(assert (=> d!33996 (= (inv!836 x$41!67) (= (dynLambda!811 (x!17668 x$41!67)) (dynLambda!811 (y!1525 x$41!67))))))

(declare-fun b_lambda!12685 () Bool)

(assert (=> (not b_lambda!12685) (not d!33996)))

(declare-fun t!29503 () Bool)

(declare-fun tb!28681 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (x!17668 x$41!67)) t!29503) tb!28681))

(declare-fun result!28957 () Bool)

(assert (=> tb!28681 (= result!28957 true)))

(assert (=> d!33996 t!29503))

(declare-fun b_and!38199 () Bool)

(assert (= b_and!38183 (and (=> t!29503 result!28957) b_and!38199)))

(declare-fun t!29505 () Bool)

(declare-fun tb!28683 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (x!17668 x$41!67)) t!29505) tb!28683))

(declare-fun result!28959 () Bool)

(assert (=> tb!28683 (= result!28959 true)))

(assert (=> d!33996 t!29505))

(declare-fun b_and!38201 () Bool)

(assert (= b_and!38185 (and (=> t!29505 result!28959) b_and!38201)))

(declare-fun t!29507 () Bool)

(declare-fun tb!28685 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (x!17668 x$41!67)) t!29507) tb!28685))

(declare-fun result!28961 () Bool)

(assert (=> tb!28685 (= result!28961 true)))

(assert (=> d!33996 t!29507))

(declare-fun b_and!38203 () Bool)

(assert (= b_and!38197 (and (=> t!29507 result!28961) b_and!38203)))

(declare-fun tb!28687 () Bool)

(declare-fun t!29509 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (x!17668 x$41!67)) t!29509) tb!28687))

(declare-fun result!28963 () Bool)

(assert (=> tb!28687 (= result!28963 true)))

(assert (=> d!33996 t!29509))

(declare-fun b_and!38205 () Bool)

(assert (= b_and!38187 (and (=> t!29509 result!28963) b_and!38205)))

(declare-fun t!29511 () Bool)

(declare-fun tb!28689 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (x!17668 x$41!67)) t!29511) tb!28689))

(declare-fun result!28965 () Bool)

(assert (=> tb!28689 (= result!28965 true)))

(assert (=> d!33996 t!29511))

(declare-fun b_and!38207 () Bool)

(assert (= b_and!38189 (and (=> t!29511 result!28965) b_and!38207)))

(declare-fun t!29513 () Bool)

(declare-fun tb!28691 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (x!17668 x$41!67)) t!29513) tb!28691))

(declare-fun result!28967 () Bool)

(assert (=> tb!28691 (= result!28967 true)))

(assert (=> d!33996 t!29513))

(declare-fun b_and!38209 () Bool)

(assert (= b_and!38193 (and (=> t!29513 result!28967) b_and!38209)))

(declare-fun t!29515 () Bool)

(declare-fun tb!28693 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (x!17668 x$41!67)) t!29515) tb!28693))

(declare-fun result!28969 () Bool)

(assert (=> tb!28693 (= result!28969 true)))

(assert (=> d!33996 t!29515))

(declare-fun b_and!38211 () Bool)

(assert (= b_and!38195 (and (=> t!29515 result!28969) b_and!38211)))

(declare-fun tb!28695 () Bool)

(declare-fun t!29517 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (x!17668 x$41!67)) t!29517) tb!28695))

(declare-fun result!28971 () Bool)

(assert (=> tb!28695 (= result!28971 true)))

(assert (=> d!33996 t!29517))

(declare-fun b_and!38213 () Bool)

(assert (= b_and!38191 (and (=> t!29517 result!28971) b_and!38213)))

(declare-fun b_lambda!12687 () Bool)

(assert (=> (not b_lambda!12687) (not d!33996)))

(declare-fun t!29519 () Bool)

(declare-fun tb!28697 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (y!1525 x$41!67)) t!29519) tb!28697))

(declare-fun result!28973 () Bool)

(assert (=> tb!28697 (= result!28973 true)))

(assert (=> d!33996 t!29519))

(declare-fun b_and!38215 () Bool)

(assert (= b_and!38201 (and (=> t!29519 result!28973) b_and!38215)))

(declare-fun tb!28699 () Bool)

(declare-fun t!29521 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (y!1525 x$41!67)) t!29521) tb!28699))

(declare-fun result!28975 () Bool)

(assert (=> tb!28699 (= result!28975 true)))

(assert (=> d!33996 t!29521))

(declare-fun b_and!38217 () Bool)

(assert (= b_and!38213 (and (=> t!29521 result!28975) b_and!38217)))

(declare-fun t!29523 () Bool)

(declare-fun tb!28701 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (y!1525 x$41!67)) t!29523) tb!28701))

(declare-fun result!28977 () Bool)

(assert (=> tb!28701 (= result!28977 true)))

(assert (=> d!33996 t!29523))

(declare-fun b_and!38219 () Bool)

(assert (= b_and!38203 (and (=> t!29523 result!28977) b_and!38219)))

(declare-fun t!29525 () Bool)

(declare-fun tb!28703 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (y!1525 x$41!67)) t!29525) tb!28703))

(declare-fun result!28979 () Bool)

(assert (=> tb!28703 (= result!28979 true)))

(assert (=> d!33996 t!29525))

(declare-fun b_and!38221 () Bool)

(assert (= b_and!38211 (and (=> t!29525 result!28979) b_and!38221)))

(declare-fun tb!28705 () Bool)

(declare-fun t!29527 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (y!1525 x$41!67)) t!29527) tb!28705))

(declare-fun result!28981 () Bool)

(assert (=> tb!28705 (= result!28981 true)))

(assert (=> d!33996 t!29527))

(declare-fun b_and!38223 () Bool)

(assert (= b_and!38207 (and (=> t!29527 result!28981) b_and!38223)))

(declare-fun tb!28707 () Bool)

(declare-fun t!29529 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (y!1525 x$41!67)) t!29529) tb!28707))

(declare-fun result!28983 () Bool)

(assert (=> tb!28707 (= result!28983 true)))

(assert (=> d!33996 t!29529))

(declare-fun b_and!38225 () Bool)

(assert (= b_and!38205 (and (=> t!29529 result!28983) b_and!38225)))

(declare-fun t!29531 () Bool)

(declare-fun tb!28709 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (y!1525 x$41!67)) t!29531) tb!28709))

(declare-fun result!28985 () Bool)

(assert (=> tb!28709 (= result!28985 true)))

(assert (=> d!33996 t!29531))

(declare-fun b_and!38227 () Bool)

(assert (= b_and!38199 (and (=> t!29531 result!28985) b_and!38227)))

(declare-fun tb!28711 () Bool)

(declare-fun t!29533 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (y!1525 x$41!67)) t!29533) tb!28711))

(declare-fun result!28987 () Bool)

(assert (=> tb!28711 (= result!28987 true)))

(assert (=> d!33996 t!29533))

(declare-fun b_and!38229 () Bool)

(assert (= b_and!38209 (and (=> t!29533 result!28987) b_and!38229)))

(declare-fun m!50877 () Bool)

(assert (=> d!33996 m!50877))

(declare-fun m!50879 () Bool)

(assert (=> d!33996 m!50879))

(assert (=> start!6468 d!33996))

(declare-fun d!33998 () Bool)

(assert (=> d!33998 (= (inv!835 x$40!15) (= (dynLambda!811 (x!17669 x$40!15)) (dynLambda!811 (y!1526 x$40!15))))))

(declare-fun b_lambda!12689 () Bool)

(assert (=> (not b_lambda!12689) (not d!33998)))

(declare-fun t!29535 () Bool)

(declare-fun tb!28713 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (x!17669 x$40!15)) t!29535) tb!28713))

(declare-fun result!28989 () Bool)

(assert (=> tb!28713 (= result!28989 true)))

(assert (=> d!33998 t!29535))

(declare-fun b_and!38231 () Bool)

(assert (= b_and!38217 (and (=> t!29535 result!28989) b_and!38231)))

(declare-fun tb!28715 () Bool)

(declare-fun t!29537 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (x!17669 x$40!15)) t!29537) tb!28715))

(declare-fun result!28991 () Bool)

(assert (=> tb!28715 (= result!28991 true)))

(assert (=> d!33998 t!29537))

(declare-fun b_and!38233 () Bool)

(assert (= b_and!38219 (and (=> t!29537 result!28991) b_and!38233)))

(declare-fun tb!28717 () Bool)

(declare-fun t!29539 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (x!17669 x$40!15)) t!29539) tb!28717))

(declare-fun result!28993 () Bool)

(assert (=> tb!28717 (= result!28993 true)))

(assert (=> d!33998 t!29539))

(declare-fun b_and!38235 () Bool)

(assert (= b_and!38227 (and (=> t!29539 result!28993) b_and!38235)))

(declare-fun tb!28719 () Bool)

(declare-fun t!29541 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (x!17669 x$40!15)) t!29541) tb!28719))

(declare-fun result!28995 () Bool)

(assert (=> tb!28719 (= result!28995 true)))

(assert (=> d!33998 t!29541))

(declare-fun b_and!38237 () Bool)

(assert (= b_and!38229 (and (=> t!29541 result!28995) b_and!38237)))

(declare-fun t!29543 () Bool)

(declare-fun tb!28721 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (x!17669 x$40!15)) t!29543) tb!28721))

(declare-fun result!28997 () Bool)

(assert (=> tb!28721 (= result!28997 true)))

(assert (=> d!33998 t!29543))

(declare-fun b_and!38239 () Bool)

(assert (= b_and!38225 (and (=> t!29543 result!28997) b_and!38239)))

(declare-fun t!29545 () Bool)

(declare-fun tb!28723 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (x!17669 x$40!15)) t!29545) tb!28723))

(declare-fun result!28999 () Bool)

(assert (=> tb!28723 (= result!28999 true)))

(assert (=> d!33998 t!29545))

(declare-fun b_and!38241 () Bool)

(assert (= b_and!38223 (and (=> t!29545 result!28999) b_and!38241)))

(declare-fun tb!28725 () Bool)

(declare-fun t!29547 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (x!17669 x$40!15)) t!29547) tb!28725))

(declare-fun result!29001 () Bool)

(assert (=> tb!28725 (= result!29001 true)))

(assert (=> d!33998 t!29547))

(declare-fun b_and!38243 () Bool)

(assert (= b_and!38221 (and (=> t!29547 result!29001) b_and!38243)))

(declare-fun t!29549 () Bool)

(declare-fun tb!28727 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (x!17669 x$40!15)) t!29549) tb!28727))

(declare-fun result!29003 () Bool)

(assert (=> tb!28727 (= result!29003 true)))

(assert (=> d!33998 t!29549))

(declare-fun b_and!38245 () Bool)

(assert (= b_and!38215 (and (=> t!29549 result!29003) b_and!38245)))

(declare-fun b_lambda!12691 () Bool)

(assert (=> (not b_lambda!12691) (not d!33998)))

(declare-fun t!29551 () Bool)

(declare-fun tb!28729 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (y!1526 x$40!15)) t!29551) tb!28729))

(declare-fun result!29005 () Bool)

(assert (=> tb!28729 (= result!29005 true)))

(assert (=> d!33998 t!29551))

(declare-fun b_and!38247 () Bool)

(assert (= b_and!38241 (and (=> t!29551 result!29005) b_and!38247)))

(declare-fun t!29553 () Bool)

(declare-fun tb!28731 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (y!1526 x$40!15)) t!29553) tb!28731))

(declare-fun result!29007 () Bool)

(assert (=> tb!28731 (= result!29007 true)))

(assert (=> d!33998 t!29553))

(declare-fun b_and!38249 () Bool)

(assert (= b_and!38239 (and (=> t!29553 result!29007) b_and!38249)))

(declare-fun t!29555 () Bool)

(declare-fun tb!28733 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (y!1526 x$40!15)) t!29555) tb!28733))

(declare-fun result!29009 () Bool)

(assert (=> tb!28733 (= result!29009 true)))

(assert (=> d!33998 t!29555))

(declare-fun b_and!38251 () Bool)

(assert (= b_and!38245 (and (=> t!29555 result!29009) b_and!38251)))

(declare-fun t!29557 () Bool)

(declare-fun tb!28735 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (y!1526 x$40!15)) t!29557) tb!28735))

(declare-fun result!29011 () Bool)

(assert (=> tb!28735 (= result!29011 true)))

(assert (=> d!33998 t!29557))

(declare-fun b_and!38253 () Bool)

(assert (= b_and!38231 (and (=> t!29557 result!29011) b_and!38253)))

(declare-fun tb!28737 () Bool)

(declare-fun t!29559 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (y!1526 x$40!15)) t!29559) tb!28737))

(declare-fun result!29013 () Bool)

(assert (=> tb!28737 (= result!29013 true)))

(assert (=> d!33998 t!29559))

(declare-fun b_and!38255 () Bool)

(assert (= b_and!38243 (and (=> t!29559 result!29013) b_and!38255)))

(declare-fun t!29561 () Bool)

(declare-fun tb!28739 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (y!1526 x$40!15)) t!29561) tb!28739))

(declare-fun result!29015 () Bool)

(assert (=> tb!28739 (= result!29015 true)))

(assert (=> d!33998 t!29561))

(declare-fun b_and!38257 () Bool)

(assert (= b_and!38235 (and (=> t!29561 result!29015) b_and!38257)))

(declare-fun tb!28741 () Bool)

(declare-fun t!29563 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (y!1526 x$40!15)) t!29563) tb!28741))

(declare-fun result!29017 () Bool)

(assert (=> tb!28741 (= result!29017 true)))

(assert (=> d!33998 t!29563))

(declare-fun b_and!38259 () Bool)

(assert (= b_and!38233 (and (=> t!29563 result!29017) b_and!38259)))

(declare-fun t!29565 () Bool)

(declare-fun tb!28743 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (y!1526 x$40!15)) t!29565) tb!28743))

(declare-fun result!29019 () Bool)

(assert (=> tb!28743 (= result!29019 true)))

(assert (=> d!33998 t!29565))

(declare-fun b_and!38261 () Bool)

(assert (= b_and!38237 (and (=> t!29565 result!29019) b_and!38261)))

(declare-fun m!50881 () Bool)

(assert (=> d!33998 m!50881))

(declare-fun m!50883 () Bool)

(assert (=> d!33998 m!50883))

(assert (=> start!6468 d!33998))

(declare-fun d!34000 () Bool)

(assert (=> d!34000 (= (inv!835 prev!761) (= (dynLambda!811 (x!17669 prev!761)) (dynLambda!811 (y!1526 prev!761))))))

(declare-fun b_lambda!12693 () Bool)

(assert (=> (not b_lambda!12693) (not d!34000)))

(declare-fun t!29567 () Bool)

(declare-fun tb!28745 () Bool)

(assert (=> (and b!47885 (= (x!17669 x$40!15) (x!17669 prev!761)) t!29567) tb!28745))

(declare-fun result!29021 () Bool)

(assert (=> tb!28745 (= result!29021 true)))

(assert (=> d!34000 t!29567))

(declare-fun b_and!38263 () Bool)

(assert (= b_and!38253 (and (=> t!29567 result!29021) b_and!38263)))

(declare-fun t!29569 () Bool)

(declare-fun tb!28747 () Bool)

(assert (=> (and b!47887 (= (y!1526 prev!761) (x!17669 prev!761)) t!29569) tb!28747))

(declare-fun result!29023 () Bool)

(assert (=> tb!28747 (= result!29023 true)))

(assert (=> d!34000 t!29569))

(declare-fun b_and!38265 () Bool)

(assert (= b_and!38261 (and (=> t!29569 result!29023) b_and!38265)))

(declare-fun t!29571 () Bool)

(declare-fun tb!28749 () Bool)

(assert (=> (and b!47889 (= (y!1525 x$41!67) (x!17669 prev!761)) t!29571) tb!28749))

(declare-fun result!29025 () Bool)

(assert (=> tb!28749 (= result!29025 true)))

(assert (=> d!34000 t!29571))

(declare-fun b_and!38267 () Bool)

(assert (= b_and!38255 (and (=> t!29571 result!29025) b_and!38267)))

(declare-fun t!29573 () Bool)

(declare-fun tb!28751 () Bool)

(assert (=> (and b!47880 (= (x!17669 thiss!6350) (x!17669 prev!761)) t!29573) tb!28751))

(declare-fun result!29027 () Bool)

(assert (=> tb!28751 (= result!29027 true)))

(assert (=> d!34000 t!29573))

(declare-fun b_and!38269 () Bool)

(assert (= b_and!38259 (and (=> t!29573 result!29027) b_and!38269)))

(declare-fun t!29575 () Bool)

(declare-fun tb!28753 () Bool)

(assert (=> (and b!47885 (= (y!1526 x$40!15) (x!17669 prev!761)) t!29575) tb!28753))

(declare-fun result!29029 () Bool)

(assert (=> tb!28753 (= result!29029 true)))

(assert (=> d!34000 t!29575))

(declare-fun b_and!38271 () Bool)

(assert (= b_and!38251 (and (=> t!29575 result!29029) b_and!38271)))

(declare-fun t!29577 () Bool)

(declare-fun tb!28755 () Bool)

(assert (=> (and b!47887 (= (x!17669 prev!761) (x!17669 prev!761)) t!29577) tb!28755))

(declare-fun result!29031 () Bool)

(assert (=> tb!28755 (= result!29031 true)))

(assert (=> d!34000 t!29577))

(declare-fun b_and!38273 () Bool)

(assert (= b_and!38247 (and (=> t!29577 result!29031) b_and!38273)))

(declare-fun tb!28757 () Bool)

(declare-fun t!29579 () Bool)

(assert (=> (and b!47889 (= (x!17668 x$41!67) (x!17669 prev!761)) t!29579) tb!28757))

(declare-fun result!29033 () Bool)

(assert (=> tb!28757 (= result!29033 true)))

(assert (=> d!34000 t!29579))

(declare-fun b_and!38275 () Bool)

(assert (= b_and!38257 (and (=> t!29579 result!29033) b_and!38275)))

(declare-fun tb!28759 () Bool)

(declare-fun t!29581 () Bool)

(assert (=> (and b!47880 (= (y!1526 thiss!6350) (x!17669 prev!761)) t!29581) tb!28759))

(declare-fun result!29035 () Bool)

(assert (=> tb!28759 (= result!29035 true)))

(assert (=> d!34000 t!29581))

(declare-fun b_and!38277 () Bool)

(assert (= b_and!38249 (and (=> t!29581 result!29035) b_and!38277)))

(declare-fun b_lambda!12695 () Bool)

(assert (=> (not b_lambda!12695) (not d!34000)))

(assert (=> d!34000 t!29457))

(declare-fun b_and!38279 () Bool)

(assert (= b_and!38263 (and (=> t!29457 result!28911) b_and!38279)))

(assert (=> d!34000 t!29461))

(declare-fun b_and!38281 () Bool)

(assert (= b_and!38277 (and (=> t!29461 result!28915) b_and!38281)))

(assert (=> d!34000 t!29453))

(declare-fun b_and!38283 () Bool)

(assert (= b_and!38265 (and (=> t!29453 result!28907) b_and!38283)))

(assert (=> d!34000 t!29449))

(declare-fun b_and!38285 () Bool)

(assert (= b_and!38275 (and (=> t!29449 result!28903) b_and!38285)))

(assert (=> d!34000 t!29451))

(declare-fun b_and!38287 () Bool)

(assert (= b_and!38271 (and (=> t!29451 result!28905) b_and!38287)))

(assert (=> d!34000 t!29463))

(declare-fun b_and!38289 () Bool)

(assert (= b_and!38273 (and (=> t!29463 result!28917) b_and!38289)))

(assert (=> d!34000 t!29455))

(declare-fun b_and!38291 () Bool)

(assert (= b_and!38269 (and (=> t!29455 result!28909) b_and!38291)))

(assert (=> d!34000 t!29459))

(declare-fun b_and!38293 () Bool)

(assert (= b_and!38267 (and (=> t!29459 result!28913) b_and!38293)))

(declare-fun m!50885 () Bool)

(assert (=> d!34000 m!50885))

(assert (=> d!34000 m!50811))

(assert (=> start!6468 d!34000))

(declare-fun d!34002 () Bool)

(assert (=> d!34002 (= (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)) (+!5 (*!4 n2!352 n3!59) (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59)))))

(assert (=> d!34002 true))

(declare-fun x$13!135 () Unit!656)

(assert (=> d!34002 (= (commutative_plus!0 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)) x$13!135)))

(declare-fun bs!18807 () Bool)

(assert (= bs!18807 d!34002))

(assert (=> bs!18807 m!50829))

(assert (=> bs!18807 m!50831))

(assert (=> bs!18807 m!50833))

(assert (=> bs!18807 m!50831))

(assert (=> bs!18807 m!50829))

(declare-fun m!50887 () Bool)

(assert (=> bs!18807 m!50887))

(assert (=> bs!18802 d!34002))

(assert (=> bs!18802 d!33980))

(assert (=> bs!18802 d!33982))

(assert (=> bs!18802 d!33984))

(assert (=> bs!18799 d!33990))

(assert (=> bs!18799 d!33992))

(assert (=> bs!18799 d!33984))

(declare-fun d!34004 () Bool)

(declare-fun c!10106 () Bool)

(assert (=> d!34004 (= c!10106 (is-Zero!208 n1!336))))

(declare-fun e!24974 () Nat!224)

(assert (=> d!34004 (= (*!4 n1!336 (*!4 n2!352 n3!59)) e!24974)))

(declare-fun b!47918 () Bool)

(assert (=> b!47918 (= e!24974 Zero!208)))

(declare-fun b!47919 () Bool)

(assert (=> b!47919 (= e!24974 (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (= (and d!34004 c!10106) b!47918))

(assert (= (and d!34004 (not c!10106)) b!47919))

(assert (=> b!47919 m!50831))

(assert (=> b!47919 m!50839))

(assert (=> b!47919 m!50839))

(assert (=> b!47919 m!50831))

(assert (=> b!47919 m!50841))

(assert (=> bs!18803 d!34004))

(assert (=> bs!18803 d!33984))

(assert (=> bs!18800 d!34004))

(assert (=> bs!18800 d!33984))

(declare-fun d!34006 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!34006 (= trivial!1 true)))

(assert (=> b!47886 d!34006))

(declare-fun d!34008 () Bool)

(assert (=> d!34008 (= (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59))))

(assert (=> d!34008 true))

(declare-fun x$42!101 () Unit!656)

(assert (=> d!34008 (= (associative_times!0 (n!1361 n1!336) n2!352 n3!59) x$42!101)))

(declare-fun bs!18808 () Bool)

(assert (= bs!18808 d!34008))

(assert (=> bs!18808 m!50831))

(assert (=> bs!18808 m!50831))

(assert (=> bs!18808 m!50839))

(assert (=> bs!18808 m!50827))

(assert (=> bs!18808 m!50827))

(assert (=> bs!18808 m!50829))

(assert (=> bs!18801 d!34008))

(declare-fun b_lambda!12697 () Bool)

(assert (= b_lambda!12691 (or (and b!47887 b_free!5861 (= (y!1526 prev!761) (y!1526 x$40!15))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (y!1526 x$40!15))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (y!1526 x$40!15))) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (y!1526 x$40!15))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (y!1526 x$40!15))) (and b!47885 b_free!5855) (and b!47886 (= lambda!7024 (y!1526 x$40!15))) (and b!47883 (= lambda!7026 (y!1526 x$40!15))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (y!1526 x$40!15))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (y!1526 x$40!15))) (and b!47884 (= lambda!7028 (y!1526 x$40!15))) (and b!47884 (= lambda!7029 (y!1526 x$40!15))) b_lambda!12697)))

(declare-fun bs!18809 () Bool)

(declare-fun d!34010 () Bool)

(assert (= bs!18809 (and d!34010 b!47884)))

(assert (=> bs!18809 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18809 m!50827))

(assert (=> bs!18809 m!50827))

(assert (=> bs!18809 m!50829))

(assert (=> bs!18809 m!50829))

(assert (=> bs!18809 m!50831))

(assert (=> bs!18809 m!50833))

(assert (=> bs!18809 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (y!1526 x$40!15)) d!33998) d!34010))

(declare-fun bs!18810 () Bool)

(declare-fun d!34012 () Bool)

(assert (= bs!18810 (and d!34012 b!47886)))

(assert (=> bs!18810 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18810 m!50831))

(assert (=> bs!18810 m!50831))

(assert (=> bs!18810 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (y!1526 x$40!15)) d!33998) d!34012))

(declare-fun bs!18811 () Bool)

(declare-fun d!34014 () Bool)

(assert (= bs!18811 (and d!34014 b!47884)))

(assert (=> bs!18811 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18811 m!50835))

(assert (=> bs!18811 m!50835))

(assert (=> bs!18811 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (y!1526 x$40!15)) d!33998) d!34014))

(declare-fun bs!18812 () Bool)

(declare-fun d!34016 () Bool)

(assert (= bs!18812 (and d!34016 b!47883)))

(assert (=> bs!18812 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18812 m!50831))

(assert (=> bs!18812 m!50839))

(assert (=> bs!18812 m!50831))

(assert (=> bs!18812 m!50839))

(assert (=> bs!18812 m!50831))

(assert (=> bs!18812 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (y!1526 x$40!15)) d!33998) d!34016))

(declare-fun b_lambda!12699 () Bool)

(assert (= b_lambda!12685 (or (and b!47886 (= lambda!7024 (x!17668 x$41!67))) (and b!47884 (= lambda!7029 (x!17668 x$41!67))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (x!17668 x$41!67))) (and b!47884 (= lambda!7028 (x!17668 x$41!67))) (and b!47889 b_free!5847) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (x!17668 x$41!67))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (x!17668 x$41!67))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (x!17668 x$41!67))) (and b!47883 (= lambda!7026 (x!17668 x$41!67))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (x!17668 x$41!67))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (x!17668 x$41!67))) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (x!17668 x$41!67))) b_lambda!12699)))

(declare-fun bs!18813 () Bool)

(declare-fun d!34018 () Bool)

(assert (= bs!18813 (and d!34018 b!47886)))

(assert (=> bs!18813 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18813 m!50831))

(assert (=> bs!18813 m!50831))

(assert (=> bs!18813 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (x!17668 x$41!67)) d!33996) d!34018))

(declare-fun bs!18814 () Bool)

(declare-fun d!34020 () Bool)

(assert (= bs!18814 (and d!34020 b!47883)))

(assert (=> bs!18814 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18814 m!50831))

(assert (=> bs!18814 m!50839))

(assert (=> bs!18814 m!50831))

(assert (=> bs!18814 m!50839))

(assert (=> bs!18814 m!50831))

(assert (=> bs!18814 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (x!17668 x$41!67)) d!33996) d!34020))

(declare-fun bs!18815 () Bool)

(declare-fun d!34022 () Bool)

(assert (= bs!18815 (and d!34022 b!47884)))

(assert (=> bs!18815 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18815 m!50835))

(assert (=> bs!18815 m!50835))

(assert (=> bs!18815 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (x!17668 x$41!67)) d!33996) d!34022))

(declare-fun bs!18816 () Bool)

(declare-fun d!34024 () Bool)

(assert (= bs!18816 (and d!34024 b!47884)))

(assert (=> bs!18816 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18816 m!50827))

(assert (=> bs!18816 m!50827))

(assert (=> bs!18816 m!50829))

(assert (=> bs!18816 m!50829))

(assert (=> bs!18816 m!50831))

(assert (=> bs!18816 m!50833))

(assert (=> bs!18816 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (x!17668 x$41!67)) d!33996) d!34024))

(declare-fun b_lambda!12701 () Bool)

(assert (= b_lambda!12693 (or (and b!47885 b_free!5853 (= (x!17669 x$40!15) (x!17669 prev!761))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (x!17669 prev!761))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (x!17669 prev!761))) (and b!47886 (= lambda!7024 (x!17669 prev!761))) (and b!47884 (= lambda!7028 (x!17669 prev!761))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (x!17669 prev!761))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (x!17669 prev!761))) (and b!47887 b_free!5859) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (x!17669 prev!761))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (x!17669 prev!761))) (and b!47884 (= lambda!7029 (x!17669 prev!761))) (and b!47883 (= lambda!7026 (x!17669 prev!761))) b_lambda!12701)))

(declare-fun bs!18817 () Bool)

(declare-fun d!34026 () Bool)

(assert (= bs!18817 (and d!34026 b!47883)))

(assert (=> bs!18817 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18817 m!50831))

(assert (=> bs!18817 m!50839))

(assert (=> bs!18817 m!50831))

(assert (=> bs!18817 m!50839))

(assert (=> bs!18817 m!50831))

(assert (=> bs!18817 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (x!17669 prev!761)) d!34000) d!34026))

(declare-fun bs!18818 () Bool)

(declare-fun d!34028 () Bool)

(assert (= bs!18818 (and d!34028 b!47884)))

(assert (=> bs!18818 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18818 m!50835))

(assert (=> bs!18818 m!50835))

(assert (=> bs!18818 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (x!17669 prev!761)) d!34000) d!34028))

(declare-fun bs!18819 () Bool)

(declare-fun d!34030 () Bool)

(assert (= bs!18819 (and d!34030 b!47886)))

(assert (=> bs!18819 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18819 m!50831))

(assert (=> bs!18819 m!50831))

(assert (=> bs!18819 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (x!17669 prev!761)) d!34000) d!34030))

(declare-fun bs!18820 () Bool)

(declare-fun d!34032 () Bool)

(assert (= bs!18820 (and d!34032 b!47884)))

(assert (=> bs!18820 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18820 m!50827))

(assert (=> bs!18820 m!50827))

(assert (=> bs!18820 m!50829))

(assert (=> bs!18820 m!50829))

(assert (=> bs!18820 m!50831))

(assert (=> bs!18820 m!50833))

(assert (=> bs!18820 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (x!17669 prev!761)) d!34000) d!34032))

(declare-fun b_lambda!12703 () Bool)

(assert (= b_lambda!12687 (or (and b!47889 b_free!5849) (and b!47884 (= lambda!7028 (y!1525 x$41!67))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (y!1525 x$41!67))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (y!1525 x$41!67))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (y!1525 x$41!67))) (and b!47883 (= lambda!7026 (y!1525 x$41!67))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (y!1525 x$41!67))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (y!1525 x$41!67))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (y!1525 x$41!67))) (and b!47884 (= lambda!7029 (y!1525 x$41!67))) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (y!1525 x$41!67))) (and b!47886 (= lambda!7024 (y!1525 x$41!67))) b_lambda!12703)))

(declare-fun bs!18821 () Bool)

(declare-fun d!34034 () Bool)

(assert (= bs!18821 (and d!34034 b!47883)))

(assert (=> bs!18821 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18821 m!50831))

(assert (=> bs!18821 m!50839))

(assert (=> bs!18821 m!50831))

(assert (=> bs!18821 m!50839))

(assert (=> bs!18821 m!50831))

(assert (=> bs!18821 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (y!1525 x$41!67)) d!33996) d!34034))

(declare-fun bs!18822 () Bool)

(declare-fun d!34036 () Bool)

(assert (= bs!18822 (and d!34036 b!47884)))

(assert (=> bs!18822 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18822 m!50835))

(assert (=> bs!18822 m!50835))

(assert (=> bs!18822 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (y!1525 x$41!67)) d!33996) d!34036))

(declare-fun bs!18823 () Bool)

(declare-fun d!34038 () Bool)

(assert (= bs!18823 (and d!34038 b!47886)))

(assert (=> bs!18823 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18823 m!50831))

(assert (=> bs!18823 m!50831))

(assert (=> bs!18823 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (y!1525 x$41!67)) d!33996) d!34038))

(declare-fun bs!18824 () Bool)

(declare-fun d!34040 () Bool)

(assert (= bs!18824 (and d!34040 b!47884)))

(assert (=> bs!18824 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18824 m!50827))

(assert (=> bs!18824 m!50827))

(assert (=> bs!18824 m!50829))

(assert (=> bs!18824 m!50829))

(assert (=> bs!18824 m!50831))

(assert (=> bs!18824 m!50833))

(assert (=> bs!18824 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (y!1525 x$41!67)) d!33996) d!34040))

(declare-fun b_lambda!12705 () Bool)

(assert (= b_lambda!12683 (or (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (y!1526 thiss!6350))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (y!1526 thiss!6350))) (and b!47880 b_free!5843) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (y!1526 thiss!6350))) (and b!47886 (= lambda!7024 (y!1526 thiss!6350))) (and b!47884 (= lambda!7028 (y!1526 thiss!6350))) (and b!47884 (= lambda!7029 (y!1526 thiss!6350))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (y!1526 thiss!6350))) (and b!47883 (= lambda!7026 (y!1526 thiss!6350))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (y!1526 thiss!6350))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (y!1526 thiss!6350))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (y!1526 thiss!6350))) b_lambda!12705)))

(declare-fun bs!18825 () Bool)

(declare-fun d!34042 () Bool)

(assert (= bs!18825 (and d!34042 b!47883)))

(assert (=> bs!18825 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18825 m!50831))

(assert (=> bs!18825 m!50839))

(assert (=> bs!18825 m!50831))

(assert (=> bs!18825 m!50839))

(assert (=> bs!18825 m!50831))

(assert (=> bs!18825 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (y!1526 thiss!6350)) d!33994) d!34042))

(declare-fun bs!18826 () Bool)

(declare-fun d!34044 () Bool)

(assert (= bs!18826 (and d!34044 b!47884)))

(assert (=> bs!18826 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18826 m!50835))

(assert (=> bs!18826 m!50835))

(assert (=> bs!18826 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (y!1526 thiss!6350)) d!33994) d!34044))

(declare-fun bs!18827 () Bool)

(declare-fun d!34046 () Bool)

(assert (= bs!18827 (and d!34046 b!47886)))

(assert (=> bs!18827 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18827 m!50831))

(assert (=> bs!18827 m!50831))

(assert (=> bs!18827 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (y!1526 thiss!6350)) d!33994) d!34046))

(declare-fun bs!18828 () Bool)

(declare-fun d!34048 () Bool)

(assert (= bs!18828 (and d!34048 b!47884)))

(assert (=> bs!18828 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18828 m!50827))

(assert (=> bs!18828 m!50827))

(assert (=> bs!18828 m!50829))

(assert (=> bs!18828 m!50829))

(assert (=> bs!18828 m!50831))

(assert (=> bs!18828 m!50833))

(assert (=> bs!18828 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (y!1526 thiss!6350)) d!33994) d!34048))

(declare-fun b_lambda!12707 () Bool)

(assert (= b_lambda!12689 (or (and b!47884 (= lambda!7029 (x!17669 x$40!15))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (x!17669 x$40!15))) (and b!47885 b_free!5853) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (x!17669 x$40!15))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (x!17669 x$40!15))) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (x!17669 x$40!15))) (and b!47886 (= lambda!7024 (x!17669 x$40!15))) (and b!47884 (= lambda!7028 (x!17669 x$40!15))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (x!17669 x$40!15))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (x!17669 x$40!15))) (and b!47883 (= lambda!7026 (x!17669 x$40!15))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (x!17669 x$40!15))) b_lambda!12707)))

(declare-fun bs!18829 () Bool)

(declare-fun d!34050 () Bool)

(assert (= bs!18829 (and d!34050 b!47884)))

(assert (=> bs!18829 (= (dynLambda!811 lambda!7029) (*!4 (*!4 n1!336 n2!352) n3!59))))

(assert (=> bs!18829 m!50835))

(assert (=> bs!18829 m!50835))

(assert (=> bs!18829 m!50837))

(assert (=> (and b!47884 (= lambda!7029 (x!17669 x$40!15)) d!33998) d!34050))

(declare-fun bs!18830 () Bool)

(declare-fun d!34052 () Bool)

(assert (= bs!18830 (and d!34052 b!47884)))

(assert (=> bs!18830 (= (dynLambda!811 lambda!7028) (+!5 (*!4 (*!4 (n!1361 n1!336) n2!352) n3!59) (*!4 n2!352 n3!59)))))

(assert (=> bs!18830 m!50827))

(assert (=> bs!18830 m!50827))

(assert (=> bs!18830 m!50829))

(assert (=> bs!18830 m!50829))

(assert (=> bs!18830 m!50831))

(assert (=> bs!18830 m!50833))

(assert (=> bs!18830 m!50831))

(assert (=> (and b!47884 (= lambda!7028 (x!17669 x$40!15)) d!33998) d!34052))

(declare-fun bs!18831 () Bool)

(declare-fun d!34054 () Bool)

(assert (= bs!18831 (and d!34054 b!47886)))

(assert (=> bs!18831 (= (dynLambda!811 lambda!7024) (*!4 n1!336 (*!4 n2!352 n3!59)))))

(assert (=> bs!18831 m!50831))

(assert (=> bs!18831 m!50831))

(assert (=> bs!18831 m!50843))

(assert (=> (and b!47886 (= lambda!7024 (x!17669 x$40!15)) d!33998) d!34054))

(declare-fun bs!18832 () Bool)

(declare-fun d!34056 () Bool)

(assert (= bs!18832 (and d!34056 b!47883)))

(assert (=> bs!18832 (= (dynLambda!811 lambda!7026) (+!5 (*!4 (n!1361 n1!336) (*!4 n2!352 n3!59)) (*!4 n2!352 n3!59)))))

(assert (=> bs!18832 m!50831))

(assert (=> bs!18832 m!50839))

(assert (=> bs!18832 m!50831))

(assert (=> bs!18832 m!50839))

(assert (=> bs!18832 m!50831))

(assert (=> bs!18832 m!50841))

(assert (=> (and b!47883 (= lambda!7026 (x!17669 x$40!15)) d!33998) d!34056))

(declare-fun b_lambda!12709 () Bool)

(assert (= b_lambda!12681 (or (and b!47883 (= lambda!7026 (x!17669 thiss!6350))) (and b!47880 b_free!5841) (and b!47884 (= lambda!7029 (x!17669 thiss!6350))) (and b!47885 b_free!5855 (= (y!1526 x$40!15) (x!17669 thiss!6350))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (x!17669 thiss!6350))) (and b!47884 (= lambda!7028 (x!17669 thiss!6350))) (and b!47886 (= lambda!7024 (x!17669 thiss!6350))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (x!17669 thiss!6350))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (x!17669 thiss!6350))) (and b!47887 b_free!5861 (= (y!1526 prev!761) (x!17669 thiss!6350))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (x!17669 thiss!6350))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (x!17669 thiss!6350))) b_lambda!12709)))

(assert (=> (and b!47886 (= lambda!7024 (x!17669 thiss!6350)) d!33994) d!33968))

(assert (=> (and b!47883 (= lambda!7026 (x!17669 thiss!6350)) d!33994) d!33970))

(assert (=> (and b!47884 (= lambda!7029 (x!17669 thiss!6350)) d!33994) d!33972))

(assert (=> (and b!47884 (= lambda!7028 (x!17669 thiss!6350)) d!33994) d!33974))

(declare-fun b_lambda!12711 () Bool)

(assert (= b_lambda!12695 (or (and b!47885 b_free!5855 (= (y!1526 x$40!15) (y!1526 prev!761))) (and b!47883 (= lambda!7026 (y!1526 prev!761))) (and b!47887 b_free!5859 (= (x!17669 prev!761) (y!1526 prev!761))) (and b!47880 b_free!5841 (= (x!17669 thiss!6350) (y!1526 prev!761))) (and b!47886 (= lambda!7024 (y!1526 prev!761))) (and b!47889 b_free!5849 (= (y!1525 x$41!67) (y!1526 prev!761))) (and b!47884 (= lambda!7029 (y!1526 prev!761))) (and b!47880 b_free!5843 (= (y!1526 thiss!6350) (y!1526 prev!761))) (and b!47885 b_free!5853 (= (x!17669 x$40!15) (y!1526 prev!761))) (and b!47884 (= lambda!7028 (y!1526 prev!761))) (and b!47889 b_free!5847 (= (x!17668 x$41!67) (y!1526 prev!761))) (and b!47887 b_free!5861) b_lambda!12711)))

(assert (=> (and b!47884 (= lambda!7028 (y!1526 prev!761)) d!34000) d!33956))

(assert (=> (and b!47884 (= lambda!7029 (y!1526 prev!761)) d!34000) d!33958))

(assert (=> (and b!47883 (= lambda!7026 (y!1526 prev!761)) d!34000) d!33960))

(assert (=> (and b!47886 (= lambda!7024 (y!1526 prev!761)) d!34000) d!33962))

(push 1)

(assert (not bs!18824))

(assert (not bs!18832))

(assert (not b_next!26467))

(assert (not bs!18813))

(assert (not b_lambda!12703))

(assert (not b_next!26485))

(assert (not b!47909))

(assert b_and!38291)

(assert (not b_lambda!12675))

(assert (not bs!18823))

(assert (not b_lambda!12707))

(assert (not bs!18810))

(assert (not b_next!26473))

(assert (not bs!18821))

(assert (not b_next!26477))

(assert (not b_lambda!12677))

(assert (not d!34002))

(assert (not b_lambda!12699))

(assert b_and!38285)

(assert (not b_next!26427))

(assert (not bs!18811))

(assert (not b!47913))

(assert (not b_next!26471))

(assert (not bs!18812))

(assert (not b_lambda!12709))

(assert (not bs!18820))

(assert (not bs!18826))

(assert (not bs!18827))

(assert (not b_lambda!12701))

(assert (not bs!18830))

(assert (not bs!18817))

(assert (not b_lambda!12705))

(assert (not b_lambda!12697))

(assert (not b_next!26487))

(assert (not bs!18809))

(assert b_and!38287)

(assert (not bs!18829))

(assert (not bs!18825))

(assert (not b_next!26469))

(assert (not bs!18828))

(assert b_and!38161)

(assert (not bs!18822))

(assert (not bs!18814))

(assert (not b!47919))

(assert (not bs!18819))

(assert b_and!38163)

(assert (not b!47915))

(assert (not b!47911))

(assert b_and!38293)

(assert (not d!34008))

(assert (not b_next!26479))

(assert (not b_next!26475))

(assert (not b_lambda!12711))

(assert (not b_next!26481))

(assert b_and!38165)

(assert (not bs!18816))

(assert (not b_lambda!12679))

(assert (not b_next!26483))

(assert b_and!38283)

(assert (not bs!18818))

(assert (not b!47905))

(assert b_and!38289)

(assert (not b!47907))

(assert (not bs!18815))

(assert b_and!38115)

(assert b_and!38281)

(assert (not bs!18831))

(assert b_and!38279)

(assert (not b!47899))

(assert (not b!47917))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26467))

(assert (not b_next!26485))

(assert b_and!38291)

(assert (not b_next!26473))

(assert (not b_next!26477))

(assert b_and!38285)

(assert (not b_next!26427))

(assert (not b_next!26471))

(assert (not b_next!26487))

(assert b_and!38287)

(assert (not b_next!26469))

(assert b_and!38161)

(assert b_and!38163)

(assert b_and!38293)

(assert (not b_next!26479))

(assert (not b_next!26475))

(assert (not b_next!26481))

(assert b_and!38165)

(assert (not b_next!26483))

(assert b_and!38283)

(assert b_and!38289)

(assert b_and!38115)

(assert b_and!38281)

(assert b_and!38279)

(check-sat)

(pop 1)

