; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!1828 () Bool)

(assert start!1828)

(declare-fun b!9150 () Bool)

(declare-fun b_free!1013 () Bool)

(declare-fun b_next!2405 () Bool)

(assert (=> b!9150 (= b_free!1013 (not b_next!2405))))

(declare-fun tp!1660 () Bool)

(declare-fun b_and!3759 () Bool)

(assert (=> b!9150 (= tp!1660 b_and!3759)))

(declare-fun b_free!1015 () Bool)

(declare-fun b_next!2407 () Bool)

(assert (=> b!9150 (= b_free!1015 (not b_next!2407))))

(declare-fun tp!1655 () Bool)

(declare-fun b_and!3761 () Bool)

(assert (=> b!9150 (= tp!1655 b_and!3761)))

(declare-fun b_free!1017 () Bool)

(declare-fun b_next!2409 () Bool)

(assert (=> b!9150 (= b_free!1017 (not b_next!2409))))

(declare-fun tp!1657 () Bool)

(declare-fun b_and!3763 () Bool)

(assert (=> b!9150 (= tp!1657 b_and!3763)))

(declare-fun b_free!1019 () Bool)

(declare-fun b_next!2411 () Bool)

(assert (=> start!1828 (= b_free!1019 (not b_next!2411))))

(declare-fun tp!1656 () Bool)

(declare-fun b_and!3765 () Bool)

(assert (=> start!1828 (= tp!1656 b_and!3765)))

(declare-fun b!9151 () Bool)

(declare-fun b_free!1021 () Bool)

(declare-fun b_next!2413 () Bool)

(assert (=> b!9151 (= b_free!1021 (not b_next!2413))))

(declare-fun tp!1654 () Bool)

(declare-fun b_and!3767 () Bool)

(assert (=> b!9151 (= tp!1654 b_and!3767)))

(declare-fun b_free!1023 () Bool)

(declare-fun b_next!2415 () Bool)

(assert (=> b!9151 (= b_free!1023 (not b_next!2415))))

(declare-fun tp!1658 () Bool)

(declare-fun b_and!3769 () Bool)

(assert (=> b!9151 (= tp!1658 b_and!3769)))

(declare-fun b_free!1025 () Bool)

(declare-fun b_next!2417 () Bool)

(assert (=> b!9151 (= b_free!1025 (not b_next!2417))))

(declare-fun tp!1659 () Bool)

(declare-fun b_and!3771 () Bool)

(assert (=> b!9151 (= tp!1659 b_and!3771)))

(declare-fun f!585 () Int)

(declare-fun lambda!2230 () Int)

(declare-fun b_next!2419 () Bool)

(assert (=> start!1828 (= b_next!2411 (or (and start!1828 (= lambda!2230 f!585)) b_next!2419))))

(declare-fun b!9149 () Bool)

(declare-fun e!5386 () Bool)

(assert (=> b!9149 (= e!5386 false)))

(declare-fun res!2919 () Bool)

(assert (=> start!1828 (=> (not res!2919) (not e!5386))))

(assert (=> start!1828 (= res!2919 (= f!585 lambda!2230))))

(assert (=> start!1828 e!5386))

(assert (=> start!1828 true))

(declare-datatypes () ((Balance!197 (Balance!198 (extraOpen!139 Int) (extraClose!139 Int)))))

(declare-datatypes () ((EqEvidence!160 (EqEvidence!161 (x!5073 Int) (y!563 Int) (evidence!147 Int)))))

(declare-fun that!223 () EqEvidence!160)

(declare-fun e!5384 () Bool)

(declare-fun inv!322 (EqEvidence!160) Bool)

(assert (=> start!1828 (and (inv!322 that!223) e!5384)))

(assert (=> start!1828 tp!1656))

(declare-fun thiss!855 () EqEvidence!160)

(declare-fun e!5385 () Bool)

(assert (=> start!1828 (and (inv!322 thiss!855) e!5385)))

(assert (=> b!9151 (= e!5385 (and tp!1654 tp!1658 tp!1659))))

(declare-fun b!9148 () Bool)

(declare-fun res!2920 () Bool)

(assert (=> b!9148 (=> (not res!2920) (not e!5386))))

(declare-datatypes () ((ProofOps!144 (ProofOps!145 (prop!189 Bool)))))

(declare-fun thiss!829 () ProofOps!144)

(declare-datatypes () ((Tree!61 (Branch!52 (left!424 Tree!61) (right!427 Tree!61)) (Leaf!134 (value!1303 Balance!197)))))

(declare-fun tree!25 () Tree!61)

(declare-fun fold!37 (Tree!61 Int) Balance!197)

(declare-datatypes () ((List!215 (Nil!213) (Cons!212 (head!430 Balance!197) (tail!442 List!215)))))

(declare-fun foldRight1!68 (List!215 Int) Balance!197)

(declare-fun toList!61 (Tree!61) List!215)

(assert (=> b!9148 (= res!2920 (= thiss!829 (ProofOps!145 (= (fold!37 tree!25 f!585) (foldRight1!68 (toList!61 tree!25) f!585)))))))

(assert (=> b!9150 (= e!5384 (and tp!1660 tp!1655 tp!1657))))

(assert (= (and start!1828 res!2919) b!9148))

(assert (= (and b!9148 res!2920) b!9149))

(assert (= start!1828 b!9150))

(assert (= start!1828 b!9151))

(declare-fun m!12099 () Bool)

(assert (=> start!1828 m!12099))

(declare-fun m!12101 () Bool)

(assert (=> start!1828 m!12101))

(declare-fun m!12103 () Bool)

(assert (=> b!9148 m!12103))

(declare-fun m!12105 () Bool)

(assert (=> b!9148 m!12105))

(assert (=> b!9148 m!12105))

(declare-fun m!12107 () Bool)

(assert (=> b!9148 m!12107))

(push 1)

(assert b_and!3771)

(assert (not b_next!2405))

(assert b_and!3765)

(assert (not b_next!2415))

(assert (not b_next!2409))

(assert b_and!3767)

(assert b_and!3769)

(assert (not b_next!2417))

(assert (not b!9148))

(assert (not b_next!2407))

(assert (not start!1828))

(assert b_and!3761)

(assert (not b_next!2419))

(assert b_and!3759)

(assert (not b_next!2413))

(assert b_and!3763)

(check-sat)

(pop 1)

(push 1)

(assert b_and!3771)

(assert (not b_next!2405))

(assert b_and!3765)

(assert (not b_next!2415))

(assert (not b_next!2409))

(assert b_and!3767)

(assert b_and!3769)

(assert (not b_next!2417))

(assert (not b_next!2407))

(assert b_and!3761)

(assert (not b_next!2419))

(assert b_and!3759)

(assert (not b_next!2413))

(assert b_and!3763)

(check-sat)

(pop 1)

