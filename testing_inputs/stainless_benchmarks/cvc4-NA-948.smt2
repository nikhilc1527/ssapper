; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7170 () Bool)

(assert start!7170)

(declare-fun b!52714 () Bool)

(declare-fun res!23901 () Bool)

(declare-fun e!27365 () Bool)

(assert (=> b!52714 (=> (not res!23901) (not e!27365))))

(declare-datatypes () ((T!2990 (T!2991 (val!141 Int)))))

(declare-datatypes () ((List!418 (Cons!405 (h!605 T!2990) (t!46680 List!418)) (Nil!406))))

(declare-fun l!1016 () List!418)

(declare-fun isEmpty!435 (List!418) Bool)

(assert (=> b!52714 (= res!23901 (not (isEmpty!435 l!1016)))))

(declare-fun b!52715 () Bool)

(declare-fun res!23907 () Bool)

(assert (=> b!52715 (=> (not res!23907) (not e!27365))))

(declare-fun x1!42 () T!2990)

(declare-fun x2!44 () T!2990)

(assert (=> b!52715 (= res!23907 (not (= x1!42 x2!44)))))

(declare-fun b!52716 () Bool)

(declare-fun res!23906 () Bool)

(assert (=> b!52716 (=> (not res!23906) (not e!27365))))

(declare-fun l!1017 () List!418)

(declare-fun tail!690 (List!418) List!418)

(assert (=> b!52716 (= res!23906 (= l!1017 (tail!690 l!1016)))))

(declare-fun b!52717 () Bool)

(declare-fun e!27363 () Bool)

(declare-fun tp_is_empty!281 () Bool)

(declare-fun tp!14935 () Bool)

(assert (=> b!52717 (= e!27363 (and tp_is_empty!281 tp!14935))))

(declare-fun b!52718 () Bool)

(declare-fun e!27362 () Bool)

(declare-fun x1!43 () T!2990)

(declare-fun x2!45 () T!2990)

(assert (=> b!52718 (= e!27362 (= x1!43 x2!45))))

(declare-fun b!52719 () Bool)

(declare-fun res!23910 () Bool)

(assert (=> b!52719 (=> (not res!23910) (not e!27365))))

(declare-fun contains!42 (List!418 T!2990) Bool)

(assert (=> b!52719 (= res!23910 (contains!42 l!1016 x2!44))))

(declare-fun b!52720 () Bool)

(declare-fun res!23902 () Bool)

(assert (=> b!52720 (=> (not res!23902) (not e!27365))))

(declare-fun head!668 (List!418) T!2990)

(assert (=> b!52720 (= res!23902 (not (= (head!668 l!1016) x1!42)))))

(declare-fun b!52721 () Bool)

(declare-fun res!23903 () Bool)

(assert (=> b!52721 (=> res!23903 e!27362)))

(assert (=> b!52721 (= res!23903 (not (contains!42 l!1017 x2!45)))))

(declare-fun b!52722 () Bool)

(declare-fun res!23904 () Bool)

(assert (=> b!52722 (=> (not res!23904) (not e!27365))))

(assert (=> b!52722 (= res!23904 (and (= x1!43 x1!42) (= x2!45 x2!44)))))

(declare-fun b!52723 () Bool)

(declare-fun e!27364 () Bool)

(declare-fun tp!14934 () Bool)

(assert (=> b!52723 (= e!27364 (and tp_is_empty!281 tp!14934))))

(declare-fun res!23908 () Bool)

(assert (=> start!7170 (=> (not res!23908) (not e!27365))))

(assert (=> start!7170 (= res!23908 (contains!42 l!1016 x1!42))))

(assert (=> start!7170 e!27365))

(assert (=> start!7170 tp_is_empty!281))

(assert (=> start!7170 e!27363))

(assert (=> start!7170 e!27364))

(declare-fun b!52724 () Bool)

(assert (=> b!52724 (= e!27365 e!27362)))

(declare-fun res!23905 () Bool)

(assert (=> b!52724 (=> res!23905 e!27362)))

(assert (=> b!52724 (= res!23905 (not (contains!42 l!1017 x1!43)))))

(declare-fun b!52725 () Bool)

(declare-fun res!23909 () Bool)

(assert (=> b!52725 (=> (not res!23909) (not e!27365))))

(assert (=> b!52725 (= res!23909 (not (= (head!668 l!1016) x2!44)))))

(assert (= (and start!7170 res!23908) b!52719))

(assert (= (and b!52719 res!23910) b!52715))

(assert (= (and b!52715 res!23907) b!52714))

(assert (= (and b!52714 res!23901) b!52720))

(assert (= (and b!52720 res!23902) b!52725))

(assert (= (and b!52725 res!23909) b!52716))

(assert (= (and b!52716 res!23906) b!52722))

(assert (= (and b!52722 res!23904) b!52724))

(assert (= (and b!52724 (not res!23905)) b!52721))

(assert (= (and b!52721 (not res!23903)) b!52718))

(assert (= (and start!7170 (is-Cons!405 l!1016)) b!52717))

(assert (= (and start!7170 (is-Cons!405 l!1017)) b!52723))

(declare-fun m!56787 () Bool)

(assert (=> b!52724 m!56787))

(declare-fun m!56789 () Bool)

(assert (=> b!52716 m!56789))

(declare-fun m!56791 () Bool)

(assert (=> start!7170 m!56791))

(declare-fun m!56793 () Bool)

(assert (=> b!52719 m!56793))

(declare-fun m!56795 () Bool)

(assert (=> b!52721 m!56795))

(declare-fun m!56797 () Bool)

(assert (=> b!52725 m!56797))

(declare-fun m!56799 () Bool)

(assert (=> b!52714 m!56799))

(assert (=> b!52720 m!56797))

(push 1)

(assert tp_is_empty!281)

(assert (not b!52714))

(assert (not b!52716))

(assert (not b!52720))

(assert (not b!52719))

(assert (not b!52725))

(assert (not b!52724))

(assert (not b!52721))

(assert (not b!52723))

(assert (not b!52717))

(assert (not start!7170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!44420 () Bool)

(declare-fun lt!9213 () Bool)

(declare-fun content!93 (List!418) (Set T!2990))

(assert (=> d!44420 (= lt!9213 (member x1!42 (content!93 l!1016)))))

(declare-fun e!27371 () Bool)

(assert (=> d!44420 (= lt!9213 e!27371)))

(declare-fun res!23916 () Bool)

(assert (=> d!44420 (=> (not res!23916) (not e!27371))))

(assert (=> d!44420 (= res!23916 (is-Cons!405 l!1016))))

(assert (=> d!44420 (= (contains!42 l!1016 x1!42) lt!9213)))

(declare-fun b!52730 () Bool)

(declare-fun e!27370 () Bool)

(assert (=> b!52730 (= e!27371 e!27370)))

(declare-fun res!23915 () Bool)

(assert (=> b!52730 (=> res!23915 e!27370)))

(assert (=> b!52730 (= res!23915 (= (h!605 l!1016) x1!42))))

(declare-fun b!52731 () Bool)

(assert (=> b!52731 (= e!27370 (contains!42 (t!46680 l!1016) x1!42))))

(assert (= (and d!44420 res!23916) b!52730))

(assert (= (and b!52730 (not res!23915)) b!52731))

(declare-fun m!56801 () Bool)

(assert (=> d!44420 m!56801))

(declare-fun m!56803 () Bool)

(assert (=> d!44420 m!56803))

(declare-fun m!56805 () Bool)

(assert (=> b!52731 m!56805))

(assert (=> start!7170 d!44420))

(declare-fun d!44422 () Bool)

(assert (=> d!44422 (= (head!668 l!1016) (h!605 l!1016))))

(assert (=> b!52720 d!44422))

(declare-fun d!44424 () Bool)

(assert (=> d!44424 (= (isEmpty!435 l!1016) (is-Nil!406 l!1016))))

(assert (=> b!52714 d!44424))

(declare-fun d!44426 () Bool)

(declare-fun lt!9214 () Bool)

(assert (=> d!44426 (= lt!9214 (member x2!45 (content!93 l!1017)))))

(declare-fun e!27373 () Bool)

(assert (=> d!44426 (= lt!9214 e!27373)))

(declare-fun res!23918 () Bool)

(assert (=> d!44426 (=> (not res!23918) (not e!27373))))

(assert (=> d!44426 (= res!23918 (is-Cons!405 l!1017))))

(assert (=> d!44426 (= (contains!42 l!1017 x2!45) lt!9214)))

(declare-fun b!52732 () Bool)

(declare-fun e!27372 () Bool)

(assert (=> b!52732 (= e!27373 e!27372)))

(declare-fun res!23917 () Bool)

(assert (=> b!52732 (=> res!23917 e!27372)))

(assert (=> b!52732 (= res!23917 (= (h!605 l!1017) x2!45))))

(declare-fun b!52733 () Bool)

(assert (=> b!52733 (= e!27372 (contains!42 (t!46680 l!1017) x2!45))))

(assert (= (and d!44426 res!23918) b!52732))

(assert (= (and b!52732 (not res!23917)) b!52733))

(declare-fun m!56807 () Bool)

(assert (=> d!44426 m!56807))

(declare-fun m!56809 () Bool)

(assert (=> d!44426 m!56809))

(declare-fun m!56811 () Bool)

(assert (=> b!52733 m!56811))

(assert (=> b!52721 d!44426))

(assert (=> b!52725 d!44422))

(declare-fun d!44428 () Bool)

(declare-fun lt!9215 () Bool)

(assert (=> d!44428 (= lt!9215 (member x1!43 (content!93 l!1017)))))

(declare-fun e!27375 () Bool)

(assert (=> d!44428 (= lt!9215 e!27375)))

(declare-fun res!23920 () Bool)

(assert (=> d!44428 (=> (not res!23920) (not e!27375))))

(assert (=> d!44428 (= res!23920 (is-Cons!405 l!1017))))

(assert (=> d!44428 (= (contains!42 l!1017 x1!43) lt!9215)))

(declare-fun b!52734 () Bool)

(declare-fun e!27374 () Bool)

(assert (=> b!52734 (= e!27375 e!27374)))

(declare-fun res!23919 () Bool)

(assert (=> b!52734 (=> res!23919 e!27374)))

(assert (=> b!52734 (= res!23919 (= (h!605 l!1017) x1!43))))

(declare-fun b!52735 () Bool)

(assert (=> b!52735 (= e!27374 (contains!42 (t!46680 l!1017) x1!43))))

(assert (= (and d!44428 res!23920) b!52734))

(assert (= (and b!52734 (not res!23919)) b!52735))

(assert (=> d!44428 m!56807))

(declare-fun m!56813 () Bool)

(assert (=> d!44428 m!56813))

(declare-fun m!56815 () Bool)

(assert (=> b!52735 m!56815))

(assert (=> b!52724 d!44428))

(declare-fun d!44430 () Bool)

(declare-fun lt!9216 () Bool)

(assert (=> d!44430 (= lt!9216 (member x2!44 (content!93 l!1016)))))

(declare-fun e!27377 () Bool)

(assert (=> d!44430 (= lt!9216 e!27377)))

(declare-fun res!23922 () Bool)

(assert (=> d!44430 (=> (not res!23922) (not e!27377))))

(assert (=> d!44430 (= res!23922 (is-Cons!405 l!1016))))

(assert (=> d!44430 (= (contains!42 l!1016 x2!44) lt!9216)))

(declare-fun b!52736 () Bool)

(declare-fun e!27376 () Bool)

(assert (=> b!52736 (= e!27377 e!27376)))

(declare-fun res!23921 () Bool)

(assert (=> b!52736 (=> res!23921 e!27376)))

(assert (=> b!52736 (= res!23921 (= (h!605 l!1016) x2!44))))

(declare-fun b!52737 () Bool)

(assert (=> b!52737 (= e!27376 (contains!42 (t!46680 l!1016) x2!44))))

(assert (= (and d!44430 res!23922) b!52736))

(assert (= (and b!52736 (not res!23921)) b!52737))

(assert (=> d!44430 m!56801))

(declare-fun m!56817 () Bool)

(assert (=> d!44430 m!56817))

(declare-fun m!56819 () Bool)

(assert (=> b!52737 m!56819))

(assert (=> b!52719 d!44430))

(declare-fun d!44432 () Bool)

(assert (=> d!44432 (= (tail!690 l!1016) (t!46680 l!1016))))

(assert (=> b!52716 d!44432))

(declare-fun b!52742 () Bool)

(declare-fun e!27380 () Bool)

(declare-fun tp!14938 () Bool)

(assert (=> b!52742 (= e!27380 (and tp_is_empty!281 tp!14938))))

(assert (=> b!52717 (= tp!14935 e!27380)))

(assert (= (and b!52717 (is-Cons!405 (t!46680 l!1016))) b!52742))

(declare-fun b!52743 () Bool)

(declare-fun e!27381 () Bool)

(declare-fun tp!14939 () Bool)

(assert (=> b!52743 (= e!27381 (and tp_is_empty!281 tp!14939))))

(assert (=> b!52723 (= tp!14934 e!27381)))

(assert (= (and b!52723 (is-Cons!405 (t!46680 l!1017))) b!52743))

(push 1)

(assert (not b!52743))

(assert (not b!52737))

(assert tp_is_empty!281)

(assert (not b!52731))

(assert (not d!44430))

(assert (not b!52733))

(assert (not d!44428))

(assert (not b!52742))

(assert (not d!44426))

(assert (not d!44420))

(assert (not b!52735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

