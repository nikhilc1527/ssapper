; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6278 () Bool)

(assert start!6278)

(declare-fun b!46726 () Bool)

(declare-fun b_free!5547 () Bool)

(declare-fun b_next!25115 () Bool)

(assert (=> b!46726 (= b_free!5547 (not b_next!25115))))

(declare-fun tp!12400 () Bool)

(declare-fun b_and!36411 () Bool)

(assert (=> b!46726 (= tp!12400 b_and!36411)))

(declare-fun b_free!5549 () Bool)

(declare-fun b_next!25117 () Bool)

(assert (=> b!46726 (= b_free!5549 (not b_next!25117))))

(declare-fun tp!12403 () Bool)

(declare-fun b_and!36413 () Bool)

(assert (=> b!46726 (= tp!12403 b_and!36413)))

(declare-fun b_free!5551 () Bool)

(declare-fun b_next!25119 () Bool)

(assert (=> b!46726 (= b_free!5551 (not b_next!25119))))

(declare-fun tp!12407 () Bool)

(declare-fun b_and!36415 () Bool)

(assert (=> b!46726 (= tp!12407 b_and!36415)))

(declare-fun b!46727 () Bool)

(declare-fun b_free!5553 () Bool)

(declare-fun b_next!25121 () Bool)

(assert (=> b!46727 (= b_free!5553 (not b_next!25121))))

(declare-fun tp!12404 () Bool)

(declare-fun b_and!36417 () Bool)

(assert (=> b!46727 (= tp!12404 b_and!36417)))

(declare-fun b_free!5555 () Bool)

(declare-fun b_next!25123 () Bool)

(assert (=> b!46727 (= b_free!5555 (not b_next!25123))))

(declare-fun tp!12408 () Bool)

(declare-fun b_and!36419 () Bool)

(assert (=> b!46727 (= tp!12408 b_and!36419)))

(declare-fun b_free!5557 () Bool)

(declare-fun b_next!25125 () Bool)

(assert (=> b!46727 (= b_free!5557 (not b_next!25125))))

(declare-fun tp!12405 () Bool)

(declare-fun b_and!36421 () Bool)

(assert (=> b!46727 (= tp!12405 b_and!36421)))

(declare-fun b!46728 () Bool)

(declare-fun b_free!5559 () Bool)

(declare-fun b_next!25127 () Bool)

(assert (=> b!46728 (= b_free!5559 (not b_next!25127))))

(declare-fun tp!12409 () Bool)

(declare-fun b_and!36423 () Bool)

(assert (=> b!46728 (= tp!12409 b_and!36423)))

(declare-fun b_free!5561 () Bool)

(declare-fun b_next!25129 () Bool)

(assert (=> b!46728 (= b_free!5561 (not b_next!25129))))

(declare-fun tp!12399 () Bool)

(declare-fun b_and!36425 () Bool)

(assert (=> b!46728 (= tp!12399 b_and!36425)))

(declare-fun b_free!5563 () Bool)

(declare-fun b_next!25131 () Bool)

(assert (=> b!46728 (= b_free!5563 (not b_next!25131))))

(declare-fun tp!12402 () Bool)

(declare-fun b_and!36427 () Bool)

(assert (=> b!46728 (= tp!12402 b_and!36427)))

(declare-fun b!46729 () Bool)

(declare-fun b_free!5565 () Bool)

(declare-fun b_next!25133 () Bool)

(assert (=> b!46729 (= b_free!5565 (not b_next!25133))))

(declare-fun tp!12406 () Bool)

(declare-fun b_and!36429 () Bool)

(assert (=> b!46729 (= tp!12406 b_and!36429)))

(declare-fun b_free!5567 () Bool)

(declare-fun b_next!25135 () Bool)

(assert (=> b!46729 (= b_free!5567 (not b_next!25135))))

(declare-fun tp!12401 () Bool)

(declare-fun b_and!36431 () Bool)

(assert (=> b!46729 (= tp!12401 b_and!36431)))

(declare-fun b_free!5569 () Bool)

(declare-fun b_next!25137 () Bool)

(assert (=> b!46729 (= b_free!5569 (not b_next!25137))))

(declare-fun tp!12398 () Bool)

(declare-fun b_and!36433 () Bool)

(assert (=> b!46729 (= tp!12398 b_and!36433)))

(declare-fun e!24325 () Bool)

(assert (=> b!46727 (= e!24325 (and tp!12404 tp!12408 tp!12405))))

(declare-fun e!24324 () Bool)

(assert (=> b!46726 (= e!24324 (and tp!12400 tp!12403 tp!12407))))

(declare-fun lt!8485 () Bool)

(declare-datatypes () ((Nat!198 (Zero!182) (Succ!179 (n!1334 Nat!198)))))

(declare-fun n2!101 () Nat!198)

(declare-fun n3!28 () Nat!198)

(declare-fun >=!2 (Nat!198 Nat!198) Bool)

(assert (=> start!6278 (= lt!8485 (>=!2 n2!101 n3!28))))

(assert (=> start!6278 false))

(declare-datatypes () ((Unit!617 (Unit!618))))

(declare-datatypes () ((RAEqEvidence!340 (RAEqEvidence!341 (x!17277 Int) (y!1509 Int) (evidence!622 Int)))))

(declare-fun x$55!33 () RAEqEvidence!340)

(declare-fun inv!819 (RAEqEvidence!340) Bool)

(assert (=> start!6278 (and (inv!819 x$55!33) e!24324)))

(assert (=> start!6278 true))

(declare-fun thiss!5064 () RAEqEvidence!340)

(assert (=> start!6278 (and (inv!819 thiss!5064) e!24325)))

(declare-fun x$56!25 () RAEqEvidence!340)

(declare-fun e!24322 () Bool)

(assert (=> start!6278 (and (inv!819 x$56!25) e!24322)))

(declare-fun prev!430 () RAEqEvidence!340)

(declare-fun e!24323 () Bool)

(assert (=> start!6278 (and (inv!819 prev!430) e!24323)))

(assert (=> b!46728 (= e!24322 (and tp!12409 tp!12399 tp!12402))))

(assert (=> b!46729 (= e!24323 (and tp!12406 tp!12401 tp!12398))))

(assert (= start!6278 b!46726))

(assert (= start!6278 b!46727))

(assert (= start!6278 b!46728))

(assert (= start!6278 b!46729))

(declare-fun m!49611 () Bool)

(assert (=> start!6278 m!49611))

(declare-fun m!49613 () Bool)

(assert (=> start!6278 m!49613))

(declare-fun m!49615 () Bool)

(assert (=> start!6278 m!49615))

(declare-fun m!49617 () Bool)

(assert (=> start!6278 m!49617))

(declare-fun m!49619 () Bool)

(assert (=> start!6278 m!49619))

(push 1)

(assert (not b_next!25127))

(assert (not b_next!25123))

(assert b_and!36427)

(assert (not b_next!25129))

(assert b_and!36423)

(assert b_and!36415)

(assert (not b_next!25125))

(assert b_and!36411)

(assert b_and!36433)

(assert (not b_next!25121))

(assert (not b_next!25117))

(assert b_and!36431)

(assert b_and!36417)

(assert (not b_next!25131))

(assert (not start!6278))

(assert (not b_next!25115))

(assert b_and!36421)

(assert b_and!36413)

(assert b_and!36429)

(assert b_and!36419)

(assert b_and!36425)

(assert (not b_next!25119))

(assert (not b_next!25137))

(assert (not b_next!25133))

(assert (not b_next!25135))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25127))

(assert (not b_next!25123))

(assert b_and!36427)

(assert (not b_next!25129))

(assert b_and!36423)

(assert b_and!36415)

(assert (not b_next!25125))

(assert b_and!36411)

(assert b_and!36433)

(assert (not b_next!25121))

(assert (not b_next!25117))

(assert b_and!36431)

(assert b_and!36417)

(assert (not b_next!25131))

(assert (not b_next!25115))

(assert b_and!36421)

(assert b_and!36413)

(assert b_and!36429)

(assert b_and!36419)

(assert b_and!36425)

(assert (not b_next!25119))

(assert (not b_next!25137))

(assert (not b_next!25133))

(assert (not b_next!25135))

(check-sat)

(pop 1)

