; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6684 () Bool)

(assert start!6684)

(declare-fun res!23000 () Bool)

(declare-fun e!25889 () Bool)

(assert (=> start!6684 (=> (not res!23000) (not e!25889))))

(declare-datatypes () ((Nat!242 (Zero!226) (Succ!223 (n!1379 Nat!242)))))

(declare-fun n1!77 () Nat!242)

(declare-datatypes () ((Unit!746 (Unit!747))))

(declare-fun x$22!38 () Unit!746)

(declare-fun Unit!748 () Unit!746)

(assert (=> start!6684 (= res!23000 (and (is-Zero!226 n1!77) (= x$22!38 Unit!748)))))

(assert (=> start!6684 e!25889))

(assert (=> start!6684 true))

(declare-fun b!49808 () Bool)

(declare-fun n2!88 () Nat!242)

(declare-fun n3!17 () Nat!242)

(declare-fun *!4 (Nat!242 Nat!242) Nat!242)

(declare-fun +!5 (Nat!242 Nat!242) Nat!242)

(assert (=> b!49808 (= e!25889 (not (= (*!4 n1!77 (+!5 n2!88 n3!17)) (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)))))))

(assert (= (and start!6684 res!23000) b!49808))

(declare-fun m!53269 () Bool)

(assert (=> b!49808 m!53269))

(declare-fun m!53271 () Bool)

(assert (=> b!49808 m!53271))

(declare-fun m!53273 () Bool)

(assert (=> b!49808 m!53273))

(declare-fun m!53275 () Bool)

(assert (=> b!49808 m!53275))

(assert (=> b!49808 m!53271))

(assert (=> b!49808 m!53269))

(assert (=> b!49808 m!53275))

(declare-fun m!53277 () Bool)

(assert (=> b!49808 m!53277))

(push 1)

(assert (not b!49808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!41540 () Bool)

(declare-fun c!10535 () Bool)

(assert (=> d!41540 (= c!10535 (is-Zero!226 n1!77))))

(declare-fun e!25892 () Nat!242)

(assert (=> d!41540 (= (*!4 n1!77 (+!5 n2!88 n3!17)) e!25892)))

(declare-fun b!49813 () Bool)

(assert (=> b!49813 (= e!25892 Zero!226)))

(declare-fun b!49814 () Bool)

(assert (=> b!49814 (= e!25892 (+!5 (*!4 (n!1379 n1!77) (+!5 n2!88 n3!17)) (+!5 n2!88 n3!17)))))

(assert (= (and d!41540 c!10535) b!49813))

(assert (= (and d!41540 (not c!10535)) b!49814))

(assert (=> b!49814 m!53271))

(declare-fun m!53279 () Bool)

(assert (=> b!49814 m!53279))

(assert (=> b!49814 m!53279))

(assert (=> b!49814 m!53271))

(declare-fun m!53281 () Bool)

(assert (=> b!49814 m!53281))

(assert (=> b!49808 d!41540))

(declare-fun d!41542 () Bool)

(declare-fun c!10538 () Bool)

(assert (=> d!41542 (= c!10538 (is-Zero!226 (*!4 n1!77 n2!88)))))

(declare-fun e!25895 () Nat!242)

(assert (=> d!41542 (= (+!5 (*!4 n1!77 n2!88) (*!4 n1!77 n3!17)) e!25895)))

(declare-fun b!49819 () Bool)

(assert (=> b!49819 (= e!25895 (*!4 n1!77 n3!17))))

(declare-fun b!49820 () Bool)

(assert (=> b!49820 (= e!25895 (Succ!223 (+!5 (n!1379 (*!4 n1!77 n2!88)) (*!4 n1!77 n3!17))))))

(assert (= (and d!41542 c!10538) b!49819))

(assert (= (and d!41542 (not c!10538)) b!49820))

(assert (=> b!49820 m!53275))

(declare-fun m!53283 () Bool)

(assert (=> b!49820 m!53283))

(assert (=> b!49808 d!41542))

(declare-fun d!41544 () Bool)

(declare-fun c!10539 () Bool)

(assert (=> d!41544 (= c!10539 (is-Zero!226 n1!77))))

(declare-fun e!25896 () Nat!242)

(assert (=> d!41544 (= (*!4 n1!77 n3!17) e!25896)))

(declare-fun b!49821 () Bool)

(assert (=> b!49821 (= e!25896 Zero!226)))

(declare-fun b!49822 () Bool)

(assert (=> b!49822 (= e!25896 (+!5 (*!4 (n!1379 n1!77) n3!17) n3!17))))

(assert (= (and d!41544 c!10539) b!49821))

(assert (= (and d!41544 (not c!10539)) b!49822))

(declare-fun m!53285 () Bool)

(assert (=> b!49822 m!53285))

(assert (=> b!49822 m!53285))

(declare-fun m!53287 () Bool)

(assert (=> b!49822 m!53287))

(assert (=> b!49808 d!41544))

(declare-fun d!41546 () Bool)

(declare-fun c!10540 () Bool)

(assert (=> d!41546 (= c!10540 (is-Zero!226 n2!88))))

(declare-fun e!25897 () Nat!242)

(assert (=> d!41546 (= (+!5 n2!88 n3!17) e!25897)))

(declare-fun b!49823 () Bool)

(assert (=> b!49823 (= e!25897 n3!17)))

(declare-fun b!49824 () Bool)

(assert (=> b!49824 (= e!25897 (Succ!223 (+!5 (n!1379 n2!88) n3!17)))))

(assert (= (and d!41546 c!10540) b!49823))

(assert (= (and d!41546 (not c!10540)) b!49824))

(declare-fun m!53289 () Bool)

(assert (=> b!49824 m!53289))

(assert (=> b!49808 d!41546))

(declare-fun d!41548 () Bool)

(declare-fun c!10541 () Bool)

(assert (=> d!41548 (= c!10541 (is-Zero!226 n1!77))))

(declare-fun e!25898 () Nat!242)

(assert (=> d!41548 (= (*!4 n1!77 n2!88) e!25898)))

(declare-fun b!49825 () Bool)

(assert (=> b!49825 (= e!25898 Zero!226)))

(declare-fun b!49826 () Bool)

(assert (=> b!49826 (= e!25898 (+!5 (*!4 (n!1379 n1!77) n2!88) n2!88))))

(assert (= (and d!41548 c!10541) b!49825))

(assert (= (and d!41548 (not c!10541)) b!49826))

(declare-fun m!53291 () Bool)

(assert (=> b!49826 m!53291))

(assert (=> b!49826 m!53291))

(declare-fun m!53293 () Bool)

(assert (=> b!49826 m!53293))

(assert (=> b!49808 d!41548))

(push 1)

(assert (not b!49814))

(assert (not b!49820))

(assert (not b!49826))

(assert (not b!49822))

(assert (not b!49824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

