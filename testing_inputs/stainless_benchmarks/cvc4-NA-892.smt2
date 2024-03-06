; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6814 () Bool)

(assert start!6814)

(declare-fun res!23226 () Bool)

(declare-fun e!26264 () Bool)

(assert (=> start!6814 (=> (not res!23226) (not e!26264))))

(declare-datatypes () ((Nat!253 (Zero!237) (Succ!234 (n!1390 Nat!253)))))

(declare-fun n1!161 () Nat!253)

(assert (=> start!6814 (= res!23226 (not (is-Zero!237 n1!161)))))

(assert (=> start!6814 e!26264))

(assert (=> start!6814 true))

(declare-fun b!50593 () Bool)

(declare-fun res!23227 () Bool)

(assert (=> b!50593 (=> (not res!23227) (not e!26264))))

(declare-fun n2!172 () Nat!253)

(declare-fun n3!45 () Nat!253)

(declare-datatypes () ((Unit!803 (Unit!804))))

(declare-fun inductVal!93 () Unit!803)

(declare-fun associative_plus!0 (Nat!253 Nat!253 Nat!253) Unit!803)

(assert (=> b!50593 (= res!23227 (= inductVal!93 (associative_plus!0 (n!1390 n1!161) n2!172 n3!45)))))

(declare-fun b!50594 () Bool)

(declare-fun res!23228 () Bool)

(assert (=> b!50594 (=> (not res!23228) (not e!26264))))

(declare-fun x$6!65 () Unit!803)

(declare-fun Unit!805 () Unit!803)

(assert (=> b!50594 (= res!23228 (= x$6!65 Unit!805))))

(declare-fun b!50595 () Bool)

(declare-fun +!5 (Nat!253 Nat!253) Nat!253)

(assert (=> b!50595 (= e!26264 (not (= (+!5 (+!5 n1!161 n2!172) n3!45) (+!5 n1!161 (+!5 n2!172 n3!45)))))))

(assert (= (and start!6814 res!23226) b!50593))

(assert (= (and b!50593 res!23227) b!50594))

(assert (= (and b!50594 res!23228) b!50595))

(declare-fun m!54221 () Bool)

(assert (=> b!50593 m!54221))

(declare-fun m!54223 () Bool)

(assert (=> b!50595 m!54223))

(assert (=> b!50595 m!54223))

(declare-fun m!54225 () Bool)

(assert (=> b!50595 m!54225))

(declare-fun m!54227 () Bool)

(assert (=> b!50595 m!54227))

(assert (=> b!50595 m!54227))

(declare-fun m!54229 () Bool)

(assert (=> b!50595 m!54229))

(push 1)

(assert (not b!50593))

(assert (not b!50595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!50601 () Bool)

(declare-fun e!26267 () Unit!803)

(declare-fun Unit!806 () Unit!803)

(assert (=> b!50601 (= e!26267 Unit!806)))

(declare-fun lt!8859 () Unit!803)

(assert (=> b!50601 (= lt!8859 (associative_plus!0 (n!1390 (n!1390 n1!161)) n2!172 n3!45))))

(declare-fun d!43128 () Bool)

(assert (=> d!43128 (= (+!5 (+!5 (n!1390 n1!161) n2!172) n3!45) (+!5 (n!1390 n1!161) (+!5 n2!172 n3!45)))))

(declare-fun lt!8858 () Unit!803)

(assert (=> d!43128 (= lt!8858 e!26267)))

(declare-fun c!10718 () Bool)

(assert (=> d!43128 (= c!10718 (is-Zero!237 (n!1390 n1!161)))))

(assert (=> d!43128 (= (associative_plus!0 (n!1390 n1!161) n2!172 n3!45) lt!8858)))

(declare-fun b!50600 () Bool)

(declare-fun Unit!807 () Unit!803)

(assert (=> b!50600 (= e!26267 Unit!807)))

(assert (= (and d!43128 c!10718) b!50600))

(assert (= (and d!43128 (not c!10718)) b!50601))

(declare-fun m!54231 () Bool)

(assert (=> b!50601 m!54231))

(declare-fun m!54233 () Bool)

(assert (=> d!43128 m!54233))

(assert (=> d!43128 m!54233))

(declare-fun m!54235 () Bool)

(assert (=> d!43128 m!54235))

(assert (=> d!43128 m!54227))

(assert (=> d!43128 m!54227))

(declare-fun m!54237 () Bool)

(assert (=> d!43128 m!54237))

(assert (=> b!50593 d!43128))

(declare-fun d!43130 () Bool)

(declare-fun c!10721 () Bool)

(assert (=> d!43130 (= c!10721 (is-Zero!237 (+!5 n1!161 n2!172)))))

(declare-fun e!26270 () Nat!253)

(assert (=> d!43130 (= (+!5 (+!5 n1!161 n2!172) n3!45) e!26270)))

(declare-fun b!50606 () Bool)

(assert (=> b!50606 (= e!26270 n3!45)))

(declare-fun b!50607 () Bool)

(assert (=> b!50607 (= e!26270 (Succ!234 (+!5 (n!1390 (+!5 n1!161 n2!172)) n3!45)))))

(assert (= (and d!43130 c!10721) b!50606))

(assert (= (and d!43130 (not c!10721)) b!50607))

(declare-fun m!54239 () Bool)

(assert (=> b!50607 m!54239))

(assert (=> b!50595 d!43130))

(declare-fun d!43132 () Bool)

(declare-fun c!10722 () Bool)

(assert (=> d!43132 (= c!10722 (is-Zero!237 n1!161))))

(declare-fun e!26271 () Nat!253)

(assert (=> d!43132 (= (+!5 n1!161 n2!172) e!26271)))

(declare-fun b!50608 () Bool)

(assert (=> b!50608 (= e!26271 n2!172)))

(declare-fun b!50609 () Bool)

(assert (=> b!50609 (= e!26271 (Succ!234 (+!5 (n!1390 n1!161) n2!172)))))

(assert (= (and d!43132 c!10722) b!50608))

(assert (= (and d!43132 (not c!10722)) b!50609))

(assert (=> b!50609 m!54233))

(assert (=> b!50595 d!43132))

(declare-fun d!43134 () Bool)

(declare-fun c!10723 () Bool)

(assert (=> d!43134 (= c!10723 (is-Zero!237 n1!161))))

(declare-fun e!26272 () Nat!253)

(assert (=> d!43134 (= (+!5 n1!161 (+!5 n2!172 n3!45)) e!26272)))

(declare-fun b!50610 () Bool)

(assert (=> b!50610 (= e!26272 (+!5 n2!172 n3!45))))

(declare-fun b!50611 () Bool)

(assert (=> b!50611 (= e!26272 (Succ!234 (+!5 (n!1390 n1!161) (+!5 n2!172 n3!45))))))

(assert (= (and d!43134 c!10723) b!50610))

(assert (= (and d!43134 (not c!10723)) b!50611))

(assert (=> b!50611 m!54227))

(assert (=> b!50611 m!54237))

(assert (=> b!50595 d!43134))

(declare-fun d!43136 () Bool)

(declare-fun c!10724 () Bool)

(assert (=> d!43136 (= c!10724 (is-Zero!237 n2!172))))

(declare-fun e!26273 () Nat!253)

(assert (=> d!43136 (= (+!5 n2!172 n3!45) e!26273)))

(declare-fun b!50612 () Bool)

(assert (=> b!50612 (= e!26273 n3!45)))

(declare-fun b!50613 () Bool)

(assert (=> b!50613 (= e!26273 (Succ!234 (+!5 (n!1390 n2!172) n3!45)))))

(assert (= (and d!43136 c!10724) b!50612))

(assert (= (and d!43136 (not c!10724)) b!50613))

(declare-fun m!54241 () Bool)

(assert (=> b!50613 m!54241))

(assert (=> b!50595 d!43136))

(push 1)

(assert (not b!50609))

(assert (not b!50613))

(assert (not b!50601))

(assert (not d!43128))

(assert (not b!50607))

(assert (not b!50611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

