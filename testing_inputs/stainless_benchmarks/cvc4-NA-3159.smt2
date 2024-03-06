; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15476 () Bool)

(assert start!15476)

(declare-fun b!95083 () Bool)

(assert (=> b!95083 true))

(declare-fun bs!43345 () Bool)

(declare-fun b!95076 () Bool)

(assert (= bs!43345 (and b!95076 b!95083)))

(declare-fun lambda!11248 () Int)

(declare-fun lambda!11246 () Int)

(assert (=> bs!43345 (not (= lambda!11248 lambda!11246))))

(declare-fun b!95073 () Bool)

(assert (=> b!95073 true))

(declare-fun res!49488 () Bool)

(declare-fun e!51832 () Bool)

(assert (=> b!95073 (=> (not res!49488) (not e!51832))))

(declare-fun lambda!11244 () Int)

(declare-datatypes () ((P!92 (Charlie!92) (Alice!92) (Bob!92))))

(declare-datatypes () ((tuple2!518 (tuple2!519 (_1!298 P!92) (_2!298 P!92)))))

(declare-datatypes () ((tuple2!520 (tuple2!521 (_1!299 tuple2!518) (_2!299 Int)))))

(declare-datatypes () ((List!893 (Cons!831 (h!7602 tuple2!520) (t!55915 List!893)) (Nil!833))))

(declare-fun transfers!5 () List!893)

(declare-datatypes () ((Option!766 (None!738) (Some!737 (v!3213 Int)))))

(declare-fun qpa!1 () Option!766)

(declare-fun lambda!11249 () Int)

(declare-datatypes () ((Option!767 (None!739) (Some!738 (v!3214 tuple2!520)))))

(declare-fun map!727 (Option!767 Int) Option!766)

(declare-fun find!7 (List!893 Int) Option!767)

(assert (=> b!95073 (= res!49488 (= qpa!1 (map!727 (find!7 transfers!5 lambda!11249) lambda!11244)))))

(declare-fun res!49485 () Bool)

(assert (=> start!15476 (=> (not res!49485) (not e!51832))))

(declare-fun sum!7 () Int)

(declare-fun lambda!11245 () Int)

(declare-datatypes () ((List!894 (Cons!832 (h!7603 Int) (t!55916 List!894)) (Nil!834))))

(declare-fun foldLeft!10 (List!894 Int Int) Int)

(declare-fun map!728 (List!893 Int) List!894)

(assert (=> start!15476 (= res!49485 (= sum!7 (foldLeft!10 (map!728 transfers!5 lambda!11244) 0 lambda!11245)))))

(assert (=> start!15476 e!51832))

(assert (=> start!15476 true))

(declare-fun b!95074 () Bool)

(declare-fun e!51831 () Bool)

(declare-fun x0$2!1 () tuple2!520)

(assert (=> b!95074 (= e!51831 (= (_2!299 x0$2!1) 0))))

(declare-fun b!95075 () Bool)

(declare-fun res!49480 () Bool)

(assert (=> b!95075 (=> (not res!49480) (not e!51832))))

(assert (=> b!95075 (= res!49480 (= sum!7 2000))))

(declare-fun res!49486 () Bool)

(assert (=> b!95076 (=> (not res!49486) (not e!51832))))

(declare-fun lambda!11247 () Int)

(declare-datatypes () ((List!895 (Cons!833 (h!7604 tuple2!518) (t!55917 List!895)) (Nil!835))))

(declare-fun forall!85 (List!895 Int) Bool)

(declare-fun map!729 (List!893 Int) List!895)

(assert (=> b!95076 (= res!49486 (forall!85 (map!729 transfers!5 lambda!11247) lambda!11248))))

(declare-fun b!95077 () Bool)

(declare-fun res!49481 () Bool)

(assert (=> b!95077 (=> (not res!49481) (not e!51832))))

(assert (=> b!95077 (= res!49481 e!51831)))

(declare-fun res!49479 () Bool)

(assert (=> b!95077 (=> res!49479 e!51831)))

(declare-fun get!1255 (Option!766) Int)

(assert (=> b!95077 (= res!49479 (= (get!1255 qpa!1) 0))))

(declare-fun b!95078 () Bool)

(declare-fun res!49478 () Bool)

(assert (=> b!95078 (=> (not res!49478) (not e!51832))))

(declare-fun thiss!14251 () List!893)

(assert (=> b!95078 (= res!49478 (= thiss!14251 transfers!5))))

(declare-fun b!95079 () Bool)

(declare-fun res!49487 () Bool)

(assert (=> b!95079 (=> (not res!49487) (not e!51832))))

(declare-fun length!22 (List!893) Int)

(declare-fun length!23 (List!895) Int)

(assert (=> b!95079 (= res!49487 (= (length!22 transfers!5) (length!23 (Cons!833 (tuple2!519 Alice!92 Charlie!92) (Cons!833 (tuple2!519 Charlie!92 Alice!92) Nil!835)))))))

(declare-fun b!95080 () Bool)

(declare-fun res!49482 () Bool)

(assert (=> b!95080 (=> (not res!49482) (not e!51832))))

(declare-fun isDefined!26 (Option!766) Bool)

(assert (=> b!95080 (= res!49482 (isDefined!26 qpa!1))))

(declare-fun b!95081 () Bool)

(declare-fun thiss!14260 () Option!766)

(assert (=> b!95081 (= e!51832 (not (isDefined!26 thiss!14260)))))

(declare-fun b!95082 () Bool)

(declare-fun res!49483 () Bool)

(assert (=> b!95082 (=> (not res!49483) (not e!51832))))

(assert (=> b!95082 (= res!49483 (and (<= (_2!299 x0$2!1) 0) (= thiss!14260 qpa!1)))))

(declare-fun res!49484 () Bool)

(assert (=> b!95083 (=> (not res!49484) (not e!51832))))

(assert (=> b!95083 (= res!49484 (forall!85 (Cons!833 (tuple2!519 Alice!92 Charlie!92) (Cons!833 (tuple2!519 Charlie!92 Alice!92) Nil!835)) lambda!11246))))

(assert (= (and start!15476 res!49485) b!95079))

(assert (= (and b!95079 res!49487) b!95083))

(assert (= (and b!95083 res!49484) b!95075))

(assert (= (and b!95075 res!49480) b!95076))

(assert (= (and b!95076 res!49486) b!95078))

(assert (= (and b!95078 res!49478) b!95073))

(assert (= (and b!95073 res!49488) b!95080))

(assert (= (and b!95080 res!49482) b!95077))

(assert (= (and b!95077 (not res!49479)) b!95074))

(assert (= (and b!95077 res!49481) b!95082))

(assert (= (and b!95082 res!49483) b!95081))

(declare-fun m!90265 () Bool)

(assert (=> start!15476 m!90265))

(assert (=> start!15476 m!90265))

(declare-fun m!90267 () Bool)

(assert (=> start!15476 m!90267))

(declare-fun m!90269 () Bool)

(assert (=> b!95079 m!90269))

(declare-fun m!90271 () Bool)

(assert (=> b!95079 m!90271))

(declare-fun m!90273 () Bool)

(assert (=> b!95076 m!90273))

(assert (=> b!95076 m!90273))

(declare-fun m!90275 () Bool)

(assert (=> b!95076 m!90275))

(declare-fun m!90277 () Bool)

(assert (=> b!95080 m!90277))

(declare-fun m!90279 () Bool)

(assert (=> b!95077 m!90279))

(declare-fun m!90281 () Bool)

(assert (=> b!95073 m!90281))

(assert (=> b!95073 m!90281))

(declare-fun m!90283 () Bool)

(assert (=> b!95073 m!90283))

(declare-fun m!90285 () Bool)

(assert (=> b!95083 m!90285))

(declare-fun m!90287 () Bool)

(assert (=> b!95081 m!90287))

(push 1)

(assert (not b!95076))

(assert (not b!95081))

(assert (not b!95073))

(assert (not b!95079))

(assert (not start!15476))

(assert (not b!95080))

(assert (not b!95083))

(assert (not b!95077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

