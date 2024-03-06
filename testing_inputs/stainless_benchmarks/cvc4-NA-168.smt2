; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1138 () Bool)

(assert start!1138)

(declare-fun b!6642 () Bool)

(declare-fun b_free!299 () Bool)

(declare-fun b_next!653 () Bool)

(assert (=> b!6642 (= b_free!299 (not b_next!653))))

(declare-fun tp!581 () Bool)

(declare-fun b_and!1631 () Bool)

(assert (=> b!6642 (= tp!581 b_and!1631)))

(declare-fun b_free!301 () Bool)

(declare-fun b_next!655 () Bool)

(assert (=> b!6642 (= b_free!301 (not b_next!655))))

(declare-fun tp!586 () Bool)

(declare-fun b_and!1633 () Bool)

(assert (=> b!6642 (= tp!586 b_and!1633)))

(declare-fun b_free!303 () Bool)

(declare-fun b_next!657 () Bool)

(assert (=> b!6642 (= b_free!303 (not b_next!657))))

(declare-fun tp!585 () Bool)

(declare-fun b_and!1635 () Bool)

(assert (=> b!6642 (= tp!585 b_and!1635)))

(declare-fun b!6643 () Bool)

(declare-fun b_free!305 () Bool)

(declare-fun b_next!659 () Bool)

(assert (=> b!6643 (= b_free!305 (not b_next!659))))

(declare-fun tp!583 () Bool)

(declare-fun b_and!1637 () Bool)

(assert (=> b!6643 (= tp!583 b_and!1637)))

(declare-fun b_free!307 () Bool)

(declare-fun b_next!661 () Bool)

(assert (=> b!6643 (= b_free!307 (not b_next!661))))

(declare-fun tp!584 () Bool)

(declare-fun b_and!1639 () Bool)

(assert (=> b!6643 (= tp!584 b_and!1639)))

(declare-fun b_free!309 () Bool)

(declare-fun b_next!663 () Bool)

(assert (=> b!6643 (= b_free!309 (not b_next!663))))

(declare-fun tp!582 () Bool)

(declare-fun b_and!1641 () Bool)

(assert (=> b!6643 (= tp!582 b_and!1641)))

(assert (=> start!1138 false))

(assert (=> start!1138 true))

(declare-datatypes () ((Balance!55 (Balance!56 (extraOpen!68 Int) (extraClose!68 Int)))))

(declare-datatypes () ((EqEvidence!44 (EqEvidence!45 (x!3605 Int) (y!443 Int) (evidence!89 Int)))))

(declare-fun thiss!1204 () EqEvidence!44)

(declare-fun e!3922 () Bool)

(declare-fun inv!238 (EqEvidence!44) Bool)

(assert (=> start!1138 (and (inv!238 thiss!1204) e!3922)))

(declare-fun that!338 () EqEvidence!44)

(declare-fun e!3923 () Bool)

(assert (=> start!1138 (and (inv!238 that!338) e!3923)))

(assert (=> b!6642 (= e!3922 (and tp!581 tp!586 tp!585))))

(assert (=> b!6643 (= e!3923 (and tp!583 tp!584 tp!582))))

(assert (= start!1138 b!6642))

(assert (= start!1138 b!6643))

(declare-fun m!9499 () Bool)

(assert (=> start!1138 m!9499))

(declare-fun m!9501 () Bool)

(assert (=> start!1138 m!9501))

(push 1)

(assert (not b_next!663))

(assert (not b_next!655))

(assert b_and!1639)

(assert b_and!1637)

(assert b_and!1641)

(assert (not b_next!653))

(assert b_and!1633)

(assert (not b_next!657))

(assert (not b_next!659))

(assert b_and!1631)

(assert b_and!1635)

(assert (not start!1138))

(assert (not b_next!661))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!663))

(assert (not b_next!655))

(assert b_and!1639)

(assert b_and!1637)

(assert b_and!1641)

(assert (not b_next!653))

(assert b_and!1633)

(assert (not b_next!657))

(assert (not b_next!659))

(assert b_and!1631)

(assert b_and!1635)

(assert (not b_next!661))

(check-sat)

(pop 1)

