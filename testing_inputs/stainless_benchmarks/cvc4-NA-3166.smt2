; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15560 () Bool)

(assert start!15560)

(declare-fun res!49875 () Bool)

(declare-fun e!52383 () Bool)

(assert (=> start!15560 (=> (not res!49875) (not e!52383))))

(declare-datatypes () ((List!907 (ListExt!9 (__x!413 Int)) (Cons!843 (head!1194 (_ BitVec 32)) (tail!1189 List!907)) (Nil!845))))

(declare-fun list!1116 () List!907)

(declare-fun res!49848 () List!907)

(assert (=> start!15560 (= res!49875 (and (not (is-Cons!843 list!1116)) (= res!49848 Nil!845)))))

(assert (=> start!15560 e!52383))

(assert (=> start!15560 true))

(declare-fun b!96043 () Bool)

(declare-fun positive!6 (List!907) Bool)

(assert (=> b!96043 (= e!52383 (not (positive!6 res!49848)))))

(assert (= (and start!15560 res!49875) b!96043))

(declare-fun m!91743 () Bool)

(assert (=> b!96043 m!91743))

(push 1)

(assert (not b!96043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!62924 () Bool)

(declare-fun res!49880 () Bool)

(declare-fun e!52388 () Bool)

(assert (=> d!62924 (=> res!49880 e!52388)))

(assert (=> d!62924 (= res!49880 (not (is-Cons!843 res!49848)))))

(assert (=> d!62924 (= (positive!6 res!49848) e!52388)))

(declare-fun b!96048 () Bool)

(declare-fun e!52389 () Bool)

(assert (=> b!96048 (= e!52388 e!52389)))

(declare-fun res!49881 () Bool)

(assert (=> b!96048 (=> (not res!49881) (not e!52389))))

(assert (=> b!96048 (= res!49881 (not (bvslt (head!1194 res!49848) #b00000000000000000000000000000000)))))

(declare-fun b!96049 () Bool)

(assert (=> b!96049 (= e!52389 (positive!6 (tail!1189 res!49848)))))

(assert (= (and d!62924 (not res!49880)) b!96048))

(assert (= (and b!96048 res!49881) b!96049))

(declare-fun m!91745 () Bool)

(assert (=> b!96049 m!91745))

(assert (=> b!96043 d!62924))

(push 1)

(assert (not b!96049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

