; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!40 () Bool)

(assert start!40)

(declare-fun res!360 () Bool)

(declare-fun e!145 () Bool)

(assert (=> start!40 (=> (not res!360) (not e!145))))

(declare-datatypes () ((A!411 (Cons!38 (head!199 Int) (tail!211 A!411)) (Nil!39 (i!200 Int)))))

(declare-fun thiss!27 () A!411)

(assert (=> start!40 (= res!360 (is-Cons!38 thiss!27))))

(assert (=> start!40 e!145))

(declare-fun e!146 () Bool)

(declare-fun inv!55 (A!411) Bool)

(assert (=> start!40 (and (inv!55 thiss!27) e!146)))

(assert (=> start!40 true))

(declare-fun b!307 () Bool)

(declare-fun res!361 () Bool)

(assert (=> b!307 (=> (not res!361) (not e!145))))

(declare-fun i!189 () Int)

(declare-fun size!15 (A!411) Int)

(assert (=> b!307 (= res!361 (= i!189 (+ 1 (size!15 (tail!211 thiss!27)))))))

(declare-fun b!308 () Bool)

(assert (=> b!308 (= e!145 (< i!189 0))))

(declare-fun b!309 () Bool)

(declare-fun tp!37 () Bool)

(assert (=> b!309 (= e!146 (and (inv!55 (tail!211 thiss!27)) tp!37))))

(assert (= (and start!40 res!360) b!307))

(assert (= (and b!307 res!361) b!308))

(assert (= (and start!40 (is-Cons!38 thiss!27)) b!309))

(declare-fun m!167 () Bool)

(assert (=> start!40 m!167))

(declare-fun m!169 () Bool)

(assert (=> b!307 m!169))

(declare-fun m!171 () Bool)

(assert (=> b!309 m!171))

(push 1)

(assert (not b!307))

(assert (not b!309))

(assert (not start!40))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107 () Bool)

(declare-fun lt!12 () Int)

(assert (=> d!107 (>= lt!12 0)))

(declare-fun e!149 () Int)

(assert (=> d!107 (= lt!12 e!149)))

(declare-fun c!105 () Bool)

(assert (=> d!107 (= c!105 (is-Cons!38 (tail!211 thiss!27)))))

(assert (=> d!107 (= (size!15 (tail!211 thiss!27)) lt!12)))

(declare-fun b!314 () Bool)

(assert (=> b!314 (= e!149 (+ 1 (size!15 (tail!211 (tail!211 thiss!27)))))))

(declare-fun b!315 () Bool)

(assert (=> b!315 (= e!149 0)))

(assert (= (and d!107 c!105) b!314))

(assert (= (and d!107 (not c!105)) b!315))

(declare-fun m!173 () Bool)

(assert (=> b!314 m!173))

(assert (=> b!307 d!107))

(declare-fun d!109 () Bool)

(declare-fun inv!15 (A!411) Bool)

(assert (=> d!109 (= (inv!55 (tail!211 thiss!27)) (inv!15 (tail!211 thiss!27)))))

(declare-fun bs!17 () Bool)

(assert (= bs!17 d!109))

(declare-fun m!175 () Bool)

(assert (=> bs!17 m!175))

(assert (=> b!309 d!109))

(declare-fun d!111 () Bool)

(assert (=> d!111 (= (inv!55 thiss!27) (inv!15 thiss!27))))

(declare-fun bs!18 () Bool)

(assert (= bs!18 d!111))

(declare-fun m!177 () Bool)

(assert (=> bs!18 m!177))

(assert (=> start!40 d!111))

(declare-fun b!320 () Bool)

(declare-fun e!152 () Bool)

(declare-fun tp!40 () Bool)

(assert (=> b!320 (= e!152 (and (inv!55 (tail!211 (tail!211 thiss!27))) tp!40))))

(assert (=> b!309 (= tp!37 (and (inv!55 (tail!211 thiss!27)) e!152))))

(assert (= (and b!309 (is-Cons!38 (tail!211 thiss!27))) b!320))

(declare-fun m!179 () Bool)

(assert (=> b!320 m!179))

(assert (=> b!309 m!171))

(push 1)

(assert (not d!109))

(assert (not b!320))

(assert (not b!314))

(assert (not b!309))

(assert (not d!111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

