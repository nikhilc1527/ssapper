; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6780 () Bool)

(assert start!6780)

(declare-fun b!50461 () Bool)

(declare-fun b_free!7017 () Bool)

(declare-fun b_next!37751 () Bool)

(assert (=> b!50461 (= b_free!7017 (not b_next!37751))))

(declare-fun tp!14605 () Bool)

(declare-fun b_and!56843 () Bool)

(assert (=> b!50461 (= tp!14605 b_and!56843)))

(declare-fun b_free!7019 () Bool)

(declare-fun b_next!37753 () Bool)

(assert (=> b!50461 (= b_free!7019 (not b_next!37753))))

(declare-fun tp!14612 () Bool)

(declare-fun b_and!56845 () Bool)

(assert (=> b!50461 (= tp!14612 b_and!56845)))

(declare-fun b_free!7021 () Bool)

(declare-fun b_next!37755 () Bool)

(assert (=> b!50461 (= b_free!7021 (not b_next!37755))))

(declare-fun tp!14606 () Bool)

(declare-fun b_and!56847 () Bool)

(assert (=> b!50461 (= tp!14606 b_and!56847)))

(declare-fun b!50462 () Bool)

(declare-fun b_free!7023 () Bool)

(declare-fun b_next!37757 () Bool)

(assert (=> b!50462 (= b_free!7023 (not b_next!37757))))

(declare-fun tp!14607 () Bool)

(declare-fun b_and!56849 () Bool)

(assert (=> b!50462 (= tp!14607 b_and!56849)))

(declare-fun b_free!7025 () Bool)

(declare-fun b_next!37759 () Bool)

(assert (=> b!50462 (= b_free!7025 (not b_next!37759))))

(declare-fun tp!14610 () Bool)

(declare-fun b_and!56851 () Bool)

(assert (=> b!50462 (= tp!14610 b_and!56851)))

(declare-fun b_free!7027 () Bool)

(declare-fun b_next!37761 () Bool)

(assert (=> b!50462 (= b_free!7027 (not b_next!37761))))

(declare-fun tp!14611 () Bool)

(declare-fun b_and!56853 () Bool)

(assert (=> b!50462 (= tp!14611 b_and!56853)))

(declare-fun b!50457 () Bool)

(declare-fun b_free!7029 () Bool)

(declare-fun b_next!37763 () Bool)

(assert (=> b!50457 (= b_free!7029 (not b_next!37763))))

(declare-fun tp!14608 () Bool)

(declare-fun b_and!56855 () Bool)

(assert (=> b!50457 (= tp!14608 b_and!56855)))

(declare-fun b_free!7031 () Bool)

(declare-fun b_next!37765 () Bool)

(assert (=> b!50457 (= b_free!7031 (not b_next!37765))))

(declare-fun tp!14604 () Bool)

(declare-fun b_and!56857 () Bool)

(assert (=> b!50457 (= tp!14604 b_and!56857)))

(declare-fun b_free!7033 () Bool)

(declare-fun b_next!37767 () Bool)

(assert (=> b!50457 (= b_free!7033 (not b_next!37767))))

(declare-fun tp!14603 () Bool)

(declare-fun b_and!56859 () Bool)

(assert (=> b!50457 (= tp!14603 b_and!56859)))

(declare-fun b!50463 () Bool)

(declare-fun b_free!7035 () Bool)

(declare-fun b_next!37769 () Bool)

(assert (=> b!50463 (= b_free!7035 (not b_next!37769))))

(declare-fun tp!14613 () Bool)

(declare-fun b_and!56861 () Bool)

(assert (=> b!50463 (= tp!14613 b_and!56861)))

(declare-fun b_free!7037 () Bool)

(declare-fun b_next!37771 () Bool)

(assert (=> b!50463 (= b_free!7037 (not b_next!37771))))

(declare-fun tp!14609 () Bool)

(declare-fun b_and!56863 () Bool)

(assert (=> b!50463 (= tp!14609 b_and!56863)))

(declare-fun b_free!7039 () Bool)

(declare-fun b_next!37773 () Bool)

(assert (=> b!50463 (= b_free!7039 (not b_next!37773))))

(declare-fun tp!14614 () Bool)

(declare-fun b_and!56865 () Bool)

(assert (=> b!50463 (= tp!14614 b_and!56865)))

(declare-fun b!50458 () Bool)

(assert (=> b!50458 true))

(assert (=> b!50458 true))

(assert (=> b!50458 true))

(declare-datatypes () ((Nat!249 (Zero!233) (Succ!230 (n!1386 Nat!249)))))

(declare-datatypes () ((Unit!791 (Unit!792))))

(declare-datatypes () ((RAEqEvidence!450 (RAEqEvidence!451 (x!19551 Int) (y!1564 Int) (evidence!677 Int)))))

(declare-fun prev!408 () RAEqEvidence!450)

(declare-fun b_next!37775 () Bool)

(declare-fun lambda!8363 () Int)

(assert (=> b!50461 (= b_next!37751 (or (and b!50458 (= lambda!8363 (x!19551 prev!408))) b_next!37775))))

(declare-fun b_next!37777 () Bool)

(declare-fun thiss!4915 () RAEqEvidence!450)

(assert (=> b!50463 (= b_next!37771 (or (and b!50458 (= lambda!8363 (y!1564 thiss!4915))) b_next!37777))))

(declare-fun x$20!42 () RAEqEvidence!450)

(declare-fun b_next!37779 () Bool)

(assert (=> b!50457 (= b_next!37763 (or (and b!50458 (= lambda!8363 (x!19551 x$20!42))) b_next!37779))))

(declare-datatypes () ((RAEqEvidence!452 (RAEqEvidence!453 (x!19552 Int) (y!1565 Int) (evidence!678 Int)))))

(declare-fun x$21!39 () RAEqEvidence!452)

(declare-fun b_next!37781 () Bool)

(assert (=> b!50462 (= b_next!37757 (or (and b!50458 (= lambda!8363 (x!19552 x$21!39))) b_next!37781))))

(declare-fun b_next!37783 () Bool)

(assert (=> b!50457 (= b_next!37765 (or (and b!50458 (= lambda!8363 (y!1564 x$20!42))) b_next!37783))))

(declare-fun b_next!37785 () Bool)

(assert (=> b!50462 (= b_next!37759 (or (and b!50458 (= lambda!8363 (y!1565 x$21!39))) b_next!37785))))

(declare-fun b_next!37787 () Bool)

(assert (=> b!50463 (= b_next!37769 (or (and b!50458 (= lambda!8363 (x!19551 thiss!4915))) b_next!37787))))

(declare-fun b_next!37789 () Bool)

(assert (=> b!50461 (= b_next!37753 (or (and b!50458 (= lambda!8363 (y!1564 prev!408))) b_next!37789))))

(declare-fun m!54043 () Bool)

(assert (=> b!50458 m!54043))

(declare-fun lambda!8364 () Int)

(declare-fun dynLambda!865 (Int) Bool)

(assert (=> (and b!50462 b!50458 (= (dynLambda!865 lambda!8364) (dynLambda!865 (evidence!678 x$21!39)))) (= lambda!8364 (evidence!678 x$21!39))))

(declare-fun b_next!37791 () Bool)

(assert (=> b!50462 (= b_next!37761 (or (and b!50458 (= lambda!8364 (evidence!678 x$21!39))) b_next!37791))))

(declare-fun bs!23479 () Bool)

(declare-fun b!50459 () Bool)

(assert (= bs!23479 (and b!50459 b!50458)))

(declare-fun lambda!8365 () Int)

(assert (=> bs!23479 (not (= lambda!8365 lambda!8363))))

(assert (=> b!50459 true))

(assert (=> b!50459 true))

(assert (=> b!50459 true))

(declare-fun b_next!37793 () Bool)

(assert (=> b!50461 (= b_next!37775 (or (and b!50459 (= lambda!8365 (x!19551 prev!408))) b_next!37793))))

(declare-fun b_next!37795 () Bool)

(assert (=> b!50463 (= b_next!37777 (or (and b!50459 (= lambda!8365 (y!1564 thiss!4915))) b_next!37795))))

(declare-fun b_next!37797 () Bool)

(assert (=> b!50457 (= b_next!37779 (or (and b!50459 (= lambda!8365 (x!19551 x$20!42))) b_next!37797))))

(declare-fun b_next!37799 () Bool)

(assert (=> b!50462 (= b_next!37781 (or (and b!50459 (= lambda!8365 (x!19552 x$21!39))) b_next!37799))))

(declare-fun b_next!37801 () Bool)

(assert (=> b!50457 (= b_next!37783 (or (and b!50459 (= lambda!8365 (y!1564 x$20!42))) b_next!37801))))

(declare-fun b_next!37803 () Bool)

(assert (=> b!50462 (= b_next!37785 (or (and b!50459 (= lambda!8365 (y!1565 x$21!39))) b_next!37803))))

(declare-fun b_next!37805 () Bool)

(assert (=> b!50463 (= b_next!37787 (or (and b!50459 (= lambda!8365 (x!19551 thiss!4915))) b_next!37805))))

(declare-fun b_next!37807 () Bool)

(assert (=> b!50461 (= b_next!37789 (or (and b!50459 (= lambda!8365 (y!1564 prev!408))) b_next!37807))))

(assert (=> b!50459 true))

(assert (=> b!50459 true))

(assert (=> b!50459 true))

(declare-fun lambda!8366 () Int)

(declare-fun b_next!37809 () Bool)

(assert (=> b!50461 (= b_next!37755 (or (and b!50459 (= lambda!8366 (evidence!677 prev!408))) b_next!37809))))

(declare-fun b_next!37811 () Bool)

(assert (=> b!50457 (= b_next!37767 (or (and b!50459 (= lambda!8366 (evidence!677 x$20!42))) b_next!37811))))

(declare-fun b_next!37813 () Bool)

(assert (=> b!50463 (= b_next!37773 (or (and b!50459 (= lambda!8366 (evidence!677 thiss!4915))) b_next!37813))))

(declare-fun bs!23480 () Bool)

(declare-fun b!50456 () Bool)

(assert (= bs!23480 (and b!50456 b!50458)))

(declare-fun lambda!8367 () Int)

(assert (=> bs!23480 (not (= lambda!8367 lambda!8363))))

(declare-fun bs!23481 () Bool)

(assert (= bs!23481 (and b!50456 b!50459)))

(assert (=> bs!23481 (not (= lambda!8367 lambda!8365))))

(assert (=> b!50456 true))

(assert (=> b!50456 true))

(assert (=> b!50456 true))

(declare-fun b_next!37815 () Bool)

(assert (=> b!50461 (= b_next!37793 (or (and b!50456 (= lambda!8367 (x!19551 prev!408))) b_next!37815))))

(declare-fun b_next!37817 () Bool)

(assert (=> b!50463 (= b_next!37795 (or (and b!50456 (= lambda!8367 (y!1564 thiss!4915))) b_next!37817))))

(declare-fun b_next!37819 () Bool)

(assert (=> b!50457 (= b_next!37797 (or (and b!50456 (= lambda!8367 (x!19551 x$20!42))) b_next!37819))))

(declare-fun b_next!37821 () Bool)

(assert (=> b!50462 (= b_next!37799 (or (and b!50456 (= lambda!8367 (x!19552 x$21!39))) b_next!37821))))

(declare-fun b_next!37823 () Bool)

(assert (=> b!50457 (= b_next!37801 (or (and b!50456 (= lambda!8367 (y!1564 x$20!42))) b_next!37823))))

(declare-fun b_next!37825 () Bool)

(assert (=> b!50462 (= b_next!37803 (or (and b!50456 (= lambda!8367 (y!1565 x$21!39))) b_next!37825))))

(declare-fun b_next!37827 () Bool)

(assert (=> b!50463 (= b_next!37805 (or (and b!50456 (= lambda!8367 (x!19551 thiss!4915))) b_next!37827))))

(declare-fun b_next!37829 () Bool)

(assert (=> b!50461 (= b_next!37807 (or (and b!50456 (= lambda!8367 (y!1564 prev!408))) b_next!37829))))

(declare-fun lambda!8368 () Int)

(assert (=> bs!23480 (not (= lambda!8368 lambda!8363))))

(assert (=> bs!23481 (not (= lambda!8368 lambda!8365))))

(assert (=> b!50456 (not (= lambda!8368 lambda!8367))))

(assert (=> b!50456 true))

(assert (=> b!50456 true))

(assert (=> b!50456 true))

(declare-fun b_next!37831 () Bool)

(assert (=> b!50461 (= b_next!37815 (or (and b!50456 (= lambda!8368 (x!19551 prev!408))) b_next!37831))))

(declare-fun b_next!37833 () Bool)

(assert (=> b!50463 (= b_next!37817 (or (and b!50456 (= lambda!8368 (y!1564 thiss!4915))) b_next!37833))))

(declare-fun b_next!37835 () Bool)

(assert (=> b!50457 (= b_next!37819 (or (and b!50456 (= lambda!8368 (x!19551 x$20!42))) b_next!37835))))

(declare-fun b_next!37837 () Bool)

(assert (=> b!50462 (= b_next!37821 (or (and b!50456 (= lambda!8368 (x!19552 x$21!39))) b_next!37837))))

(declare-fun b_next!37839 () Bool)

(assert (=> b!50457 (= b_next!37823 (or (and b!50456 (= lambda!8368 (y!1564 x$20!42))) b_next!37839))))

(declare-fun b_next!37841 () Bool)

(assert (=> b!50462 (= b_next!37825 (or (and b!50456 (= lambda!8368 (y!1565 x$21!39))) b_next!37841))))

(declare-fun b_next!37843 () Bool)

(assert (=> b!50463 (= b_next!37827 (or (and b!50456 (= lambda!8368 (x!19551 thiss!4915))) b_next!37843))))

(declare-fun b_next!37845 () Bool)

(assert (=> b!50461 (= b_next!37829 (or (and b!50456 (= lambda!8368 (y!1564 prev!408))) b_next!37845))))

(declare-fun lambda!8369 () Int)

(assert (=> bs!23481 (not (= lambda!8369 lambda!8366))))

(assert (=> b!50456 true))

(assert (=> b!50456 true))

(assert (=> b!50456 true))

(declare-fun b_next!37847 () Bool)

(assert (=> b!50461 (= b_next!37809 (or (and b!50456 (= lambda!8369 (evidence!677 prev!408))) b_next!37847))))

(declare-fun b_next!37849 () Bool)

(assert (=> b!50457 (= b_next!37811 (or (and b!50456 (= lambda!8369 (evidence!677 x$20!42))) b_next!37849))))

(declare-fun b_next!37851 () Bool)

(assert (=> b!50463 (= b_next!37813 (or (and b!50456 (= lambda!8369 (evidence!677 thiss!4915))) b_next!37851))))

(declare-fun b!50455 () Bool)

(declare-fun e!26204 () Bool)

(declare-fun dynLambda!866 (Int) Nat!249)

(assert (=> b!50455 (= e!26204 (not (= (dynLambda!866 (y!1564 prev!408)) (dynLambda!866 (x!19551 thiss!4915)))))))

(declare-fun res!23185 () Bool)

(assert (=> b!50456 (=> (not res!23185) (not e!26204))))

(assert (=> b!50456 (= res!23185 (= thiss!4915 (RAEqEvidence!451 lambda!8367 lambda!8368 lambda!8369)))))

(declare-fun e!26201 () Bool)

(assert (=> b!50457 (= e!26201 (and tp!14608 tp!14604 tp!14603))))

(declare-fun res!23184 () Bool)

(assert (=> b!50458 (=> (not res!23184) (not e!26204))))

(assert (=> b!50458 (= res!23184 (= x$21!39 (RAEqEvidence!453 lambda!8363 lambda!8363 lambda!8364)))))

(declare-fun res!23189 () Bool)

(assert (=> b!50459 (=> (not res!23189) (not e!26204))))

(assert (=> b!50459 (= res!23189 (= x$20!42 (RAEqEvidence!451 lambda!8365 lambda!8365 lambda!8366)))))

(declare-fun b!50460 () Bool)

(declare-fun res!23186 () Bool)

(assert (=> b!50460 (=> (not res!23186) (not e!26204))))

(assert (=> b!50460 (= res!23186 (= prev!408 x$20!42))))

(declare-fun e!26205 () Bool)

(assert (=> b!50461 (= e!26205 (and tp!14605 tp!14612 tp!14606))))

(declare-fun res!23188 () Bool)

(assert (=> start!6780 (=> (not res!23188) (not e!26204))))

(declare-fun n1!77 () Nat!249)

(assert (=> start!6780 (= res!23188 (not (is-Zero!233 n1!77)))))

(assert (=> start!6780 e!26204))

(declare-fun inv!874 (RAEqEvidence!450) Bool)

(assert (=> start!6780 (and (inv!874 prev!408) e!26205)))

(declare-fun e!26203 () Bool)

(declare-fun inv!875 (RAEqEvidence!452) Bool)

(assert (=> start!6780 (and (inv!875 x$21!39) e!26203)))

(assert (=> start!6780 (and (inv!874 x$20!42) e!26201)))

(assert (=> start!6780 true))

(declare-fun e!26202 () Bool)

(assert (=> start!6780 (and (inv!874 thiss!4915) e!26202)))

(assert (=> b!50462 (= e!26203 (and tp!14607 tp!14610 tp!14611))))

(assert (=> b!50463 (= e!26202 (and tp!14613 tp!14609 tp!14614))))

(declare-fun b!50464 () Bool)

(declare-fun res!23187 () Bool)

(assert (=> b!50464 (=> (not res!23187) (not e!26204))))

(declare-fun keepEvidence!68 (Unit!791) Bool)

(declare-fun dynLambda!867 (Int) Unit!791)

(assert (=> b!50464 (= res!23187 (keepEvidence!68 (dynLambda!867 (evidence!677 prev!408))))))

(assert (= (and start!6780 res!23188) b!50458))

(assert (= (and b!50458 res!23184) b!50459))

(assert (= (and b!50459 res!23189) b!50456))

(assert (= (and b!50456 res!23185) b!50460))

(assert (= (and b!50460 res!23186) b!50464))

(assert (= (and b!50464 res!23187) b!50455))

(assert (= start!6780 b!50461))

(assert (= start!6780 b!50462))

(assert (= start!6780 b!50457))

(assert (= start!6780 b!50463))

(declare-fun b_lambda!14269 () Bool)

(assert (=> (not b_lambda!14269) (not b!50455)))

(declare-fun t!45635 () Bool)

(declare-fun tb!44813 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (y!1564 prev!408)) t!45635) tb!44813))

(declare-fun result!45089 () Bool)

(assert (=> tb!44813 (= result!45089 true)))

(assert (=> b!50455 t!45635))

(declare-fun b_and!56867 () Bool)

(assert (= b_and!56851 (and (=> t!45635 result!45089) b_and!56867)))

(declare-fun t!45637 () Bool)

(declare-fun tb!44815 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (y!1564 prev!408)) t!45637) tb!44815))

(declare-fun result!45091 () Bool)

(assert (=> tb!44815 (= result!45091 true)))

(assert (=> b!50455 t!45637))

(declare-fun b_and!56869 () Bool)

(assert (= b_and!56849 (and (=> t!45637 result!45091) b_and!56869)))

(declare-fun tb!44817 () Bool)

(declare-fun t!45639 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (y!1564 prev!408)) t!45639) tb!44817))

(declare-fun result!45093 () Bool)

(assert (=> tb!44817 (= result!45093 true)))

(assert (=> b!50455 t!45639))

(declare-fun b_and!56871 () Bool)

(assert (= b_and!56863 (and (=> t!45639 result!45093) b_and!56871)))

(declare-fun t!45641 () Bool)

(declare-fun tb!44819 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (y!1564 prev!408)) t!45641) tb!44819))

(declare-fun result!45095 () Bool)

(assert (=> tb!44819 (= result!45095 true)))

(assert (=> b!50455 t!45641))

(declare-fun b_and!56873 () Bool)

(assert (= b_and!56857 (and (=> t!45641 result!45095) b_and!56873)))

(declare-fun t!45643 () Bool)

(declare-fun tb!44821 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (y!1564 prev!408)) t!45643) tb!44821))

(declare-fun result!45097 () Bool)

(assert (=> tb!44821 (= result!45097 true)))

(assert (=> b!50455 t!45643))

(declare-fun b_and!56875 () Bool)

(assert (= b_and!56861 (and (=> t!45643 result!45097) b_and!56875)))

(declare-fun t!45645 () Bool)

(declare-fun tb!44823 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (y!1564 prev!408)) t!45645) tb!44823))

(declare-fun result!45099 () Bool)

(assert (=> tb!44823 (= result!45099 true)))

(assert (=> b!50455 t!45645))

(declare-fun b_and!56877 () Bool)

(assert (= b_and!56845 (and (=> t!45645 result!45099) b_and!56877)))

(declare-fun t!45647 () Bool)

(declare-fun tb!44825 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (y!1564 prev!408)) t!45647) tb!44825))

(declare-fun result!45101 () Bool)

(assert (=> tb!44825 (= result!45101 true)))

(assert (=> b!50455 t!45647))

(declare-fun b_and!56879 () Bool)

(assert (= b_and!56843 (and (=> t!45647 result!45101) b_and!56879)))

(declare-fun t!45649 () Bool)

(declare-fun tb!44827 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (y!1564 prev!408)) t!45649) tb!44827))

(declare-fun result!45103 () Bool)

(assert (=> tb!44827 (= result!45103 true)))

(assert (=> b!50455 t!45649))

(declare-fun b_and!56881 () Bool)

(assert (= b_and!56855 (and (=> t!45649 result!45103) b_and!56881)))

(declare-fun b_lambda!14271 () Bool)

(assert (=> (not b_lambda!14271) (not b!50455)))

(declare-fun tb!44829 () Bool)

(declare-fun t!45651 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (x!19551 thiss!4915)) t!45651) tb!44829))

(declare-fun result!45105 () Bool)

(assert (=> tb!44829 (= result!45105 true)))

(assert (=> b!50455 t!45651))

(declare-fun b_and!56883 () Bool)

(assert (= b_and!56869 (and (=> t!45651 result!45105) b_and!56883)))

(declare-fun tb!44831 () Bool)

(declare-fun t!45653 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (x!19551 thiss!4915)) t!45653) tb!44831))

(declare-fun result!45107 () Bool)

(assert (=> tb!44831 (= result!45107 true)))

(assert (=> b!50455 t!45653))

(declare-fun b_and!56885 () Bool)

(assert (= b_and!56867 (and (=> t!45653 result!45107) b_and!56885)))

(declare-fun tb!44833 () Bool)

(declare-fun t!45655 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (x!19551 thiss!4915)) t!45655) tb!44833))

(declare-fun result!45109 () Bool)

(assert (=> tb!44833 (= result!45109 true)))

(assert (=> b!50455 t!45655))

(declare-fun b_and!56887 () Bool)

(assert (= b_and!56879 (and (=> t!45655 result!45109) b_and!56887)))

(declare-fun t!45657 () Bool)

(declare-fun tb!44835 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (x!19551 thiss!4915)) t!45657) tb!44835))

(declare-fun result!45111 () Bool)

(assert (=> tb!44835 (= result!45111 true)))

(assert (=> b!50455 t!45657))

(declare-fun b_and!56889 () Bool)

(assert (= b_and!56881 (and (=> t!45657 result!45111) b_and!56889)))

(declare-fun t!45659 () Bool)

(declare-fun tb!44837 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (x!19551 thiss!4915)) t!45659) tb!44837))

(declare-fun result!45113 () Bool)

(assert (=> tb!44837 (= result!45113 true)))

(assert (=> b!50455 t!45659))

(declare-fun b_and!56891 () Bool)

(assert (= b_and!56873 (and (=> t!45659 result!45113) b_and!56891)))

(declare-fun t!45661 () Bool)

(declare-fun tb!44839 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (x!19551 thiss!4915)) t!45661) tb!44839))

(declare-fun result!45115 () Bool)

(assert (=> tb!44839 (= result!45115 true)))

(assert (=> b!50455 t!45661))

(declare-fun b_and!56893 () Bool)

(assert (= b_and!56871 (and (=> t!45661 result!45115) b_and!56893)))

(declare-fun t!45663 () Bool)

(declare-fun tb!44841 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (x!19551 thiss!4915)) t!45663) tb!44841))

(declare-fun result!45117 () Bool)

(assert (=> tb!44841 (= result!45117 true)))

(assert (=> b!50455 t!45663))

(declare-fun b_and!56895 () Bool)

(assert (= b_and!56875 (and (=> t!45663 result!45117) b_and!56895)))

(declare-fun t!45665 () Bool)

(declare-fun tb!44843 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (x!19551 thiss!4915)) t!45665) tb!44843))

(declare-fun result!45119 () Bool)

(assert (=> tb!44843 (= result!45119 true)))

(assert (=> b!50455 t!45665))

(declare-fun b_and!56897 () Bool)

(assert (= b_and!56877 (and (=> t!45665 result!45119) b_and!56897)))

(declare-fun b_lambda!14273 () Bool)

(assert (=> (not b_lambda!14273) (not b!50464)))

(declare-fun t!45667 () Bool)

(declare-fun tb!44845 () Bool)

(assert (=> (and b!50461 (= (evidence!677 prev!408) (evidence!677 prev!408)) t!45667) tb!44845))

(declare-fun result!45121 () Bool)

(assert (=> tb!44845 (= result!45121 true)))

(assert (=> b!50464 t!45667))

(declare-fun b_and!56899 () Bool)

(assert (= b_and!56847 (and (=> t!45667 result!45121) b_and!56899)))

(declare-fun tb!44847 () Bool)

(declare-fun t!45669 () Bool)

(assert (=> (and b!50457 (= (evidence!677 x$20!42) (evidence!677 prev!408)) t!45669) tb!44847))

(declare-fun result!45123 () Bool)

(assert (=> tb!44847 (= result!45123 true)))

(assert (=> b!50464 t!45669))

(declare-fun b_and!56901 () Bool)

(assert (= b_and!56859 (and (=> t!45669 result!45123) b_and!56901)))

(declare-fun t!45671 () Bool)

(declare-fun tb!44849 () Bool)

(assert (=> (and b!50463 (= (evidence!677 thiss!4915) (evidence!677 prev!408)) t!45671) tb!44849))

(declare-fun result!45125 () Bool)

(assert (=> tb!44849 (= result!45125 true)))

(assert (=> b!50464 t!45671))

(declare-fun b_and!56903 () Bool)

(assert (= b_and!56865 (and (=> t!45671 result!45125) b_and!56903)))

(declare-fun m!54045 () Bool)

(assert (=> b!50455 m!54045))

(declare-fun m!54047 () Bool)

(assert (=> b!50455 m!54047))

(declare-fun m!54049 () Bool)

(assert (=> start!6780 m!54049))

(declare-fun m!54051 () Bool)

(assert (=> start!6780 m!54051))

(declare-fun m!54053 () Bool)

(assert (=> start!6780 m!54053))

(declare-fun m!54055 () Bool)

(assert (=> start!6780 m!54055))

(declare-fun m!54057 () Bool)

(assert (=> b!50464 m!54057))

(assert (=> b!50464 m!54057))

(declare-fun m!54059 () Bool)

(assert (=> b!50464 m!54059))

(push 1)

(assert (not b_next!37831))

(assert (not b_lambda!14273))

(assert b_and!56891)

(assert b_and!56883)

(assert (not b_lambda!14269))

(assert (not b_next!37849))

(assert b_and!56901)

(assert (not b_lambda!14271))

(assert (not b_next!37843))

(assert (not b_next!37841))

(assert (not b_next!37847))

(assert (not b_next!37835))

(assert b_and!56903)

(assert b_and!56897)

(assert (not start!6780))

(assert b_and!56885)

(assert b_and!56893)

(assert b_and!56889)

(assert (not b!50464))

(assert b_and!56895)

(assert b_and!56853)

(assert (not b_next!37851))

(assert (not b_next!37845))

(assert b_and!56887)

(assert (not b_next!37837))

(assert (not b_next!37833))

(assert (not b_next!37791))

(assert (not b!50458))

(assert (not b_next!37839))

(assert b_and!56899)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37831))

(assert b_and!56891)

(assert b_and!56883)

(assert (not b_next!37849))

(assert b_and!56901)

(assert (not b_next!37843))

(assert (not b_next!37841))

(assert (not b_next!37847))

(assert (not b_next!37835))

(assert b_and!56903)

(assert b_and!56897)

(assert b_and!56885)

(assert b_and!56893)

(assert b_and!56889)

(assert b_and!56895)

(assert b_and!56853)

(assert (not b_next!37851))

(assert (not b_next!37845))

(assert b_and!56887)

(assert (not b_next!37837))

(assert (not b_next!37833))

(assert (not b_next!37791))

(assert (not b_next!37839))

(assert b_and!56899)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14275 () Bool)

(assert (= b_lambda!14273 (or (and b!50457 b_free!7033 (= (evidence!677 x$20!42) (evidence!677 prev!408))) (and b!50459 (= lambda!8366 (evidence!677 prev!408))) (and b!50456 (= lambda!8369 (evidence!677 prev!408))) (and b!50463 b_free!7039 (= (evidence!677 thiss!4915) (evidence!677 prev!408))) (and b!50461 b_free!7021) b_lambda!14275)))

(declare-fun bs!23482 () Bool)

(declare-fun d!42944 () Bool)

(assert (= bs!23482 (and d!42944 b!50456)))

(declare-fun n2!88 () Nat!249)

(declare-fun n3!17 () Nat!249)

(declare-fun associative_plus!0 (Nat!249 Nat!249 Nat!249) Unit!791)

(declare-fun +!5 (Nat!249 Nat!249) Nat!249)

(declare-fun *!4 (Nat!249 Nat!249) Nat!249)

(assert (=> bs!23482 (= (dynLambda!867 lambda!8369) (associative_plus!0 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) n2!88 n3!17))))

(declare-fun m!54061 () Bool)

(assert (=> bs!23482 m!54061))

(declare-fun m!54063 () Bool)

(assert (=> bs!23482 m!54063))

(declare-fun m!54065 () Bool)

(assert (=> bs!23482 m!54065))

(assert (=> bs!23482 m!54065))

(declare-fun m!54067 () Bool)

(assert (=> bs!23482 m!54067))

(assert (=> bs!23482 m!54063))

(assert (=> bs!23482 m!54061))

(assert (=> (and b!50456 (= lambda!8369 (evidence!677 prev!408)) b!50464) d!42944))

(declare-fun bs!23483 () Bool)

(declare-fun d!42946 () Bool)

(assert (= bs!23483 (and d!42946 b!50459)))

(declare-fun distributive_times!0 (Nat!249 Nat!249 Nat!249) Unit!791)

(assert (=> bs!23483 (= (dynLambda!867 lambda!8366) (distributive_times!0 (n!1386 n1!77) n2!88 n3!17))))

(declare-fun m!54069 () Bool)

(assert (=> bs!23483 m!54069))

(assert (=> (and b!50459 (= lambda!8366 (evidence!677 prev!408)) b!50464) d!42946))

(declare-fun b_lambda!14277 () Bool)

(assert (= b_lambda!14271 (or (and b!50458 (= lambda!8363 (x!19551 thiss!4915))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (x!19551 thiss!4915))) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (x!19551 thiss!4915))) (and b!50459 (= lambda!8365 (x!19551 thiss!4915))) (and b!50456 (= lambda!8368 (x!19551 thiss!4915))) (and b!50463 b_free!7035) (and b!50456 (= lambda!8367 (x!19551 thiss!4915))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (x!19551 thiss!4915))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (x!19551 thiss!4915))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (x!19551 thiss!4915))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (x!19551 thiss!4915))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (x!19551 thiss!4915))) b_lambda!14277)))

(declare-fun bs!23484 () Bool)

(declare-fun d!42948 () Bool)

(assert (= bs!23484 (and d!42948 b!50456)))

(assert (=> bs!23484 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23484 m!54061))

(assert (=> bs!23484 m!54063))

(assert (=> bs!23484 m!54065))

(assert (=> bs!23484 m!54065))

(declare-fun m!54071 () Bool)

(assert (=> bs!23484 m!54071))

(declare-fun m!54073 () Bool)

(assert (=> bs!23484 m!54073))

(assert (=> bs!23484 m!54063))

(assert (=> bs!23484 m!54071))

(assert (=> bs!23484 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (x!19551 thiss!4915)) b!50455) d!42948))

(declare-fun bs!23485 () Bool)

(declare-fun d!42950 () Bool)

(assert (= bs!23485 (and d!42950 b!50459)))

(assert (=> bs!23485 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(declare-fun m!54075 () Bool)

(assert (=> bs!23485 m!54075))

(assert (=> bs!23485 m!54071))

(declare-fun m!54077 () Bool)

(assert (=> bs!23485 m!54077))

(assert (=> bs!23485 m!54071))

(assert (=> bs!23485 m!54075))

(assert (=> bs!23485 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (x!19551 thiss!4915)) b!50455) d!42950))

(declare-fun bs!23486 () Bool)

(declare-fun d!42952 () Bool)

(assert (= bs!23486 (and d!42952 b!50456)))

(assert (=> bs!23486 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(declare-fun m!54079 () Bool)

(assert (=> bs!23486 m!54079))

(declare-fun m!54081 () Bool)

(assert (=> bs!23486 m!54081))

(assert (=> bs!23486 m!54079))

(assert (=> bs!23486 m!54081))

(declare-fun m!54083 () Bool)

(assert (=> bs!23486 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (x!19551 thiss!4915)) b!50455) d!42952))

(declare-fun bs!23487 () Bool)

(declare-fun d!42954 () Bool)

(assert (= bs!23487 (and d!42954 b!50458)))

(assert (=> bs!23487 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23487 m!54071))

(assert (=> bs!23487 m!54071))

(declare-fun m!54085 () Bool)

(assert (=> bs!23487 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (x!19551 thiss!4915)) b!50455) d!42954))

(declare-fun b_lambda!14279 () Bool)

(assert (= b_lambda!14269 (or (and b!50461 b_free!7019) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (y!1564 prev!408))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (y!1564 prev!408))) (and b!50458 (= lambda!8363 (y!1564 prev!408))) (and b!50456 (= lambda!8368 (y!1564 prev!408))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (y!1564 prev!408))) (and b!50459 (= lambda!8365 (y!1564 prev!408))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (y!1564 prev!408))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (y!1564 prev!408))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (y!1564 prev!408))) (and b!50456 (= lambda!8367 (y!1564 prev!408))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (y!1564 prev!408))) b_lambda!14279)))

(declare-fun bs!23488 () Bool)

(declare-fun d!42956 () Bool)

(assert (= bs!23488 (and d!42956 b!50458)))

(assert (=> bs!23488 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23488 m!54071))

(assert (=> bs!23488 m!54071))

(assert (=> bs!23488 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (y!1564 prev!408)) b!50455) d!42956))

(declare-fun bs!23489 () Bool)

(declare-fun d!42958 () Bool)

(assert (= bs!23489 (and d!42958 b!50459)))

(assert (=> bs!23489 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23489 m!54075))

(assert (=> bs!23489 m!54071))

(assert (=> bs!23489 m!54077))

(assert (=> bs!23489 m!54071))

(assert (=> bs!23489 m!54075))

(assert (=> bs!23489 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (y!1564 prev!408)) b!50455) d!42958))

(declare-fun bs!23490 () Bool)

(declare-fun d!42960 () Bool)

(assert (= bs!23490 (and d!42960 b!50456)))

(assert (=> bs!23490 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23490 m!54079))

(assert (=> bs!23490 m!54081))

(assert (=> bs!23490 m!54079))

(assert (=> bs!23490 m!54081))

(assert (=> bs!23490 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (y!1564 prev!408)) b!50455) d!42960))

(declare-fun bs!23491 () Bool)

(declare-fun d!42962 () Bool)

(assert (= bs!23491 (and d!42962 b!50456)))

(assert (=> bs!23491 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23491 m!54061))

(assert (=> bs!23491 m!54063))

(assert (=> bs!23491 m!54065))

(assert (=> bs!23491 m!54065))

(assert (=> bs!23491 m!54071))

(assert (=> bs!23491 m!54073))

(assert (=> bs!23491 m!54063))

(assert (=> bs!23491 m!54071))

(assert (=> bs!23491 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (y!1564 prev!408)) b!50455) d!42962))

(push 1)

(assert (not b_next!37831))

(assert (not bs!23491))

(assert b_and!56891)

(assert (not bs!23483))

(assert b_and!56883)

(assert (not bs!23487))

(assert (not b_next!37849))

(assert (not bs!23489))

(assert (not bs!23486))

(assert b_and!56901)

(assert (not b_next!37843))

(assert (not b_next!37841))

(assert (not b_next!37847))

(assert (not b_next!37835))

(assert (not bs!23490))

(assert b_and!56903)

(assert b_and!56897)

(assert (not start!6780))

(assert (not bs!23484))

(assert b_and!56885)

(assert (not bs!23482))

(assert b_and!56893)

(assert b_and!56889)

(assert (not b!50464))

(assert (not bs!23485))

(assert (not b_lambda!14277))

(assert b_and!56895)

(assert b_and!56853)

(assert (not b_next!37851))

(assert (not b_next!37845))

(assert b_and!56887)

(assert (not b_next!37837))

(assert (not b_next!37833))

(assert (not b_lambda!14275))

(assert (not b_next!37791))

(assert (not b_lambda!14279))

(assert (not b!50458))

(assert (not bs!23488))

(assert (not b_next!37839))

(assert b_and!56899)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37831))

(assert b_and!56891)

(assert b_and!56883)

(assert (not b_next!37849))

(assert b_and!56901)

(assert (not b_next!37843))

(assert (not b_next!37841))

(assert (not b_next!37847))

(assert (not b_next!37835))

(assert b_and!56903)

(assert b_and!56897)

(assert b_and!56885)

(assert b_and!56893)

(assert b_and!56889)

(assert b_and!56895)

(assert b_and!56853)

(assert (not b_next!37851))

(assert (not b_next!37845))

(assert b_and!56887)

(assert (not b_next!37837))

(assert (not b_next!37833))

(assert (not b_next!37791))

(assert (not b_next!37839))

(assert b_and!56899)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!42964 () Bool)

(assert (=> d!42964 (= (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)))))

(assert (=> d!42964 true))

(declare-fun x$22!62 () Unit!791)

(assert (=> d!42964 (= (distributive_times!0 (n!1386 n1!77) n2!88 n3!17) x$22!62)))

(declare-fun bs!23492 () Bool)

(assert (= bs!23492 d!42964))

(assert (=> bs!23492 m!54061))

(assert (=> bs!23492 m!54063))

(assert (=> bs!23492 m!54071))

(assert (=> bs!23492 m!54071))

(assert (=> bs!23492 m!54075))

(assert (=> bs!23492 m!54061))

(assert (=> bs!23492 m!54063))

(assert (=> bs!23492 m!54065))

(assert (=> bs!23483 d!42964))

(declare-fun d!42966 () Bool)

(assert (=> d!42966 (= (inv!874 prev!408) (= (dynLambda!866 (x!19551 prev!408)) (dynLambda!866 (y!1564 prev!408))))))

(declare-fun b_lambda!14281 () Bool)

(assert (=> (not b_lambda!14281) (not d!42966)))

(declare-fun t!45673 () Bool)

(declare-fun tb!44851 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (x!19551 prev!408)) t!45673) tb!44851))

(declare-fun result!45127 () Bool)

(assert (=> tb!44851 (= result!45127 true)))

(assert (=> d!42966 t!45673))

(declare-fun b_and!56905 () Bool)

(assert (= b_and!56897 (and (=> t!45673 result!45127) b_and!56905)))

(declare-fun t!45675 () Bool)

(declare-fun tb!44853 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (x!19551 prev!408)) t!45675) tb!44853))

(declare-fun result!45129 () Bool)

(assert (=> tb!44853 (= result!45129 true)))

(assert (=> d!42966 t!45675))

(declare-fun b_and!56907 () Bool)

(assert (= b_and!56891 (and (=> t!45675 result!45129) b_and!56907)))

(declare-fun tb!44855 () Bool)

(declare-fun t!45677 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (x!19551 prev!408)) t!45677) tb!44855))

(declare-fun result!45131 () Bool)

(assert (=> tb!44855 (= result!45131 true)))

(assert (=> d!42966 t!45677))

(declare-fun b_and!56909 () Bool)

(assert (= b_and!56889 (and (=> t!45677 result!45131) b_and!56909)))

(declare-fun tb!44857 () Bool)

(declare-fun t!45679 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (x!19551 prev!408)) t!45679) tb!44857))

(declare-fun result!45133 () Bool)

(assert (=> tb!44857 (= result!45133 true)))

(assert (=> d!42966 t!45679))

(declare-fun b_and!56911 () Bool)

(assert (= b_and!56885 (and (=> t!45679 result!45133) b_and!56911)))

(declare-fun tb!44859 () Bool)

(declare-fun t!45681 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (x!19551 prev!408)) t!45681) tb!44859))

(declare-fun result!45135 () Bool)

(assert (=> tb!44859 (= result!45135 true)))

(assert (=> d!42966 t!45681))

(declare-fun b_and!56913 () Bool)

(assert (= b_and!56893 (and (=> t!45681 result!45135) b_and!56913)))

(declare-fun t!45683 () Bool)

(declare-fun tb!44861 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (x!19551 prev!408)) t!45683) tb!44861))

(declare-fun result!45137 () Bool)

(assert (=> tb!44861 (= result!45137 true)))

(assert (=> d!42966 t!45683))

(declare-fun b_and!56915 () Bool)

(assert (= b_and!56895 (and (=> t!45683 result!45137) b_and!56915)))

(declare-fun t!45685 () Bool)

(declare-fun tb!44863 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (x!19551 prev!408)) t!45685) tb!44863))

(declare-fun result!45139 () Bool)

(assert (=> tb!44863 (= result!45139 true)))

(assert (=> d!42966 t!45685))

(declare-fun b_and!56917 () Bool)

(assert (= b_and!56883 (and (=> t!45685 result!45139) b_and!56917)))

(declare-fun t!45687 () Bool)

(declare-fun tb!44865 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (x!19551 prev!408)) t!45687) tb!44865))

(declare-fun result!45141 () Bool)

(assert (=> tb!44865 (= result!45141 true)))

(assert (=> d!42966 t!45687))

(declare-fun b_and!56919 () Bool)

(assert (= b_and!56887 (and (=> t!45687 result!45141) b_and!56919)))

(declare-fun b_lambda!14283 () Bool)

(assert (=> (not b_lambda!14283) (not d!42966)))

(assert (=> d!42966 t!45639))

(declare-fun b_and!56921 () Bool)

(assert (= b_and!56913 (and (=> t!45639 result!45093) b_and!56921)))

(assert (=> d!42966 t!45643))

(declare-fun b_and!56923 () Bool)

(assert (= b_and!56915 (and (=> t!45643 result!45097) b_and!56923)))

(assert (=> d!42966 t!45649))

(declare-fun b_and!56925 () Bool)

(assert (= b_and!56909 (and (=> t!45649 result!45103) b_and!56925)))

(assert (=> d!42966 t!45647))

(declare-fun b_and!56927 () Bool)

(assert (= b_and!56919 (and (=> t!45647 result!45101) b_and!56927)))

(assert (=> d!42966 t!45641))

(declare-fun b_and!56929 () Bool)

(assert (= b_and!56907 (and (=> t!45641 result!45095) b_and!56929)))

(assert (=> d!42966 t!45635))

(declare-fun b_and!56931 () Bool)

(assert (= b_and!56911 (and (=> t!45635 result!45089) b_and!56931)))

(assert (=> d!42966 t!45637))

(declare-fun b_and!56933 () Bool)

(assert (= b_and!56917 (and (=> t!45637 result!45091) b_and!56933)))

(assert (=> d!42966 t!45645))

(declare-fun b_and!56935 () Bool)

(assert (= b_and!56905 (and (=> t!45645 result!45099) b_and!56935)))

(declare-fun m!54087 () Bool)

(assert (=> d!42966 m!54087))

(assert (=> d!42966 m!54045))

(assert (=> start!6780 d!42966))

(declare-fun d!42968 () Bool)

(assert (=> d!42968 (= (inv!875 x$21!39) (= (dynLambda!866 (x!19552 x$21!39)) (dynLambda!866 (y!1565 x$21!39))))))

(declare-fun b_lambda!14285 () Bool)

(assert (=> (not b_lambda!14285) (not d!42968)))

(declare-fun t!45689 () Bool)

(declare-fun tb!44867 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (x!19552 x$21!39)) t!45689) tb!44867))

(declare-fun result!45143 () Bool)

(assert (=> tb!44867 (= result!45143 true)))

(assert (=> d!42968 t!45689))

(declare-fun b_and!56937 () Bool)

(assert (= b_and!56925 (and (=> t!45689 result!45143) b_and!56937)))

(declare-fun t!45691 () Bool)

(declare-fun tb!44869 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (x!19552 x$21!39)) t!45691) tb!44869))

(declare-fun result!45145 () Bool)

(assert (=> tb!44869 (= result!45145 true)))

(assert (=> d!42968 t!45691))

(declare-fun b_and!56939 () Bool)

(assert (= b_and!56931 (and (=> t!45691 result!45145) b_and!56939)))

(declare-fun tb!44871 () Bool)

(declare-fun t!45693 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (x!19552 x$21!39)) t!45693) tb!44871))

(declare-fun result!45147 () Bool)

(assert (=> tb!44871 (= result!45147 true)))

(assert (=> d!42968 t!45693))

(declare-fun b_and!56941 () Bool)

(assert (= b_and!56929 (and (=> t!45693 result!45147) b_and!56941)))

(declare-fun t!45695 () Bool)

(declare-fun tb!44873 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (x!19552 x$21!39)) t!45695) tb!44873))

(declare-fun result!45149 () Bool)

(assert (=> tb!44873 (= result!45149 true)))

(assert (=> d!42968 t!45695))

(declare-fun b_and!56943 () Bool)

(assert (= b_and!56927 (and (=> t!45695 result!45149) b_and!56943)))

(declare-fun t!45697 () Bool)

(declare-fun tb!44875 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (x!19552 x$21!39)) t!45697) tb!44875))

(declare-fun result!45151 () Bool)

(assert (=> tb!44875 (= result!45151 true)))

(assert (=> d!42968 t!45697))

(declare-fun b_and!56945 () Bool)

(assert (= b_and!56923 (and (=> t!45697 result!45151) b_and!56945)))

(declare-fun tb!44877 () Bool)

(declare-fun t!45699 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (x!19552 x$21!39)) t!45699) tb!44877))

(declare-fun result!45153 () Bool)

(assert (=> tb!44877 (= result!45153 true)))

(assert (=> d!42968 t!45699))

(declare-fun b_and!56947 () Bool)

(assert (= b_and!56935 (and (=> t!45699 result!45153) b_and!56947)))

(declare-fun t!45701 () Bool)

(declare-fun tb!44879 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (x!19552 x$21!39)) t!45701) tb!44879))

(declare-fun result!45155 () Bool)

(assert (=> tb!44879 (= result!45155 true)))

(assert (=> d!42968 t!45701))

(declare-fun b_and!56949 () Bool)

(assert (= b_and!56921 (and (=> t!45701 result!45155) b_and!56949)))

(declare-fun t!45703 () Bool)

(declare-fun tb!44881 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (x!19552 x$21!39)) t!45703) tb!44881))

(declare-fun result!45157 () Bool)

(assert (=> tb!44881 (= result!45157 true)))

(assert (=> d!42968 t!45703))

(declare-fun b_and!56951 () Bool)

(assert (= b_and!56933 (and (=> t!45703 result!45157) b_and!56951)))

(declare-fun b_lambda!14287 () Bool)

(assert (=> (not b_lambda!14287) (not d!42968)))

(declare-fun t!45705 () Bool)

(declare-fun tb!44883 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (y!1565 x$21!39)) t!45705) tb!44883))

(declare-fun result!45159 () Bool)

(assert (=> tb!44883 (= result!45159 true)))

(assert (=> d!42968 t!45705))

(declare-fun b_and!56953 () Bool)

(assert (= b_and!56951 (and (=> t!45705 result!45159) b_and!56953)))

(declare-fun t!45707 () Bool)

(declare-fun tb!44885 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (y!1565 x$21!39)) t!45707) tb!44885))

(declare-fun result!45161 () Bool)

(assert (=> tb!44885 (= result!45161 true)))

(assert (=> d!42968 t!45707))

(declare-fun b_and!56955 () Bool)

(assert (= b_and!56945 (and (=> t!45707 result!45161) b_and!56955)))

(declare-fun tb!44887 () Bool)

(declare-fun t!45709 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (y!1565 x$21!39)) t!45709) tb!44887))

(declare-fun result!45163 () Bool)

(assert (=> tb!44887 (= result!45163 true)))

(assert (=> d!42968 t!45709))

(declare-fun b_and!56957 () Bool)

(assert (= b_and!56947 (and (=> t!45709 result!45163) b_and!56957)))

(declare-fun tb!44889 () Bool)

(declare-fun t!45711 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (y!1565 x$21!39)) t!45711) tb!44889))

(declare-fun result!45165 () Bool)

(assert (=> tb!44889 (= result!45165 true)))

(assert (=> d!42968 t!45711))

(declare-fun b_and!56959 () Bool)

(assert (= b_and!56943 (and (=> t!45711 result!45165) b_and!56959)))

(declare-fun tb!44891 () Bool)

(declare-fun t!45713 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (y!1565 x$21!39)) t!45713) tb!44891))

(declare-fun result!45167 () Bool)

(assert (=> tb!44891 (= result!45167 true)))

(assert (=> d!42968 t!45713))

(declare-fun b_and!56961 () Bool)

(assert (= b_and!56937 (and (=> t!45713 result!45167) b_and!56961)))

(declare-fun tb!44893 () Bool)

(declare-fun t!45715 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (y!1565 x$21!39)) t!45715) tb!44893))

(declare-fun result!45169 () Bool)

(assert (=> tb!44893 (= result!45169 true)))

(assert (=> d!42968 t!45715))

(declare-fun b_and!56963 () Bool)

(assert (= b_and!56941 (and (=> t!45715 result!45169) b_and!56963)))

(declare-fun t!45717 () Bool)

(declare-fun tb!44895 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (y!1565 x$21!39)) t!45717) tb!44895))

(declare-fun result!45171 () Bool)

(assert (=> tb!44895 (= result!45171 true)))

(assert (=> d!42968 t!45717))

(declare-fun b_and!56965 () Bool)

(assert (= b_and!56949 (and (=> t!45717 result!45171) b_and!56965)))

(declare-fun t!45719 () Bool)

(declare-fun tb!44897 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (y!1565 x$21!39)) t!45719) tb!44897))

(declare-fun result!45173 () Bool)

(assert (=> tb!44897 (= result!45173 true)))

(assert (=> d!42968 t!45719))

(declare-fun b_and!56967 () Bool)

(assert (= b_and!56939 (and (=> t!45719 result!45173) b_and!56967)))

(declare-fun m!54089 () Bool)

(assert (=> d!42968 m!54089))

(declare-fun m!54091 () Bool)

(assert (=> d!42968 m!54091))

(assert (=> start!6780 d!42968))

(declare-fun d!42970 () Bool)

(assert (=> d!42970 (= (inv!874 x$20!42) (= (dynLambda!866 (x!19551 x$20!42)) (dynLambda!866 (y!1564 x$20!42))))))

(declare-fun b_lambda!14289 () Bool)

(assert (=> (not b_lambda!14289) (not d!42970)))

(declare-fun t!45721 () Bool)

(declare-fun tb!44899 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (x!19551 x$20!42)) t!45721) tb!44899))

(declare-fun result!45175 () Bool)

(assert (=> tb!44899 (= result!45175 true)))

(assert (=> d!42970 t!45721))

(declare-fun b_and!56969 () Bool)

(assert (= b_and!56963 (and (=> t!45721 result!45175) b_and!56969)))

(declare-fun tb!44901 () Bool)

(declare-fun t!45723 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (x!19551 x$20!42)) t!45723) tb!44901))

(declare-fun result!45177 () Bool)

(assert (=> tb!44901 (= result!45177 true)))

(assert (=> d!42970 t!45723))

(declare-fun b_and!56971 () Bool)

(assert (= b_and!56965 (and (=> t!45723 result!45177) b_and!56971)))

(declare-fun t!45725 () Bool)

(declare-fun tb!44903 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (x!19551 x$20!42)) t!45725) tb!44903))

(declare-fun result!45179 () Bool)

(assert (=> tb!44903 (= result!45179 true)))

(assert (=> d!42970 t!45725))

(declare-fun b_and!56973 () Bool)

(assert (= b_and!56953 (and (=> t!45725 result!45179) b_and!56973)))

(declare-fun t!45727 () Bool)

(declare-fun tb!44905 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (x!19551 x$20!42)) t!45727) tb!44905))

(declare-fun result!45181 () Bool)

(assert (=> tb!44905 (= result!45181 true)))

(assert (=> d!42970 t!45727))

(declare-fun b_and!56975 () Bool)

(assert (= b_and!56959 (and (=> t!45727 result!45181) b_and!56975)))

(declare-fun tb!44907 () Bool)

(declare-fun t!45729 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (x!19551 x$20!42)) t!45729) tb!44907))

(declare-fun result!45183 () Bool)

(assert (=> tb!44907 (= result!45183 true)))

(assert (=> d!42970 t!45729))

(declare-fun b_and!56977 () Bool)

(assert (= b_and!56957 (and (=> t!45729 result!45183) b_and!56977)))

(declare-fun t!45731 () Bool)

(declare-fun tb!44909 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (x!19551 x$20!42)) t!45731) tb!44909))

(declare-fun result!45185 () Bool)

(assert (=> tb!44909 (= result!45185 true)))

(assert (=> d!42970 t!45731))

(declare-fun b_and!56979 () Bool)

(assert (= b_and!56961 (and (=> t!45731 result!45185) b_and!56979)))

(declare-fun t!45733 () Bool)

(declare-fun tb!44911 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (x!19551 x$20!42)) t!45733) tb!44911))

(declare-fun result!45187 () Bool)

(assert (=> tb!44911 (= result!45187 true)))

(assert (=> d!42970 t!45733))

(declare-fun b_and!56981 () Bool)

(assert (= b_and!56967 (and (=> t!45733 result!45187) b_and!56981)))

(declare-fun t!45735 () Bool)

(declare-fun tb!44913 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (x!19551 x$20!42)) t!45735) tb!44913))

(declare-fun result!45189 () Bool)

(assert (=> tb!44913 (= result!45189 true)))

(assert (=> d!42970 t!45735))

(declare-fun b_and!56983 () Bool)

(assert (= b_and!56955 (and (=> t!45735 result!45189) b_and!56983)))

(declare-fun b_lambda!14291 () Bool)

(assert (=> (not b_lambda!14291) (not d!42970)))

(declare-fun t!45737 () Bool)

(declare-fun tb!44915 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (y!1564 x$20!42)) t!45737) tb!44915))

(declare-fun result!45191 () Bool)

(assert (=> tb!44915 (= result!45191 true)))

(assert (=> d!42970 t!45737))

(declare-fun b_and!56985 () Bool)

(assert (= b_and!56979 (and (=> t!45737 result!45191) b_and!56985)))

(declare-fun t!45739 () Bool)

(declare-fun tb!44917 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (y!1564 x$20!42)) t!45739) tb!44917))

(declare-fun result!45193 () Bool)

(assert (=> tb!44917 (= result!45193 true)))

(assert (=> d!42970 t!45739))

(declare-fun b_and!56987 () Bool)

(assert (= b_and!56977 (and (=> t!45739 result!45193) b_and!56987)))

(declare-fun t!45741 () Bool)

(declare-fun tb!44919 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (y!1564 x$20!42)) t!45741) tb!44919))

(declare-fun result!45195 () Bool)

(assert (=> tb!44919 (= result!45195 true)))

(assert (=> d!42970 t!45741))

(declare-fun b_and!56989 () Bool)

(assert (= b_and!56969 (and (=> t!45741 result!45195) b_and!56989)))

(declare-fun tb!44921 () Bool)

(declare-fun t!45743 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (y!1564 x$20!42)) t!45743) tb!44921))

(declare-fun result!45197 () Bool)

(assert (=> tb!44921 (= result!45197 true)))

(assert (=> d!42970 t!45743))

(declare-fun b_and!56991 () Bool)

(assert (= b_and!56981 (and (=> t!45743 result!45197) b_and!56991)))

(declare-fun tb!44923 () Bool)

(declare-fun t!45745 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (y!1564 x$20!42)) t!45745) tb!44923))

(declare-fun result!45199 () Bool)

(assert (=> tb!44923 (= result!45199 true)))

(assert (=> d!42970 t!45745))

(declare-fun b_and!56993 () Bool)

(assert (= b_and!56975 (and (=> t!45745 result!45199) b_and!56993)))

(declare-fun t!45747 () Bool)

(declare-fun tb!44925 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (y!1564 x$20!42)) t!45747) tb!44925))

(declare-fun result!45201 () Bool)

(assert (=> tb!44925 (= result!45201 true)))

(assert (=> d!42970 t!45747))

(declare-fun b_and!56995 () Bool)

(assert (= b_and!56971 (and (=> t!45747 result!45201) b_and!56995)))

(declare-fun t!45749 () Bool)

(declare-fun tb!44927 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (y!1564 x$20!42)) t!45749) tb!44927))

(declare-fun result!45203 () Bool)

(assert (=> tb!44927 (= result!45203 true)))

(assert (=> d!42970 t!45749))

(declare-fun b_and!56997 () Bool)

(assert (= b_and!56973 (and (=> t!45749 result!45203) b_and!56997)))

(declare-fun t!45751 () Bool)

(declare-fun tb!44929 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (y!1564 x$20!42)) t!45751) tb!44929))

(declare-fun result!45205 () Bool)

(assert (=> tb!44929 (= result!45205 true)))

(assert (=> d!42970 t!45751))

(declare-fun b_and!56999 () Bool)

(assert (= b_and!56983 (and (=> t!45751 result!45205) b_and!56999)))

(declare-fun m!54093 () Bool)

(assert (=> d!42970 m!54093))

(declare-fun m!54095 () Bool)

(assert (=> d!42970 m!54095))

(assert (=> start!6780 d!42970))

(declare-fun d!42972 () Bool)

(assert (=> d!42972 (= (inv!874 thiss!4915) (= (dynLambda!866 (x!19551 thiss!4915)) (dynLambda!866 (y!1564 thiss!4915))))))

(declare-fun b_lambda!14293 () Bool)

(assert (=> (not b_lambda!14293) (not d!42972)))

(assert (=> d!42972 t!45661))

(declare-fun b_and!57001 () Bool)

(assert (= b_and!56995 (and (=> t!45661 result!45115) b_and!57001)))

(assert (=> d!42972 t!45665))

(declare-fun b_and!57003 () Bool)

(assert (= b_and!56987 (and (=> t!45665 result!45119) b_and!57003)))

(assert (=> d!42972 t!45659))

(declare-fun b_and!57005 () Bool)

(assert (= b_and!56989 (and (=> t!45659 result!45113) b_and!57005)))

(assert (=> d!42972 t!45653))

(declare-fun b_and!57007 () Bool)

(assert (= b_and!56991 (and (=> t!45653 result!45107) b_and!57007)))

(assert (=> d!42972 t!45655))

(declare-fun b_and!57009 () Bool)

(assert (= b_and!56993 (and (=> t!45655 result!45109) b_and!57009)))

(assert (=> d!42972 t!45657))

(declare-fun b_and!57011 () Bool)

(assert (= b_and!56985 (and (=> t!45657 result!45111) b_and!57011)))

(assert (=> d!42972 t!45651))

(declare-fun b_and!57013 () Bool)

(assert (= b_and!56997 (and (=> t!45651 result!45105) b_and!57013)))

(assert (=> d!42972 t!45663))

(declare-fun b_and!57015 () Bool)

(assert (= b_and!56999 (and (=> t!45663 result!45117) b_and!57015)))

(declare-fun b_lambda!14295 () Bool)

(assert (=> (not b_lambda!14295) (not d!42972)))

(declare-fun t!45753 () Bool)

(declare-fun tb!44931 () Bool)

(assert (=> (and b!50462 (= (y!1565 x$21!39) (y!1564 thiss!4915)) t!45753) tb!44931))

(declare-fun result!45207 () Bool)

(assert (=> tb!44931 (= result!45207 true)))

(assert (=> d!42972 t!45753))

(declare-fun b_and!57017 () Bool)

(assert (= b_and!57007 (and (=> t!45753 result!45207) b_and!57017)))

(declare-fun t!45755 () Bool)

(declare-fun tb!44933 () Bool)

(assert (=> (and b!50461 (= (y!1564 prev!408) (y!1564 thiss!4915)) t!45755) tb!44933))

(declare-fun result!45209 () Bool)

(assert (=> tb!44933 (= result!45209 true)))

(assert (=> d!42972 t!45755))

(declare-fun b_and!57019 () Bool)

(assert (= b_and!57003 (and (=> t!45755 result!45209) b_and!57019)))

(declare-fun t!45757 () Bool)

(declare-fun tb!44935 () Bool)

(assert (=> (and b!50463 (= (y!1564 thiss!4915) (y!1564 thiss!4915)) t!45757) tb!44935))

(declare-fun result!45211 () Bool)

(assert (=> tb!44935 (= result!45211 true)))

(assert (=> d!42972 t!45757))

(declare-fun b_and!57021 () Bool)

(assert (= b_and!57001 (and (=> t!45757 result!45211) b_and!57021)))

(declare-fun tb!44937 () Bool)

(declare-fun t!45759 () Bool)

(assert (=> (and b!50457 (= (y!1564 x$20!42) (y!1564 thiss!4915)) t!45759) tb!44937))

(declare-fun result!45213 () Bool)

(assert (=> tb!44937 (= result!45213 true)))

(assert (=> d!42972 t!45759))

(declare-fun b_and!57023 () Bool)

(assert (= b_and!57005 (and (=> t!45759 result!45213) b_and!57023)))

(declare-fun tb!44939 () Bool)

(declare-fun t!45761 () Bool)

(assert (=> (and b!50462 (= (x!19552 x$21!39) (y!1564 thiss!4915)) t!45761) tb!44939))

(declare-fun result!45215 () Bool)

(assert (=> tb!44939 (= result!45215 true)))

(assert (=> d!42972 t!45761))

(declare-fun b_and!57025 () Bool)

(assert (= b_and!57013 (and (=> t!45761 result!45215) b_and!57025)))

(declare-fun tb!44941 () Bool)

(declare-fun t!45763 () Bool)

(assert (=> (and b!50461 (= (x!19551 prev!408) (y!1564 thiss!4915)) t!45763) tb!44941))

(declare-fun result!45217 () Bool)

(assert (=> tb!44941 (= result!45217 true)))

(assert (=> d!42972 t!45763))

(declare-fun b_and!57027 () Bool)

(assert (= b_and!57009 (and (=> t!45763 result!45217) b_and!57027)))

(declare-fun t!45765 () Bool)

(declare-fun tb!44943 () Bool)

(assert (=> (and b!50457 (= (x!19551 x$20!42) (y!1564 thiss!4915)) t!45765) tb!44943))

(declare-fun result!45219 () Bool)

(assert (=> tb!44943 (= result!45219 true)))

(assert (=> d!42972 t!45765))

(declare-fun b_and!57029 () Bool)

(assert (= b_and!57011 (and (=> t!45765 result!45219) b_and!57029)))

(declare-fun t!45767 () Bool)

(declare-fun tb!44945 () Bool)

(assert (=> (and b!50463 (= (x!19551 thiss!4915) (y!1564 thiss!4915)) t!45767) tb!44945))

(declare-fun result!45221 () Bool)

(assert (=> tb!44945 (= result!45221 true)))

(assert (=> d!42972 t!45767))

(declare-fun b_and!57031 () Bool)

(assert (= b_and!57015 (and (=> t!45767 result!45221) b_and!57031)))

(assert (=> d!42972 m!54047))

(declare-fun m!54097 () Bool)

(assert (=> d!42972 m!54097))

(assert (=> start!6780 d!42972))

(declare-fun d!42974 () Bool)

(declare-fun c!10683 () Bool)

(assert (=> d!42974 (= c!10683 (is-Zero!233 (*!4 n1!77 n2!88)))))

(declare-fun e!26208 () Nat!249)

(assert (=> d!42974 (= (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)) e!26208)))

(declare-fun b!50473 () Bool)

(assert (=> b!50473 (= e!26208 (*!4 n1!77 n3!17))))

(declare-fun b!50474 () Bool)

(assert (=> b!50474 (= e!26208 (Succ!230 (+!5 (n!1386 (*!4 n1!77 n2!88)) (*!4 n1!77 n3!17))))))

(assert (= (and d!42974 c!10683) b!50473))

(assert (= (and d!42974 (not c!10683)) b!50474))

(assert (=> b!50474 m!54081))

(declare-fun m!54099 () Bool)

(assert (=> b!50474 m!54099))

(assert (=> bs!23490 d!42974))

(declare-fun d!42976 () Bool)

(declare-fun c!10686 () Bool)

(assert (=> d!42976 (= c!10686 (is-Zero!233 n1!77))))

(declare-fun e!26211 () Nat!249)

(assert (=> d!42976 (= (*!4 n1!77 n2!88) e!26211)))

(declare-fun b!50479 () Bool)

(assert (=> b!50479 (= e!26211 Zero!233)))

(declare-fun b!50480 () Bool)

(assert (=> b!50480 (= e!26211 (+!5 (*!4 (n!1386 n1!77) n2!88) n2!88))))

(assert (= (and d!42976 c!10686) b!50479))

(assert (= (and d!42976 (not c!10686)) b!50480))

(assert (=> b!50480 m!54061))

(assert (=> b!50480 m!54061))

(declare-fun m!54101 () Bool)

(assert (=> b!50480 m!54101))

(assert (=> bs!23490 d!42976))

(declare-fun d!42978 () Bool)

(declare-fun c!10687 () Bool)

(assert (=> d!42978 (= c!10687 (is-Zero!233 n1!77))))

(declare-fun e!26212 () Nat!249)

(assert (=> d!42978 (= (*!4 n1!77 n3!17) e!26212)))

(declare-fun b!50481 () Bool)

(assert (=> b!50481 (= e!26212 Zero!233)))

(declare-fun b!50482 () Bool)

(assert (=> b!50482 (= e!26212 (+!5 (*!4 (n!1386 n1!77) n3!17) n3!17))))

(assert (= (and d!42978 c!10687) b!50481))

(assert (= (and d!42978 (not c!10687)) b!50482))

(assert (=> b!50482 m!54063))

(assert (=> b!50482 m!54063))

(declare-fun m!54103 () Bool)

(assert (=> b!50482 m!54103))

(assert (=> bs!23490 d!42978))

(assert (=> bs!23486 d!42974))

(assert (=> bs!23486 d!42976))

(assert (=> bs!23486 d!42978))

(declare-fun c!10688 () Bool)

(declare-fun d!42980 () Bool)

(assert (=> d!42980 (= c!10688 (is-Zero!233 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17))))))

(declare-fun e!26213 () Nat!249)

(assert (=> d!42980 (= (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)) e!26213)))

(declare-fun b!50483 () Bool)

(assert (=> b!50483 (= e!26213 (+!5 n2!88 n3!17))))

(declare-fun b!50484 () Bool)

(assert (=> b!50484 (= e!26213 (Succ!230 (+!5 (n!1386 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17))) (+!5 n2!88 n3!17))))))

(assert (= (and d!42980 c!10688) b!50483))

(assert (= (and d!42980 (not c!10688)) b!50484))

(assert (=> b!50484 m!54071))

(declare-fun m!54105 () Bool)

(assert (=> b!50484 m!54105))

(assert (=> bs!23485 d!42980))

(declare-fun d!42982 () Bool)

(declare-fun c!10689 () Bool)

(assert (=> d!42982 (= c!10689 (is-Zero!233 (n!1386 n1!77)))))

(declare-fun e!26214 () Nat!249)

(assert (=> d!42982 (= (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) e!26214)))

(declare-fun b!50485 () Bool)

(assert (=> b!50485 (= e!26214 Zero!233)))

(declare-fun b!50486 () Bool)

(assert (=> b!50486 (= e!26214 (+!5 (*!4 (n!1386 (n!1386 n1!77)) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!42982 c!10689) b!50485))

(assert (= (and d!42982 (not c!10689)) b!50486))

(assert (=> b!50486 m!54071))

(declare-fun m!54107 () Bool)

(assert (=> b!50486 m!54107))

(assert (=> b!50486 m!54107))

(assert (=> b!50486 m!54071))

(declare-fun m!54109 () Bool)

(assert (=> b!50486 m!54109))

(assert (=> bs!23485 d!42982))

(declare-fun d!42984 () Bool)

(declare-fun c!10690 () Bool)

(assert (=> d!42984 (= c!10690 (is-Zero!233 n2!88))))

(declare-fun e!26215 () Nat!249)

(assert (=> d!42984 (= (+!5 n2!88 n3!17) e!26215)))

(declare-fun b!50487 () Bool)

(assert (=> b!50487 (= e!26215 n3!17)))

(declare-fun b!50488 () Bool)

(assert (=> b!50488 (= e!26215 (Succ!230 (+!5 (n!1386 n2!88) n3!17)))))

(assert (= (and d!42984 c!10690) b!50487))

(assert (= (and d!42984 (not c!10690)) b!50488))

(declare-fun m!54111 () Bool)

(assert (=> b!50488 m!54111))

(assert (=> bs!23485 d!42984))

(declare-fun d!42986 () Bool)

(assert (=> d!42986 (= (keepEvidence!68 (dynLambda!867 (evidence!677 prev!408))) true)))

(assert (=> b!50464 d!42986))

(declare-fun d!42988 () Bool)

(declare-fun c!10691 () Bool)

(assert (=> d!42988 (= c!10691 (is-Zero!233 n1!77))))

(declare-fun e!26216 () Nat!249)

(assert (=> d!42988 (= (*!4 n1!77 (+!5 n2!88 n3!17)) e!26216)))

(declare-fun b!50489 () Bool)

(assert (=> b!50489 (= e!26216 Zero!233)))

(declare-fun b!50490 () Bool)

(assert (=> b!50490 (= e!26216 (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!42988 c!10691) b!50489))

(assert (= (and d!42988 (not c!10691)) b!50490))

(assert (=> b!50490 m!54071))

(assert (=> b!50490 m!54075))

(assert (=> b!50490 m!54075))

(assert (=> b!50490 m!54071))

(assert (=> b!50490 m!54077))

(assert (=> bs!23487 d!42988))

(assert (=> bs!23487 d!42984))

(assert (=> bs!23489 d!42980))

(assert (=> bs!23489 d!42982))

(assert (=> bs!23489 d!42984))

(declare-fun b!50496 () Bool)

(declare-fun e!26219 () Unit!791)

(declare-fun Unit!793 () Unit!791)

(assert (=> b!50496 (= e!26219 Unit!793)))

(declare-fun lt!8853 () Unit!791)

(assert (=> b!50496 (= lt!8853 (associative_plus!0 (n!1386 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17))) n2!88 n3!17))))

(declare-fun d!42990 () Bool)

(assert (=> d!42990 (= (+!5 (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) n2!88) n3!17) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(declare-fun lt!8852 () Unit!791)

(assert (=> d!42990 (= lt!8852 e!26219)))

(declare-fun c!10694 () Bool)

(assert (=> d!42990 (= c!10694 (is-Zero!233 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17))))))

(assert (=> d!42990 (= (associative_plus!0 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) n2!88 n3!17) lt!8852)))

(declare-fun b!50495 () Bool)

(declare-fun Unit!794 () Unit!791)

(assert (=> b!50495 (= e!26219 Unit!794)))

(assert (= (and d!42990 c!10694) b!50495))

(assert (= (and d!42990 (not c!10694)) b!50496))

(declare-fun m!54113 () Bool)

(assert (=> b!50496 m!54113))

(assert (=> d!42990 m!54065))

(declare-fun m!54115 () Bool)

(assert (=> d!42990 m!54115))

(assert (=> d!42990 m!54115))

(declare-fun m!54117 () Bool)

(assert (=> d!42990 m!54117))

(assert (=> d!42990 m!54071))

(assert (=> d!42990 m!54065))

(assert (=> d!42990 m!54071))

(assert (=> d!42990 m!54073))

(assert (=> bs!23482 d!42990))

(declare-fun d!42992 () Bool)

(declare-fun c!10695 () Bool)

(assert (=> d!42992 (= c!10695 (is-Zero!233 (*!4 (n!1386 n1!77) n2!88)))))

(declare-fun e!26220 () Nat!249)

(assert (=> d!42992 (= (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) e!26220)))

(declare-fun b!50497 () Bool)

(assert (=> b!50497 (= e!26220 (*!4 (n!1386 n1!77) n3!17))))

(declare-fun b!50498 () Bool)

(assert (=> b!50498 (= e!26220 (Succ!230 (+!5 (n!1386 (*!4 (n!1386 n1!77) n2!88)) (*!4 (n!1386 n1!77) n3!17))))))

(assert (= (and d!42992 c!10695) b!50497))

(assert (= (and d!42992 (not c!10695)) b!50498))

(assert (=> b!50498 m!54063))

(declare-fun m!54119 () Bool)

(assert (=> b!50498 m!54119))

(assert (=> bs!23482 d!42992))

(declare-fun d!42994 () Bool)

(declare-fun c!10696 () Bool)

(assert (=> d!42994 (= c!10696 (is-Zero!233 (n!1386 n1!77)))))

(declare-fun e!26221 () Nat!249)

(assert (=> d!42994 (= (*!4 (n!1386 n1!77) n2!88) e!26221)))

(declare-fun b!50499 () Bool)

(assert (=> b!50499 (= e!26221 Zero!233)))

(declare-fun b!50500 () Bool)

(assert (=> b!50500 (= e!26221 (+!5 (*!4 (n!1386 (n!1386 n1!77)) n2!88) n2!88))))

(assert (= (and d!42994 c!10696) b!50499))

(assert (= (and d!42994 (not c!10696)) b!50500))

(declare-fun m!54121 () Bool)

(assert (=> b!50500 m!54121))

(assert (=> b!50500 m!54121))

(declare-fun m!54123 () Bool)

(assert (=> b!50500 m!54123))

(assert (=> bs!23482 d!42994))

(declare-fun d!42996 () Bool)

(declare-fun c!10697 () Bool)

(assert (=> d!42996 (= c!10697 (is-Zero!233 (n!1386 n1!77)))))

(declare-fun e!26222 () Nat!249)

(assert (=> d!42996 (= (*!4 (n!1386 n1!77) n3!17) e!26222)))

(declare-fun b!50501 () Bool)

(assert (=> b!50501 (= e!26222 Zero!233)))

(declare-fun b!50502 () Bool)

(assert (=> b!50502 (= e!26222 (+!5 (*!4 (n!1386 (n!1386 n1!77)) n3!17) n3!17))))

(assert (= (and d!42996 c!10697) b!50501))

(assert (= (and d!42996 (not c!10697)) b!50502))

(declare-fun m!54125 () Bool)

(assert (=> b!50502 m!54125))

(assert (=> b!50502 m!54125))

(declare-fun m!54127 () Bool)

(assert (=> b!50502 m!54127))

(assert (=> bs!23482 d!42996))

(declare-fun d!42998 () Bool)

(declare-fun trivial!1 () Bool)

(assert (=> d!42998 (= trivial!1 true)))

(assert (=> b!50458 d!42998))

(assert (=> bs!23488 d!42988))

(assert (=> bs!23488 d!42984))

(assert (=> bs!23484 d!42994))

(assert (=> bs!23484 d!42992))

(declare-fun c!10698 () Bool)

(declare-fun d!43000 () Bool)

(assert (=> d!43000 (= c!10698 (is-Zero!233 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17))))))

(declare-fun e!26223 () Nat!249)

(assert (=> d!43000 (= (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)) e!26223)))

(declare-fun b!50503 () Bool)

(assert (=> b!50503 (= e!26223 (+!5 n2!88 n3!17))))

(declare-fun b!50504 () Bool)

(assert (=> b!50504 (= e!26223 (Succ!230 (+!5 (n!1386 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17))) (+!5 n2!88 n3!17))))))

(assert (= (and d!43000 c!10698) b!50503))

(assert (= (and d!43000 (not c!10698)) b!50504))

(assert (=> b!50504 m!54071))

(declare-fun m!54129 () Bool)

(assert (=> b!50504 m!54129))

(assert (=> bs!23484 d!43000))

(assert (=> bs!23484 d!42996))

(assert (=> bs!23484 d!42984))

(assert (=> bs!23491 d!42994))

(assert (=> bs!23491 d!42992))

(assert (=> bs!23491 d!43000))

(assert (=> bs!23491 d!42996))

(assert (=> bs!23491 d!42984))

(declare-fun b_lambda!14297 () Bool)

(assert (= b_lambda!14295 (or (and b!50462 b_free!7025 (= (y!1565 x$21!39) (y!1564 thiss!4915))) (and b!50459 (= lambda!8365 (y!1564 thiss!4915))) (and b!50456 (= lambda!8368 (y!1564 thiss!4915))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (y!1564 thiss!4915))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (y!1564 thiss!4915))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (y!1564 thiss!4915))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (y!1564 thiss!4915))) (and b!50458 (= lambda!8363 (y!1564 thiss!4915))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (y!1564 thiss!4915))) (and b!50456 (= lambda!8367 (y!1564 thiss!4915))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (y!1564 thiss!4915))) (and b!50463 b_free!7037) b_lambda!14297)))

(declare-fun bs!23493 () Bool)

(declare-fun d!43002 () Bool)

(assert (= bs!23493 (and d!43002 b!50458)))

(assert (=> bs!23493 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23493 m!54071))

(assert (=> bs!23493 m!54071))

(assert (=> bs!23493 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (y!1564 thiss!4915)) d!42972) d!43002))

(declare-fun bs!23494 () Bool)

(declare-fun d!43004 () Bool)

(assert (= bs!23494 (and d!43004 b!50456)))

(assert (=> bs!23494 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23494 m!54079))

(assert (=> bs!23494 m!54081))

(assert (=> bs!23494 m!54079))

(assert (=> bs!23494 m!54081))

(assert (=> bs!23494 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (y!1564 thiss!4915)) d!42972) d!43004))

(declare-fun bs!23495 () Bool)

(declare-fun d!43006 () Bool)

(assert (= bs!23495 (and d!43006 b!50459)))

(assert (=> bs!23495 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23495 m!54075))

(assert (=> bs!23495 m!54071))

(assert (=> bs!23495 m!54077))

(assert (=> bs!23495 m!54071))

(assert (=> bs!23495 m!54075))

(assert (=> bs!23495 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (y!1564 thiss!4915)) d!42972) d!43006))

(declare-fun bs!23496 () Bool)

(declare-fun d!43008 () Bool)

(assert (= bs!23496 (and d!43008 b!50456)))

(assert (=> bs!23496 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23496 m!54061))

(assert (=> bs!23496 m!54063))

(assert (=> bs!23496 m!54065))

(assert (=> bs!23496 m!54065))

(assert (=> bs!23496 m!54071))

(assert (=> bs!23496 m!54073))

(assert (=> bs!23496 m!54063))

(assert (=> bs!23496 m!54071))

(assert (=> bs!23496 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (y!1564 thiss!4915)) d!42972) d!43008))

(declare-fun b_lambda!14299 () Bool)

(assert (= b_lambda!14293 (or (and b!50458 (= lambda!8363 (x!19551 thiss!4915))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (x!19551 thiss!4915))) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (x!19551 thiss!4915))) (and b!50459 (= lambda!8365 (x!19551 thiss!4915))) (and b!50456 (= lambda!8368 (x!19551 thiss!4915))) (and b!50463 b_free!7035) (and b!50456 (= lambda!8367 (x!19551 thiss!4915))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (x!19551 thiss!4915))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (x!19551 thiss!4915))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (x!19551 thiss!4915))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (x!19551 thiss!4915))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (x!19551 thiss!4915))) b_lambda!14299)))

(assert (=> (and b!50456 (= lambda!8367 (x!19551 thiss!4915)) d!42972) d!42948))

(assert (=> (and b!50459 (= lambda!8365 (x!19551 thiss!4915)) d!42972) d!42950))

(assert (=> (and b!50456 (= lambda!8368 (x!19551 thiss!4915)) d!42972) d!42952))

(assert (=> (and b!50458 (= lambda!8363 (x!19551 thiss!4915)) d!42972) d!42954))

(declare-fun b_lambda!14301 () Bool)

(assert (= b_lambda!14283 (or (and b!50461 b_free!7019) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (y!1564 prev!408))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (y!1564 prev!408))) (and b!50458 (= lambda!8363 (y!1564 prev!408))) (and b!50456 (= lambda!8368 (y!1564 prev!408))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (y!1564 prev!408))) (and b!50459 (= lambda!8365 (y!1564 prev!408))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (y!1564 prev!408))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (y!1564 prev!408))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (y!1564 prev!408))) (and b!50456 (= lambda!8367 (y!1564 prev!408))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (y!1564 prev!408))) b_lambda!14301)))

(assert (=> (and b!50458 (= lambda!8363 (y!1564 prev!408)) d!42966) d!42956))

(assert (=> (and b!50459 (= lambda!8365 (y!1564 prev!408)) d!42966) d!42958))

(assert (=> (and b!50456 (= lambda!8368 (y!1564 prev!408)) d!42966) d!42960))

(assert (=> (and b!50456 (= lambda!8367 (y!1564 prev!408)) d!42966) d!42962))

(declare-fun b_lambda!14303 () Bool)

(assert (= b_lambda!14291 (or (and b!50458 (= lambda!8363 (y!1564 x$20!42))) (and b!50457 b_free!7031) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (y!1564 x$20!42))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (y!1564 x$20!42))) (and b!50459 (= lambda!8365 (y!1564 x$20!42))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (y!1564 x$20!42))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (y!1564 x$20!42))) (and b!50456 (= lambda!8368 (y!1564 x$20!42))) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (y!1564 x$20!42))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (y!1564 x$20!42))) (and b!50456 (= lambda!8367 (y!1564 x$20!42))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (y!1564 x$20!42))) b_lambda!14303)))

(declare-fun bs!23497 () Bool)

(declare-fun d!43010 () Bool)

(assert (= bs!23497 (and d!43010 b!50458)))

(assert (=> bs!23497 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23497 m!54071))

(assert (=> bs!23497 m!54071))

(assert (=> bs!23497 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (y!1564 x$20!42)) d!42970) d!43010))

(declare-fun bs!23498 () Bool)

(declare-fun d!43012 () Bool)

(assert (= bs!23498 (and d!43012 b!50456)))

(assert (=> bs!23498 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23498 m!54061))

(assert (=> bs!23498 m!54063))

(assert (=> bs!23498 m!54065))

(assert (=> bs!23498 m!54065))

(assert (=> bs!23498 m!54071))

(assert (=> bs!23498 m!54073))

(assert (=> bs!23498 m!54063))

(assert (=> bs!23498 m!54071))

(assert (=> bs!23498 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (y!1564 x$20!42)) d!42970) d!43012))

(declare-fun bs!23499 () Bool)

(declare-fun d!43014 () Bool)

(assert (= bs!23499 (and d!43014 b!50456)))

(assert (=> bs!23499 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23499 m!54079))

(assert (=> bs!23499 m!54081))

(assert (=> bs!23499 m!54079))

(assert (=> bs!23499 m!54081))

(assert (=> bs!23499 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (y!1564 x$20!42)) d!42970) d!43014))

(declare-fun bs!23500 () Bool)

(declare-fun d!43016 () Bool)

(assert (= bs!23500 (and d!43016 b!50459)))

(assert (=> bs!23500 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23500 m!54075))

(assert (=> bs!23500 m!54071))

(assert (=> bs!23500 m!54077))

(assert (=> bs!23500 m!54071))

(assert (=> bs!23500 m!54075))

(assert (=> bs!23500 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (y!1564 x$20!42)) d!42970) d!43016))

(declare-fun b_lambda!14305 () Bool)

(assert (= b_lambda!14289 (or (and b!50457 b_free!7031 (= (y!1564 x$20!42) (x!19551 x$20!42))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (x!19551 x$20!42))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (x!19551 x$20!42))) (and b!50456 (= lambda!8368 (x!19551 x$20!42))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (x!19551 x$20!42))) (and b!50457 b_free!7029) (and b!50456 (= lambda!8367 (x!19551 x$20!42))) (and b!50458 (= lambda!8363 (x!19551 x$20!42))) (and b!50459 (= lambda!8365 (x!19551 x$20!42))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (x!19551 x$20!42))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (x!19551 x$20!42))) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (x!19551 x$20!42))) b_lambda!14305)))

(declare-fun bs!23501 () Bool)

(declare-fun d!43018 () Bool)

(assert (= bs!23501 (and d!43018 b!50456)))

(assert (=> bs!23501 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23501 m!54079))

(assert (=> bs!23501 m!54081))

(assert (=> bs!23501 m!54079))

(assert (=> bs!23501 m!54081))

(assert (=> bs!23501 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (x!19551 x$20!42)) d!42970) d!43018))

(declare-fun bs!23502 () Bool)

(declare-fun d!43020 () Bool)

(assert (= bs!23502 (and d!43020 b!50459)))

(assert (=> bs!23502 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23502 m!54075))

(assert (=> bs!23502 m!54071))

(assert (=> bs!23502 m!54077))

(assert (=> bs!23502 m!54071))

(assert (=> bs!23502 m!54075))

(assert (=> bs!23502 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (x!19551 x$20!42)) d!42970) d!43020))

(declare-fun bs!23503 () Bool)

(declare-fun d!43022 () Bool)

(assert (= bs!23503 (and d!43022 b!50458)))

(assert (=> bs!23503 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23503 m!54071))

(assert (=> bs!23503 m!54071))

(assert (=> bs!23503 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (x!19551 x$20!42)) d!42970) d!43022))

(declare-fun bs!23504 () Bool)

(declare-fun d!43024 () Bool)

(assert (= bs!23504 (and d!43024 b!50456)))

(assert (=> bs!23504 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23504 m!54061))

(assert (=> bs!23504 m!54063))

(assert (=> bs!23504 m!54065))

(assert (=> bs!23504 m!54065))

(assert (=> bs!23504 m!54071))

(assert (=> bs!23504 m!54073))

(assert (=> bs!23504 m!54063))

(assert (=> bs!23504 m!54071))

(assert (=> bs!23504 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (x!19551 x$20!42)) d!42970) d!43024))

(declare-fun b_lambda!14307 () Bool)

(assert (= b_lambda!14287 (or (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (y!1565 x$21!39))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (y!1565 x$21!39))) (and b!50462 b_free!7025) (and b!50461 b_free!7019 (= (y!1564 prev!408) (y!1565 x$21!39))) (and b!50456 (= lambda!8367 (y!1565 x$21!39))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (y!1565 x$21!39))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (y!1565 x$21!39))) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (y!1565 x$21!39))) (and b!50458 (= lambda!8363 (y!1565 x$21!39))) (and b!50461 b_free!7017 (= (x!19551 prev!408) (y!1565 x$21!39))) (and b!50459 (= lambda!8365 (y!1565 x$21!39))) (and b!50456 (= lambda!8368 (y!1565 x$21!39))) b_lambda!14307)))

(declare-fun bs!23505 () Bool)

(declare-fun d!43026 () Bool)

(assert (= bs!23505 (and d!43026 b!50456)))

(assert (=> bs!23505 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23505 m!54061))

(assert (=> bs!23505 m!54063))

(assert (=> bs!23505 m!54065))

(assert (=> bs!23505 m!54065))

(assert (=> bs!23505 m!54071))

(assert (=> bs!23505 m!54073))

(assert (=> bs!23505 m!54063))

(assert (=> bs!23505 m!54071))

(assert (=> bs!23505 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (y!1565 x$21!39)) d!42968) d!43026))

(declare-fun bs!23506 () Bool)

(declare-fun d!43028 () Bool)

(assert (= bs!23506 (and d!43028 b!50458)))

(assert (=> bs!23506 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23506 m!54071))

(assert (=> bs!23506 m!54071))

(assert (=> bs!23506 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (y!1565 x$21!39)) d!42968) d!43028))

(declare-fun bs!23507 () Bool)

(declare-fun d!43030 () Bool)

(assert (= bs!23507 (and d!43030 b!50459)))

(assert (=> bs!23507 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23507 m!54075))

(assert (=> bs!23507 m!54071))

(assert (=> bs!23507 m!54077))

(assert (=> bs!23507 m!54071))

(assert (=> bs!23507 m!54075))

(assert (=> bs!23507 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (y!1565 x$21!39)) d!42968) d!43030))

(declare-fun bs!23508 () Bool)

(declare-fun d!43032 () Bool)

(assert (= bs!23508 (and d!43032 b!50456)))

(assert (=> bs!23508 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23508 m!54079))

(assert (=> bs!23508 m!54081))

(assert (=> bs!23508 m!54079))

(assert (=> bs!23508 m!54081))

(assert (=> bs!23508 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (y!1565 x$21!39)) d!42968) d!43032))

(declare-fun b_lambda!14309 () Bool)

(assert (= b_lambda!14285 (or (and b!50461 b_free!7017 (= (x!19551 prev!408) (x!19552 x$21!39))) (and b!50458 (= lambda!8363 (x!19552 x$21!39))) (and b!50456 (= lambda!8368 (x!19552 x$21!39))) (and b!50456 (= lambda!8367 (x!19552 x$21!39))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (x!19552 x$21!39))) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (x!19552 x$21!39))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (x!19552 x$21!39))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (x!19552 x$21!39))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (x!19552 x$21!39))) (and b!50462 b_free!7023) (and b!50459 (= lambda!8365 (x!19552 x$21!39))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (x!19552 x$21!39))) b_lambda!14309)))

(declare-fun bs!23509 () Bool)

(declare-fun d!43034 () Bool)

(assert (= bs!23509 (and d!43034 b!50459)))

(assert (=> bs!23509 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23509 m!54075))

(assert (=> bs!23509 m!54071))

(assert (=> bs!23509 m!54077))

(assert (=> bs!23509 m!54071))

(assert (=> bs!23509 m!54075))

(assert (=> bs!23509 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (x!19552 x$21!39)) d!42968) d!43034))

(declare-fun bs!23510 () Bool)

(declare-fun d!43036 () Bool)

(assert (= bs!23510 (and d!43036 b!50456)))

(assert (=> bs!23510 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23510 m!54061))

(assert (=> bs!23510 m!54063))

(assert (=> bs!23510 m!54065))

(assert (=> bs!23510 m!54065))

(assert (=> bs!23510 m!54071))

(assert (=> bs!23510 m!54073))

(assert (=> bs!23510 m!54063))

(assert (=> bs!23510 m!54071))

(assert (=> bs!23510 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (x!19552 x$21!39)) d!42968) d!43036))

(declare-fun bs!23511 () Bool)

(declare-fun d!43038 () Bool)

(assert (= bs!23511 (and d!43038 b!50456)))

(assert (=> bs!23511 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23511 m!54079))

(assert (=> bs!23511 m!54081))

(assert (=> bs!23511 m!54079))

(assert (=> bs!23511 m!54081))

(assert (=> bs!23511 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (x!19552 x$21!39)) d!42968) d!43038))

(declare-fun bs!23512 () Bool)

(declare-fun d!43040 () Bool)

(assert (= bs!23512 (and d!43040 b!50458)))

(assert (=> bs!23512 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23512 m!54071))

(assert (=> bs!23512 m!54071))

(assert (=> bs!23512 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (x!19552 x$21!39)) d!42968) d!43040))

(declare-fun b_lambda!14311 () Bool)

(assert (= b_lambda!14281 (or (and b!50458 (= lambda!8363 (x!19551 prev!408))) (and b!50461 b_free!7019 (= (y!1564 prev!408) (x!19551 prev!408))) (and b!50457 b_free!7029 (= (x!19551 x$20!42) (x!19551 prev!408))) (and b!50456 (= lambda!8368 (x!19551 prev!408))) (and b!50459 (= lambda!8365 (x!19551 prev!408))) (and b!50462 b_free!7025 (= (y!1565 x$21!39) (x!19551 prev!408))) (and b!50456 (= lambda!8367 (x!19551 prev!408))) (and b!50463 b_free!7035 (= (x!19551 thiss!4915) (x!19551 prev!408))) (and b!50457 b_free!7031 (= (y!1564 x$20!42) (x!19551 prev!408))) (and b!50463 b_free!7037 (= (y!1564 thiss!4915) (x!19551 prev!408))) (and b!50461 b_free!7017) (and b!50462 b_free!7023 (= (x!19552 x$21!39) (x!19551 prev!408))) b_lambda!14311)))

(declare-fun bs!23513 () Bool)

(declare-fun d!43042 () Bool)

(assert (= bs!23513 (and d!43042 b!50456)))

(assert (=> bs!23513 (= (dynLambda!866 lambda!8367) (+!5 (+!5 (*!4 (n!1386 n1!77) n2!88) (*!4 (n!1386 n1!77) n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23513 m!54061))

(assert (=> bs!23513 m!54063))

(assert (=> bs!23513 m!54065))

(assert (=> bs!23513 m!54065))

(assert (=> bs!23513 m!54071))

(assert (=> bs!23513 m!54073))

(assert (=> bs!23513 m!54063))

(assert (=> bs!23513 m!54071))

(assert (=> bs!23513 m!54061))

(assert (=> (and b!50456 (= lambda!8367 (x!19551 prev!408)) d!42966) d!43042))

(declare-fun bs!23514 () Bool)

(declare-fun d!43044 () Bool)

(assert (= bs!23514 (and d!43044 b!50456)))

(assert (=> bs!23514 (= (dynLambda!866 lambda!8368) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))

(assert (=> bs!23514 m!54079))

(assert (=> bs!23514 m!54081))

(assert (=> bs!23514 m!54079))

(assert (=> bs!23514 m!54081))

(assert (=> bs!23514 m!54083))

(assert (=> (and b!50456 (= lambda!8368 (x!19551 prev!408)) d!42966) d!43044))

(declare-fun bs!23515 () Bool)

(declare-fun d!43046 () Bool)

(assert (= bs!23515 (and d!43046 b!50458)))

(assert (=> bs!23515 (= (dynLambda!866 lambda!8363) (*!4 n1!77 (+!5 n2!88 n3!17)))))

(assert (=> bs!23515 m!54071))

(assert (=> bs!23515 m!54071))

(assert (=> bs!23515 m!54085))

(assert (=> (and b!50458 (= lambda!8363 (x!19551 prev!408)) d!42966) d!43046))

(declare-fun bs!23516 () Bool)

(declare-fun d!43048 () Bool)

(assert (= bs!23516 (and d!43048 b!50459)))

(assert (=> bs!23516 (= (dynLambda!866 lambda!8365) (+!5 (*!4 (n!1386 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (=> bs!23516 m!54075))

(assert (=> bs!23516 m!54071))

(assert (=> bs!23516 m!54077))

(assert (=> bs!23516 m!54071))

(assert (=> bs!23516 m!54075))

(assert (=> bs!23516 m!54071))

(assert (=> (and b!50459 (= lambda!8365 (x!19551 prev!408)) d!42966) d!43048))

(push 1)

(assert b_and!57031)

(assert (not b!50486))

(assert (not b_next!37831))

(assert (not b!50502))

(assert (not bs!23507))

(assert (not b_lambda!14303))

(assert (not bs!23504))

(assert b_and!57025)

(assert (not d!42964))

(assert b_and!57027)

(assert (not b!50498))

(assert (not b_next!37849))

(assert (not bs!23500))

(assert b_and!57023)

(assert (not bs!23512))

(assert b_and!56901)

(assert (not bs!23501))

(assert (not bs!23496))

(assert b_and!57019)

(assert (not b_lambda!14301))

(assert (not b_lambda!14305))

(assert (not b_lambda!14307))

(assert (not b_next!37843))

(assert (not bs!23511))

(assert (not bs!23497))

(assert (not bs!23499))

(assert (not b!50500))

(assert (not b!50474))

(assert (not bs!23498))

(assert (not b_next!37841))

(assert (not b_next!37847))

(assert (not bs!23494))

(assert (not bs!23510))

(assert (not b_lambda!14309))

(assert (not b_next!37835))

(assert b_and!56903)

(assert (not bs!23502))

(assert (not bs!23495))

(assert (not b_lambda!14297))

(assert b_and!57021)

(assert (not bs!23505))

(assert (not bs!23514))

(assert (not b!50490))

(assert (not bs!23513))

(assert (not b!50482))

(assert (not b!50488))

(assert (not b!50480))

(assert (not bs!23508))

(assert (not bs!23506))

(assert (not b!50496))

(assert (not bs!23503))

(assert (not b_lambda!14277))

(assert b_and!56853)

(assert (not b_next!37851))

(assert (not b_next!37845))

(assert (not bs!23493))

(assert (not b_next!37837))

(assert (not b!50504))

(assert (not b_next!37833))

(assert (not b_lambda!14275))

(assert (not b_lambda!14299))

(assert (not b_lambda!14311))

(assert b_and!57029)

(assert (not b_next!37791))

(assert (not bs!23509))

(assert (not b!50484))

(assert (not bs!23516))

(assert (not bs!23515))

(assert (not b_lambda!14279))

(assert b_and!57017)

(assert (not d!42990))

(assert (not b_next!37839))

(assert b_and!56899)

(check-sat)

(pop 1)

(push 1)

(assert b_and!57031)

(assert (not b_next!37831))

(assert b_and!57025)

(assert b_and!57027)

(assert (not b_next!37849))

(assert b_and!57023)

(assert b_and!56901)

(assert b_and!57019)

(assert (not b_next!37843))

(assert (not b_next!37841))

(assert (not b_next!37847))

(assert (not b_next!37835))

(assert b_and!56903)

(assert b_and!57021)

(assert b_and!56853)

(assert (not b_next!37851))

(assert (not b_next!37845))

(assert (not b_next!37837))

(assert (not b_next!37833))

(assert b_and!57029)

(assert (not b_next!37791))

(assert b_and!57017)

(assert (not b_next!37839))

(assert b_and!56899)

(check-sat)

(pop 1)

