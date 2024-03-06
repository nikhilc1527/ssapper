; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1402 () Bool)

(assert start!1402)

(declare-fun b!7437 () Bool)

(declare-fun b_free!493 () Bool)

(declare-fun b_next!1049 () Bool)

(assert (=> b!7437 (= b_free!493 (not b_next!1049))))

(declare-fun tp!872 () Bool)

(declare-fun b_and!2161 () Bool)

(assert (=> b!7437 (= tp!872 b_and!2161)))

(declare-fun b_free!495 () Bool)

(declare-fun b_next!1051 () Bool)

(assert (=> b!7437 (= b_free!495 (not b_next!1051))))

(declare-fun tp!876 () Bool)

(declare-fun b_and!2163 () Bool)

(assert (=> b!7437 (= tp!876 b_and!2163)))

(declare-fun b_free!497 () Bool)

(declare-fun b_next!1053 () Bool)

(assert (=> b!7437 (= b_free!497 (not b_next!1053))))

(declare-fun tp!877 () Bool)

(declare-fun b_and!2165 () Bool)

(assert (=> b!7437 (= tp!877 b_and!2165)))

(declare-fun b!7438 () Bool)

(declare-fun b_free!499 () Bool)

(declare-fun b_next!1055 () Bool)

(assert (=> b!7438 (= b_free!499 (not b_next!1055))))

(declare-fun tp!875 () Bool)

(declare-fun b_and!2167 () Bool)

(assert (=> b!7438 (= tp!875 b_and!2167)))

(declare-fun b_free!501 () Bool)

(declare-fun b_next!1057 () Bool)

(assert (=> b!7438 (= b_free!501 (not b_next!1057))))

(declare-fun tp!874 () Bool)

(declare-fun b_and!2169 () Bool)

(assert (=> b!7438 (= tp!874 b_and!2169)))

(declare-fun b_free!503 () Bool)

(declare-fun b_next!1059 () Bool)

(assert (=> b!7438 (= b_free!503 (not b_next!1059))))

(declare-fun tp!873 () Bool)

(declare-fun b_and!2171 () Bool)

(assert (=> b!7438 (= tp!873 b_and!2171)))

(assert (=> start!1402 false))

(assert (=> start!1402 true))

(declare-datatypes () ((Balance!101 (Balance!102 (extraOpen!91 Int) (extraClose!91 Int)))))

(declare-datatypes () ((EqEvidence!78 (EqEvidence!79 (x!4042 Int) (y!467 Int) (evidence!106 Int)))))

(declare-fun thiss!1123 () EqEvidence!78)

(declare-fun e!4292 () Bool)

(declare-fun inv!262 (EqEvidence!78) Bool)

(assert (=> start!1402 (and (inv!262 thiss!1123) e!4292)))

(declare-fun that!301 () EqEvidence!78)

(declare-fun e!4291 () Bool)

(assert (=> start!1402 (and (inv!262 that!301) e!4291)))

(assert (=> b!7437 (= e!4292 (and tp!872 tp!876 tp!877))))

(assert (=> b!7438 (= e!4291 (and tp!875 tp!874 tp!873))))

(assert (= start!1402 b!7437))

(assert (= start!1402 b!7438))

(declare-fun m!10303 () Bool)

(assert (=> start!1402 m!10303))

(declare-fun m!10305 () Bool)

(assert (=> start!1402 m!10305))

(push 1)

(assert b_and!2171)

(assert (not b_next!1049))

(assert b_and!2165)

(assert (not start!1402))

(assert (not b_next!1059))

(assert b_and!2169)

(assert (not b_next!1051))

(assert b_and!2161)

(assert (not b_next!1053))

(assert (not b_next!1055))

(assert (not b_next!1057))

(assert b_and!2163)

(assert b_and!2167)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2171)

(assert (not b_next!1049))

(assert b_and!2165)

(assert (not b_next!1059))

(assert b_and!2169)

(assert (not b_next!1051))

(assert b_and!2161)

(assert (not b_next!1053))

(assert (not b_next!1055))

(assert (not b_next!1057))

(assert b_and!2163)

(assert b_and!2167)

(check-sat)

(pop 1)

