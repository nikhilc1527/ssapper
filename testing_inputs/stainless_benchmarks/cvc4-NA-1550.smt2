; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10476 () Bool)

(assert start!10476)

(declare-fun res!40278 () Bool)

(declare-fun e!43156 () Bool)

(assert (=> start!10476 (=> (not res!40278) (not e!43156))))

(declare-datatypes () ((List!647 (Cons!605 (h!892 Int) (t!47634 List!647)) (Nil!607))))

(declare-fun list!1008 () List!647)

(declare-fun res!39934 () List!647)

(assert (=> start!10476 (= res!40278 (and (is-Nil!607 list!1008) (= res!39934 Nil!607)))))

(assert (=> start!10476 e!43156))

(assert (=> start!10476 true))

(declare-fun b!79639 () Bool)

(declare-fun e!43157 () Bool)

(assert (=> b!79639 (= e!43156 e!43157)))

(declare-fun res!40279 () Bool)

(assert (=> b!79639 (=> res!40279 e!43157)))

(declare-fun isSorted!2 (List!647) Bool)

(assert (=> b!79639 (= res!40279 (not (isSorted!2 res!39934)))))

(declare-fun b!79640 () Bool)

(declare-fun content!110 (List!647) (Set Int))

(assert (=> b!79640 (= e!43157 (not (= (content!110 res!39934) (content!110 list!1008))))))

(assert (= (and start!10476 res!40278) b!79639))

(assert (= (and b!79639 (not res!40279)) b!79640))

(declare-fun m!74288 () Bool)

(assert (=> b!79639 m!74288))

(declare-fun m!74290 () Bool)

(assert (=> b!79640 m!74290))

(declare-fun m!74292 () Bool)

(assert (=> b!79640 m!74292))

(push 1)

(assert (not b!79640))

(assert (not b!79639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!55189 () Bool)

(declare-fun c!20215 () Bool)

(assert (=> d!55189 (= c!20215 (is-Nil!607 res!39934))))

(declare-fun e!43160 () (Set Int))

(assert (=> d!55189 (= (content!110 res!39934) e!43160)))

(declare-fun b!79645 () Bool)

(assert (=> b!79645 (= e!43160 (as emptyset (Set Int)))))

(declare-fun b!79646 () Bool)

(assert (=> b!79646 (= e!43160 (union (insert (h!892 res!39934) (as emptyset (Set Int))) (content!110 (t!47634 res!39934))))))

(assert (= (and d!55189 c!20215) b!79645))

(assert (= (and d!55189 (not c!20215)) b!79646))

(declare-fun m!74294 () Bool)

(assert (=> b!79646 m!74294))

(declare-fun m!74296 () Bool)

(assert (=> b!79646 m!74296))

(assert (=> b!79640 d!55189))

(declare-fun d!55191 () Bool)

(declare-fun c!20216 () Bool)

(assert (=> d!55191 (= c!20216 (is-Nil!607 list!1008))))

(declare-fun e!43161 () (Set Int))

(assert (=> d!55191 (= (content!110 list!1008) e!43161)))

(declare-fun b!79647 () Bool)

(assert (=> b!79647 (= e!43161 (as emptyset (Set Int)))))

(declare-fun b!79648 () Bool)

(assert (=> b!79648 (= e!43161 (union (insert (h!892 list!1008) (as emptyset (Set Int))) (content!110 (t!47634 list!1008))))))

(assert (= (and d!55191 c!20216) b!79647))

(assert (= (and d!55191 (not c!20216)) b!79648))

(declare-fun m!74298 () Bool)

(assert (=> b!79648 m!74298))

(declare-fun m!74300 () Bool)

(assert (=> b!79648 m!74300))

(assert (=> b!79640 d!55191))

(declare-fun d!55193 () Bool)

(declare-fun res!40284 () Bool)

(declare-fun e!43166 () Bool)

(assert (=> d!55193 (=> res!40284 e!43166)))

(assert (=> d!55193 (= res!40284 (not (and (is-Cons!605 res!39934) (is-Cons!605 (t!47634 res!39934)))))))

(assert (=> d!55193 (= (isSorted!2 res!39934) e!43166)))

(declare-fun b!79653 () Bool)

(declare-fun e!43167 () Bool)

(assert (=> b!79653 (= e!43166 e!43167)))

(declare-fun res!40285 () Bool)

(assert (=> b!79653 (=> (not res!40285) (not e!43167))))

(assert (=> b!79653 (= res!40285 (<= (h!892 res!39934) (h!892 (t!47634 res!39934))))))

(declare-fun b!79654 () Bool)

(assert (=> b!79654 (= e!43167 (isSorted!2 (t!47634 res!39934)))))

(assert (= (and d!55193 (not res!40284)) b!79653))

(assert (= (and b!79653 res!40285) b!79654))

(declare-fun m!74302 () Bool)

(assert (=> b!79654 m!74302))

(assert (=> b!79639 d!55193))

(push 1)

(assert (not b!79654))

(assert (not b!79648))

(assert (not b!79646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

