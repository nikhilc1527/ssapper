; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1166 () Bool)

(assert start!1166)

(declare-fun b!6752 () Bool)

(declare-fun b_free!335 () Bool)

(declare-fun b_next!721 () Bool)

(assert (=> b!6752 (= b_free!335 (not b_next!721))))

(declare-fun tp!635 () Bool)

(declare-fun b_and!1727 () Bool)

(assert (=> b!6752 (= tp!635 b_and!1727)))

(declare-fun b_free!337 () Bool)

(declare-fun b_next!723 () Bool)

(assert (=> b!6752 (= b_free!337 (not b_next!723))))

(declare-fun tp!634 () Bool)

(declare-fun b_and!1729 () Bool)

(assert (=> b!6752 (= tp!634 b_and!1729)))

(declare-fun b_free!339 () Bool)

(declare-fun b_next!725 () Bool)

(assert (=> b!6752 (= b_free!339 (not b_next!725))))

(declare-fun tp!633 () Bool)

(declare-fun b_and!1731 () Bool)

(assert (=> b!6752 (= tp!633 b_and!1731)))

(declare-fun b!6753 () Bool)

(declare-fun b_free!341 () Bool)

(declare-fun b_next!727 () Bool)

(assert (=> b!6753 (= b_free!341 (not b_next!727))))

(declare-fun tp!636 () Bool)

(declare-fun b_and!1733 () Bool)

(assert (=> b!6753 (= tp!636 b_and!1733)))

(declare-fun b_free!343 () Bool)

(declare-fun b_next!729 () Bool)

(assert (=> b!6753 (= b_free!343 (not b_next!729))))

(declare-fun tp!637 () Bool)

(declare-fun b_and!1735 () Bool)

(assert (=> b!6753 (= tp!637 b_and!1735)))

(assert (=> start!1166 false))

(assert (=> start!1166 true))

(declare-datatypes () ((Balance!61 (Balance!62 (extraOpen!71 Int) (extraClose!71 Int)))))

(declare-datatypes () ((EqEvidence!50 (EqEvidence!51 (x!3660 Int) (y!446 Int) (evidence!92 Int)))))

(declare-fun thiss!1203 () EqEvidence!50)

(declare-fun e!3980 () Bool)

(declare-fun inv!241 (EqEvidence!50) Bool)

(assert (=> start!1166 (and (inv!241 thiss!1203) e!3980)))

(declare-datatypes () ((EqProof!24 (EqProof!25 (x!3661 Int) (y!447 Int)))))

(declare-fun that!349 () EqProof!24)

(declare-fun e!3981 () Bool)

(declare-fun inv!242 (EqProof!24) Bool)

(assert (=> start!1166 (and (inv!242 that!349) e!3981)))

(assert (=> b!6752 (= e!3980 (and tp!635 tp!634 tp!633))))

(assert (=> b!6753 (= e!3981 (and tp!636 tp!637))))

(assert (= start!1166 b!6752))

(assert (= start!1166 b!6753))

(declare-fun m!9597 () Bool)

(assert (=> start!1166 m!9597))

(declare-fun m!9599 () Bool)

(assert (=> start!1166 m!9599))

(push 1)

(assert (not b_next!727))

(assert (not start!1166))

(assert (not b_next!725))

(assert (not b_next!729))

(assert (not b_next!723))

(assert b_and!1733)

(assert b_and!1735)

(assert b_and!1729)

(assert b_and!1731)

(assert (not b_next!721))

(assert b_and!1727)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!727))

(assert (not b_next!725))

(assert (not b_next!729))

(assert (not b_next!723))

(assert b_and!1733)

(assert b_and!1735)

(assert b_and!1729)

(assert b_and!1731)

(assert (not b_next!721))

(assert b_and!1727)

(check-sat)

(pop 1)

