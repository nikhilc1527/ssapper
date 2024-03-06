; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6252 () Bool)

(assert start!6252)

(declare-fun b!46435 () Bool)

(declare-fun b_free!5487 () Bool)

(declare-fun b_next!24929 () Bool)

(assert (=> b!46435 (= b_free!5487 (not b_next!24929))))

(declare-fun tp!12321 () Bool)

(declare-fun b_and!36103 () Bool)

(assert (=> b!46435 (= tp!12321 b_and!36103)))

(declare-fun b_free!5489 () Bool)

(declare-fun b_next!24931 () Bool)

(assert (=> b!46435 (= b_free!5489 (not b_next!24931))))

(declare-fun tp!12327 () Bool)

(declare-fun b_and!36105 () Bool)

(assert (=> b!46435 (= tp!12327 b_and!36105)))

(declare-fun b_free!5491 () Bool)

(declare-fun b_next!24933 () Bool)

(assert (=> b!46435 (= b_free!5491 (not b_next!24933))))

(declare-fun tp!12314 () Bool)

(declare-fun b_and!36107 () Bool)

(assert (=> b!46435 (= tp!12314 b_and!36107)))

(declare-fun b!46439 () Bool)

(declare-fun b_free!5493 () Bool)

(declare-fun b_next!24935 () Bool)

(assert (=> b!46439 (= b_free!5493 (not b_next!24935))))

(declare-fun tp!12316 () Bool)

(declare-fun b_and!36109 () Bool)

(assert (=> b!46439 (= tp!12316 b_and!36109)))

(declare-fun b_free!5495 () Bool)

(declare-fun b_next!24937 () Bool)

(assert (=> b!46439 (= b_free!5495 (not b_next!24937))))

(declare-fun tp!12323 () Bool)

(declare-fun b_and!36111 () Bool)

(assert (=> b!46439 (= tp!12323 b_and!36111)))

(declare-fun b_free!5497 () Bool)

(declare-fun b_next!24939 () Bool)

(assert (=> b!46439 (= b_free!5497 (not b_next!24939))))

(declare-fun tp!12320 () Bool)

(declare-fun b_and!36113 () Bool)

(assert (=> b!46439 (= tp!12320 b_and!36113)))

(declare-fun b!46436 () Bool)

(declare-fun b_free!5499 () Bool)

(declare-fun b_next!24941 () Bool)

(assert (=> b!46436 (= b_free!5499 (not b_next!24941))))

(declare-fun tp!12318 () Bool)

(declare-fun b_and!36115 () Bool)

(assert (=> b!46436 (= tp!12318 b_and!36115)))

(declare-fun b_free!5501 () Bool)

(declare-fun b_next!24943 () Bool)

(assert (=> b!46436 (= b_free!5501 (not b_next!24943))))

(declare-fun tp!12325 () Bool)

(declare-fun b_and!36117 () Bool)

(assert (=> b!46436 (= tp!12325 b_and!36117)))

(declare-fun b_free!5503 () Bool)

(declare-fun b_next!24945 () Bool)

(assert (=> b!46436 (= b_free!5503 (not b_next!24945))))

(declare-fun tp!12322 () Bool)

(declare-fun b_and!36119 () Bool)

(assert (=> b!46436 (= tp!12322 b_and!36119)))

(declare-fun b!46437 () Bool)

(declare-fun b_free!5505 () Bool)

(declare-fun b_next!24947 () Bool)

(assert (=> b!46437 (= b_free!5505 (not b_next!24947))))

(declare-fun tp!12326 () Bool)

(declare-fun b_and!36121 () Bool)

(assert (=> b!46437 (= tp!12326 b_and!36121)))

(declare-fun b_free!5507 () Bool)

(declare-fun b_next!24949 () Bool)

(assert (=> b!46437 (= b_free!5507 (not b_next!24949))))

(declare-fun tp!12319 () Bool)

(declare-fun b_and!36123 () Bool)

(assert (=> b!46437 (= tp!12319 b_and!36123)))

(declare-fun b_free!5509 () Bool)

(declare-fun b_next!24951 () Bool)

(assert (=> b!46437 (= b_free!5509 (not b_next!24951))))

(declare-fun tp!12324 () Bool)

(declare-fun b_and!36125 () Bool)

(assert (=> b!46437 (= tp!12324 b_and!36125)))

(declare-fun b!46438 () Bool)

(declare-fun b_free!5511 () Bool)

(declare-fun b_next!24953 () Bool)

(assert (=> b!46438 (= b_free!5511 (not b_next!24953))))

(declare-fun tp!12315 () Bool)

(declare-fun b_and!36127 () Bool)

(assert (=> b!46438 (= tp!12315 b_and!36127)))

(declare-fun b_free!5513 () Bool)

(declare-fun b_next!24955 () Bool)

(assert (=> b!46438 (= b_free!5513 (not b_next!24955))))

(declare-fun tp!12317 () Bool)

(declare-fun b_and!36129 () Bool)

(assert (=> b!46438 (= tp!12317 b_and!36129)))

(declare-fun b_free!5515 () Bool)

(declare-fun b_next!24957 () Bool)

(assert (=> b!46438 (= b_free!5515 (not b_next!24957))))

(declare-fun tp!12328 () Bool)

(declare-fun b_and!36131 () Bool)

(assert (=> b!46438 (= tp!12328 b_and!36131)))

(declare-fun e!24156 () Bool)

(assert (=> b!46435 (= e!24156 (and tp!12321 tp!12327 tp!12314))))

(declare-fun e!24158 () Bool)

(assert (=> b!46436 (= e!24158 (and tp!12318 tp!12325 tp!12322))))

(declare-fun e!24157 () Bool)

(assert (=> b!46437 (= e!24157 (and tp!12326 tp!12319 tp!12324))))

(declare-fun e!24160 () Bool)

(assert (=> b!46438 (= e!24160 (and tp!12315 tp!12317 tp!12328))))

(declare-fun lt!8419 () Bool)

(declare-datatypes () ((Nat!196 (Zero!180) (Succ!177 (n!1332 Nat!196)))))

(declare-fun n2!101 () Nat!196)

(declare-fun n3!28 () Nat!196)

(declare-fun >=!2 (Nat!196 Nat!196) Bool)

(assert (=> start!6252 (= lt!8419 (>=!2 n2!101 n3!28))))

(assert (=> start!6252 false))

(declare-datatypes () ((Unit!607 (Unit!608))))

(declare-datatypes () ((RAEqEvidence!332 (RAEqEvidence!333 (x!17231 Int) (y!1505 Int) (evidence!618 Int)))))

(declare-fun x$55!33 () RAEqEvidence!332)

(declare-fun inv!815 (RAEqEvidence!332) Bool)

(assert (=> start!6252 (and (inv!815 x$55!33) e!24156)))

(declare-fun prev!429 () RAEqEvidence!332)

(assert (=> start!6252 (and (inv!815 prev!429) e!24157)))

(assert (=> start!6252 true))

(declare-fun x$54!34 () RAEqEvidence!332)

(declare-fun e!24159 () Bool)

(assert (=> start!6252 (and (inv!815 x$54!34) e!24159)))

(declare-fun x$56!25 () RAEqEvidence!332)

(assert (=> start!6252 (and (inv!815 x$56!25) e!24158)))

(declare-datatypes () ((RAEqEvidence!334 (RAEqEvidence!335 (x!17232 Int) (y!1506 Int) (evidence!619 Int)))))

(declare-fun thiss!5085 () RAEqEvidence!334)

(declare-fun inv!816 (RAEqEvidence!334) Bool)

(assert (=> start!6252 (and (inv!816 thiss!5085) e!24160)))

(assert (=> b!46439 (= e!24159 (and tp!12316 tp!12323 tp!12320))))

(assert (= start!6252 b!46435))

(assert (= start!6252 b!46437))

(assert (= start!6252 b!46439))

(assert (= start!6252 b!46436))

(assert (= start!6252 b!46438))

(declare-fun m!49271 () Bool)

(assert (=> start!6252 m!49271))

(declare-fun m!49273 () Bool)

(assert (=> start!6252 m!49273))

(declare-fun m!49275 () Bool)

(assert (=> start!6252 m!49275))

(declare-fun m!49277 () Bool)

(assert (=> start!6252 m!49277))

(declare-fun m!49279 () Bool)

(assert (=> start!6252 m!49279))

(declare-fun m!49281 () Bool)

(assert (=> start!6252 m!49281))

(push 1)

(assert (not b_next!24937))

(assert b_and!36115)

(assert b_and!36131)

(assert (not b_next!24929))

(assert (not b_next!24953))

(assert b_and!36107)

(assert (not b_next!24957))

(assert (not b_next!24945))

(assert (not b_next!24933))

(assert (not b_next!24935))

(assert b_and!36117)

(assert b_and!36113)

(assert b_and!36129)

(assert (not b_next!24955))

(assert b_and!36109)

(assert b_and!36119)

(assert (not b_next!24951))

(assert (not b_next!24943))

(assert (not b_next!24947))

(assert b_and!36105)

(assert (not start!6252))

(assert b_and!36121)

(assert b_and!36127)

(assert b_and!36111)

(assert (not b_next!24949))

(assert b_and!36103)

(assert b_and!36123)

(assert (not b_next!24931))

(assert (not b_next!24941))

(assert (not b_next!24939))

(assert b_and!36125)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!24937))

(assert b_and!36115)

(assert b_and!36131)

(assert (not b_next!24929))

(assert (not b_next!24953))

(assert b_and!36107)

(assert (not b_next!24957))

(assert (not b_next!24945))

(assert (not b_next!24933))

(assert (not b_next!24935))

(assert b_and!36117)

(assert b_and!36113)

(assert b_and!36129)

(assert (not b_next!24955))

(assert b_and!36109)

(assert b_and!36119)

(assert (not b_next!24951))

(assert (not b_next!24943))

(assert (not b_next!24947))

(assert b_and!36105)

(assert b_and!36121)

(assert b_and!36127)

(assert b_and!36111)

(assert (not b_next!24949))

(assert b_and!36103)

(assert b_and!36123)

(assert (not b_next!24931))

(assert (not b_next!24941))

(assert (not b_next!24939))

(assert b_and!36125)

(check-sat)

(pop 1)

