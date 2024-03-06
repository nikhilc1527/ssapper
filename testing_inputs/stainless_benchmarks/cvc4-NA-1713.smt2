; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11840 () Bool)

(assert start!11840)

(declare-fun b!90085 () Bool)

(declare-fun b_free!7615 () Bool)

(declare-fun b_next!39983 () Bool)

(assert (=> b!90085 (= b_free!7615 (not b_next!39983))))

(declare-fun tp!17678 () Bool)

(declare-fun b_and!60647 () Bool)

(assert (=> b!90085 (= tp!17678 b_and!60647)))

(declare-fun b!90086 () Bool)

(declare-fun b_free!7617 () Bool)

(declare-fun b_next!39985 () Bool)

(assert (=> b!90086 (= b_free!7617 (not b_next!39985))))

(declare-fun tp!17679 () Bool)

(declare-fun b_and!60649 () Bool)

(assert (=> b!90086 (= tp!17679 b_and!60649)))

(declare-fun b_lambda!18429 () Bool)

(declare-fun b!90083 () Bool)

(assert (=> (not b_lambda!18429) (not b!90083)))

(declare-datatypes () ((Stream!28 (Stream!29 (head!1105 Int) (tail!1100 Int)))))

(declare-fun s!2619 () Stream!28)

(declare-fun t!48933 () Bool)

(declare-fun s!2618 () Stream!28)

(declare-fun tb!46755 () Bool)

(declare-fun dynLambda!1095 (Int) Stream!28)

(assert (=> (and b!90085 (= (tail!1100 s!2619) (tail!1100 (dynLambda!1095 (tail!1100 s!2618)))) t!48933) tb!46755))

(assert (=> b!90083 t!48933))

(declare-fun result!47243 () Bool)

(declare-fun b_and!60651 () Bool)

(assert (= b_and!60647 (and (=> t!48933 result!47243) b_and!60651)))

(declare-fun t!48935 () Bool)

(declare-fun tb!46757 () Bool)

(assert (=> (and b!90086 (= (tail!1100 s!2618) (tail!1100 (dynLambda!1095 (tail!1100 s!2618)))) t!48935) tb!46757))

(assert (=> b!90083 t!48935))

(declare-fun result!47245 () Bool)

(declare-fun b_and!60653 () Bool)

(assert (= b_and!60649 (and (=> t!48935 result!47245) b_and!60653)))

(declare-fun b_lambda!18431 () Bool)

(assert (=> (not b_lambda!18431) (not b!90083)))

(declare-fun t!48937 () Bool)

(declare-fun tb!46759 () Bool)

(assert (=> (and b!90085 (= (tail!1100 s!2619) (tail!1100 s!2618)) t!48937) tb!46759))

(assert (=> b!90083 t!48937))

(declare-fun result!47247 () Bool)

(declare-fun b_and!60655 () Bool)

(assert (= b_and!60651 (and (=> t!48937 result!47247) b_and!60655)))

(declare-fun t!48939 () Bool)

(declare-fun tb!46761 () Bool)

(assert (=> (and b!90086 (= (tail!1100 s!2618) (tail!1100 s!2618)) t!48939) tb!46761))

(assert (=> b!90083 t!48939))

(declare-fun result!47249 () Bool)

(declare-fun b_and!60657 () Bool)

(assert (= b_and!60653 (and (=> t!48939 result!47249) b_and!60657)))

(declare-fun m!85958 () Bool)

(assert (=> b!90083 m!85958))

(declare-fun m!85960 () Bool)

(assert (=> b!90083 m!85960))

(declare-fun b!90092 () Bool)

(declare-fun e!49165 () Bool)

(assert (=> b!90092 (= e!49165 true)))

(assert (=> b!90083 e!49165))

(assert (= b!90083 b!90092))

(declare-fun order!513 () Int)

(declare-fun lambda!11090 () Int)

(declare-fun dynLambda!1096 (Int Int) Int)

(assert (=> b!90092 (< (dynLambda!1096 order!513 (tail!1100 s!2618)) (dynLambda!1096 order!513 lambda!11090))))

(assert (=> (and b!90085 b!90083 (= (dynLambda!1095 lambda!11090) (dynLambda!1095 (tail!1100 s!2619)))) (= lambda!11090 (tail!1100 s!2619))))

(declare-fun b_next!39987 () Bool)

(assert (=> b!90085 (= b_next!39983 (or (and b!90083 (= lambda!11090 (tail!1100 s!2619))) b_next!39987))))

(declare-fun b!90082 () Bool)

(declare-fun e!49162 () Bool)

(declare-fun n!1813 () Int)

(assert (=> b!90082 (= e!49162 (< n!1813 0))))

(declare-fun res!47165 () Bool)

(assert (=> b!90083 (=> (not res!47165) (not e!49162))))

(declare-fun h1!44 () Int)

(assert (=> b!90083 (= res!47165 (= s!2619 (Stream!29 (+ h1!44 1) lambda!11090)))))

(declare-fun b!90084 () Bool)

(declare-fun res!47167 () Bool)

(assert (=> b!90084 (=> (not res!47167) (not e!49162))))

(declare-fun h2!46 () Int)

(declare-fun n!1812 () Int)

(assert (=> b!90084 (= res!47167 (and (>= h1!44 1) (< h1!44 9) (= h2!46 1) (= n!1813 n!1812)))))

(declare-fun e!49161 () Bool)

(assert (=> b!90085 (= e!49161 tp!17678)))

(declare-fun e!49160 () Bool)

(assert (=> b!90086 (= e!49160 tp!17679)))

(declare-fun b!90087 () Bool)

(declare-fun res!47166 () Bool)

(assert (=> b!90087 (=> (not res!47166) (not e!49162))))

(assert (=> b!90087 (= res!47166 (= h2!46 (head!1105 (dynLambda!1095 (tail!1100 s!2618)))))))

(declare-fun res!47164 () Bool)

(assert (=> start!11840 (=> (not res!47164) (not e!49162))))

(assert (=> start!11840 (= res!47164 (and (>= n!1812 0) (= h1!44 (head!1105 s!2618))))))

(assert (=> start!11840 e!49162))

(assert (=> start!11840 true))

(assert (=> start!11840 e!49161))

(assert (=> start!11840 e!49160))

(assert (= (and start!11840 res!47164) b!90087))

(assert (= (and b!90087 res!47166) b!90084))

(assert (= (and b!90084 res!47167) b!90083))

(assert (= (and b!90083 res!47165) b!90082))

(assert (= start!11840 b!90085))

(assert (= start!11840 b!90086))

(declare-fun b_lambda!18433 () Bool)

(assert (=> (not b_lambda!18433) (not b!90087)))

(assert (=> b!90087 t!48937))

(declare-fun b_and!60659 () Bool)

(assert (= b_and!60655 (and (=> t!48937 result!47247) b_and!60659)))

(assert (=> b!90087 t!48939))

(declare-fun b_and!60661 () Bool)

(assert (= b_and!60657 (and (=> t!48939 result!47249) b_and!60661)))

(assert (=> b!90087 m!85958))

(push 1)

(assert (not tb!46755))

(assert (not tb!46757))

(assert b_and!60659)

(assert b_and!60661)

(assert (not b_lambda!18431))

(assert (not b_lambda!18429))

(assert (not b_next!39987))

(assert (not b_next!39985))

(assert (not b_lambda!18433))

(assert (not tb!46761))

(assert (not tb!46759))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60659)

(assert b_and!60661)

(assert (not b_next!39985))

(assert (not b_next!39987))

(check-sat)

(pop 1)

