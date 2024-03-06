; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3798 () Bool)

(assert start!3798)

(declare-fun res!11230 () Bool)

(declare-fun e!12926 () Bool)

(assert (=> start!3798 (=> (not res!11230) (not e!12926))))

(declare-datatypes () ((T!1813 (T!1814 (val!79 Int)))))

(declare-datatypes () ((Conc!56 (CC!55 (left!700 Conc!56) (right!703 Conc!56)) (Single!55 (x!8892 T!1813)) (Empty!66))))

(declare-fun xs!625 () Conc!56)

(declare-fun concInv!50 (Conc!56) Bool)

(assert (=> start!3798 (= res!11230 (concInv!50 xs!625))))

(assert (=> start!3798 e!12926))

(declare-fun e!12927 () Bool)

(assert (=> start!3798 e!12927))

(declare-fun e!12925 () Bool)

(assert (=> start!3798 e!12925))

(declare-fun b!25021 () Bool)

(declare-fun tp!5434 () Bool)

(declare-fun tp!5435 () Bool)

(assert (=> b!25021 (= e!12927 (and tp!5434 tp!5435))))

(declare-fun b!25022 () Bool)

(declare-fun tp_is_empty!157 () Bool)

(assert (=> b!25022 (= e!12925 tp_is_empty!157)))

(declare-fun b!25023 () Bool)

(declare-fun res!11231 () Bool)

(assert (=> b!25023 (=> (not res!11231) (not e!12926))))

(declare-fun ys!119 () Conc!56)

(assert (=> b!25023 (= res!11231 (concInv!50 ys!119))))

(declare-fun b!25024 () Bool)

(declare-fun tp!5432 () Bool)

(declare-fun tp!5433 () Bool)

(assert (=> b!25024 (= e!12925 (and tp!5432 tp!5433))))

(declare-fun b!25025 () Bool)

(declare-fun res!11229 () Bool)

(assert (=> b!25025 (=> (not res!11229) (not e!12926))))

(declare-fun balanced!51 (Conc!56) Bool)

(assert (=> b!25025 (= res!11229 (balanced!51 xs!625))))

(declare-fun b!25026 () Bool)

(declare-fun res!11228 () Bool)

(assert (=> b!25026 (=> (not res!11228) (not e!12926))))

(assert (=> b!25026 (= res!11228 (balanced!51 ys!119))))

(declare-fun b!25027 () Bool)

(assert (=> b!25027 (= e!12926 false)))

(declare-fun b!25028 () Bool)

(assert (=> b!25028 (= e!12927 tp_is_empty!157)))

(assert (= (and start!3798 res!11230) b!25025))

(assert (= (and b!25025 res!11229) b!25023))

(assert (= (and b!25023 res!11231) b!25026))

(assert (= (and b!25026 res!11228) b!25027))

(assert (= (and start!3798 (is-CC!55 xs!625)) b!25021))

(assert (= (and start!3798 (is-Single!55 xs!625)) b!25028))

(assert (= (and start!3798 (is-CC!55 ys!119)) b!25024))

(assert (= (and start!3798 (is-Single!55 ys!119)) b!25022))

(declare-fun m!26135 () Bool)

(assert (=> start!3798 m!26135))

(declare-fun m!26137 () Bool)

(assert (=> b!25023 m!26137))

(declare-fun m!26139 () Bool)

(assert (=> b!25025 m!26139))

(declare-fun m!26141 () Bool)

(assert (=> b!25026 m!26141))

(push 1)

(assert (not b!25021))

(assert (not b!25026))

(assert tp_is_empty!157)

(assert (not b!25023))

(assert (not b!25025))

(assert (not b!25024))

(assert (not start!3798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

