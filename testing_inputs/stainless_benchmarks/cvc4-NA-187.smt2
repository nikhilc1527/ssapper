; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1362 () Bool)

(assert start!1362)

(declare-fun b!7317 () Bool)

(declare-fun b_free!445 () Bool)

(declare-fun b_next!953 () Bool)

(assert (=> b!7317 (= b_free!445 (not b_next!953))))

(declare-fun tp!804 () Bool)

(declare-fun b_and!2013 () Bool)

(assert (=> b!7317 (= tp!804 b_and!2013)))

(declare-fun b_free!447 () Bool)

(declare-fun b_next!955 () Bool)

(assert (=> b!7317 (= b_free!447 (not b_next!955))))

(declare-fun tp!800 () Bool)

(declare-fun b_and!2015 () Bool)

(assert (=> b!7317 (= tp!800 b_and!2015)))

(declare-fun b_free!449 () Bool)

(declare-fun b_next!957 () Bool)

(assert (=> b!7317 (= b_free!449 (not b_next!957))))

(declare-fun tp!803 () Bool)

(declare-fun b_and!2017 () Bool)

(assert (=> b!7317 (= tp!803 b_and!2017)))

(declare-fun b!7318 () Bool)

(declare-fun b_free!451 () Bool)

(declare-fun b_next!959 () Bool)

(assert (=> b!7318 (= b_free!451 (not b_next!959))))

(declare-fun tp!802 () Bool)

(declare-fun b_and!2019 () Bool)

(assert (=> b!7318 (= tp!802 b_and!2019)))

(declare-fun b_free!453 () Bool)

(declare-fun b_next!961 () Bool)

(assert (=> b!7318 (= b_free!453 (not b_next!961))))

(declare-fun tp!801 () Bool)

(declare-fun b_and!2021 () Bool)

(assert (=> b!7318 (= tp!801 b_and!2021)))

(declare-fun b_free!455 () Bool)

(declare-fun b_next!963 () Bool)

(assert (=> b!7318 (= b_free!455 (not b_next!963))))

(declare-fun tp!805 () Bool)

(declare-fun b_and!2023 () Bool)

(assert (=> b!7318 (= tp!805 b_and!2023)))

(assert (=> start!1362 false))

(assert (=> start!1362 true))

(declare-datatypes () ((Balance!93 (Balance!94 (extraOpen!87 Int) (extraClose!87 Int)))))

(declare-datatypes () ((EqEvidence!70 (EqEvidence!71 (x!3976 Int) (y!462 Int) (evidence!102 Int)))))

(declare-fun thiss!1124 () EqEvidence!70)

(declare-fun e!4231 () Bool)

(declare-fun inv!257 (EqEvidence!70) Bool)

(assert (=> start!1362 (and (inv!257 thiss!1124) e!4231)))

(declare-fun that!298 () EqEvidence!70)

(declare-fun e!4230 () Bool)

(assert (=> start!1362 (and (inv!257 that!298) e!4230)))

(assert (=> b!7317 (= e!4231 (and tp!804 tp!800 tp!803))))

(assert (=> b!7318 (= e!4230 (and tp!802 tp!801 tp!805))))

(assert (= start!1362 b!7317))

(assert (= start!1362 b!7318))

(declare-fun m!10167 () Bool)

(assert (=> start!1362 m!10167))

(declare-fun m!10169 () Bool)

(assert (=> start!1362 m!10169))

(push 1)

(assert (not b_next!957))

(assert b_and!2017)

(assert b_and!2013)

(assert (not b_next!963))

(assert (not b_next!961))

(assert (not start!1362))

(assert (not b_next!959))

(assert (not b_next!955))

(assert (not b_next!953))

(assert b_and!2023)

(assert b_and!2015)

(assert b_and!2019)

(assert b_and!2021)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!957))

(assert b_and!2017)

(assert b_and!2013)

(assert (not b_next!963))

(assert (not b_next!961))

(assert (not b_next!959))

(assert (not b_next!955))

(assert (not b_next!953))

(assert b_and!2023)

(assert b_and!2015)

(assert b_and!2019)

(assert b_and!2021)

(check-sat)

(pop 1)

