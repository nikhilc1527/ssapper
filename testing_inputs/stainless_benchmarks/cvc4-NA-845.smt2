; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6328 () Bool)

(assert start!6328)

(declare-fun res!22112 () Bool)

(declare-fun e!24523 () Bool)

(assert (=> start!6328 (=> (not res!22112) (not e!24523))))

(declare-datatypes () ((Nat!206 (Zero!190) (Succ!187 (n!1342 Nat!206)))))

(declare-fun n2!101 () Nat!206)

(declare-fun n3!28 () Nat!206)

(declare-fun >=!2 (Nat!206 Nat!206) Bool)

(assert (=> start!6328 (= res!22112 (>=!2 n2!101 n3!28))))

(assert (=> start!6328 e!24523))

(assert (=> start!6328 true))

(declare-fun b!47081 () Bool)

(declare-fun res!22113 () Bool)

(assert (=> b!47081 (=> (not res!22113) (not e!24523))))

(declare-datatypes () ((Unit!642 (Unit!643))))

(declare-fun x$57!60 () Unit!642)

(declare-fun Unit!644 () Unit!642)

(assert (=> b!47081 (= res!22113 (and (or (not (is-Succ!187 n2!101)) (not (is-Succ!187 n3!28))) (= x$57!60 Unit!644)))))

(declare-fun b!47082 () Bool)

(declare-fun n1!90 () Nat!206)

(declare-fun -!4 (Nat!206 Nat!206) Nat!206)

(declare-fun +!5 (Nat!206 Nat!206) Nat!206)

(assert (=> b!47082 (= e!24523 (not (= (-!4 (+!5 n1!90 n2!101) n3!28) (+!5 n1!90 (-!4 n2!101 n3!28)))))))

(assert (= (and start!6328 res!22112) b!47081))

(assert (= (and b!47081 res!22113) b!47082))

(declare-fun m!50003 () Bool)

(assert (=> start!6328 m!50003))

(declare-fun m!50005 () Bool)

(assert (=> b!47082 m!50005))

(assert (=> b!47082 m!50005))

(declare-fun m!50007 () Bool)

(assert (=> b!47082 m!50007))

(declare-fun m!50009 () Bool)

(assert (=> b!47082 m!50009))

(assert (=> b!47082 m!50009))

(declare-fun m!50011 () Bool)

(assert (=> b!47082 m!50011))

(push 1)

(assert (not b!47082))

(assert (not start!6328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33102 () Bool)

(declare-fun e!24531 () Bool)

(assert (=> d!33102 e!24531))

(declare-fun res!22121 () Bool)

(assert (=> d!33102 (=> (not res!22121) (not e!24531))))

(declare-fun lt!8557 () Nat!206)

(declare-fun repr!0 (Nat!206) Int)

(assert (=> d!33102 (= res!22121 (<= (repr!0 lt!8557) (repr!0 (+!5 n1!90 n2!101))))))

(declare-fun e!24532 () Nat!206)

(assert (=> d!33102 (= lt!8557 e!24532)))

(declare-fun c!9911 () Bool)

(assert (=> d!33102 (= c!9911 (and (is-Succ!187 (+!5 n1!90 n2!101)) (is-Succ!187 n3!28)))))

(assert (=> d!33102 (= (-!4 (+!5 n1!90 n2!101) n3!28) lt!8557)))

(declare-fun b!47093 () Bool)

(assert (=> b!47093 (= e!24532 (-!4 (n!1342 (+!5 n1!90 n2!101)) (n!1342 n3!28)))))

(declare-fun b!47094 () Bool)

(assert (=> b!47094 (= e!24532 (+!5 n1!90 n2!101))))

(declare-fun e!24530 () Bool)

(declare-fun b!47095 () Bool)

(assert (=> b!47095 (= e!24530 (< (repr!0 lt!8557) (repr!0 (+!5 n1!90 n2!101))))))

(declare-fun b!47096 () Bool)

(assert (=> b!47096 (= e!24531 e!24530)))

(declare-fun res!22123 () Bool)

(assert (=> b!47096 (=> res!22123 e!24530)))

(declare-fun >!2 (Nat!206 Nat!206) Bool)

(assert (=> b!47096 (= res!22123 (not (>!2 (+!5 n1!90 n2!101) Zero!190)))))

(declare-fun b!47097 () Bool)

(declare-fun res!22122 () Bool)

(assert (=> b!47097 (=> res!22122 e!24530)))

(assert (=> b!47097 (= res!22122 (not (>!2 n3!28 Zero!190)))))

(assert (= (and d!33102 c!9911) b!47093))

(assert (= (and d!33102 (not c!9911)) b!47094))

(assert (= (and d!33102 res!22121) b!47096))

(assert (= (and b!47096 (not res!22123)) b!47097))

(assert (= (and b!47097 (not res!22122)) b!47095))

(declare-fun m!50013 () Bool)

(assert (=> b!47097 m!50013))

(assert (=> b!47096 m!50005))

(declare-fun m!50015 () Bool)

(assert (=> b!47096 m!50015))

(declare-fun m!50017 () Bool)

(assert (=> b!47093 m!50017))

(declare-fun m!50019 () Bool)

(assert (=> d!33102 m!50019))

(assert (=> d!33102 m!50005))

(declare-fun m!50021 () Bool)

(assert (=> d!33102 m!50021))

(assert (=> b!47095 m!50019))

(assert (=> b!47095 m!50005))

(assert (=> b!47095 m!50021))

(assert (=> b!47082 d!33102))

(declare-fun d!33104 () Bool)

(declare-fun c!9914 () Bool)

(assert (=> d!33104 (= c!9914 (is-Zero!190 n1!90))))

(declare-fun e!24535 () Nat!206)

(assert (=> d!33104 (= (+!5 n1!90 n2!101) e!24535)))

(declare-fun b!47102 () Bool)

(assert (=> b!47102 (= e!24535 n2!101)))

(declare-fun b!47103 () Bool)

(assert (=> b!47103 (= e!24535 (Succ!187 (+!5 (n!1342 n1!90) n2!101)))))

(assert (= (and d!33104 c!9914) b!47102))

(assert (= (and d!33104 (not c!9914)) b!47103))

(declare-fun m!50023 () Bool)

(assert (=> b!47103 m!50023))

(assert (=> b!47082 d!33104))

(declare-fun d!33106 () Bool)

(declare-fun c!9915 () Bool)

(assert (=> d!33106 (= c!9915 (is-Zero!190 n1!90))))

(declare-fun e!24536 () Nat!206)

(assert (=> d!33106 (= (+!5 n1!90 (-!4 n2!101 n3!28)) e!24536)))

(declare-fun b!47104 () Bool)

(assert (=> b!47104 (= e!24536 (-!4 n2!101 n3!28))))

(declare-fun b!47105 () Bool)

(assert (=> b!47105 (= e!24536 (Succ!187 (+!5 (n!1342 n1!90) (-!4 n2!101 n3!28))))))

(assert (= (and d!33106 c!9915) b!47104))

(assert (= (and d!33106 (not c!9915)) b!47105))

(assert (=> b!47105 m!50009))

(declare-fun m!50025 () Bool)

(assert (=> b!47105 m!50025))

(assert (=> b!47082 d!33106))

(declare-fun d!33108 () Bool)

(declare-fun e!24538 () Bool)

(assert (=> d!33108 e!24538))

(declare-fun res!22124 () Bool)

(assert (=> d!33108 (=> (not res!22124) (not e!24538))))

(declare-fun lt!8558 () Nat!206)

(assert (=> d!33108 (= res!22124 (<= (repr!0 lt!8558) (repr!0 n2!101)))))

(declare-fun e!24539 () Nat!206)

(assert (=> d!33108 (= lt!8558 e!24539)))

(declare-fun c!9916 () Bool)

(assert (=> d!33108 (= c!9916 (and (is-Succ!187 n2!101) (is-Succ!187 n3!28)))))

(assert (=> d!33108 (= (-!4 n2!101 n3!28) lt!8558)))

(declare-fun b!47106 () Bool)

(assert (=> b!47106 (= e!24539 (-!4 (n!1342 n2!101) (n!1342 n3!28)))))

(declare-fun b!47107 () Bool)

(assert (=> b!47107 (= e!24539 n2!101)))

(declare-fun b!47108 () Bool)

(declare-fun e!24537 () Bool)

(assert (=> b!47108 (= e!24537 (< (repr!0 lt!8558) (repr!0 n2!101)))))

(declare-fun b!47109 () Bool)

(assert (=> b!47109 (= e!24538 e!24537)))

(declare-fun res!22126 () Bool)

(assert (=> b!47109 (=> res!22126 e!24537)))

(assert (=> b!47109 (= res!22126 (not (>!2 n2!101 Zero!190)))))

(declare-fun b!47110 () Bool)

(declare-fun res!22125 () Bool)

(assert (=> b!47110 (=> res!22125 e!24537)))

(assert (=> b!47110 (= res!22125 (not (>!2 n3!28 Zero!190)))))

(assert (= (and d!33108 c!9916) b!47106))

(assert (= (and d!33108 (not c!9916)) b!47107))

(assert (= (and d!33108 res!22124) b!47109))

(assert (= (and b!47109 (not res!22126)) b!47110))

(assert (= (and b!47110 (not res!22125)) b!47108))

(assert (=> b!47110 m!50013))

(declare-fun m!50027 () Bool)

(assert (=> b!47109 m!50027))

(declare-fun m!50029 () Bool)

(assert (=> b!47106 m!50029))

(declare-fun m!50031 () Bool)

(assert (=> d!33108 m!50031))

(declare-fun m!50033 () Bool)

(assert (=> d!33108 m!50033))

(assert (=> b!47108 m!50031))

(assert (=> b!47108 m!50033))

(assert (=> b!47082 d!33108))

(declare-fun d!33110 () Bool)

(declare-fun res!22129 () Bool)

(declare-fun e!24542 () Bool)

(assert (=> d!33110 (=> res!22129 e!24542)))

(assert (=> d!33110 (= res!22129 (>!2 n2!101 n3!28))))

(assert (=> d!33110 (= (>=!2 n2!101 n3!28) e!24542)))

(declare-fun b!47113 () Bool)

(assert (=> b!47113 (= e!24542 (= n2!101 n3!28))))

(assert (= (and d!33110 (not res!22129)) b!47113))

(declare-fun m!50035 () Bool)

(assert (=> d!33110 m!50035))

(assert (=> start!6328 d!33110))

(push 1)

(assert (not d!33110))

(assert (not b!47108))

(assert (not b!47097))

(assert (not b!47109))

(assert (not d!33102))

(assert (not b!47106))

(assert (not b!47103))

(assert (not b!47095))

(assert (not b!47110))

(assert (not d!33108))

(assert (not b!47105))

(assert (not b!47093))

(assert (not b!47096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33112 () Bool)

(declare-fun res!22132 () Bool)

(declare-fun e!24545 () Bool)

(assert (=> d!33112 (=> (not res!22132) (not e!24545))))

(declare-fun <!2 (Nat!206 Nat!206) Bool)

(assert (=> d!33112 (= res!22132 (not (<!2 (+!5 n1!90 n2!101) Zero!190)))))

(assert (=> d!33112 (= (>!2 (+!5 n1!90 n2!101) Zero!190) e!24545)))

(declare-fun b!47116 () Bool)

(assert (=> b!47116 (= e!24545 (not (= (+!5 n1!90 n2!101) Zero!190)))))

(assert (= (and d!33112 res!22132) b!47116))

(assert (=> d!33112 m!50005))

(declare-fun m!50037 () Bool)

(assert (=> d!33112 m!50037))

(assert (=> b!47096 d!33112))

(declare-fun d!33114 () Bool)

(declare-fun res!22133 () Bool)

(declare-fun e!24546 () Bool)

(assert (=> d!33114 (=> (not res!22133) (not e!24546))))

(assert (=> d!33114 (= res!22133 (not (<!2 n3!28 Zero!190)))))

(assert (=> d!33114 (= (>!2 n3!28 Zero!190) e!24546)))

(declare-fun b!47117 () Bool)

(assert (=> b!47117 (= e!24546 (not (= n3!28 Zero!190)))))

(assert (= (and d!33114 res!22133) b!47117))

(declare-fun m!50039 () Bool)

(assert (=> d!33114 m!50039))

(assert (=> b!47097 d!33114))

(declare-fun d!33116 () Bool)

(declare-fun e!24548 () Bool)

(assert (=> d!33116 e!24548))

(declare-fun res!22134 () Bool)

(assert (=> d!33116 (=> (not res!22134) (not e!24548))))

(declare-fun lt!8559 () Nat!206)

(assert (=> d!33116 (= res!22134 (<= (repr!0 lt!8559) (repr!0 (n!1342 (+!5 n1!90 n2!101)))))))

(declare-fun e!24549 () Nat!206)

(assert (=> d!33116 (= lt!8559 e!24549)))

(declare-fun c!9917 () Bool)

(assert (=> d!33116 (= c!9917 (and (is-Succ!187 (n!1342 (+!5 n1!90 n2!101))) (is-Succ!187 (n!1342 n3!28))))))

(assert (=> d!33116 (= (-!4 (n!1342 (+!5 n1!90 n2!101)) (n!1342 n3!28)) lt!8559)))

(declare-fun b!47118 () Bool)

(assert (=> b!47118 (= e!24549 (-!4 (n!1342 (n!1342 (+!5 n1!90 n2!101))) (n!1342 (n!1342 n3!28))))))

(declare-fun b!47119 () Bool)

(assert (=> b!47119 (= e!24549 (n!1342 (+!5 n1!90 n2!101)))))

(declare-fun e!24547 () Bool)

(declare-fun b!47120 () Bool)

(assert (=> b!47120 (= e!24547 (< (repr!0 lt!8559) (repr!0 (n!1342 (+!5 n1!90 n2!101)))))))

(declare-fun b!47121 () Bool)

(assert (=> b!47121 (= e!24548 e!24547)))

(declare-fun res!22136 () Bool)

(assert (=> b!47121 (=> res!22136 e!24547)))

(assert (=> b!47121 (= res!22136 (not (>!2 (n!1342 (+!5 n1!90 n2!101)) Zero!190)))))

(declare-fun b!47122 () Bool)

(declare-fun res!22135 () Bool)

(assert (=> b!47122 (=> res!22135 e!24547)))

(assert (=> b!47122 (= res!22135 (not (>!2 (n!1342 n3!28) Zero!190)))))

(assert (= (and d!33116 c!9917) b!47118))

(assert (= (and d!33116 (not c!9917)) b!47119))

(assert (= (and d!33116 res!22134) b!47121))

(assert (= (and b!47121 (not res!22136)) b!47122))

(assert (= (and b!47122 (not res!22135)) b!47120))

(declare-fun m!50041 () Bool)

(assert (=> b!47122 m!50041))

(declare-fun m!50043 () Bool)

(assert (=> b!47121 m!50043))

(declare-fun m!50045 () Bool)

(assert (=> b!47118 m!50045))

(declare-fun m!50047 () Bool)

(assert (=> d!33116 m!50047))

(declare-fun m!50049 () Bool)

(assert (=> d!33116 m!50049))

(assert (=> b!47120 m!50047))

(assert (=> b!47120 m!50049))

(assert (=> b!47093 d!33116))

(declare-fun d!33118 () Bool)

(declare-fun lt!8562 () Int)

(assert (=> d!33118 (>= lt!8562 0)))

(declare-fun e!24552 () Int)

(assert (=> d!33118 (= lt!8562 e!24552)))

(declare-fun c!9920 () Bool)

(assert (=> d!33118 (= c!9920 (is-Zero!190 lt!8558))))

(assert (=> d!33118 (= (repr!0 lt!8558) lt!8562)))

(declare-fun b!47127 () Bool)

(assert (=> b!47127 (= e!24552 0)))

(declare-fun b!47128 () Bool)

(assert (=> b!47128 (= e!24552 (+ (repr!0 (n!1342 lt!8558)) 1))))

(assert (= (and d!33118 c!9920) b!47127))

(assert (= (and d!33118 (not c!9920)) b!47128))

(declare-fun m!50051 () Bool)

(assert (=> b!47128 m!50051))

(assert (=> d!33108 d!33118))

(declare-fun d!33120 () Bool)

(declare-fun lt!8563 () Int)

(assert (=> d!33120 (>= lt!8563 0)))

(declare-fun e!24553 () Int)

(assert (=> d!33120 (= lt!8563 e!24553)))

(declare-fun c!9921 () Bool)

(assert (=> d!33120 (= c!9921 (is-Zero!190 n2!101))))

(assert (=> d!33120 (= (repr!0 n2!101) lt!8563)))

(declare-fun b!47129 () Bool)

(assert (=> b!47129 (= e!24553 0)))

(declare-fun b!47130 () Bool)

(assert (=> b!47130 (= e!24553 (+ (repr!0 (n!1342 n2!101)) 1))))

(assert (= (and d!33120 c!9921) b!47129))

(assert (= (and d!33120 (not c!9921)) b!47130))

(declare-fun m!50053 () Bool)

(assert (=> b!47130 m!50053))

(assert (=> d!33108 d!33120))

(assert (=> b!47110 d!33114))

(declare-fun d!33122 () Bool)

(declare-fun e!24555 () Bool)

(assert (=> d!33122 e!24555))

(declare-fun res!22137 () Bool)

(assert (=> d!33122 (=> (not res!22137) (not e!24555))))

(declare-fun lt!8564 () Nat!206)

(assert (=> d!33122 (= res!22137 (<= (repr!0 lt!8564) (repr!0 (n!1342 n2!101))))))

(declare-fun e!24556 () Nat!206)

(assert (=> d!33122 (= lt!8564 e!24556)))

(declare-fun c!9922 () Bool)

(assert (=> d!33122 (= c!9922 (and (is-Succ!187 (n!1342 n2!101)) (is-Succ!187 (n!1342 n3!28))))))

(assert (=> d!33122 (= (-!4 (n!1342 n2!101) (n!1342 n3!28)) lt!8564)))

(declare-fun b!47131 () Bool)

(assert (=> b!47131 (= e!24556 (-!4 (n!1342 (n!1342 n2!101)) (n!1342 (n!1342 n3!28))))))

(declare-fun b!47132 () Bool)

(assert (=> b!47132 (= e!24556 (n!1342 n2!101))))

(declare-fun b!47133 () Bool)

(declare-fun e!24554 () Bool)

(assert (=> b!47133 (= e!24554 (< (repr!0 lt!8564) (repr!0 (n!1342 n2!101))))))

(declare-fun b!47134 () Bool)

(assert (=> b!47134 (= e!24555 e!24554)))

(declare-fun res!22139 () Bool)

(assert (=> b!47134 (=> res!22139 e!24554)))

(assert (=> b!47134 (= res!22139 (not (>!2 (n!1342 n2!101) Zero!190)))))

(declare-fun b!47135 () Bool)

(declare-fun res!22138 () Bool)

(assert (=> b!47135 (=> res!22138 e!24554)))

(assert (=> b!47135 (= res!22138 (not (>!2 (n!1342 n3!28) Zero!190)))))

(assert (= (and d!33122 c!9922) b!47131))

(assert (= (and d!33122 (not c!9922)) b!47132))

(assert (= (and d!33122 res!22137) b!47134))

(assert (= (and b!47134 (not res!22139)) b!47135))

(assert (= (and b!47135 (not res!22138)) b!47133))

(assert (=> b!47135 m!50041))

(declare-fun m!50055 () Bool)

(assert (=> b!47134 m!50055))

(declare-fun m!50057 () Bool)

(assert (=> b!47131 m!50057))

(declare-fun m!50059 () Bool)

(assert (=> d!33122 m!50059))

(assert (=> d!33122 m!50053))

(assert (=> b!47133 m!50059))

(assert (=> b!47133 m!50053))

(assert (=> b!47106 d!33122))

(declare-fun d!33124 () Bool)

(declare-fun res!22140 () Bool)

(declare-fun e!24557 () Bool)

(assert (=> d!33124 (=> (not res!22140) (not e!24557))))

(assert (=> d!33124 (= res!22140 (not (<!2 n2!101 n3!28)))))

(assert (=> d!33124 (= (>!2 n2!101 n3!28) e!24557)))

(declare-fun b!47136 () Bool)

(assert (=> b!47136 (= e!24557 (not (= n2!101 n3!28)))))

(assert (= (and d!33124 res!22140) b!47136))

(declare-fun m!50061 () Bool)

(assert (=> d!33124 m!50061))

(assert (=> d!33110 d!33124))

(declare-fun d!33126 () Bool)

(declare-fun c!9923 () Bool)

(assert (=> d!33126 (= c!9923 (is-Zero!190 (n!1342 n1!90)))))

(declare-fun e!24558 () Nat!206)

(assert (=> d!33126 (= (+!5 (n!1342 n1!90) n2!101) e!24558)))

(declare-fun b!47137 () Bool)

(assert (=> b!47137 (= e!24558 n2!101)))

(declare-fun b!47138 () Bool)

(assert (=> b!47138 (= e!24558 (Succ!187 (+!5 (n!1342 (n!1342 n1!90)) n2!101)))))

(assert (= (and d!33126 c!9923) b!47137))

(assert (= (and d!33126 (not c!9923)) b!47138))

(declare-fun m!50063 () Bool)

(assert (=> b!47138 m!50063))

(assert (=> b!47103 d!33126))

(declare-fun d!33128 () Bool)

(declare-fun lt!8565 () Int)

(assert (=> d!33128 (>= lt!8565 0)))

(declare-fun e!24559 () Int)

(assert (=> d!33128 (= lt!8565 e!24559)))

(declare-fun c!9924 () Bool)

(assert (=> d!33128 (= c!9924 (is-Zero!190 lt!8557))))

(assert (=> d!33128 (= (repr!0 lt!8557) lt!8565)))

(declare-fun b!47139 () Bool)

(assert (=> b!47139 (= e!24559 0)))

(declare-fun b!47140 () Bool)

(assert (=> b!47140 (= e!24559 (+ (repr!0 (n!1342 lt!8557)) 1))))

(assert (= (and d!33128 c!9924) b!47139))

(assert (= (and d!33128 (not c!9924)) b!47140))

(declare-fun m!50065 () Bool)

(assert (=> b!47140 m!50065))

(assert (=> d!33102 d!33128))

(declare-fun d!33130 () Bool)

(declare-fun lt!8566 () Int)

(assert (=> d!33130 (>= lt!8566 0)))

(declare-fun e!24560 () Int)

(assert (=> d!33130 (= lt!8566 e!24560)))

(declare-fun c!9925 () Bool)

(assert (=> d!33130 (= c!9925 (is-Zero!190 (+!5 n1!90 n2!101)))))

(assert (=> d!33130 (= (repr!0 (+!5 n1!90 n2!101)) lt!8566)))

(declare-fun b!47141 () Bool)

(assert (=> b!47141 (= e!24560 0)))

(declare-fun b!47142 () Bool)

(assert (=> b!47142 (= e!24560 (+ (repr!0 (n!1342 (+!5 n1!90 n2!101))) 1))))

(assert (= (and d!33130 c!9925) b!47141))

(assert (= (and d!33130 (not c!9925)) b!47142))

(assert (=> b!47142 m!50049))

(assert (=> d!33102 d!33130))

(assert (=> b!47095 d!33128))

(assert (=> b!47095 d!33130))

(assert (=> b!47108 d!33118))

(assert (=> b!47108 d!33120))

(declare-fun d!33132 () Bool)

(declare-fun res!22141 () Bool)

(declare-fun e!24561 () Bool)

(assert (=> d!33132 (=> (not res!22141) (not e!24561))))

(assert (=> d!33132 (= res!22141 (not (<!2 n2!101 Zero!190)))))

(assert (=> d!33132 (= (>!2 n2!101 Zero!190) e!24561)))

(declare-fun b!47143 () Bool)

(assert (=> b!47143 (= e!24561 (not (= n2!101 Zero!190)))))

(assert (= (and d!33132 res!22141) b!47143))

(declare-fun m!50067 () Bool)

(assert (=> d!33132 m!50067))

(assert (=> b!47109 d!33132))

(declare-fun d!33134 () Bool)

(declare-fun c!9926 () Bool)

(assert (=> d!33134 (= c!9926 (is-Zero!190 (n!1342 n1!90)))))

(declare-fun e!24562 () Nat!206)

(assert (=> d!33134 (= (+!5 (n!1342 n1!90) (-!4 n2!101 n3!28)) e!24562)))

(declare-fun b!47144 () Bool)

(assert (=> b!47144 (= e!24562 (-!4 n2!101 n3!28))))

(declare-fun b!47145 () Bool)

(assert (=> b!47145 (= e!24562 (Succ!187 (+!5 (n!1342 (n!1342 n1!90)) (-!4 n2!101 n3!28))))))

(assert (= (and d!33134 c!9926) b!47144))

(assert (= (and d!33134 (not c!9926)) b!47145))

(assert (=> b!47145 m!50009))

(declare-fun m!50069 () Bool)

(assert (=> b!47145 m!50069))

(assert (=> b!47105 d!33134))

(push 1)

(assert (not b!47130))

(assert (not b!47140))

(assert (not b!47120))

(assert (not b!47133))

(assert (not d!33112))

(assert (not d!33114))

(assert (not b!47118))

(assert (not b!47128))

(assert (not b!47131))

(assert (not d!33124))

(assert (not d!33132))

(assert (not b!47121))

(assert (not d!33116))

(assert (not b!47122))

(assert (not b!47138))

(assert (not b!47145))

(assert (not b!47135))

(assert (not d!33122))

(assert (not b!47134))

(assert (not b!47142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33136 () Bool)

(declare-fun lt!8567 () Int)

(assert (=> d!33136 (>= lt!8567 0)))

(declare-fun e!24563 () Int)

(assert (=> d!33136 (= lt!8567 e!24563)))

(declare-fun c!9927 () Bool)

(assert (=> d!33136 (= c!9927 (is-Zero!190 (n!1342 lt!8558)))))

(assert (=> d!33136 (= (repr!0 (n!1342 lt!8558)) lt!8567)))

(declare-fun b!47146 () Bool)

(assert (=> b!47146 (= e!24563 0)))

(declare-fun b!47147 () Bool)

(assert (=> b!47147 (= e!24563 (+ (repr!0 (n!1342 (n!1342 lt!8558))) 1))))

(assert (= (and d!33136 c!9927) b!47146))

(assert (= (and d!33136 (not c!9927)) b!47147))

(declare-fun m!50071 () Bool)

(assert (=> b!47147 m!50071))

(assert (=> b!47128 d!33136))

(declare-fun d!33138 () Bool)

(declare-fun e!24565 () Bool)

(assert (=> d!33138 e!24565))

(declare-fun res!22142 () Bool)

(assert (=> d!33138 (=> (not res!22142) (not e!24565))))

(declare-fun lt!8568 () Nat!206)

(assert (=> d!33138 (= res!22142 (<= (repr!0 lt!8568) (repr!0 (n!1342 (n!1342 (+!5 n1!90 n2!101))))))))

(declare-fun e!24566 () Nat!206)

(assert (=> d!33138 (= lt!8568 e!24566)))

(declare-fun c!9928 () Bool)

(assert (=> d!33138 (= c!9928 (and (is-Succ!187 (n!1342 (n!1342 (+!5 n1!90 n2!101)))) (is-Succ!187 (n!1342 (n!1342 n3!28)))))))

(assert (=> d!33138 (= (-!4 (n!1342 (n!1342 (+!5 n1!90 n2!101))) (n!1342 (n!1342 n3!28))) lt!8568)))

(declare-fun b!47148 () Bool)

(assert (=> b!47148 (= e!24566 (-!4 (n!1342 (n!1342 (n!1342 (+!5 n1!90 n2!101)))) (n!1342 (n!1342 (n!1342 n3!28)))))))

(declare-fun b!47149 () Bool)

(assert (=> b!47149 (= e!24566 (n!1342 (n!1342 (+!5 n1!90 n2!101))))))

(declare-fun e!24564 () Bool)

(declare-fun b!47150 () Bool)

(assert (=> b!47150 (= e!24564 (< (repr!0 lt!8568) (repr!0 (n!1342 (n!1342 (+!5 n1!90 n2!101))))))))

(declare-fun b!47151 () Bool)

(assert (=> b!47151 (= e!24565 e!24564)))

(declare-fun res!22144 () Bool)

(assert (=> b!47151 (=> res!22144 e!24564)))

(assert (=> b!47151 (= res!22144 (not (>!2 (n!1342 (n!1342 (+!5 n1!90 n2!101))) Zero!190)))))

(declare-fun b!47152 () Bool)

(declare-fun res!22143 () Bool)

(assert (=> b!47152 (=> res!22143 e!24564)))

(assert (=> b!47152 (= res!22143 (not (>!2 (n!1342 (n!1342 n3!28)) Zero!190)))))

(assert (= (and d!33138 c!9928) b!47148))

(assert (= (and d!33138 (not c!9928)) b!47149))

(assert (= (and d!33138 res!22142) b!47151))

(assert (= (and b!47151 (not res!22144)) b!47152))

(assert (= (and b!47152 (not res!22143)) b!47150))

(declare-fun m!50073 () Bool)

(assert (=> b!47152 m!50073))

(declare-fun m!50075 () Bool)

(assert (=> b!47151 m!50075))

(declare-fun m!50077 () Bool)

(assert (=> b!47148 m!50077))

(declare-fun m!50079 () Bool)

(assert (=> d!33138 m!50079))

(declare-fun m!50081 () Bool)

(assert (=> d!33138 m!50081))

(assert (=> b!47150 m!50079))

(assert (=> b!47150 m!50081))

(assert (=> b!47118 d!33138))

(declare-fun d!33140 () Bool)

(declare-fun lt!8569 () Int)

(assert (=> d!33140 (>= lt!8569 0)))

(declare-fun e!24567 () Int)

(assert (=> d!33140 (= lt!8569 e!24567)))

(declare-fun c!9929 () Bool)

(assert (=> d!33140 (= c!9929 (is-Zero!190 lt!8559))))

(assert (=> d!33140 (= (repr!0 lt!8559) lt!8569)))

(declare-fun b!47153 () Bool)

(assert (=> b!47153 (= e!24567 0)))

(declare-fun b!47154 () Bool)

(assert (=> b!47154 (= e!24567 (+ (repr!0 (n!1342 lt!8559)) 1))))

(assert (= (and d!33140 c!9929) b!47153))

(assert (= (and d!33140 (not c!9929)) b!47154))

(declare-fun m!50083 () Bool)

(assert (=> b!47154 m!50083))

(assert (=> d!33116 d!33140))

(declare-fun d!33142 () Bool)

(declare-fun lt!8570 () Int)

(assert (=> d!33142 (>= lt!8570 0)))

(declare-fun e!24568 () Int)

(assert (=> d!33142 (= lt!8570 e!24568)))

(declare-fun c!9930 () Bool)

(assert (=> d!33142 (= c!9930 (is-Zero!190 (n!1342 (+!5 n1!90 n2!101))))))

(assert (=> d!33142 (= (repr!0 (n!1342 (+!5 n1!90 n2!101))) lt!8570)))

(declare-fun b!47155 () Bool)

(assert (=> b!47155 (= e!24568 0)))

(declare-fun b!47156 () Bool)

(assert (=> b!47156 (= e!24568 (+ (repr!0 (n!1342 (n!1342 (+!5 n1!90 n2!101)))) 1))))

(assert (= (and d!33142 c!9930) b!47155))

(assert (= (and d!33142 (not c!9930)) b!47156))

(assert (=> b!47156 m!50081))

(assert (=> d!33116 d!33142))

(declare-fun d!33144 () Bool)

(declare-fun lt!8573 () Bool)

(assert (=> d!33144 (= lt!8573 (< (repr!0 (+!5 n1!90 n2!101)) (repr!0 Zero!190)))))

(declare-fun e!24571 () Bool)

(assert (=> d!33144 (= lt!8573 e!24571)))

(declare-fun c!9933 () Bool)

(assert (=> d!33144 (= c!9933 (and (is-Succ!187 (+!5 n1!90 n2!101)) (is-Succ!187 Zero!190)))))

(assert (=> d!33144 (= (<!2 (+!5 n1!90 n2!101) Zero!190) lt!8573)))

(declare-fun b!47161 () Bool)

(assert (=> b!47161 (= e!24571 (<!2 (n!1342 (+!5 n1!90 n2!101)) (n!1342 Zero!190)))))

(declare-fun b!47162 () Bool)

(assert (=> b!47162 (= e!24571 (and (is-Zero!190 (+!5 n1!90 n2!101)) (is-Succ!187 Zero!190)))))

(assert (= (and d!33144 c!9933) b!47161))

(assert (= (and d!33144 (not c!9933)) b!47162))

(assert (=> d!33144 m!50005))

(assert (=> d!33144 m!50021))

(declare-fun m!50085 () Bool)

(assert (=> d!33144 m!50085))

(declare-fun m!50087 () Bool)

(assert (=> b!47161 m!50087))

(assert (=> d!33112 d!33144))

(declare-fun d!33146 () Bool)

(declare-fun lt!8574 () Bool)

(assert (=> d!33146 (= lt!8574 (< (repr!0 n2!101) (repr!0 Zero!190)))))

(declare-fun e!24572 () Bool)

(assert (=> d!33146 (= lt!8574 e!24572)))

(declare-fun c!9934 () Bool)

(assert (=> d!33146 (= c!9934 (and (is-Succ!187 n2!101) (is-Succ!187 Zero!190)))))

(assert (=> d!33146 (= (<!2 n2!101 Zero!190) lt!8574)))

(declare-fun b!47163 () Bool)

(assert (=> b!47163 (= e!24572 (<!2 (n!1342 n2!101) (n!1342 Zero!190)))))

(declare-fun b!47164 () Bool)

(assert (=> b!47164 (= e!24572 (and (is-Zero!190 n2!101) (is-Succ!187 Zero!190)))))

(assert (= (and d!33146 c!9934) b!47163))

(assert (= (and d!33146 (not c!9934)) b!47164))

(assert (=> d!33146 m!50033))

(assert (=> d!33146 m!50085))

(declare-fun m!50089 () Bool)

(assert (=> b!47163 m!50089))

(assert (=> d!33132 d!33146))

(declare-fun d!33148 () Bool)

(declare-fun res!22145 () Bool)

(declare-fun e!24573 () Bool)

(assert (=> d!33148 (=> (not res!22145) (not e!24573))))

(assert (=> d!33148 (= res!22145 (not (<!2 (n!1342 n3!28) Zero!190)))))

(assert (=> d!33148 (= (>!2 (n!1342 n3!28) Zero!190) e!24573)))

(declare-fun b!47165 () Bool)

(assert (=> b!47165 (= e!24573 (not (= (n!1342 n3!28) Zero!190)))))

(assert (= (and d!33148 res!22145) b!47165))

(declare-fun m!50091 () Bool)

(assert (=> d!33148 m!50091))

(assert (=> b!47135 d!33148))

(declare-fun d!33150 () Bool)

(declare-fun e!24575 () Bool)

(assert (=> d!33150 e!24575))

(declare-fun res!22146 () Bool)

(assert (=> d!33150 (=> (not res!22146) (not e!24575))))

(declare-fun lt!8575 () Nat!206)

(assert (=> d!33150 (= res!22146 (<= (repr!0 lt!8575) (repr!0 (n!1342 (n!1342 n2!101)))))))

(declare-fun e!24576 () Nat!206)

(assert (=> d!33150 (= lt!8575 e!24576)))

(declare-fun c!9935 () Bool)

(assert (=> d!33150 (= c!9935 (and (is-Succ!187 (n!1342 (n!1342 n2!101))) (is-Succ!187 (n!1342 (n!1342 n3!28)))))))

(assert (=> d!33150 (= (-!4 (n!1342 (n!1342 n2!101)) (n!1342 (n!1342 n3!28))) lt!8575)))

(declare-fun b!47166 () Bool)

(assert (=> b!47166 (= e!24576 (-!4 (n!1342 (n!1342 (n!1342 n2!101))) (n!1342 (n!1342 (n!1342 n3!28)))))))

(declare-fun b!47167 () Bool)

(assert (=> b!47167 (= e!24576 (n!1342 (n!1342 n2!101)))))

(declare-fun b!47168 () Bool)

(declare-fun e!24574 () Bool)

(assert (=> b!47168 (= e!24574 (< (repr!0 lt!8575) (repr!0 (n!1342 (n!1342 n2!101)))))))

(declare-fun b!47169 () Bool)

(assert (=> b!47169 (= e!24575 e!24574)))

(declare-fun res!22148 () Bool)

(assert (=> b!47169 (=> res!22148 e!24574)))

(assert (=> b!47169 (= res!22148 (not (>!2 (n!1342 (n!1342 n2!101)) Zero!190)))))

(declare-fun b!47170 () Bool)

(declare-fun res!22147 () Bool)

(assert (=> b!47170 (=> res!22147 e!24574)))

(assert (=> b!47170 (= res!22147 (not (>!2 (n!1342 (n!1342 n3!28)) Zero!190)))))

(assert (= (and d!33150 c!9935) b!47166))

(assert (= (and d!33150 (not c!9935)) b!47167))

(assert (= (and d!33150 res!22146) b!47169))

(assert (= (and b!47169 (not res!22148)) b!47170))

(assert (= (and b!47170 (not res!22147)) b!47168))

(assert (=> b!47170 m!50073))

(declare-fun m!50093 () Bool)

(assert (=> b!47169 m!50093))

(declare-fun m!50095 () Bool)

(assert (=> b!47166 m!50095))

(declare-fun m!50097 () Bool)

(assert (=> d!33150 m!50097))

(declare-fun m!50099 () Bool)

(assert (=> d!33150 m!50099))

(assert (=> b!47168 m!50097))

(assert (=> b!47168 m!50099))

(assert (=> b!47131 d!33150))

(declare-fun d!33152 () Bool)

(declare-fun res!22149 () Bool)

(declare-fun e!24577 () Bool)

(assert (=> d!33152 (=> (not res!22149) (not e!24577))))

(assert (=> d!33152 (= res!22149 (not (<!2 (n!1342 (+!5 n1!90 n2!101)) Zero!190)))))

(assert (=> d!33152 (= (>!2 (n!1342 (+!5 n1!90 n2!101)) Zero!190) e!24577)))

(declare-fun b!47171 () Bool)

(assert (=> b!47171 (= e!24577 (not (= (n!1342 (+!5 n1!90 n2!101)) Zero!190)))))

(assert (= (and d!33152 res!22149) b!47171))

(declare-fun m!50101 () Bool)

(assert (=> d!33152 m!50101))

(assert (=> b!47121 d!33152))

(declare-fun d!33154 () Bool)

(declare-fun res!22150 () Bool)

(declare-fun e!24578 () Bool)

(assert (=> d!33154 (=> (not res!22150) (not e!24578))))

(assert (=> d!33154 (= res!22150 (not (<!2 (n!1342 n2!101) Zero!190)))))

(assert (=> d!33154 (= (>!2 (n!1342 n2!101) Zero!190) e!24578)))

(declare-fun b!47172 () Bool)

(assert (=> b!47172 (= e!24578 (not (= (n!1342 n2!101) Zero!190)))))

(assert (= (and d!33154 res!22150) b!47172))

(declare-fun m!50103 () Bool)

(assert (=> d!33154 m!50103))

(assert (=> b!47134 d!33154))

(declare-fun d!33156 () Bool)

(declare-fun lt!8576 () Bool)

(assert (=> d!33156 (= lt!8576 (< (repr!0 n2!101) (repr!0 n3!28)))))

(declare-fun e!24579 () Bool)

(assert (=> d!33156 (= lt!8576 e!24579)))

(declare-fun c!9936 () Bool)

(assert (=> d!33156 (= c!9936 (and (is-Succ!187 n2!101) (is-Succ!187 n3!28)))))

(assert (=> d!33156 (= (<!2 n2!101 n3!28) lt!8576)))

(declare-fun b!47173 () Bool)

(assert (=> b!47173 (= e!24579 (<!2 (n!1342 n2!101) (n!1342 n3!28)))))

(declare-fun b!47174 () Bool)

(assert (=> b!47174 (= e!24579 (and (is-Zero!190 n2!101) (is-Succ!187 n3!28)))))

(assert (= (and d!33156 c!9936) b!47173))

(assert (= (and d!33156 (not c!9936)) b!47174))

(assert (=> d!33156 m!50033))

(declare-fun m!50105 () Bool)

(assert (=> d!33156 m!50105))

(declare-fun m!50107 () Bool)

(assert (=> b!47173 m!50107))

(assert (=> d!33124 d!33156))

(declare-fun d!33158 () Bool)

(declare-fun lt!8577 () Int)

(assert (=> d!33158 (>= lt!8577 0)))

(declare-fun e!24580 () Int)

(assert (=> d!33158 (= lt!8577 e!24580)))

(declare-fun c!9937 () Bool)

(assert (=> d!33158 (= c!9937 (is-Zero!190 (n!1342 n2!101)))))

(assert (=> d!33158 (= (repr!0 (n!1342 n2!101)) lt!8577)))

(declare-fun b!47175 () Bool)

(assert (=> b!47175 (= e!24580 0)))

(declare-fun b!47176 () Bool)

(assert (=> b!47176 (= e!24580 (+ (repr!0 (n!1342 (n!1342 n2!101))) 1))))

(assert (= (and d!33158 c!9937) b!47175))

(assert (= (and d!33158 (not c!9937)) b!47176))

(assert (=> b!47176 m!50099))

(assert (=> b!47130 d!33158))

(declare-fun d!33160 () Bool)

(declare-fun lt!8578 () Bool)

(assert (=> d!33160 (= lt!8578 (< (repr!0 n3!28) (repr!0 Zero!190)))))

(declare-fun e!24581 () Bool)

(assert (=> d!33160 (= lt!8578 e!24581)))

(declare-fun c!9938 () Bool)

(assert (=> d!33160 (= c!9938 (and (is-Succ!187 n3!28) (is-Succ!187 Zero!190)))))

(assert (=> d!33160 (= (<!2 n3!28 Zero!190) lt!8578)))

(declare-fun b!47177 () Bool)

(assert (=> b!47177 (= e!24581 (<!2 (n!1342 n3!28) (n!1342 Zero!190)))))

(declare-fun b!47178 () Bool)

(assert (=> b!47178 (= e!24581 (and (is-Zero!190 n3!28) (is-Succ!187 Zero!190)))))

(assert (= (and d!33160 c!9938) b!47177))

(assert (= (and d!33160 (not c!9938)) b!47178))

(assert (=> d!33160 m!50105))

(assert (=> d!33160 m!50085))

(declare-fun m!50109 () Bool)

(assert (=> b!47177 m!50109))

(assert (=> d!33114 d!33160))

(declare-fun d!33162 () Bool)

(declare-fun c!9939 () Bool)

(assert (=> d!33162 (= c!9939 (is-Zero!190 (n!1342 (n!1342 n1!90))))))

(declare-fun e!24582 () Nat!206)

(assert (=> d!33162 (= (+!5 (n!1342 (n!1342 n1!90)) n2!101) e!24582)))

(declare-fun b!47179 () Bool)

(assert (=> b!47179 (= e!24582 n2!101)))

(declare-fun b!47180 () Bool)

(assert (=> b!47180 (= e!24582 (Succ!187 (+!5 (n!1342 (n!1342 (n!1342 n1!90))) n2!101)))))

(assert (= (and d!33162 c!9939) b!47179))

(assert (= (and d!33162 (not c!9939)) b!47180))

(declare-fun m!50111 () Bool)

(assert (=> b!47180 m!50111))

(assert (=> b!47138 d!33162))

(declare-fun d!33164 () Bool)

(declare-fun lt!8579 () Int)

(assert (=> d!33164 (>= lt!8579 0)))

(declare-fun e!24583 () Int)

(assert (=> d!33164 (= lt!8579 e!24583)))

(declare-fun c!9940 () Bool)

(assert (=> d!33164 (= c!9940 (is-Zero!190 (n!1342 lt!8557)))))

(assert (=> d!33164 (= (repr!0 (n!1342 lt!8557)) lt!8579)))

(declare-fun b!47181 () Bool)

(assert (=> b!47181 (= e!24583 0)))

(declare-fun b!47182 () Bool)

(assert (=> b!47182 (= e!24583 (+ (repr!0 (n!1342 (n!1342 lt!8557))) 1))))

(assert (= (and d!33164 c!9940) b!47181))

(assert (= (and d!33164 (not c!9940)) b!47182))

(declare-fun m!50113 () Bool)

(assert (=> b!47182 m!50113))

(assert (=> b!47140 d!33164))

(assert (=> b!47122 d!33148))

(declare-fun d!33166 () Bool)

(declare-fun lt!8580 () Int)

(assert (=> d!33166 (>= lt!8580 0)))

(declare-fun e!24584 () Int)

(assert (=> d!33166 (= lt!8580 e!24584)))

(declare-fun c!9941 () Bool)

(assert (=> d!33166 (= c!9941 (is-Zero!190 lt!8564))))

(assert (=> d!33166 (= (repr!0 lt!8564) lt!8580)))

(declare-fun b!47183 () Bool)

(assert (=> b!47183 (= e!24584 0)))

(declare-fun b!47184 () Bool)

(assert (=> b!47184 (= e!24584 (+ (repr!0 (n!1342 lt!8564)) 1))))

(assert (= (and d!33166 c!9941) b!47183))

(assert (= (and d!33166 (not c!9941)) b!47184))

(declare-fun m!50115 () Bool)

(assert (=> b!47184 m!50115))

(assert (=> b!47133 d!33166))

(assert (=> b!47133 d!33158))

(declare-fun d!33168 () Bool)

(declare-fun c!9942 () Bool)

(assert (=> d!33168 (= c!9942 (is-Zero!190 (n!1342 (n!1342 n1!90))))))

(declare-fun e!24585 () Nat!206)

(assert (=> d!33168 (= (+!5 (n!1342 (n!1342 n1!90)) (-!4 n2!101 n3!28)) e!24585)))

(declare-fun b!47185 () Bool)

(assert (=> b!47185 (= e!24585 (-!4 n2!101 n3!28))))

(declare-fun b!47186 () Bool)

(assert (=> b!47186 (= e!24585 (Succ!187 (+!5 (n!1342 (n!1342 (n!1342 n1!90))) (-!4 n2!101 n3!28))))))

(assert (= (and d!33168 c!9942) b!47185))

(assert (= (and d!33168 (not c!9942)) b!47186))

(assert (=> b!47186 m!50009))

(declare-fun m!50117 () Bool)

(assert (=> b!47186 m!50117))

(assert (=> b!47145 d!33168))

(assert (=> d!33122 d!33166))

(assert (=> d!33122 d!33158))

(assert (=> b!47120 d!33140))

(assert (=> b!47120 d!33142))

(assert (=> b!47142 d!33142))

(push 1)

(assert (not b!47182))

(assert (not d!33152))

(assert (not b!47163))

(assert (not b!47177))

(assert (not b!47147))

(assert (not b!47186))

(assert (not b!47148))

(assert (not d!33144))

(assert (not b!47161))

(assert (not b!47156))

(assert (not b!47176))

(assert (not b!47152))

(assert (not b!47173))

(assert (not b!47150))

(assert (not b!47184))

(assert (not b!47170))

(assert (not b!47168))

(assert (not b!47166))

(assert (not d!33138))

(assert (not d!33156))

(assert (not b!47151))

(assert (not d!33148))

(assert (not d!33154))

(assert (not b!47154))

(assert (not d!33146))

(assert (not d!33150))

(assert (not d!33160))

(assert (not b!47180))

(assert (not b!47169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

