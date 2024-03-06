; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11682 () Bool)

(assert start!11682)

(declare-fun b!89493 () Bool)

(declare-fun res!46868 () Bool)

(declare-fun e!48793 () Bool)

(assert (=> b!89493 (=> (not res!46868) (not e!48793))))

(declare-datatypes () ((T!6017 (T!6018 (val!201 Int)))))

(declare-datatypes () ((tuple2!416 (tuple2!417 (_1!243 T!6017) (_2!243 Int)))))

(declare-datatypes () ((List!745 (Cons!699 (h!1103 tuple2!416) (t!48843 List!745)) (Nil!701))))

(declare-fun l!1626 () List!745)

(declare-datatypes () ((List!746 (Cons!700 (h!1104 T!6017) (t!48844 List!746)) (Nil!702))))

(declare-fun l!1621 () List!746)

(declare-fun n!1748 () Int)

(declare-fun annotateList!7 (List!746 Int) List!745)

(assert (=> b!89493 (= res!46868 (= l!1626 (annotateList!7 (t!48844 l!1621) (+ n!1748 1))))))

(declare-fun b!89494 () Bool)

(declare-fun e!48792 () Bool)

(declare-fun tp_is_empty!397 () Bool)

(declare-fun tp!17484 () Bool)

(assert (=> b!89494 (= e!48792 (and tp_is_empty!397 tp!17484))))

(declare-fun res!46865 () Bool)

(assert (=> start!11682 (=> (not res!46865) (not e!48793))))

(assert (=> start!11682 (= res!46865 (not (is-Nil!702 l!1621)))))

(assert (=> start!11682 e!48793))

(declare-fun e!48791 () Bool)

(assert (=> start!11682 e!48791))

(declare-fun e!48795 () Bool)

(assert (=> start!11682 e!48795))

(declare-fun e!48794 () Bool)

(assert (=> start!11682 e!48794))

(assert (=> start!11682 true))

(assert (=> start!11682 e!48792))

(declare-fun b!89495 () Bool)

(declare-fun tp!17483 () Bool)

(assert (=> b!89495 (= e!48791 (and tp_is_empty!397 tp!17483))))

(declare-fun b!89496 () Bool)

(declare-fun tp!17485 () Bool)

(assert (=> b!89496 (= e!48795 (and tp_is_empty!397 tp!17485))))

(declare-fun b!89497 () Bool)

(declare-fun res!46869 () Bool)

(assert (=> b!89497 (=> (not res!46869) (not e!48793))))

(declare-fun tlAnn!6 () List!745)

(assert (=> b!89497 (= res!46869 (= tlAnn!6 (annotateList!7 (t!48844 l!1621) (+ n!1748 1))))))

(declare-fun b!89498 () Bool)

(declare-fun res!46867 () Bool)

(assert (=> b!89498 (=> (not res!46867) (not e!48793))))

(declare-fun n!1753 () Int)

(assert (=> b!89498 (= res!46867 (= n!1753 n!1748))))

(declare-fun b!89499 () Bool)

(declare-fun res!46866 () Bool)

(assert (=> b!89499 (=> (not res!46866) (not e!48793))))

(declare-fun t!48636 () List!745)

(declare-fun $colon$colon!26 (List!745 tuple2!416) List!745)

(assert (=> b!89499 (= res!46866 (= t!48636 ($colon$colon!26 tlAnn!6 (tuple2!417 (h!1104 l!1621) n!1748))))))

(declare-fun b!89500 () Bool)

(declare-fun tp!17482 () Bool)

(assert (=> b!89500 (= e!48794 (and tp_is_empty!397 tp!17482))))

(declare-fun b!89501 () Bool)

(declare-fun l2AtLeast!9 (List!745 Int) Bool)

(assert (=> b!89501 (= e!48793 (not (l2AtLeast!9 l!1626 (+ n!1753 1))))))

(assert (= (and start!11682 res!46865) b!89497))

(assert (= (and b!89497 res!46869) b!89499))

(assert (= (and b!89499 res!46866) b!89493))

(assert (= (and b!89493 res!46868) b!89498))

(assert (= (and b!89498 res!46867) b!89501))

(assert (= (and start!11682 (is-Cons!699 l!1626)) b!89495))

(assert (= (and start!11682 (is-Cons!700 l!1621)) b!89496))

(assert (= (and start!11682 (is-Cons!699 t!48636)) b!89500))

(assert (= (and start!11682 (is-Cons!699 tlAnn!6)) b!89494))

(declare-fun m!85554 () Bool)

(assert (=> b!89493 m!85554))

(assert (=> b!89497 m!85554))

(declare-fun m!85556 () Bool)

(assert (=> b!89499 m!85556))

(declare-fun m!85558 () Bool)

(assert (=> b!89501 m!85558))

(push 1)

(assert (not b!89494))

(assert (not b!89499))

(assert (not b!89501))

(assert (not b!89495))

(assert (not b!89497))

(assert (not b!89500))

(assert tp_is_empty!397)

(assert (not b!89493))

(assert (not b!89496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59221 () Bool)

(declare-fun res!46874 () Bool)

(declare-fun e!48800 () Bool)

(assert (=> d!59221 (=> res!46874 e!48800)))

(assert (=> d!59221 (= res!46874 (is-Nil!701 l!1626))))

(assert (=> d!59221 (= (l2AtLeast!9 l!1626 (+ n!1753 1)) e!48800)))

(declare-fun b!89506 () Bool)

(declare-fun e!48801 () Bool)

(assert (=> b!89506 (= e!48800 e!48801)))

(declare-fun res!46875 () Bool)

(assert (=> b!89506 (=> (not res!46875) (not e!48801))))

(assert (=> b!89506 (= res!46875 (<= (+ n!1753 1) (_2!243 (h!1103 l!1626))))))

(declare-fun b!89507 () Bool)

(assert (=> b!89507 (= e!48801 (l2AtLeast!9 (t!48843 l!1626) (+ n!1753 1)))))

(assert (= (and d!59221 (not res!46874)) b!89506))

(assert (= (and b!89506 res!46875) b!89507))

(declare-fun m!85560 () Bool)

(assert (=> b!89507 m!85560))

(assert (=> b!89501 d!59221))

(declare-fun d!59223 () Bool)

(declare-fun lt!20415 () List!745)

(assert (=> d!59223 (l2AtLeast!9 lt!20415 (+ n!1748 1))))

(declare-fun e!48804 () List!745)

(assert (=> d!59223 (= lt!20415 e!48804)))

(declare-fun c!21952 () Bool)

(assert (=> d!59223 (= c!21952 (is-Nil!702 (t!48844 l!1621)))))

(assert (=> d!59223 (= (annotateList!7 (t!48844 l!1621) (+ n!1748 1)) lt!20415)))

(declare-fun b!89512 () Bool)

(assert (=> b!89512 (= e!48804 Nil!701)))

(declare-fun b!89513 () Bool)

(declare-fun hint!5 (List!745 Bool) List!745)

(declare-fun trivProp2!5 (List!745 Int) Bool)

(assert (=> b!89513 (= e!48804 (hint!5 ($colon$colon!26 (annotateList!7 (t!48844 (t!48844 l!1621)) (+ (+ n!1748 1) 1)) (tuple2!417 (h!1104 (t!48844 l!1621)) (+ n!1748 1))) (trivProp2!5 (annotateList!7 (t!48844 (t!48844 l!1621)) (+ (+ n!1748 1) 1)) (+ n!1748 1))))))

(assert (= (and d!59223 c!21952) b!89512))

(assert (= (and d!59223 (not c!21952)) b!89513))

(declare-fun m!85562 () Bool)

(assert (=> d!59223 m!85562))

(declare-fun m!85564 () Bool)

(assert (=> b!89513 m!85564))

(assert (=> b!89513 m!85564))

(declare-fun m!85566 () Bool)

(assert (=> b!89513 m!85566))

(assert (=> b!89513 m!85564))

(declare-fun m!85568 () Bool)

(assert (=> b!89513 m!85568))

(assert (=> b!89513 m!85566))

(assert (=> b!89513 m!85568))

(declare-fun m!85570 () Bool)

(assert (=> b!89513 m!85570))

(assert (=> b!89493 d!59223))

(assert (=> b!89497 d!59223))

(declare-fun d!59225 () Bool)

(assert (=> d!59225 (= ($colon$colon!26 tlAnn!6 (tuple2!417 (h!1104 l!1621) n!1748)) (Cons!699 (tuple2!417 (h!1104 l!1621) n!1748) tlAnn!6))))

(assert (=> b!89499 d!59225))

(declare-fun b!89518 () Bool)

(declare-fun e!48807 () Bool)

(declare-fun tp!17488 () Bool)

(assert (=> b!89518 (= e!48807 (and tp_is_empty!397 tp!17488))))

(assert (=> b!89496 (= tp!17485 e!48807)))

(assert (= (and b!89496 (is-Cons!700 (t!48844 l!1621))) b!89518))

(declare-fun b!89523 () Bool)

(declare-fun e!48810 () Bool)

(declare-fun tp!17491 () Bool)

(assert (=> b!89523 (= e!48810 (and tp_is_empty!397 tp!17491))))

(assert (=> b!89500 (= tp!17482 e!48810)))

(assert (= (and b!89500 (is-Cons!699 (t!48843 t!48636))) b!89523))

(declare-fun b!89524 () Bool)

(declare-fun e!48811 () Bool)

(declare-fun tp!17492 () Bool)

(assert (=> b!89524 (= e!48811 (and tp_is_empty!397 tp!17492))))

(assert (=> b!89495 (= tp!17483 e!48811)))

(assert (= (and b!89495 (is-Cons!699 (t!48843 l!1626))) b!89524))

(declare-fun b!89525 () Bool)

(declare-fun e!48812 () Bool)

(declare-fun tp!17493 () Bool)

(assert (=> b!89525 (= e!48812 (and tp_is_empty!397 tp!17493))))

(assert (=> b!89494 (= tp!17484 e!48812)))

(assert (= (and b!89494 (is-Cons!699 (t!48843 tlAnn!6))) b!89525))

(push 1)

(assert (not b!89524))

(assert (not b!89513))

(assert (not b!89525))

(assert tp_is_empty!397)

(assert (not b!89523))

(assert (not b!89518))

(assert (not b!89507))

(assert (not d!59223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

