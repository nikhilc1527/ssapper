; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10076 () Bool)

(assert start!10076)

(declare-fun b_free!7313 () Bool)

(declare-fun b_next!39089 () Bool)

(assert (=> start!10076 (= b_free!7313 (not b_next!39089))))

(declare-fun tp!16870 () Bool)

(declare-fun b_and!58735 () Bool)

(assert (=> start!10076 (= tp!16870 b_and!58735)))

(declare-fun res!35512 () Bool)

(declare-fun e!39308 () Bool)

(assert (=> start!10076 (=> (not res!35512) (not e!39308))))

(declare-datatypes () ((IList!6 (Cons!585 (head!1006 Int) (tail!1027 IList!6)) (Nil!587))))

(declare-fun l!1364 () IList!6)

(assert (=> start!10076 (= res!35512 (not (is-Cons!585 l!1364)))))

(assert (=> start!10076 e!39308))

(assert (=> start!10076 true))

(assert (=> start!10076 tp!16870))

(declare-fun b!72732 () Bool)

(declare-fun res!35514 () Bool)

(assert (=> b!72732 (=> (not res!35514) (not e!39308))))

(declare-datatypes () ((tuple2!388 (tuple2!389 (_1!229 IList!6) (_2!229 IList!6)))))

(declare-fun x$2!410 () tuple2!388)

(declare-fun p!691 () Int)

(declare-fun partition!1 (IList!6 Int) tuple2!388)

(assert (=> b!72732 (= res!35514 (= x$2!410 (partition!1 l!1364 p!691)))))

(declare-fun b!72733 () Bool)

(declare-fun res!35513 () Bool)

(assert (=> b!72733 (=> (not res!35513) (not e!39308))))

(declare-fun l2!400 () IList!6)

(declare-fun l1!407 () IList!6)

(assert (=> b!72733 (= res!35513 (and (= l1!407 (_1!229 x$2!410)) (= l2!400 (_2!229 x$2!410))))))

(declare-fun b!72734 () Bool)

(declare-fun x!28674 () Int)

(declare-fun count!1 (IList!6 Int) Int)

(assert (=> b!72734 (= e!39308 (not (= (count!1 l!1364 x!28674) (+ (count!1 l1!407 x!28674) (count!1 l2!400 x!28674)))))))

(assert (= (and start!10076 res!35512) b!72732))

(assert (= (and b!72732 res!35514) b!72733))

(assert (= (and b!72733 res!35513) b!72734))

(declare-fun m!72594 () Bool)

(assert (=> b!72732 m!72594))

(declare-fun m!72596 () Bool)

(assert (=> b!72734 m!72596))

(declare-fun m!72598 () Bool)

(assert (=> b!72734 m!72598))

(declare-fun m!72600 () Bool)

(assert (=> b!72734 m!72600))

(push 1)

(assert (not b!72734))

(assert (not b!72732))

(assert b_and!58735)

(assert (not b_next!39089))

(check-sat)

(pop 1)

(push 1)

(assert b_and!58735)

(assert (not b_next!39089))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54673 () Bool)

(declare-fun c!17540 () Bool)

(assert (=> d!54673 (= c!17540 (is-Nil!587 l!1364))))

(declare-fun e!39311 () Int)

(assert (=> d!54673 (= (count!1 l!1364 x!28674) e!39311)))

(declare-fun b!72739 () Bool)

(assert (=> b!72739 (= e!39311 0)))

(declare-fun b!72740 () Bool)

(assert (=> b!72740 (= e!39311 (+ (ite (= (head!1006 l!1364) x!28674) 1 0) (count!1 (tail!1027 l!1364) x!28674)))))

(assert (= (and d!54673 c!17540) b!72739))

(assert (= (and d!54673 (not c!17540)) b!72740))

(declare-fun m!72602 () Bool)

(assert (=> b!72740 m!72602))

(assert (=> b!72734 d!54673))

(declare-fun d!54675 () Bool)

(declare-fun c!17541 () Bool)

(assert (=> d!54675 (= c!17541 (is-Nil!587 l1!407))))

(declare-fun e!39312 () Int)

(assert (=> d!54675 (= (count!1 l1!407 x!28674) e!39312)))

(declare-fun b!72741 () Bool)

(assert (=> b!72741 (= e!39312 0)))

(declare-fun b!72742 () Bool)

(assert (=> b!72742 (= e!39312 (+ (ite (= (head!1006 l1!407) x!28674) 1 0) (count!1 (tail!1027 l1!407) x!28674)))))

(assert (= (and d!54675 c!17541) b!72741))

(assert (= (and d!54675 (not c!17541)) b!72742))

(declare-fun m!72604 () Bool)

(assert (=> b!72742 m!72604))

(assert (=> b!72734 d!54675))

(declare-fun d!54677 () Bool)

(declare-fun c!17542 () Bool)

(assert (=> d!54677 (= c!17542 (is-Nil!587 l2!400))))

(declare-fun e!39313 () Int)

(assert (=> d!54677 (= (count!1 l2!400 x!28674) e!39313)))

(declare-fun b!72743 () Bool)

(assert (=> b!72743 (= e!39313 0)))

(declare-fun b!72744 () Bool)

(assert (=> b!72744 (= e!39313 (+ (ite (= (head!1006 l2!400) x!28674) 1 0) (count!1 (tail!1027 l2!400) x!28674)))))

(assert (= (and d!54677 c!17542) b!72743))

(assert (= (and d!54677 (not c!17542)) b!72744))

(declare-fun m!72606 () Bool)

(assert (=> b!72744 m!72606))

(assert (=> b!72734 d!54677))

(declare-fun b!72758 () Bool)

(assert (=> b!72758 true))

(declare-fun order!465 () Int)

(declare-fun lambda!9184 () Int)

(declare-fun dynLambda!957 (Int Int) Int)

(assert (=> b!72758 (< (dynLambda!957 order!465 p!691) (dynLambda!957 order!465 lambda!9184))))

(declare-fun b!72755 () Bool)

(declare-fun e!39321 () tuple2!388)

(declare-fun e!39322 () tuple2!388)

(assert (=> b!72755 (= e!39321 e!39322)))

(declare-fun c!17548 () Bool)

(declare-fun dynLambda!958 (Int Int) Bool)

(assert (=> b!72755 (= c!17548 (dynLambda!958 p!691 (head!1006 l!1364)))))

(declare-fun lt!15437 () IList!6)

(declare-fun lt!15436 () tuple2!388)

(assert (=> b!72755 (= lt!15437 (_2!229 lt!15436))))

(declare-fun lt!15434 () IList!6)

(declare-fun lt!15435 () tuple2!388)

(assert (=> b!72755 (= lt!15434 (_1!229 lt!15435))))

(assert (=> b!72755 (= lt!15436 (partition!1 (tail!1027 l!1364) p!691))))

(assert (=> b!72755 (= lt!15435 (partition!1 (tail!1027 l!1364) p!691))))

(declare-fun b!72756 () Bool)

(assert (=> b!72756 (= e!39322 (tuple2!389 lt!15434 (Cons!585 (head!1006 l!1364) lt!15437)))))

(declare-fun b!72757 () Bool)

(assert (=> b!72757 (= e!39322 (tuple2!389 (Cons!585 (head!1006 l!1364) lt!15434) lt!15437))))

(declare-fun lt!15438 () tuple2!388)

(declare-fun e!39320 () Bool)

(declare-fun filter!4 (IList!6 Int) IList!6)

(assert (=> b!72758 (= e!39320 (= (_2!229 lt!15438) (filter!4 l!1364 lambda!9184)))))

(declare-fun b!72759 () Bool)

(assert (=> b!72759 (= e!39321 (tuple2!389 Nil!587 Nil!587))))

(declare-fun d!54679 () Bool)

(assert (=> d!54679 e!39320))

(declare-fun res!35518 () Bool)

(assert (=> d!54679 (=> (not res!35518) (not e!39320))))

(assert (=> d!54679 (= res!35518 (= (_1!229 lt!15438) (filter!4 l!1364 p!691)))))

(assert (=> d!54679 (= lt!15438 e!39321)))

(declare-fun c!17547 () Bool)

(assert (=> d!54679 (= c!17547 (is-Nil!587 l!1364))))

(assert (=> d!54679 (= (partition!1 l!1364 p!691) lt!15438)))

(assert (= (and b!72755 c!17548) b!72757))

(assert (= (and b!72755 (not c!17548)) b!72756))

(assert (= (and d!54679 c!17547) b!72759))

(assert (= (and d!54679 (not c!17547)) b!72755))

(assert (= (and d!54679 res!35518) b!72758))

(declare-fun b_lambda!15761 () Bool)

(assert (=> (not b_lambda!15761) (not b!72755)))

(declare-fun t!47515 () Bool)

(declare-fun tb!46141 () Bool)

(assert (=> (and start!10076 (= p!691 p!691) t!47515) tb!46141))

(declare-fun result!46569 () Bool)

(assert (=> tb!46141 (= result!46569 true)))

(assert (=> b!72755 t!47515))

(declare-fun b_and!58737 () Bool)

(assert (= b_and!58735 (and (=> t!47515 result!46569) b_and!58737)))

(declare-fun m!72608 () Bool)

(assert (=> b!72755 m!72608))

(declare-fun m!72610 () Bool)

(assert (=> b!72755 m!72610))

(declare-fun m!72612 () Bool)

(assert (=> b!72758 m!72612))

(declare-fun m!72614 () Bool)

(assert (=> d!54679 m!72614))

(assert (=> b!72732 d!54679))

(declare-fun b_lambda!15763 () Bool)

(assert (= b_lambda!15761 (or (and start!10076 b_free!7313) b_lambda!15763)))

(push 1)

(assert (not b!72740))

(assert (not b!72744))

(assert (not b_lambda!15763))

(assert (not d!54679))

(assert (not b!72742))

(assert (not b_next!39089))

(assert (not b!72755))

(assert (not b!72758))

(assert b_and!58737)

(check-sat)

(pop 1)

(push 1)

(assert b_and!58737)

(assert (not b_next!39089))

(check-sat)

(pop 1)

