; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6498 () Bool)

(assert start!6498)

(declare-fun b!47995 () Bool)

(declare-fun res!22487 () Bool)

(declare-fun e!25005 () Bool)

(assert (=> b!47995 (=> (not res!22487) (not e!25005))))

(declare-datatypes () ((Unit!663 (Unit!664))))

(declare-fun tmp!161 () Unit!663)

(declare-datatypes () ((Nat!227 (Zero!211) (Succ!208 (n!1364 Nat!227)))))

(declare-fun n3!33 () Nat!227)

(declare-fun n1!118 () Nat!227)

(declare-fun commutative_times!0 (Nat!227 Nat!227) Unit!663)

(assert (=> b!47995 (= res!22487 (= tmp!161 (commutative_times!0 n1!118 n3!33)))))

(declare-fun b!47996 () Bool)

(declare-fun res!22488 () Bool)

(assert (=> b!47996 (=> (not res!22488) (not e!25005))))

(declare-fun tmp!160 () Unit!663)

(declare-fun n2!129 () Nat!227)

(declare-fun distributive_times!0 (Nat!227 Nat!227 Nat!227) Unit!663)

(assert (=> b!47996 (= res!22488 (= tmp!160 (distributive_times!0 n3!33 n1!118 n2!129)))))

(declare-fun b!47997 () Bool)

(declare-fun *!4 (Nat!227 Nat!227) Nat!227)

(declare-fun +!5 (Nat!227 Nat!227) Nat!227)

(assert (=> b!47997 (= e!25005 (not (= (*!4 (+!5 n1!118 n2!129) n3!33) (+!5 (*!4 n1!118 n3!33) (*!4 n2!129 n3!33)))))))

(declare-fun res!22486 () Bool)

(assert (=> start!6498 (=> (not res!22486) (not e!25005))))

(declare-fun tmp!158 () Unit!663)

(assert (=> start!6498 (= res!22486 (= tmp!158 (commutative_times!0 (+!5 n1!118 n2!129) n3!33)))))

(assert (=> start!6498 e!25005))

(assert (=> start!6498 true))

(declare-fun b!47998 () Bool)

(declare-fun res!22490 () Bool)

(assert (=> b!47998 (=> (not res!22490) (not e!25005))))

(declare-fun x$35!44 () Unit!663)

(declare-fun Unit!665 () Unit!663)

(assert (=> b!47998 (= res!22490 (= x$35!44 Unit!665))))

(declare-fun b!47999 () Bool)

(declare-fun res!22489 () Bool)

(assert (=> b!47999 (=> (not res!22489) (not e!25005))))

(declare-fun tmp!163 () Unit!663)

(assert (=> b!47999 (= res!22489 (= tmp!163 (commutative_times!0 n2!129 n3!33)))))

(assert (= (and start!6498 res!22486) b!47996))

(assert (= (and b!47996 res!22488) b!47995))

(assert (= (and b!47995 res!22487) b!47999))

(assert (= (and b!47999 res!22489) b!47998))

(assert (= (and b!47998 res!22490) b!47997))

(declare-fun m!50959 () Bool)

(assert (=> start!6498 m!50959))

(assert (=> start!6498 m!50959))

(declare-fun m!50961 () Bool)

(assert (=> start!6498 m!50961))

(declare-fun m!50963 () Bool)

(assert (=> b!47999 m!50963))

(declare-fun m!50965 () Bool)

(assert (=> b!47995 m!50965))

(declare-fun m!50967 () Bool)

(assert (=> b!47996 m!50967))

(assert (=> b!47997 m!50959))

(declare-fun m!50969 () Bool)

(assert (=> b!47997 m!50969))

(declare-fun m!50971 () Bool)

(assert (=> b!47997 m!50971))

(declare-fun m!50973 () Bool)

(assert (=> b!47997 m!50973))

(declare-fun m!50975 () Bool)

(assert (=> b!47997 m!50975))

(assert (=> b!47997 m!50971))

(assert (=> b!47997 m!50973))

(assert (=> b!47997 m!50959))

(push 1)

(assert (not start!6498))

(assert (not b!47999))

(assert (not b!47995))

(assert (not b!47997))

(assert (not b!47996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!34126 () Bool)

(assert (=> d!34126 (= (*!4 (+!5 n1!118 n2!129) n3!33) (*!4 n3!33 (+!5 n1!118 n2!129)))))

(assert (=> d!34126 true))

(declare-fun x$34!88 () Unit!663)

(assert (=> d!34126 (= (commutative_times!0 (+!5 n1!118 n2!129) n3!33) x$34!88)))

(declare-fun bs!18860 () Bool)

(assert (= bs!18860 d!34126))

(assert (=> bs!18860 m!50959))

(assert (=> bs!18860 m!50969))

(assert (=> bs!18860 m!50959))

(declare-fun m!50977 () Bool)

(assert (=> bs!18860 m!50977))

(assert (=> start!6498 d!34126))

(declare-fun d!34128 () Bool)

(declare-fun c!10119 () Bool)

(assert (=> d!34128 (= c!10119 (is-Zero!211 n1!118))))

(declare-fun e!25008 () Nat!227)

(assert (=> d!34128 (= (+!5 n1!118 n2!129) e!25008)))

(declare-fun b!48004 () Bool)

(assert (=> b!48004 (= e!25008 n2!129)))

(declare-fun b!48005 () Bool)

(assert (=> b!48005 (= e!25008 (Succ!208 (+!5 (n!1364 n1!118) n2!129)))))

(assert (= (and d!34128 c!10119) b!48004))

(assert (= (and d!34128 (not c!10119)) b!48005))

(declare-fun m!50979 () Bool)

(assert (=> b!48005 m!50979))

(assert (=> start!6498 d!34128))

(declare-fun d!34130 () Bool)

(assert (=> d!34130 (= (*!4 n3!33 (+!5 n1!118 n2!129)) (+!5 (*!4 n3!33 n1!118) (*!4 n3!33 n2!129)))))

(assert (=> d!34130 true))

(declare-fun x$22!44 () Unit!663)

(assert (=> d!34130 (= (distributive_times!0 n3!33 n1!118 n2!129) x$22!44)))

(declare-fun bs!18861 () Bool)

(assert (= bs!18861 d!34130))

(declare-fun m!50981 () Bool)

(assert (=> bs!18861 m!50981))

(declare-fun m!50983 () Bool)

(assert (=> bs!18861 m!50983))

(declare-fun m!50985 () Bool)

(assert (=> bs!18861 m!50985))

(assert (=> bs!18861 m!50981))

(assert (=> bs!18861 m!50983))

(assert (=> bs!18861 m!50959))

(assert (=> bs!18861 m!50959))

(assert (=> bs!18861 m!50977))

(assert (=> b!47996 d!34130))

(declare-fun d!34132 () Bool)

(assert (=> d!34132 (= (*!4 n2!129 n3!33) (*!4 n3!33 n2!129))))

(assert (=> d!34132 true))

(declare-fun x$34!89 () Unit!663)

(assert (=> d!34132 (= (commutative_times!0 n2!129 n3!33) x$34!89)))

(declare-fun bs!18862 () Bool)

(assert (= bs!18862 d!34132))

(assert (=> bs!18862 m!50973))

(assert (=> bs!18862 m!50983))

(assert (=> b!47999 d!34132))

(declare-fun d!34134 () Bool)

(assert (=> d!34134 (= (*!4 n1!118 n3!33) (*!4 n3!33 n1!118))))

(assert (=> d!34134 true))

(declare-fun x$34!90 () Unit!663)

(assert (=> d!34134 (= (commutative_times!0 n1!118 n3!33) x$34!90)))

(declare-fun bs!18863 () Bool)

(assert (= bs!18863 d!34134))

(assert (=> bs!18863 m!50971))

(assert (=> bs!18863 m!50981))

(assert (=> b!47995 d!34134))

(assert (=> b!47997 d!34128))

(declare-fun d!34136 () Bool)

(declare-fun c!10122 () Bool)

(assert (=> d!34136 (= c!10122 (is-Zero!211 n1!118))))

(declare-fun e!25011 () Nat!227)

(assert (=> d!34136 (= (*!4 n1!118 n3!33) e!25011)))

(declare-fun b!48010 () Bool)

(assert (=> b!48010 (= e!25011 Zero!211)))

(declare-fun b!48011 () Bool)

(assert (=> b!48011 (= e!25011 (+!5 (*!4 (n!1364 n1!118) n3!33) n3!33))))

(assert (= (and d!34136 c!10122) b!48010))

(assert (= (and d!34136 (not c!10122)) b!48011))

(declare-fun m!50987 () Bool)

(assert (=> b!48011 m!50987))

(assert (=> b!48011 m!50987))

(declare-fun m!50989 () Bool)

(assert (=> b!48011 m!50989))

(assert (=> b!47997 d!34136))

(declare-fun d!34138 () Bool)

(declare-fun c!10123 () Bool)

(assert (=> d!34138 (= c!10123 (is-Zero!211 n2!129))))

(declare-fun e!25012 () Nat!227)

(assert (=> d!34138 (= (*!4 n2!129 n3!33) e!25012)))

(declare-fun b!48012 () Bool)

(assert (=> b!48012 (= e!25012 Zero!211)))

(declare-fun b!48013 () Bool)

(assert (=> b!48013 (= e!25012 (+!5 (*!4 (n!1364 n2!129) n3!33) n3!33))))

(assert (= (and d!34138 c!10123) b!48012))

(assert (= (and d!34138 (not c!10123)) b!48013))

(declare-fun m!50991 () Bool)

(assert (=> b!48013 m!50991))

(assert (=> b!48013 m!50991))

(declare-fun m!50993 () Bool)

(assert (=> b!48013 m!50993))

(assert (=> b!47997 d!34138))

(declare-fun d!34140 () Bool)

(declare-fun c!10124 () Bool)

(assert (=> d!34140 (= c!10124 (is-Zero!211 (+!5 n1!118 n2!129)))))

(declare-fun e!25013 () Nat!227)

(assert (=> d!34140 (= (*!4 (+!5 n1!118 n2!129) n3!33) e!25013)))

(declare-fun b!48014 () Bool)

(assert (=> b!48014 (= e!25013 Zero!211)))

(declare-fun b!48015 () Bool)

(assert (=> b!48015 (= e!25013 (+!5 (*!4 (n!1364 (+!5 n1!118 n2!129)) n3!33) n3!33))))

(assert (= (and d!34140 c!10124) b!48014))

(assert (= (and d!34140 (not c!10124)) b!48015))

(declare-fun m!50995 () Bool)

(assert (=> b!48015 m!50995))

(assert (=> b!48015 m!50995))

(declare-fun m!50997 () Bool)

(assert (=> b!48015 m!50997))

(assert (=> b!47997 d!34140))

(declare-fun d!34142 () Bool)

(declare-fun c!10125 () Bool)

(assert (=> d!34142 (= c!10125 (is-Zero!211 (*!4 n1!118 n3!33)))))

(declare-fun e!25014 () Nat!227)

(assert (=> d!34142 (= (+!5 (*!4 n1!118 n3!33) (*!4 n2!129 n3!33)) e!25014)))

(declare-fun b!48016 () Bool)

(assert (=> b!48016 (= e!25014 (*!4 n2!129 n3!33))))

(declare-fun b!48017 () Bool)

(assert (=> b!48017 (= e!25014 (Succ!208 (+!5 (n!1364 (*!4 n1!118 n3!33)) (*!4 n2!129 n3!33))))))

(assert (= (and d!34142 c!10125) b!48016))

(assert (= (and d!34142 (not c!10125)) b!48017))

(assert (=> b!48017 m!50973))

(declare-fun m!50999 () Bool)

(assert (=> b!48017 m!50999))

(assert (=> b!47997 d!34142))

(push 1)

(assert (not d!34132))

(assert (not b!48011))

(assert (not b!48015))

(assert (not d!34126))

(assert (not b!48013))

(assert (not d!34130))

(assert (not d!34134))

(assert (not b!48017))

(assert (not b!48005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

