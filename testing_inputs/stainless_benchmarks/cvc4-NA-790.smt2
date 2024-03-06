; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5998 () Bool)

(assert start!5998)

(declare-fun b!44724 () Bool)

(declare-fun b_free!4371 () Bool)

(declare-fun b_next!21383 () Bool)

(assert (=> b!44724 (= b_free!4371 (not b_next!21383))))

(declare-fun tp!10616 () Bool)

(declare-fun b_and!32743 () Bool)

(assert (=> b!44724 (= tp!10616 b_and!32743)))

(declare-fun b_free!4373 () Bool)

(declare-fun b_next!21385 () Bool)

(assert (=> b!44724 (= b_free!4373 (not b_next!21385))))

(declare-fun tp!10618 () Bool)

(declare-fun b_and!32745 () Bool)

(assert (=> b!44724 (= tp!10618 b_and!32745)))

(declare-fun b_free!4375 () Bool)

(declare-fun b_next!21387 () Bool)

(assert (=> b!44724 (= b_free!4375 (not b_next!21387))))

(declare-fun tp!10617 () Bool)

(declare-fun b_and!32747 () Bool)

(assert (=> b!44724 (= tp!10617 b_and!32747)))

(declare-fun b!44729 () Bool)

(assert (=> b!44729 true))

(assert (=> b!44729 true))

(declare-fun b_next!21389 () Bool)

(declare-datatypes () ((Nat!151 (Zero!135) (Succ!132 (n!1283 Nat!151)))))

(declare-datatypes () ((RAEqEvidence!200 (RAEqEvidence!201 (x!16469 Int) (y!1439 Int) (evidence!552 Int)))))

(declare-fun x$62!37 () RAEqEvidence!200)

(declare-fun lambda!6169 () Int)

(assert (=> b!44724 (= b_next!21383 (or (and b!44729 (= lambda!6169 (x!16469 x$62!37))) b_next!21389))))

(declare-fun b_next!21391 () Bool)

(assert (=> b!44724 (= b_next!21385 (or (and b!44729 (= lambda!6169 (y!1439 x$62!37))) b_next!21391))))

(declare-fun m!47867 () Bool)

(assert (=> b!44729 m!47867))

(declare-fun lambda!6170 () Int)

(declare-fun dynLambda!754 (Int) Bool)

(assert (=> (and b!44724 b!44729 (= (dynLambda!754 lambda!6170) (dynLambda!754 (evidence!552 x$62!37)))) (= lambda!6170 (evidence!552 x$62!37))))

(declare-fun b_next!21393 () Bool)

(assert (=> b!44724 (= b_next!21387 (or (and b!44729 (= lambda!6170 (evidence!552 x$62!37))) b_next!21393))))

(declare-fun e!23153 () Bool)

(assert (=> b!44724 (= e!23153 (and tp!10616 tp!10618 tp!10617))))

(declare-fun b!44725 () Bool)

(declare-fun e!23152 () Bool)

(declare-fun that!1574 () Nat!151)

(declare-fun >!2 (Nat!151 Nat!151) Bool)

(assert (=> b!44725 (= e!23152 (not (>!2 that!1574 Zero!135)))))

(declare-fun b!44726 () Bool)

(declare-fun res!21176 () Bool)

(assert (=> b!44726 (=> (not res!21176) (not e!23152))))

(declare-fun n2!401 () Nat!151)

(assert (=> b!44726 (= res!21176 (= that!1574 n2!401))))

(declare-fun res!21174 () Bool)

(assert (=> start!5998 (=> (not res!21174) (not e!23152))))

(assert (=> start!5998 (= res!21174 (>!2 n2!401 Zero!135))))

(assert (=> start!5998 e!23152))

(assert (=> start!5998 true))

(declare-fun inv!749 (RAEqEvidence!200) Bool)

(assert (=> start!5998 (and (inv!749 x$62!37) e!23153)))

(declare-fun b!44727 () Bool)

(declare-fun res!21175 () Bool)

(assert (=> b!44727 (=> (not res!21175) (not e!23152))))

(declare-fun n1!385 () Nat!151)

(assert (=> b!44727 (= res!21175 (is-Succ!132 n1!385))))

(declare-fun b!44728 () Bool)

(declare-fun res!21178 () Bool)

(assert (=> b!44728 (=> (not res!21178) (not e!23152))))

(declare-fun thiss!6516 () Nat!151)

(declare-fun +!5 (Nat!151 Nat!151) Nat!151)

(declare-fun *!4 (Nat!151 Nat!151) Nat!151)

(assert (=> b!44728 (= res!21178 (= thiss!6516 (+!5 (*!4 (n!1283 n1!385) n2!401) n2!401)))))

(declare-fun res!21177 () Bool)

(assert (=> b!44729 (=> (not res!21177) (not e!23152))))

(assert (=> b!44729 (= res!21177 (= x$62!37 (RAEqEvidence!201 lambda!6169 lambda!6169 lambda!6170)))))

(assert (= (and start!5998 res!21174) b!44727))

(assert (= (and b!44727 res!21175) b!44729))

(assert (= (and b!44729 res!21177) b!44728))

(assert (= (and b!44728 res!21178) b!44726))

(assert (= (and b!44726 res!21176) b!44725))

(assert (= start!5998 b!44724))

(declare-fun m!47869 () Bool)

(assert (=> b!44725 m!47869))

(declare-fun m!47871 () Bool)

(assert (=> start!5998 m!47871))

(declare-fun m!47873 () Bool)

(assert (=> start!5998 m!47873))

(declare-fun m!47875 () Bool)

(assert (=> b!44728 m!47875))

(assert (=> b!44728 m!47875))

(declare-fun m!47877 () Bool)

(assert (=> b!44728 m!47877))

(push 1)

(assert (not b!44728))

(assert (not b!44725))

(assert (not start!5998))

(assert (not b!44729))

(assert (not b_next!21393))

(assert b_and!32743)

(assert (not b_next!21391))

(assert b_and!32745)

(assert b_and!32747)

(assert (not b_next!21389))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!21393))

(assert b_and!32743)

(assert (not b_next!21391))

(assert b_and!32745)

(assert b_and!32747)

(assert (not b_next!21389))

(check-sat)

(pop 1)

