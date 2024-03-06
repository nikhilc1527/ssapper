; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12164 () Bool)

(assert start!12164)

(declare-fun b!90899 () Bool)

(declare-fun b_free!7667 () Bool)

(declare-fun b_next!40055 () Bool)

(assert (=> b!90899 (= b_free!7667 (not b_next!40055))))

(declare-fun tp!17903 () Bool)

(declare-fun b_and!60761 () Bool)

(assert (=> b!90899 (= tp!17903 b_and!60761)))

(declare-fun b_free!7669 () Bool)

(declare-fun b_next!40057 () Bool)

(assert (=> b!90899 (= b_free!7669 (not b_next!40057))))

(declare-fun tp!17907 () Bool)

(declare-fun b_and!60763 () Bool)

(assert (=> b!90899 (= tp!17907 b_and!60763)))

(declare-fun b_free!7671 () Bool)

(declare-fun b_next!40059 () Bool)

(assert (=> b!90899 (= b_free!7671 (not b_next!40059))))

(declare-fun tp!17904 () Bool)

(declare-fun b_and!60765 () Bool)

(assert (=> b!90899 (= tp!17904 b_and!60765)))

(declare-fun b!90901 () Bool)

(declare-fun b_free!7673 () Bool)

(declare-fun b_next!40061 () Bool)

(assert (=> b!90901 (= b_free!7673 (not b_next!40061))))

(declare-fun tp!17905 () Bool)

(declare-fun b_and!60767 () Bool)

(assert (=> b!90901 (= tp!17905 b_and!60767)))

(declare-fun b_free!7675 () Bool)

(declare-fun b_next!40063 () Bool)

(assert (=> b!90901 (= b_free!7675 (not b_next!40063))))

(declare-fun tp!17909 () Bool)

(declare-fun b_and!60769 () Bool)

(assert (=> b!90901 (= tp!17909 b_and!60769)))

(declare-fun b_free!7677 () Bool)

(declare-fun b_next!40065 () Bool)

(assert (=> b!90901 (= b_free!7677 (not b_next!40065))))

(declare-fun tp!17908 () Bool)

(declare-fun b_and!60771 () Bool)

(assert (=> b!90901 (= tp!17908 b_and!60771)))

(declare-fun b!90902 () Bool)

(declare-fun res!47702 () Bool)

(declare-fun e!49667 () Bool)

(assert (=> b!90902 (=> res!47702 e!49667)))

(declare-datatypes () ((A!3911 (A!3912 (val!230 Int)))))

(declare-datatypes () ((List!769 (Cons!718 (h!1144 A!3911) (t!49040 List!769)) (Nil!720))))

(declare-fun l!1714 () List!769)

(declare-fun x!32447 () A!3911)

(declare-fun contains!65 (List!769 A!3911) Bool)

(assert (=> b!90902 (= res!47702 (not (contains!65 l!1714 x!32447)))))

(declare-fun inst!500 () Bool)

(declare-fun tp_is_empty!465 () Bool)

(assert (=> b!90902 (= inst!500 (=> tp_is_empty!465 e!49667))))

(declare-fun b!90907 () Bool)

(declare-datatypes () ((B!688 (B!689 (val!231 Int)))))

(declare-datatypes () ((~>>!21 (~>>!22 (pre!32 Int) (f!5186 Int) (post!20 Int)))))

(declare-fun f!5181 () ~>>!21)

(declare-fun dynLambda!1117 (Int A!3911) Bool)

(assert (=> b!90907 (= e!49667 (dynLambda!1117 (pre!32 f!5181) x!32447))))

(assert (= (and b!90902 (not res!47702)) b!90907))

(declare-fun b_lambda!18505 () Bool)

(assert (=> (not b_lambda!18505) (not b!90907)))

(declare-fun t!49037 () Bool)

(declare-fun tb!46805 () Bool)

(assert (=> (and b!90899 (= (pre!32 f!5181) (pre!32 f!5181)) t!49037) tb!46805))

(declare-fun result!47321 () Bool)

(assert (=> tb!46805 (= result!47321 true)))

(assert (=> b!90907 t!49037))

(declare-fun b_and!60773 () Bool)

(assert (= b_and!60761 (and (=> t!49037 result!47321) b_and!60773)))

(declare-fun t!49039 () Bool)

(declare-fun tb!46807 () Bool)

(declare-fun f!5180 () ~>>!21)

(assert (=> (and b!90901 (= (pre!32 f!5180) (pre!32 f!5181)) t!49039) tb!46807))

(declare-fun result!47323 () Bool)

(assert (=> tb!46807 (= result!47323 true)))

(assert (=> b!90907 t!49039))

(declare-fun b_and!60775 () Bool)

(assert (= b_and!60767 (and (=> t!49039 result!47323) b_and!60775)))

(declare-fun m!86720 () Bool)

(assert (=> b!90902 m!86720))

(declare-fun m!86722 () Bool)

(assert (=> b!90907 m!86722))

(declare-fun bs!41724 () Bool)

(assert (= bs!41724 (and start!12164 b!90902)))

(declare-fun l!1713 () List!769)

(assert (=> (and bs!41724 (= l!1713 l!1714) (= (pre!32 f!5180) (pre!32 f!5181))) (= true inst!500)))

(declare-fun b!90904 () Bool)

(declare-fun bs!41725 () Bool)

(declare-fun b!90900 () Bool)

(declare-fun s!2720 () Bool)

(declare-fun b!90905 () Bool)

(assert (= bs!41725 (and b!90904 b!90900 s!2720 b!90902 b!90905 start!12164)))

(declare-fun content!178 (List!769) (Set A!3911))

(assert (=> bs!41725 (=> true (= (contains!65 l!1714 x!32447) (member x!32447 (content!178 l!1714))))))

(declare-fun m!86724 () Bool)

(assert (=> m!86720 m!86724))

(declare-fun bs!41726 () Bool)

(declare-fun m!86726 () Bool)

(assert (= bs!41726 m!86726))

(assert (=> bs!41726 s!2720))

(assert (=> m!86720 m!86726))

(assert (=> m!86720 s!2720))

(assert (=> (and bs!41724 (= l!1714 l!1713)) (= true true)))

(declare-fun e!49666 () Bool)

(assert (=> b!90899 (= e!49666 (and tp!17903 tp!17907 tp!17904))))

(declare-fun res!47701 () Bool)

(declare-fun e!49665 () Bool)

(assert (=> b!90900 (=> (not res!47701) (not e!49665))))

(declare-fun h!1140 () B!688)

(declare-fun apply!55 (~>>!21 A!3911) B!688)

(assert (=> b!90900 (= res!47701 (= h!1140 (apply!55 f!5180 (h!1144 l!1713))))))

(declare-fun e!49664 () Bool)

(assert (=> b!90901 (= e!49664 (and tp!17905 tp!17909 tp!17908))))

(assert (=> b!90902 (= e!49665 (not inst!500))))

(assert (=> b!90902 true))

(declare-fun res!47700 () Bool)

(assert (=> start!12164 (=> (not res!47700) (not e!49665))))

(assert (=> start!12164 (= res!47700 true)))

(assert (=> start!12164 true))

(assert (=> start!12164 e!49665))

(assert (=> start!12164 e!49666))

(declare-fun e!49663 () Bool)

(assert (=> start!12164 e!49663))

(declare-fun tp_is_empty!467 () Bool)

(assert (=> start!12164 tp_is_empty!467))

(declare-fun e!49662 () Bool)

(assert (=> start!12164 e!49662))

(assert (=> start!12164 e!49664))

(declare-fun b!90903 () Bool)

(declare-fun tp!17906 () Bool)

(assert (=> b!90903 (= e!49663 (and tp_is_empty!465 tp!17906))))

(declare-fun res!47698 () Bool)

(assert (=> b!90904 (=> (not res!47698) (not e!49665))))

(assert (=> b!90904 (= res!47698 (and (= l!1714 (t!49040 l!1713)) (= f!5181 f!5180)))))

(declare-fun res!47699 () Bool)

(assert (=> b!90905 (=> (not res!47699) (not e!49665))))

(assert (=> b!90905 (= res!47699 (is-Cons!718 l!1713))))

(declare-fun b!90906 () Bool)

(declare-fun tp!17902 () Bool)

(assert (=> b!90906 (= e!49662 (and tp_is_empty!465 tp!17902))))

(assert (= (and start!12164 res!47700) b!90905))

(assert (= (and b!90905 res!47699) b!90900))

(assert (= (and b!90900 res!47701) b!90904))

(assert (= (and b!90904 res!47698) b!90902))

(assert (= start!12164 b!90899))

(assert (= (and start!12164 (is-Cons!718 l!1713)) b!90903))

(assert (= (and start!12164 (is-Cons!718 l!1714)) b!90906))

(assert (= start!12164 b!90901))

(declare-fun m!86728 () Bool)

(assert (=> b!90900 m!86728))

(push 1)

(assert (not b_next!40063))

(assert (not b_next!40061))

(assert b_and!60765)

(assert tp_is_empty!465)

(assert (not b_next!40065))

(assert (not b!90900))

(assert b_and!60771)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert (not b!90906))

(assert b_and!60769)

(assert tp_is_empty!467)

(assert b_and!60763)

(assert (not b!90903))

(assert (not b!90902))

(assert (not bs!41725))

(assert (not b_next!40057))

(assert b_and!60775)

(assert (not b_lambda!18505))

(assert b_and!60773)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40063))

(assert (not b_next!40061))

(assert b_and!60765)

(assert (not b_next!40065))

(assert b_and!60771)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert b_and!60769)

(assert b_and!60763)

(assert (not b_next!40057))

(assert b_and!60775)

(assert b_and!60773)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18507 () Bool)

(assert (= b_lambda!18505 (or (and b!90899 b_free!7667) (and b!90901 b_free!7673 (= (pre!32 f!5180) (pre!32 f!5181))) b_lambda!18507)))

(declare-fun bs!41727 () Bool)

(declare-fun s!2722 () Bool)

(assert (= bs!41727 (and start!12164 s!2722)))

(declare-fun res!47703 () Bool)

(declare-fun e!49668 () Bool)

(assert (=> bs!41727 (=> res!47703 e!49668)))

(assert (=> bs!41727 (= res!47703 (not (contains!65 l!1713 x!32447)))))

(assert (=> bs!41727 (=> true e!49668)))

(declare-fun b!90908 () Bool)

(assert (=> b!90908 (= e!49668 (dynLambda!1117 (pre!32 f!5180) x!32447))))

(assert (= (and bs!41727 (not res!47703)) b!90908))

(declare-fun b_lambda!18509 () Bool)

(assert (=> (not b_lambda!18509) (not b!90908)))

(declare-fun tb!46809 () Bool)

(declare-fun t!49042 () Bool)

(assert (=> (and b!90899 (= (pre!32 f!5181) (pre!32 f!5180)) t!49042) tb!46809))

(declare-fun result!47325 () Bool)

(assert (=> tb!46809 (= result!47325 true)))

(assert (=> b!90908 t!49042))

(declare-fun b_and!60777 () Bool)

(assert (= b_and!60773 (and (=> t!49042 result!47325) b_and!60777)))

(declare-fun t!49044 () Bool)

(declare-fun tb!46811 () Bool)

(assert (=> (and b!90901 (= (pre!32 f!5180) (pre!32 f!5180)) t!49044) tb!46811))

(declare-fun result!47327 () Bool)

(assert (=> tb!46811 (= result!47327 true)))

(assert (=> b!90908 t!49044))

(declare-fun b_and!60779 () Bool)

(assert (= b_and!60775 (and (=> t!49044 result!47327) b_and!60779)))

(declare-fun m!86730 () Bool)

(assert (=> m!86722 m!86730))

(assert (=> m!86722 s!2722))

(push 1)

(assert (not b_next!40063))

(assert b_and!60779)

(assert (not b_next!40061))

(assert b_and!60765)

(assert tp_is_empty!465)

(assert (not b_next!40065))

(assert (not b!90900))

(assert b_and!60771)

(assert b_and!60777)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert (not b!90906))

(assert b_and!60769)

(assert (not b_lambda!18507))

(assert tp_is_empty!467)

(assert (not bs!41727))

(assert b_and!60763)

(assert (not b!90903))

(assert (not b!90902))

(assert (not bs!41725))

(assert (not b_next!40057))

(assert (not b_lambda!18509))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40063))

(assert b_and!60779)

(assert (not b_next!40061))

(assert b_and!60765)

(assert (not b_next!40065))

(assert b_and!60771)

(assert b_and!60777)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert b_and!60769)

(assert b_and!60763)

(assert (not b_next!40057))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18511 () Bool)

(assert (= b_lambda!18509 (or (and b!90899 b_free!7667 (= (pre!32 f!5181) (pre!32 f!5180))) (and b!90901 b_free!7673) b_lambda!18511)))

(declare-fun bs!41728 () Bool)

(assert (= bs!41728 (and m!86722 b!90908)))

(declare-fun m!86732 () Bool)

(assert (=> bs!41728 m!86732))

(declare-fun bs!41729 () Bool)

(declare-fun s!2724 () Bool)

(assert (= bs!41729 (and start!12164 s!2724)))

(assert (=> bs!41729 (=> true (= (contains!65 l!1713 x!32447) (member x!32447 (content!178 l!1713))))))

(declare-fun m!86734 () Bool)

(assert (=> m!86730 m!86734))

(declare-fun m!86736 () Bool)

(assert (=> m!86730 m!86736))

(assert (=> m!86730 s!2724))

(assert (=> m!86730 s!2722))

(assert (=> m!86730 s!2720))

(push 1)

(assert (not b_next!40063))

(assert b_and!60779)

(assert (not b_next!40061))

(assert b_and!60765)

(assert tp_is_empty!465)

(assert (not b_next!40065))

(assert (not b!90900))

(assert b_and!60771)

(assert b_and!60777)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert (not b!90906))

(assert b_and!60769)

(assert (not b_lambda!18511))

(assert (not b_lambda!18507))

(assert tp_is_empty!467)

(assert (not bs!41727))

(assert b_and!60763)

(assert (not bs!41729))

(assert (not b!90903))

(assert (not b!90902))

(assert (not bs!41725))

(assert (not b_next!40057))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40063))

(assert b_and!60779)

(assert (not b_next!40061))

(assert b_and!60765)

(assert (not b_next!40065))

(assert b_and!60771)

(assert b_and!60777)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert b_and!60769)

(assert b_and!60763)

(assert (not b_next!40057))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59760 () Bool)

(declare-fun lt!20523 () B!688)

(declare-fun dynLambda!1118 (Int B!688) Bool)

(assert (=> d!59760 (dynLambda!1118 (post!20 f!5180) lt!20523)))

(declare-fun dynLambda!1119 (Int A!3911) B!688)

(assert (=> d!59760 (= lt!20523 (dynLambda!1119 (f!5186 f!5180) (h!1144 l!1713)))))

(assert (=> d!59760 (dynLambda!1117 (pre!32 f!5180) (h!1144 l!1713))))

(assert (=> d!59760 (= (apply!55 f!5180 (h!1144 l!1713)) lt!20523)))

(declare-fun b_lambda!18513 () Bool)

(assert (=> (not b_lambda!18513) (not d!59760)))

(declare-fun tb!46813 () Bool)

(declare-fun t!49046 () Bool)

(assert (=> (and b!90899 (= (post!20 f!5181) (post!20 f!5180)) t!49046) tb!46813))

(declare-fun result!47329 () Bool)

(assert (=> tb!46813 (= result!47329 true)))

(assert (=> d!59760 t!49046))

(declare-fun b_and!60781 () Bool)

(assert (= b_and!60765 (and (=> t!49046 result!47329) b_and!60781)))

(declare-fun t!49048 () Bool)

(declare-fun tb!46815 () Bool)

(assert (=> (and b!90901 (= (post!20 f!5180) (post!20 f!5180)) t!49048) tb!46815))

(declare-fun result!47331 () Bool)

(assert (=> tb!46815 (= result!47331 true)))

(assert (=> d!59760 t!49048))

(declare-fun b_and!60783 () Bool)

(assert (= b_and!60771 (and (=> t!49048 result!47331) b_and!60783)))

(declare-fun b_lambda!18515 () Bool)

(assert (=> (not b_lambda!18515) (not d!59760)))

(declare-fun t!49050 () Bool)

(declare-fun tb!46817 () Bool)

(assert (=> (and b!90899 (= (f!5186 f!5181) (f!5186 f!5180)) t!49050) tb!46817))

(declare-fun result!47333 () Bool)

(assert (=> tb!46817 (= result!47333 tp_is_empty!467)))

(assert (=> d!59760 t!49050))

(declare-fun b_and!60785 () Bool)

(assert (= b_and!60763 (and (=> t!49050 result!47333) b_and!60785)))

(declare-fun t!49052 () Bool)

(declare-fun tb!46819 () Bool)

(assert (=> (and b!90901 (= (f!5186 f!5180) (f!5186 f!5180)) t!49052) tb!46819))

(declare-fun result!47337 () Bool)

(assert (= result!47337 result!47333))

(assert (=> d!59760 t!49052))

(declare-fun b_and!60787 () Bool)

(assert (= b_and!60769 (and (=> t!49052 result!47337) b_and!60787)))

(declare-fun b_lambda!18517 () Bool)

(assert (=> (not b_lambda!18517) (not d!59760)))

(declare-fun t!49054 () Bool)

(declare-fun tb!46821 () Bool)

(assert (=> (and b!90899 (= (pre!32 f!5181) (pre!32 f!5180)) t!49054) tb!46821))

(declare-fun result!47339 () Bool)

(assert (=> tb!46821 (= result!47339 true)))

(assert (=> d!59760 t!49054))

(declare-fun b_and!60789 () Bool)

(assert (= b_and!60777 (and (=> t!49054 result!47339) b_and!60789)))

(declare-fun t!49056 () Bool)

(declare-fun tb!46823 () Bool)

(assert (=> (and b!90901 (= (pre!32 f!5180) (pre!32 f!5180)) t!49056) tb!46823))

(declare-fun result!47341 () Bool)

(assert (=> tb!46823 (= result!47341 true)))

(assert (=> d!59760 t!49056))

(declare-fun b_and!60791 () Bool)

(assert (= b_and!60779 (and (=> t!49056 result!47341) b_and!60791)))

(declare-fun m!86738 () Bool)

(assert (=> d!59760 m!86738))

(declare-fun m!86740 () Bool)

(assert (=> d!59760 m!86740))

(declare-fun bs!41730 () Bool)

(declare-fun s!2726 () Bool)

(assert (= bs!41730 (and start!12164 s!2726)))

(declare-fun res!47705 () Bool)

(declare-fun e!49669 () Bool)

(assert (=> bs!41730 (=> res!47705 e!49669)))

(assert (=> bs!41730 (= res!47705 (not (contains!65 l!1713 (h!1144 l!1713))))))

(assert (=> bs!41730 (=> true e!49669)))

(declare-fun b!90911 () Bool)

(assert (=> b!90911 (= e!49669 (dynLambda!1117 (pre!32 f!5180) (h!1144 l!1713)))))

(assert (= (and bs!41730 (not res!47705)) b!90911))

(declare-fun b_lambda!18519 () Bool)

(assert (=> (not b_lambda!18519) (not b!90911)))

(assert (=> b!90911 t!49054))

(declare-fun b_and!60793 () Bool)

(assert (= b_and!60789 (and (=> t!49054 result!47339) b_and!60793)))

(assert (=> b!90911 t!49056))

(declare-fun b_and!60795 () Bool)

(assert (= b_and!60791 (and (=> t!49056 result!47341) b_and!60795)))

(declare-fun bs!41731 () Bool)

(declare-fun s!2728 () Bool)

(assert (= bs!41731 (and start!12164 s!2728)))

(assert (=> bs!41731 (=> true (= (contains!65 l!1713 (h!1144 l!1713)) (member (h!1144 l!1713) (content!178 l!1713))))))

(declare-fun bs!41732 () Bool)

(declare-fun m!86744 () Bool)

(assert (= bs!41732 m!86744))

(assert (=> bs!41732 m!86734))

(declare-fun bs!41733 () Bool)

(declare-fun m!86746 () Bool)

(assert (= bs!41733 m!86746))

(assert (=> bs!41733 s!2728))

(assert (=> bs!41732 m!86746))

(assert (=> bs!41732 s!2728))

(assert (=> bs!41732 s!2726))

(declare-fun bs!41734 () Bool)

(declare-fun m!86742 () Bool)

(assert (= bs!41734 m!86742))

(assert (=> bs!41734 m!86744))

(assert (=> bs!41734 s!2726))

(assert (=> d!59760 m!86742))

(assert (=> b!90900 d!59760))

(declare-fun d!59762 () Bool)

(declare-fun lt!20526 () Bool)

(assert (=> d!59762 (= lt!20526 (member x!32447 (content!178 l!1713)))))

(declare-fun e!49674 () Bool)

(assert (=> d!59762 (= lt!20526 e!49674)))

(declare-fun res!47710 () Bool)

(assert (=> d!59762 (=> (not res!47710) (not e!49674))))

(assert (=> d!59762 (= res!47710 (is-Cons!718 l!1713))))

(assert (=> d!59762 (= (contains!65 l!1713 x!32447) lt!20526)))

(declare-fun b!90916 () Bool)

(declare-fun e!49675 () Bool)

(assert (=> b!90916 (= e!49674 e!49675)))

(declare-fun res!47711 () Bool)

(assert (=> b!90916 (=> res!47711 e!49675)))

(assert (=> b!90916 (= res!47711 (= (h!1144 l!1713) x!32447))))

(declare-fun b!90917 () Bool)

(assert (=> b!90917 (= e!49675 (contains!65 (t!49040 l!1713) x!32447))))

(assert (= (and d!59762 res!47710) b!90916))

(assert (= (and b!90916 (not res!47711)) b!90917))

(assert (=> d!59762 m!86734))

(assert (=> d!59762 m!86736))

(declare-fun bs!41735 () Bool)

(declare-fun m!86748 () Bool)

(assert (= bs!41735 m!86748))

(assert (=> bs!41735 s!2724))

(assert (=> bs!41735 s!2722))

(assert (=> bs!41735 s!2720))

(assert (=> b!90917 m!86748))

(assert (=> bs!41727 d!59762))

(declare-fun d!59764 () Bool)

(declare-fun lt!20527 () Bool)

(assert (=> d!59764 (= lt!20527 (member x!32447 (content!178 l!1714)))))

(declare-fun e!49676 () Bool)

(assert (=> d!59764 (= lt!20527 e!49676)))

(declare-fun res!47712 () Bool)

(assert (=> d!59764 (=> (not res!47712) (not e!49676))))

(assert (=> d!59764 (= res!47712 (is-Cons!718 l!1714))))

(assert (=> d!59764 (= (contains!65 l!1714 x!32447) lt!20527)))

(declare-fun b!90918 () Bool)

(declare-fun e!49677 () Bool)

(assert (=> b!90918 (= e!49676 e!49677)))

(declare-fun res!47713 () Bool)

(assert (=> b!90918 (=> res!47713 e!49677)))

(assert (=> b!90918 (= res!47713 (= (h!1144 l!1714) x!32447))))

(declare-fun b!90919 () Bool)

(assert (=> b!90919 (= e!49677 (contains!65 (t!49040 l!1714) x!32447))))

(assert (= (and d!59764 res!47712) b!90918))

(assert (= (and b!90918 (not res!47713)) b!90919))

(assert (=> d!59764 m!86724))

(assert (=> d!59764 m!86726))

(declare-fun bs!41736 () Bool)

(declare-fun m!86750 () Bool)

(assert (= bs!41736 m!86750))

(assert (=> bs!41736 s!2724))

(assert (=> bs!41736 s!2722))

(assert (=> bs!41736 s!2720))

(assert (=> b!90919 m!86750))

(assert (=> bs!41725 d!59764))

(declare-fun d!59766 () Bool)

(declare-fun c!22166 () Bool)

(assert (=> d!59766 (= c!22166 (is-Nil!720 l!1714))))

(declare-fun e!49680 () (Set A!3911))

(assert (=> d!59766 (= (content!178 l!1714) e!49680)))

(declare-fun b!90924 () Bool)

(assert (=> b!90924 (= e!49680 (as emptyset (Set A!3911)))))

(declare-fun b!90925 () Bool)

(assert (=> b!90925 (= e!49680 (union (insert (h!1144 l!1714) (as emptyset (Set A!3911))) (content!178 (t!49040 l!1714))))))

(assert (= (and d!59766 c!22166) b!90924))

(assert (= (and d!59766 (not c!22166)) b!90925))

(declare-fun m!86752 () Bool)

(assert (=> b!90925 m!86752))

(declare-fun m!86754 () Bool)

(assert (=> b!90925 m!86754))

(assert (=> bs!41725 d!59766))

(assert (=> b!90902 d!59764))

(declare-fun b!90930 () Bool)

(declare-fun e!49683 () Bool)

(declare-fun tp!17912 () Bool)

(assert (=> b!90930 (= e!49683 (and tp_is_empty!465 tp!17912))))

(assert (=> b!90906 (= tp!17902 e!49683)))

(assert (= (and b!90906 (is-Cons!718 (t!49040 l!1714))) b!90930))

(declare-fun b!90931 () Bool)

(declare-fun e!49684 () Bool)

(declare-fun tp!17913 () Bool)

(assert (=> b!90931 (= e!49684 (and tp_is_empty!465 tp!17913))))

(assert (=> b!90903 (= tp!17906 e!49684)))

(assert (= (and b!90903 (is-Cons!718 (t!49040 l!1713))) b!90931))

(declare-fun b_lambda!18521 () Bool)

(assert (= b_lambda!18513 (or (and b!90899 b_free!7671 (= (post!20 f!5181) (post!20 f!5180))) (and b!90901 b_free!7677) b_lambda!18521)))

(declare-fun b_lambda!18523 () Bool)

(assert (= b_lambda!18517 (or (and b!90899 b_free!7667 (= (pre!32 f!5181) (pre!32 f!5180))) (and b!90901 b_free!7673) b_lambda!18523)))

(declare-fun b_lambda!18525 () Bool)

(assert (= b_lambda!18519 (or (and b!90899 b_free!7667 (= (pre!32 f!5181) (pre!32 f!5180))) (and b!90901 b_free!7673) b_lambda!18525)))

(declare-fun b_lambda!18527 () Bool)

(assert (= b_lambda!18515 (or (and b!90899 b_free!7669 (= (f!5186 f!5181) (f!5186 f!5180))) (and b!90901 b_free!7675) b_lambda!18527)))

(assert (=> m!86720 s!2724))

(assert (=> m!86726 s!2724))

(assert (=> m!86736 s!2724))

(assert (=> m!86720 s!2722))

(assert (=> m!86732 s!2722))

(assert (=> m!86736 s!2720))

(push 1)

(assert (not b_next!40063))

(assert b_and!60793)

(assert (not b_lambda!18525))

(assert (not b!90931))

(assert (not b_next!40061))

(assert tp_is_empty!465)

(assert (not b_next!40065))

(assert b_and!60783)

(assert (not d!59762))

(assert b_and!60785)

(assert (not b!90925))

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert (not bs!41731))

(assert (not b!90917))

(assert (not b_lambda!18511))

(assert (not b_lambda!18507))

(assert (not d!59764))

(assert tp_is_empty!467)

(assert (not bs!41730))

(assert b_and!60787)

(assert (not b!90930))

(assert (not bs!41729))

(assert (not b_lambda!18523))

(assert (not b_lambda!18521))

(assert b_and!60781)

(assert b_and!60795)

(assert (not b_next!40057))

(assert (not b!90919))

(assert (not b_lambda!18527))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!40063))

(assert b_and!60793)

(assert (not b_next!40061))

(assert (not b_next!40065))

(assert b_and!60783)

(assert b_and!60785)

(assert (not b_next!40055))

(assert (not b_next!40059))

(assert b_and!60787)

(assert b_and!60781)

(assert b_and!60795)

(assert (not b_next!40057))

(check-sat)

(pop 1)

