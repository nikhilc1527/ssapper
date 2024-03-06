; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6344 () Bool)

(assert start!6344)

(declare-fun res!22157 () Bool)

(declare-fun e!24588 () Bool)

(assert (=> start!6344 (=> (not res!22157) (not e!24588))))

(declare-datatypes () ((Nat!208 (Zero!192) (Succ!189 (n!1344 Nat!208)))))

(declare-fun n!796 () Nat!208)

(declare-fun isEven!1 (Nat!208) Bool)

(assert (=> start!6344 (= res!22157 (isEven!1 n!796))))

(assert (=> start!6344 e!24588))

(assert (=> start!6344 true))

(declare-fun b!47193 () Bool)

(declare-fun res!22158 () Bool)

(assert (=> b!47193 (=> (not res!22158) (not e!24588))))

(declare-fun >!2 (Nat!208 Nat!208) Bool)

(assert (=> b!47193 (= res!22158 (>!2 n!796 Zero!192))))

(declare-fun b!47194 () Bool)

(declare-fun res!22159 () Bool)

(assert (=> b!47194 (=> (not res!22159) (not e!24588))))

(declare-fun thiss!5798 () Nat!208)

(declare-fun that!1231 () Nat!208)

(assert (=> b!47194 (= res!22159 (and (= thiss!5798 n!796) (= that!1231 (Succ!189 (Succ!189 Zero!192)))))))

(declare-fun b!47195 () Bool)

(assert (=> b!47195 (= e!24588 (not (>!2 that!1231 Zero!192)))))

(assert (= (and start!6344 res!22157) b!47193))

(assert (= (and b!47193 res!22158) b!47194))

(assert (= (and b!47194 res!22159) b!47195))

(declare-fun m!50121 () Bool)

(assert (=> start!6344 m!50121))

(declare-fun m!50123 () Bool)

(assert (=> b!47193 m!50123))

(declare-fun m!50125 () Bool)

(assert (=> b!47195 m!50125))

(push 1)

(assert (not b!47193))

(assert (not b!47195))

(assert (not start!6344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33170 () Bool)

(declare-fun res!22162 () Bool)

(declare-fun e!24591 () Bool)

(assert (=> d!33170 (=> (not res!22162) (not e!24591))))

(declare-fun <!2 (Nat!208 Nat!208) Bool)

(assert (=> d!33170 (= res!22162 (not (<!2 n!796 Zero!192)))))

(assert (=> d!33170 (= (>!2 n!796 Zero!192) e!24591)))

(declare-fun b!47198 () Bool)

(assert (=> b!47198 (= e!24591 (not (= n!796 Zero!192)))))

(assert (= (and d!33170 res!22162) b!47198))

(declare-fun m!50127 () Bool)

(assert (=> d!33170 m!50127))

(assert (=> b!47193 d!33170))

(declare-fun d!33172 () Bool)

(declare-fun res!22163 () Bool)

(declare-fun e!24592 () Bool)

(assert (=> d!33172 (=> (not res!22163) (not e!24592))))

(assert (=> d!33172 (= res!22163 (not (<!2 that!1231 Zero!192)))))

(assert (=> d!33172 (= (>!2 that!1231 Zero!192) e!24592)))

(declare-fun b!47199 () Bool)

(assert (=> b!47199 (= e!24592 (not (= that!1231 Zero!192)))))

(assert (= (and d!33172 res!22163) b!47199))

(declare-fun m!50129 () Bool)

(assert (=> d!33172 m!50129))

(assert (=> b!47195 d!33172))

(declare-fun d!33174 () Bool)

(declare-fun res!22168 () Bool)

(declare-fun e!24597 () Bool)

(assert (=> d!33174 (=> res!22168 e!24597)))

(assert (=> d!33174 (= res!22168 (is-Zero!192 n!796))))

(assert (=> d!33174 (= (isEven!1 n!796) e!24597)))

(declare-fun b!47204 () Bool)

(declare-fun e!24598 () Bool)

(assert (=> b!47204 (= e!24597 e!24598)))

(declare-fun res!22169 () Bool)

(assert (=> b!47204 (=> (not res!22169) (not e!24598))))

(assert (=> b!47204 (= res!22169 (not (and (is-Succ!189 n!796) (is-Zero!192 (n!1344 n!796)))))))

(declare-fun b!47205 () Bool)

(assert (=> b!47205 (= e!24598 (not (isEven!1 (n!1344 n!796))))))

(assert (= (and d!33174 (not res!22168)) b!47204))

(assert (= (and b!47204 res!22169) b!47205))

(declare-fun m!50131 () Bool)

(assert (=> b!47205 m!50131))

(assert (=> start!6344 d!33174))

(push 1)

(assert (not d!33172))

(assert (not b!47205))

(assert (not d!33170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!33176 () Bool)

(declare-fun lt!8586 () Bool)

(declare-fun repr!0 (Nat!208) Int)

(assert (=> d!33176 (= lt!8586 (< (repr!0 that!1231) (repr!0 Zero!192)))))

(declare-fun e!24601 () Bool)

(assert (=> d!33176 (= lt!8586 e!24601)))

(declare-fun c!9945 () Bool)

(assert (=> d!33176 (= c!9945 (and (is-Succ!189 that!1231) (is-Succ!189 Zero!192)))))

(assert (=> d!33176 (= (<!2 that!1231 Zero!192) lt!8586)))

(declare-fun b!47210 () Bool)

(assert (=> b!47210 (= e!24601 (<!2 (n!1344 that!1231) (n!1344 Zero!192)))))

(declare-fun b!47211 () Bool)

(assert (=> b!47211 (= e!24601 (and (is-Zero!192 that!1231) (is-Succ!189 Zero!192)))))

(assert (= (and d!33176 c!9945) b!47210))

(assert (= (and d!33176 (not c!9945)) b!47211))

(declare-fun m!50133 () Bool)

(assert (=> d!33176 m!50133))

(declare-fun m!50135 () Bool)

(assert (=> d!33176 m!50135))

(declare-fun m!50137 () Bool)

(assert (=> b!47210 m!50137))

(assert (=> d!33172 d!33176))

(declare-fun d!33178 () Bool)

(declare-fun res!22170 () Bool)

(declare-fun e!24602 () Bool)

(assert (=> d!33178 (=> res!22170 e!24602)))

(assert (=> d!33178 (= res!22170 (is-Zero!192 (n!1344 n!796)))))

(assert (=> d!33178 (= (isEven!1 (n!1344 n!796)) e!24602)))

(declare-fun b!47212 () Bool)

(declare-fun e!24603 () Bool)

(assert (=> b!47212 (= e!24602 e!24603)))

(declare-fun res!22171 () Bool)

(assert (=> b!47212 (=> (not res!22171) (not e!24603))))

(assert (=> b!47212 (= res!22171 (not (and (is-Succ!189 (n!1344 n!796)) (is-Zero!192 (n!1344 (n!1344 n!796))))))))

(declare-fun b!47213 () Bool)

(assert (=> b!47213 (= e!24603 (not (isEven!1 (n!1344 (n!1344 n!796)))))))

(assert (= (and d!33178 (not res!22170)) b!47212))

(assert (= (and b!47212 res!22171) b!47213))

(declare-fun m!50139 () Bool)

(assert (=> b!47213 m!50139))

(assert (=> b!47205 d!33178))

(declare-fun d!33180 () Bool)

(declare-fun lt!8587 () Bool)

(assert (=> d!33180 (= lt!8587 (< (repr!0 n!796) (repr!0 Zero!192)))))

(declare-fun e!24604 () Bool)

(assert (=> d!33180 (= lt!8587 e!24604)))

(declare-fun c!9946 () Bool)

(assert (=> d!33180 (= c!9946 (and (is-Succ!189 n!796) (is-Succ!189 Zero!192)))))

(assert (=> d!33180 (= (<!2 n!796 Zero!192) lt!8587)))

(declare-fun b!47214 () Bool)

(assert (=> b!47214 (= e!24604 (<!2 (n!1344 n!796) (n!1344 Zero!192)))))

(declare-fun b!47215 () Bool)

(assert (=> b!47215 (= e!24604 (and (is-Zero!192 n!796) (is-Succ!189 Zero!192)))))

(assert (= (and d!33180 c!9946) b!47214))

(assert (= (and d!33180 (not c!9946)) b!47215))

(declare-fun m!50141 () Bool)

(assert (=> d!33180 m!50141))

(assert (=> d!33180 m!50135))

(declare-fun m!50143 () Bool)

(assert (=> b!47214 m!50143))

(assert (=> d!33170 d!33180))

(push 1)

(assert (not d!33180))

(assert (not d!33176))

(assert (not b!47214))

(assert (not b!47213))

(assert (not b!47210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

