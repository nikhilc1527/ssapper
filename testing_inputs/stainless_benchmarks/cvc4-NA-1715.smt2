; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11844 () Bool)

(assert start!11844)

(declare-fun b!90119 () Bool)

(declare-fun b_free!7623 () Bool)

(declare-fun b_next!39993 () Bool)

(assert (=> b!90119 (= b_free!7623 (not b_next!39993))))

(declare-fun tp!17688 () Bool)

(declare-fun b_and!60675 () Bool)

(assert (=> b!90119 (= tp!17688 b_and!60675)))

(declare-fun res!47184 () Bool)

(declare-fun e!49180 () Bool)

(assert (=> start!11844 (=> (not res!47184) (not e!49180))))

(declare-fun h1!44 () Int)

(declare-fun n!1812 () Int)

(declare-datatypes () ((Stream!32 (Stream!33 (head!1107 Int) (tail!1102 Int)))))

(declare-fun s!2618 () Stream!32)

(assert (=> start!11844 (= res!47184 (and (>= n!1812 0) (= h1!44 (head!1107 s!2618))))))

(assert (=> start!11844 e!49180))

(assert (=> start!11844 true))

(declare-fun e!49179 () Bool)

(assert (=> start!11844 e!49179))

(declare-fun b!90117 () Bool)

(declare-fun res!47185 () Bool)

(assert (=> b!90117 (=> (not res!47185) (not e!49180))))

(declare-fun h2!46 () Int)

(declare-fun dynLambda!1098 (Int) Stream!32)

(assert (=> b!90117 (= res!47185 (= h2!46 (head!1107 (dynLambda!1098 (tail!1102 s!2618)))))))

(declare-fun head!1090 () Int)

(declare-fun b!90118 () Bool)

(assert (=> b!90118 (= e!49180 (and (or (< h1!44 1) (>= h1!44 9) (not (= h2!46 1))) (> n!1812 0) (= head!1090 h1!44) (not (= (- n!1812 1) (- n!1812 1)))))))

(assert (=> b!90119 (= e!49179 tp!17688)))

(assert (= (and start!11844 res!47184) b!90117))

(assert (= (and b!90117 res!47185) b!90118))

(assert (= start!11844 b!90119))

(declare-fun b_lambda!18439 () Bool)

(assert (=> (not b_lambda!18439) (not b!90117)))

(declare-fun t!48945 () Bool)

(declare-fun tb!46767 () Bool)

(assert (=> (and b!90119 (= (tail!1102 s!2618) (tail!1102 s!2618)) t!48945) tb!46767))

(assert (=> b!90117 t!48945))

(declare-fun result!47255 () Bool)

(declare-fun b_and!60677 () Bool)

(assert (= b_and!60675 (and (=> t!48945 result!47255) b_and!60677)))

(declare-fun m!85964 () Bool)

(assert (=> b!90117 m!85964))

(push 1)

(assert (not tb!46767))

(assert (not b_lambda!18439))

(assert b_and!60677)

(assert (not b_next!39993))

(check-sat)

(pop 1)

(push 1)

(assert b_and!60677)

(assert (not b_next!39993))

(check-sat)

(pop 1)

