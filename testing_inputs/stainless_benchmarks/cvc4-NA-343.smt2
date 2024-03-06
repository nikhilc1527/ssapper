; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2616 () Bool)

(assert start!2616)

(declare-fun b!12848 () Bool)

(declare-fun e!7046 () Bool)

(declare-fun tp_is_empty!39 () Bool)

(assert (=> b!12848 (= e!7046 tp_is_empty!39)))

(declare-fun b!12849 () Bool)

(declare-fun e!7045 () Bool)

(declare-fun tp!3212 () Bool)

(assert (=> b!12849 (= e!7045 (and tp_is_empty!39 tp!3212))))

(declare-fun res!4761 () Bool)

(declare-fun e!7047 () Bool)

(assert (=> start!2616 (=> (not res!4761) (not e!7047))))

(declare-datatypes () ((A!938 (A!939 (val!20 Int)))))

(declare-datatypes () ((Tree!80 (Branch!71 (left!549 Tree!80) (right!552 Tree!80)) (Leaf!153 (value!1322 A!938)))))

(declare-fun thiss!1092 () Tree!80)

(declare-datatypes () ((List!302 (Nil!300) (Cons!299 (head!517 A!938) (tail!529 List!302)))))

(declare-fun res!1484 () List!302)

(assert (=> start!2616 (= res!4761 (and (is-Leaf!153 thiss!1092) (= res!1484 (Cons!299 (value!1322 thiss!1092) Nil!300))))))

(assert (=> start!2616 e!7047))

(assert (=> start!2616 e!7046))

(assert (=> start!2616 e!7045))

(declare-fun b!12846 () Bool)

(declare-fun isEmpty!226 (List!302) Bool)

(assert (=> b!12846 (= e!7047 (isEmpty!226 res!1484))))

(declare-fun b!12847 () Bool)

(declare-fun tp!3210 () Bool)

(declare-fun tp!3211 () Bool)

(assert (=> b!12847 (= e!7046 (and tp!3210 tp!3211))))

(assert (= (and start!2616 res!4761) b!12846))

(assert (= (and start!2616 (is-Branch!71 thiss!1092)) b!12847))

(assert (= (and start!2616 (is-Leaf!153 thiss!1092)) b!12848))

(assert (= (and start!2616 (is-Cons!299 res!1484)) b!12849))

(declare-fun m!16215 () Bool)

(assert (=> b!12846 m!16215))

(push 1)

(assert (not b!12846))

(assert (not b!12847))

(assert (not b!12849))

(assert tp_is_empty!39)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10133 () Bool)

(assert (=> d!10133 (= (isEmpty!226 res!1484) (is-Nil!300 res!1484))))

(assert (=> b!12846 d!10133))

(declare-fun b!12856 () Bool)

(declare-fun e!7050 () Bool)

(declare-fun tp!3217 () Bool)

(declare-fun tp!3218 () Bool)

(assert (=> b!12856 (= e!7050 (and tp!3217 tp!3218))))

(declare-fun b!12857 () Bool)

(assert (=> b!12857 (= e!7050 tp_is_empty!39)))

(assert (=> b!12847 (= tp!3210 e!7050)))

(assert (= (and b!12847 (is-Branch!71 (left!549 thiss!1092))) b!12856))

(assert (= (and b!12847 (is-Leaf!153 (left!549 thiss!1092))) b!12857))

(declare-fun b!12858 () Bool)

(declare-fun e!7051 () Bool)

(declare-fun tp!3219 () Bool)

(declare-fun tp!3220 () Bool)

(assert (=> b!12858 (= e!7051 (and tp!3219 tp!3220))))

(declare-fun b!12859 () Bool)

(assert (=> b!12859 (= e!7051 tp_is_empty!39)))

(assert (=> b!12847 (= tp!3211 e!7051)))

(assert (= (and b!12847 (is-Branch!71 (right!552 thiss!1092))) b!12858))

(assert (= (and b!12847 (is-Leaf!153 (right!552 thiss!1092))) b!12859))

(declare-fun b!12864 () Bool)

(declare-fun e!7054 () Bool)

(declare-fun tp!3223 () Bool)

(assert (=> b!12864 (= e!7054 (and tp_is_empty!39 tp!3223))))

(assert (=> b!12849 (= tp!3212 e!7054)))

(assert (= (and b!12849 (is-Cons!299 (tail!529 res!1484))) b!12864))

(push 1)

(assert (not b!12864))

(assert (not b!12858))

(assert (not b!12856))

(assert tp_is_empty!39)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

