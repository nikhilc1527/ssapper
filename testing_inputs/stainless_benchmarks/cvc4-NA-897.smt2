; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6856 () Bool)

(assert start!6856)

(declare-fun b!50824 () Bool)

(declare-fun b_free!7173 () Bool)

(declare-fun b_next!38385 () Bool)

(assert (=> b!50824 (= b_free!7173 (not b_next!38385))))

(declare-fun tp!14848 () Bool)

(declare-fun b_and!57925 () Bool)

(assert (=> b!50824 (= tp!14848 b_and!57925)))

(declare-fun b_free!7175 () Bool)

(declare-fun b_next!38387 () Bool)

(assert (=> b!50824 (= b_free!7175 (not b_next!38387))))

(declare-fun tp!14847 () Bool)

(declare-fun b_and!57927 () Bool)

(assert (=> b!50824 (= tp!14847 b_and!57927)))

(declare-fun b_free!7177 () Bool)

(declare-fun b_next!38389 () Bool)

(assert (=> b!50824 (= b_free!7177 (not b_next!38389))))

(declare-fun tp!14838 () Bool)

(declare-fun b_and!57929 () Bool)

(assert (=> b!50824 (= tp!14838 b_and!57929)))

(declare-fun b!50825 () Bool)

(declare-fun b_free!7179 () Bool)

(declare-fun b_next!38391 () Bool)

(assert (=> b!50825 (= b_free!7179 (not b_next!38391))))

(declare-fun tp!14837 () Bool)

(declare-fun b_and!57931 () Bool)

(assert (=> b!50825 (= tp!14837 b_and!57931)))

(declare-fun b_free!7181 () Bool)

(declare-fun b_next!38393 () Bool)

(assert (=> b!50825 (= b_free!7181 (not b_next!38393))))

(declare-fun tp!14839 () Bool)

(declare-fun b_and!57933 () Bool)

(assert (=> b!50825 (= tp!14839 b_and!57933)))

(declare-fun b_free!7183 () Bool)

(declare-fun b_next!38395 () Bool)

(assert (=> b!50825 (= b_free!7183 (not b_next!38395))))

(declare-fun tp!14841 () Bool)

(declare-fun b_and!57935 () Bool)

(assert (=> b!50825 (= tp!14841 b_and!57935)))

(declare-fun b!50820 () Bool)

(declare-fun b_free!7185 () Bool)

(declare-fun b_next!38397 () Bool)

(assert (=> b!50820 (= b_free!7185 (not b_next!38397))))

(declare-fun tp!14840 () Bool)

(declare-fun b_and!57937 () Bool)

(assert (=> b!50820 (= tp!14840 b_and!57937)))

(declare-fun b_free!7187 () Bool)

(declare-fun b_next!38399 () Bool)

(assert (=> b!50820 (= b_free!7187 (not b_next!38399))))

(declare-fun tp!14845 () Bool)

(declare-fun b_and!57939 () Bool)

(assert (=> b!50820 (= tp!14845 b_and!57939)))

(declare-fun b_free!7189 () Bool)

(declare-fun b_next!38401 () Bool)

(assert (=> b!50820 (= b_free!7189 (not b_next!38401))))

(declare-fun tp!14842 () Bool)

(declare-fun b_and!57941 () Bool)

(assert (=> b!50820 (= tp!14842 b_and!57941)))

(declare-fun b!50821 () Bool)

(declare-fun b_free!7191 () Bool)

(declare-fun b_next!38403 () Bool)

(assert (=> b!50821 (= b_free!7191 (not b_next!38403))))

(declare-fun tp!14846 () Bool)

(declare-fun b_and!57943 () Bool)

(assert (=> b!50821 (= tp!14846 b_and!57943)))

(declare-fun b_free!7193 () Bool)

(declare-fun b_next!38405 () Bool)

(assert (=> b!50821 (= b_free!7193 (not b_next!38405))))

(declare-fun tp!14844 () Bool)

(declare-fun b_and!57945 () Bool)

(assert (=> b!50821 (= tp!14844 b_and!57945)))

(declare-fun b_free!7195 () Bool)

(declare-fun b_next!38407 () Bool)

(assert (=> b!50821 (= b_free!7195 (not b_next!38407))))

(declare-fun tp!14843 () Bool)

(declare-fun b_and!57947 () Bool)

(assert (=> b!50821 (= tp!14843 b_and!57947)))

(declare-fun b!50823 () Bool)

(assert (=> b!50823 true))

(assert (=> b!50823 true))

(declare-fun lambda!8526 () Int)

(declare-datatypes () ((Nat!258 (Zero!242) (Succ!239 (n!1396 Nat!258)))))

(declare-datatypes () ((RAEqEvidence!472 (RAEqEvidence!473 (x!19712 Int) (y!1575 Int) (evidence!688 Int)))))

(declare-fun x$12!40 () RAEqEvidence!472)

(declare-fun b_next!38409 () Bool)

(assert (=> b!50821 (= b_next!38403 (or (and b!50823 (= lambda!8526 (x!19712 x$12!40))) b_next!38409))))

(declare-fun prev!557 () RAEqEvidence!472)

(declare-fun b_next!38411 () Bool)

(assert (=> b!50825 (= b_next!38391 (or (and b!50823 (= lambda!8526 (x!19712 prev!557))) b_next!38411))))

(declare-datatypes () ((Unit!818 (Unit!819))))

(declare-datatypes () ((RAEqEvidence!474 (RAEqEvidence!475 (x!19713 Int) (y!1576 Int) (evidence!689 Int)))))

(declare-fun thiss!5587 () RAEqEvidence!474)

(declare-fun b_next!38413 () Bool)

(assert (=> b!50824 (= b_next!38387 (or (and b!50823 (= lambda!8526 (y!1576 thiss!5587))) b_next!38413))))

(declare-fun x$11!41 () RAEqEvidence!472)

(declare-fun b_next!38415 () Bool)

(assert (=> b!50820 (= b_next!38399 (or (and b!50823 (= lambda!8526 (y!1575 x$11!41))) b_next!38415))))

(declare-fun b_next!38417 () Bool)

(assert (=> b!50825 (= b_next!38393 (or (and b!50823 (= lambda!8526 (y!1575 prev!557))) b_next!38417))))

(declare-fun b_next!38419 () Bool)

(assert (=> b!50820 (= b_next!38397 (or (and b!50823 (= lambda!8526 (x!19712 x$11!41))) b_next!38419))))

(declare-fun b_next!38421 () Bool)

(assert (=> b!50821 (= b_next!38405 (or (and b!50823 (= lambda!8526 (y!1575 x$12!40))) b_next!38421))))

(declare-fun b_next!38423 () Bool)

(assert (=> b!50824 (= b_next!38385 (or (and b!50823 (= lambda!8526 (x!19713 thiss!5587))) b_next!38423))))

(declare-fun m!54399 () Bool)

(assert (=> b!50823 m!54399))

(declare-fun lambda!8527 () Int)

(declare-fun dynLambda!881 (Int) Bool)

(assert (=> (and b!50825 b!50823 (= (dynLambda!881 lambda!8527) (dynLambda!881 (evidence!688 prev!557)))) (= lambda!8527 (evidence!688 prev!557))))

(assert (=> (and b!50820 b!50823 (= (dynLambda!881 lambda!8527) (dynLambda!881 (evidence!688 x$11!41)))) (= lambda!8527 (evidence!688 x$11!41))))

(assert (=> (and b!50821 b!50823 (= (dynLambda!881 lambda!8527) (dynLambda!881 (evidence!688 x$12!40)))) (= lambda!8527 (evidence!688 x$12!40))))

(declare-fun b_next!38425 () Bool)

(assert (=> b!50825 (= b_next!38395 (or (and b!50823 (= lambda!8527 (evidence!688 prev!557))) b_next!38425))))

(declare-fun b_next!38427 () Bool)

(assert (=> b!50820 (= b_next!38401 (or (and b!50823 (= lambda!8527 (evidence!688 x$11!41))) b_next!38427))))

(declare-fun b_next!38429 () Bool)

(assert (=> b!50821 (= b_next!38407 (or (and b!50823 (= lambda!8527 (evidence!688 x$12!40))) b_next!38429))))

(declare-fun bs!23663 () Bool)

(declare-fun b!50822 () Bool)

(assert (= bs!23663 (and b!50822 b!50823)))

(declare-fun lambda!8528 () Int)

(assert (=> bs!23663 (not (= lambda!8528 lambda!8526))))

(assert (=> b!50822 true))

(assert (=> b!50822 true))

(declare-fun b_next!38431 () Bool)

(assert (=> b!50821 (= b_next!38409 (or (and b!50822 (= lambda!8528 (x!19712 x$12!40))) b_next!38431))))

(declare-fun b_next!38433 () Bool)

(assert (=> b!50825 (= b_next!38411 (or (and b!50822 (= lambda!8528 (x!19712 prev!557))) b_next!38433))))

(declare-fun b_next!38435 () Bool)

(assert (=> b!50824 (= b_next!38413 (or (and b!50822 (= lambda!8528 (y!1576 thiss!5587))) b_next!38435))))

(declare-fun b_next!38437 () Bool)

(assert (=> b!50820 (= b_next!38415 (or (and b!50822 (= lambda!8528 (y!1575 x$11!41))) b_next!38437))))

(declare-fun b_next!38439 () Bool)

(assert (=> b!50825 (= b_next!38417 (or (and b!50822 (= lambda!8528 (y!1575 prev!557))) b_next!38439))))

(declare-fun b_next!38441 () Bool)

(assert (=> b!50820 (= b_next!38419 (or (and b!50822 (= lambda!8528 (x!19712 x$11!41))) b_next!38441))))

(declare-fun b_next!38443 () Bool)

(assert (=> b!50821 (= b_next!38421 (or (and b!50822 (= lambda!8528 (y!1575 x$12!40))) b_next!38443))))

(declare-fun b_next!38445 () Bool)

(assert (=> b!50824 (= b_next!38423 (or (and b!50822 (= lambda!8528 (x!19713 thiss!5587))) b_next!38445))))

(declare-fun n1!178 () Nat!258)

(declare-fun n2!189 () Nat!258)

(declare-fun lambda!8529 () Int)

(assert (=> bs!23663 (= (and (= n2!189 n1!178) (= n1!178 n2!189)) (= lambda!8529 lambda!8526))))

(assert (=> b!50822 (not (= lambda!8529 lambda!8528))))

(assert (=> b!50822 true))

(assert (=> b!50822 true))

(declare-fun b_next!38447 () Bool)

(assert (=> b!50821 (= b_next!38431 (or (and b!50822 (= lambda!8529 (x!19712 x$12!40))) b_next!38447))))

(declare-fun b_next!38449 () Bool)

(assert (=> b!50825 (= b_next!38433 (or (and b!50822 (= lambda!8529 (x!19712 prev!557))) b_next!38449))))

(declare-fun b_next!38451 () Bool)

(assert (=> b!50824 (= b_next!38435 (or (and b!50822 (= lambda!8529 (y!1576 thiss!5587))) b_next!38451))))

(declare-fun b_next!38453 () Bool)

(assert (=> b!50820 (= b_next!38437 (or (and b!50822 (= lambda!8529 (y!1575 x$11!41))) b_next!38453))))

(declare-fun b_next!38455 () Bool)

(assert (=> b!50825 (= b_next!38439 (or (and b!50822 (= lambda!8529 (y!1575 prev!557))) b_next!38455))))

(declare-fun b_next!38457 () Bool)

(assert (=> b!50820 (= b_next!38441 (or (and b!50822 (= lambda!8529 (x!19712 x$11!41))) b_next!38457))))

(declare-fun b_next!38459 () Bool)

(assert (=> b!50821 (= b_next!38443 (or (and b!50822 (= lambda!8529 (y!1575 x$12!40))) b_next!38459))))

(declare-fun b_next!38461 () Bool)

(assert (=> b!50824 (= b_next!38445 (or (and b!50822 (= lambda!8529 (x!19713 thiss!5587))) b_next!38461))))

(assert (=> b!50822 true))

(assert (=> b!50822 true))

(declare-fun b_next!38463 () Bool)

(declare-fun lambda!8530 () Int)

(assert (=> b!50824 (= b_next!38389 (or (and b!50822 (= lambda!8530 (evidence!689 thiss!5587))) b_next!38463))))

(declare-fun res!23320 () Bool)

(declare-fun e!26373 () Bool)

(assert (=> start!6856 (=> (not res!23320) (not e!26373))))

(assert (=> start!6856 (= res!23320 (not (is-Zero!242 n1!178)))))

(assert (=> start!6856 e!26373))

(declare-fun e!26370 () Bool)

(declare-fun inv!885 (RAEqEvidence!474) Bool)

(assert (=> start!6856 (and (inv!885 thiss!5587) e!26370)))

(declare-fun e!26372 () Bool)

(declare-fun inv!886 (RAEqEvidence!472) Bool)

(assert (=> start!6856 (and (inv!886 prev!557) e!26372)))

(declare-fun e!26371 () Bool)

(assert (=> start!6856 (and (inv!886 x$11!41) e!26371)))

(declare-fun e!26369 () Bool)

(assert (=> start!6856 (and (inv!886 x$12!40) e!26369)))

(assert (=> start!6856 true))

(declare-fun b!50816 () Bool)

(declare-fun res!23322 () Bool)

(assert (=> b!50816 (=> (not res!23322) (not e!26373))))

(assert (=> b!50816 (= res!23322 (= x$11!41 (RAEqEvidence!473 lambda!8526 lambda!8526 lambda!8527)))))

(declare-fun b!50817 () Bool)

(declare-fun res!23324 () Bool)

(assert (=> b!50817 (=> (not res!23324) (not e!26373))))

(assert (=> b!50817 (= res!23324 (= prev!557 x$11!41))))

(declare-fun b!50818 () Bool)

(declare-fun dynLambda!882 (Int) Nat!258)

(assert (=> b!50818 (= e!26373 (not (= (dynLambda!882 (y!1575 prev!557)) (dynLambda!882 (x!19713 thiss!5587)))))))

(declare-fun b!50819 () Bool)

(declare-fun res!23323 () Bool)

(assert (=> b!50819 (=> (not res!23323) (not e!26373))))

(declare-fun keepEvidence!73 (Bool) Bool)

(assert (=> b!50819 (= res!23323 (keepEvidence!73 (dynLambda!881 (evidence!688 prev!557))))))

(assert (=> b!50820 (= e!26371 (and tp!14840 tp!14845 tp!14842))))

(assert (=> b!50821 (= e!26369 (and tp!14846 tp!14844 tp!14843))))

(declare-fun res!23319 () Bool)

(assert (=> b!50822 (=> (not res!23319) (not e!26373))))

(assert (=> b!50822 (= res!23319 (= thiss!5587 (RAEqEvidence!475 lambda!8528 lambda!8529 lambda!8530)))))

(declare-fun res!23321 () Bool)

(assert (=> b!50823 (=> (not res!23321) (not e!26373))))

(assert (=> b!50823 (= res!23321 (= x$12!40 (RAEqEvidence!473 lambda!8526 lambda!8526 lambda!8527)))))

(assert (=> b!50824 (= e!26370 (and tp!14848 tp!14847 tp!14838))))

(assert (=> b!50825 (= e!26372 (and tp!14837 tp!14839 tp!14841))))

(assert (= (and start!6856 res!23320) b!50823))

(assert (= (and b!50823 res!23321) b!50816))

(assert (= (and b!50816 res!23322) b!50822))

(assert (= (and b!50822 res!23319) b!50817))

(assert (= (and b!50817 res!23324) b!50819))

(assert (= (and b!50819 res!23323) b!50818))

(assert (= start!6856 b!50824))

(assert (= start!6856 b!50825))

(assert (= start!6856 b!50820))

(assert (= start!6856 b!50821))

(declare-fun b_lambda!14475 () Bool)

(assert (=> (not b_lambda!14475) (not b!50818)))

(declare-fun t!46417 () Bool)

(declare-fun tb!45595 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (y!1575 prev!557)) t!46417) tb!45595))

(declare-fun result!45871 () Bool)

(assert (=> tb!45595 (= result!45871 true)))

(assert (=> b!50818 t!46417))

(declare-fun b_and!57949 () Bool)

(assert (= b_and!57937 (and (=> t!46417 result!45871) b_and!57949)))

(declare-fun tb!45597 () Bool)

(declare-fun t!46419 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (y!1575 prev!557)) t!46419) tb!45597))

(declare-fun result!45873 () Bool)

(assert (=> tb!45597 (= result!45873 true)))

(assert (=> b!50818 t!46419))

(declare-fun b_and!57951 () Bool)

(assert (= b_and!57943 (and (=> t!46419 result!45873) b_and!57951)))

(declare-fun t!46421 () Bool)

(declare-fun tb!45599 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (y!1575 prev!557)) t!46421) tb!45599))

(declare-fun result!45875 () Bool)

(assert (=> tb!45599 (= result!45875 true)))

(assert (=> b!50818 t!46421))

(declare-fun b_and!57953 () Bool)

(assert (= b_and!57945 (and (=> t!46421 result!45875) b_and!57953)))

(declare-fun tb!45601 () Bool)

(declare-fun t!46423 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (y!1575 prev!557)) t!46423) tb!45601))

(declare-fun result!45877 () Bool)

(assert (=> tb!45601 (= result!45877 true)))

(assert (=> b!50818 t!46423))

(declare-fun b_and!57955 () Bool)

(assert (= b_and!57939 (and (=> t!46423 result!45877) b_and!57955)))

(declare-fun tb!45603 () Bool)

(declare-fun t!46425 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (y!1575 prev!557)) t!46425) tb!45603))

(declare-fun result!45879 () Bool)

(assert (=> tb!45603 (= result!45879 true)))

(assert (=> b!50818 t!46425))

(declare-fun b_and!57957 () Bool)

(assert (= b_and!57925 (and (=> t!46425 result!45879) b_and!57957)))

(declare-fun t!46427 () Bool)

(declare-fun tb!45605 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (y!1575 prev!557)) t!46427) tb!45605))

(declare-fun result!45881 () Bool)

(assert (=> tb!45605 (= result!45881 true)))

(assert (=> b!50818 t!46427))

(declare-fun b_and!57959 () Bool)

(assert (= b_and!57933 (and (=> t!46427 result!45881) b_and!57959)))

(declare-fun t!46429 () Bool)

(declare-fun tb!45607 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (y!1575 prev!557)) t!46429) tb!45607))

(declare-fun result!45883 () Bool)

(assert (=> tb!45607 (= result!45883 true)))

(assert (=> b!50818 t!46429))

(declare-fun b_and!57961 () Bool)

(assert (= b_and!57931 (and (=> t!46429 result!45883) b_and!57961)))

(declare-fun t!46431 () Bool)

(declare-fun tb!45609 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (y!1575 prev!557)) t!46431) tb!45609))

(declare-fun result!45885 () Bool)

(assert (=> tb!45609 (= result!45885 true)))

(assert (=> b!50818 t!46431))

(declare-fun b_and!57963 () Bool)

(assert (= b_and!57927 (and (=> t!46431 result!45885) b_and!57963)))

(declare-fun b_lambda!14477 () Bool)

(assert (=> (not b_lambda!14477) (not b!50818)))

(declare-fun t!46433 () Bool)

(declare-fun tb!45611 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (x!19713 thiss!5587)) t!46433) tb!45611))

(declare-fun result!45887 () Bool)

(assert (=> tb!45611 (= result!45887 true)))

(assert (=> b!50818 t!46433))

(declare-fun b_and!57965 () Bool)

(assert (= b_and!57955 (and (=> t!46433 result!45887) b_and!57965)))

(declare-fun t!46435 () Bool)

(declare-fun tb!45613 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (x!19713 thiss!5587)) t!46435) tb!45613))

(declare-fun result!45889 () Bool)

(assert (=> tb!45613 (= result!45889 true)))

(assert (=> b!50818 t!46435))

(declare-fun b_and!57967 () Bool)

(assert (= b_and!57963 (and (=> t!46435 result!45889) b_and!57967)))

(declare-fun t!46437 () Bool)

(declare-fun tb!45615 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (x!19713 thiss!5587)) t!46437) tb!45615))

(declare-fun result!45891 () Bool)

(assert (=> tb!45615 (= result!45891 true)))

(assert (=> b!50818 t!46437))

(declare-fun b_and!57969 () Bool)

(assert (= b_and!57957 (and (=> t!46437 result!45891) b_and!57969)))

(declare-fun t!46439 () Bool)

(declare-fun tb!45617 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (x!19713 thiss!5587)) t!46439) tb!45617))

(declare-fun result!45893 () Bool)

(assert (=> tb!45617 (= result!45893 true)))

(assert (=> b!50818 t!46439))

(declare-fun b_and!57971 () Bool)

(assert (= b_and!57951 (and (=> t!46439 result!45893) b_and!57971)))

(declare-fun t!46441 () Bool)

(declare-fun tb!45619 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (x!19713 thiss!5587)) t!46441) tb!45619))

(declare-fun result!45895 () Bool)

(assert (=> tb!45619 (= result!45895 true)))

(assert (=> b!50818 t!46441))

(declare-fun b_and!57973 () Bool)

(assert (= b_and!57953 (and (=> t!46441 result!45895) b_and!57973)))

(declare-fun t!46443 () Bool)

(declare-fun tb!45621 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (x!19713 thiss!5587)) t!46443) tb!45621))

(declare-fun result!45897 () Bool)

(assert (=> tb!45621 (= result!45897 true)))

(assert (=> b!50818 t!46443))

(declare-fun b_and!57975 () Bool)

(assert (= b_and!57949 (and (=> t!46443 result!45897) b_and!57975)))

(declare-fun t!46445 () Bool)

(declare-fun tb!45623 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (x!19713 thiss!5587)) t!46445) tb!45623))

(declare-fun result!45899 () Bool)

(assert (=> tb!45623 (= result!45899 true)))

(assert (=> b!50818 t!46445))

(declare-fun b_and!57977 () Bool)

(assert (= b_and!57959 (and (=> t!46445 result!45899) b_and!57977)))

(declare-fun t!46447 () Bool)

(declare-fun tb!45625 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (x!19713 thiss!5587)) t!46447) tb!45625))

(declare-fun result!45901 () Bool)

(assert (=> tb!45625 (= result!45901 true)))

(assert (=> b!50818 t!46447))

(declare-fun b_and!57979 () Bool)

(assert (= b_and!57961 (and (=> t!46447 result!45901) b_and!57979)))

(declare-fun b_lambda!14479 () Bool)

(assert (=> (not b_lambda!14479) (not b!50819)))

(declare-fun t!46449 () Bool)

(declare-fun tb!45627 () Bool)

(assert (=> (and b!50825 (= (evidence!688 prev!557) (evidence!688 prev!557)) t!46449) tb!45627))

(declare-fun result!45903 () Bool)

(assert (=> tb!45627 (= result!45903 true)))

(assert (=> b!50819 t!46449))

(declare-fun b_and!57981 () Bool)

(assert (= b_and!57935 (and (=> t!46449 result!45903) b_and!57981)))

(declare-fun tb!45629 () Bool)

(declare-fun t!46451 () Bool)

(assert (=> (and b!50820 (= (evidence!688 x$11!41) (evidence!688 prev!557)) t!46451) tb!45629))

(declare-fun result!45905 () Bool)

(assert (=> tb!45629 (= result!45905 true)))

(assert (=> b!50819 t!46451))

(declare-fun b_and!57983 () Bool)

(assert (= b_and!57941 (and (=> t!46451 result!45905) b_and!57983)))

(declare-fun t!46453 () Bool)

(declare-fun tb!45631 () Bool)

(assert (=> (and b!50821 (= (evidence!688 x$12!40) (evidence!688 prev!557)) t!46453) tb!45631))

(declare-fun result!45907 () Bool)

(assert (=> tb!45631 (= result!45907 true)))

(assert (=> b!50819 t!46453))

(declare-fun b_and!57985 () Bool)

(assert (= b_and!57947 (and (=> t!46453 result!45907) b_and!57985)))

(declare-fun m!54401 () Bool)

(assert (=> start!6856 m!54401))

(declare-fun m!54403 () Bool)

(assert (=> start!6856 m!54403))

(declare-fun m!54405 () Bool)

(assert (=> start!6856 m!54405))

(declare-fun m!54407 () Bool)

(assert (=> start!6856 m!54407))

(declare-fun m!54409 () Bool)

(assert (=> b!50818 m!54409))

(declare-fun m!54411 () Bool)

(assert (=> b!50818 m!54411))

(declare-fun m!54413 () Bool)

(assert (=> b!50819 m!54413))

(assert (=> b!50819 m!54413))

(declare-fun m!54415 () Bool)

(assert (=> b!50819 m!54415))

(push 1)

(assert (not b_next!38461))

(assert b_and!57981)

(assert b_and!57929)

(assert b_and!57977)

(assert (not b_next!38453))

(assert b_and!57979)

(assert (not b_next!38451))

(assert (not b!50819))

(assert b_and!57967)

(assert (not b_next!38455))

(assert b_and!57983)

(assert (not b!50823))

(assert (not start!6856))

(assert b_and!57985)

(assert (not b_lambda!14479))

(assert (not b_lambda!14477))

(assert (not b_next!38457))

(assert b_and!57973)

(assert (not b_lambda!14475))

(assert (not b!50816))

(assert (not b_next!38459))

(assert (not b_next!38425))

(assert b_and!57965)

(assert b_and!57969)

(assert b_and!57971)

(assert (not b_next!38463))

(assert b_and!57975)

(assert (not b_next!38427))

(assert (not b_next!38429))

(assert (not b_next!38449))

(assert (not b_next!38447))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38461))

(assert b_and!57981)

(assert b_and!57929)

(assert b_and!57977)

(assert (not b_next!38453))

(assert b_and!57979)

(assert (not b_next!38451))

(assert b_and!57967)

(assert (not b_next!38455))

(assert b_and!57983)

(assert b_and!57985)

(assert (not b_next!38457))

(assert b_and!57973)

(assert (not b_next!38459))

(assert (not b_next!38425))

(assert b_and!57965)

(assert b_and!57969)

(assert b_and!57971)

(assert (not b_next!38463))

(assert b_and!57975)

(assert (not b_next!38427))

(assert (not b_next!38429))

(assert (not b_next!38449))

(assert (not b_next!38447))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!14481 () Bool)

(assert (= b_lambda!14477 (or (and b!50823 (= lambda!8526 (x!19713 thiss!5587))) (and b!50822 (= lambda!8529 (x!19713 thiss!5587))) (and b!50825 b_free!7181 (= (y!1575 prev!557) (x!19713 thiss!5587))) (and b!50824 b_free!7173) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (x!19713 thiss!5587))) (and b!50825 b_free!7179 (= (x!19712 prev!557) (x!19713 thiss!5587))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (x!19713 thiss!5587))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (x!19713 thiss!5587))) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (x!19713 thiss!5587))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (x!19713 thiss!5587))) (and b!50822 (= lambda!8528 (x!19713 thiss!5587))) b_lambda!14481)))

(declare-fun bs!23664 () Bool)

(declare-fun d!43382 () Bool)

(assert (= bs!23664 (and d!43382 b!50823)))

(declare-fun +!5 (Nat!258 Nat!258) Nat!258)

(assert (=> bs!23664 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(declare-fun m!54417 () Bool)

(assert (=> bs!23664 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (x!19713 thiss!5587)) b!50818) d!43382))

(declare-fun bs!23665 () Bool)

(declare-fun d!43384 () Bool)

(assert (= bs!23665 (and d!43384 b!50822)))

(assert (=> bs!23665 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(declare-fun m!54419 () Bool)

(assert (=> bs!23665 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (x!19713 thiss!5587)) b!50818) d!43384))

(declare-fun bs!23666 () Bool)

(declare-fun d!43386 () Bool)

(assert (= bs!23666 (and d!43386 b!50822)))

(assert (=> bs!23666 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(declare-fun m!54421 () Bool)

(assert (=> bs!23666 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (x!19713 thiss!5587)) b!50818) d!43386))

(declare-fun b_lambda!14483 () Bool)

(assert (= b_lambda!14475 (or (and b!50822 (= lambda!8528 (y!1575 prev!557))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (y!1575 prev!557))) (and b!50823 (= lambda!8526 (y!1575 prev!557))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (y!1575 prev!557))) (and b!50822 (= lambda!8529 (y!1575 prev!557))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (y!1575 prev!557))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (y!1575 prev!557))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (y!1575 prev!557))) (and b!50825 b_free!7181) (and b!50825 b_free!7179 (= (x!19712 prev!557) (y!1575 prev!557))) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (y!1575 prev!557))) b_lambda!14483)))

(declare-fun bs!23667 () Bool)

(declare-fun d!43388 () Bool)

(assert (= bs!23667 (and d!43388 b!50823)))

(assert (=> bs!23667 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23667 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (y!1575 prev!557)) b!50818) d!43388))

(declare-fun bs!23668 () Bool)

(declare-fun d!43390 () Bool)

(assert (= bs!23668 (and d!43390 b!50822)))

(assert (=> bs!23668 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23668 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (y!1575 prev!557)) b!50818) d!43390))

(declare-fun bs!23669 () Bool)

(declare-fun d!43392 () Bool)

(assert (= bs!23669 (and d!43392 b!50822)))

(assert (=> bs!23669 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23669 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (y!1575 prev!557)) b!50818) d!43392))

(declare-fun b_lambda!14485 () Bool)

(assert (= b_lambda!14479 (or (and b!50823 (= lambda!8527 (evidence!688 prev!557))) (and b!50825 b_free!7183) (and b!50820 b_free!7189 (= (evidence!688 x$11!41) (evidence!688 prev!557))) (and b!50821 b_free!7195 (= (evidence!688 x$12!40) (evidence!688 prev!557))) b_lambda!14485)))

(declare-fun bs!23670 () Bool)

(declare-fun d!43394 () Bool)

(assert (= bs!23670 (and d!43394 b!50823)))

(declare-fun trivial!1 () Bool)

(assert (=> bs!23670 (= (dynLambda!881 lambda!8527) trivial!1)))

(assert (=> (and b!50823 (= lambda!8527 (evidence!688 prev!557)) b!50819) d!43394))

(push 1)

(assert (not b_next!38461))

(assert b_and!57981)

(assert b_and!57929)

(assert b_and!57977)

(assert (not b_next!38453))

(assert b_and!57979)

(assert (not b_next!38451))

(assert (not b!50819))

(assert b_and!57967)

(assert (not b_next!38455))

(assert (not bs!23665))

(assert (not bs!23669))

(assert b_and!57983)

(assert (not b!50823))

(assert (not b_lambda!14481))

(assert (not start!6856))

(assert b_and!57985)

(assert (not b_lambda!14483))

(assert (not b_next!38457))

(assert b_and!57973)

(assert (not b_lambda!14485))

(assert (not bs!23668))

(assert (not b!50816))

(assert (not bs!23664))

(assert (not bs!23667))

(assert (not b_next!38459))

(assert (not b_next!38425))

(assert (not bs!23666))

(assert b_and!57965)

(assert b_and!57969)

(assert b_and!57971)

(assert (not b_next!38463))

(assert b_and!57975)

(assert (not b_next!38427))

(assert (not b_next!38429))

(assert (not b_next!38449))

(assert (not b_next!38447))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38461))

(assert b_and!57981)

(assert b_and!57929)

(assert b_and!57977)

(assert (not b_next!38453))

(assert b_and!57979)

(assert (not b_next!38451))

(assert b_and!57967)

(assert (not b_next!38455))

(assert b_and!57983)

(assert b_and!57985)

(assert (not b_next!38457))

(assert b_and!57973)

(assert (not b_next!38459))

(assert (not b_next!38425))

(assert b_and!57965)

(assert b_and!57969)

(assert b_and!57971)

(assert (not b_next!38463))

(assert b_and!57975)

(assert (not b_next!38427))

(assert (not b_next!38429))

(assert (not b_next!38449))

(assert (not b_next!38447))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43396 () Bool)

(assert (=> d!43396 (= trivial!1 true)))

(assert (=> b!50816 d!43396))

(declare-fun d!43398 () Bool)

(declare-fun c!10746 () Bool)

(assert (=> d!43398 (= c!10746 (is-Zero!242 n2!189))))

(declare-fun e!26376 () Nat!258)

(assert (=> d!43398 (= (+!5 n2!189 n1!178) e!26376)))

(declare-fun b!50834 () Bool)

(assert (=> b!50834 (= e!26376 n1!178)))

(declare-fun b!50835 () Bool)

(assert (=> b!50835 (= e!26376 (Succ!239 (+!5 (n!1396 n2!189) n1!178)))))

(assert (= (and d!43398 c!10746) b!50834))

(assert (= (and d!43398 (not c!10746)) b!50835))

(declare-fun m!54423 () Bool)

(assert (=> b!50835 m!54423))

(assert (=> bs!23668 d!43398))

(declare-fun d!43400 () Bool)

(declare-fun c!10747 () Bool)

(assert (=> d!43400 (= c!10747 (is-Zero!242 (n!1396 n1!178)))))

(declare-fun e!26377 () Nat!258)

(assert (=> d!43400 (= (+!5 (n!1396 n1!178) n2!189) e!26377)))

(declare-fun b!50836 () Bool)

(assert (=> b!50836 (= e!26377 n2!189)))

(declare-fun b!50837 () Bool)

(assert (=> b!50837 (= e!26377 (Succ!239 (+!5 (n!1396 (n!1396 n1!178)) n2!189)))))

(assert (= (and d!43400 c!10747) b!50836))

(assert (= (and d!43400 (not c!10747)) b!50837))

(declare-fun m!54425 () Bool)

(assert (=> b!50837 m!54425))

(assert (=> bs!23669 d!43400))

(declare-fun d!43402 () Bool)

(declare-fun c!10748 () Bool)

(assert (=> d!43402 (= c!10748 (is-Zero!242 n1!178))))

(declare-fun e!26378 () Nat!258)

(assert (=> d!43402 (= (+!5 n1!178 n2!189) e!26378)))

(declare-fun b!50838 () Bool)

(assert (=> b!50838 (= e!26378 n2!189)))

(declare-fun b!50839 () Bool)

(assert (=> b!50839 (= e!26378 (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (= (and d!43402 c!10748) b!50838))

(assert (= (and d!43402 (not c!10748)) b!50839))

(assert (=> b!50839 m!54421))

(assert (=> bs!23664 d!43402))

(assert (=> b!50823 d!43396))

(assert (=> bs!23667 d!43402))

(assert (=> bs!23666 d!43400))

(declare-fun d!43404 () Bool)

(assert (=> d!43404 (= (keepEvidence!73 (dynLambda!881 (evidence!688 prev!557))) true)))

(assert (=> b!50819 d!43404))

(assert (=> bs!23665 d!43398))

(declare-fun d!43406 () Bool)

(assert (=> d!43406 (= (inv!885 thiss!5587) (= (dynLambda!882 (x!19713 thiss!5587)) (dynLambda!882 (y!1576 thiss!5587))))))

(declare-fun b_lambda!14487 () Bool)

(assert (=> (not b_lambda!14487) (not d!43406)))

(assert (=> d!43406 t!46433))

(declare-fun b_and!57987 () Bool)

(assert (= b_and!57965 (and (=> t!46433 result!45887) b_and!57987)))

(assert (=> d!43406 t!46439))

(declare-fun b_and!57989 () Bool)

(assert (= b_and!57971 (and (=> t!46439 result!45893) b_and!57989)))

(assert (=> d!43406 t!46437))

(declare-fun b_and!57991 () Bool)

(assert (= b_and!57969 (and (=> t!46437 result!45891) b_and!57991)))

(assert (=> d!43406 t!46441))

(declare-fun b_and!57993 () Bool)

(assert (= b_and!57973 (and (=> t!46441 result!45895) b_and!57993)))

(assert (=> d!43406 t!46447))

(declare-fun b_and!57995 () Bool)

(assert (= b_and!57979 (and (=> t!46447 result!45901) b_and!57995)))

(assert (=> d!43406 t!46445))

(declare-fun b_and!57997 () Bool)

(assert (= b_and!57977 (and (=> t!46445 result!45899) b_and!57997)))

(assert (=> d!43406 t!46443))

(declare-fun b_and!57999 () Bool)

(assert (= b_and!57975 (and (=> t!46443 result!45897) b_and!57999)))

(assert (=> d!43406 t!46435))

(declare-fun b_and!58001 () Bool)

(assert (= b_and!57967 (and (=> t!46435 result!45889) b_and!58001)))

(declare-fun b_lambda!14489 () Bool)

(assert (=> (not b_lambda!14489) (not d!43406)))

(declare-fun t!46455 () Bool)

(declare-fun tb!45633 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (y!1576 thiss!5587)) t!46455) tb!45633))

(declare-fun result!45909 () Bool)

(assert (=> tb!45633 (= result!45909 true)))

(assert (=> d!43406 t!46455))

(declare-fun b_and!58003 () Bool)

(assert (= b_and!57991 (and (=> t!46455 result!45909) b_and!58003)))

(declare-fun tb!45635 () Bool)

(declare-fun t!46457 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (y!1576 thiss!5587)) t!46457) tb!45635))

(declare-fun result!45911 () Bool)

(assert (=> tb!45635 (= result!45911 true)))

(assert (=> d!43406 t!46457))

(declare-fun b_and!58005 () Bool)

(assert (= b_and!57993 (and (=> t!46457 result!45911) b_and!58005)))

(declare-fun tb!45637 () Bool)

(declare-fun t!46459 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (y!1576 thiss!5587)) t!46459) tb!45637))

(declare-fun result!45913 () Bool)

(assert (=> tb!45637 (= result!45913 true)))

(assert (=> d!43406 t!46459))

(declare-fun b_and!58007 () Bool)

(assert (= b_and!57989 (and (=> t!46459 result!45913) b_and!58007)))

(declare-fun tb!45639 () Bool)

(declare-fun t!46461 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (y!1576 thiss!5587)) t!46461) tb!45639))

(declare-fun result!45915 () Bool)

(assert (=> tb!45639 (= result!45915 true)))

(assert (=> d!43406 t!46461))

(declare-fun b_and!58009 () Bool)

(assert (= b_and!57987 (and (=> t!46461 result!45915) b_and!58009)))

(declare-fun t!46463 () Bool)

(declare-fun tb!45641 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (y!1576 thiss!5587)) t!46463) tb!45641))

(declare-fun result!45917 () Bool)

(assert (=> tb!45641 (= result!45917 true)))

(assert (=> d!43406 t!46463))

(declare-fun b_and!58011 () Bool)

(assert (= b_and!58001 (and (=> t!46463 result!45917) b_and!58011)))

(declare-fun tb!45643 () Bool)

(declare-fun t!46465 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (y!1576 thiss!5587)) t!46465) tb!45643))

(declare-fun result!45919 () Bool)

(assert (=> tb!45643 (= result!45919 true)))

(assert (=> d!43406 t!46465))

(declare-fun b_and!58013 () Bool)

(assert (= b_and!57997 (and (=> t!46465 result!45919) b_and!58013)))

(declare-fun t!46467 () Bool)

(declare-fun tb!45645 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (y!1576 thiss!5587)) t!46467) tb!45645))

(declare-fun result!45921 () Bool)

(assert (=> tb!45645 (= result!45921 true)))

(assert (=> d!43406 t!46467))

(declare-fun b_and!58015 () Bool)

(assert (= b_and!57999 (and (=> t!46467 result!45921) b_and!58015)))

(declare-fun t!46469 () Bool)

(declare-fun tb!45647 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (y!1576 thiss!5587)) t!46469) tb!45647))

(declare-fun result!45923 () Bool)

(assert (=> tb!45647 (= result!45923 true)))

(assert (=> d!43406 t!46469))

(declare-fun b_and!58017 () Bool)

(assert (= b_and!57995 (and (=> t!46469 result!45923) b_and!58017)))

(assert (=> d!43406 m!54411))

(declare-fun m!54427 () Bool)

(assert (=> d!43406 m!54427))

(assert (=> start!6856 d!43406))

(declare-fun d!43408 () Bool)

(assert (=> d!43408 (= (inv!886 prev!557) (= (dynLambda!882 (x!19712 prev!557)) (dynLambda!882 (y!1575 prev!557))))))

(declare-fun b_lambda!14491 () Bool)

(assert (=> (not b_lambda!14491) (not d!43408)))

(declare-fun t!46471 () Bool)

(declare-fun tb!45649 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (x!19712 prev!557)) t!46471) tb!45649))

(declare-fun result!45925 () Bool)

(assert (=> tb!45649 (= result!45925 true)))

(assert (=> d!43408 t!46471))

(declare-fun b_and!58019 () Bool)

(assert (= b_and!58003 (and (=> t!46471 result!45925) b_and!58019)))

(declare-fun tb!45651 () Bool)

(declare-fun t!46473 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (x!19712 prev!557)) t!46473) tb!45651))

(declare-fun result!45927 () Bool)

(assert (=> tb!45651 (= result!45927 true)))

(assert (=> d!43408 t!46473))

(declare-fun b_and!58021 () Bool)

(assert (= b_and!58015 (and (=> t!46473 result!45927) b_and!58021)))

(declare-fun t!46475 () Bool)

(declare-fun tb!45653 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (x!19712 prev!557)) t!46475) tb!45653))

(declare-fun result!45929 () Bool)

(assert (=> tb!45653 (= result!45929 true)))

(assert (=> d!43408 t!46475))

(declare-fun b_and!58023 () Bool)

(assert (= b_and!58009 (and (=> t!46475 result!45929) b_and!58023)))

(declare-fun tb!45655 () Bool)

(declare-fun t!46477 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (x!19712 prev!557)) t!46477) tb!45655))

(declare-fun result!45931 () Bool)

(assert (=> tb!45655 (= result!45931 true)))

(assert (=> d!43408 t!46477))

(declare-fun b_and!58025 () Bool)

(assert (= b_and!58007 (and (=> t!46477 result!45931) b_and!58025)))

(declare-fun tb!45657 () Bool)

(declare-fun t!46479 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (x!19712 prev!557)) t!46479) tb!45657))

(declare-fun result!45933 () Bool)

(assert (=> tb!45657 (= result!45933 true)))

(assert (=> d!43408 t!46479))

(declare-fun b_and!58027 () Bool)

(assert (= b_and!58005 (and (=> t!46479 result!45933) b_and!58027)))

(declare-fun tb!45659 () Bool)

(declare-fun t!46481 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (x!19712 prev!557)) t!46481) tb!45659))

(declare-fun result!45935 () Bool)

(assert (=> tb!45659 (= result!45935 true)))

(assert (=> d!43408 t!46481))

(declare-fun b_and!58029 () Bool)

(assert (= b_and!58011 (and (=> t!46481 result!45935) b_and!58029)))

(declare-fun t!46483 () Bool)

(declare-fun tb!45661 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (x!19712 prev!557)) t!46483) tb!45661))

(declare-fun result!45937 () Bool)

(assert (=> tb!45661 (= result!45937 true)))

(assert (=> d!43408 t!46483))

(declare-fun b_and!58031 () Bool)

(assert (= b_and!58013 (and (=> t!46483 result!45937) b_and!58031)))

(declare-fun t!46485 () Bool)

(declare-fun tb!45663 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (x!19712 prev!557)) t!46485) tb!45663))

(declare-fun result!45939 () Bool)

(assert (=> tb!45663 (= result!45939 true)))

(assert (=> d!43408 t!46485))

(declare-fun b_and!58033 () Bool)

(assert (= b_and!58017 (and (=> t!46485 result!45939) b_and!58033)))

(declare-fun b_lambda!14493 () Bool)

(assert (=> (not b_lambda!14493) (not d!43408)))

(assert (=> d!43408 t!46419))

(declare-fun b_and!58035 () Bool)

(assert (= b_and!58025 (and (=> t!46419 result!45873) b_and!58035)))

(assert (=> d!43408 t!46425))

(declare-fun b_and!58037 () Bool)

(assert (= b_and!58019 (and (=> t!46425 result!45879) b_and!58037)))

(assert (=> d!43408 t!46417))

(declare-fun b_and!58039 () Bool)

(assert (= b_and!58021 (and (=> t!46417 result!45871) b_and!58039)))

(assert (=> d!43408 t!46421))

(declare-fun b_and!58041 () Bool)

(assert (= b_and!58027 (and (=> t!46421 result!45875) b_and!58041)))

(assert (=> d!43408 t!46429))

(declare-fun b_and!58043 () Bool)

(assert (= b_and!58033 (and (=> t!46429 result!45883) b_and!58043)))

(assert (=> d!43408 t!46427))

(declare-fun b_and!58045 () Bool)

(assert (= b_and!58031 (and (=> t!46427 result!45881) b_and!58045)))

(assert (=> d!43408 t!46431))

(declare-fun b_and!58047 () Bool)

(assert (= b_and!58029 (and (=> t!46431 result!45885) b_and!58047)))

(assert (=> d!43408 t!46423))

(declare-fun b_and!58049 () Bool)

(assert (= b_and!58023 (and (=> t!46423 result!45877) b_and!58049)))

(declare-fun m!54429 () Bool)

(assert (=> d!43408 m!54429))

(assert (=> d!43408 m!54409))

(assert (=> start!6856 d!43408))

(declare-fun d!43410 () Bool)

(assert (=> d!43410 (= (inv!886 x$11!41) (= (dynLambda!882 (x!19712 x$11!41)) (dynLambda!882 (y!1575 x$11!41))))))

(declare-fun b_lambda!14495 () Bool)

(assert (=> (not b_lambda!14495) (not d!43410)))

(declare-fun tb!45665 () Bool)

(declare-fun t!46487 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (x!19712 x$11!41)) t!46487) tb!45665))

(declare-fun result!45941 () Bool)

(assert (=> tb!45665 (= result!45941 true)))

(assert (=> d!43410 t!46487))

(declare-fun b_and!58051 () Bool)

(assert (= b_and!58043 (and (=> t!46487 result!45941) b_and!58051)))

(declare-fun tb!45667 () Bool)

(declare-fun t!46489 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (x!19712 x$11!41)) t!46489) tb!45667))

(declare-fun result!45943 () Bool)

(assert (=> tb!45667 (= result!45943 true)))

(assert (=> d!43410 t!46489))

(declare-fun b_and!58053 () Bool)

(assert (= b_and!58037 (and (=> t!46489 result!45943) b_and!58053)))

(declare-fun t!46491 () Bool)

(declare-fun tb!45669 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (x!19712 x$11!41)) t!46491) tb!45669))

(declare-fun result!45945 () Bool)

(assert (=> tb!45669 (= result!45945 true)))

(assert (=> d!43410 t!46491))

(declare-fun b_and!58055 () Bool)

(assert (= b_and!58039 (and (=> t!46491 result!45945) b_and!58055)))

(declare-fun t!46493 () Bool)

(declare-fun tb!45671 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (x!19712 x$11!41)) t!46493) tb!45671))

(declare-fun result!45947 () Bool)

(assert (=> tb!45671 (= result!45947 true)))

(assert (=> d!43410 t!46493))

(declare-fun b_and!58057 () Bool)

(assert (= b_and!58047 (and (=> t!46493 result!45947) b_and!58057)))

(declare-fun t!46495 () Bool)

(declare-fun tb!45673 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (x!19712 x$11!41)) t!46495) tb!45673))

(declare-fun result!45949 () Bool)

(assert (=> tb!45673 (= result!45949 true)))

(assert (=> d!43410 t!46495))

(declare-fun b_and!58059 () Bool)

(assert (= b_and!58041 (and (=> t!46495 result!45949) b_and!58059)))

(declare-fun t!46497 () Bool)

(declare-fun tb!45675 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (x!19712 x$11!41)) t!46497) tb!45675))

(declare-fun result!45951 () Bool)

(assert (=> tb!45675 (= result!45951 true)))

(assert (=> d!43410 t!46497))

(declare-fun b_and!58061 () Bool)

(assert (= b_and!58049 (and (=> t!46497 result!45951) b_and!58061)))

(declare-fun tb!45677 () Bool)

(declare-fun t!46499 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (x!19712 x$11!41)) t!46499) tb!45677))

(declare-fun result!45953 () Bool)

(assert (=> tb!45677 (= result!45953 true)))

(assert (=> d!43410 t!46499))

(declare-fun b_and!58063 () Bool)

(assert (= b_and!58045 (and (=> t!46499 result!45953) b_and!58063)))

(declare-fun t!46501 () Bool)

(declare-fun tb!45679 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (x!19712 x$11!41)) t!46501) tb!45679))

(declare-fun result!45955 () Bool)

(assert (=> tb!45679 (= result!45955 true)))

(assert (=> d!43410 t!46501))

(declare-fun b_and!58065 () Bool)

(assert (= b_and!58035 (and (=> t!46501 result!45955) b_and!58065)))

(declare-fun b_lambda!14497 () Bool)

(assert (=> (not b_lambda!14497) (not d!43410)))

(declare-fun tb!45681 () Bool)

(declare-fun t!46503 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (y!1575 x$11!41)) t!46503) tb!45681))

(declare-fun result!45957 () Bool)

(assert (=> tb!45681 (= result!45957 true)))

(assert (=> d!43410 t!46503))

(declare-fun b_and!58067 () Bool)

(assert (= b_and!58059 (and (=> t!46503 result!45957) b_and!58067)))

(declare-fun t!46505 () Bool)

(declare-fun tb!45683 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (y!1575 x$11!41)) t!46505) tb!45683))

(declare-fun result!45959 () Bool)

(assert (=> tb!45683 (= result!45959 true)))

(assert (=> d!43410 t!46505))

(declare-fun b_and!58069 () Bool)

(assert (= b_and!58053 (and (=> t!46505 result!45959) b_and!58069)))

(declare-fun tb!45685 () Bool)

(declare-fun t!46507 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (y!1575 x$11!41)) t!46507) tb!45685))

(declare-fun result!45961 () Bool)

(assert (=> tb!45685 (= result!45961 true)))

(assert (=> d!43410 t!46507))

(declare-fun b_and!58071 () Bool)

(assert (= b_and!58057 (and (=> t!46507 result!45961) b_and!58071)))

(declare-fun t!46509 () Bool)

(declare-fun tb!45687 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (y!1575 x$11!41)) t!46509) tb!45687))

(declare-fun result!45963 () Bool)

(assert (=> tb!45687 (= result!45963 true)))

(assert (=> d!43410 t!46509))

(declare-fun b_and!58073 () Bool)

(assert (= b_and!58061 (and (=> t!46509 result!45963) b_and!58073)))

(declare-fun tb!45689 () Bool)

(declare-fun t!46511 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (y!1575 x$11!41)) t!46511) tb!45689))

(declare-fun result!45965 () Bool)

(assert (=> tb!45689 (= result!45965 true)))

(assert (=> d!43410 t!46511))

(declare-fun b_and!58075 () Bool)

(assert (= b_and!58063 (and (=> t!46511 result!45965) b_and!58075)))

(declare-fun t!46513 () Bool)

(declare-fun tb!45691 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (y!1575 x$11!41)) t!46513) tb!45691))

(declare-fun result!45967 () Bool)

(assert (=> tb!45691 (= result!45967 true)))

(assert (=> d!43410 t!46513))

(declare-fun b_and!58077 () Bool)

(assert (= b_and!58051 (and (=> t!46513 result!45967) b_and!58077)))

(declare-fun tb!45693 () Bool)

(declare-fun t!46515 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (y!1575 x$11!41)) t!46515) tb!45693))

(declare-fun result!45969 () Bool)

(assert (=> tb!45693 (= result!45969 true)))

(assert (=> d!43410 t!46515))

(declare-fun b_and!58079 () Bool)

(assert (= b_and!58065 (and (=> t!46515 result!45969) b_and!58079)))

(declare-fun t!46517 () Bool)

(declare-fun tb!45695 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (y!1575 x$11!41)) t!46517) tb!45695))

(declare-fun result!45971 () Bool)

(assert (=> tb!45695 (= result!45971 true)))

(assert (=> d!43410 t!46517))

(declare-fun b_and!58081 () Bool)

(assert (= b_and!58055 (and (=> t!46517 result!45971) b_and!58081)))

(declare-fun m!54431 () Bool)

(assert (=> d!43410 m!54431))

(declare-fun m!54433 () Bool)

(assert (=> d!43410 m!54433))

(assert (=> start!6856 d!43410))

(declare-fun d!43412 () Bool)

(assert (=> d!43412 (= (inv!886 x$12!40) (= (dynLambda!882 (x!19712 x$12!40)) (dynLambda!882 (y!1575 x$12!40))))))

(declare-fun b_lambda!14499 () Bool)

(assert (=> (not b_lambda!14499) (not d!43412)))

(declare-fun t!46519 () Bool)

(declare-fun tb!45697 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (x!19712 x$12!40)) t!46519) tb!45697))

(declare-fun result!45973 () Bool)

(assert (=> tb!45697 (= result!45973 true)))

(assert (=> d!43412 t!46519))

(declare-fun b_and!58083 () Bool)

(assert (= b_and!58075 (and (=> t!46519 result!45973) b_and!58083)))

(declare-fun t!46521 () Bool)

(declare-fun tb!45699 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (x!19712 x$12!40)) t!46521) tb!45699))

(declare-fun result!45975 () Bool)

(assert (=> tb!45699 (= result!45975 true)))

(assert (=> d!43412 t!46521))

(declare-fun b_and!58085 () Bool)

(assert (= b_and!58071 (and (=> t!46521 result!45975) b_and!58085)))

(declare-fun t!46523 () Bool)

(declare-fun tb!45701 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (x!19712 x$12!40)) t!46523) tb!45701))

(declare-fun result!45977 () Bool)

(assert (=> tb!45701 (= result!45977 true)))

(assert (=> d!43412 t!46523))

(declare-fun b_and!58087 () Bool)

(assert (= b_and!58079 (and (=> t!46523 result!45977) b_and!58087)))

(declare-fun tb!45703 () Bool)

(declare-fun t!46525 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (x!19712 x$12!40)) t!46525) tb!45703))

(declare-fun result!45979 () Bool)

(assert (=> tb!45703 (= result!45979 true)))

(assert (=> d!43412 t!46525))

(declare-fun b_and!58089 () Bool)

(assert (= b_and!58081 (and (=> t!46525 result!45979) b_and!58089)))

(declare-fun t!46527 () Bool)

(declare-fun tb!45705 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (x!19712 x$12!40)) t!46527) tb!45705))

(declare-fun result!45981 () Bool)

(assert (=> tb!45705 (= result!45981 true)))

(assert (=> d!43412 t!46527))

(declare-fun b_and!58091 () Bool)

(assert (= b_and!58067 (and (=> t!46527 result!45981) b_and!58091)))

(declare-fun t!46529 () Bool)

(declare-fun tb!45707 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (x!19712 x$12!40)) t!46529) tb!45707))

(declare-fun result!45983 () Bool)

(assert (=> tb!45707 (= result!45983 true)))

(assert (=> d!43412 t!46529))

(declare-fun b_and!58093 () Bool)

(assert (= b_and!58077 (and (=> t!46529 result!45983) b_and!58093)))

(declare-fun t!46531 () Bool)

(declare-fun tb!45709 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (x!19712 x$12!40)) t!46531) tb!45709))

(declare-fun result!45985 () Bool)

(assert (=> tb!45709 (= result!45985 true)))

(assert (=> d!43412 t!46531))

(declare-fun b_and!58095 () Bool)

(assert (= b_and!58069 (and (=> t!46531 result!45985) b_and!58095)))

(declare-fun tb!45711 () Bool)

(declare-fun t!46533 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (x!19712 x$12!40)) t!46533) tb!45711))

(declare-fun result!45987 () Bool)

(assert (=> tb!45711 (= result!45987 true)))

(assert (=> d!43412 t!46533))

(declare-fun b_and!58097 () Bool)

(assert (= b_and!58073 (and (=> t!46533 result!45987) b_and!58097)))

(declare-fun b_lambda!14501 () Bool)

(assert (=> (not b_lambda!14501) (not d!43412)))

(declare-fun t!46535 () Bool)

(declare-fun tb!45713 () Bool)

(assert (=> (and b!50820 (= (y!1575 x$11!41) (y!1575 x$12!40)) t!46535) tb!45713))

(declare-fun result!45989 () Bool)

(assert (=> tb!45713 (= result!45989 true)))

(assert (=> d!43412 t!46535))

(declare-fun b_and!58099 () Bool)

(assert (= b_and!58097 (and (=> t!46535 result!45989) b_and!58099)))

(declare-fun tb!45715 () Bool)

(declare-fun t!46537 () Bool)

(assert (=> (and b!50824 (= (x!19713 thiss!5587) (y!1575 x$12!40)) t!46537) tb!45715))

(declare-fun result!45991 () Bool)

(assert (=> tb!45715 (= result!45991 true)))

(assert (=> d!43412 t!46537))

(declare-fun b_and!58101 () Bool)

(assert (= b_and!58095 (and (=> t!46537 result!45991) b_and!58101)))

(declare-fun t!46539 () Bool)

(declare-fun tb!45717 () Bool)

(assert (=> (and b!50821 (= (y!1575 x$12!40) (y!1575 x$12!40)) t!46539) tb!45717))

(declare-fun result!45993 () Bool)

(assert (=> tb!45717 (= result!45993 true)))

(assert (=> d!43412 t!46539))

(declare-fun b_and!58103 () Bool)

(assert (= b_and!58091 (and (=> t!46539 result!45993) b_and!58103)))

(declare-fun tb!45719 () Bool)

(declare-fun t!46541 () Bool)

(assert (=> (and b!50820 (= (x!19712 x$11!41) (y!1575 x$12!40)) t!46541) tb!45719))

(declare-fun result!45995 () Bool)

(assert (=> tb!45719 (= result!45995 true)))

(assert (=> d!43412 t!46541))

(declare-fun b_and!58105 () Bool)

(assert (= b_and!58089 (and (=> t!46541 result!45995) b_and!58105)))

(declare-fun t!46543 () Bool)

(declare-fun tb!45721 () Bool)

(assert (=> (and b!50825 (= (x!19712 prev!557) (y!1575 x$12!40)) t!46543) tb!45721))

(declare-fun result!45997 () Bool)

(assert (=> tb!45721 (= result!45997 true)))

(assert (=> d!43412 t!46543))

(declare-fun b_and!58107 () Bool)

(assert (= b_and!58093 (and (=> t!46543 result!45997) b_and!58107)))

(declare-fun t!46545 () Bool)

(declare-fun tb!45723 () Bool)

(assert (=> (and b!50821 (= (x!19712 x$12!40) (y!1575 x$12!40)) t!46545) tb!45723))

(declare-fun result!45999 () Bool)

(assert (=> tb!45723 (= result!45999 true)))

(assert (=> d!43412 t!46545))

(declare-fun b_and!58109 () Bool)

(assert (= b_and!58087 (and (=> t!46545 result!45999) b_and!58109)))

(declare-fun tb!45725 () Bool)

(declare-fun t!46547 () Bool)

(assert (=> (and b!50824 (= (y!1576 thiss!5587) (y!1575 x$12!40)) t!46547) tb!45725))

(declare-fun result!46001 () Bool)

(assert (=> tb!45725 (= result!46001 true)))

(assert (=> d!43412 t!46547))

(declare-fun b_and!58111 () Bool)

(assert (= b_and!58085 (and (=> t!46547 result!46001) b_and!58111)))

(declare-fun tb!45727 () Bool)

(declare-fun t!46549 () Bool)

(assert (=> (and b!50825 (= (y!1575 prev!557) (y!1575 x$12!40)) t!46549) tb!45727))

(declare-fun result!46003 () Bool)

(assert (=> tb!45727 (= result!46003 true)))

(assert (=> d!43412 t!46549))

(declare-fun b_and!58113 () Bool)

(assert (= b_and!58083 (and (=> t!46549 result!46003) b_and!58113)))

(declare-fun m!54435 () Bool)

(assert (=> d!43412 m!54435))

(declare-fun m!54437 () Bool)

(assert (=> d!43412 m!54437))

(assert (=> start!6856 d!43412))

(declare-fun b_lambda!14503 () Bool)

(assert (= b_lambda!14499 (or (and b!50822 (= lambda!8528 (x!19712 x$12!40))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (x!19712 x$12!40))) (and b!50823 (= lambda!8526 (x!19712 x$12!40))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (x!19712 x$12!40))) (and b!50825 b_free!7181 (= (y!1575 prev!557) (x!19712 x$12!40))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (x!19712 x$12!40))) (and b!50822 (= lambda!8529 (x!19712 x$12!40))) (and b!50825 b_free!7179 (= (x!19712 prev!557) (x!19712 x$12!40))) (and b!50821 b_free!7191) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (x!19712 x$12!40))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (x!19712 x$12!40))) b_lambda!14503)))

(declare-fun bs!23671 () Bool)

(declare-fun d!43414 () Bool)

(assert (= bs!23671 (and d!43414 b!50822)))

(assert (=> bs!23671 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23671 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (x!19712 x$12!40)) d!43412) d!43414))

(declare-fun bs!23672 () Bool)

(declare-fun d!43416 () Bool)

(assert (= bs!23672 (and d!43416 b!50822)))

(assert (=> bs!23672 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23672 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (x!19712 x$12!40)) d!43412) d!43416))

(declare-fun bs!23673 () Bool)

(declare-fun d!43418 () Bool)

(assert (= bs!23673 (and d!43418 b!50823)))

(assert (=> bs!23673 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23673 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (x!19712 x$12!40)) d!43412) d!43418))

(declare-fun b_lambda!14505 () Bool)

(assert (= b_lambda!14495 (or (and b!50825 b_free!7181 (= (y!1575 prev!557) (x!19712 x$11!41))) (and b!50823 (= lambda!8526 (x!19712 x$11!41))) (and b!50822 (= lambda!8529 (x!19712 x$11!41))) (and b!50820 b_free!7185) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (x!19712 x$11!41))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (x!19712 x$11!41))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (x!19712 x$11!41))) (and b!50825 b_free!7179 (= (x!19712 prev!557) (x!19712 x$11!41))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (x!19712 x$11!41))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (x!19712 x$11!41))) (and b!50822 (= lambda!8528 (x!19712 x$11!41))) b_lambda!14505)))

(declare-fun bs!23674 () Bool)

(declare-fun d!43420 () Bool)

(assert (= bs!23674 (and d!43420 b!50823)))

(assert (=> bs!23674 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23674 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (x!19712 x$11!41)) d!43410) d!43420))

(declare-fun bs!23675 () Bool)

(declare-fun d!43422 () Bool)

(assert (= bs!23675 (and d!43422 b!50822)))

(assert (=> bs!23675 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23675 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (x!19712 x$11!41)) d!43410) d!43422))

(declare-fun bs!23676 () Bool)

(declare-fun d!43424 () Bool)

(assert (= bs!23676 (and d!43424 b!50822)))

(assert (=> bs!23676 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23676 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (x!19712 x$11!41)) d!43410) d!43424))

(declare-fun b_lambda!14507 () Bool)

(assert (= b_lambda!14487 (or (and b!50823 (= lambda!8526 (x!19713 thiss!5587))) (and b!50822 (= lambda!8529 (x!19713 thiss!5587))) (and b!50825 b_free!7181 (= (y!1575 prev!557) (x!19713 thiss!5587))) (and b!50824 b_free!7173) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (x!19713 thiss!5587))) (and b!50825 b_free!7179 (= (x!19712 prev!557) (x!19713 thiss!5587))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (x!19713 thiss!5587))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (x!19713 thiss!5587))) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (x!19713 thiss!5587))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (x!19713 thiss!5587))) (and b!50822 (= lambda!8528 (x!19713 thiss!5587))) b_lambda!14507)))

(assert (=> (and b!50823 (= lambda!8526 (x!19713 thiss!5587)) d!43406) d!43382))

(assert (=> (and b!50822 (= lambda!8529 (x!19713 thiss!5587)) d!43406) d!43384))

(assert (=> (and b!50822 (= lambda!8528 (x!19713 thiss!5587)) d!43406) d!43386))

(declare-fun b_lambda!14509 () Bool)

(assert (= b_lambda!14491 (or (and b!50821 b_free!7191 (= (x!19712 x$12!40) (x!19712 prev!557))) (and b!50822 (= lambda!8528 (x!19712 prev!557))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (x!19712 prev!557))) (and b!50822 (= lambda!8529 (x!19712 prev!557))) (and b!50825 b_free!7181 (= (y!1575 prev!557) (x!19712 prev!557))) (and b!50823 (= lambda!8526 (x!19712 prev!557))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (x!19712 prev!557))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (x!19712 prev!557))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (x!19712 prev!557))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (x!19712 prev!557))) (and b!50825 b_free!7179) b_lambda!14509)))

(declare-fun bs!23677 () Bool)

(declare-fun d!43426 () Bool)

(assert (= bs!23677 (and d!43426 b!50823)))

(assert (=> bs!23677 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23677 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (x!19712 prev!557)) d!43408) d!43426))

(declare-fun bs!23678 () Bool)

(declare-fun d!43428 () Bool)

(assert (= bs!23678 (and d!43428 b!50822)))

(assert (=> bs!23678 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23678 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (x!19712 prev!557)) d!43408) d!43428))

(declare-fun bs!23679 () Bool)

(declare-fun d!43430 () Bool)

(assert (= bs!23679 (and d!43430 b!50822)))

(assert (=> bs!23679 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23679 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (x!19712 prev!557)) d!43408) d!43430))

(declare-fun b_lambda!14511 () Bool)

(assert (= b_lambda!14489 (or (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (y!1576 thiss!5587))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (y!1576 thiss!5587))) (and b!50824 b_free!7175) (and b!50823 (= lambda!8526 (y!1576 thiss!5587))) (and b!50822 (= lambda!8529 (y!1576 thiss!5587))) (and b!50825 b_free!7181 (= (y!1575 prev!557) (y!1576 thiss!5587))) (and b!50825 b_free!7179 (= (x!19712 prev!557) (y!1576 thiss!5587))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (y!1576 thiss!5587))) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (y!1576 thiss!5587))) (and b!50822 (= lambda!8528 (y!1576 thiss!5587))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (y!1576 thiss!5587))) b_lambda!14511)))

(declare-fun bs!23680 () Bool)

(declare-fun d!43432 () Bool)

(assert (= bs!23680 (and d!43432 b!50822)))

(assert (=> bs!23680 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23680 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (y!1576 thiss!5587)) d!43406) d!43432))

(declare-fun bs!23681 () Bool)

(declare-fun d!43434 () Bool)

(assert (= bs!23681 (and d!43434 b!50822)))

(assert (=> bs!23681 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23681 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (y!1576 thiss!5587)) d!43406) d!43434))

(declare-fun bs!23682 () Bool)

(declare-fun d!43436 () Bool)

(assert (= bs!23682 (and d!43436 b!50823)))

(assert (=> bs!23682 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23682 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (y!1576 thiss!5587)) d!43406) d!43436))

(declare-fun b_lambda!14513 () Bool)

(assert (= b_lambda!14493 (or (and b!50822 (= lambda!8528 (y!1575 prev!557))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (y!1575 prev!557))) (and b!50823 (= lambda!8526 (y!1575 prev!557))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (y!1575 prev!557))) (and b!50822 (= lambda!8529 (y!1575 prev!557))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (y!1575 prev!557))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (y!1575 prev!557))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (y!1575 prev!557))) (and b!50825 b_free!7181) (and b!50825 b_free!7179 (= (x!19712 prev!557) (y!1575 prev!557))) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (y!1575 prev!557))) b_lambda!14513)))

(assert (=> (and b!50823 (= lambda!8526 (y!1575 prev!557)) d!43408) d!43388))

(assert (=> (and b!50822 (= lambda!8529 (y!1575 prev!557)) d!43408) d!43390))

(assert (=> (and b!50822 (= lambda!8528 (y!1575 prev!557)) d!43408) d!43392))

(declare-fun b_lambda!14515 () Bool)

(assert (= b_lambda!14501 (or (and b!50822 (= lambda!8528 (y!1575 x$12!40))) (and b!50822 (= lambda!8529 (y!1575 x$12!40))) (and b!50821 b_free!7193) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (y!1575 x$12!40))) (and b!50820 b_free!7187 (= (y!1575 x$11!41) (y!1575 x$12!40))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (y!1575 x$12!40))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (y!1575 x$12!40))) (and b!50823 (= lambda!8526 (y!1575 x$12!40))) (and b!50825 b_free!7179 (= (x!19712 prev!557) (y!1575 x$12!40))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (y!1575 x$12!40))) (and b!50825 b_free!7181 (= (y!1575 prev!557) (y!1575 x$12!40))) b_lambda!14515)))

(declare-fun bs!23683 () Bool)

(declare-fun d!43438 () Bool)

(assert (= bs!23683 (and d!43438 b!50822)))

(assert (=> bs!23683 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23683 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (y!1575 x$12!40)) d!43412) d!43438))

(declare-fun bs!23684 () Bool)

(declare-fun d!43440 () Bool)

(assert (= bs!23684 (and d!43440 b!50823)))

(assert (=> bs!23684 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23684 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (y!1575 x$12!40)) d!43412) d!43440))

(declare-fun bs!23685 () Bool)

(declare-fun d!43442 () Bool)

(assert (= bs!23685 (and d!43442 b!50822)))

(assert (=> bs!23685 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23685 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (y!1575 x$12!40)) d!43412) d!43442))

(declare-fun b_lambda!14517 () Bool)

(assert (= b_lambda!14497 (or (and b!50825 b_free!7179 (= (x!19712 prev!557) (y!1575 x$11!41))) (and b!50820 b_free!7187) (and b!50825 b_free!7181 (= (y!1575 prev!557) (y!1575 x$11!41))) (and b!50821 b_free!7193 (= (y!1575 x$12!40) (y!1575 x$11!41))) (and b!50821 b_free!7191 (= (x!19712 x$12!40) (y!1575 x$11!41))) (and b!50822 (= lambda!8528 (y!1575 x$11!41))) (and b!50822 (= lambda!8529 (y!1575 x$11!41))) (and b!50820 b_free!7185 (= (x!19712 x$11!41) (y!1575 x$11!41))) (and b!50823 (= lambda!8526 (y!1575 x$11!41))) (and b!50824 b_free!7175 (= (y!1576 thiss!5587) (y!1575 x$11!41))) (and b!50824 b_free!7173 (= (x!19713 thiss!5587) (y!1575 x$11!41))) b_lambda!14517)))

(declare-fun bs!23686 () Bool)

(declare-fun d!43444 () Bool)

(assert (= bs!23686 (and d!43444 b!50823)))

(assert (=> bs!23686 (= (dynLambda!882 lambda!8526) (+!5 n1!178 n2!189))))

(assert (=> bs!23686 m!54417))

(assert (=> (and b!50823 (= lambda!8526 (y!1575 x$11!41)) d!43410) d!43444))

(declare-fun bs!23687 () Bool)

(declare-fun d!43446 () Bool)

(assert (= bs!23687 (and d!43446 b!50822)))

(assert (=> bs!23687 (= (dynLambda!882 lambda!8528) (Succ!239 (+!5 (n!1396 n1!178) n2!189)))))

(assert (=> bs!23687 m!54421))

(assert (=> (and b!50822 (= lambda!8528 (y!1575 x$11!41)) d!43410) d!43446))

(declare-fun bs!23688 () Bool)

(declare-fun d!43448 () Bool)

(assert (= bs!23688 (and d!43448 b!50822)))

(assert (=> bs!23688 (= (dynLambda!882 lambda!8529) (+!5 n2!189 n1!178))))

(assert (=> bs!23688 m!54419))

(assert (=> (and b!50822 (= lambda!8529 (y!1575 x$11!41)) d!43410) d!43448))

(push 1)

(assert (not b_lambda!14513))

(assert (not bs!23687))

(assert (not bs!23680))

(assert (not b_next!38461))

(assert b_and!57981)

(assert (not bs!23675))

(assert (not bs!23677))

(assert b_and!57929)

(assert b_and!58107)

(assert (not bs!23688))

(assert (not b_lambda!14507))

(assert (not b!50839))

(assert b_and!58109)

(assert (not b_lambda!14515))

(assert (not b_next!38453))

(assert (not bs!23683))

(assert (not b_lambda!14509))

(assert (not b_next!38451))

(assert (not bs!23672))

(assert b_and!58101)

(assert (not b_next!38455))

(assert (not bs!23682))

(assert b_and!57983)

(assert (not b_lambda!14503))

(assert (not b_lambda!14481))

(assert b_and!57985)

(assert (not b_lambda!14483))

(assert (not b_next!38457))

(assert (not bs!23679))

(assert (not b_lambda!14485))

(assert (not bs!23686))

(assert (not bs!23676))

(assert b_and!58111)

(assert (not b_lambda!14505))

(assert (not bs!23674))

(assert (not bs!23685))

(assert b_and!58103)

(assert (not b!50837))

(assert (not b_next!38459))

(assert (not b_next!38425))

(assert b_and!58113)

(assert (not bs!23673))

(assert (not bs!23684))

(assert (not bs!23678))

(assert (not b!50835))

(assert (not bs!23671))

(assert (not b_next!38463))

(assert (not bs!23681))

(assert b_and!58105)

(assert (not b_next!38427))

(assert b_and!58099)

(assert (not b_lambda!14511))

(assert (not b_next!38429))

(assert (not b_lambda!14517))

(assert (not b_next!38449))

(assert (not b_next!38447))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38461))

(assert b_and!57981)

(assert b_and!57929)

(assert b_and!58107)

(assert b_and!58109)

(assert (not b_next!38453))

(assert (not b_next!38451))

(assert b_and!58101)

(assert (not b_next!38455))

(assert b_and!57983)

(assert b_and!57985)

(assert (not b_next!38457))

(assert b_and!58111)

(assert b_and!58103)

(assert (not b_next!38459))

(assert (not b_next!38425))

(assert b_and!58113)

(assert (not b_next!38463))

(assert b_and!58105)

(assert (not b_next!38427))

(assert b_and!58099)

(assert (not b_next!38429))

(assert (not b_next!38449))

(assert (not b_next!38447))

(check-sat)

(pop 1)

