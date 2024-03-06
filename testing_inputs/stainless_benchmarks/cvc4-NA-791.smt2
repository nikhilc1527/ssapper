; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6000 () Bool)

(assert start!6000)

(declare-fun b!44754 () Bool)

(declare-fun b_free!4377 () Bool)

(declare-fun b_next!21395 () Bool)

(assert (=> b!44754 (= b_free!4377 (not b_next!21395))))

(declare-fun tp!10634 () Bool)

(declare-fun b_and!32749 () Bool)

(assert (=> b!44754 (= tp!10634 b_and!32749)))

(declare-fun b_free!4379 () Bool)

(declare-fun b_next!21397 () Bool)

(assert (=> b!44754 (= b_free!4379 (not b_next!21397))))

(declare-fun tp!10636 () Bool)

(declare-fun b_and!32751 () Bool)

(assert (=> b!44754 (= tp!10636 b_and!32751)))

(declare-fun b_free!4381 () Bool)

(declare-fun b_next!21399 () Bool)

(assert (=> b!44754 (= b_free!4381 (not b_next!21399))))

(declare-fun tp!10632 () Bool)

(declare-fun b_and!32753 () Bool)

(assert (=> b!44754 (= tp!10632 b_and!32753)))

(declare-fun b!44748 () Bool)

(declare-fun b_free!4383 () Bool)

(declare-fun b_next!21401 () Bool)

(assert (=> b!44748 (= b_free!4383 (not b_next!21401))))

(declare-fun tp!10635 () Bool)

(declare-fun b_and!32755 () Bool)

(assert (=> b!44748 (= tp!10635 b_and!32755)))

(declare-fun b_free!4385 () Bool)

(declare-fun b_next!21403 () Bool)

(assert (=> b!44748 (= b_free!4385 (not b_next!21403))))

(declare-fun tp!10631 () Bool)

(declare-fun b_and!32757 () Bool)

(assert (=> b!44748 (= tp!10631 b_and!32757)))

(declare-fun b_free!4387 () Bool)

(declare-fun b_next!21405 () Bool)

(assert (=> b!44748 (= b_free!4387 (not b_next!21405))))

(declare-fun tp!10633 () Bool)

(declare-fun b_and!32759 () Bool)

(assert (=> b!44748 (= tp!10633 b_and!32759)))

(declare-fun b!44751 () Bool)

(assert (=> b!44751 true))

(assert (=> b!44751 true))

(declare-datatypes () ((Nat!152 (Zero!136) (Succ!133 (n!1284 Nat!152)))))

(declare-datatypes () ((RAEqEvidence!202 (RAEqEvidence!203 (x!16499 Int) (y!1440 Int) (evidence!553 Int)))))

(declare-fun x$62!37 () RAEqEvidence!202)

(declare-fun b_next!21407 () Bool)

(declare-fun lambda!6183 () Int)

(assert (=> b!44754 (= b_next!21395 (or (and b!44751 (= lambda!6183 (x!16499 x$62!37))) b_next!21407))))

(declare-fun b_next!21409 () Bool)

(assert (=> b!44754 (= b_next!21397 (or (and b!44751 (= lambda!6183 (y!1440 x$62!37))) b_next!21409))))

(declare-datatypes () ((Unit!494 (Unit!495))))

(declare-datatypes () ((RAEqEvidence!204 (RAEqEvidence!205 (x!16500 Int) (y!1441 Int) (evidence!554 Int)))))

(declare-fun x$61!32 () RAEqEvidence!204)

(declare-fun b_next!21411 () Bool)

(assert (=> b!44748 (= b_next!21401 (or (and b!44751 (= lambda!6183 (x!16500 x$61!32))) b_next!21411))))

(declare-fun b_next!21413 () Bool)

(assert (=> b!44748 (= b_next!21403 (or (and b!44751 (= lambda!6183 (y!1441 x$61!32))) b_next!21413))))

(declare-fun m!47879 () Bool)

(assert (=> b!44751 m!47879))

(declare-fun lambda!6184 () Int)

(declare-fun dynLambda!755 (Int) Bool)

(assert (=> (and b!44754 b!44751 (= (dynLambda!755 lambda!6184) (dynLambda!755 (evidence!553 x$62!37)))) (= lambda!6184 (evidence!553 x$62!37))))

(declare-fun b_next!21415 () Bool)

(assert (=> b!44754 (= b_next!21399 (or (and b!44751 (= lambda!6184 (evidence!553 x$62!37))) b_next!21415))))

(declare-fun bs!17784 () Bool)

(declare-fun b!44752 () Bool)

(assert (= bs!17784 (and b!44752 b!44751)))

(declare-fun lambda!6185 () Int)

(assert (=> bs!17784 (not (= lambda!6185 lambda!6183))))

(assert (=> b!44752 true))

(assert (=> b!44752 true))

(declare-fun b_next!21417 () Bool)

(assert (=> b!44754 (= b_next!21407 (or (and b!44752 (= lambda!6185 (x!16499 x$62!37))) b_next!21417))))

(declare-fun b_next!21419 () Bool)

(assert (=> b!44754 (= b_next!21409 (or (and b!44752 (= lambda!6185 (y!1440 x$62!37))) b_next!21419))))

(declare-fun b_next!21421 () Bool)

(assert (=> b!44748 (= b_next!21411 (or (and b!44752 (= lambda!6185 (x!16500 x$61!32))) b_next!21421))))

(declare-fun b_next!21423 () Bool)

(assert (=> b!44748 (= b_next!21413 (or (and b!44752 (= lambda!6185 (y!1441 x$61!32))) b_next!21423))))

(assert (=> b!44752 true))

(assert (=> b!44752 true))

(declare-fun lambda!6186 () Int)

(declare-fun b_next!21425 () Bool)

(assert (=> b!44748 (= b_next!21405 (or (and b!44752 (= lambda!6186 (evidence!554 x$61!32))) b_next!21425))))

(declare-fun e!23162 () Bool)

(assert (=> b!44748 (= e!23162 (and tp!10635 tp!10631 tp!10633))))

(declare-fun b!44749 () Bool)

(declare-fun e!23160 () Bool)

(declare-fun that!1588 () Nat!152)

(declare-fun >!2 (Nat!152 Nat!152) Bool)

(assert (=> b!44749 (= e!23160 (not (>!2 that!1588 Zero!136)))))

(declare-fun b!44750 () Bool)

(declare-fun res!21191 () Bool)

(assert (=> b!44750 (=> (not res!21191) (not e!23160))))

(declare-fun n2!401 () Nat!152)

(assert (=> b!44750 (= res!21191 (= that!1588 n2!401))))

(declare-fun res!21196 () Bool)

(assert (=> b!44751 (=> (not res!21196) (not e!23160))))

(assert (=> b!44751 (= res!21196 (= x$62!37 (RAEqEvidence!203 lambda!6183 lambda!6183 lambda!6184)))))

(declare-fun res!21193 () Bool)

(assert (=> b!44752 (=> (not res!21193) (not e!23160))))

(assert (=> b!44752 (= res!21193 (= x$61!32 (RAEqEvidence!205 lambda!6185 lambda!6185 lambda!6186)))))

(declare-fun b!44753 () Bool)

(declare-fun res!21195 () Bool)

(assert (=> b!44753 (=> (not res!21195) (not e!23160))))

(declare-fun n1!385 () Nat!152)

(declare-fun thiss!6542 () Nat!152)

(declare-fun -!4 (Nat!152 Nat!152) Nat!152)

(declare-fun +!5 (Nat!152 Nat!152) Nat!152)

(declare-fun *!4 (Nat!152 Nat!152) Nat!152)

(assert (=> b!44753 (= res!21195 (= thiss!6542 (-!4 (+!5 (*!4 (n!1284 n1!385) n2!401) n2!401) n2!401)))))

(declare-fun e!23161 () Bool)

(assert (=> b!44754 (= e!23161 (and tp!10634 tp!10636 tp!10632))))

(declare-fun res!21194 () Bool)

(assert (=> start!6000 (=> (not res!21194) (not e!23160))))

(assert (=> start!6000 (= res!21194 (>!2 n2!401 Zero!136))))

(assert (=> start!6000 e!23160))

(assert (=> start!6000 true))

(declare-fun inv!750 (RAEqEvidence!202) Bool)

(assert (=> start!6000 (and (inv!750 x$62!37) e!23161)))

(declare-fun inv!751 (RAEqEvidence!204) Bool)

(assert (=> start!6000 (and (inv!751 x$61!32) e!23162)))

(declare-fun b!44755 () Bool)

(declare-fun res!21192 () Bool)

(assert (=> b!44755 (=> (not res!21192) (not e!23160))))

(assert (=> b!44755 (= res!21192 (is-Succ!133 n1!385))))

(assert (= (and start!6000 res!21194) b!44755))

(assert (= (and b!44755 res!21192) b!44751))

(assert (= (and b!44751 res!21196) b!44752))

(assert (= (and b!44752 res!21193) b!44753))

(assert (= (and b!44753 res!21195) b!44750))

(assert (= (and b!44750 res!21191) b!44749))

(assert (= start!6000 b!44754))

(assert (= start!6000 b!44748))

(declare-fun m!47881 () Bool)

(assert (=> b!44749 m!47881))

(declare-fun m!47883 () Bool)

(assert (=> b!44753 m!47883))

(assert (=> b!44753 m!47883))

(declare-fun m!47885 () Bool)

(assert (=> b!44753 m!47885))

(assert (=> b!44753 m!47885))

(declare-fun m!47887 () Bool)

(assert (=> b!44753 m!47887))

(declare-fun m!47889 () Bool)

(assert (=> start!6000 m!47889))

(declare-fun m!47891 () Bool)

(assert (=> start!6000 m!47891))

(declare-fun m!47893 () Bool)

(assert (=> start!6000 m!47893))

(push 1)

(assert b_and!32759)

(assert (not b_next!21419))

(assert (not b!44751))

(assert (not b_next!21425))

(assert (not start!6000))

(assert b_and!32753)

(assert (not b_next!21423))

(assert b_and!32755)

(assert b_and!32749)

(assert (not b_next!21417))

(assert b_and!32757)

(assert (not b_next!21421))

(assert (not b_next!21415))

(assert (not b!44749))

(assert (not b!44753))

(assert b_and!32751)

(check-sat)

(pop 1)

(push 1)

(assert b_and!32759)

(assert (not b_next!21419))

(assert (not b_next!21425))

(assert b_and!32753)

(assert (not b_next!21423))

(assert b_and!32755)

(assert b_and!32749)

(assert (not b_next!21417))

(assert b_and!32757)

(assert (not b_next!21421))

(assert (not b_next!21415))

(assert b_and!32751)

(check-sat)

(pop 1)

