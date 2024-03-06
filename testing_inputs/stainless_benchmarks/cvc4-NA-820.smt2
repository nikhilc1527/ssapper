; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6174 () Bool)

(assert start!6174)

(declare-fun res!21662 () Bool)

(declare-fun e!23786 () Bool)

(assert (=> start!6174 (=> (not res!21662) (not e!23786))))

(declare-datatypes () ((Nat!181 (Zero!165) (Succ!162 (n!1314 Nat!181)))))

(declare-fun n3!55 () Nat!181)

(declare-fun n2!249 () Nat!181)

(declare-fun n1!237 () Nat!181)

(declare-fun n2!248 () Nat!181)

(declare-fun n1!236 () Nat!181)

(assert (=> start!6174 (= res!21662 (and (= n1!237 n1!236) (= n2!249 n2!248) (= n3!55 n2!248)))))

(assert (=> start!6174 e!23786))

(assert (=> start!6174 true))

(declare-fun b!45851 () Bool)

(declare-fun >=!2 (Nat!181 Nat!181) Bool)

(assert (=> b!45851 (= e!23786 (not (>=!2 n2!249 n3!55)))))

(assert (= (and start!6174 res!21662) b!45851))

(declare-fun m!48759 () Bool)

(assert (=> b!45851 m!48759))

(push 1)

(assert (not b!45851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!32050 () Bool)

(declare-fun res!21665 () Bool)

(declare-fun e!23789 () Bool)

(assert (=> d!32050 (=> res!21665 e!23789)))

(declare-fun >!2 (Nat!181 Nat!181) Bool)

(assert (=> d!32050 (= res!21665 (>!2 n2!249 n3!55))))

(assert (=> d!32050 (= (>=!2 n2!249 n3!55) e!23789)))

(declare-fun b!45854 () Bool)

(assert (=> b!45854 (= e!23789 (= n2!249 n3!55))))

(assert (= (and d!32050 (not res!21665)) b!45854))

(declare-fun m!48761 () Bool)

(assert (=> d!32050 m!48761))

(assert (=> b!45851 d!32050))

(push 1)

(assert (not d!32050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

