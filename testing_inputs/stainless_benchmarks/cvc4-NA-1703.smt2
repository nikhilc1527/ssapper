; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11820 () Bool)

(assert start!11820)

(declare-fun b!89960 () Bool)

(declare-fun b_free!7553 () Bool)

(declare-fun b_next!39919 () Bool)

(assert (=> b!89960 (= b_free!7553 (not b_next!39919))))

(declare-fun tp!17585 () Bool)

(declare-fun b_and!60559 () Bool)

(assert (=> b!89960 (= tp!17585 b_and!60559)))

(declare-fun b_free!7555 () Bool)

(declare-fun b_next!39921 () Bool)

(assert (=> start!11820 (= b_free!7555 (not b_next!39921))))

(declare-fun tp!17586 () Bool)

(declare-fun b_and!60561 () Bool)

(assert (=> start!11820 (= tp!17586 b_and!60561)))

(assert (=> start!11820 false))

(assert (=> start!11820 true))

(declare-fun e!49087 () Bool)

(assert (=> start!11820 e!49087))

(assert (=> start!11820 tp!17586))

(assert (=> b!89960 (= e!49087 tp!17585)))

(assert (= start!11820 b!89960))

(push 1)

(assert b_and!60561)

(assert b_and!60559)

(assert (not b_next!39919))

(assert (not b_next!39921))

(check-sat)

(pop 1)

