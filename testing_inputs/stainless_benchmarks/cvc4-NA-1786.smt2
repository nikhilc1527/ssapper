; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12194 () Bool)

(assert start!12194)

(declare-fun b!91098 () Bool)

(declare-fun b_free!7703 () Bool)

(declare-fun b_next!40091 () Bool)

(assert (=> b!91098 (= b_free!7703 (not b_next!40091))))

(declare-fun tp!17997 () Bool)

(declare-fun b_and!60841 () Bool)

(assert (=> b!91098 (= tp!17997 b_and!60841)))

(declare-fun b_free!7705 () Bool)

(declare-fun b_next!40093 () Bool)

(assert (=> b!91098 (= b_free!7705 (not b_next!40093))))

(declare-fun tp!17995 () Bool)

(declare-fun b_and!60843 () Bool)

(assert (=> b!91098 (= tp!17995 b_and!60843)))

(declare-fun b_free!7707 () Bool)

(declare-fun b_next!40095 () Bool)

(assert (=> b!91098 (= b_free!7707 (not b_next!40095))))

(declare-fun tp!17996 () Bool)

(declare-fun b_and!60845 () Bool)

(assert (=> b!91098 (= tp!17996 b_and!60845)))

(declare-fun res!47797 () Bool)

(declare-fun e!49802 () Bool)

(assert (=> start!12194 (=> (not res!47797) (not e!49802))))

(declare-datatypes () ((A!3923 (A!3924 (val!241 Int)))))

(declare-datatypes () ((B!698 (B!699 (val!242 Int)))))

(declare-datatypes () ((~>>!29 (~>>!30 (pre!36 Int) (f!5191 Int) (post!24 Int)))))

(declare-fun thiss!10499 () ~>>!29)

(declare-fun a!1095 () A!3923)

(declare-fun dynLambda!1125 (Int A!3923) Bool)

(assert (=> start!12194 (= res!47797 (dynLambda!1125 (pre!36 thiss!10499) a!1095))))

(assert (=> start!12194 e!49802))

(declare-fun e!49803 () Bool)

(assert (=> start!12194 e!49803))

(declare-fun tp_is_empty!487 () Bool)

(assert (=> start!12194 tp_is_empty!487))

(declare-fun tp_is_empty!489 () Bool)

(assert (=> start!12194 tp_is_empty!489))

(declare-fun b!91096 () Bool)

(declare-fun res!47798 () Bool)

(assert (=> b!91096 (=> (not res!47798) (not e!49802))))

(declare-fun res!47666 () B!698)

(declare-fun dynLambda!1126 (Int A!3923) B!698)

(assert (=> b!91096 (= res!47798 (= res!47666 (dynLambda!1126 (f!5191 thiss!10499) a!1095)))))

(declare-fun b!91097 () Bool)

(declare-fun dynLambda!1127 (Int B!698) Bool)

(assert (=> b!91097 (= e!49802 (not (dynLambda!1127 (post!24 thiss!10499) res!47666)))))

(assert (=> b!91098 (= e!49803 (and tp!17997 tp!17995 tp!17996))))

(assert (= (and start!12194 res!47797) b!91096))

(assert (= (and b!91096 res!47798) b!91097))

(assert (= start!12194 b!91098))

(declare-fun b_lambda!18567 () Bool)

(assert (=> (not b_lambda!18567) (not start!12194)))

(declare-fun t!49079 () Bool)

(declare-fun tb!46837 () Bool)

(assert (=> (and b!91098 (= (pre!36 thiss!10499) (pre!36 thiss!10499)) t!49079) tb!46837))

(declare-fun result!47371 () Bool)

(assert (=> tb!46837 (= result!47371 true)))

(assert (=> start!12194 t!49079))

(declare-fun b_and!60847 () Bool)

(assert (= b_and!60841 (and (=> t!49079 result!47371) b_and!60847)))

(declare-fun b_lambda!18569 () Bool)

(assert (=> (not b_lambda!18569) (not b!91096)))

(declare-fun t!49081 () Bool)

(declare-fun tb!46839 () Bool)

(assert (=> (and b!91098 (= (f!5191 thiss!10499) (f!5191 thiss!10499)) t!49081) tb!46839))

(declare-fun result!47373 () Bool)

(assert (=> tb!46839 (= result!47373 tp_is_empty!489)))

(assert (=> b!91096 t!49081))

(declare-fun b_and!60849 () Bool)

(assert (= b_and!60843 (and (=> t!49081 result!47373) b_and!60849)))

(declare-fun b_lambda!18571 () Bool)

(assert (=> (not b_lambda!18571) (not b!91097)))

(declare-fun t!49083 () Bool)

(declare-fun tb!46841 () Bool)

(assert (=> (and b!91098 (= (post!24 thiss!10499) (post!24 thiss!10499)) t!49083) tb!46841))

(declare-fun result!47377 () Bool)

(assert (=> tb!46841 (= result!47377 true)))

(assert (=> b!91097 t!49083))

(declare-fun b_and!60851 () Bool)

(assert (= b_and!60845 (and (=> t!49083 result!47377) b_and!60851)))

(declare-fun m!86836 () Bool)

(assert (=> start!12194 m!86836))

(declare-fun m!86838 () Bool)

(assert (=> b!91096 m!86838))

(declare-fun m!86840 () Bool)

(assert (=> b!91097 m!86840))

(push 1)

(assert tp_is_empty!489)

(assert b_and!60849)

(assert (not b_lambda!18569))

(assert (not b_next!40095))

(assert tp_is_empty!487)

(assert (not b_next!40093))

(assert (not b_lambda!18571))

(assert b_and!60851)

(assert b_and!60847)

(assert (not b_next!40091))

(assert (not b_lambda!18567))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60849)

(assert (not b_next!40095))

(assert (not b_next!40093))

(assert b_and!60851)

(assert b_and!60847)

(assert (not b_next!40091))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!18573 () Bool)

(assert (= b_lambda!18567 (or (and b!91098 b_free!7703) b_lambda!18573)))

(declare-fun b_lambda!18575 () Bool)

(assert (= b_lambda!18571 (or (and b!91098 b_free!7707) b_lambda!18575)))

(declare-fun b_lambda!18577 () Bool)

(assert (= b_lambda!18569 (or (and b!91098 b_free!7705) b_lambda!18577)))

(push 1)

(assert tp_is_empty!489)

(assert b_and!60849)

(assert (not b_lambda!18573))

(assert (not b_next!40095))

(assert tp_is_empty!487)

(assert (not b_next!40093))

(assert (not b_lambda!18577))

(assert b_and!60851)

(assert b_and!60847)

(assert (not b_next!40091))

(assert (not b_lambda!18575))

(check-sat)

(get-model)

(pop 1)

