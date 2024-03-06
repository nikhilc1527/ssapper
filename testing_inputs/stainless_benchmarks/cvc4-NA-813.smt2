; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6154 () Bool)

(assert start!6154)

(declare-fun res!21532 () Bool)

(declare-fun e!23667 () Bool)

(assert (=> start!6154 (=> (not res!21532) (not e!23667))))

(declare-datatypes () ((Nat!174 (Zero!158) (Succ!155 (n!1306 Nat!174)))))

(declare-fun n!723 () Nat!174)

(declare-datatypes () ((Unit!553 (Unit!554))))

(declare-fun x$73!17 () Unit!553)

(declare-fun Unit!555 () Unit!553)

(assert (=> start!6154 (= res!21532 (and (is-Zero!158 n!723) (= x$73!17 Unit!555)))))

(assert (=> start!6154 e!23667))

(assert (=> start!6154 true))

(declare-fun b!45599 () Bool)

(declare-fun isEven!1 (Nat!174) Bool)

(declare-fun *!4 (Nat!174 Nat!174) Nat!174)

(assert (=> b!45599 (= e!23667 (not (isEven!1 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))))))

(assert (= (and start!6154 res!21532) b!45599))

(declare-fun m!48621 () Bool)

(assert (=> b!45599 m!48621))

(assert (=> b!45599 m!48621))

(declare-fun m!48623 () Bool)

(assert (=> b!45599 m!48623))

(push 1)

(assert (not b!45599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32032 () Bool)

(declare-fun res!21537 () Bool)

(declare-fun e!23672 () Bool)

(assert (=> d!32032 (=> res!21537 e!23672)))

(assert (=> d!32032 (= res!21537 (is-Zero!158 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))))

(assert (=> d!32032 (= (isEven!1 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)) e!23672)))

(declare-fun b!45604 () Bool)

(declare-fun e!23673 () Bool)

(assert (=> b!45604 (= e!23672 e!23673)))

(declare-fun res!21538 () Bool)

(assert (=> b!45604 (=> (not res!21538) (not e!23673))))

(assert (=> b!45604 (= res!21538 (not (and (is-Succ!155 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)) (is-Zero!158 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))))))))

(declare-fun b!45605 () Bool)

(assert (=> b!45605 (= e!23673 (not (isEven!1 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))))))

(assert (= (and d!32032 (not res!21537)) b!45604))

(assert (= (and b!45604 res!21538) b!45605))

(declare-fun m!48625 () Bool)

(assert (=> b!45605 m!48625))

(assert (=> b!45599 d!32032))

(declare-fun d!32034 () Bool)

(declare-fun c!9682 () Bool)

(assert (=> d!32034 (= c!9682 (is-Zero!158 (Succ!155 (Succ!155 Zero!158))))))

(declare-fun e!23676 () Nat!174)

(assert (=> d!32034 (= (*!4 (Succ!155 (Succ!155 Zero!158)) n!723) e!23676)))

(declare-fun b!45610 () Bool)

(assert (=> b!45610 (= e!23676 Zero!158)))

(declare-fun b!45611 () Bool)

(declare-fun +!5 (Nat!174 Nat!174) Nat!174)

(assert (=> b!45611 (= e!23676 (+!5 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723) n!723))))

(assert (= (and d!32034 c!9682) b!45610))

(assert (= (and d!32034 (not c!9682)) b!45611))

(declare-fun m!48627 () Bool)

(assert (=> b!45611 m!48627))

(assert (=> b!45611 m!48627))

(declare-fun m!48629 () Bool)

(assert (=> b!45611 m!48629))

(assert (=> b!45599 d!32034))

(push 1)

(assert (not b!45611))

(assert (not b!45605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32036 () Bool)

(declare-fun c!9685 () Bool)

(assert (=> d!32036 (= c!9685 (is-Zero!158 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723)))))

(declare-fun e!23679 () Nat!174)

(assert (=> d!32036 (= (+!5 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723) n!723) e!23679)))

(declare-fun b!45616 () Bool)

(assert (=> b!45616 (= e!23679 n!723)))

(declare-fun b!45617 () Bool)

(assert (=> b!45617 (= e!23679 (Succ!155 (+!5 (n!1306 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723)) n!723)))))

(assert (= (and d!32036 c!9685) b!45616))

(assert (= (and d!32036 (not c!9685)) b!45617))

(declare-fun m!48631 () Bool)

(assert (=> b!45617 m!48631))

(assert (=> b!45611 d!32036))

(declare-fun d!32038 () Bool)

(declare-fun c!9686 () Bool)

(assert (=> d!32038 (= c!9686 (is-Zero!158 (n!1306 (Succ!155 (Succ!155 Zero!158)))))))

(declare-fun e!23680 () Nat!174)

(assert (=> d!32038 (= (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723) e!23680)))

(declare-fun b!45618 () Bool)

(assert (=> b!45618 (= e!23680 Zero!158)))

(declare-fun b!45619 () Bool)

(assert (=> b!45619 (= e!23680 (+!5 (*!4 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158)))) n!723) n!723))))

(assert (= (and d!32038 c!9686) b!45618))

(assert (= (and d!32038 (not c!9686)) b!45619))

(declare-fun m!48633 () Bool)

(assert (=> b!45619 m!48633))

(assert (=> b!45619 m!48633))

(declare-fun m!48635 () Bool)

(assert (=> b!45619 m!48635))

(assert (=> b!45611 d!32038))

(declare-fun d!32040 () Bool)

(declare-fun res!21539 () Bool)

(declare-fun e!23681 () Bool)

(assert (=> d!32040 (=> res!21539 e!23681)))

(assert (=> d!32040 (= res!21539 (is-Zero!158 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))))))

(assert (=> d!32040 (= (isEven!1 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))) e!23681)))

(declare-fun b!45620 () Bool)

(declare-fun e!23682 () Bool)

(assert (=> b!45620 (= e!23681 e!23682)))

(declare-fun res!21540 () Bool)

(assert (=> b!45620 (=> (not res!21540) (not e!23682))))

(assert (=> b!45620 (= res!21540 (not (and (is-Succ!155 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))) (is-Zero!158 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))))))))

(declare-fun b!45621 () Bool)

(assert (=> b!45621 (= e!23682 (not (isEven!1 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))))))))

(assert (= (and d!32040 (not res!21539)) b!45620))

(assert (= (and b!45620 res!21540) b!45621))

(declare-fun m!48637 () Bool)

(assert (=> b!45621 m!48637))

(assert (=> b!45605 d!32040))

(push 1)

(assert (not b!45619))

(assert (not b!45621))

(assert (not b!45617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32042 () Bool)

(declare-fun c!9687 () Bool)

(assert (=> d!32042 (= c!9687 (is-Zero!158 (*!4 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158)))) n!723)))))

(declare-fun e!23683 () Nat!174)

(assert (=> d!32042 (= (+!5 (*!4 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158)))) n!723) n!723) e!23683)))

(declare-fun b!45622 () Bool)

(assert (=> b!45622 (= e!23683 n!723)))

(declare-fun b!45623 () Bool)

(assert (=> b!45623 (= e!23683 (Succ!155 (+!5 (n!1306 (*!4 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158)))) n!723)) n!723)))))

(assert (= (and d!32042 c!9687) b!45622))

(assert (= (and d!32042 (not c!9687)) b!45623))

(declare-fun m!48639 () Bool)

(assert (=> b!45623 m!48639))

(assert (=> b!45619 d!32042))

(declare-fun d!32044 () Bool)

(declare-fun c!9688 () Bool)

(assert (=> d!32044 (= c!9688 (is-Zero!158 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158))))))))

(declare-fun e!23684 () Nat!174)

(assert (=> d!32044 (= (*!4 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158)))) n!723) e!23684)))

(declare-fun b!45624 () Bool)

(assert (=> b!45624 (= e!23684 Zero!158)))

(declare-fun b!45625 () Bool)

(assert (=> b!45625 (= e!23684 (+!5 (*!4 (n!1306 (n!1306 (n!1306 (Succ!155 (Succ!155 Zero!158))))) n!723) n!723))))

(assert (= (and d!32044 c!9688) b!45624))

(assert (= (and d!32044 (not c!9688)) b!45625))

(declare-fun m!48641 () Bool)

(assert (=> b!45625 m!48641))

(assert (=> b!45625 m!48641))

(declare-fun m!48643 () Bool)

(assert (=> b!45625 m!48643))

(assert (=> b!45619 d!32044))

(declare-fun d!32046 () Bool)

(declare-fun res!21541 () Bool)

(declare-fun e!23685 () Bool)

(assert (=> d!32046 (=> res!21541 e!23685)))

(assert (=> d!32046 (= res!21541 (is-Zero!158 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))))))

(assert (=> d!32046 (= (isEven!1 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))) e!23685)))

(declare-fun b!45626 () Bool)

(declare-fun e!23686 () Bool)

(assert (=> b!45626 (= e!23685 e!23686)))

(declare-fun res!21542 () Bool)

(assert (=> b!45626 (=> (not res!21542) (not e!23686))))

(assert (=> b!45626 (= res!21542 (not (and (is-Succ!155 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))) (is-Zero!158 (n!1306 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723))))))))))

(declare-fun b!45627 () Bool)

(assert (=> b!45627 (= e!23686 (not (isEven!1 (n!1306 (n!1306 (n!1306 (*!4 (Succ!155 (Succ!155 Zero!158)) n!723)))))))))

(assert (= (and d!32046 (not res!21541)) b!45626))

(assert (= (and b!45626 res!21542) b!45627))

(declare-fun m!48645 () Bool)

(assert (=> b!45627 m!48645))

(assert (=> b!45621 d!32046))

(declare-fun d!32048 () Bool)

(declare-fun c!9689 () Bool)

(assert (=> d!32048 (= c!9689 (is-Zero!158 (n!1306 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723))))))

(declare-fun e!23687 () Nat!174)

(assert (=> d!32048 (= (+!5 (n!1306 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723)) n!723) e!23687)))

(declare-fun b!45628 () Bool)

(assert (=> b!45628 (= e!23687 n!723)))

(declare-fun b!45629 () Bool)

(assert (=> b!45629 (= e!23687 (Succ!155 (+!5 (n!1306 (n!1306 (*!4 (n!1306 (Succ!155 (Succ!155 Zero!158))) n!723))) n!723)))))

(assert (= (and d!32048 c!9689) b!45628))

(assert (= (and d!32048 (not c!9689)) b!45629))

(declare-fun m!48647 () Bool)

(assert (=> b!45629 m!48647))

(assert (=> b!45617 d!32048))

(push 1)

(assert (not b!45625))

(assert (not b!45629))

(assert (not b!45627))

(assert (not b!45623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

