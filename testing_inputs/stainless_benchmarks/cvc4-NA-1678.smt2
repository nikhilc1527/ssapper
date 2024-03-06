; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11690 () Bool)

(assert start!11690)

(declare-fun b!89540 () Bool)

(declare-fun res!46886 () Bool)

(declare-fun e!48824 () Bool)

(assert (=> b!89540 (=> (not res!46886) (not e!48824))))

(declare-datatypes () ((T!6019 (T!6020 (val!202 Int)))))

(declare-datatypes () ((List!747 (Cons!701 (h!1105 T!6019) (t!48846 List!747)) (Nil!703))))

(declare-fun l!1621 () List!747)

(declare-datatypes () ((tuple2!418 (tuple2!419 (_1!244 T!6019) (_2!244 Int)))))

(declare-datatypes () ((List!748 (Cons!702 (h!1106 tuple2!418) (t!48847 List!748)) (Nil!704))))

(declare-fun t!48635 () List!748)

(declare-fun n!1748 () Int)

(declare-fun tlAnn!6 () List!748)

(declare-fun $colon$colon!27 (List!748 tuple2!418) List!748)

(assert (=> b!89540 (= res!46886 (= t!48635 ($colon$colon!27 tlAnn!6 (tuple2!419 (h!1105 l!1621) n!1748))))))

(declare-fun b!89541 () Bool)

(declare-fun res!46887 () Bool)

(assert (=> b!89541 (=> (not res!46887) (not e!48824))))

(declare-fun annotateList!8 (List!747 Int) List!748)

(assert (=> b!89541 (= res!46887 (= tlAnn!6 (annotateList!8 (t!48846 l!1621) (+ n!1748 1))))))

(declare-fun b!89542 () Bool)

(declare-fun e!48823 () Bool)

(declare-fun tp_is_empty!399 () Bool)

(declare-fun tp!17500 () Bool)

(assert (=> b!89542 (= e!48823 (and tp_is_empty!399 tp!17500))))

(declare-fun b!89543 () Bool)

(declare-fun res!46888 () Bool)

(assert (=> b!89543 (=> (not res!46888) (not e!48824))))

(declare-fun lemma!4 () Bool)

(declare-fun trivProp2!6 (List!748 Int) Bool)

(assert (=> b!89543 (= res!46888 (= lemma!4 (trivProp2!6 (annotateList!8 (t!48846 l!1621) (+ n!1748 1)) n!1748)))))

(declare-fun res!46885 () Bool)

(assert (=> start!11690 (=> (not res!46885) (not e!48824))))

(assert (=> start!11690 (= res!46885 (not (is-Nil!703 l!1621)))))

(assert (=> start!11690 e!48824))

(assert (=> start!11690 true))

(assert (=> start!11690 e!48823))

(declare-fun e!48821 () Bool)

(assert (=> start!11690 e!48821))

(declare-fun e!48822 () Bool)

(assert (=> start!11690 e!48822))

(declare-fun b!89544 () Bool)

(assert (=> b!89544 (= e!48824 (not lemma!4))))

(declare-fun b!89545 () Bool)

(declare-fun tp!17502 () Bool)

(assert (=> b!89545 (= e!48821 (and tp_is_empty!399 tp!17502))))

(declare-fun b!89546 () Bool)

(declare-fun tp!17501 () Bool)

(assert (=> b!89546 (= e!48822 (and tp_is_empty!399 tp!17501))))

(assert (= (and start!11690 res!46885) b!89541))

(assert (= (and b!89541 res!46887) b!89540))

(assert (= (and b!89540 res!46886) b!89543))

(assert (= (and b!89543 res!46888) b!89544))

(assert (= (and start!11690 (is-Cons!701 l!1621)) b!89542))

(assert (= (and start!11690 (is-Cons!702 t!48635)) b!89545))

(assert (= (and start!11690 (is-Cons!702 tlAnn!6)) b!89546))

(declare-fun m!85572 () Bool)

(assert (=> b!89540 m!85572))

(declare-fun m!85574 () Bool)

(assert (=> b!89541 m!85574))

(assert (=> b!89543 m!85574))

(assert (=> b!89543 m!85574))

(declare-fun m!85576 () Bool)

(assert (=> b!89543 m!85576))

(push 1)

(assert (not b!89542))

(assert tp_is_empty!399)

(assert (not b!89546))

(assert (not b!89543))

(assert (not b!89540))

(assert (not b!89545))

(assert (not b!89541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59227 () Bool)

(declare-fun lt!20418 () List!748)

(declare-fun l2AtLeast!10 (List!748 Int) Bool)

(assert (=> d!59227 (l2AtLeast!10 lt!20418 (+ n!1748 1))))

(declare-fun e!48827 () List!748)

(assert (=> d!59227 (= lt!20418 e!48827)))

(declare-fun c!21955 () Bool)

(assert (=> d!59227 (= c!21955 (is-Nil!703 (t!48846 l!1621)))))

(assert (=> d!59227 (= (annotateList!8 (t!48846 l!1621) (+ n!1748 1)) lt!20418)))

(declare-fun b!89551 () Bool)

(assert (=> b!89551 (= e!48827 Nil!704)))

(declare-fun b!89552 () Bool)

(declare-fun hint!6 (List!748 Bool) List!748)

(assert (=> b!89552 (= e!48827 (hint!6 ($colon$colon!27 (annotateList!8 (t!48846 (t!48846 l!1621)) (+ (+ n!1748 1) 1)) (tuple2!419 (h!1105 (t!48846 l!1621)) (+ n!1748 1))) (trivProp2!6 (annotateList!8 (t!48846 (t!48846 l!1621)) (+ (+ n!1748 1) 1)) (+ n!1748 1))))))

(assert (= (and d!59227 c!21955) b!89551))

(assert (= (and d!59227 (not c!21955)) b!89552))

(declare-fun m!85578 () Bool)

(assert (=> d!59227 m!85578))

(declare-fun m!85580 () Bool)

(assert (=> b!89552 m!85580))

(assert (=> b!89552 m!85580))

(declare-fun m!85582 () Bool)

(assert (=> b!89552 m!85582))

(assert (=> b!89552 m!85580))

(declare-fun m!85584 () Bool)

(assert (=> b!89552 m!85584))

(assert (=> b!89552 m!85582))

(assert (=> b!89552 m!85584))

(declare-fun m!85586 () Bool)

(assert (=> b!89552 m!85586))

(assert (=> b!89541 d!59227))

(declare-fun d!59229 () Bool)

(declare-fun e!48830 () Bool)

(assert (=> d!59229 e!48830))

(declare-fun c!21958 () Bool)

(assert (=> d!59229 (= c!21958 (is-Cons!702 (annotateList!8 (t!48846 l!1621) (+ n!1748 1))))))

(assert (=> d!59229 (l2AtLeast!10 (annotateList!8 (t!48846 l!1621) (+ n!1748 1)) (+ n!1748 1))))

(assert (=> d!59229 (= (trivProp2!6 (annotateList!8 (t!48846 l!1621) (+ n!1748 1)) n!1748) true)))

(declare-fun b!89557 () Bool)

(assert (=> b!89557 (= e!48830 (l2AtLeast!10 (annotateList!8 (t!48846 l!1621) (+ n!1748 1)) n!1748))))

(declare-fun lt!20421 () Bool)

(assert (=> b!89557 (= lt!20421 (trivProp2!6 (t!48847 (annotateList!8 (t!48846 l!1621) (+ n!1748 1))) n!1748))))

(declare-fun b!89558 () Bool)

(assert (=> b!89558 (= e!48830 (l2AtLeast!10 (annotateList!8 (t!48846 l!1621) (+ n!1748 1)) n!1748))))

(assert (= (and d!59229 c!21958) b!89557))

(assert (= (and d!59229 (not c!21958)) b!89558))

(assert (=> d!59229 m!85574))

(declare-fun m!85588 () Bool)

(assert (=> d!59229 m!85588))

(assert (=> b!89557 m!85574))

(declare-fun m!85590 () Bool)

(assert (=> b!89557 m!85590))

(declare-fun m!85592 () Bool)

(assert (=> b!89557 m!85592))

(assert (=> b!89558 m!85574))

(assert (=> b!89558 m!85590))

(assert (=> b!89543 d!59229))

(assert (=> b!89543 d!59227))

(declare-fun d!59231 () Bool)

(assert (=> d!59231 (= ($colon$colon!27 tlAnn!6 (tuple2!419 (h!1105 l!1621) n!1748)) (Cons!702 (tuple2!419 (h!1105 l!1621) n!1748) tlAnn!6))))

(assert (=> b!89540 d!59231))

(declare-fun b!89563 () Bool)

(declare-fun e!48833 () Bool)

(declare-fun tp!17505 () Bool)

(assert (=> b!89563 (= e!48833 (and tp_is_empty!399 tp!17505))))

(assert (=> b!89542 (= tp!17500 e!48833)))

(assert (= (and b!89542 (is-Cons!701 (t!48846 l!1621))) b!89563))

(declare-fun b!89568 () Bool)

(declare-fun e!48836 () Bool)

(declare-fun tp!17508 () Bool)

(assert (=> b!89568 (= e!48836 (and tp_is_empty!399 tp!17508))))

(assert (=> b!89546 (= tp!17501 e!48836)))

(assert (= (and b!89546 (is-Cons!702 (t!48847 tlAnn!6))) b!89568))

(declare-fun b!89569 () Bool)

(declare-fun e!48837 () Bool)

(declare-fun tp!17509 () Bool)

(assert (=> b!89569 (= e!48837 (and tp_is_empty!399 tp!17509))))

(assert (=> b!89545 (= tp!17502 e!48837)))

(assert (= (and b!89545 (is-Cons!702 (t!48847 t!48635))) b!89569))

(push 1)

(assert tp_is_empty!399)

(assert (not d!59229))

(assert (not b!89552))

(assert (not d!59227))

(assert (not b!89557))

(assert (not b!89568))

(assert (not b!89569))

(assert (not b!89563))

(assert (not b!89558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

