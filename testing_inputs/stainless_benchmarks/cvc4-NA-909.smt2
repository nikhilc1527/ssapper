; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6910 () Bool)

(assert start!6910)

(declare-fun res!23452 () Bool)

(declare-fun e!26446 () Bool)

(assert (=> start!6910 (=> (not res!23452) (not e!26446))))

(declare-datatypes () ((T!2884 (TExt!3 (__x!57 Int) (x!19850 Int)))))

(declare-fun thiss!7073 () T!2884)

(declare-fun thiss!7072 () T!2884)

(assert (=> start!6910 (= res!23452 (= thiss!7073 thiss!7072))))

(assert (=> start!6910 e!26446))

(assert (=> start!6910 true))

(declare-fun b!50984 () Bool)

(declare-fun res!23453 () Bool)

(assert (=> b!50984 (=> (not res!23453) (not e!26446))))

(declare-datatypes () ((Unit!850 (Unit!851))))

(declare-datatypes () ((tuple2!264 (tuple2!265 (_1!158 Unit!850) (_2!158 T!2884)))))

(declare-fun res!23418 () tuple2!264)

(declare-fun havoc!1 (T!2884) tuple2!264)

(assert (=> b!50984 (= res!23453 (= res!23418 (havoc!1 thiss!7073)))))

(declare-fun b!50985 () Bool)

(assert (=> b!50985 (= e!26446 false)))

(assert (= (and start!6910 res!23452) b!50984))

(assert (= (and b!50984 res!23453) b!50985))

(declare-fun m!54529 () Bool)

(assert (=> b!50984 m!54529))

(push 1)

(assert (not b!50984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

