; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5776 () Bool)

(assert start!5776)

(declare-fun b!43906 () Bool)

(declare-fun res!20774 () Bool)

(declare-fun e!22765 () Bool)

(assert (=> b!43906 (=> (not res!20774) (not e!22765))))

(declare-datatypes () ((Nat!118 (Zero!102) (Succ!99 (n!1243 Nat!118)))))

(declare-fun n2!59 () Nat!118)

(declare-fun >!2 (Nat!118 Nat!118) Bool)

(assert (=> b!43906 (= res!20774 (>!2 n2!59 Zero!102))))

(declare-fun b!43907 () Bool)

(declare-fun res!20778 () Bool)

(assert (=> b!43907 (=> (not res!20778) (not e!22765))))

(declare-fun n1!48 () Nat!118)

(assert (=> b!43907 (= res!20778 (or (not (is-Succ!99 n1!48)) (not (is-Zero!102 (n!1243 n1!48)))))))

(declare-fun res!20779 () Bool)

(assert (=> start!5776 (=> (not res!20779) (not e!22765))))

(assert (=> start!5776 (= res!20779 (>!2 n1!48 Zero!102))))

(assert (=> start!5776 e!22765))

(assert (=> start!5776 true))

(declare-fun b!43908 () Bool)

(declare-fun res!20775 () Bool)

(assert (=> b!43908 (=> (not res!20775) (not e!22765))))

(declare-fun n2!62 () Nat!118)

(assert (=> b!43908 (= res!20775 (= n2!62 n2!59))))

(declare-fun b!43909 () Bool)

(declare-fun res!20777 () Bool)

(assert (=> b!43909 (=> (not res!20777) (not e!22765))))

(declare-datatypes () ((Unit!423 (Unit!424))))

(declare-fun tmp!138 () Unit!423)

(declare-fun increasing_times!0 (Nat!118 Nat!118) Unit!423)

(assert (=> b!43909 (= res!20777 (= tmp!138 (increasing_times!0 (n!1243 n1!48) n2!59)))))

(declare-fun b!43910 () Bool)

(declare-fun res!20776 () Bool)

(assert (=> b!43910 (=> (not res!20776) (not e!22765))))

(declare-fun n1!51 () Nat!118)

(declare-fun *!4 (Nat!118 Nat!118) Nat!118)

(assert (=> b!43910 (= res!20776 (= n1!51 (*!4 (n!1243 n1!48) n2!59)))))

(declare-fun b!43911 () Bool)

(assert (=> b!43911 (= e!22765 (not (>!2 n2!62 Zero!102)))))

(assert (= (and start!5776 res!20779) b!43906))

(assert (= (and b!43906 res!20774) b!43907))

(assert (= (and b!43907 res!20778) b!43909))

(assert (= (and b!43909 res!20777) b!43910))

(assert (= (and b!43910 res!20776) b!43908))

(assert (= (and b!43908 res!20775) b!43911))

(declare-fun m!47167 () Bool)

(assert (=> b!43911 m!47167))

(declare-fun m!47169 () Bool)

(assert (=> b!43910 m!47169))

(declare-fun m!47171 () Bool)

(assert (=> b!43906 m!47171))

(declare-fun m!47173 () Bool)

(assert (=> start!5776 m!47173))

(declare-fun m!47175 () Bool)

(assert (=> b!43909 m!47175))

(push 1)

(assert (not start!5776))

(assert (not b!43909))

(assert (not b!43910))

(assert (not b!43906))

(assert (not b!43911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

