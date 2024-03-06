; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11778 () Bool)

(assert start!11778)

(declare-fun b!89844 () Bool)

(declare-fun e!49030 () Bool)

(declare-datatypes () ((MyLetter!8 (L1!5) (L2!5))))

(declare-datatypes () ((MyState!10 (A!3578) (B!622))))

(declare-datatypes () ((Object!472 (MyMachine!5) (MyLetter!9 (value!7194 MyLetter!8)) (MyState!11 (value!7195 MyState!10)) (Open!472 (value!7196 Int)))))

(declare-datatypes () ((Option!578 (Some!552 (v!2676 Object!472)) (None!553))))

(declare-datatypes () ((Option!579 (Some!553 (value!7197 Option!578)) (None!554))))

(declare-fun x!31015 () Option!579)

(assert (=> b!89844 (= e!49030 (not (is-Some!553 x!31015)))))

(declare-fun res!47024 () Bool)

(assert (=> start!11778 (=> (not res!47024) (not e!49030))))

(declare-fun thiss!10003 () Object!472)

(declare-fun isStateMachine!0 (Object!472) Bool)

(assert (=> start!11778 (= res!47024 (isStateMachine!0 thiss!10003))))

(assert (=> start!11778 e!49030))

(declare-fun lt!20446 () Object!472)

(assert (=> start!11778 (= lt!20446 thiss!10003)))

(assert (=> start!11778 (isStateMachine!0 lt!20446)))

(assert (=> start!11778 true))

(declare-fun b!89842 () Bool)

(declare-fun res!47023 () Bool)

(assert (=> b!89842 (=> (not res!47023) (not e!49030))))

(declare-fun lambda!11060 () Int)

(declare-fun s!2584 () Object!472)

(declare-datatypes () ((List!758 (Cons!711 (h!1128 Object!472) (t!48881 List!758)) (Nil!713))))

(declare-fun w!8 () List!758)

(declare-fun lambda!11062 () Int)

(declare-fun isEmpty!731 (Option!579) Bool)

(declare-fun InstanceOf!218 (Int Int Option!578) Option!579)

(declare-fun next!1 (Object!472 Object!472 Object!472) Option!578)

(assert (=> b!89842 (= res!47023 (not (isEmpty!731 (InstanceOf!218 lambda!11060 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8))))))))

(declare-fun b!89843 () Bool)

(declare-fun res!47026 () Bool)

(assert (=> b!89843 (=> (not res!47026) (not e!49030))))

(assert (=> b!89843 (= res!47026 (= x!31015 (InstanceOf!218 lambda!11060 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8)))))))

(declare-fun b!89841 () Bool)

(declare-fun res!47025 () Bool)

(assert (=> b!89841 (=> (not res!47025) (not e!49030))))

(assert (=> b!89841 (= res!47025 (not (is-Nil!713 w!8)))))

(assert (= (and start!11778 res!47024) b!89841))

(assert (= (and b!89841 res!47025) b!89842))

(assert (= (and b!89842 res!47023) b!89843))

(assert (= (and b!89843 res!47026) b!89844))

(declare-fun m!85886 () Bool)

(assert (=> start!11778 m!85886))

(declare-fun m!85888 () Bool)

(assert (=> start!11778 m!85888))

(declare-fun m!85890 () Bool)

(assert (=> b!89842 m!85890))

(assert (=> b!89842 m!85890))

(declare-fun m!85892 () Bool)

(assert (=> b!89842 m!85892))

(assert (=> b!89842 m!85892))

(declare-fun m!85894 () Bool)

(assert (=> b!89842 m!85894))

(assert (=> b!89843 m!85890))

(assert (=> b!89843 m!85890))

(assert (=> b!89843 m!85892))

(push 1)

(assert (not b!89843))

(assert (not start!11778))

(assert (not b!89842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59421 () Bool)

(declare-fun c!22007 () Bool)

(declare-fun dynLambda!1084 (Int Option!578) Bool)

(assert (=> d!59421 (= c!22007 (dynLambda!1084 lambda!11060 (next!1 thiss!10003 s!2584 (h!1128 w!8))))))

(declare-fun e!49033 () Option!579)

(assert (=> d!59421 (= (InstanceOf!218 lambda!11060 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8))) e!49033)))

(declare-fun b!89849 () Bool)

(declare-fun dynLambda!1085 (Int Option!578) Option!578)

(assert (=> b!89849 (= e!49033 (Some!553 (dynLambda!1085 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8)))))))

(declare-fun b!89850 () Bool)

(assert (=> b!89850 (= e!49033 None!554)))

(assert (= (and d!59421 c!22007) b!89849))

(assert (= (and d!59421 (not c!22007)) b!89850))

(declare-fun b_lambda!18403 () Bool)

(assert (=> (not b_lambda!18403) (not d!59421)))

(declare-fun b_lambda!18405 () Bool)

(assert (=> (not b_lambda!18405) (not b!89849)))

(assert (=> d!59421 m!85890))

(declare-fun m!85896 () Bool)

(assert (=> d!59421 m!85896))

(assert (=> b!89849 m!85890))

(declare-fun m!85898 () Bool)

(assert (=> b!89849 m!85898))

(assert (=> b!89843 d!59421))

(declare-fun d!59423 () Bool)

(declare-datatypes () ((Option!580 (Some!554 (v!2677 MyState!10)) (None!555))))

(declare-fun lt!20449 () Option!580)

(declare-fun lambda!11070 () Int)

(declare-fun isOption!37 (Option!580 Int) Bool)

(assert (=> d!59423 (isOption!37 lt!20449 lambda!11070)))

(declare-fun next!2 (Object!472 MyState!10 MyLetter!8) Option!580)

(assert (=> d!59423 (= lt!20449 (next!2 thiss!10003 (value!7195 s!2584) (value!7194 (h!1128 w!8))))))

(declare-fun lambda!11072 () Int)

(declare-fun lambda!11071 () Int)

(declare-fun asOption!28 (Option!580 Int Int) Option!578)

(assert (=> d!59423 (= (next!1 thiss!10003 s!2584 (h!1128 w!8)) (asOption!28 lt!20449 lambda!11071 lambda!11072))))

(declare-fun bs!41575 () Bool)

(assert (= bs!41575 d!59423))

(declare-fun m!85900 () Bool)

(assert (=> bs!41575 m!85900))

(declare-fun m!85902 () Bool)

(assert (=> bs!41575 m!85902))

(declare-fun m!85904 () Bool)

(assert (=> bs!41575 m!85904))

(assert (=> b!89843 d!59423))

(declare-fun d!59425 () Bool)

(declare-fun isMyMachine!0 (Object!472) Bool)

(assert (=> d!59425 (= (isStateMachine!0 thiss!10003) (isMyMachine!0 thiss!10003))))

(declare-fun bs!41576 () Bool)

(assert (= bs!41576 d!59425))

(declare-fun m!85906 () Bool)

(assert (=> bs!41576 m!85906))

(assert (=> start!11778 d!59425))

(declare-fun d!59427 () Bool)

(assert (=> d!59427 (= (isStateMachine!0 lt!20446) (isMyMachine!0 lt!20446))))

(declare-fun bs!41577 () Bool)

(assert (= bs!41577 d!59427))

(declare-fun m!85908 () Bool)

(assert (=> bs!41577 m!85908))

(assert (=> start!11778 d!59427))

(declare-fun d!59429 () Bool)

(assert (=> d!59429 (= (isEmpty!731 (InstanceOf!218 lambda!11060 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8)))) (is-None!554 (InstanceOf!218 lambda!11060 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8)))))))

(assert (=> b!89842 d!59429))

(assert (=> b!89842 d!59421))

(assert (=> b!89842 d!59423))

(declare-fun b_lambda!18407 () Bool)

(assert (= b_lambda!18403 (or b!89842 b_lambda!18407)))

(declare-fun bs!41578 () Bool)

(declare-fun d!59431 () Bool)

(assert (= bs!41578 (and d!59431 b!89842)))

(declare-fun lambda!11061 () Int)

(declare-fun isOption!38 (Option!578 Int) Bool)

(assert (=> bs!41578 (= (dynLambda!1084 lambda!11060 (next!1 thiss!10003 s!2584 (h!1128 w!8))) (isOption!38 (next!1 thiss!10003 s!2584 (h!1128 w!8)) lambda!11061))))

(assert (=> bs!41578 m!85890))

(declare-fun m!85910 () Bool)

(assert (=> bs!41578 m!85910))

(assert (=> d!59421 d!59431))

(declare-fun b_lambda!18409 () Bool)

(assert (= b_lambda!18405 (or b!89842 b_lambda!18409)))

(declare-fun bs!41579 () Bool)

(declare-fun d!59433 () Bool)

(assert (= bs!41579 (and d!59433 b!89842)))

(declare-fun lambda!11063 () Int)

(declare-fun asOption!29 (Option!578 Int Int) Option!578)

(assert (=> bs!41579 (= (dynLambda!1085 lambda!11062 (next!1 thiss!10003 s!2584 (h!1128 w!8))) (asOption!29 (next!1 thiss!10003 s!2584 (h!1128 w!8)) lambda!11063 lambda!11063))))

(assert (=> bs!41579 m!85890))

(declare-fun m!85912 () Bool)

(assert (=> bs!41579 m!85912))

(assert (=> b!89849 d!59433))

(push 1)

(assert (not bs!41578))

(assert (not d!59427))

(assert (not bs!41579))

(assert (not d!59423))

(assert (not d!59425))

(assert (not b_lambda!18409))

(assert (not b_lambda!18407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

