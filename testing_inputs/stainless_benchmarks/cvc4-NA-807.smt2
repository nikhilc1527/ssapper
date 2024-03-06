; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6100 () Bool)

(assert start!6100)

(declare-fun b!45400 () Bool)

(declare-fun b_free!4863 () Bool)

(declare-fun b_next!22645 () Bool)

(assert (=> b!45400 (= b_free!4863 (not b_next!22645))))

(declare-fun tp!11378 () Bool)

(declare-fun b_and!34325 () Bool)

(assert (=> b!45400 (= tp!11378 b_and!34325)))

(declare-fun b_free!4865 () Bool)

(declare-fun b_next!22647 () Bool)

(assert (=> b!45400 (= b_free!4865 (not b_next!22647))))

(declare-fun tp!11388 () Bool)

(declare-fun b_and!34327 () Bool)

(assert (=> b!45400 (= tp!11388 b_and!34327)))

(declare-fun b_free!4867 () Bool)

(declare-fun b_next!22649 () Bool)

(assert (=> b!45400 (= b_free!4867 (not b_next!22649))))

(declare-fun tp!11391 () Bool)

(declare-fun b_and!34329 () Bool)

(assert (=> b!45400 (= tp!11391 b_and!34329)))

(declare-fun b!45404 () Bool)

(declare-fun b_free!4869 () Bool)

(declare-fun b_next!22651 () Bool)

(assert (=> b!45404 (= b_free!4869 (not b_next!22651))))

(declare-fun tp!11389 () Bool)

(declare-fun b_and!34331 () Bool)

(assert (=> b!45404 (= tp!11389 b_and!34331)))

(declare-fun b_free!4871 () Bool)

(declare-fun b_next!22653 () Bool)

(assert (=> b!45404 (= b_free!4871 (not b_next!22653))))

(declare-fun tp!11381 () Bool)

(declare-fun b_and!34333 () Bool)

(assert (=> b!45404 (= tp!11381 b_and!34333)))

(declare-fun b_free!4873 () Bool)

(declare-fun b_next!22655 () Bool)

(assert (=> b!45404 (= b_free!4873 (not b_next!22655))))

(declare-fun tp!11380 () Bool)

(declare-fun b_and!34335 () Bool)

(assert (=> b!45404 (= tp!11380 b_and!34335)))

(declare-fun b!45401 () Bool)

(declare-fun b_free!4875 () Bool)

(declare-fun b_next!22657 () Bool)

(assert (=> b!45401 (= b_free!4875 (not b_next!22657))))

(declare-fun tp!11384 () Bool)

(declare-fun b_and!34337 () Bool)

(assert (=> b!45401 (= tp!11384 b_and!34337)))

(declare-fun b_free!4877 () Bool)

(declare-fun b_next!22659 () Bool)

(assert (=> b!45401 (= b_free!4877 (not b_next!22659))))

(declare-fun tp!11385 () Bool)

(declare-fun b_and!34339 () Bool)

(assert (=> b!45401 (= tp!11385 b_and!34339)))

(declare-fun b_free!4879 () Bool)

(declare-fun b_next!22661 () Bool)

(assert (=> b!45401 (= b_free!4879 (not b_next!22661))))

(declare-fun tp!11386 () Bool)

(declare-fun b_and!34341 () Bool)

(assert (=> b!45401 (= tp!11386 b_and!34341)))

(declare-fun b!45403 () Bool)

(declare-fun b_free!4881 () Bool)

(declare-fun b_next!22663 () Bool)

(assert (=> b!45403 (= b_free!4881 (not b_next!22663))))

(declare-fun tp!11379 () Bool)

(declare-fun b_and!34343 () Bool)

(assert (=> b!45403 (= tp!11379 b_and!34343)))

(declare-fun b_free!4883 () Bool)

(declare-fun b_next!22665 () Bool)

(assert (=> b!45403 (= b_free!4883 (not b_next!22665))))

(declare-fun tp!11392 () Bool)

(declare-fun b_and!34345 () Bool)

(assert (=> b!45403 (= tp!11392 b_and!34345)))

(declare-fun b_free!4885 () Bool)

(declare-fun b_next!22667 () Bool)

(assert (=> b!45403 (= b_free!4885 (not b_next!22667))))

(declare-fun tp!11387 () Bool)

(declare-fun b_and!34347 () Bool)

(assert (=> b!45403 (= tp!11387 b_and!34347)))

(declare-fun b!45402 () Bool)

(declare-fun b_free!4887 () Bool)

(declare-fun b_next!22669 () Bool)

(assert (=> b!45402 (= b_free!4887 (not b_next!22669))))

(declare-fun tp!11382 () Bool)

(declare-fun b_and!34349 () Bool)

(assert (=> b!45402 (= tp!11382 b_and!34349)))

(declare-fun b_free!4889 () Bool)

(declare-fun b_next!22671 () Bool)

(assert (=> b!45402 (= b_free!4889 (not b_next!22671))))

(declare-fun tp!11390 () Bool)

(declare-fun b_and!34351 () Bool)

(assert (=> b!45402 (= tp!11390 b_and!34351)))

(declare-fun b_free!4891 () Bool)

(declare-fun b_next!22673 () Bool)

(assert (=> b!45402 (= b_free!4891 (not b_next!22673))))

(declare-fun tp!11383 () Bool)

(declare-fun b_and!34353 () Bool)

(assert (=> b!45402 (= tp!11383 b_and!34353)))

(declare-fun e!23552 () Bool)

(assert (=> b!45400 (= e!23552 (and tp!11378 tp!11388 tp!11391))))

(declare-fun e!23553 () Bool)

(assert (=> b!45401 (= e!23553 (and tp!11384 tp!11385 tp!11386))))

(declare-fun lt!8298 () Bool)

(declare-datatypes () ((Nat!168 (Zero!152) (Succ!149 (n!1300 Nat!168)))))

(declare-fun n2!401 () Nat!168)

(declare-fun >!2 (Nat!168 Nat!168) Bool)

(assert (=> start!6100 (= lt!8298 (>!2 n2!401 Zero!152))))

(assert (=> start!6100 false))

(assert (=> start!6100 true))

(declare-datatypes () ((RAEqEvidence!262 (RAEqEvidence!263 (x!16829 Int) (y!1470 Int) (evidence!583 Int)))))

(declare-fun x$62!37 () RAEqEvidence!262)

(declare-fun inv!780 (RAEqEvidence!262) Bool)

(assert (=> start!6100 (and (inv!780 x$62!37) e!23552)))

(declare-fun thiss!6566 () RAEqEvidence!262)

(assert (=> start!6100 (and (inv!780 thiss!6566) e!23553)))

(declare-datatypes () ((Unit!532 (Unit!533))))

(declare-datatypes () ((RAEqEvidence!264 (RAEqEvidence!265 (x!16830 Int) (y!1471 Int) (evidence!584 Int)))))

(declare-fun x$61!32 () RAEqEvidence!264)

(declare-fun e!23551 () Bool)

(declare-fun inv!781 (RAEqEvidence!264) Bool)

(assert (=> start!6100 (and (inv!781 x$61!32) e!23551)))

(declare-fun x$59!16 () RAEqEvidence!264)

(declare-fun e!23555 () Bool)

(assert (=> start!6100 (and (inv!781 x$59!16) e!23555)))

(declare-fun x$60!32 () RAEqEvidence!264)

(declare-fun e!23554 () Bool)

(assert (=> start!6100 (and (inv!781 x$60!32) e!23554)))

(assert (=> b!45402 (= e!23551 (and tp!11382 tp!11390 tp!11383))))

(assert (=> b!45403 (= e!23554 (and tp!11379 tp!11392 tp!11387))))

(assert (=> b!45404 (= e!23555 (and tp!11389 tp!11381 tp!11380))))

(assert (= start!6100 b!45400))

(assert (= start!6100 b!45401))

(assert (= start!6100 b!45402))

(assert (= start!6100 b!45404))

(assert (= start!6100 b!45403))

(declare-fun m!48457 () Bool)

(assert (=> start!6100 m!48457))

(declare-fun m!48459 () Bool)

(assert (=> start!6100 m!48459))

(declare-fun m!48461 () Bool)

(assert (=> start!6100 m!48461))

(declare-fun m!48463 () Bool)

(assert (=> start!6100 m!48463))

(declare-fun m!48465 () Bool)

(assert (=> start!6100 m!48465))

(declare-fun m!48467 () Bool)

(assert (=> start!6100 m!48467))

(push 1)

(assert (not b_next!22671))

(assert (not b_next!22651))

(assert (not b_next!22657))

(assert b_and!34337)

(assert (not start!6100))

(assert (not b_next!22659))

(assert b_and!34341)

(assert (not b_next!22649))

(assert b_and!34329)

(assert b_and!34349)

(assert (not b_next!22669))

(assert (not b_next!22655))

(assert (not b_next!22673))

(assert b_and!34333)

(assert b_and!34345)

(assert (not b_next!22663))

(assert b_and!34351)

(assert (not b_next!22645))

(assert b_and!34353)

(assert (not b_next!22667))

(assert (not b_next!22665))

(assert b_and!34325)

(assert b_and!34343)

(assert b_and!34347)

(assert b_and!34331)

(assert b_and!34327)

(assert (not b_next!22647))

(assert b_and!34335)

(assert (not b_next!22661))

(assert (not b_next!22653))

(assert b_and!34339)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!22671))

(assert (not b_next!22651))

(assert (not b_next!22657))

(assert b_and!34337)

(assert (not b_next!22659))

(assert b_and!34341)

(assert (not b_next!22649))

(assert b_and!34329)

(assert b_and!34349)

(assert (not b_next!22669))

(assert (not b_next!22655))

(assert (not b_next!22673))

(assert b_and!34333)

(assert b_and!34345)

(assert (not b_next!22663))

(assert b_and!34351)

(assert (not b_next!22645))

(assert b_and!34353)

(assert (not b_next!22667))

(assert (not b_next!22665))

(assert b_and!34325)

(assert b_and!34343)

(assert b_and!34347)

(assert b_and!34331)

(assert b_and!34327)

(assert (not b_next!22647))

(assert b_and!34335)

(assert (not b_next!22661))

(assert (not b_next!22653))

(assert b_and!34339)

(check-sat)

(pop 1)

