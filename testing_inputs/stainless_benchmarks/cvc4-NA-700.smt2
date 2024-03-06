; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5006 () Bool)

(assert start!5006)

(declare-fun b!38775 () Bool)

(declare-fun b_free!2883 () Bool)

(declare-fun b_next!7261 () Bool)

(assert (=> b!38775 (= b_free!2883 (not b_next!7261))))

(declare-fun tp!8412 () Bool)

(declare-fun b_and!10179 () Bool)

(assert (=> b!38775 (= tp!8412 b_and!10179)))

(declare-fun b_free!2885 () Bool)

(declare-fun b_next!7263 () Bool)

(assert (=> b!38775 (= b_free!2885 (not b_next!7263))))

(declare-fun tp!8422 () Bool)

(declare-fun b_and!10181 () Bool)

(assert (=> b!38775 (= tp!8422 b_and!10181)))

(declare-fun b_free!2887 () Bool)

(declare-fun b_next!7265 () Bool)

(assert (=> b!38775 (= b_free!2887 (not b_next!7265))))

(declare-fun tp!8411 () Bool)

(declare-fun b_and!10183 () Bool)

(assert (=> b!38775 (= tp!8411 b_and!10183)))

(declare-fun b!38772 () Bool)

(declare-fun b_free!2889 () Bool)

(declare-fun b_next!7267 () Bool)

(assert (=> b!38772 (= b_free!2889 (not b_next!7267))))

(declare-fun tp!8414 () Bool)

(declare-fun b_and!10185 () Bool)

(assert (=> b!38772 (= tp!8414 b_and!10185)))

(declare-fun b_free!2891 () Bool)

(declare-fun b_next!7269 () Bool)

(assert (=> b!38772 (= b_free!2891 (not b_next!7269))))

(declare-fun tp!8421 () Bool)

(declare-fun b_and!10187 () Bool)

(assert (=> b!38772 (= tp!8421 b_and!10187)))

(declare-fun b_free!2893 () Bool)

(declare-fun b_next!7271 () Bool)

(assert (=> b!38772 (= b_free!2893 (not b_next!7271))))

(declare-fun tp!8418 () Bool)

(declare-fun b_and!10189 () Bool)

(assert (=> b!38772 (= tp!8418 b_and!10189)))

(declare-fun b!38768 () Bool)

(declare-fun b_free!2895 () Bool)

(declare-fun b_next!7273 () Bool)

(assert (=> b!38768 (= b_free!2895 (not b_next!7273))))

(declare-fun tp!8417 () Bool)

(declare-fun b_and!10191 () Bool)

(assert (=> b!38768 (= tp!8417 b_and!10191)))

(declare-fun b_free!2897 () Bool)

(declare-fun b_next!7275 () Bool)

(assert (=> b!38768 (= b_free!2897 (not b_next!7275))))

(declare-fun tp!8408 () Bool)

(declare-fun b_and!10193 () Bool)

(assert (=> b!38768 (= tp!8408 b_and!10193)))

(declare-fun b_free!2899 () Bool)

(declare-fun b_next!7277 () Bool)

(assert (=> b!38768 (= b_free!2899 (not b_next!7277))))

(declare-fun tp!8416 () Bool)

(declare-fun b_and!10195 () Bool)

(assert (=> b!38768 (= tp!8416 b_and!10195)))

(declare-fun b!38770 () Bool)

(declare-fun b_free!2901 () Bool)

(declare-fun b_next!7279 () Bool)

(assert (=> b!38770 (= b_free!2901 (not b_next!7279))))

(declare-fun tp!8410 () Bool)

(declare-fun b_and!10197 () Bool)

(assert (=> b!38770 (= tp!8410 b_and!10197)))

(declare-fun b_free!2903 () Bool)

(declare-fun b_next!7281 () Bool)

(assert (=> b!38770 (= b_free!2903 (not b_next!7281))))

(declare-fun tp!8413 () Bool)

(declare-fun b_and!10199 () Bool)

(assert (=> b!38770 (= tp!8413 b_and!10199)))

(declare-fun b_free!2905 () Bool)

(declare-fun b_next!7283 () Bool)

(assert (=> b!38770 (= b_free!2905 (not b_next!7283))))

(declare-fun tp!8419 () Bool)

(declare-fun b_and!10201 () Bool)

(assert (=> b!38770 (= tp!8419 b_and!10201)))

(declare-fun b!38774 () Bool)

(declare-fun b_free!2907 () Bool)

(declare-fun b_next!7285 () Bool)

(assert (=> b!38774 (= b_free!2907 (not b_next!7285))))

(declare-fun tp!8415 () Bool)

(declare-fun b_and!10203 () Bool)

(assert (=> b!38774 (= tp!8415 b_and!10203)))

(declare-fun b_free!2909 () Bool)

(declare-fun b_next!7287 () Bool)

(assert (=> b!38774 (= b_free!2909 (not b_next!7287))))

(declare-fun tp!8420 () Bool)

(declare-fun b_and!10205 () Bool)

(assert (=> b!38774 (= tp!8420 b_and!10205)))

(declare-fun b_free!2911 () Bool)

(declare-fun b_next!7289 () Bool)

(assert (=> b!38774 (= b_free!2911 (not b_next!7289))))

(declare-fun tp!8409 () Bool)

(declare-fun b_and!10207 () Bool)

(assert (=> b!38774 (= tp!8409 b_and!10207)))

(declare-fun e!19983 () Bool)

(assert (=> b!38768 (= e!19983 (and tp!8417 tp!8408 tp!8416))))

(declare-fun b!38769 () Bool)

(declare-fun e!19985 () Bool)

(assert (=> b!38769 (= e!19985 false)))

(declare-fun e!19987 () Bool)

(assert (=> b!38770 (= e!19987 (and tp!8410 tp!8413 tp!8419))))

(declare-fun b!38771 () Bool)

(declare-fun res!18502 () Bool)

(assert (=> b!38771 (=> (not res!18502) (not e!19985))))

(declare-datatypes () ((Nat!61 (Zero!45) (Succ!42 (n!1134 Nat!61)))))

(declare-fun remainder!2 () Nat!61)

(declare-fun p1!72 () Nat!61)

(declare-datatypes () ((tuple2!200 (tuple2!201 (_1!126 Nat!61) (_2!126 Nat!61)))))

(declare-fun x$98!1 () tuple2!200)

(assert (=> b!38771 (= res!18502 (and (= p1!72 (_1!126 x$98!1)) (= remainder!2 (_2!126 x$98!1))))))

(declare-fun e!19984 () Bool)

(assert (=> b!38772 (= e!19984 (and tp!8414 tp!8421 tp!8418))))

(declare-fun b!38773 () Bool)

(declare-fun res!18501 () Bool)

(assert (=> b!38773 (=> (not res!18501) (not e!19985))))

(declare-fun p2!66 () Nat!61)

(declare-fun /!2 (Nat!61 Nat!61) Nat!61)

(declare-fun -!4 (Nat!61 Nat!61) Nat!61)

(assert (=> b!38773 (= res!18501 (= p2!66 (/!2 (-!4 remainder!2 (Succ!42 Zero!45)) (Succ!42 (Succ!42 Zero!45)))))))

(declare-fun e!19982 () Bool)

(assert (=> b!38774 (= e!19982 (and tp!8415 tp!8420 tp!8409))))

(declare-fun res!18503 () Bool)

(assert (=> start!5006 (=> (not res!18503) (not e!19985))))

(declare-fun n2!332 () Nat!61)

(declare-fun n1!316 () Nat!61)

(declare-fun log2_and_remainder!0 (Nat!61) tuple2!200)

(declare-fun pair!0 (Nat!61 Nat!61) Nat!61)

(assert (=> start!5006 (= res!18503 (= x$98!1 (tuple2!201 (_1!126 (log2_and_remainder!0 (Succ!42 (pair!0 n1!316 n2!332)))) (_2!126 (log2_and_remainder!0 (Succ!42 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5006 e!19985))

(assert (=> start!5006 true))

(declare-datatypes () ((Unit!333 (Unit!334))))

(declare-datatypes () ((RAEqEvidence!98 (RAEqEvidence!99 (x!13457 Int) (y!1388 Int) (evidence!501 Int)))))

(declare-fun prev!738 () RAEqEvidence!98)

(declare-fun e!19986 () Bool)

(declare-fun inv!698 (RAEqEvidence!98) Bool)

(assert (=> start!5006 (and (inv!698 prev!738) e!19986)))

(declare-datatypes () ((RAEqEvidence!100 (RAEqEvidence!101 (x!13458 Int) (y!1389 Int) (evidence!502 Int)))))

(declare-fun x$103!3 () RAEqEvidence!100)

(declare-fun inv!699 (RAEqEvidence!100) Bool)

(assert (=> start!5006 (and (inv!699 x$103!3) e!19983)))

(declare-fun x$102!4 () RAEqEvidence!98)

(assert (=> start!5006 (and (inv!698 x$102!4) e!19984)))

(declare-fun thiss!6256 () RAEqEvidence!98)

(assert (=> start!5006 (and (inv!698 thiss!6256) e!19987)))

(declare-fun x$104!2 () RAEqEvidence!100)

(assert (=> start!5006 (and (inv!699 x$104!2) e!19982)))

(assert (=> b!38775 (= e!19986 (and tp!8412 tp!8422 tp!8411))))

(assert (= (and start!5006 res!18503) b!38771))

(assert (= (and b!38771 res!18502) b!38773))

(assert (= (and b!38773 res!18501) b!38769))

(assert (= start!5006 b!38775))

(assert (= start!5006 b!38768))

(assert (= start!5006 b!38772))

(assert (= start!5006 b!38770))

(assert (= start!5006 b!38774))

(declare-fun m!39975 () Bool)

(assert (=> b!38773 m!39975))

(assert (=> b!38773 m!39975))

(declare-fun m!39977 () Bool)

(assert (=> b!38773 m!39977))

(declare-fun m!39979 () Bool)

(assert (=> start!5006 m!39979))

(declare-fun m!39981 () Bool)

(assert (=> start!5006 m!39981))

(declare-fun m!39983 () Bool)

(assert (=> start!5006 m!39983))

(declare-fun m!39985 () Bool)

(assert (=> start!5006 m!39985))

(declare-fun m!39987 () Bool)

(assert (=> start!5006 m!39987))

(declare-fun m!39989 () Bool)

(assert (=> start!5006 m!39989))

(declare-fun m!39991 () Bool)

(assert (=> start!5006 m!39991))

(push 1)

(assert (not b!38773))

(assert b_and!10185)

(assert b_and!10191)

(assert (not b_next!7267))

(assert (not b_next!7285))

(assert b_and!10195)

(assert (not b_next!7263))

(assert b_and!10205)

(assert b_and!10201)

(assert b_and!10199)

(assert (not b_next!7283))

(assert b_and!10203)

(assert b_and!10179)

(assert b_and!10183)

(assert (not b_next!7265))

(assert (not b_next!7277))

(assert b_and!10189)

(assert (not b_next!7289))

(assert (not b_next!7261))

(assert (not b_next!7281))

(assert b_and!10193)

(assert (not start!5006))

(assert b_and!10197)

(assert b_and!10187)

(assert (not b_next!7279))

(assert (not b_next!7269))

(assert (not b_next!7271))

(assert b_and!10207)

(assert b_and!10181)

(assert (not b_next!7287))

(assert (not b_next!7273))

(assert (not b_next!7275))

(check-sat)

(pop 1)

(push 1)

(assert b_and!10185)

(assert b_and!10191)

(assert (not b_next!7267))

(assert (not b_next!7285))

(assert b_and!10195)

(assert (not b_next!7263))

(assert b_and!10205)

(assert b_and!10201)

(assert b_and!10199)

(assert (not b_next!7283))

(assert b_and!10203)

(assert b_and!10179)

(assert b_and!10183)

(assert (not b_next!7265))

(assert (not b_next!7277))

(assert b_and!10189)

(assert (not b_next!7289))

(assert (not b_next!7261))

(assert (not b_next!7281))

(assert b_and!10193)

(assert b_and!10197)

(assert b_and!10187)

(assert (not b_next!7279))

(assert (not b_next!7269))

(assert (not b_next!7271))

(assert b_and!10207)

(assert b_and!10181)

(assert (not b_next!7287))

(assert (not b_next!7273))

(assert (not b_next!7275))

(check-sat)

(pop 1)

