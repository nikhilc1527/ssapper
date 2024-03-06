; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6674 () Bool)

(assert start!6674)

(declare-fun b!49774 () Bool)

(declare-datatypes () ((Unit!742 (Unit!743))))

(declare-fun e!25871 () Unit!742)

(declare-fun res!22995 () Unit!742)

(assert (=> b!49774 (= e!25871 res!22995)))

(assert (=> b!49774 true))

(declare-fun b!49775 () Bool)

(declare-fun e!25872 () Unit!742)

(declare-fun Unit!744 () Unit!742)

(assert (=> b!49775 (= e!25872 Unit!744)))

(declare-datatypes () ((Nat!240 (Zero!224) (Succ!221 (n!1377 Nat!240)))))

(declare-fun n1!139 () Nat!240)

(declare-fun n2!150 () Nat!240)

(declare-fun *!4 (Nat!240 Nat!240) Nat!240)

(assert (=> b!49775 (= (*!4 n1!139 n2!150) (*!4 n2!150 n1!139))))

(declare-fun b!49776 () Bool)

(declare-fun e!25873 () Unit!742)

(declare-fun Unit!745 () Unit!742)

(assert (=> b!49776 (= e!25873 Unit!745)))

(declare-fun b!49777 () Bool)

(assert (=> b!49777 (= e!25873 e!25872)))

(declare-fun c!10518 () Bool)

(declare-fun lt!8797 () Bool)

(assert (=> b!49777 (= c!10518 (or lt!8797 (and (is-Succ!221 n1!139) (is-Zero!224 n2!150))))))

(declare-fun lt!8796 () Unit!742)

(assert (=> b!49777 (= lt!8796 e!25871)))

(declare-fun c!10520 () Bool)

(assert (=> b!49777 (= c!10520 (or lt!8797 (and (is-Succ!221 n1!139) (is-Zero!224 n2!150))))))

(assert (=> b!49777 (= lt!8797 (and (is-Zero!224 n1!139) (is-Succ!221 n2!150)))))

(declare-fun res!22996 () Bool)

(declare-fun e!25874 () Bool)

(assert (=> start!6674 (=> (not res!22996) (not e!25874))))

(declare-fun t!5146 () Unit!742)

(assert (=> start!6674 (= res!22996 (= t!5146 e!25873))))

(declare-fun c!10519 () Bool)

(assert (=> start!6674 (= c!10519 (and (is-Zero!224 n1!139) (is-Zero!224 n2!150)))))

(assert (=> start!6674 e!25874))

(assert (=> start!6674 true))

(declare-fun b!49778 () Bool)

(declare-fun res!22997 () Bool)

(assert (=> b!49778 (=> (not res!22997) (not e!25874))))

(declare-fun x$34!54 () Unit!742)

(declare-fun res!17681 () Unit!742)

(assert (=> b!49778 (= res!22997 (and (= res!17681 t!5146) (= x$34!54 res!17681)))))

(declare-fun b!49779 () Bool)

(declare-fun commutative_times!0 (Nat!240 Nat!240) Unit!742)

(assert (=> b!49779 (= e!25871 (commutative_times!0 (ite lt!8797 n1!139 (n!1377 n1!139)) (ite lt!8797 (n!1377 n2!150) n2!150)))))

(declare-fun b!49780 () Bool)

(assert (=> b!49780 (= e!25872 lt!8796)))

(declare-fun b!49781 () Bool)

(assert (=> b!49781 (= e!25874 (not (= (*!4 n1!139 n2!150) (*!4 n2!150 n1!139))))))

(assert (= (and b!49777 c!10520) b!49779))

(assert (= (and b!49777 (not c!10520)) b!49774))

(assert (= (and b!49777 c!10518) b!49780))

(assert (= (and b!49777 (not c!10518)) b!49775))

(assert (= (and start!6674 c!10519) b!49776))

(assert (= (and start!6674 (not c!10519)) b!49777))

(assert (= (and start!6674 res!22996) b!49778))

(assert (= (and b!49778 res!22997) b!49781))

(declare-fun m!53231 () Bool)

(assert (=> b!49775 m!53231))

(declare-fun m!53233 () Bool)

(assert (=> b!49775 m!53233))

(declare-fun m!53235 () Bool)

(assert (=> b!49779 m!53235))

(assert (=> b!49781 m!53231))

(assert (=> b!49781 m!53233))

(push 1)

(assert (not b!49775))

(assert (not b!49779))

(assert (not b!49781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!41522 () Bool)

(declare-fun c!10523 () Bool)

(assert (=> d!41522 (= c!10523 (is-Zero!224 n1!139))))

(declare-fun e!25877 () Nat!240)

(assert (=> d!41522 (= (*!4 n1!139 n2!150) e!25877)))

(declare-fun b!49786 () Bool)

(assert (=> b!49786 (= e!25877 Zero!224)))

(declare-fun b!49787 () Bool)

(declare-fun +!5 (Nat!240 Nat!240) Nat!240)

(assert (=> b!49787 (= e!25877 (+!5 (*!4 (n!1377 n1!139) n2!150) n2!150))))

(assert (= (and d!41522 c!10523) b!49786))

(assert (= (and d!41522 (not c!10523)) b!49787))

(declare-fun m!53237 () Bool)

(assert (=> b!49787 m!53237))

(assert (=> b!49787 m!53237))

(declare-fun m!53239 () Bool)

(assert (=> b!49787 m!53239))

(assert (=> b!49775 d!41522))

(declare-fun d!41524 () Bool)

(declare-fun c!10524 () Bool)

(assert (=> d!41524 (= c!10524 (is-Zero!224 n2!150))))

(declare-fun e!25878 () Nat!240)

(assert (=> d!41524 (= (*!4 n2!150 n1!139) e!25878)))

(declare-fun b!49788 () Bool)

(assert (=> b!49788 (= e!25878 Zero!224)))

(declare-fun b!49789 () Bool)

(assert (=> b!49789 (= e!25878 (+!5 (*!4 (n!1377 n2!150) n1!139) n1!139))))

(assert (= (and d!41524 c!10524) b!49788))

(assert (= (and d!41524 (not c!10524)) b!49789))

(declare-fun m!53241 () Bool)

(assert (=> b!49789 m!53241))

(assert (=> b!49789 m!53241))

(declare-fun m!53243 () Bool)

(assert (=> b!49789 m!53243))

(assert (=> b!49775 d!41524))

(declare-fun d!41526 () Bool)

(assert (=> d!41526 (= (*!4 (ite lt!8797 n1!139 (n!1377 n1!139)) (ite lt!8797 (n!1377 n2!150) n2!150)) (*!4 (ite lt!8797 (n!1377 n2!150) n2!150) (ite lt!8797 n1!139 (n!1377 n1!139))))))

(assert (=> d!41526 true))

(declare-fun x$34!128 () Unit!742)

(assert (=> d!41526 (= (commutative_times!0 (ite lt!8797 n1!139 (n!1377 n1!139)) (ite lt!8797 (n!1377 n2!150) n2!150)) x$34!128)))

(declare-fun bs!22810 () Bool)

(assert (= bs!22810 d!41526))

(declare-fun m!53245 () Bool)

(assert (=> bs!22810 m!53245))

(declare-fun m!53247 () Bool)

(assert (=> bs!22810 m!53247))

(assert (=> b!49779 d!41526))

(assert (=> b!49781 d!41522))

(assert (=> b!49781 d!41524))

(push 1)

(assert (not b!49789))

(assert (not b!49787))

(assert (not d!41526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!41528 () Bool)

(declare-fun c!10527 () Bool)

(assert (=> d!41528 (= c!10527 (is-Zero!224 (*!4 (n!1377 n2!150) n1!139)))))

(declare-fun e!25881 () Nat!240)

(assert (=> d!41528 (= (+!5 (*!4 (n!1377 n2!150) n1!139) n1!139) e!25881)))

(declare-fun b!49794 () Bool)

(assert (=> b!49794 (= e!25881 n1!139)))

(declare-fun b!49795 () Bool)

(assert (=> b!49795 (= e!25881 (Succ!221 (+!5 (n!1377 (*!4 (n!1377 n2!150) n1!139)) n1!139)))))

(assert (= (and d!41528 c!10527) b!49794))

(assert (= (and d!41528 (not c!10527)) b!49795))

(declare-fun m!53249 () Bool)

(assert (=> b!49795 m!53249))

(assert (=> b!49789 d!41528))

(declare-fun d!41530 () Bool)

(declare-fun c!10528 () Bool)

(assert (=> d!41530 (= c!10528 (is-Zero!224 (n!1377 n2!150)))))

(declare-fun e!25882 () Nat!240)

(assert (=> d!41530 (= (*!4 (n!1377 n2!150) n1!139) e!25882)))

(declare-fun b!49796 () Bool)

(assert (=> b!49796 (= e!25882 Zero!224)))

(declare-fun b!49797 () Bool)

(assert (=> b!49797 (= e!25882 (+!5 (*!4 (n!1377 (n!1377 n2!150)) n1!139) n1!139))))

(assert (= (and d!41530 c!10528) b!49796))

(assert (= (and d!41530 (not c!10528)) b!49797))

(declare-fun m!53251 () Bool)

(assert (=> b!49797 m!53251))

(assert (=> b!49797 m!53251))

(declare-fun m!53253 () Bool)

(assert (=> b!49797 m!53253))

(assert (=> b!49789 d!41530))

(declare-fun d!41532 () Bool)

(declare-fun c!10529 () Bool)

(assert (=> d!41532 (= c!10529 (is-Zero!224 (*!4 (n!1377 n1!139) n2!150)))))

(declare-fun e!25883 () Nat!240)

(assert (=> d!41532 (= (+!5 (*!4 (n!1377 n1!139) n2!150) n2!150) e!25883)))

(declare-fun b!49798 () Bool)

(assert (=> b!49798 (= e!25883 n2!150)))

(declare-fun b!49799 () Bool)

(assert (=> b!49799 (= e!25883 (Succ!221 (+!5 (n!1377 (*!4 (n!1377 n1!139) n2!150)) n2!150)))))

(assert (= (and d!41532 c!10529) b!49798))

(assert (= (and d!41532 (not c!10529)) b!49799))

(declare-fun m!53255 () Bool)

(assert (=> b!49799 m!53255))

(assert (=> b!49787 d!41532))

(declare-fun d!41534 () Bool)

(declare-fun c!10530 () Bool)

(assert (=> d!41534 (= c!10530 (is-Zero!224 (n!1377 n1!139)))))

(declare-fun e!25884 () Nat!240)

(assert (=> d!41534 (= (*!4 (n!1377 n1!139) n2!150) e!25884)))

(declare-fun b!49800 () Bool)

(assert (=> b!49800 (= e!25884 Zero!224)))

(declare-fun b!49801 () Bool)

(assert (=> b!49801 (= e!25884 (+!5 (*!4 (n!1377 (n!1377 n1!139)) n2!150) n2!150))))

(assert (= (and d!41534 c!10530) b!49800))

(assert (= (and d!41534 (not c!10530)) b!49801))

(declare-fun m!53257 () Bool)

(assert (=> b!49801 m!53257))

(assert (=> b!49801 m!53257))

(declare-fun m!53259 () Bool)

(assert (=> b!49801 m!53259))

(assert (=> b!49787 d!41534))

(declare-fun d!41536 () Bool)

(declare-fun c!10531 () Bool)

(assert (=> d!41536 (= c!10531 (is-Zero!224 (ite lt!8797 n1!139 (n!1377 n1!139))))))

(declare-fun e!25885 () Nat!240)

(assert (=> d!41536 (= (*!4 (ite lt!8797 n1!139 (n!1377 n1!139)) (ite lt!8797 (n!1377 n2!150) n2!150)) e!25885)))

(declare-fun b!49802 () Bool)

(assert (=> b!49802 (= e!25885 Zero!224)))

(declare-fun b!49803 () Bool)

(assert (=> b!49803 (= e!25885 (+!5 (*!4 (n!1377 (ite lt!8797 n1!139 (n!1377 n1!139))) (ite lt!8797 (n!1377 n2!150) n2!150)) (ite lt!8797 (n!1377 n2!150) n2!150)))))

(assert (= (and d!41536 c!10531) b!49802))

(assert (= (and d!41536 (not c!10531)) b!49803))

(declare-fun m!53261 () Bool)

(assert (=> b!49803 m!53261))

(assert (=> b!49803 m!53261))

(declare-fun m!53263 () Bool)

(assert (=> b!49803 m!53263))

(assert (=> d!41526 d!41536))

(declare-fun d!41538 () Bool)

(declare-fun c!10532 () Bool)

(assert (=> d!41538 (= c!10532 (is-Zero!224 (ite lt!8797 (n!1377 n2!150) n2!150)))))

(declare-fun e!25886 () Nat!240)

(assert (=> d!41538 (= (*!4 (ite lt!8797 (n!1377 n2!150) n2!150) (ite lt!8797 n1!139 (n!1377 n1!139))) e!25886)))

(declare-fun b!49804 () Bool)

(assert (=> b!49804 (= e!25886 Zero!224)))

(declare-fun b!49805 () Bool)

(assert (=> b!49805 (= e!25886 (+!5 (*!4 (n!1377 (ite lt!8797 (n!1377 n2!150) n2!150)) (ite lt!8797 n1!139 (n!1377 n1!139))) (ite lt!8797 n1!139 (n!1377 n1!139))))))

(assert (= (and d!41538 c!10532) b!49804))

(assert (= (and d!41538 (not c!10532)) b!49805))

(declare-fun m!53265 () Bool)

(assert (=> b!49805 m!53265))

(assert (=> b!49805 m!53265))

(declare-fun m!53267 () Bool)

(assert (=> b!49805 m!53267))

(assert (=> d!41526 d!41538))

(push 1)

(assert (not b!49799))

(assert (not b!49803))

(assert (not b!49801))

(assert (not b!49795))

(assert (not b!49797))

(assert (not b!49805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

