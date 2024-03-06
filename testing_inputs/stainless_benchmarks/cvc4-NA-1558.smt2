; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10560 () Bool)

(assert start!10560)

(declare-fun e!43531 () Bool)

(declare-datatypes () ((List!655 (Cons!613 (h!902 Int) (t!47642 List!655)) (Nil!615))))

(declare-fun l2!412 () List!655)

(declare-fun b!80232 () Bool)

(declare-fun res!39931 () List!655)

(declare-fun l1!419 () List!655)

(declare-fun content!115 (List!655) (Set Int))

(assert (=> b!80232 (= e!43531 (not (= (content!115 res!39931) (union (content!115 l1!419) (content!115 l2!412)))))))

(declare-fun b!80233 () Bool)

(declare-fun res!40693 () Bool)

(declare-fun e!43529 () Bool)

(assert (=> b!80233 (=> res!40693 e!43529)))

(declare-fun isEmpty!667 (List!655) Bool)

(assert (=> b!80233 (= res!40693 (isEmpty!667 l2!412))))

(declare-fun b!80234 () Bool)

(declare-fun e!43530 () Bool)

(assert (=> b!80234 (= e!43530 e!43531)))

(declare-fun res!40695 () Bool)

(assert (=> b!80234 (=> res!40695 e!43531)))

(declare-fun isSorted!2 (List!655) Bool)

(assert (=> b!80234 (= res!40695 (not (isSorted!2 res!39931)))))

(declare-fun b!80235 () Bool)

(declare-fun res!40694 () Bool)

(assert (=> b!80235 (=> (not res!40694) (not e!43530))))

(assert (=> b!80235 (= res!40694 (isSorted!2 l2!412))))

(declare-fun b!80236 () Bool)

(declare-fun res!40697 () Bool)

(assert (=> b!80236 (=> (not res!40697) (not e!43530))))

(assert (=> b!80236 (= res!40697 (and (is-Nil!615 l1!419) (= res!39931 l2!412)))))

(declare-fun res!40698 () Bool)

(assert (=> start!10560 (=> (not res!40698) (not e!43530))))

(assert (=> start!10560 (= res!40698 (isSorted!2 l1!419))))

(assert (=> start!10560 e!43530))

(assert (=> start!10560 true))

(declare-fun b!80237 () Bool)

(declare-fun res!40696 () Bool)

(assert (=> b!80237 (=> (not res!40696) (not e!43530))))

(assert (=> b!80237 (= res!40696 e!43529)))

(declare-fun res!40699 () Bool)

(assert (=> b!80237 (=> res!40699 e!43529)))

(assert (=> b!80237 (= res!40699 (isEmpty!667 l1!419))))

(declare-fun b!80238 () Bool)

(declare-fun last!9 (List!655) Int)

(declare-fun head!1047 (List!655) Int)

(assert (=> b!80238 (= e!43529 (<= (last!9 l1!419) (head!1047 l2!412)))))

(assert (= (and start!10560 res!40698) b!80235))

(assert (= (and b!80235 res!40694) b!80237))

(assert (= (and b!80237 (not res!40699)) b!80233))

(assert (= (and b!80233 (not res!40693)) b!80238))

(assert (= (and b!80237 res!40696) b!80236))

(assert (= (and b!80236 res!40697) b!80234))

(assert (= (and b!80234 (not res!40695)) b!80232))

(declare-fun m!75050 () Bool)

(assert (=> b!80237 m!75050))

(declare-fun m!75052 () Bool)

(assert (=> b!80233 m!75052))

(declare-fun m!75054 () Bool)

(assert (=> b!80234 m!75054))

(declare-fun m!75056 () Bool)

(assert (=> b!80235 m!75056))

(declare-fun m!75058 () Bool)

(assert (=> b!80232 m!75058))

(declare-fun m!75060 () Bool)

(assert (=> b!80232 m!75060))

(declare-fun m!75062 () Bool)

(assert (=> b!80232 m!75062))

(declare-fun m!75064 () Bool)

(assert (=> start!10560 m!75064))

(declare-fun m!75066 () Bool)

(assert (=> b!80238 m!75066))

(declare-fun m!75068 () Bool)

(assert (=> b!80238 m!75068))

(push 1)

(assert (not b!80234))

(assert (not b!80237))

(assert (not b!80233))

(assert (not start!10560))

(assert (not b!80238))

(assert (not b!80232))

(assert (not b!80235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55397 () Bool)

(declare-fun res!40704 () Bool)

(declare-fun e!43536 () Bool)

(assert (=> d!55397 (=> res!40704 e!43536)))

(assert (=> d!55397 (= res!40704 (not (and (is-Cons!613 l1!419) (is-Cons!613 (t!47642 l1!419)))))))

(assert (=> d!55397 (= (isSorted!2 l1!419) e!43536)))

(declare-fun b!80243 () Bool)

(declare-fun e!43537 () Bool)

(assert (=> b!80243 (= e!43536 e!43537)))

(declare-fun res!40705 () Bool)

(assert (=> b!80243 (=> (not res!40705) (not e!43537))))

(assert (=> b!80243 (= res!40705 (<= (h!902 l1!419) (h!902 (t!47642 l1!419))))))

(declare-fun b!80244 () Bool)

(assert (=> b!80244 (= e!43537 (isSorted!2 (t!47642 l1!419)))))

(assert (= (and d!55397 (not res!40704)) b!80243))

(assert (= (and b!80243 res!40705) b!80244))

(declare-fun m!75070 () Bool)

(assert (=> b!80244 m!75070))

(assert (=> start!10560 d!55397))

(declare-fun d!55399 () Bool)

(declare-fun lt!18337 () Int)

(declare-fun contains!54 (List!655 Int) Bool)

(assert (=> d!55399 (contains!54 l1!419 lt!18337)))

(declare-fun e!43540 () Int)

(assert (=> d!55399 (= lt!18337 e!43540)))

(declare-fun c!20316 () Bool)

(assert (=> d!55399 (= c!20316 (and (is-Cons!613 l1!419) (is-Nil!615 (t!47642 l1!419))))))

(assert (=> d!55399 (not (isEmpty!667 l1!419))))

(assert (=> d!55399 (= (last!9 l1!419) lt!18337)))

(declare-fun b!80249 () Bool)

(assert (=> b!80249 (= e!43540 (h!902 l1!419))))

(declare-fun b!80250 () Bool)

(assert (=> b!80250 (= e!43540 (last!9 (t!47642 l1!419)))))

(assert (= (and d!55399 c!20316) b!80249))

(assert (= (and d!55399 (not c!20316)) b!80250))

(declare-fun m!75072 () Bool)

(assert (=> d!55399 m!75072))

(assert (=> d!55399 m!75050))

(declare-fun m!75074 () Bool)

(assert (=> b!80250 m!75074))

(assert (=> b!80238 d!55399))

(declare-fun d!55401 () Bool)

(assert (=> d!55401 (= (head!1047 l2!412) (h!902 l2!412))))

(assert (=> b!80238 d!55401))

(declare-fun d!55403 () Bool)

(declare-fun c!20319 () Bool)

(assert (=> d!55403 (= c!20319 (is-Nil!615 res!39931))))

(declare-fun e!43543 () (Set Int))

(assert (=> d!55403 (= (content!115 res!39931) e!43543)))

(declare-fun b!80255 () Bool)

(assert (=> b!80255 (= e!43543 (as emptyset (Set Int)))))

(declare-fun b!80256 () Bool)

(assert (=> b!80256 (= e!43543 (union (insert (h!902 res!39931) (as emptyset (Set Int))) (content!115 (t!47642 res!39931))))))

(assert (= (and d!55403 c!20319) b!80255))

(assert (= (and d!55403 (not c!20319)) b!80256))

(declare-fun m!75076 () Bool)

(assert (=> b!80256 m!75076))

(declare-fun m!75078 () Bool)

(assert (=> b!80256 m!75078))

(assert (=> b!80232 d!55403))

(declare-fun d!55405 () Bool)

(declare-fun c!20320 () Bool)

(assert (=> d!55405 (= c!20320 (is-Nil!615 l1!419))))

(declare-fun e!43544 () (Set Int))

(assert (=> d!55405 (= (content!115 l1!419) e!43544)))

(declare-fun b!80257 () Bool)

(assert (=> b!80257 (= e!43544 (as emptyset (Set Int)))))

(declare-fun b!80258 () Bool)

(assert (=> b!80258 (= e!43544 (union (insert (h!902 l1!419) (as emptyset (Set Int))) (content!115 (t!47642 l1!419))))))

(assert (= (and d!55405 c!20320) b!80257))

(assert (= (and d!55405 (not c!20320)) b!80258))

(declare-fun m!75080 () Bool)

(assert (=> b!80258 m!75080))

(declare-fun m!75082 () Bool)

(assert (=> b!80258 m!75082))

(assert (=> b!80232 d!55405))

(declare-fun d!55407 () Bool)

(declare-fun c!20321 () Bool)

(assert (=> d!55407 (= c!20321 (is-Nil!615 l2!412))))

(declare-fun e!43545 () (Set Int))

(assert (=> d!55407 (= (content!115 l2!412) e!43545)))

(declare-fun b!80259 () Bool)

(assert (=> b!80259 (= e!43545 (as emptyset (Set Int)))))

(declare-fun b!80260 () Bool)

(assert (=> b!80260 (= e!43545 (union (insert (h!902 l2!412) (as emptyset (Set Int))) (content!115 (t!47642 l2!412))))))

(assert (= (and d!55407 c!20321) b!80259))

(assert (= (and d!55407 (not c!20321)) b!80260))

(declare-fun m!75084 () Bool)

(assert (=> b!80260 m!75084))

(declare-fun m!75086 () Bool)

(assert (=> b!80260 m!75086))

(assert (=> b!80232 d!55407))

(declare-fun d!55409 () Bool)

(declare-fun res!40706 () Bool)

(declare-fun e!43546 () Bool)

(assert (=> d!55409 (=> res!40706 e!43546)))

(assert (=> d!55409 (= res!40706 (not (and (is-Cons!613 res!39931) (is-Cons!613 (t!47642 res!39931)))))))

(assert (=> d!55409 (= (isSorted!2 res!39931) e!43546)))

(declare-fun b!80261 () Bool)

(declare-fun e!43547 () Bool)

(assert (=> b!80261 (= e!43546 e!43547)))

(declare-fun res!40707 () Bool)

(assert (=> b!80261 (=> (not res!40707) (not e!43547))))

(assert (=> b!80261 (= res!40707 (<= (h!902 res!39931) (h!902 (t!47642 res!39931))))))

(declare-fun b!80262 () Bool)

(assert (=> b!80262 (= e!43547 (isSorted!2 (t!47642 res!39931)))))

(assert (= (and d!55409 (not res!40706)) b!80261))

(assert (= (and b!80261 res!40707) b!80262))

(declare-fun m!75088 () Bool)

(assert (=> b!80262 m!75088))

(assert (=> b!80234 d!55409))

(declare-fun d!55411 () Bool)

(declare-fun res!40708 () Bool)

(declare-fun e!43548 () Bool)

(assert (=> d!55411 (=> res!40708 e!43548)))

(assert (=> d!55411 (= res!40708 (not (and (is-Cons!613 l2!412) (is-Cons!613 (t!47642 l2!412)))))))

(assert (=> d!55411 (= (isSorted!2 l2!412) e!43548)))

(declare-fun b!80263 () Bool)

(declare-fun e!43549 () Bool)

(assert (=> b!80263 (= e!43548 e!43549)))

(declare-fun res!40709 () Bool)

(assert (=> b!80263 (=> (not res!40709) (not e!43549))))

(assert (=> b!80263 (= res!40709 (<= (h!902 l2!412) (h!902 (t!47642 l2!412))))))

(declare-fun b!80264 () Bool)

(assert (=> b!80264 (= e!43549 (isSorted!2 (t!47642 l2!412)))))

(assert (= (and d!55411 (not res!40708)) b!80263))

(assert (= (and b!80263 res!40709) b!80264))

(declare-fun m!75090 () Bool)

(assert (=> b!80264 m!75090))

(assert (=> b!80235 d!55411))

(declare-fun d!55413 () Bool)

(assert (=> d!55413 (= (isEmpty!667 l1!419) (is-Nil!615 l1!419))))

(assert (=> b!80237 d!55413))

(declare-fun d!55415 () Bool)

(assert (=> d!55415 (= (isEmpty!667 l2!412) (is-Nil!615 l2!412))))

(assert (=> b!80233 d!55415))

(push 1)

(assert (not b!80264))

(assert (not b!80256))

(assert (not d!55399))

(assert (not b!80244))

(assert (not b!80258))

(assert (not b!80262))

(assert (not b!80260))

(assert (not b!80250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

