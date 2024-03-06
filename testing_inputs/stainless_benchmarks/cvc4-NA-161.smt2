; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1060 () Bool)

(assert start!1060)

(declare-fun b!6389 () Bool)

(declare-fun b_free!215 () Bool)

(declare-fun b_next!449 () Bool)

(assert (=> b!6389 (= b_free!215 (not b_next!449))))

(declare-fun tp!457 () Bool)

(declare-fun b_and!1347 () Bool)

(assert (=> b!6389 (= tp!457 b_and!1347)))

(declare-fun b_free!217 () Bool)

(declare-fun b_next!451 () Bool)

(assert (=> b!6389 (= b_free!217 (not b_next!451))))

(declare-fun tp!460 () Bool)

(declare-fun b_and!1349 () Bool)

(assert (=> b!6389 (= tp!460 b_and!1349)))

(declare-fun b_free!219 () Bool)

(declare-fun b_next!453 () Bool)

(assert (=> b!6389 (= b_free!219 (not b_next!453))))

(declare-fun tp!458 () Bool)

(declare-fun b_and!1351 () Bool)

(assert (=> b!6389 (= tp!458 b_and!1351)))

(declare-fun b!6390 () Bool)

(declare-fun b_free!221 () Bool)

(declare-fun b_next!455 () Bool)

(assert (=> b!6390 (= b_free!221 (not b_next!455))))

(declare-fun tp!459 () Bool)

(declare-fun b_and!1353 () Bool)

(assert (=> b!6390 (= tp!459 b_and!1353)))

(declare-fun b_free!223 () Bool)

(declare-fun b_next!457 () Bool)

(assert (=> b!6390 (= b_free!223 (not b_next!457))))

(declare-fun tp!455 () Bool)

(declare-fun b_and!1355 () Bool)

(assert (=> b!6390 (= tp!455 b_and!1355)))

(declare-fun b_free!225 () Bool)

(declare-fun b_next!459 () Bool)

(assert (=> b!6390 (= b_free!225 (not b_next!459))))

(declare-fun tp!456 () Bool)

(declare-fun b_and!1357 () Bool)

(assert (=> b!6390 (= tp!456 b_and!1357)))

(assert (=> start!1060 false))

(assert (=> start!1060 true))

(declare-datatypes () ((Balance!41 (Balance!42 (extraOpen!61 Int) (extraClose!61 Int)))))

(declare-datatypes () ((EqEvidence!30 (EqEvidence!31 (x!3394 Int) (y!434 Int) (evidence!82 Int)))))

(declare-fun thiss!1206 () EqEvidence!30)

(declare-fun e!3799 () Bool)

(declare-fun inv!229 (EqEvidence!30) Bool)

(assert (=> start!1060 (and (inv!229 thiss!1206) e!3799)))

(declare-fun that!330 () EqEvidence!30)

(declare-fun e!3798 () Bool)

(assert (=> start!1060 (and (inv!229 that!330) e!3798)))

(assert (=> b!6389 (= e!3799 (and tp!457 tp!460 tp!458))))

(assert (=> b!6390 (= e!3798 (and tp!459 tp!455 tp!456))))

(assert (= start!1060 b!6389))

(assert (= start!1060 b!6390))

(declare-fun m!9181 () Bool)

(assert (=> start!1060 m!9181))

(declare-fun m!9183 () Bool)

(assert (=> start!1060 m!9183))

(push 1)

(assert (not start!1060))

(assert (not b_next!457))

(assert b_and!1355)

(assert b_and!1357)

(assert b_and!1349)

(assert b_and!1351)

(assert (not b_next!459))

(assert b_and!1347)

(assert (not b_next!449))

(assert (not b_next!451))

(assert b_and!1353)

(assert (not b_next!455))

(assert (not b_next!453))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!457))

(assert b_and!1355)

(assert b_and!1357)

(assert b_and!1349)

(assert b_and!1351)

(assert (not b_next!459))

(assert b_and!1347)

(assert (not b_next!449))

(assert (not b_next!451))

(assert b_and!1353)

(assert (not b_next!455))

(assert (not b_next!453))

(check-sat)

(pop 1)

