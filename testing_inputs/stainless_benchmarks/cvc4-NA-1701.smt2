; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11816 () Bool)

(assert start!11816)

(declare-fun b!89949 () Bool)

(declare-fun b_free!7545 () Bool)

(declare-fun b_next!39907 () Bool)

(assert (=> b!89949 (= b_free!7545 (not b_next!39907))))

(declare-fun tp!17577 () Bool)

(declare-fun b_and!60547 () Bool)

(assert (=> b!89949 (= tp!17577 b_and!60547)))

(declare-fun b_free!7547 () Bool)

(declare-fun b_next!39909 () Bool)

(assert (=> start!11816 (= b_free!7547 (not b_next!39909))))

(declare-fun tp!17575 () Bool)

(declare-fun b_and!60549 () Bool)

(assert (=> start!11816 (= tp!17575 b_and!60549)))

(declare-fun b!89945 () Bool)

(declare-fun b_free!7549 () Bool)

(declare-fun b_next!39911 () Bool)

(assert (=> b!89945 (= b_free!7549 (not b_next!39911))))

(declare-fun tp!17576 () Bool)

(declare-fun b_and!60551 () Bool)

(assert (=> b!89945 (= tp!17576 b_and!60551)))

(declare-fun lambda!11081 () Int)

(declare-fun b_next!39913 () Bool)

(declare-fun b!89946 () Bool)

(declare-fun f!5012 () Int)

(assert (=> start!11816 (= b_next!39909 (or (and b!89946 (= lambda!11081 f!5012)) b_next!39913))))

(declare-fun b!89944 () Bool)

(declare-fun e!49080 () Bool)

(declare-fun n!1800 () Int)

(assert (=> b!89944 (= e!49080 (< n!1800 0))))

(declare-fun e!49081 () Bool)

(assert (=> b!89945 (= e!49081 tp!17576)))

(declare-fun res!47099 () Bool)

(assert (=> b!89946 (=> (not res!47099) (not e!49080))))

(assert (=> b!89946 (= res!47099 (= f!5012 lambda!11081))))

(declare-fun b!89947 () Bool)

(declare-fun res!47098 () Bool)

(assert (=> b!89947 (=> (not res!47098) (not e!49080))))

(declare-datatypes () ((Stream!8 (Stream!9 (head!1095 Int) (tail!1090 Int)))))

(declare-fun s1!125 () Stream!8)

(declare-fun n!1799 () Int)

(declare-fun fib!0 (Int) Stream!8)

(assert (=> b!89947 (= res!47098 (= s1!125 (fib!0 (- n!1799 2))))))

(declare-fun res!47100 () Bool)

(assert (=> start!11816 (=> (not res!47100) (not e!49080))))

(declare-fun head!1085 () Int)

(declare-fun head!1087 () Int)

(assert (=> start!11816 (= res!47100 (and (>= n!1799 0) (> n!1799 0) (= head!1085 0) (> (- n!1799 1) 0) (= head!1087 1) (= n!1800 (- n!1799 2))))))

(assert (=> start!11816 e!49080))

(assert (=> start!11816 true))

(declare-fun e!49079 () Bool)

(assert (=> start!11816 e!49079))

(assert (=> start!11816 tp!17575))

(assert (=> start!11816 e!49081))

(declare-fun b!89948 () Bool)

(declare-fun res!47101 () Bool)

(assert (=> b!89948 (=> (not res!47101) (not e!49080))))

(declare-fun s2!121 () Stream!8)

(declare-fun dynLambda!1087 (Int) Stream!8)

(assert (=> b!89948 (= res!47101 (= s2!121 (dynLambda!1087 (tail!1090 (fib!0 (- n!1799 1))))))))

(assert (=> b!89949 (= e!49079 tp!17577)))

(assert (= (and start!11816 res!47100) b!89946))

(assert (= (and b!89946 res!47099) b!89947))

(assert (= (and b!89947 res!47098) b!89948))

(assert (= (and b!89948 res!47101) b!89944))

(assert (= start!11816 b!89949))

(assert (= start!11816 b!89945))

(declare-fun b_lambda!18413 () Bool)

(assert (=> (not b_lambda!18413) (not b!89948)))

(declare-fun t!48903 () Bool)

(declare-fun tb!46725 () Bool)

(assert (=> (and b!89949 (= (tail!1090 s1!125) (tail!1090 (fib!0 (- n!1799 1)))) t!48903) tb!46725))

(assert (=> b!89948 t!48903))

(declare-fun result!47205 () Bool)

(declare-fun b_and!60553 () Bool)

(assert (= b_and!60547 (and (=> t!48903 result!47205) b_and!60553)))

(declare-fun tb!46727 () Bool)

(declare-fun t!48905 () Bool)

(assert (=> (and b!89945 (= (tail!1090 s2!121) (tail!1090 (fib!0 (- n!1799 1)))) t!48905) tb!46727))

(assert (=> b!89948 t!48905))

(declare-fun result!47207 () Bool)

(declare-fun b_and!60555 () Bool)

(assert (= b_and!60551 (and (=> t!48905 result!47207) b_and!60555)))

(declare-fun m!85936 () Bool)

(assert (=> b!89947 m!85936))

(declare-fun m!85938 () Bool)

(assert (=> b!89948 m!85938))

(declare-fun m!85940 () Bool)

(assert (=> b!89948 m!85940))

(push 1)

(assert (not tb!46725))

(assert b_and!60549)

(assert b_and!60555)

(assert (not b!89948))

(assert (not b_next!39907))

(assert (not b_lambda!18413))

(assert (not tb!46727))

(assert (not b!89947))

(assert b_and!60553)

(assert (not b_next!39911))

(assert (not b_next!39913))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60549)

(assert b_and!60555)

(assert (not b_next!39907))

(assert b_and!60553)

(assert (not b_next!39911))

(assert (not b_next!39913))

(check-sat)

(pop 1)

