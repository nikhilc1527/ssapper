; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11702 () Bool)

(assert start!11702)

(declare-fun b!89607 () Bool)

(declare-fun e!48870 () Bool)

(declare-fun tp_is_empty!403 () Bool)

(declare-fun tp!17530 () Bool)

(assert (=> b!89607 (= e!48870 (and tp_is_empty!403 tp!17530))))

(declare-fun b!89608 () Bool)

(declare-fun e!48868 () Bool)

(declare-fun tp!17529 () Bool)

(assert (=> b!89608 (= e!48868 (and tp_is_empty!403 tp!17529))))

(declare-fun res!46906 () Bool)

(declare-fun e!48869 () Bool)

(assert (=> start!11702 (=> (not res!46906) (not e!48869))))

(declare-datatypes () ((T!6023 (T!6024 (val!204 Int)))))

(declare-datatypes () ((List!751 (Cons!705 (h!1109 T!6023) (t!48851 List!751)) (Nil!707))))

(declare-fun l!1621 () List!751)

(assert (=> start!11702 (= res!46906 (not (is-Nil!707 l!1621)))))

(assert (=> start!11702 e!48869))

(declare-fun e!48867 () Bool)

(assert (=> start!11702 e!48867))

(assert (=> start!11702 e!48868))

(assert (=> start!11702 true))

(assert (=> start!11702 e!48870))

(declare-fun b!89609 () Bool)

(declare-fun res!46907 () Bool)

(assert (=> b!89609 (=> (not res!46907) (not e!48869))))

(declare-datatypes () ((tuple2!422 (tuple2!423 (_1!246 T!6023) (_2!246 Int)))))

(declare-datatypes () ((List!752 (Cons!706 (h!1110 tuple2!422) (t!48852 List!752)) (Nil!708))))

(declare-fun res!45965 () List!752)

(declare-fun n!1748 () Int)

(declare-fun tlAnn!6 () List!752)

(declare-fun hint!7 (List!752 Bool) List!752)

(declare-fun $colon$colon!28 (List!752 tuple2!422) List!752)

(declare-fun trivProp2!7 (List!752 Int) Bool)

(declare-fun annotateList!9 (List!751 Int) List!752)

(assert (=> b!89609 (= res!46907 (= res!45965 (hint!7 ($colon$colon!28 tlAnn!6 (tuple2!423 (h!1109 l!1621) n!1748)) (trivProp2!7 (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) n!1748))))))

(declare-fun b!89610 () Bool)

(declare-fun tp!17528 () Bool)

(assert (=> b!89610 (= e!48867 (and tp_is_empty!403 tp!17528))))

(declare-fun b!89611 () Bool)

(declare-fun l2AtLeast!12 (List!752 Int) Bool)

(assert (=> b!89611 (= e!48869 (not (l2AtLeast!12 res!45965 n!1748)))))

(declare-fun b!89612 () Bool)

(declare-fun res!46905 () Bool)

(assert (=> b!89612 (=> (not res!46905) (not e!48869))))

(assert (=> b!89612 (= res!46905 (= tlAnn!6 (annotateList!9 (t!48851 l!1621) (+ n!1748 1))))))

(assert (= (and start!11702 res!46906) b!89612))

(assert (= (and b!89612 res!46905) b!89609))

(assert (= (and b!89609 res!46907) b!89611))

(assert (= (and start!11702 (is-Cons!705 l!1621)) b!89610))

(assert (= (and start!11702 (is-Cons!706 tlAnn!6)) b!89608))

(assert (= (and start!11702 (is-Cons!706 res!45965)) b!89607))

(declare-fun m!85598 () Bool)

(assert (=> b!89609 m!85598))

(declare-fun m!85600 () Bool)

(assert (=> b!89609 m!85600))

(assert (=> b!89609 m!85600))

(declare-fun m!85602 () Bool)

(assert (=> b!89609 m!85602))

(assert (=> b!89609 m!85598))

(assert (=> b!89609 m!85602))

(declare-fun m!85604 () Bool)

(assert (=> b!89609 m!85604))

(declare-fun m!85606 () Bool)

(assert (=> b!89611 m!85606))

(assert (=> b!89612 m!85600))

(push 1)

(assert (not b!89609))

(assert tp_is_empty!403)

(assert (not b!89608))

(assert (not b!89612))

(assert (not b!89610))

(assert (not b!89611))

(assert (not b!89607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59235 () Bool)

(assert (=> d!59235 (= (hint!7 ($colon$colon!28 tlAnn!6 (tuple2!423 (h!1109 l!1621) n!1748)) (trivProp2!7 (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) n!1748)) ($colon$colon!28 tlAnn!6 (tuple2!423 (h!1109 l!1621) n!1748)))))

(assert (=> b!89609 d!59235))

(declare-fun d!59237 () Bool)

(assert (=> d!59237 (= ($colon$colon!28 tlAnn!6 (tuple2!423 (h!1109 l!1621) n!1748)) (Cons!706 (tuple2!423 (h!1109 l!1621) n!1748) tlAnn!6))))

(assert (=> b!89609 d!59237))

(declare-fun d!59239 () Bool)

(declare-fun e!48873 () Bool)

(assert (=> d!59239 e!48873))

(declare-fun c!21961 () Bool)

(assert (=> d!59239 (= c!21961 (is-Cons!706 (annotateList!9 (t!48851 l!1621) (+ n!1748 1))))))

(assert (=> d!59239 (l2AtLeast!12 (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) (+ n!1748 1))))

(assert (=> d!59239 (= (trivProp2!7 (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) n!1748) true)))

(declare-fun b!89617 () Bool)

(assert (=> b!89617 (= e!48873 (l2AtLeast!12 (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) n!1748))))

(declare-fun lt!20424 () Bool)

(assert (=> b!89617 (= lt!20424 (trivProp2!7 (t!48852 (annotateList!9 (t!48851 l!1621) (+ n!1748 1))) n!1748))))

(declare-fun b!89618 () Bool)

(assert (=> b!89618 (= e!48873 (l2AtLeast!12 (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) n!1748))))

(assert (= (and d!59239 c!21961) b!89617))

(assert (= (and d!59239 (not c!21961)) b!89618))

(assert (=> d!59239 m!85600))

(declare-fun m!85608 () Bool)

(assert (=> d!59239 m!85608))

(assert (=> b!89617 m!85600))

(declare-fun m!85610 () Bool)

(assert (=> b!89617 m!85610))

(declare-fun m!85612 () Bool)

(assert (=> b!89617 m!85612))

(assert (=> b!89618 m!85600))

(assert (=> b!89618 m!85610))

(assert (=> b!89609 d!59239))

(declare-fun d!59241 () Bool)

(declare-fun lt!20427 () List!752)

(assert (=> d!59241 (l2AtLeast!12 lt!20427 (+ n!1748 1))))

(declare-fun e!48876 () List!752)

(assert (=> d!59241 (= lt!20427 e!48876)))

(declare-fun c!21964 () Bool)

(assert (=> d!59241 (= c!21964 (is-Nil!707 (t!48851 l!1621)))))

(assert (=> d!59241 (= (annotateList!9 (t!48851 l!1621) (+ n!1748 1)) lt!20427)))

(declare-fun b!89623 () Bool)

(assert (=> b!89623 (= e!48876 Nil!708)))

(declare-fun b!89624 () Bool)

(assert (=> b!89624 (= e!48876 (hint!7 ($colon$colon!28 (annotateList!9 (t!48851 (t!48851 l!1621)) (+ (+ n!1748 1) 1)) (tuple2!423 (h!1109 (t!48851 l!1621)) (+ n!1748 1))) (trivProp2!7 (annotateList!9 (t!48851 (t!48851 l!1621)) (+ (+ n!1748 1) 1)) (+ n!1748 1))))))

(assert (= (and d!59241 c!21964) b!89623))

(assert (= (and d!59241 (not c!21964)) b!89624))

(declare-fun m!85614 () Bool)

(assert (=> d!59241 m!85614))

(declare-fun m!85616 () Bool)

(assert (=> b!89624 m!85616))

(assert (=> b!89624 m!85616))

(declare-fun m!85618 () Bool)

(assert (=> b!89624 m!85618))

(assert (=> b!89624 m!85616))

(declare-fun m!85620 () Bool)

(assert (=> b!89624 m!85620))

(assert (=> b!89624 m!85618))

(assert (=> b!89624 m!85620))

(declare-fun m!85622 () Bool)

(assert (=> b!89624 m!85622))

(assert (=> b!89609 d!59241))

(declare-fun d!59243 () Bool)

(declare-fun res!46913 () Bool)

(declare-fun e!48881 () Bool)

(assert (=> d!59243 (=> res!46913 e!48881)))

(assert (=> d!59243 (= res!46913 (is-Nil!708 res!45965))))

(assert (=> d!59243 (= (l2AtLeast!12 res!45965 n!1748) e!48881)))

(declare-fun b!89629 () Bool)

(declare-fun e!48882 () Bool)

(assert (=> b!89629 (= e!48881 e!48882)))

(declare-fun res!46914 () Bool)

(assert (=> b!89629 (=> (not res!46914) (not e!48882))))

(assert (=> b!89629 (= res!46914 (<= n!1748 (_2!246 (h!1110 res!45965))))))

(declare-fun b!89630 () Bool)

(assert (=> b!89630 (= e!48882 (l2AtLeast!12 (t!48852 res!45965) n!1748))))

(assert (= (and d!59243 (not res!46913)) b!89629))

(assert (= (and b!89629 res!46914) b!89630))

(declare-fun m!85624 () Bool)

(assert (=> b!89630 m!85624))

(assert (=> b!89611 d!59243))

(assert (=> b!89612 d!59241))

(declare-fun b!89635 () Bool)

(declare-fun e!48885 () Bool)

(declare-fun tp!17533 () Bool)

(assert (=> b!89635 (= e!48885 (and tp_is_empty!403 tp!17533))))

(assert (=> b!89608 (= tp!17529 e!48885)))

(assert (= (and b!89608 (is-Cons!706 (t!48852 tlAnn!6))) b!89635))

(declare-fun b!89640 () Bool)

(declare-fun e!48888 () Bool)

(declare-fun tp!17536 () Bool)

(assert (=> b!89640 (= e!48888 (and tp_is_empty!403 tp!17536))))

(assert (=> b!89610 (= tp!17528 e!48888)))

(assert (= (and b!89610 (is-Cons!705 (t!48851 l!1621))) b!89640))

(declare-fun b!89641 () Bool)

(declare-fun e!48889 () Bool)

(declare-fun tp!17537 () Bool)

(assert (=> b!89641 (= e!48889 (and tp_is_empty!403 tp!17537))))

(assert (=> b!89607 (= tp!17530 e!48889)))

(assert (= (and b!89607 (is-Cons!706 (t!48852 res!45965))) b!89641))

(push 1)

(assert tp_is_empty!403)

(assert (not b!89640))

(assert (not d!59239))

(assert (not b!89624))

(assert (not b!89617))

(assert (not b!89618))

(assert (not b!89630))

(assert (not b!89635))

(assert (not b!89641))

(assert (not d!59241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

