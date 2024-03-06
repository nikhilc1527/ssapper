; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3612 () Bool)

(assert start!3612)

(declare-fun b!23201 () Bool)

(declare-fun res!10262 () Bool)

(declare-fun e!12073 () Bool)

(assert (=> b!23201 (=> (not res!10262) (not e!12073))))

(declare-fun i!252 () Int)

(declare-datatypes () ((T!1789 (T!1790 (val!67 Int)))))

(declare-datatypes () ((Conc!44 (CC!43 (left!688 Conc!44) (right!691 Conc!44)) (Single!43 (x!8840 T!1789)) (Empty!54))))

(declare-fun xs!572 () Conc!44)

(declare-fun size!247 (Conc!44) Int)

(assert (=> b!23201 (= res!10262 (< i!252 (size!247 xs!572)))))

(declare-fun b!23202 () Bool)

(declare-fun e!12074 () Bool)

(assert (=> b!23202 (= e!12073 e!12074)))

(declare-fun res!10260 () Bool)

(assert (=> b!23202 (=> res!10260 e!12074)))

(declare-fun i!261 () Int)

(assert (=> b!23202 (= res!10260 (> 0 i!261))))

(declare-fun b!23203 () Bool)

(declare-fun e!12075 () Bool)

(declare-fun tp_is_empty!133 () Bool)

(assert (=> b!23203 (= e!12075 tp_is_empty!133)))

(declare-fun b!23204 () Bool)

(declare-fun tp!5082 () Bool)

(declare-fun tp!5085 () Bool)

(assert (=> b!23204 (= e!12075 (and tp!5082 tp!5085))))

(declare-fun b!23205 () Bool)

(declare-fun res!10265 () Bool)

(assert (=> b!23205 (=> (not res!10265) (not e!12073))))

(declare-fun balanced!41 (Conc!44) Bool)

(assert (=> b!23205 (= res!10265 (balanced!41 xs!572))))

(declare-fun b!23206 () Bool)

(declare-fun res!10259 () Bool)

(assert (=> b!23206 (=> (not res!10259) (not e!12073))))

(assert (=> b!23206 (= res!10259 (>= i!252 (size!247 (left!688 xs!572))))))

(declare-fun b!23207 () Bool)

(declare-fun res!10264 () Bool)

(assert (=> b!23207 (=> (not res!10264) (not e!12073))))

(declare-fun xs!581 () Conc!44)

(assert (=> b!23207 (= res!10264 (and (= xs!581 xs!572) (= i!261 i!252)))))

(declare-fun b!23208 () Bool)

(declare-fun res!10267 () Bool)

(assert (=> b!23208 (=> (not res!10267) (not e!12073))))

(declare-fun isEmpty!303 (Conc!44) Bool)

(assert (=> b!23208 (= res!10267 (not (isEmpty!303 xs!572)))))

(declare-fun b!23209 () Bool)

(declare-fun res!10261 () Bool)

(assert (=> b!23209 (=> (not res!10261) (not e!12073))))

(assert (=> b!23209 (= res!10261 (not (is-Single!43 xs!572)))))

(declare-fun res!10258 () Bool)

(assert (=> start!3612 (=> (not res!10258) (not e!12073))))

(declare-fun concInv!40 (Conc!44) Bool)

(assert (=> start!3612 (= res!10258 (concInv!40 xs!572))))

(assert (=> start!3612 e!12073))

(assert (=> start!3612 true))

(assert (=> start!3612 tp_is_empty!133))

(declare-fun e!12072 () Bool)

(assert (=> start!3612 e!12072))

(assert (=> start!3612 e!12075))

(declare-fun b!23210 () Bool)

(assert (=> b!23210 (= e!12072 tp_is_empty!133)))

(declare-fun b!23211 () Bool)

(declare-fun res!10263 () Bool)

(assert (=> b!23211 (=> (not res!10263) (not e!12073))))

(assert (=> b!23211 (= res!10263 (>= i!252 0))))

(declare-fun b!23212 () Bool)

(declare-fun res!10266 () Bool)

(assert (=> b!23212 (=> (not res!10266) (not e!12073))))

(declare-fun res!5557 () T!1789)

(declare-fun lookup!5 (Conc!44 Int) T!1789)

(assert (=> b!23212 (= res!10266 (= res!5557 (lookup!5 (right!691 xs!572) (- i!252 (size!247 (left!688 xs!572))))))))

(declare-fun b!23213 () Bool)

(assert (=> b!23213 (= e!12074 (>= i!261 (size!247 xs!581)))))

(declare-fun b!23214 () Bool)

(declare-fun tp!5084 () Bool)

(declare-fun tp!5083 () Bool)

(assert (=> b!23214 (= e!12072 (and tp!5084 tp!5083))))

(assert (= (and start!3612 res!10258) b!23205))

(assert (= (and b!23205 res!10265) b!23208))

(assert (= (and b!23208 res!10267) b!23211))

(assert (= (and b!23211 res!10263) b!23201))

(assert (= (and b!23201 res!10262) b!23209))

(assert (= (and b!23209 res!10261) b!23206))

(assert (= (and b!23206 res!10259) b!23212))

(assert (= (and b!23212 res!10266) b!23207))

(assert (= (and b!23207 res!10264) b!23202))

(assert (= (and b!23202 (not res!10260)) b!23213))

(assert (= (and start!3612 (is-CC!43 xs!581)) b!23214))

(assert (= (and start!3612 (is-Single!43 xs!581)) b!23210))

(assert (= (and start!3612 (is-CC!43 xs!572)) b!23204))

(assert (= (and start!3612 (is-Single!43 xs!572)) b!23203))

(declare-fun m!24841 () Bool)

(assert (=> b!23213 m!24841))

(declare-fun m!24843 () Bool)

(assert (=> start!3612 m!24843))

(declare-fun m!24845 () Bool)

(assert (=> b!23201 m!24845))

(declare-fun m!24847 () Bool)

(assert (=> b!23212 m!24847))

(declare-fun m!24849 () Bool)

(assert (=> b!23212 m!24849))

(declare-fun m!24851 () Bool)

(assert (=> b!23208 m!24851))

(declare-fun m!24853 () Bool)

(assert (=> b!23205 m!24853))

(assert (=> b!23206 m!24847))

(push 1)

(assert (not b!23204))

(assert (not b!23208))

(assert (not b!23201))

(assert (not b!23214))

(assert (not b!23205))

(assert tp_is_empty!133)

(assert (not start!3612))

(assert (not b!23206))

(assert (not b!23213))

(assert (not b!23212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

