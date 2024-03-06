; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11434 () Bool)

(assert start!11434)

(declare-fun b_free!7433 () Bool)

(declare-fun b_next!39617 () Bool)

(assert (=> start!11434 (= b_free!7433 (not b_next!39617))))

(declare-fun tp!17068 () Bool)

(declare-fun b_and!59133 () Bool)

(assert (=> start!11434 (= tp!17068 b_and!59133)))

(declare-fun b_free!7435 () Bool)

(declare-fun b_next!39619 () Bool)

(assert (=> start!11434 (= b_free!7435 (not b_next!39619))))

(declare-fun tp!17069 () Bool)

(declare-fun b_and!59135 () Bool)

(assert (=> start!11434 (= tp!17069 b_and!59135)))

(declare-fun b_free!7437 () Bool)

(declare-fun b_next!39621 () Bool)

(assert (=> start!11434 (= b_free!7437 (not b_next!39621))))

(declare-fun tp!17071 () Bool)

(declare-fun b_and!59137 () Bool)

(assert (=> start!11434 (= tp!17071 b_and!59137)))

(declare-fun b_free!7439 () Bool)

(declare-fun b_next!39623 () Bool)

(assert (=> start!11434 (= b_free!7439 (not b_next!39623))))

(declare-fun tp!17070 () Bool)

(declare-fun b_and!59139 () Bool)

(assert (=> start!11434 (= tp!17070 b_and!59139)))

(declare-fun res!45733 () Bool)

(declare-fun e!47600 () Bool)

(assert (=> start!11434 (=> (not res!45733) (not e!47600))))

(declare-fun u1!4 () Int)

(declare-fun s1!86 () Int)

(declare-fun s2!85 () Int)

(declare-fun intersection!1 (Int Int) Int)

(assert (=> start!11434 (= res!45733 (= u1!4 (intersection!1 s1!86 s2!85)))))

(assert (=> start!11434 e!47600))

(assert (=> start!11434 tp!17068))

(assert (=> start!11434 tp!17069))

(assert (=> start!11434 tp!17071))

(assert (=> start!11434 tp!17070))

(assert (=> start!11434 true))

(declare-fun b!87681 () Bool)

(declare-fun res!45734 () Bool)

(assert (=> b!87681 (=> (not res!45734) (not e!47600))))

(declare-fun u2!4 () Int)

(declare-fun complement!1 (Int) Int)

(declare-fun union!1 (Int Int) Int)

(assert (=> b!87681 (= res!45734 (= u2!4 (complement!1 (union!1 (complement!1 s1!86) (complement!1 s2!85)))))))

(declare-fun b!87682 () Bool)

(declare-fun x!30518 () (_ BitVec 32))

(declare-fun dynLambda!1024 (Int (_ BitVec 32)) Bool)

(assert (=> b!87682 (= e!47600 (not (= (dynLambda!1024 u1!4 x!30518) (dynLambda!1024 u2!4 x!30518))))))

(assert (= (and start!11434 res!45733) b!87681))

(assert (= (and b!87681 res!45734) b!87682))

(declare-fun b_lambda!16963 () Bool)

(assert (=> (not b_lambda!16963) (not b!87682)))

(declare-fun t!48385 () Bool)

(declare-fun tb!46375 () Bool)

(assert (=> (and start!11434 (= u2!4 u1!4) t!48385) tb!46375))

(declare-fun result!46805 () Bool)

(assert (=> tb!46375 (= result!46805 true)))

(assert (=> b!87682 t!48385))

(declare-fun b_and!59141 () Bool)

(assert (= b_and!59133 (and (=> t!48385 result!46805) b_and!59141)))

(declare-fun t!48387 () Bool)

(declare-fun tb!46377 () Bool)

(assert (=> (and start!11434 (= u1!4 u1!4) t!48387) tb!46377))

(declare-fun result!46807 () Bool)

(assert (=> tb!46377 (= result!46807 true)))

(assert (=> b!87682 t!48387))

(declare-fun b_and!59143 () Bool)

(assert (= b_and!59135 (and (=> t!48387 result!46807) b_and!59143)))

(declare-fun tb!46379 () Bool)

(declare-fun t!48389 () Bool)

(assert (=> (and start!11434 (= s1!86 u1!4) t!48389) tb!46379))

(declare-fun result!46809 () Bool)

(assert (=> tb!46379 (= result!46809 true)))

(assert (=> b!87682 t!48389))

(declare-fun b_and!59145 () Bool)

(assert (= b_and!59137 (and (=> t!48389 result!46809) b_and!59145)))

(declare-fun tb!46381 () Bool)

(declare-fun t!48391 () Bool)

(assert (=> (and start!11434 (= s2!85 u1!4) t!48391) tb!46381))

(declare-fun result!46811 () Bool)

(assert (=> tb!46381 (= result!46811 true)))

(assert (=> b!87682 t!48391))

(declare-fun b_and!59147 () Bool)

(assert (= b_and!59139 (and (=> t!48391 result!46811) b_and!59147)))

(declare-fun b_lambda!16965 () Bool)

(assert (=> (not b_lambda!16965) (not b!87682)))

(declare-fun t!48393 () Bool)

(declare-fun tb!46383 () Bool)

(assert (=> (and start!11434 (= u2!4 u2!4) t!48393) tb!46383))

(declare-fun result!46813 () Bool)

(assert (=> tb!46383 (= result!46813 true)))

(assert (=> b!87682 t!48393))

(declare-fun b_and!59149 () Bool)

(assert (= b_and!59141 (and (=> t!48393 result!46813) b_and!59149)))

(declare-fun t!48395 () Bool)

(declare-fun tb!46385 () Bool)

(assert (=> (and start!11434 (= u1!4 u2!4) t!48395) tb!46385))

(declare-fun result!46815 () Bool)

(assert (=> tb!46385 (= result!46815 true)))

(assert (=> b!87682 t!48395))

(declare-fun b_and!59151 () Bool)

(assert (= b_and!59143 (and (=> t!48395 result!46815) b_and!59151)))

(declare-fun tb!46387 () Bool)

(declare-fun t!48397 () Bool)

(assert (=> (and start!11434 (= s1!86 u2!4) t!48397) tb!46387))

(declare-fun result!46817 () Bool)

(assert (=> tb!46387 (= result!46817 true)))

(assert (=> b!87682 t!48397))

(declare-fun b_and!59153 () Bool)

(assert (= b_and!59145 (and (=> t!48397 result!46817) b_and!59153)))

(declare-fun t!48399 () Bool)

(declare-fun tb!46389 () Bool)

(assert (=> (and start!11434 (= s2!85 u2!4) t!48399) tb!46389))

(declare-fun result!46819 () Bool)

(assert (=> tb!46389 (= result!46819 true)))

(assert (=> b!87682 t!48399))

(declare-fun b_and!59155 () Bool)

(assert (= b_and!59147 (and (=> t!48399 result!46819) b_and!59155)))

(declare-fun m!83968 () Bool)

(assert (=> start!11434 m!83968))

(declare-fun m!83970 () Bool)

(assert (=> b!87681 m!83970))

(declare-fun m!83972 () Bool)

(assert (=> b!87681 m!83972))

(assert (=> b!87681 m!83970))

(assert (=> b!87681 m!83972))

(declare-fun m!83974 () Bool)

(assert (=> b!87681 m!83974))

(assert (=> b!87681 m!83974))

(declare-fun m!83976 () Bool)

(assert (=> b!87681 m!83976))

(declare-fun m!83978 () Bool)

(assert (=> b!87682 m!83978))

(declare-fun m!83980 () Bool)

(assert (=> b!87682 m!83980))

(push 1)

(assert (not b_next!39619))

(assert (not b_lambda!16963))

(assert (not b_next!39617))

(assert b_and!59153)

(assert (not b_next!39623))

(assert b_and!59151)

(assert (not b!87681))

(assert (not b_next!39621))

(assert b_and!59149)

(assert (not b_lambda!16965))

(assert b_and!59155)

(assert (not start!11434))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39619))

(assert (not b_next!39617))

(assert b_and!59153)

(assert (not b_next!39623))

(assert b_and!59151)

(assert (not b_next!39621))

(assert b_and!59149)

(assert b_and!59155)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!16967 () Bool)

(assert (= b_lambda!16965 (or (and start!11434 b_free!7433) (and start!11434 b_free!7435 (= u1!4 u2!4)) (and start!11434 b_free!7437 (= s1!86 u2!4)) (and start!11434 b_free!7439 (= s2!85 u2!4)) b_lambda!16967)))

(declare-fun b_lambda!16969 () Bool)

(assert (= b_lambda!16963 (or (and start!11434 b_free!7433 (= u2!4 u1!4)) (and start!11434 b_free!7435) (and start!11434 b_free!7437 (= s1!86 u1!4)) (and start!11434 b_free!7439 (= s2!85 u1!4)) b_lambda!16969)))

(push 1)

(assert (not b_lambda!16967))

(assert (not b_next!39619))

(assert (not b_next!39617))

(assert b_and!59153)

(assert (not b_next!39623))

(assert b_and!59151)

(assert (not b!87681))

(assert (not b_next!39621))

(assert b_and!59149)

(assert (not b_lambda!16969))

(assert b_and!59155)

(assert (not start!11434))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39619))

(assert (not b_next!39617))

(assert b_and!59153)

(assert (not b_next!39623))

(assert b_and!59151)

(assert (not b_next!39621))

(assert b_and!59149)

(assert b_and!59155)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58327 () Bool)

(assert (=> d!58327 true))

(declare-fun lambda!10821 () Int)

(declare-fun order!473 () Int)

(declare-fun dynLambda!1025 (Int Int) Int)

(assert (=> d!58327 (< (dynLambda!1025 order!473 (union!1 (complement!1 s1!86) (complement!1 s2!85))) (dynLambda!1025 order!473 lambda!10821))))

(declare-fun b_next!39625 () Bool)

(assert (=> start!11434 (= b_next!39617 (or (and d!58327 (= lambda!10821 u2!4)) b_next!39625))))

(declare-fun b_next!39627 () Bool)

(assert (=> start!11434 (= b_next!39619 (or (and d!58327 (= lambda!10821 u1!4)) b_next!39627))))

(declare-fun b_next!39629 () Bool)

(assert (=> start!11434 (= b_next!39621 (or (and d!58327 (= lambda!10821 s1!86)) b_next!39629))))

(declare-fun b_next!39631 () Bool)

(assert (=> start!11434 (= b_next!39623 (or (and d!58327 (= lambda!10821 s2!85)) b_next!39631))))

(assert (=> d!58327 (= (complement!1 (union!1 (complement!1 s1!86) (complement!1 s2!85))) lambda!10821)))

(assert (=> b!87681 d!58327))

(declare-fun bs!41147 () Bool)

(declare-fun d!58329 () Bool)

(assert (= bs!41147 (and d!58329 d!58327)))

(declare-fun lambda!10824 () Int)

(assert (=> bs!41147 (not (= lambda!10824 lambda!10821))))

(assert (=> d!58329 true))

(assert (=> d!58329 (< (dynLambda!1025 order!473 (complement!1 s1!86)) (dynLambda!1025 order!473 lambda!10824))))

(assert (=> d!58329 true))

(assert (=> d!58329 (< (dynLambda!1025 order!473 (complement!1 s2!85)) (dynLambda!1025 order!473 lambda!10824))))

(declare-fun b_next!39633 () Bool)

(assert (=> start!11434 (= b_next!39625 (or (and d!58329 (= lambda!10824 u2!4)) b_next!39633))))

(declare-fun b_next!39635 () Bool)

(assert (=> start!11434 (= b_next!39627 (or (and d!58329 (= lambda!10824 u1!4)) b_next!39635))))

(declare-fun b_next!39637 () Bool)

(assert (=> start!11434 (= b_next!39629 (or (and d!58329 (= lambda!10824 s1!86)) b_next!39637))))

(declare-fun b_next!39639 () Bool)

(assert (=> start!11434 (= b_next!39631 (or (and d!58329 (= lambda!10824 s2!85)) b_next!39639))))

(assert (=> d!58329 (= (union!1 (complement!1 s1!86) (complement!1 s2!85)) lambda!10824)))

(assert (=> b!87681 d!58329))

(declare-fun bs!41148 () Bool)

(declare-fun d!58331 () Bool)

(assert (= bs!41148 (and d!58331 d!58327)))

(declare-fun lambda!10825 () Int)

(assert (=> bs!41148 (= (= s1!86 (union!1 (complement!1 s1!86) (complement!1 s2!85))) (= lambda!10825 lambda!10821))))

(declare-fun bs!41149 () Bool)

(assert (= bs!41149 (and d!58331 d!58329)))

(assert (=> bs!41149 (not (= lambda!10825 lambda!10824))))

(assert (=> d!58331 true))

(assert (=> d!58331 (< (dynLambda!1025 order!473 s1!86) (dynLambda!1025 order!473 lambda!10825))))

(declare-fun b_next!39641 () Bool)

(assert (=> start!11434 (= b_next!39633 (or (and d!58331 (= lambda!10825 u2!4)) b_next!39641))))

(declare-fun b_next!39643 () Bool)

(assert (=> start!11434 (= b_next!39635 (or (and d!58331 (= lambda!10825 u1!4)) b_next!39643))))

(declare-fun b_next!39645 () Bool)

(assert (=> start!11434 (= b_next!39639 (or (and d!58331 (= lambda!10825 s2!85)) b_next!39645))))

(assert (=> d!58331 (= (complement!1 s1!86) lambda!10825)))

(assert (=> b!87681 d!58331))

(declare-fun bs!41150 () Bool)

(declare-fun d!58333 () Bool)

(assert (= bs!41150 (and d!58333 d!58327)))

(declare-fun lambda!10826 () Int)

(assert (=> bs!41150 (= (= s2!85 (union!1 (complement!1 s1!86) (complement!1 s2!85))) (= lambda!10826 lambda!10821))))

(declare-fun bs!41151 () Bool)

(assert (= bs!41151 (and d!58333 d!58329)))

(assert (=> bs!41151 (not (= lambda!10826 lambda!10824))))

(declare-fun bs!41152 () Bool)

(assert (= bs!41152 (and d!58333 d!58331)))

(assert (=> bs!41152 (= (= s2!85 s1!86) (= lambda!10826 lambda!10825))))

(assert (=> d!58333 true))

(assert (=> d!58333 (< (dynLambda!1025 order!473 s2!85) (dynLambda!1025 order!473 lambda!10826))))

(declare-fun b_next!39647 () Bool)

(assert (=> start!11434 (= b_next!39641 (or (and d!58333 (= lambda!10826 u2!4)) b_next!39647))))

(declare-fun b_next!39649 () Bool)

(assert (=> start!11434 (= b_next!39643 (or (and d!58333 (= lambda!10826 u1!4)) b_next!39649))))

(declare-fun b_next!39651 () Bool)

(assert (=> start!11434 (= b_next!39637 (or (and d!58333 (= lambda!10826 s1!86)) b_next!39651))))

(assert (=> d!58333 (= (complement!1 s2!85) lambda!10826)))

(assert (=> b!87681 d!58333))

(declare-fun bs!41153 () Bool)

(declare-fun d!58335 () Bool)

(assert (= bs!41153 (and d!58335 d!58327)))

(declare-fun lambda!10829 () Int)

(assert (=> bs!41153 (not (= lambda!10829 lambda!10821))))

(declare-fun bs!41154 () Bool)

(assert (= bs!41154 (and d!58335 d!58329)))

(assert (=> bs!41154 (not (= lambda!10829 lambda!10824))))

(declare-fun bs!41155 () Bool)

(assert (= bs!41155 (and d!58335 d!58331)))

(assert (=> bs!41155 (not (= lambda!10829 lambda!10825))))

(declare-fun bs!41156 () Bool)

(assert (= bs!41156 (and d!58335 d!58333)))

(assert (=> bs!41156 (not (= lambda!10829 lambda!10826))))

(assert (=> d!58335 true))

(assert (=> d!58335 (< (dynLambda!1025 order!473 s1!86) (dynLambda!1025 order!473 lambda!10829))))

(assert (=> d!58335 true))

(assert (=> d!58335 (< (dynLambda!1025 order!473 s2!85) (dynLambda!1025 order!473 lambda!10829))))

(declare-fun b_next!39653 () Bool)

(assert (=> start!11434 (= b_next!39647 (or (and d!58335 (= lambda!10829 u2!4)) b_next!39653))))

(declare-fun b_next!39655 () Bool)

(assert (=> start!11434 (= b_next!39649 (or (and d!58335 (= lambda!10829 u1!4)) b_next!39655))))

(assert (=> d!58335 (= (intersection!1 s1!86 s2!85) lambda!10829)))

(assert (=> start!11434 d!58335))

(push 1)

(assert (not b_next!39653))

(assert (not b_lambda!16967))

(assert b_and!59153)

(assert b_and!59151)

(assert (not b_next!39655))

(assert b_and!59149)

(assert (not b_next!39645))

(assert (not b_next!39651))

(assert (not b_lambda!16969))

(assert b_and!59155)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39653))

(assert b_and!59153)

(assert b_and!59151)

(assert (not b_next!39655))

(assert b_and!59149)

(assert (not b_next!39645))

(assert (not b_next!39651))

(assert b_and!59155)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!16971 () Bool)

(assert (= b_lambda!16967 (or (and d!58327 (= lambda!10821 u2!4)) (and d!58329 (= lambda!10824 u2!4)) (and d!58333 (= lambda!10826 u2!4)) (and d!58335 (= lambda!10829 u2!4)) (and d!58331 (= lambda!10825 u2!4)) b_lambda!16971)))

(declare-fun bs!41157 () Bool)

(declare-fun d!58337 () Bool)

(assert (= bs!41157 (and d!58337 d!58329)))

(declare-fun res!45739 () Bool)

(declare-fun e!47605 () Bool)

(assert (=> bs!41157 (=> res!45739 e!47605)))

(assert (=> bs!41157 (= res!45739 (dynLambda!1024 (complement!1 s1!86) x!30518))))

(assert (=> bs!41157 (= (dynLambda!1024 lambda!10824 x!30518) e!47605)))

(declare-fun b!87689 () Bool)

(assert (=> b!87689 (= e!47605 (dynLambda!1024 (complement!1 s2!85) x!30518))))

(assert (= (and bs!41157 (not res!45739)) b!87689))

(declare-fun b_lambda!16975 () Bool)

(assert (=> (not b_lambda!16975) (not bs!41157)))

(declare-fun b_lambda!16977 () Bool)

(assert (=> (not b_lambda!16977) (not b!87689)))

(declare-fun m!83982 () Bool)

(assert (=> bs!41157 m!83982))

(declare-fun m!83984 () Bool)

(assert (=> b!87689 m!83984))

(assert (=> (and d!58329 (= lambda!10824 u2!4) b!87682) d!58337))

(declare-fun bs!41158 () Bool)

(declare-fun d!58339 () Bool)

(assert (= bs!41158 (and d!58339 d!58331)))

(assert (=> bs!41158 (= (dynLambda!1024 lambda!10825 x!30518) (not (dynLambda!1024 s1!86 x!30518)))))

(declare-fun b_lambda!16979 () Bool)

(assert (=> (not b_lambda!16979) (not bs!41158)))

(declare-fun t!48401 () Bool)

(declare-fun tb!46391 () Bool)

(assert (=> (and start!11434 (= u2!4 s1!86) t!48401) tb!46391))

(declare-fun result!46821 () Bool)

(assert (=> tb!46391 (= result!46821 true)))

(assert (=> bs!41158 t!48401))

(declare-fun b_and!59157 () Bool)

(assert (= b_and!59149 (and (=> t!48401 result!46821) b_and!59157)))

(declare-fun tb!46393 () Bool)

(declare-fun t!48403 () Bool)

(assert (=> (and start!11434 (= u1!4 s1!86) t!48403) tb!46393))

(declare-fun result!46823 () Bool)

(assert (=> tb!46393 (= result!46823 true)))

(assert (=> bs!41158 t!48403))

(declare-fun b_and!59159 () Bool)

(assert (= b_and!59151 (and (=> t!48403 result!46823) b_and!59159)))

(declare-fun t!48405 () Bool)

(declare-fun tb!46395 () Bool)

(assert (=> (and start!11434 (= s1!86 s1!86) t!48405) tb!46395))

(declare-fun result!46825 () Bool)

(assert (=> tb!46395 (= result!46825 true)))

(assert (=> bs!41158 t!48405))

(declare-fun b_and!59161 () Bool)

(assert (= b_and!59153 (and (=> t!48405 result!46825) b_and!59161)))

(declare-fun t!48407 () Bool)

(declare-fun tb!46397 () Bool)

(assert (=> (and start!11434 (= s2!85 s1!86) t!48407) tb!46397))

(declare-fun result!46827 () Bool)

(assert (=> tb!46397 (= result!46827 true)))

(assert (=> bs!41158 t!48407))

(declare-fun b_and!59163 () Bool)

(assert (= b_and!59155 (and (=> t!48407 result!46827) b_and!59163)))

(declare-fun m!83986 () Bool)

(assert (=> bs!41158 m!83986))

(assert (=> (and d!58331 (= lambda!10825 u2!4) b!87682) d!58339))

(declare-fun bs!41159 () Bool)

(declare-fun d!58341 () Bool)

(assert (= bs!41159 (and d!58341 d!58333)))

(assert (=> bs!41159 (= (dynLambda!1024 lambda!10826 x!30518) (not (dynLambda!1024 s2!85 x!30518)))))

(declare-fun b_lambda!16981 () Bool)

(assert (=> (not b_lambda!16981) (not bs!41159)))

(declare-fun t!48409 () Bool)

(declare-fun tb!46399 () Bool)

(assert (=> (and start!11434 (= u2!4 s2!85) t!48409) tb!46399))

(declare-fun result!46829 () Bool)

(assert (=> tb!46399 (= result!46829 true)))

(assert (=> bs!41159 t!48409))

(declare-fun b_and!59165 () Bool)

(assert (= b_and!59157 (and (=> t!48409 result!46829) b_and!59165)))

(declare-fun tb!46401 () Bool)

(declare-fun t!48411 () Bool)

(assert (=> (and start!11434 (= u1!4 s2!85) t!48411) tb!46401))

(declare-fun result!46831 () Bool)

(assert (=> tb!46401 (= result!46831 true)))

(assert (=> bs!41159 t!48411))

(declare-fun b_and!59167 () Bool)

(assert (= b_and!59159 (and (=> t!48411 result!46831) b_and!59167)))

(declare-fun t!48413 () Bool)

(declare-fun tb!46403 () Bool)

(assert (=> (and start!11434 (= s1!86 s2!85) t!48413) tb!46403))

(declare-fun result!46833 () Bool)

(assert (=> tb!46403 (= result!46833 true)))

(assert (=> bs!41159 t!48413))

(declare-fun b_and!59169 () Bool)

(assert (= b_and!59161 (and (=> t!48413 result!46833) b_and!59169)))

(declare-fun t!48415 () Bool)

(declare-fun tb!46405 () Bool)

(assert (=> (and start!11434 (= s2!85 s2!85) t!48415) tb!46405))

(declare-fun result!46835 () Bool)

(assert (=> tb!46405 (= result!46835 true)))

(assert (=> bs!41159 t!48415))

(declare-fun b_and!59171 () Bool)

(assert (= b_and!59163 (and (=> t!48415 result!46835) b_and!59171)))

(declare-fun m!83988 () Bool)

(assert (=> bs!41159 m!83988))

(assert (=> (and d!58333 (= lambda!10826 u2!4) b!87682) d!58341))

(declare-fun bs!41160 () Bool)

(declare-fun d!58343 () Bool)

(assert (= bs!41160 (and d!58343 d!58335)))

(declare-fun res!45740 () Bool)

(declare-fun e!47606 () Bool)

(assert (=> bs!41160 (=> (not res!45740) (not e!47606))))

(assert (=> bs!41160 (= res!45740 (dynLambda!1024 s1!86 x!30518))))

(assert (=> bs!41160 (= (dynLambda!1024 lambda!10829 x!30518) e!47606)))

(declare-fun b!87690 () Bool)

(assert (=> b!87690 (= e!47606 (dynLambda!1024 s2!85 x!30518))))

(assert (= (and bs!41160 res!45740) b!87690))

(declare-fun b_lambda!16983 () Bool)

(assert (=> (not b_lambda!16983) (not bs!41160)))

(assert (=> bs!41160 t!48401))

(declare-fun b_and!59173 () Bool)

(assert (= b_and!59165 (and (=> t!48401 result!46821) b_and!59173)))

(assert (=> bs!41160 t!48403))

(declare-fun b_and!59175 () Bool)

(assert (= b_and!59167 (and (=> t!48403 result!46823) b_and!59175)))

(assert (=> bs!41160 t!48405))

(declare-fun b_and!59177 () Bool)

(assert (= b_and!59169 (and (=> t!48405 result!46825) b_and!59177)))

(assert (=> bs!41160 t!48407))

(declare-fun b_and!59179 () Bool)

(assert (= b_and!59171 (and (=> t!48407 result!46827) b_and!59179)))

(declare-fun b_lambda!16985 () Bool)

(assert (=> (not b_lambda!16985) (not b!87690)))

(assert (=> b!87690 t!48409))

(declare-fun b_and!59181 () Bool)

(assert (= b_and!59173 (and (=> t!48409 result!46829) b_and!59181)))

(assert (=> b!87690 t!48411))

(declare-fun b_and!59183 () Bool)

(assert (= b_and!59175 (and (=> t!48411 result!46831) b_and!59183)))

(assert (=> b!87690 t!48413))

(declare-fun b_and!59185 () Bool)

(assert (= b_and!59177 (and (=> t!48413 result!46833) b_and!59185)))

(assert (=> b!87690 t!48415))

(declare-fun b_and!59187 () Bool)

(assert (= b_and!59179 (and (=> t!48415 result!46835) b_and!59187)))

(assert (=> bs!41160 m!83986))

(assert (=> b!87690 m!83988))

(assert (=> (and d!58335 (= lambda!10829 u2!4) b!87682) d!58343))

(declare-fun bs!41161 () Bool)

(declare-fun d!58345 () Bool)

(assert (= bs!41161 (and d!58345 d!58327)))

(assert (=> bs!41161 (= (dynLambda!1024 lambda!10821 x!30518) (not (dynLambda!1024 (union!1 (complement!1 s1!86) (complement!1 s2!85)) x!30518)))))

(declare-fun b_lambda!16987 () Bool)

(assert (=> (not b_lambda!16987) (not bs!41161)))

(declare-fun m!83990 () Bool)

(assert (=> bs!41161 m!83990))

(assert (=> (and d!58327 (= lambda!10821 u2!4) b!87682) d!58345))

(declare-fun b_lambda!16973 () Bool)

(assert (= b_lambda!16969 (or (and d!58331 (= lambda!10825 u1!4)) (and d!58327 (= lambda!10821 u1!4)) (and d!58329 (= lambda!10824 u1!4)) (and d!58335 (= lambda!10829 u1!4)) (and d!58333 (= lambda!10826 u1!4)) b_lambda!16973)))

(declare-fun bs!41162 () Bool)

(declare-fun d!58347 () Bool)

(assert (= bs!41162 (and d!58347 d!58327)))

(assert (=> bs!41162 (= (dynLambda!1024 lambda!10821 x!30518) (not (dynLambda!1024 (union!1 (complement!1 s1!86) (complement!1 s2!85)) x!30518)))))

(declare-fun b_lambda!16989 () Bool)

(assert (=> (not b_lambda!16989) (not bs!41162)))

(assert (=> bs!41162 m!83990))

(assert (=> (and d!58327 (= lambda!10821 u1!4) b!87682) d!58347))

(declare-fun bs!41163 () Bool)

(declare-fun d!58349 () Bool)

(assert (= bs!41163 (and d!58349 d!58333)))

(assert (=> bs!41163 (= (dynLambda!1024 lambda!10826 x!30518) (not (dynLambda!1024 s2!85 x!30518)))))

(declare-fun b_lambda!16991 () Bool)

(assert (=> (not b_lambda!16991) (not bs!41163)))

(assert (=> bs!41163 t!48409))

(declare-fun b_and!59189 () Bool)

(assert (= b_and!59181 (and (=> t!48409 result!46829) b_and!59189)))

(assert (=> bs!41163 t!48411))

(declare-fun b_and!59191 () Bool)

(assert (= b_and!59183 (and (=> t!48411 result!46831) b_and!59191)))

(assert (=> bs!41163 t!48413))

(declare-fun b_and!59193 () Bool)

(assert (= b_and!59185 (and (=> t!48413 result!46833) b_and!59193)))

(assert (=> bs!41163 t!48415))

(declare-fun b_and!59195 () Bool)

(assert (= b_and!59187 (and (=> t!48415 result!46835) b_and!59195)))

(assert (=> bs!41163 m!83988))

(assert (=> (and d!58333 (= lambda!10826 u1!4) b!87682) d!58349))

(declare-fun bs!41164 () Bool)

(declare-fun d!58351 () Bool)

(assert (= bs!41164 (and d!58351 d!58329)))

(declare-fun res!45741 () Bool)

(declare-fun e!47607 () Bool)

(assert (=> bs!41164 (=> res!45741 e!47607)))

(assert (=> bs!41164 (= res!45741 (dynLambda!1024 (complement!1 s1!86) x!30518))))

(assert (=> bs!41164 (= (dynLambda!1024 lambda!10824 x!30518) e!47607)))

(declare-fun b!87691 () Bool)

(assert (=> b!87691 (= e!47607 (dynLambda!1024 (complement!1 s2!85) x!30518))))

(assert (= (and bs!41164 (not res!45741)) b!87691))

(declare-fun b_lambda!16993 () Bool)

(assert (=> (not b_lambda!16993) (not bs!41164)))

(declare-fun b_lambda!16995 () Bool)

(assert (=> (not b_lambda!16995) (not b!87691)))

(assert (=> bs!41164 m!83982))

(assert (=> b!87691 m!83984))

(assert (=> (and d!58329 (= lambda!10824 u1!4) b!87682) d!58351))

(declare-fun bs!41165 () Bool)

(declare-fun d!58353 () Bool)

(assert (= bs!41165 (and d!58353 d!58331)))

(assert (=> bs!41165 (= (dynLambda!1024 lambda!10825 x!30518) (not (dynLambda!1024 s1!86 x!30518)))))

(declare-fun b_lambda!16997 () Bool)

(assert (=> (not b_lambda!16997) (not bs!41165)))

(assert (=> bs!41165 t!48401))

(declare-fun b_and!59197 () Bool)

(assert (= b_and!59189 (and (=> t!48401 result!46821) b_and!59197)))

(assert (=> bs!41165 t!48403))

(declare-fun b_and!59199 () Bool)

(assert (= b_and!59191 (and (=> t!48403 result!46823) b_and!59199)))

(assert (=> bs!41165 t!48405))

(declare-fun b_and!59201 () Bool)

(assert (= b_and!59193 (and (=> t!48405 result!46825) b_and!59201)))

(assert (=> bs!41165 t!48407))

(declare-fun b_and!59203 () Bool)

(assert (= b_and!59195 (and (=> t!48407 result!46827) b_and!59203)))

(assert (=> bs!41165 m!83986))

(assert (=> (and d!58331 (= lambda!10825 u1!4) b!87682) d!58353))

(declare-fun bs!41166 () Bool)

(declare-fun d!58355 () Bool)

(assert (= bs!41166 (and d!58355 d!58335)))

(declare-fun res!45742 () Bool)

(declare-fun e!47608 () Bool)

(assert (=> bs!41166 (=> (not res!45742) (not e!47608))))

(assert (=> bs!41166 (= res!45742 (dynLambda!1024 s1!86 x!30518))))

(assert (=> bs!41166 (= (dynLambda!1024 lambda!10829 x!30518) e!47608)))

(declare-fun b!87692 () Bool)

(assert (=> b!87692 (= e!47608 (dynLambda!1024 s2!85 x!30518))))

(assert (= (and bs!41166 res!45742) b!87692))

(declare-fun b_lambda!16999 () Bool)

(assert (=> (not b_lambda!16999) (not bs!41166)))

(assert (=> bs!41166 t!48401))

(declare-fun b_and!59205 () Bool)

(assert (= b_and!59197 (and (=> t!48401 result!46821) b_and!59205)))

(assert (=> bs!41166 t!48403))

(declare-fun b_and!59207 () Bool)

(assert (= b_and!59199 (and (=> t!48403 result!46823) b_and!59207)))

(assert (=> bs!41166 t!48405))

(declare-fun b_and!59209 () Bool)

(assert (= b_and!59201 (and (=> t!48405 result!46825) b_and!59209)))

(assert (=> bs!41166 t!48407))

(declare-fun b_and!59211 () Bool)

(assert (= b_and!59203 (and (=> t!48407 result!46827) b_and!59211)))

(declare-fun b_lambda!17001 () Bool)

(assert (=> (not b_lambda!17001) (not b!87692)))

(assert (=> b!87692 t!48409))

(declare-fun b_and!59213 () Bool)

(assert (= b_and!59205 (and (=> t!48409 result!46829) b_and!59213)))

(assert (=> b!87692 t!48411))

(declare-fun b_and!59215 () Bool)

(assert (= b_and!59207 (and (=> t!48411 result!46831) b_and!59215)))

(assert (=> b!87692 t!48413))

(declare-fun b_and!59217 () Bool)

(assert (= b_and!59209 (and (=> t!48413 result!46833) b_and!59217)))

(assert (=> b!87692 t!48415))

(declare-fun b_and!59219 () Bool)

(assert (= b_and!59211 (and (=> t!48415 result!46835) b_and!59219)))

(assert (=> bs!41166 m!83986))

(assert (=> b!87692 m!83988))

(assert (=> (and d!58335 (= lambda!10829 u1!4) b!87682) d!58355))

(push 1)

(assert (not b_lambda!16997))

(assert (not b_lambda!16985))

(assert (not b_lambda!16971))

(assert (not b_next!39653))

(assert (not b_lambda!16977))

(assert b_and!59217)

(assert (not b_lambda!16983))

(assert (not b_lambda!16989))

(assert (not b_lambda!16999))

(assert (not b_lambda!16987))

(assert (not b_lambda!16973))

(assert (not b_lambda!16981))

(assert (not b_lambda!17001))

(assert (not b_next!39655))

(assert b_and!59215)

(assert b_and!59219)

(assert (not b_next!39645))

(assert (not b_lambda!16975))

(assert (not b_lambda!16979))

(assert (not b_next!39651))

(assert b_and!59213)

(assert (not b_lambda!16995))

(assert (not b_lambda!16991))

(assert (not b_lambda!16993))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39653))

(assert b_and!59217)

(assert (not b_next!39655))

(assert b_and!59215)

(assert b_and!59219)

(assert (not b_next!39645))

(assert (not b_next!39651))

(assert b_and!59213)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17003 () Bool)

(assert (= b_lambda!16979 (or (and d!58333 (= lambda!10826 s1!86)) (and d!58327 (= lambda!10821 s1!86)) (and d!58329 (= lambda!10824 s1!86)) (and start!11434 b_free!7435 (= u1!4 s1!86)) (and start!11434 b_free!7439 (= s2!85 s1!86)) (and start!11434 b_free!7437) (and start!11434 b_free!7433 (= u2!4 s1!86)) b_lambda!17003)))

(declare-fun bs!41167 () Bool)

(declare-fun d!58357 () Bool)

(assert (= bs!41167 (and d!58357 d!58327)))

(assert (=> bs!41167 (= (dynLambda!1024 lambda!10821 x!30518) (not (dynLambda!1024 (union!1 (complement!1 s1!86) (complement!1 s2!85)) x!30518)))))

(declare-fun b_lambda!17031 () Bool)

(assert (=> (not b_lambda!17031) (not bs!41167)))

(assert (=> bs!41167 m!83990))

(assert (=> (and d!58327 (= lambda!10821 s1!86) bs!41158) d!58357))

(declare-fun bs!41168 () Bool)

(declare-fun d!58359 () Bool)

(assert (= bs!41168 (and d!58359 d!58333)))

(assert (=> bs!41168 (= (dynLambda!1024 lambda!10826 x!30518) (not (dynLambda!1024 s2!85 x!30518)))))

(declare-fun b_lambda!17033 () Bool)

(assert (=> (not b_lambda!17033) (not bs!41168)))

(assert (=> bs!41168 t!48409))

(declare-fun b_and!59221 () Bool)

(assert (= b_and!59213 (and (=> t!48409 result!46829) b_and!59221)))

(assert (=> bs!41168 t!48411))

(declare-fun b_and!59223 () Bool)

(assert (= b_and!59215 (and (=> t!48411 result!46831) b_and!59223)))

(assert (=> bs!41168 t!48413))

(declare-fun b_and!59225 () Bool)

(assert (= b_and!59217 (and (=> t!48413 result!46833) b_and!59225)))

(assert (=> bs!41168 t!48415))

(declare-fun b_and!59227 () Bool)

(assert (= b_and!59219 (and (=> t!48415 result!46835) b_and!59227)))

(assert (=> bs!41168 m!83988))

(assert (=> (and d!58333 (= lambda!10826 s1!86) bs!41158) d!58359))

(declare-fun bs!41169 () Bool)

(declare-fun d!58361 () Bool)

(assert (= bs!41169 (and d!58361 d!58329)))

(declare-fun res!45743 () Bool)

(declare-fun e!47609 () Bool)

(assert (=> bs!41169 (=> res!45743 e!47609)))

(assert (=> bs!41169 (= res!45743 (dynLambda!1024 (complement!1 s1!86) x!30518))))

(assert (=> bs!41169 (= (dynLambda!1024 lambda!10824 x!30518) e!47609)))

(declare-fun b!87693 () Bool)

(assert (=> b!87693 (= e!47609 (dynLambda!1024 (complement!1 s2!85) x!30518))))

(assert (= (and bs!41169 (not res!45743)) b!87693))

(declare-fun b_lambda!17035 () Bool)

(assert (=> (not b_lambda!17035) (not bs!41169)))

(declare-fun b_lambda!17037 () Bool)

(assert (=> (not b_lambda!17037) (not b!87693)))

(assert (=> bs!41169 m!83982))

(assert (=> b!87693 m!83984))

(assert (=> (and d!58329 (= lambda!10824 s1!86) bs!41158) d!58361))

(declare-fun b_lambda!17005 () Bool)

(assert (= b_lambda!16999 (or (and d!58333 (= lambda!10826 s1!86)) (and d!58327 (= lambda!10821 s1!86)) (and d!58329 (= lambda!10824 s1!86)) (and start!11434 b_free!7435 (= u1!4 s1!86)) (and start!11434 b_free!7439 (= s2!85 s1!86)) (and start!11434 b_free!7437) (and start!11434 b_free!7433 (= u2!4 s1!86)) b_lambda!17005)))

(assert (=> (and d!58327 (= lambda!10821 s1!86) bs!41166) d!58357))

(assert (=> (and d!58333 (= lambda!10826 s1!86) bs!41166) d!58359))

(assert (=> (and d!58329 (= lambda!10824 s1!86) bs!41166) d!58361))

(declare-fun b_lambda!17007 () Bool)

(assert (= b_lambda!16991 (or (and start!11434 b_free!7437 (= s1!86 s2!85)) (and start!11434 b_free!7435 (= u1!4 s2!85)) (and d!58329 (= lambda!10824 s2!85)) (and start!11434 b_free!7439) (and d!58331 (= lambda!10825 s2!85)) (and d!58327 (= lambda!10821 s2!85)) (and start!11434 b_free!7433 (= u2!4 s2!85)) b_lambda!17007)))

(declare-fun bs!41170 () Bool)

(declare-fun d!58363 () Bool)

(assert (= bs!41170 (and d!58363 d!58331)))

(assert (=> bs!41170 (= (dynLambda!1024 lambda!10825 x!30518) (not (dynLambda!1024 s1!86 x!30518)))))

(declare-fun b_lambda!17039 () Bool)

(assert (=> (not b_lambda!17039) (not bs!41170)))

(assert (=> bs!41170 t!48401))

(declare-fun b_and!59229 () Bool)

(assert (= b_and!59221 (and (=> t!48401 result!46821) b_and!59229)))

(assert (=> bs!41170 t!48403))

(declare-fun b_and!59231 () Bool)

(assert (= b_and!59223 (and (=> t!48403 result!46823) b_and!59231)))

(assert (=> bs!41170 t!48405))

(declare-fun b_and!59233 () Bool)

(assert (= b_and!59225 (and (=> t!48405 result!46825) b_and!59233)))

(assert (=> bs!41170 t!48407))

(declare-fun b_and!59235 () Bool)

(assert (= b_and!59227 (and (=> t!48407 result!46827) b_and!59235)))

(assert (=> bs!41170 m!83986))

(assert (=> (and d!58331 (= lambda!10825 s2!85) bs!41163) d!58363))

(declare-fun bs!41171 () Bool)

(declare-fun d!58365 () Bool)

(assert (= bs!41171 (and d!58365 d!58329)))

(declare-fun res!45744 () Bool)

(declare-fun e!47610 () Bool)

(assert (=> bs!41171 (=> res!45744 e!47610)))

(assert (=> bs!41171 (= res!45744 (dynLambda!1024 (complement!1 s1!86) x!30518))))

(assert (=> bs!41171 (= (dynLambda!1024 lambda!10824 x!30518) e!47610)))

(declare-fun b!87694 () Bool)

(assert (=> b!87694 (= e!47610 (dynLambda!1024 (complement!1 s2!85) x!30518))))

(assert (= (and bs!41171 (not res!45744)) b!87694))

(declare-fun b_lambda!17041 () Bool)

(assert (=> (not b_lambda!17041) (not bs!41171)))

(declare-fun b_lambda!17043 () Bool)

(assert (=> (not b_lambda!17043) (not b!87694)))

(assert (=> bs!41171 m!83982))

(assert (=> b!87694 m!83984))

(assert (=> (and d!58329 (= lambda!10824 s2!85) bs!41163) d!58365))

(declare-fun bs!41172 () Bool)

(declare-fun d!58367 () Bool)

(assert (= bs!41172 (and d!58367 d!58327)))

(assert (=> bs!41172 (= (dynLambda!1024 lambda!10821 x!30518) (not (dynLambda!1024 (union!1 (complement!1 s1!86) (complement!1 s2!85)) x!30518)))))

(declare-fun b_lambda!17045 () Bool)

(assert (=> (not b_lambda!17045) (not bs!41172)))

(assert (=> bs!41172 m!83990))

(assert (=> (and d!58327 (= lambda!10821 s2!85) bs!41163) d!58367))

(declare-fun b_lambda!17009 () Bool)

(assert (= b_lambda!16993 (or d!58331 b_lambda!17009)))

(declare-fun bs!41173 () Bool)

(declare-fun d!58369 () Bool)

(assert (= bs!41173 (and d!58369 d!58331)))

(assert (=> bs!41173 (= (dynLambda!1024 lambda!10825 x!30518) (not (dynLambda!1024 s1!86 x!30518)))))

(declare-fun b_lambda!17047 () Bool)

(assert (=> (not b_lambda!17047) (not bs!41173)))

(assert (=> bs!41173 t!48401))

(declare-fun b_and!59237 () Bool)

(assert (= b_and!59229 (and (=> t!48401 result!46821) b_and!59237)))

(assert (=> bs!41173 t!48403))

(declare-fun b_and!59239 () Bool)

(assert (= b_and!59231 (and (=> t!48403 result!46823) b_and!59239)))

(assert (=> bs!41173 t!48405))

(declare-fun b_and!59241 () Bool)

(assert (= b_and!59233 (and (=> t!48405 result!46825) b_and!59241)))

(assert (=> bs!41173 t!48407))

(declare-fun b_and!59243 () Bool)

(assert (= b_and!59235 (and (=> t!48407 result!46827) b_and!59243)))

(assert (=> bs!41173 m!83986))

(assert (=> bs!41164 d!58369))

(declare-fun b_lambda!17011 () Bool)

(assert (= b_lambda!16975 (or d!58331 b_lambda!17011)))

(assert (=> bs!41157 d!58369))

(declare-fun b_lambda!17013 () Bool)

(assert (= b_lambda!16981 (or (and start!11434 b_free!7437 (= s1!86 s2!85)) (and start!11434 b_free!7435 (= u1!4 s2!85)) (and d!58329 (= lambda!10824 s2!85)) (and start!11434 b_free!7439) (and d!58331 (= lambda!10825 s2!85)) (and d!58327 (= lambda!10821 s2!85)) (and start!11434 b_free!7433 (= u2!4 s2!85)) b_lambda!17013)))

(assert (=> (and d!58331 (= lambda!10825 s2!85) bs!41159) d!58363))

(assert (=> (and d!58329 (= lambda!10824 s2!85) bs!41159) d!58365))

(assert (=> (and d!58327 (= lambda!10821 s2!85) bs!41159) d!58367))

(declare-fun b_lambda!17015 () Bool)

(assert (= b_lambda!16995 (or d!58333 b_lambda!17015)))

(declare-fun bs!41174 () Bool)

(declare-fun d!58371 () Bool)

(assert (= bs!41174 (and d!58371 d!58333)))

(assert (=> bs!41174 (= (dynLambda!1024 lambda!10826 x!30518) (not (dynLambda!1024 s2!85 x!30518)))))

(declare-fun b_lambda!17049 () Bool)

(assert (=> (not b_lambda!17049) (not bs!41174)))

(assert (=> bs!41174 t!48409))

(declare-fun b_and!59245 () Bool)

(assert (= b_and!59237 (and (=> t!48409 result!46829) b_and!59245)))

(assert (=> bs!41174 t!48411))

(declare-fun b_and!59247 () Bool)

(assert (= b_and!59239 (and (=> t!48411 result!46831) b_and!59247)))

(assert (=> bs!41174 t!48413))

(declare-fun b_and!59249 () Bool)

(assert (= b_and!59241 (and (=> t!48413 result!46833) b_and!59249)))

(assert (=> bs!41174 t!48415))

(declare-fun b_and!59251 () Bool)

(assert (= b_and!59243 (and (=> t!48415 result!46835) b_and!59251)))

(assert (=> bs!41174 m!83988))

(assert (=> b!87691 d!58371))

(declare-fun b_lambda!17017 () Bool)

(assert (= b_lambda!17001 (or (and start!11434 b_free!7437 (= s1!86 s2!85)) (and start!11434 b_free!7435 (= u1!4 s2!85)) (and d!58329 (= lambda!10824 s2!85)) (and start!11434 b_free!7439) (and d!58331 (= lambda!10825 s2!85)) (and d!58327 (= lambda!10821 s2!85)) (and start!11434 b_free!7433 (= u2!4 s2!85)) b_lambda!17017)))

(assert (=> (and d!58331 (= lambda!10825 s2!85) b!87692) d!58363))

(assert (=> (and d!58329 (= lambda!10824 s2!85) b!87692) d!58365))

(assert (=> (and d!58327 (= lambda!10821 s2!85) b!87692) d!58367))

(declare-fun b_lambda!17019 () Bool)

(assert (= b_lambda!16989 (or d!58329 b_lambda!17019)))

(declare-fun bs!41175 () Bool)

(declare-fun d!58373 () Bool)

(assert (= bs!41175 (and d!58373 d!58329)))

(declare-fun res!45745 () Bool)

(declare-fun e!47611 () Bool)

(assert (=> bs!41175 (=> res!45745 e!47611)))

(assert (=> bs!41175 (= res!45745 (dynLambda!1024 (complement!1 s1!86) x!30518))))

(assert (=> bs!41175 (= (dynLambda!1024 lambda!10824 x!30518) e!47611)))

(declare-fun b!87695 () Bool)

(assert (=> b!87695 (= e!47611 (dynLambda!1024 (complement!1 s2!85) x!30518))))

(assert (= (and bs!41175 (not res!45745)) b!87695))

(declare-fun b_lambda!17051 () Bool)

(assert (=> (not b_lambda!17051) (not bs!41175)))

(declare-fun b_lambda!17053 () Bool)

(assert (=> (not b_lambda!17053) (not b!87695)))

(assert (=> bs!41175 m!83982))

(assert (=> b!87695 m!83984))

(assert (=> bs!41162 d!58373))

(declare-fun b_lambda!17021 () Bool)

(assert (= b_lambda!16985 (or (and start!11434 b_free!7437 (= s1!86 s2!85)) (and start!11434 b_free!7435 (= u1!4 s2!85)) (and d!58329 (= lambda!10824 s2!85)) (and start!11434 b_free!7439) (and d!58331 (= lambda!10825 s2!85)) (and d!58327 (= lambda!10821 s2!85)) (and start!11434 b_free!7433 (= u2!4 s2!85)) b_lambda!17021)))

(assert (=> (and d!58331 (= lambda!10825 s2!85) b!87690) d!58363))

(assert (=> (and d!58329 (= lambda!10824 s2!85) b!87690) d!58365))

(assert (=> (and d!58327 (= lambda!10821 s2!85) b!87690) d!58367))

(declare-fun b_lambda!17023 () Bool)

(assert (= b_lambda!16977 (or d!58333 b_lambda!17023)))

(assert (=> b!87689 d!58371))

(declare-fun b_lambda!17025 () Bool)

(assert (= b_lambda!16983 (or (and d!58333 (= lambda!10826 s1!86)) (and d!58327 (= lambda!10821 s1!86)) (and d!58329 (= lambda!10824 s1!86)) (and start!11434 b_free!7435 (= u1!4 s1!86)) (and start!11434 b_free!7439 (= s2!85 s1!86)) (and start!11434 b_free!7437) (and start!11434 b_free!7433 (= u2!4 s1!86)) b_lambda!17025)))

(assert (=> (and d!58327 (= lambda!10821 s1!86) bs!41160) d!58357))

(assert (=> (and d!58333 (= lambda!10826 s1!86) bs!41160) d!58359))

(assert (=> (and d!58329 (= lambda!10824 s1!86) bs!41160) d!58361))

(declare-fun b_lambda!17027 () Bool)

(assert (= b_lambda!16987 (or d!58329 b_lambda!17027)))

(assert (=> bs!41161 d!58373))

(declare-fun b_lambda!17029 () Bool)

(assert (= b_lambda!16997 (or (and d!58333 (= lambda!10826 s1!86)) (and d!58327 (= lambda!10821 s1!86)) (and d!58329 (= lambda!10824 s1!86)) (and start!11434 b_free!7435 (= u1!4 s1!86)) (and start!11434 b_free!7439 (= s2!85 s1!86)) (and start!11434 b_free!7437) (and start!11434 b_free!7433 (= u2!4 s1!86)) b_lambda!17029)))

(assert (=> (and d!58327 (= lambda!10821 s1!86) bs!41165) d!58357))

(assert (=> (and d!58333 (= lambda!10826 s1!86) bs!41165) d!58359))

(assert (=> (and d!58329 (= lambda!10824 s1!86) bs!41165) d!58361))

(push 1)

(assert (not b_lambda!17011))

(assert b_and!59245)

(assert (not b_lambda!17005))

(assert (not b_lambda!17031))

(assert (not b_lambda!17037))

(assert (not b_lambda!16971))

(assert (not b_next!39653))

(assert (not b_lambda!17013))

(assert (not b_lambda!17039))

(assert (not b_lambda!17019))

(assert (not b_lambda!17051))

(assert (not b_lambda!17025))

(assert (not b_lambda!17007))

(assert (not b_lambda!17053))

(assert (not b_lambda!17003))

(assert (not b_lambda!17027))

(assert (not b_lambda!17015))

(assert (not b_lambda!17009))

(assert (not b_lambda!16973))

(assert (not b_next!39655))

(assert (not b_lambda!17045))

(assert (not b_lambda!17049))

(assert (not b_lambda!17017))

(assert (not b_next!39645))

(assert (not b_lambda!17043))

(assert (not b_lambda!17029))

(assert b_and!59251)

(assert (not b_next!39651))

(assert (not b_lambda!17021))

(assert (not b_lambda!17047))

(assert (not b_lambda!17023))

(assert (not b_lambda!17035))

(assert b_and!59249)

(assert (not b_lambda!17033))

(assert (not b_lambda!17041))

(assert b_and!59247)

(check-sat)

(pop 1)

(push 1)

(assert b_and!59245)

(assert (not b_next!39653))

(assert (not b_next!39655))

(assert (not b_next!39645))

(assert b_and!59251)

(assert (not b_next!39651))

(assert b_and!59249)

(assert b_and!59247)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!17055 () Bool)

(assert (= b_lambda!17039 (or (and d!58333 (= lambda!10826 s1!86)) (and d!58327 (= lambda!10821 s1!86)) (and d!58329 (= lambda!10824 s1!86)) (and start!11434 b_free!7435 (= u1!4 s1!86)) (and start!11434 b_free!7439 (= s2!85 s1!86)) (and start!11434 b_free!7437) (and start!11434 b_free!7433 (= u2!4 s1!86)) b_lambda!17055)))

(assert (=> (and d!58327 (= lambda!10821 s1!86) bs!41170) d!58357))

(assert (=> (and d!58333 (= lambda!10826 s1!86) bs!41170) d!58359))

(assert (=> (and d!58329 (= lambda!10824 s1!86) bs!41170) d!58361))

(declare-fun b_lambda!17057 () Bool)

(assert (= b_lambda!17031 (or d!58329 b_lambda!17057)))

(assert (=> bs!41167 d!58373))

(declare-fun b_lambda!17059 () Bool)

(assert (= b_lambda!17049 (or (and start!11434 b_free!7437 (= s1!86 s2!85)) (and start!11434 b_free!7435 (= u1!4 s2!85)) (and d!58329 (= lambda!10824 s2!85)) (and start!11434 b_free!7439) (and d!58331 (= lambda!10825 s2!85)) (and d!58327 (= lambda!10821 s2!85)) (and start!11434 b_free!7433 (= u2!4 s2!85)) b_lambda!17059)))

(assert (=> (and d!58331 (= lambda!10825 s2!85) bs!41174) d!58363))

(assert (=> (and d!58329 (= lambda!10824 s2!85) bs!41174) d!58365))

(assert (=> (and d!58327 (= lambda!10821 s2!85) bs!41174) d!58367))

(declare-fun b_lambda!17061 () Bool)

(assert (= b_lambda!17041 (or d!58331 b_lambda!17061)))

(assert (=> bs!41171 d!58369))

(declare-fun b_lambda!17063 () Bool)

(assert (= b_lambda!17045 (or d!58329 b_lambda!17063)))

(assert (=> bs!41172 d!58373))

(declare-fun b_lambda!17065 () Bool)

(assert (= b_lambda!17035 (or d!58331 b_lambda!17065)))

(assert (=> bs!41169 d!58369))

(declare-fun b_lambda!17067 () Bool)

(assert (= b_lambda!17037 (or d!58333 b_lambda!17067)))

(assert (=> b!87693 d!58371))

(declare-fun b_lambda!17069 () Bool)

(assert (= b_lambda!17047 (or (and d!58333 (= lambda!10826 s1!86)) (and d!58327 (= lambda!10821 s1!86)) (and d!58329 (= lambda!10824 s1!86)) (and start!11434 b_free!7435 (= u1!4 s1!86)) (and start!11434 b_free!7439 (= s2!85 s1!86)) (and start!11434 b_free!7437) (and start!11434 b_free!7433 (= u2!4 s1!86)) b_lambda!17069)))

(assert (=> (and d!58327 (= lambda!10821 s1!86) bs!41173) d!58357))

(assert (=> (and d!58333 (= lambda!10826 s1!86) bs!41173) d!58359))

(assert (=> (and d!58329 (= lambda!10824 s1!86) bs!41173) d!58361))

(declare-fun b_lambda!17071 () Bool)

(assert (= b_lambda!17043 (or d!58333 b_lambda!17071)))

(assert (=> b!87694 d!58371))

(declare-fun b_lambda!17073 () Bool)

(assert (= b_lambda!17033 (or (and start!11434 b_free!7437 (= s1!86 s2!85)) (and start!11434 b_free!7435 (= u1!4 s2!85)) (and d!58329 (= lambda!10824 s2!85)) (and start!11434 b_free!7439) (and d!58331 (= lambda!10825 s2!85)) (and d!58327 (= lambda!10821 s2!85)) (and start!11434 b_free!7433 (= u2!4 s2!85)) b_lambda!17073)))

(assert (=> (and d!58331 (= lambda!10825 s2!85) bs!41168) d!58363))

(assert (=> (and d!58329 (= lambda!10824 s2!85) bs!41168) d!58365))

(assert (=> (and d!58327 (= lambda!10821 s2!85) bs!41168) d!58367))

(declare-fun b_lambda!17075 () Bool)

(assert (= b_lambda!17053 (or d!58333 b_lambda!17075)))

(assert (=> b!87695 d!58371))

(declare-fun b_lambda!17077 () Bool)

(assert (= b_lambda!17051 (or d!58331 b_lambda!17077)))

(assert (=> bs!41175 d!58369))

(push 1)

(assert (not b_lambda!17011))

(assert b_and!59245)

(assert (not b_lambda!17005))

(assert (not b_lambda!16971))

(assert (not b_next!39653))

(assert (not b_lambda!17013))

(assert (not b_lambda!17063))

(assert (not b_lambda!17073))

(assert (not b_lambda!17019))

(assert (not b_lambda!17025))

(assert (not b_lambda!17007))

(assert (not b_lambda!17067))

(assert (not b_lambda!17065))

(assert (not b_lambda!17075))

(assert (not b_lambda!17003))

(assert (not b_lambda!17027))

(assert (not b_lambda!17015))

(assert (not b_lambda!17009))

(assert (not b_lambda!16973))

(assert (not b_lambda!17059))

(assert (not b_lambda!17055))

(assert (not b_next!39655))

(assert (not b_lambda!17017))

(assert (not b_lambda!17071))

(assert (not b_next!39645))

(assert (not b_lambda!17029))

(assert (not b_lambda!17057))

(assert (not b_lambda!17061))

(assert b_and!59251)

(assert (not b_lambda!17069))

(assert (not b_lambda!17077))

(assert (not b_next!39651))

(assert (not b_lambda!17021))

(assert (not b_lambda!17023))

(assert b_and!59249)

(assert b_and!59247)

(check-sat)

(pop 1)

