; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11814 () Bool)

(assert start!11814)

(declare-fun b!89929 () Bool)

(declare-fun b_free!7541 () Bool)

(declare-fun b_next!39901 () Bool)

(assert (=> b!89929 (= b_free!7541 (not b_next!39901))))

(declare-fun tp!17568 () Bool)

(declare-fun b_and!60543 () Bool)

(assert (=> b!89929 (= tp!17568 b_and!60543)))

(declare-fun b_free!7543 () Bool)

(declare-fun b_next!39903 () Bool)

(assert (=> start!11814 (= b_free!7543 (not b_next!39903))))

(declare-fun tp!17567 () Bool)

(declare-fun b_and!60545 () Bool)

(assert (=> start!11814 (= tp!17567 b_and!60545)))

(declare-fun lambda!11078 () Int)

(declare-fun b!89926 () Bool)

(declare-fun b_next!39905 () Bool)

(declare-fun f!5014 () Int)

(assert (=> start!11814 (= b_next!39903 (or (and b!89926 (= lambda!11078 f!5014)) b_next!39905))))

(declare-fun b!89927 () Bool)

(declare-fun res!47087 () Bool)

(declare-fun e!49072 () Bool)

(assert (=> b!89927 (=> (not res!47087) (not e!49072))))

(declare-datatypes () ((Stream!6 (Stream!7 (head!1094 Int) (tail!1089 Int)))))

(declare-fun s1!127 () Stream!6)

(declare-fun n!1799 () Int)

(declare-fun fib!0 (Int) Stream!6)

(assert (=> b!89927 (= res!47087 (= s1!127 (fib!0 (- n!1799 2))))))

(declare-fun res!47088 () Bool)

(assert (=> b!89926 (=> (not res!47088) (not e!49072))))

(assert (=> b!89926 (= res!47088 (= f!5014 lambda!11078))))

(declare-fun res!47089 () Bool)

(assert (=> start!11814 (=> (not res!47089) (not e!49072))))

(declare-fun head!1085 () Int)

(declare-fun head!1087 () Int)

(declare-fun n!1802 () Int)

(assert (=> start!11814 (= res!47089 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (> (- n!1799 1) 0) (= head!1087 1) (= n!1802 (- n!1799 2))))))

(assert (=> start!11814 e!49072))

(assert (=> start!11814 true))

(declare-fun e!49071 () Bool)

(assert (=> start!11814 e!49071))

(assert (=> start!11814 tp!17567))

(declare-fun b!89928 () Bool)

(declare-fun n!1806 () Int)

(assert (=> b!89928 (= e!49072 (and (= n!1806 (- n!1799 1)) (< n!1806 0)))))

(assert (=> b!89929 (= e!49071 tp!17568)))

(assert (= (and start!11814 res!47089) b!89926))

(assert (= (and b!89926 res!47088) b!89927))

(assert (= (and b!89927 res!47087) b!89928))

(assert (= start!11814 b!89929))

(declare-fun m!85934 () Bool)

(assert (=> b!89927 m!85934))

(push 1)

(assert (not b!89927))

(assert (not b_next!39905))

(assert (not b_next!39901))

(assert b_and!60543)

(assert b_and!60545)

(check-sat)

(pop 1)

(push 1)

(assert b_and!60545)

(assert b_and!60543)

(assert (not b_next!39901))

(assert (not b_next!39905))

(check-sat)

(pop 1)

