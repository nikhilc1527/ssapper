; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15474 () Bool)

(assert start!15474)

(declare-fun b!95035 () Bool)

(assert (=> b!95035 true))

(declare-fun bs!43343 () Bool)

(declare-fun b!95030 () Bool)

(assert (= bs!43343 (and b!95030 b!95035)))

(declare-fun lambda!11226 () Int)

(declare-fun lambda!11224 () Int)

(assert (=> bs!43343 (not (= lambda!11226 lambda!11224))))

(declare-fun b!95034 () Bool)

(assert (=> b!95034 true))

(declare-fun res!49447 () Bool)

(declare-fun e!51826 () Bool)

(assert (=> b!95030 (=> (not res!49447) (not e!51826))))

(declare-datatypes () ((P!91 (Charlie!91) (Alice!91) (Bob!91))))

(declare-datatypes () ((tuple2!514 (tuple2!515 (_1!296 P!91) (_2!296 P!91)))))

(declare-datatypes () ((tuple2!516 (tuple2!517 (_1!297 tuple2!514) (_2!297 Int)))))

(declare-datatypes () ((List!890 (Cons!828 (h!7519 tuple2!516) (t!55832 List!890)) (Nil!830))))

(declare-fun transfers!5 () List!890)

(declare-fun lambda!11225 () Int)

(declare-datatypes () ((List!891 (Cons!829 (h!7520 tuple2!514) (t!55833 List!891)) (Nil!831))))

(declare-fun forall!84 (List!891 Int) Bool)

(declare-fun map!724 (List!890 Int) List!891)

(assert (=> b!95030 (= res!49447 (forall!84 (map!724 transfers!5 lambda!11225) lambda!11226))))

(declare-fun b!95031 () Bool)

(declare-fun res!49453 () Bool)

(assert (=> b!95031 (=> (not res!49453) (not e!51826))))

(declare-fun length!20 (List!890) Int)

(declare-fun length!21 (List!891) Int)

(assert (=> b!95031 (= res!49453 (= (length!20 transfers!5) (length!21 (Cons!829 (tuple2!515 Alice!91 Charlie!91) (Cons!829 (tuple2!515 Charlie!91 Alice!91) Nil!831)))))))

(declare-fun b!95032 () Bool)

(declare-datatypes () ((Option!764 (None!736) (Some!735 (v!3203 Int)))))

(declare-fun thiss!14258 () Option!764)

(declare-fun isDefined!25 (Option!764) Bool)

(assert (=> b!95032 (= e!51826 (not (isDefined!25 thiss!14258)))))

(declare-fun res!49450 () Bool)

(assert (=> start!15474 (=> (not res!49450) (not e!51826))))

(declare-fun lambda!11222 () Int)

(declare-fun lambda!11223 () Int)

(declare-fun sum!7 () Int)

(declare-datatypes () ((List!892 (Cons!830 (h!7521 Int) (t!55834 List!892)) (Nil!832))))

(declare-fun foldLeft!9 (List!892 Int Int) Int)

(declare-fun map!725 (List!890 Int) List!892)

(assert (=> start!15474 (= res!49450 (= sum!7 (foldLeft!9 (map!725 transfers!5 lambda!11222) 0 lambda!11223)))))

(assert (=> start!15474 e!51826))

(assert (=> start!15474 true))

(declare-fun b!95033 () Bool)

(declare-fun res!49452 () Bool)

(assert (=> b!95033 (=> (not res!49452) (not e!51826))))

(declare-fun qpa!1 () Option!764)

(assert (=> b!95033 (= res!49452 (isDefined!25 qpa!1))))

(declare-fun res!49454 () Bool)

(assert (=> b!95034 (=> (not res!49454) (not e!51826))))

(declare-fun lambda!11227 () Int)

(declare-datatypes () ((Option!765 (None!737) (Some!736 (v!3204 tuple2!516)))))

(declare-fun map!726 (Option!765 Int) Option!764)

(declare-fun find!6 (List!890 Int) Option!765)

(assert (=> b!95034 (= res!49454 (= qpa!1 (map!726 (find!6 transfers!5 lambda!11227) lambda!11222)))))

(declare-fun res!49449 () Bool)

(assert (=> b!95035 (=> (not res!49449) (not e!51826))))

(assert (=> b!95035 (= res!49449 (forall!84 (Cons!829 (tuple2!515 Alice!91 Charlie!91) (Cons!829 (tuple2!515 Charlie!91 Alice!91) Nil!831)) lambda!11224))))

(declare-fun b!95036 () Bool)

(declare-fun res!49455 () Bool)

(assert (=> b!95036 (=> (not res!49455) (not e!51826))))

(declare-fun thiss!14251 () List!890)

(assert (=> b!95036 (= res!49455 (= thiss!14251 transfers!5))))

(declare-fun b!95037 () Bool)

(declare-fun res!49448 () Bool)

(assert (=> b!95037 (=> (not res!49448) (not e!51826))))

(assert (=> b!95037 (= res!49448 (= thiss!14258 qpa!1))))

(declare-fun b!95038 () Bool)

(declare-fun res!49451 () Bool)

(assert (=> b!95038 (=> (not res!49451) (not e!51826))))

(assert (=> b!95038 (= res!49451 (= sum!7 2000))))

(assert (= (and start!15474 res!49450) b!95031))

(assert (= (and b!95031 res!49453) b!95035))

(assert (= (and b!95035 res!49449) b!95038))

(assert (= (and b!95038 res!49451) b!95030))

(assert (= (and b!95030 res!49447) b!95036))

(assert (= (and b!95036 res!49455) b!95034))

(assert (= (and b!95034 res!49454) b!95033))

(assert (= (and b!95033 res!49452) b!95037))

(assert (= (and b!95037 res!49448) b!95032))

(declare-fun m!90243 () Bool)

(assert (=> b!95033 m!90243))

(declare-fun m!90245 () Bool)

(assert (=> b!95031 m!90245))

(declare-fun m!90247 () Bool)

(assert (=> b!95031 m!90247))

(declare-fun m!90249 () Bool)

(assert (=> b!95030 m!90249))

(assert (=> b!95030 m!90249))

(declare-fun m!90251 () Bool)

(assert (=> b!95030 m!90251))

(declare-fun m!90253 () Bool)

(assert (=> b!95034 m!90253))

(assert (=> b!95034 m!90253))

(declare-fun m!90255 () Bool)

(assert (=> b!95034 m!90255))

(declare-fun m!90257 () Bool)

(assert (=> b!95035 m!90257))

(declare-fun m!90259 () Bool)

(assert (=> start!15474 m!90259))

(assert (=> start!15474 m!90259))

(declare-fun m!90261 () Bool)

(assert (=> start!15474 m!90261))

(declare-fun m!90263 () Bool)

(assert (=> b!95032 m!90263))

(push 1)

(assert (not b!95030))

(assert (not b!95033))

(assert (not b!95035))

(assert (not b!95032))

(assert (not b!95031))

(assert (not start!15474))

(assert (not b!95034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

