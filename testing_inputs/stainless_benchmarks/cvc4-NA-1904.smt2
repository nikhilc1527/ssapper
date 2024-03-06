; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12718 () Bool)

(assert start!12718)

(declare-fun res!49077 () Bool)

(declare-fun e!51119 () Bool)

(assert (=> start!12718 (=> (not res!49077) (not e!51119))))

(declare-datatypes () ((Foo!121 (Baz!76 (y!2435 Int)) (FooExt!36 (__x!406 Int)) (Bar!82 (y!2436 Int)))))

(declare-fun thiss!11230 () Foo!121)

(assert (=> start!12718 (= res!49077 (and (not (is-Baz!76 thiss!11230)) (is-FooExt!36 thiss!11230)))))

(assert (=> start!12718 e!51119))

(declare-fun inv!1766 (Foo!121) Bool)

(assert (=> start!12718 (inv!1766 thiss!11230)))

(assert (=> start!12718 true))

(declare-fun b!93358 () Bool)

(declare-fun res!49076 () Bool)

(assert (=> b!93358 (=> (not res!49076) (not e!51119))))

(declare-fun res!49052 () Bool)

(declare-fun inv!1765 (Foo!121) Bool)

(assert (=> b!93358 (= res!49076 (= res!49052 (inv!1765 thiss!11230)))))

(declare-fun b!93359 () Bool)

(declare-fun e!51118 () Bool)

(assert (=> b!93359 (= e!51119 e!51118)))

(declare-fun res!49075 () Bool)

(assert (=> b!93359 (=> res!49075 e!51118)))

(assert (=> b!93359 (= res!49075 (not res!49052))))

(declare-fun b!93360 () Bool)

(declare-fun foo!59 (Foo!121 Int) Int)

(assert (=> b!93360 (= e!51118 (not (= (foo!59 thiss!11230 0) 0)))))

(assert (= (and start!12718 res!49077) b!93358))

(assert (= (and b!93358 res!49076) b!93359))

(assert (= (and b!93359 (not res!49075)) b!93360))

(declare-fun m!89035 () Bool)

(assert (=> start!12718 m!89035))

(declare-fun m!89037 () Bool)

(assert (=> b!93358 m!89037))

(declare-fun m!89039 () Bool)

(assert (=> b!93360 m!89039))

(push 1)

(assert (not start!12718))

(assert (not b!93358))

(assert (not b!93360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!93368 () Bool)

(declare-fun e!51125 () Bool)

(declare-fun e!51126 () Bool)

(assert (=> b!93368 (= e!51125 e!51126)))

(declare-fun res!49080 () Bool)

(assert (=> b!93368 (=> res!49080 e!51126)))

(assert (=> b!93368 (= res!49080 (not (is-Bar!82 thiss!11230)))))

(declare-fun b!93369 () Bool)

(declare-fun inv!34 (Foo!121) Bool)

(assert (=> b!93369 (= e!51126 (inv!34 thiss!11230))))

(declare-fun d!61055 () Bool)

(declare-fun c!22866 () Bool)

(assert (=> d!61055 (= c!22866 (is-Baz!76 thiss!11230))))

(assert (=> d!61055 (= (inv!1766 thiss!11230) e!51125)))

(declare-fun b!93367 () Bool)

(declare-fun inv!35 (Foo!121) Bool)

(assert (=> b!93367 (= e!51125 (inv!35 thiss!11230))))

(assert (= (and b!93368 (not res!49080)) b!93369))

(assert (= (and d!61055 c!22866) b!93367))

(assert (= (and d!61055 (not c!22866)) b!93368))

(declare-fun m!89041 () Bool)

(assert (=> b!93369 m!89041))

(declare-fun m!89043 () Bool)

(assert (=> b!93367 m!89043))

(assert (=> start!12718 d!61055))

(declare-fun d!61057 () Bool)

(declare-fun e!51129 () Bool)

(assert (=> d!61057 e!51129))

(declare-fun res!49086 () Bool)

(assert (=> d!61057 (=> (not res!49086) (not e!51129))))

(declare-fun res!49085 () Bool)

(assert (=> d!61057 (= res!49086 res!49085)))

(assert (=> d!61057 true))

(assert (=> d!61057 (= (inv!1765 thiss!11230) res!49085)))

(declare-fun b!93372 () Bool)

(assert (=> b!93372 (= e!51129 (= (foo!59 thiss!11230 0) 0))))

(assert (= (and d!61057 res!49086) b!93372))

(assert (=> b!93372 m!89039))

(assert (=> b!93358 d!61057))

(declare-fun b!93383 () Bool)

(declare-fun e!51135 () Int)

(declare-fun foo!100 (Foo!121 Int) Int)

(assert (=> b!93383 (= e!51135 (foo!100 thiss!11230 0))))

(declare-fun d!61059 () Bool)

(declare-fun c!22871 () Bool)

(assert (=> d!61059 (= c!22871 (is-Baz!76 thiss!11230))))

(declare-fun e!51134 () Int)

(assert (=> d!61059 (= (foo!59 thiss!11230 0) e!51134)))

(declare-fun b!93381 () Bool)

(declare-fun foo!61 (Foo!121 Int) Int)

(assert (=> b!93381 (= e!51134 (foo!61 thiss!11230 0))))

(declare-fun b!93384 () Bool)

(declare-fun foo!60 (Foo!121 Int) Int)

(assert (=> b!93384 (= e!51135 (foo!60 thiss!11230 0))))

(declare-fun b!93382 () Bool)

(assert (=> b!93382 (= e!51134 e!51135)))

(declare-fun c!22872 () Bool)

(assert (=> b!93382 (= c!22872 (is-FooExt!36 thiss!11230))))

(assert (= (and b!93382 c!22872) b!93383))

(assert (= (and b!93382 (not c!22872)) b!93384))

(assert (= (and d!61059 c!22871) b!93381))

(assert (= (and d!61059 (not c!22871)) b!93382))

(declare-fun m!89045 () Bool)

(assert (=> b!93383 m!89045))

(declare-fun m!89047 () Bool)

(assert (=> b!93381 m!89047))

(declare-fun m!89049 () Bool)

(assert (=> b!93384 m!89049))

(assert (=> b!93360 d!61059))

(push 1)

(assert (not b!93383))

(assert (not b!93384))

(assert (not b!93369))

(assert (not b!93372))

(assert (not b!93381))

(assert (not b!93367))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

