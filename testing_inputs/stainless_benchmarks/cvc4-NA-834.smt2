; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6250 () Bool)

(assert start!6250)

(declare-fun b!46420 () Bool)

(declare-fun b_free!5457 () Bool)

(declare-fun b_next!24899 () Bool)

(assert (=> b!46420 (= b_free!5457 (not b_next!24899))))

(declare-fun tp!12282 () Bool)

(declare-fun b_and!36073 () Bool)

(assert (=> b!46420 (= tp!12282 b_and!36073)))

(declare-fun b_free!5459 () Bool)

(declare-fun b_next!24901 () Bool)

(assert (=> b!46420 (= b_free!5459 (not b_next!24901))))

(declare-fun tp!12277 () Bool)

(declare-fun b_and!36075 () Bool)

(assert (=> b!46420 (= tp!12277 b_and!36075)))

(declare-fun b_free!5461 () Bool)

(declare-fun b_next!24903 () Bool)

(assert (=> b!46420 (= b_free!5461 (not b_next!24903))))

(declare-fun tp!12278 () Bool)

(declare-fun b_and!36077 () Bool)

(assert (=> b!46420 (= tp!12278 b_and!36077)))

(declare-fun b!46423 () Bool)

(declare-fun b_free!5463 () Bool)

(declare-fun b_next!24905 () Bool)

(assert (=> b!46423 (= b_free!5463 (not b_next!24905))))

(declare-fun tp!12275 () Bool)

(declare-fun b_and!36079 () Bool)

(assert (=> b!46423 (= tp!12275 b_and!36079)))

(declare-fun b_free!5465 () Bool)

(declare-fun b_next!24907 () Bool)

(assert (=> b!46423 (= b_free!5465 (not b_next!24907))))

(declare-fun tp!12273 () Bool)

(declare-fun b_and!36081 () Bool)

(assert (=> b!46423 (= tp!12273 b_and!36081)))

(declare-fun b_free!5467 () Bool)

(declare-fun b_next!24909 () Bool)

(assert (=> b!46423 (= b_free!5467 (not b_next!24909))))

(declare-fun tp!12283 () Bool)

(declare-fun b_and!36083 () Bool)

(assert (=> b!46423 (= tp!12283 b_and!36083)))

(declare-fun b!46422 () Bool)

(declare-fun b_free!5469 () Bool)

(declare-fun b_next!24911 () Bool)

(assert (=> b!46422 (= b_free!5469 (not b_next!24911))))

(declare-fun tp!12280 () Bool)

(declare-fun b_and!36085 () Bool)

(assert (=> b!46422 (= tp!12280 b_and!36085)))

(declare-fun b_free!5471 () Bool)

(declare-fun b_next!24913 () Bool)

(assert (=> b!46422 (= b_free!5471 (not b_next!24913))))

(declare-fun tp!12276 () Bool)

(declare-fun b_and!36087 () Bool)

(assert (=> b!46422 (= tp!12276 b_and!36087)))

(declare-fun b_free!5473 () Bool)

(declare-fun b_next!24915 () Bool)

(assert (=> b!46422 (= b_free!5473 (not b_next!24915))))

(declare-fun tp!12281 () Bool)

(declare-fun b_and!36089 () Bool)

(assert (=> b!46422 (= tp!12281 b_and!36089)))

(declare-fun b!46421 () Bool)

(declare-fun b_free!5475 () Bool)

(declare-fun b_next!24917 () Bool)

(assert (=> b!46421 (= b_free!5475 (not b_next!24917))))

(declare-fun tp!12271 () Bool)

(declare-fun b_and!36091 () Bool)

(assert (=> b!46421 (= tp!12271 b_and!36091)))

(declare-fun b_free!5477 () Bool)

(declare-fun b_next!24919 () Bool)

(assert (=> b!46421 (= b_free!5477 (not b_next!24919))))

(declare-fun tp!12272 () Bool)

(declare-fun b_and!36093 () Bool)

(assert (=> b!46421 (= tp!12272 b_and!36093)))

(declare-fun b_free!5479 () Bool)

(declare-fun b_next!24921 () Bool)

(assert (=> b!46421 (= b_free!5479 (not b_next!24921))))

(declare-fun tp!12270 () Bool)

(declare-fun b_and!36095 () Bool)

(assert (=> b!46421 (= tp!12270 b_and!36095)))

(declare-fun b!46424 () Bool)

(declare-fun b_free!5481 () Bool)

(declare-fun b_next!24923 () Bool)

(assert (=> b!46424 (= b_free!5481 (not b_next!24923))))

(declare-fun tp!12279 () Bool)

(declare-fun b_and!36097 () Bool)

(assert (=> b!46424 (= tp!12279 b_and!36097)))

(declare-fun b_free!5483 () Bool)

(declare-fun b_next!24925 () Bool)

(assert (=> b!46424 (= b_free!5483 (not b_next!24925))))

(declare-fun tp!12269 () Bool)

(declare-fun b_and!36099 () Bool)

(assert (=> b!46424 (= tp!12269 b_and!36099)))

(declare-fun b_free!5485 () Bool)

(declare-fun b_next!24927 () Bool)

(assert (=> b!46424 (= b_free!5485 (not b_next!24927))))

(declare-fun tp!12274 () Bool)

(declare-fun b_and!36101 () Bool)

(assert (=> b!46424 (= tp!12274 b_and!36101)))

(declare-fun e!24141 () Bool)

(assert (=> b!46420 (= e!24141 (and tp!12282 tp!12277 tp!12278))))

(declare-fun e!24145 () Bool)

(assert (=> b!46421 (= e!24145 (and tp!12271 tp!12272 tp!12270))))

(declare-fun e!24144 () Bool)

(assert (=> b!46422 (= e!24144 (and tp!12280 tp!12276 tp!12281))))

(declare-fun lt!8416 () Bool)

(declare-datatypes () ((Nat!195 (Zero!179) (Succ!176 (n!1331 Nat!195)))))

(declare-fun n2!101 () Nat!195)

(declare-fun n3!28 () Nat!195)

(declare-fun >=!2 (Nat!195 Nat!195) Bool)

(assert (=> start!6250 (= lt!8416 (>=!2 n2!101 n3!28))))

(assert (=> start!6250 false))

(declare-datatypes () ((Unit!605 (Unit!606))))

(declare-datatypes () ((RAEqEvidence!328 (RAEqEvidence!329 (x!17229 Int) (y!1503 Int) (evidence!616 Int)))))

(declare-fun x$55!33 () RAEqEvidence!328)

(declare-fun inv!813 (RAEqEvidence!328) Bool)

(assert (=> start!6250 (and (inv!813 x$55!33) e!24141)))

(declare-fun prev!429 () RAEqEvidence!328)

(declare-fun e!24143 () Bool)

(assert (=> start!6250 (and (inv!813 prev!429) e!24143)))

(assert (=> start!6250 true))

(declare-fun x$54!34 () RAEqEvidence!328)

(assert (=> start!6250 (and (inv!813 x$54!34) e!24145)))

(declare-fun x$56!25 () RAEqEvidence!328)

(declare-fun e!24142 () Bool)

(assert (=> start!6250 (and (inv!813 x$56!25) e!24142)))

(declare-datatypes () ((RAEqEvidence!330 (RAEqEvidence!331 (x!17230 Int) (y!1504 Int) (evidence!617 Int)))))

(declare-fun thiss!5085 () RAEqEvidence!330)

(declare-fun inv!814 (RAEqEvidence!330) Bool)

(assert (=> start!6250 (and (inv!814 thiss!5085) e!24144)))

(assert (=> b!46423 (= e!24142 (and tp!12275 tp!12273 tp!12283))))

(assert (=> b!46424 (= e!24143 (and tp!12279 tp!12269 tp!12274))))

(assert (= start!6250 b!46420))

(assert (= start!6250 b!46424))

(assert (= start!6250 b!46421))

(assert (= start!6250 b!46423))

(assert (= start!6250 b!46422))

(declare-fun m!49259 () Bool)

(assert (=> start!6250 m!49259))

(declare-fun m!49261 () Bool)

(assert (=> start!6250 m!49261))

(declare-fun m!49263 () Bool)

(assert (=> start!6250 m!49263))

(declare-fun m!49265 () Bool)

(assert (=> start!6250 m!49265))

(declare-fun m!49267 () Bool)

(assert (=> start!6250 m!49267))

(declare-fun m!49269 () Bool)

(assert (=> start!6250 m!49269))

(push 1)

(assert (not b_next!24923))

(assert (not b_next!24925))

(assert (not b_next!24901))

(assert (not b_next!24911))

(assert (not b_next!24905))

(assert b_and!36093)

(assert (not b_next!24909))

(assert (not b_next!24927))

(assert b_and!36091)

(assert b_and!36073)

(assert (not start!6250))

(assert b_and!36097)

(assert b_and!36089)

(assert (not b_next!24919))

(assert (not b_next!24913))

(assert b_and!36085)

(assert b_and!36095)

(assert (not b_next!24915))

(assert (not b_next!24921))

(assert b_and!36081)

(assert b_and!36079)

(assert (not b_next!24917))

(assert b_and!36083)

(assert b_and!36077)

(assert (not b_next!24907))

(assert (not b_next!24903))

(assert b_and!36087)

(assert b_and!36075)

(assert b_and!36101)

(assert (not b_next!24899))

(assert b_and!36099)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!24923))

(assert (not b_next!24925))

(assert (not b_next!24901))

(assert (not b_next!24911))

(assert (not b_next!24905))

(assert b_and!36093)

(assert (not b_next!24909))

(assert (not b_next!24927))

(assert b_and!36091)

(assert b_and!36073)

(assert b_and!36097)

(assert b_and!36089)

(assert (not b_next!24919))

(assert (not b_next!24913))

(assert b_and!36085)

(assert b_and!36095)

(assert (not b_next!24915))

(assert (not b_next!24921))

(assert b_and!36081)

(assert b_and!36079)

(assert (not b_next!24917))

(assert b_and!36083)

(assert b_and!36077)

(assert (not b_next!24907))

(assert (not b_next!24903))

(assert b_and!36087)

(assert b_and!36075)

(assert b_and!36101)

(assert (not b_next!24899))

(assert b_and!36099)

(check-sat)

(pop 1)

