; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6902 () Bool)

(assert start!6902)

(declare-fun b!50973 () Bool)

(declare-fun e!26440 () Bool)

(declare-fun y!1579 () Int)

(declare-datatypes () ((T!2882 (TExt!1 (__x!55 Int) (x!19847 Int)))))

(declare-fun t!46633 () T!2882)

(declare-fun x!388 (T!2882) Int)

(assert (=> b!50973 (= e!26440 (not (= y!1579 (x!388 t!46633))))))

(declare-fun b!50970 () Bool)

(declare-fun res!23437 () Bool)

(assert (=> b!50970 (=> (not res!23437) (not e!26440))))

(declare-fun t!46632 () T!2882)

(assert (=> b!50970 (= res!23437 (= y!1579 (x!388 t!46632)))))

(declare-fun res!23436 () Bool)

(assert (=> start!6902 (=> (not res!23436) (not e!26440))))

(declare-fun t!46631 () T!2882)

(assert (=> start!6902 (= res!23436 (= t!46632 t!46631))))

(assert (=> start!6902 e!26440))

(assert (=> start!6902 true))

(declare-fun b!50972 () Bool)

(declare-fun res!23435 () Bool)

(assert (=> b!50972 (=> (not res!23435) (not e!26440))))

(declare-datatypes () ((Unit!845 (Unit!846))))

(declare-fun tmp!417 () Unit!845)

(declare-datatypes () ((tuple2!260 (tuple2!261 (_1!156 Unit!845) (_2!156 T!2882)))))

(declare-fun res!23423 () tuple2!260)

(declare-fun tmp!416 () Unit!845)

(declare-fun Unit!847 () Unit!845)

(assert (=> b!50972 (= res!23435 (and (= t!46633 (_2!156 res!23423)) (= tmp!416 Unit!847) (= tmp!417 (_1!156 res!23423))))))

(declare-fun b!50971 () Bool)

(declare-fun res!23438 () Bool)

(assert (=> b!50971 (=> (not res!23438) (not e!26440))))

(declare-fun havoc!0 (T!2882) tuple2!260)

(assert (=> b!50971 (= res!23438 (= res!23423 (havoc!0 t!46632)))))

(assert (= (and start!6902 res!23436) b!50970))

(assert (= (and b!50970 res!23437) b!50971))

(assert (= (and b!50971 res!23438) b!50972))

(assert (= (and b!50972 res!23435) b!50973))

(declare-fun m!54517 () Bool)

(assert (=> b!50973 m!54517))

(declare-fun m!54519 () Bool)

(assert (=> b!50970 m!54519))

(declare-fun m!54521 () Bool)

(assert (=> b!50971 m!54521))

(push 1)

(assert (not b!50971))

(assert (not b!50973))

(assert (not b!50970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!43494 () Bool)

(declare-fun lt!8877 () T!2882)

(assert (=> d!43494 (= (x!388 lt!8877) (x!388 t!46632))))

(declare-fun lt!8876 () tuple2!260)

(assert (=> d!43494 (= lt!8877 (_2!156 lt!8876))))

(declare-fun havoc!1 (T!2882) tuple2!260)

(assert (=> d!43494 (= lt!8876 (havoc!1 t!46632))))

(assert (=> d!43494 (= (havoc!0 t!46632) (tuple2!261 (_1!156 lt!8876) lt!8877))))

(declare-fun bs!23708 () Bool)

(assert (= bs!23708 d!43494))

(declare-fun m!54523 () Bool)

(assert (=> bs!23708 m!54523))

(assert (=> bs!23708 m!54519))

(declare-fun m!54525 () Bool)

(assert (=> bs!23708 m!54525))

(assert (=> b!50971 d!43494))

(declare-fun d!43496 () Bool)

(assert (=> d!43496 (= (x!388 t!46633) (x!19847 t!46633))))

(assert (=> b!50973 d!43496))

(declare-fun d!43498 () Bool)

(assert (=> d!43498 (= (x!388 t!46632) (x!19847 t!46632))))

(assert (=> b!50970 d!43498))

(push 1)

(assert (not d!43494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

