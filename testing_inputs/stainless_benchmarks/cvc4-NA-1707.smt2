; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11828 () Bool)

(assert start!11828)

(declare-fun b!89993 () Bool)

(declare-fun b_free!7561 () Bool)

(declare-fun b_next!39929 () Bool)

(assert (=> b!89993 (= b_free!7561 (not b_next!39929))))

(declare-fun tp!17609 () Bool)

(declare-fun b_and!60567 () Bool)

(assert (=> b!89993 (= tp!17609 b_and!60567)))

(declare-fun b!89999 () Bool)

(declare-fun b_free!7563 () Bool)

(declare-fun b_next!39931 () Bool)

(assert (=> b!89999 (= b_free!7563 (not b_next!39931))))

(declare-fun tp!17608 () Bool)

(declare-fun b_and!60569 () Bool)

(assert (=> b!89999 (= tp!17608 b_and!60569)))

(declare-fun b!89998 () Bool)

(declare-fun b_free!7565 () Bool)

(declare-fun b_next!39933 () Bool)

(assert (=> b!89998 (= b_free!7565 (not b_next!39933))))

(declare-fun tp!17606 () Bool)

(declare-fun b_and!60571 () Bool)

(assert (=> b!89998 (= tp!17606 b_and!60571)))

(declare-fun b!90001 () Bool)

(declare-fun b_free!7567 () Bool)

(declare-fun b_next!39935 () Bool)

(assert (=> b!90001 (= b_free!7567 (not b_next!39935))))

(declare-fun tp!17605 () Bool)

(declare-fun b_and!60573 () Bool)

(assert (=> b!90001 (= tp!17605 b_and!60573)))

(declare-fun b_free!7569 () Bool)

(declare-fun b_next!39937 () Bool)

(assert (=> start!11828 (= b_free!7569 (not b_next!39937))))

(declare-fun tp!17610 () Bool)

(declare-fun b_and!60575 () Bool)

(assert (=> start!11828 (= tp!17610 b_and!60575)))

(declare-fun b_free!7571 () Bool)

(declare-fun b_next!39939 () Bool)

(assert (=> start!11828 (= b_free!7571 (not b_next!39939))))

(declare-fun tp!17607 () Bool)

(declare-fun b_and!60577 () Bool)

(assert (=> start!11828 (= tp!17607 b_and!60577)))

(declare-fun res!47131 () Bool)

(declare-fun e!49104 () Bool)

(assert (=> start!11828 (=> (not res!47131) (not e!49104))))

(declare-fun n!1822 () Int)

(assert (=> start!11828 (= res!47131 (and (>= n!1822 0) (> n!1822 0)))))

(assert (=> start!11828 e!49104))

(declare-fun e!49107 () Bool)

(assert (=> start!11828 e!49107))

(assert (=> start!11828 tp!17610))

(assert (=> start!11828 true))

(declare-fun e!49105 () Bool)

(assert (=> start!11828 e!49105))

(declare-fun tp_is_empty!419 () Bool)

(assert (=> start!11828 tp_is_empty!419))

(assert (=> start!11828 tp!17607))

(declare-fun e!49106 () Bool)

(assert (=> start!11828 e!49106))

(declare-fun e!49108 () Bool)

(assert (=> start!11828 e!49108))

(declare-fun tp_is_empty!417 () Bool)

(assert (=> b!89993 (= e!49105 (and tp_is_empty!417 tp!17609))))

(declare-fun b!89994 () Bool)

(declare-fun res!47127 () Bool)

(assert (=> b!89994 (=> (not res!47127) (not e!49104))))

(declare-datatypes () ((Z!9 (Z!10 (val!210 Int)))))

(declare-fun head!1092 () Z!9)

(declare-fun f!5015 () Int)

(declare-datatypes () ((X!26 (X!27 (val!211 Int)))))

(declare-datatypes () ((Stream!12 (Stream!13 (head!1097 X!26) (tail!1092 Int)))))

(declare-fun s1!128 () Stream!12)

(declare-datatypes () ((Y!3 (Y!4 (val!212 Int)))))

(declare-datatypes () ((Stream!14 (Stream!15 (head!1098 Y!3) (tail!1093 Int)))))

(declare-fun s2!124 () Stream!14)

(declare-fun dynLambda!1088 (Int X!26 Y!3) Z!9)

(assert (=> b!89994 (= res!47127 (= head!1092 (dynLambda!1088 f!5015 (head!1097 s1!128) (head!1098 s2!124))))))

(declare-fun b!89995 () Bool)

(declare-fun res!47128 () Bool)

(assert (=> b!89995 (=> (not res!47128) (not e!49104))))

(declare-fun s2!125 () Stream!14)

(declare-fun dynLambda!1089 (Int) Stream!14)

(assert (=> b!89995 (= res!47128 (= s2!125 (dynLambda!1089 (tail!1093 s2!124))))))

(declare-fun b!89996 () Bool)

(declare-fun res!47130 () Bool)

(assert (=> b!89996 (=> (not res!47130) (not e!49104))))

(declare-fun f!5016 () Int)

(declare-fun n!1823 () Int)

(assert (=> b!89996 (= res!47130 (and (= n!1823 (- n!1822 1)) (= f!5016 f!5015)))))

(declare-fun b!89997 () Bool)

(assert (=> b!89997 (= e!49104 (< n!1823 0))))

(declare-fun tp_is_empty!415 () Bool)

(assert (=> b!89998 (= e!49107 (and tp_is_empty!415 tp!17606))))

(assert (=> b!89999 (= e!49108 (and tp_is_empty!417 tp!17608))))

(declare-fun b!90000 () Bool)

(declare-fun res!47129 () Bool)

(assert (=> b!90000 (=> (not res!47129) (not e!49104))))

(declare-fun s1!129 () Stream!12)

(declare-fun dynLambda!1090 (Int) Stream!12)

(assert (=> b!90000 (= res!47129 (= s1!129 (dynLambda!1090 (tail!1092 s1!128))))))

(assert (=> b!90001 (= e!49106 (and tp_is_empty!415 tp!17605))))

(assert (= (and start!11828 res!47131) b!89994))

(assert (= (and b!89994 res!47127) b!89996))

(assert (= (and b!89996 res!47130) b!90000))

(assert (= (and b!90000 res!47129) b!89995))

(assert (= (and b!89995 res!47128) b!89997))

(assert (= start!11828 b!89998))

(assert (= start!11828 b!89993))

(assert (= start!11828 b!90001))

(assert (= start!11828 b!89999))

(declare-fun b_lambda!18415 () Bool)

(assert (=> (not b_lambda!18415) (not b!89994)))

(declare-fun tb!46729 () Bool)

(declare-fun t!48907 () Bool)

(assert (=> (and start!11828 (= f!5016 f!5015) t!48907) tb!46729))

(declare-fun result!47209 () Bool)

(assert (=> tb!46729 (= result!47209 tp_is_empty!419)))

(assert (=> b!89994 t!48907))

(declare-fun b_and!60579 () Bool)

(assert (= b_and!60575 (and (=> t!48907 result!47209) b_and!60579)))

(declare-fun t!48909 () Bool)

(declare-fun tb!46731 () Bool)

(assert (=> (and start!11828 (= f!5015 f!5015) t!48909) tb!46731))

(declare-fun result!47213 () Bool)

(assert (= result!47213 result!47209))

(assert (=> b!89994 t!48909))

(declare-fun b_and!60581 () Bool)

(assert (= b_and!60577 (and (=> t!48909 result!47213) b_and!60581)))

(declare-fun b_lambda!18417 () Bool)

(assert (=> (not b_lambda!18417) (not b!89995)))

(declare-fun t!48911 () Bool)

(declare-fun tb!46733 () Bool)

(assert (=> (and b!89993 (= (tail!1093 s2!125) (tail!1093 s2!124)) t!48911) tb!46733))

(assert (=> b!89995 t!48911))

(declare-fun result!47215 () Bool)

(declare-fun b_and!60583 () Bool)

(assert (= b_and!60567 (and (=> t!48911 result!47215) b_and!60583)))

(declare-fun t!48913 () Bool)

(declare-fun tb!46735 () Bool)

(assert (=> (and b!89999 (= (tail!1093 s2!124) (tail!1093 s2!124)) t!48913) tb!46735))

(assert (=> b!89995 t!48913))

(declare-fun result!47217 () Bool)

(declare-fun b_and!60585 () Bool)

(assert (= b_and!60569 (and (=> t!48913 result!47217) b_and!60585)))

(declare-fun b_lambda!18419 () Bool)

(assert (=> (not b_lambda!18419) (not b!90000)))

(declare-fun t!48915 () Bool)

(declare-fun tb!46737 () Bool)

(assert (=> (and b!89998 (= (tail!1092 s1!129) (tail!1092 s1!128)) t!48915) tb!46737))

(assert (=> b!90000 t!48915))

(declare-fun result!47219 () Bool)

(declare-fun b_and!60587 () Bool)

(assert (= b_and!60571 (and (=> t!48915 result!47219) b_and!60587)))

(declare-fun t!48917 () Bool)

(declare-fun tb!46739 () Bool)

(assert (=> (and b!90001 (= (tail!1092 s1!128) (tail!1092 s1!128)) t!48917) tb!46739))

(assert (=> b!90000 t!48917))

(declare-fun result!47221 () Bool)

(declare-fun b_and!60589 () Bool)

(assert (= b_and!60573 (and (=> t!48917 result!47221) b_and!60589)))

(declare-fun m!85944 () Bool)

(assert (=> b!89994 m!85944))

(declare-fun m!85946 () Bool)

(assert (=> b!89995 m!85946))

(declare-fun m!85948 () Bool)

(assert (=> b!90000 m!85948))

(push 1)

(assert (not tb!46733))

(assert (not b_next!39939))

(assert tp_is_empty!417)

(assert (not b_lambda!18419))

(assert (not tb!46737))

(assert (not b_next!39935))

(assert (not b_lambda!18415))

(assert (not b_next!39929))

(assert (not b_lambda!18417))

(assert b_and!60589)

(assert b_and!60585)

(assert b_and!60579)

(assert tp_is_empty!419)

(assert (not b_next!39933))

(assert b_and!60587)

(assert (not tb!46739))

(assert (not tb!46735))

(assert b_and!60583)

(assert tp_is_empty!415)

(assert (not b_next!39937))

(assert (not b_next!39931))

(assert b_and!60581)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!39939))

(assert (not b_next!39935))

(assert (not b_next!39929))

(assert b_and!60589)

(assert b_and!60585)

(assert b_and!60579)

(assert (not b_next!39933))

(assert b_and!60587)

(assert b_and!60583)

(assert (not b_next!39937))

(assert (not b_next!39931))

(assert b_and!60581)

(check-sat)

(pop 1)

