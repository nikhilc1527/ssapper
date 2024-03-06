; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6002 () Bool)

(assert start!6002)

(declare-fun b!44789 () Bool)

(declare-fun b_free!4389 () Bool)

(declare-fun b_next!21427 () Bool)

(assert (=> b!44789 (= b_free!4389 (not b_next!21427))))

(declare-fun tp!10656 () Bool)

(declare-fun b_and!32761 () Bool)

(assert (=> b!44789 (= tp!10656 b_and!32761)))

(declare-fun b_free!4391 () Bool)

(declare-fun b_next!21429 () Bool)

(assert (=> b!44789 (= b_free!4391 (not b_next!21429))))

(declare-fun tp!10658 () Bool)

(declare-fun b_and!32763 () Bool)

(assert (=> b!44789 (= tp!10658 b_and!32763)))

(declare-fun b_free!4393 () Bool)

(declare-fun b_next!21431 () Bool)

(assert (=> b!44789 (= b_free!4393 (not b_next!21431))))

(declare-fun tp!10662 () Bool)

(declare-fun b_and!32765 () Bool)

(assert (=> b!44789 (= tp!10662 b_and!32765)))

(declare-fun b!44781 () Bool)

(declare-fun b_free!4395 () Bool)

(declare-fun b_next!21433 () Bool)

(assert (=> b!44781 (= b_free!4395 (not b_next!21433))))

(declare-fun tp!10657 () Bool)

(declare-fun b_and!32767 () Bool)

(assert (=> b!44781 (= tp!10657 b_and!32767)))

(declare-fun b_free!4397 () Bool)

(declare-fun b_next!21435 () Bool)

(assert (=> b!44781 (= b_free!4397 (not b_next!21435))))

(declare-fun tp!10661 () Bool)

(declare-fun b_and!32769 () Bool)

(assert (=> b!44781 (= tp!10661 b_and!32769)))

(declare-fun b_free!4399 () Bool)

(declare-fun b_next!21437 () Bool)

(assert (=> b!44781 (= b_free!4399 (not b_next!21437))))

(declare-fun tp!10659 () Bool)

(declare-fun b_and!32771 () Bool)

(assert (=> b!44781 (= tp!10659 b_and!32771)))

(declare-fun b!44788 () Bool)

(declare-fun b_free!4401 () Bool)

(declare-fun b_next!21439 () Bool)

(assert (=> b!44788 (= b_free!4401 (not b_next!21439))))

(declare-fun tp!10663 () Bool)

(declare-fun b_and!32773 () Bool)

(assert (=> b!44788 (= tp!10663 b_and!32773)))

(declare-fun b_free!4403 () Bool)

(declare-fun b_next!21441 () Bool)

(assert (=> b!44788 (= b_free!4403 (not b_next!21441))))

(declare-fun tp!10655 () Bool)

(declare-fun b_and!32775 () Bool)

(assert (=> b!44788 (= tp!10655 b_and!32775)))

(declare-fun b_free!4405 () Bool)

(declare-fun b_next!21443 () Bool)

(assert (=> b!44788 (= b_free!4405 (not b_next!21443))))

(declare-fun tp!10660 () Bool)

(declare-fun b_and!32777 () Bool)

(assert (=> b!44788 (= tp!10660 b_and!32777)))

(declare-fun b!44783 () Bool)

(assert (=> b!44783 true))

(assert (=> b!44783 true))

(declare-fun b_next!21445 () Bool)

(declare-fun lambda!6205 () Int)

(declare-datatypes () ((Nat!153 (Zero!137) (Succ!134 (n!1285 Nat!153)))))

(declare-datatypes () ((Unit!496 (Unit!497))))

(declare-datatypes () ((RAEqEvidence!206 (RAEqEvidence!207 (x!16543 Int) (y!1442 Int) (evidence!555 Int)))))

(declare-fun x$60!32 () RAEqEvidence!206)

(assert (=> b!44788 (= b_next!21439 (or (and b!44783 (= lambda!6205 (x!16543 x$60!32))) b_next!21445))))

(declare-fun x$61!32 () RAEqEvidence!206)

(declare-fun b_next!21447 () Bool)

(assert (=> b!44781 (= b_next!21435 (or (and b!44783 (= lambda!6205 (y!1442 x$61!32))) b_next!21447))))

(declare-fun b_next!21449 () Bool)

(assert (=> b!44788 (= b_next!21441 (or (and b!44783 (= lambda!6205 (y!1442 x$60!32))) b_next!21449))))

(declare-fun b_next!21451 () Bool)

(assert (=> b!44781 (= b_next!21433 (or (and b!44783 (= lambda!6205 (x!16543 x$61!32))) b_next!21451))))

(declare-fun b_next!21453 () Bool)

(declare-datatypes () ((RAEqEvidence!208 (RAEqEvidence!209 (x!16544 Int) (y!1443 Int) (evidence!556 Int)))))

(declare-fun x$62!37 () RAEqEvidence!208)

(assert (=> b!44789 (= b_next!21427 (or (and b!44783 (= lambda!6205 (x!16544 x$62!37))) b_next!21453))))

(declare-fun b_next!21455 () Bool)

(assert (=> b!44789 (= b_next!21429 (or (and b!44783 (= lambda!6205 (y!1443 x$62!37))) b_next!21455))))

(declare-fun m!47895 () Bool)

(assert (=> b!44783 m!47895))

(declare-fun lambda!6206 () Int)

(declare-fun dynLambda!756 (Int) Bool)

(assert (=> (and b!44789 b!44783 (= (dynLambda!756 lambda!6206) (dynLambda!756 (evidence!556 x$62!37)))) (= lambda!6206 (evidence!556 x$62!37))))

(declare-fun b_next!21457 () Bool)

(assert (=> b!44789 (= b_next!21431 (or (and b!44783 (= lambda!6206 (evidence!556 x$62!37))) b_next!21457))))

(declare-fun bs!17786 () Bool)

(declare-fun b!44780 () Bool)

(assert (= bs!17786 (and b!44780 b!44783)))

(declare-fun lambda!6207 () Int)

(assert (=> bs!17786 (not (= lambda!6207 lambda!6205))))

(assert (=> b!44780 true))

(assert (=> b!44780 true))

(declare-fun b_next!21459 () Bool)

(assert (=> b!44788 (= b_next!21445 (or (and b!44780 (= lambda!6207 (x!16543 x$60!32))) b_next!21459))))

(declare-fun b_next!21461 () Bool)

(assert (=> b!44781 (= b_next!21447 (or (and b!44780 (= lambda!6207 (y!1442 x$61!32))) b_next!21461))))

(declare-fun b_next!21463 () Bool)

(assert (=> b!44788 (= b_next!21449 (or (and b!44780 (= lambda!6207 (y!1442 x$60!32))) b_next!21463))))

(declare-fun b_next!21465 () Bool)

(assert (=> b!44781 (= b_next!21451 (or (and b!44780 (= lambda!6207 (x!16543 x$61!32))) b_next!21465))))

(declare-fun b_next!21467 () Bool)

(assert (=> b!44789 (= b_next!21453 (or (and b!44780 (= lambda!6207 (x!16544 x$62!37))) b_next!21467))))

(declare-fun b_next!21469 () Bool)

(assert (=> b!44789 (= b_next!21455 (or (and b!44780 (= lambda!6207 (y!1443 x$62!37))) b_next!21469))))

(assert (=> b!44780 true))

(assert (=> b!44780 true))

(declare-fun lambda!6208 () Int)

(declare-fun b_next!21471 () Bool)

(assert (=> b!44781 (= b_next!21437 (or (and b!44780 (= lambda!6208 (evidence!555 x$61!32))) b_next!21471))))

(declare-fun b_next!21473 () Bool)

(assert (=> b!44788 (= b_next!21443 (or (and b!44780 (= lambda!6208 (evidence!555 x$60!32))) b_next!21473))))

(declare-fun bs!17787 () Bool)

(declare-fun b!44784 () Bool)

(assert (= bs!17787 (and b!44784 b!44783)))

(declare-fun lambda!6209 () Int)

(assert (=> bs!17787 (not (= lambda!6209 lambda!6205))))

(declare-fun bs!17788 () Bool)

(assert (= bs!17788 (and b!44784 b!44780)))

(assert (=> bs!17788 (not (= lambda!6209 lambda!6207))))

(assert (=> b!44784 true))

(assert (=> b!44784 true))

(declare-fun b_next!21475 () Bool)

(assert (=> b!44788 (= b_next!21459 (or (and b!44784 (= lambda!6209 (x!16543 x$60!32))) b_next!21475))))

(declare-fun b_next!21477 () Bool)

(assert (=> b!44781 (= b_next!21461 (or (and b!44784 (= lambda!6209 (y!1442 x$61!32))) b_next!21477))))

(declare-fun b_next!21479 () Bool)

(assert (=> b!44788 (= b_next!21463 (or (and b!44784 (= lambda!6209 (y!1442 x$60!32))) b_next!21479))))

(declare-fun b_next!21481 () Bool)

(assert (=> b!44781 (= b_next!21465 (or (and b!44784 (= lambda!6209 (x!16543 x$61!32))) b_next!21481))))

(declare-fun b_next!21483 () Bool)

(assert (=> b!44789 (= b_next!21467 (or (and b!44784 (= lambda!6209 (x!16544 x$62!37))) b_next!21483))))

(declare-fun b_next!21485 () Bool)

(assert (=> b!44789 (= b_next!21469 (or (and b!44784 (= lambda!6209 (y!1443 x$62!37))) b_next!21485))))

(declare-fun lambda!6210 () Int)

(assert (=> bs!17788 (not (= lambda!6210 lambda!6208))))

(assert (=> b!44784 true))

(assert (=> b!44784 true))

(declare-fun b_next!21487 () Bool)

(assert (=> b!44781 (= b_next!21471 (or (and b!44784 (= lambda!6210 (evidence!555 x$61!32))) b_next!21487))))

(declare-fun b_next!21489 () Bool)

(assert (=> b!44788 (= b_next!21473 (or (and b!44784 (= lambda!6210 (evidence!555 x$60!32))) b_next!21489))))

(declare-fun res!21212 () Bool)

(declare-fun e!23173 () Bool)

(assert (=> b!44780 (=> (not res!21212) (not e!23173))))

(assert (=> b!44780 (= res!21212 (= x$61!32 (RAEqEvidence!207 lambda!6207 lambda!6207 lambda!6208)))))

(declare-fun e!23172 () Bool)

(assert (=> b!44781 (= e!23172 (and tp!10657 tp!10661 tp!10659))))

(declare-fun b!44782 () Bool)

(declare-fun res!21217 () Bool)

(assert (=> b!44782 (=> (not res!21217) (not e!23173))))

(declare-fun that!1598 () Nat!153)

(declare-fun n2!401 () Nat!153)

(assert (=> b!44782 (= res!21217 (= that!1598 n2!401))))

(declare-fun res!21213 () Bool)

(assert (=> b!44783 (=> (not res!21213) (not e!23173))))

(assert (=> b!44783 (= res!21213 (= x$62!37 (RAEqEvidence!209 lambda!6205 lambda!6205 lambda!6206)))))

(declare-fun res!21214 () Bool)

(assert (=> b!44784 (=> (not res!21214) (not e!23173))))

(assert (=> b!44784 (= res!21214 (= x$60!32 (RAEqEvidence!207 lambda!6209 lambda!6209 lambda!6210)))))

(declare-fun b!44785 () Bool)

(declare-fun res!21211 () Bool)

(assert (=> b!44785 (=> (not res!21211) (not e!23173))))

(declare-fun n1!385 () Nat!153)

(assert (=> b!44785 (= res!21211 (is-Succ!134 n1!385))))

(declare-fun res!21215 () Bool)

(assert (=> start!6002 (=> (not res!21215) (not e!23173))))

(declare-fun >!2 (Nat!153 Nat!153) Bool)

(assert (=> start!6002 (= res!21215 (>!2 n2!401 Zero!137))))

(assert (=> start!6002 e!23173))

(assert (=> start!6002 true))

(declare-fun e!23171 () Bool)

(declare-fun inv!752 (RAEqEvidence!208) Bool)

(assert (=> start!6002 (and (inv!752 x$62!37) e!23171)))

(declare-fun inv!753 (RAEqEvidence!206) Bool)

(assert (=> start!6002 (and (inv!753 x$61!32) e!23172)))

(declare-fun e!23174 () Bool)

(assert (=> start!6002 (and (inv!753 x$60!32) e!23174)))

(declare-fun b!44786 () Bool)

(assert (=> b!44786 (= e!23173 (not (>!2 that!1598 Zero!137)))))

(declare-fun b!44787 () Bool)

(declare-fun res!21216 () Bool)

(assert (=> b!44787 (=> (not res!21216) (not e!23173))))

(declare-fun thiss!6553 () Nat!153)

(declare-fun *!4 (Nat!153 Nat!153) Nat!153)

(assert (=> b!44787 (= res!21216 (= thiss!6553 (*!4 (n!1285 n1!385) n2!401)))))

(assert (=> b!44788 (= e!23174 (and tp!10663 tp!10655 tp!10660))))

(assert (=> b!44789 (= e!23171 (and tp!10656 tp!10658 tp!10662))))

(assert (= (and start!6002 res!21215) b!44785))

(assert (= (and b!44785 res!21211) b!44783))

(assert (= (and b!44783 res!21213) b!44780))

(assert (= (and b!44780 res!21212) b!44784))

(assert (= (and b!44784 res!21214) b!44787))

(assert (= (and b!44787 res!21216) b!44782))

(assert (= (and b!44782 res!21217) b!44786))

(assert (= start!6002 b!44789))

(assert (= start!6002 b!44781))

(assert (= start!6002 b!44788))

(declare-fun m!47897 () Bool)

(assert (=> start!6002 m!47897))

(declare-fun m!47899 () Bool)

(assert (=> start!6002 m!47899))

(declare-fun m!47901 () Bool)

(assert (=> start!6002 m!47901))

(declare-fun m!47903 () Bool)

(assert (=> start!6002 m!47903))

(declare-fun m!47905 () Bool)

(assert (=> b!44786 m!47905))

(declare-fun m!47907 () Bool)

(assert (=> b!44787 m!47907))

(push 1)

(assert (not b_next!21487))

(assert (not b_next!21475))

(assert b_and!32767)

(assert (not b_next!21483))

(assert b_and!32777)

(assert b_and!32771)

(assert b_and!32765)

(assert (not b_next!21457))

(assert b_and!32775)

(assert (not b_next!21479))

(assert (not start!6002))

(assert b_and!32769)

(assert b_and!32773)

(assert (not b_next!21481))

(assert (not b!44786))

(assert b_and!32761)

(assert (not b_next!21485))

(assert (not b!44787))

(assert b_and!32763)

(assert (not b_next!21489))

(assert (not b_next!21477))

(assert (not b!44783))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!21487))

(assert (not b_next!21475))

(assert b_and!32767)

(assert (not b_next!21483))

(assert b_and!32777)

(assert b_and!32771)

(assert b_and!32765)

(assert (not b_next!21457))

(assert b_and!32775)

(assert (not b_next!21479))

(assert b_and!32769)

(assert b_and!32773)

(assert (not b_next!21481))

(assert b_and!32761)

(assert (not b_next!21485))

(assert b_and!32763)

(assert (not b_next!21489))

(assert (not b_next!21477))

(check-sat)

(pop 1)

