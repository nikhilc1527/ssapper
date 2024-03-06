; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10956 () Bool)

(assert start!10956)

(declare-fun b!83704 () Bool)

(assert (=> b!83704 true))

(declare-fun bs!40708 () Bool)

(declare-fun b!83705 () Bool)

(assert (= bs!40708 (and b!83705 b!83704)))

(declare-fun lambda!10434 () Int)

(declare-fun lambda!10433 () Int)

(assert (=> bs!40708 (not (= lambda!10434 lambda!10433))))

(assert (=> b!83705 true))

(declare-fun res!43103 () Bool)

(declare-fun e!45386 () Bool)

(assert (=> start!10956 (=> (not res!43103) (not e!45386))))

(declare-datatypes () ((List!677 (Cons!634 (h!1004 Int) (t!47929 List!677)) (Nil!636))))

(declare-fun ls!96 () List!677)

(assert (=> start!10956 (= res!43103 (and (not (is-Nil!636 ls!96)) (not (is-Nil!636 (t!47929 ls!96)))))))

(assert (=> start!10956 e!45386))

(assert (=> start!10956 true))

(declare-fun res!43104 () Bool)

(assert (=> b!83704 (=> (not res!43104) (not e!45386))))

(declare-fun less!5 () List!677)

(declare-fun filter!30 (List!677 Int) List!677)

(assert (=> b!83704 (= res!43104 (= less!5 (filter!30 (t!47929 ls!96) lambda!10433)))))

(declare-fun res!43105 () Bool)

(assert (=> b!83705 (=> (not res!43105) (not e!45386))))

(declare-fun equal!11 () List!677)

(assert (=> b!83705 (= res!43105 (= equal!11 (Cons!634 (h!1004 ls!96) (filter!30 (t!47929 ls!96) lambda!10434))))))

(declare-fun b!83706 () Bool)

(assert (=> b!83706 (= e!45386 (not (is-Cons!634 equal!11)))))

(assert (= (and start!10956 res!43103) b!83704))

(assert (= (and b!83704 res!43104) b!83705))

(assert (= (and b!83705 res!43105) b!83706))

(declare-fun m!79580 () Bool)

(assert (=> b!83704 m!79580))

(declare-fun m!79582 () Bool)

(assert (=> b!83705 m!79582))

(push 1)

(assert (not b!83705))

(assert (not b!83704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

