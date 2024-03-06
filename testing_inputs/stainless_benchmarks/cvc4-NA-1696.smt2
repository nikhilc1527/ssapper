; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11806 () Bool)

(assert start!11806)

(declare-fun b!89906 () Bool)

(declare-fun b_free!7535 () Bool)

(declare-fun b_next!39893 () Bool)

(assert (=> b!89906 (= b_free!7535 (not b_next!39893))))

(declare-fun tp!17558 () Bool)

(declare-fun b_and!60533 () Bool)

(assert (=> b!89906 (= tp!17558 b_and!60533)))

(declare-fun b!89907 () Bool)

(declare-fun b_free!7537 () Bool)

(declare-fun b_next!39895 () Bool)

(assert (=> b!89907 (= b_free!7537 (not b_next!39895))))

(declare-fun tp!17559 () Bool)

(declare-fun b_and!60535 () Bool)

(assert (=> b!89907 (= tp!17559 b_and!60535)))

(declare-fun b!89905 () Bool)

(declare-fun e!49062 () Bool)

(declare-fun n!1820 () Int)

(assert (=> b!89905 (= e!49062 (< n!1820 0))))

(declare-fun b!89904 () Bool)

(declare-fun res!47074 () Bool)

(assert (=> b!89904 (=> (not res!47074) (not e!49062))))

(declare-datatypes () ((T!6191 (T!6192 (val!209 Int)))))

(declare-datatypes () ((Stream!4 (Stream!5 (head!1093 T!6191) (tail!1088 Int)))))

(declare-fun s!2626 () Stream!4)

(declare-fun s!2625 () Stream!4)

(declare-fun dynLambda!1086 (Int) Stream!4)

(assert (=> b!89904 (= res!47074 (= s!2626 (dynLambda!1086 (tail!1088 s!2625))))))

(declare-fun e!49063 () Bool)

(declare-fun tp_is_empty!413 () Bool)

(assert (=> b!89906 (= e!49063 (and tp_is_empty!413 tp!17558))))

(declare-fun e!49061 () Bool)

(assert (=> b!89907 (= e!49061 (and tp_is_empty!413 tp!17559))))

(declare-fun res!47073 () Bool)

(assert (=> start!11806 (=> (not res!47073) (not e!49062))))

(declare-fun n!1819 () Int)

(assert (=> start!11806 (= res!47073 (and (>= n!1819 0) (> n!1819 0) (= n!1820 (- n!1819 1))))))

(assert (=> start!11806 e!49062))

(assert (=> start!11806 true))

(assert (=> start!11806 e!49063))

(assert (=> start!11806 e!49061))

(assert (= (and start!11806 res!47073) b!89904))

(assert (= (and b!89904 res!47074) b!89905))

(assert (= start!11806 b!89906))

(assert (= start!11806 b!89907))

(declare-fun b_lambda!18411 () Bool)

(assert (=> (not b_lambda!18411) (not b!89904)))

(declare-fun t!48899 () Bool)

(declare-fun tb!46721 () Bool)

(assert (=> (and b!89906 (= (tail!1088 s!2626) (tail!1088 s!2625)) t!48899) tb!46721))

(assert (=> b!89904 t!48899))

(declare-fun result!47201 () Bool)

(declare-fun b_and!60537 () Bool)

(assert (= b_and!60533 (and (=> t!48899 result!47201) b_and!60537)))

(declare-fun t!48901 () Bool)

(declare-fun tb!46723 () Bool)

(assert (=> (and b!89907 (= (tail!1088 s!2625) (tail!1088 s!2625)) t!48901) tb!46723))

(assert (=> b!89904 t!48901))

(declare-fun result!47203 () Bool)

(declare-fun b_and!60539 () Bool)

(assert (= b_and!60535 (and (=> t!48901 result!47203) b_and!60539)))

(declare-fun m!85932 () Bool)

(assert (=> b!89904 m!85932))

(push 1)

(assert b_and!60539)

(assert b_and!60537)

(assert (not tb!46721))

(assert (not b_lambda!18411))

(assert (not b_next!39895))

(assert tp_is_empty!413)

(assert (not tb!46723))

(assert (not b_next!39893))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60537)

(assert b_and!60539)

(assert (not b_next!39895))

(assert (not b_next!39893))

(check-sat)

(pop 1)

