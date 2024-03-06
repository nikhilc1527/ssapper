; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6004 () Bool)

(assert start!6004)

(declare-fun b!44816 () Bool)

(declare-fun b_free!4407 () Bool)

(declare-fun b_next!21491 () Bool)

(assert (=> b!44816 (= b_free!4407 (not b_next!21491))))

(declare-fun tp!10696 () Bool)

(declare-fun b_and!32779 () Bool)

(assert (=> b!44816 (= tp!10696 b_and!32779)))

(declare-fun b_free!4409 () Bool)

(declare-fun b_next!21493 () Bool)

(assert (=> b!44816 (= b_free!4409 (not b_next!21493))))

(declare-fun tp!10691 () Bool)

(declare-fun b_and!32781 () Bool)

(assert (=> b!44816 (= tp!10691 b_and!32781)))

(declare-fun b_free!4411 () Bool)

(declare-fun b_next!21495 () Bool)

(assert (=> b!44816 (= b_free!4411 (not b_next!21495))))

(declare-fun tp!10694 () Bool)

(declare-fun b_and!32783 () Bool)

(assert (=> b!44816 (= tp!10694 b_and!32783)))

(declare-fun b!44817 () Bool)

(declare-fun b_free!4413 () Bool)

(declare-fun b_next!21497 () Bool)

(assert (=> b!44817 (= b_free!4413 (not b_next!21497))))

(declare-fun tp!10692 () Bool)

(declare-fun b_and!32785 () Bool)

(assert (=> b!44817 (= tp!10692 b_and!32785)))

(declare-fun b_free!4415 () Bool)

(declare-fun b_next!21499 () Bool)

(assert (=> b!44817 (= b_free!4415 (not b_next!21499))))

(declare-fun tp!10695 () Bool)

(declare-fun b_and!32787 () Bool)

(assert (=> b!44817 (= tp!10695 b_and!32787)))

(declare-fun b_free!4417 () Bool)

(declare-fun b_next!21501 () Bool)

(assert (=> b!44817 (= b_free!4417 (not b_next!21501))))

(declare-fun tp!10693 () Bool)

(declare-fun b_and!32789 () Bool)

(assert (=> b!44817 (= tp!10693 b_and!32789)))

(declare-fun b!44820 () Bool)

(declare-fun b_free!4419 () Bool)

(declare-fun b_next!21503 () Bool)

(assert (=> b!44820 (= b_free!4419 (not b_next!21503))))

(declare-fun tp!10697 () Bool)

(declare-fun b_and!32791 () Bool)

(assert (=> b!44820 (= tp!10697 b_and!32791)))

(declare-fun b_free!4421 () Bool)

(declare-fun b_next!21505 () Bool)

(assert (=> b!44820 (= b_free!4421 (not b_next!21505))))

(declare-fun tp!10698 () Bool)

(declare-fun b_and!32793 () Bool)

(assert (=> b!44820 (= tp!10698 b_and!32793)))

(declare-fun b_free!4423 () Bool)

(declare-fun b_next!21507 () Bool)

(assert (=> b!44820 (= b_free!4423 (not b_next!21507))))

(declare-fun tp!10699 () Bool)

(declare-fun b_and!32795 () Bool)

(assert (=> b!44820 (= tp!10699 b_and!32795)))

(declare-fun b!44826 () Bool)

(declare-fun b_free!4425 () Bool)

(declare-fun b_next!21509 () Bool)

(assert (=> b!44826 (= b_free!4425 (not b_next!21509))))

(declare-fun tp!10689 () Bool)

(declare-fun b_and!32797 () Bool)

(assert (=> b!44826 (= tp!10689 b_and!32797)))

(declare-fun b_free!4427 () Bool)

(declare-fun b_next!21511 () Bool)

(assert (=> b!44826 (= b_free!4427 (not b_next!21511))))

(declare-fun tp!10690 () Bool)

(declare-fun b_and!32799 () Bool)

(assert (=> b!44826 (= tp!10690 b_and!32799)))

(declare-fun b_free!4429 () Bool)

(declare-fun b_next!21513 () Bool)

(assert (=> b!44826 (= b_free!4429 (not b_next!21513))))

(declare-fun tp!10688 () Bool)

(declare-fun b_and!32801 () Bool)

(assert (=> b!44826 (= tp!10688 b_and!32801)))

(declare-fun b!44823 () Bool)

(assert (=> b!44823 true))

(assert (=> b!44823 true))

(declare-datatypes () ((Nat!154 (Zero!138) (Succ!135 (n!1286 Nat!154)))))

(declare-datatypes () ((RAEqEvidence!210 (RAEqEvidence!211 (x!16594 Int) (y!1444 Int) (evidence!557 Int)))))

(declare-fun x$62!37 () RAEqEvidence!210)

(declare-fun lambda!6235 () Int)

(declare-fun b_next!21515 () Bool)

(assert (=> b!44816 (= b_next!21491 (or (and b!44823 (= lambda!6235 (x!16594 x$62!37))) b_next!21515))))

(declare-fun b_next!21517 () Bool)

(declare-datatypes () ((Unit!498 (Unit!499))))

(declare-datatypes () ((RAEqEvidence!212 (RAEqEvidence!213 (x!16595 Int) (y!1445 Int) (evidence!558 Int)))))

(declare-fun x$60!32 () RAEqEvidence!212)

(assert (=> b!44826 (= b_next!21509 (or (and b!44823 (= lambda!6235 (x!16595 x$60!32))) b_next!21517))))

(declare-fun x$61!32 () RAEqEvidence!212)

(declare-fun b_next!21519 () Bool)

(assert (=> b!44820 (= b_next!21503 (or (and b!44823 (= lambda!6235 (x!16595 x$61!32))) b_next!21519))))

(declare-fun thiss!6552 () RAEqEvidence!212)

(declare-fun b_next!21521 () Bool)

(assert (=> b!44817 (= b_next!21499 (or (and b!44823 (= lambda!6235 (y!1445 thiss!6552))) b_next!21521))))

(declare-fun b_next!21523 () Bool)

(assert (=> b!44826 (= b_next!21511 (or (and b!44823 (= lambda!6235 (y!1445 x$60!32))) b_next!21523))))

(declare-fun b_next!21525 () Bool)

(assert (=> b!44816 (= b_next!21493 (or (and b!44823 (= lambda!6235 (y!1444 x$62!37))) b_next!21525))))

(declare-fun b_next!21527 () Bool)

(assert (=> b!44820 (= b_next!21505 (or (and b!44823 (= lambda!6235 (y!1445 x$61!32))) b_next!21527))))

(declare-fun b_next!21529 () Bool)

(assert (=> b!44817 (= b_next!21497 (or (and b!44823 (= lambda!6235 (x!16595 thiss!6552))) b_next!21529))))

(declare-fun m!47909 () Bool)

(assert (=> b!44823 m!47909))

(declare-fun lambda!6236 () Int)

(declare-fun dynLambda!757 (Int) Bool)

(assert (=> (and b!44816 b!44823 (= (dynLambda!757 lambda!6236) (dynLambda!757 (evidence!557 x$62!37)))) (= lambda!6236 (evidence!557 x$62!37))))

(declare-fun b_next!21531 () Bool)

(assert (=> b!44816 (= b_next!21495 (or (and b!44823 (= lambda!6236 (evidence!557 x$62!37))) b_next!21531))))

(declare-fun bs!17790 () Bool)

(declare-fun b!44821 () Bool)

(assert (= bs!17790 (and b!44821 b!44823)))

(declare-fun lambda!6237 () Int)

(assert (=> bs!17790 (not (= lambda!6237 lambda!6235))))

(assert (=> b!44821 true))

(assert (=> b!44821 true))

(declare-fun b_next!21533 () Bool)

(assert (=> b!44816 (= b_next!21515 (or (and b!44821 (= lambda!6237 (x!16594 x$62!37))) b_next!21533))))

(declare-fun b_next!21535 () Bool)

(assert (=> b!44826 (= b_next!21517 (or (and b!44821 (= lambda!6237 (x!16595 x$60!32))) b_next!21535))))

(declare-fun b_next!21537 () Bool)

(assert (=> b!44820 (= b_next!21519 (or (and b!44821 (= lambda!6237 (x!16595 x$61!32))) b_next!21537))))

(declare-fun b_next!21539 () Bool)

(assert (=> b!44817 (= b_next!21521 (or (and b!44821 (= lambda!6237 (y!1445 thiss!6552))) b_next!21539))))

(declare-fun b_next!21541 () Bool)

(assert (=> b!44826 (= b_next!21523 (or (and b!44821 (= lambda!6237 (y!1445 x$60!32))) b_next!21541))))

(declare-fun b_next!21543 () Bool)

(assert (=> b!44816 (= b_next!21525 (or (and b!44821 (= lambda!6237 (y!1444 x$62!37))) b_next!21543))))

(declare-fun b_next!21545 () Bool)

(assert (=> b!44820 (= b_next!21527 (or (and b!44821 (= lambda!6237 (y!1445 x$61!32))) b_next!21545))))

(declare-fun b_next!21547 () Bool)

(assert (=> b!44817 (= b_next!21529 (or (and b!44821 (= lambda!6237 (x!16595 thiss!6552))) b_next!21547))))

(assert (=> b!44821 true))

(assert (=> b!44821 true))

(declare-fun b_next!21549 () Bool)

(declare-fun lambda!6238 () Int)

(assert (=> b!44817 (= b_next!21501 (or (and b!44821 (= lambda!6238 (evidence!558 thiss!6552))) b_next!21549))))

(declare-fun b_next!21551 () Bool)

(assert (=> b!44820 (= b_next!21507 (or (and b!44821 (= lambda!6238 (evidence!558 x$61!32))) b_next!21551))))

(declare-fun b_next!21553 () Bool)

(assert (=> b!44826 (= b_next!21513 (or (and b!44821 (= lambda!6238 (evidence!558 x$60!32))) b_next!21553))))

(declare-fun bs!17791 () Bool)

(declare-fun b!44824 () Bool)

(assert (= bs!17791 (and b!44824 b!44823)))

(declare-fun lambda!6239 () Int)

(assert (=> bs!17791 (not (= lambda!6239 lambda!6235))))

(declare-fun bs!17792 () Bool)

(assert (= bs!17792 (and b!44824 b!44821)))

(assert (=> bs!17792 (not (= lambda!6239 lambda!6237))))

(assert (=> b!44824 true))

(assert (=> b!44824 true))

(declare-fun b_next!21555 () Bool)

(assert (=> b!44816 (= b_next!21533 (or (and b!44824 (= lambda!6239 (x!16594 x$62!37))) b_next!21555))))

(declare-fun b_next!21557 () Bool)

(assert (=> b!44826 (= b_next!21535 (or (and b!44824 (= lambda!6239 (x!16595 x$60!32))) b_next!21557))))

(declare-fun b_next!21559 () Bool)

(assert (=> b!44820 (= b_next!21537 (or (and b!44824 (= lambda!6239 (x!16595 x$61!32))) b_next!21559))))

(declare-fun b_next!21561 () Bool)

(assert (=> b!44817 (= b_next!21539 (or (and b!44824 (= lambda!6239 (y!1445 thiss!6552))) b_next!21561))))

(declare-fun b_next!21563 () Bool)

(assert (=> b!44826 (= b_next!21541 (or (and b!44824 (= lambda!6239 (y!1445 x$60!32))) b_next!21563))))

(declare-fun b_next!21565 () Bool)

(assert (=> b!44816 (= b_next!21543 (or (and b!44824 (= lambda!6239 (y!1444 x$62!37))) b_next!21565))))

(declare-fun b_next!21567 () Bool)

(assert (=> b!44820 (= b_next!21545 (or (and b!44824 (= lambda!6239 (y!1445 x$61!32))) b_next!21567))))

(declare-fun b_next!21569 () Bool)

(assert (=> b!44817 (= b_next!21547 (or (and b!44824 (= lambda!6239 (x!16595 thiss!6552))) b_next!21569))))

(declare-fun lambda!6240 () Int)

(assert (=> bs!17792 (not (= lambda!6240 lambda!6238))))

(assert (=> b!44824 true))

(assert (=> b!44824 true))

(declare-fun b_next!21571 () Bool)

(assert (=> b!44817 (= b_next!21549 (or (and b!44824 (= lambda!6240 (evidence!558 thiss!6552))) b_next!21571))))

(declare-fun b_next!21573 () Bool)

(assert (=> b!44820 (= b_next!21551 (or (and b!44824 (= lambda!6240 (evidence!558 x$61!32))) b_next!21573))))

(declare-fun b_next!21575 () Bool)

(assert (=> b!44826 (= b_next!21553 (or (and b!44824 (= lambda!6240 (evidence!558 x$60!32))) b_next!21575))))

(declare-fun bs!17793 () Bool)

(declare-fun b!44822 () Bool)

(assert (= bs!17793 (and b!44822 b!44823)))

(declare-fun lambda!6241 () Int)

(assert (=> bs!17793 (not (= lambda!6241 lambda!6235))))

(declare-fun bs!17794 () Bool)

(assert (= bs!17794 (and b!44822 b!44821)))

(assert (=> bs!17794 (not (= lambda!6241 lambda!6237))))

(declare-fun bs!17795 () Bool)

(assert (= bs!17795 (and b!44822 b!44824)))

(assert (=> bs!17795 (not (= lambda!6241 lambda!6239))))

(assert (=> b!44822 true))

(assert (=> b!44822 true))

(declare-fun b_next!21577 () Bool)

(assert (=> b!44816 (= b_next!21555 (or (and b!44822 (= lambda!6241 (x!16594 x$62!37))) b_next!21577))))

(declare-fun b_next!21579 () Bool)

(assert (=> b!44826 (= b_next!21557 (or (and b!44822 (= lambda!6241 (x!16595 x$60!32))) b_next!21579))))

(declare-fun b_next!21581 () Bool)

(assert (=> b!44820 (= b_next!21559 (or (and b!44822 (= lambda!6241 (x!16595 x$61!32))) b_next!21581))))

(declare-fun b_next!21583 () Bool)

(assert (=> b!44817 (= b_next!21561 (or (and b!44822 (= lambda!6241 (y!1445 thiss!6552))) b_next!21583))))

(declare-fun b_next!21585 () Bool)

(assert (=> b!44826 (= b_next!21563 (or (and b!44822 (= lambda!6241 (y!1445 x$60!32))) b_next!21585))))

(declare-fun b_next!21587 () Bool)

(assert (=> b!44816 (= b_next!21565 (or (and b!44822 (= lambda!6241 (y!1444 x$62!37))) b_next!21587))))

(declare-fun b_next!21589 () Bool)

(assert (=> b!44820 (= b_next!21567 (or (and b!44822 (= lambda!6241 (y!1445 x$61!32))) b_next!21589))))

(declare-fun b_next!21591 () Bool)

(assert (=> b!44817 (= b_next!21569 (or (and b!44822 (= lambda!6241 (x!16595 thiss!6552))) b_next!21591))))

(declare-fun lambda!6242 () Int)

(assert (=> bs!17794 (not (= lambda!6242 lambda!6238))))

(assert (=> bs!17795 (not (= lambda!6242 lambda!6240))))

(declare-fun dynLambda!758 (Int) Unit!498)

(assert (=> (and b!44817 b!44822 (= (dynLambda!758 lambda!6242) (dynLambda!758 (evidence!558 thiss!6552)))) (= lambda!6242 (evidence!558 thiss!6552))))

(assert (=> (and b!44820 b!44822 (= (dynLambda!758 lambda!6242) (dynLambda!758 (evidence!558 x$61!32)))) (= lambda!6242 (evidence!558 x$61!32))))

(assert (=> (and b!44826 b!44822 (= (dynLambda!758 lambda!6242) (dynLambda!758 (evidence!558 x$60!32)))) (= lambda!6242 (evidence!558 x$60!32))))

(declare-fun b_next!21593 () Bool)

(assert (=> b!44817 (= b_next!21571 (or (and b!44822 (= lambda!6242 (evidence!558 thiss!6552))) b_next!21593))))

(declare-fun b_next!21595 () Bool)

(assert (=> b!44820 (= b_next!21573 (or (and b!44822 (= lambda!6242 (evidence!558 x$61!32))) b_next!21595))))

(declare-fun b_next!21597 () Bool)

(assert (=> b!44826 (= b_next!21575 (or (and b!44822 (= lambda!6242 (evidence!558 x$60!32))) b_next!21597))))

(declare-fun e!23188 () Bool)

(assert (=> b!44816 (= e!23188 (and tp!10696 tp!10691 tp!10694))))

(declare-fun res!21237 () Bool)

(declare-fun e!23186 () Bool)

(assert (=> start!6004 (=> (not res!21237) (not e!23186))))

(declare-fun n2!401 () Nat!154)

(declare-fun >!2 (Nat!154 Nat!154) Bool)

(assert (=> start!6004 (= res!21237 (>!2 n2!401 Zero!138))))

(assert (=> start!6004 e!23186))

(assert (=> start!6004 true))

(declare-fun inv!754 (RAEqEvidence!210) Bool)

(assert (=> start!6004 (and (inv!754 x$62!37) e!23188)))

(declare-fun e!23187 () Bool)

(declare-fun inv!755 (RAEqEvidence!212) Bool)

(assert (=> start!6004 (and (inv!755 thiss!6552) e!23187)))

(declare-fun e!23189 () Bool)

(assert (=> start!6004 (and (inv!755 x$61!32) e!23189)))

(declare-fun e!23185 () Bool)

(assert (=> start!6004 (and (inv!755 x$60!32) e!23185)))

(assert (=> b!44817 (= e!23187 (and tp!10692 tp!10695 tp!10693))))

(declare-fun b!44818 () Bool)

(declare-fun res!21238 () Bool)

(assert (=> b!44818 (=> (not res!21238) (not e!23186))))

(declare-fun n1!385 () Nat!154)

(assert (=> b!44818 (= res!21238 (is-Succ!135 n1!385))))

(declare-fun b!44819 () Bool)

(declare-fun n2!411 () Nat!154)

(assert (=> b!44819 (= e!23186 (not (>!2 n2!411 Zero!138)))))

(assert (=> b!44820 (= e!23189 (and tp!10697 tp!10698 tp!10699))))

(declare-fun res!21232 () Bool)

(assert (=> b!44821 (=> (not res!21232) (not e!23186))))

(assert (=> b!44821 (= res!21232 (= x$61!32 (RAEqEvidence!213 lambda!6237 lambda!6237 lambda!6238)))))

(declare-fun res!21234 () Bool)

(assert (=> b!44822 (=> (not res!21234) (not e!23186))))

(assert (=> b!44822 (= res!21234 (= thiss!6552 (RAEqEvidence!213 lambda!6241 lambda!6241 lambda!6242)))))

(declare-fun res!21235 () Bool)

(assert (=> b!44823 (=> (not res!21235) (not e!23186))))

(assert (=> b!44823 (= res!21235 (= x$62!37 (RAEqEvidence!211 lambda!6235 lambda!6235 lambda!6236)))))

(declare-fun res!21236 () Bool)

(assert (=> b!44824 (=> (not res!21236) (not e!23186))))

(assert (=> b!44824 (= res!21236 (= x$60!32 (RAEqEvidence!213 lambda!6239 lambda!6239 lambda!6240)))))

(declare-fun b!44825 () Bool)

(declare-fun res!21233 () Bool)

(assert (=> b!44825 (=> (not res!21233) (not e!23186))))

(declare-fun n1!395 () Nat!154)

(assert (=> b!44825 (= res!21233 (and (= n1!395 (n!1286 n1!385)) (= n2!411 n2!401)))))

(assert (=> b!44826 (= e!23185 (and tp!10689 tp!10690 tp!10688))))

(assert (= (and start!6004 res!21237) b!44818))

(assert (= (and b!44818 res!21238) b!44823))

(assert (= (and b!44823 res!21235) b!44821))

(assert (= (and b!44821 res!21232) b!44824))

(assert (= (and b!44824 res!21236) b!44822))

(assert (= (and b!44822 res!21234) b!44825))

(assert (= (and b!44825 res!21233) b!44819))

(assert (= start!6004 b!44816))

(assert (= start!6004 b!44817))

(assert (= start!6004 b!44820))

(assert (= start!6004 b!44826))

(declare-fun m!47911 () Bool)

(assert (=> start!6004 m!47911))

(declare-fun m!47913 () Bool)

(assert (=> start!6004 m!47913))

(declare-fun m!47915 () Bool)

(assert (=> start!6004 m!47915))

(declare-fun m!47917 () Bool)

(assert (=> start!6004 m!47917))

(declare-fun m!47919 () Bool)

(assert (=> start!6004 m!47919))

(declare-fun m!47921 () Bool)

(assert (=> b!44819 m!47921))

(push 1)

(assert b_and!32785)

(assert (not b_next!21593))

(assert b_and!32787)

(assert b_and!32795)

(assert (not start!6004))

(assert (not b_next!21583))

(assert (not b_next!21577))

(assert b_and!32789)

(assert b_and!32791)

(assert b_and!32779)

(assert b_and!32783)

(assert b_and!32799)

(assert (not b_next!21531))

(assert b_and!32801)

(assert (not b_next!21595))

(assert (not b_next!21597))

(assert (not b_next!21581))

(assert (not b_next!21579))

(assert b_and!32781)

(assert (not b!44819))

(assert b_and!32797)

(assert (not b_next!21589))

(assert (not b!44823))

(assert (not b_next!21587))

(assert (not b_next!21585))

(assert b_and!32793)

(assert (not b_next!21591))

(check-sat)

(pop 1)

(push 1)

(assert b_and!32785)

(assert (not b_next!21593))

(assert b_and!32787)

(assert b_and!32795)

(assert (not b_next!21583))

(assert (not b_next!21577))

(assert b_and!32789)

(assert b_and!32791)

(assert b_and!32779)

(assert b_and!32783)

(assert b_and!32799)

(assert (not b_next!21531))

(assert b_and!32801)

(assert (not b_next!21595))

(assert (not b_next!21597))

(assert (not b_next!21581))

(assert (not b_next!21579))

(assert b_and!32781)

(assert b_and!32797)

(assert (not b_next!21589))

(assert (not b_next!21587))

(assert (not b_next!21585))

(assert b_and!32793)

(assert (not b_next!21591))

(check-sat)

(pop 1)

