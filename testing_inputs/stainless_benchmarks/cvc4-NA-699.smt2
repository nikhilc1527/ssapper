; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5004 () Bool)

(assert start!5004)

(declare-fun b!38749 () Bool)

(declare-fun b_free!2853 () Bool)

(declare-fun b_next!7231 () Bool)

(assert (=> b!38749 (= b_free!2853 (not b_next!7231))))

(declare-fun tp!8375 () Bool)

(declare-fun b_and!10149 () Bool)

(assert (=> b!38749 (= tp!8375 b_and!10149)))

(declare-fun b_free!2855 () Bool)

(declare-fun b_next!7233 () Bool)

(assert (=> b!38749 (= b_free!2855 (not b_next!7233))))

(declare-fun tp!8365 () Bool)

(declare-fun b_and!10151 () Bool)

(assert (=> b!38749 (= tp!8365 b_and!10151)))

(declare-fun b_free!2857 () Bool)

(declare-fun b_next!7235 () Bool)

(assert (=> b!38749 (= b_free!2857 (not b_next!7235))))

(declare-fun tp!8371 () Bool)

(declare-fun b_and!10153 () Bool)

(assert (=> b!38749 (= tp!8371 b_and!10153)))

(declare-fun b!38744 () Bool)

(declare-fun b_free!2859 () Bool)

(declare-fun b_next!7237 () Bool)

(assert (=> b!38744 (= b_free!2859 (not b_next!7237))))

(declare-fun tp!8374 () Bool)

(declare-fun b_and!10155 () Bool)

(assert (=> b!38744 (= tp!8374 b_and!10155)))

(declare-fun b_free!2861 () Bool)

(declare-fun b_next!7239 () Bool)

(assert (=> b!38744 (= b_free!2861 (not b_next!7239))))

(declare-fun tp!8364 () Bool)

(declare-fun b_and!10157 () Bool)

(assert (=> b!38744 (= tp!8364 b_and!10157)))

(declare-fun b_free!2863 () Bool)

(declare-fun b_next!7241 () Bool)

(assert (=> b!38744 (= b_free!2863 (not b_next!7241))))

(declare-fun tp!8369 () Bool)

(declare-fun b_and!10159 () Bool)

(assert (=> b!38744 (= tp!8369 b_and!10159)))

(declare-fun b!38748 () Bool)

(declare-fun b_free!2865 () Bool)

(declare-fun b_next!7243 () Bool)

(assert (=> b!38748 (= b_free!2865 (not b_next!7243))))

(declare-fun tp!8368 () Bool)

(declare-fun b_and!10161 () Bool)

(assert (=> b!38748 (= tp!8368 b_and!10161)))

(declare-fun b_free!2867 () Bool)

(declare-fun b_next!7245 () Bool)

(assert (=> b!38748 (= b_free!2867 (not b_next!7245))))

(declare-fun tp!8373 () Bool)

(declare-fun b_and!10163 () Bool)

(assert (=> b!38748 (= tp!8373 b_and!10163)))

(declare-fun b_free!2869 () Bool)

(declare-fun b_next!7247 () Bool)

(assert (=> b!38748 (= b_free!2869 (not b_next!7247))))

(declare-fun tp!8363 () Bool)

(declare-fun b_and!10165 () Bool)

(assert (=> b!38748 (= tp!8363 b_and!10165)))

(declare-fun b!38750 () Bool)

(declare-fun b_free!2871 () Bool)

(declare-fun b_next!7249 () Bool)

(assert (=> b!38750 (= b_free!2871 (not b_next!7249))))

(declare-fun tp!8377 () Bool)

(declare-fun b_and!10167 () Bool)

(assert (=> b!38750 (= tp!8377 b_and!10167)))

(declare-fun b_free!2873 () Bool)

(declare-fun b_next!7251 () Bool)

(assert (=> b!38750 (= b_free!2873 (not b_next!7251))))

(declare-fun tp!8372 () Bool)

(declare-fun b_and!10169 () Bool)

(assert (=> b!38750 (= tp!8372 b_and!10169)))

(declare-fun b_free!2875 () Bool)

(declare-fun b_next!7253 () Bool)

(assert (=> b!38750 (= b_free!2875 (not b_next!7253))))

(declare-fun tp!8366 () Bool)

(declare-fun b_and!10171 () Bool)

(assert (=> b!38750 (= tp!8366 b_and!10171)))

(declare-fun b!38745 () Bool)

(declare-fun b_free!2877 () Bool)

(declare-fun b_next!7255 () Bool)

(assert (=> b!38745 (= b_free!2877 (not b_next!7255))))

(declare-fun tp!8367 () Bool)

(declare-fun b_and!10173 () Bool)

(assert (=> b!38745 (= tp!8367 b_and!10173)))

(declare-fun b_free!2879 () Bool)

(declare-fun b_next!7257 () Bool)

(assert (=> b!38745 (= b_free!2879 (not b_next!7257))))

(declare-fun tp!8376 () Bool)

(declare-fun b_and!10175 () Bool)

(assert (=> b!38745 (= tp!8376 b_and!10175)))

(declare-fun b_free!2881 () Bool)

(declare-fun b_next!7259 () Bool)

(assert (=> b!38745 (= b_free!2881 (not b_next!7259))))

(declare-fun tp!8370 () Bool)

(declare-fun b_and!10177 () Bool)

(assert (=> b!38745 (= tp!8370 b_and!10177)))

(declare-fun e!19967 () Bool)

(assert (=> b!38744 (= e!19967 (and tp!8374 tp!8364 tp!8369))))

(declare-fun e!19966 () Bool)

(assert (=> b!38745 (= e!19966 (and tp!8367 tp!8376 tp!8370))))

(declare-fun res!18493 () Bool)

(declare-fun e!19969 () Bool)

(assert (=> start!5004 (=> (not res!18493) (not e!19969))))

(declare-datatypes () ((Nat!60 (Zero!44) (Succ!41 (n!1133 Nat!60)))))

(declare-fun n2!332 () Nat!60)

(declare-fun n1!316 () Nat!60)

(declare-datatypes () ((tuple2!198 (tuple2!199 (_1!125 Nat!60) (_2!125 Nat!60)))))

(declare-fun x$98!1 () tuple2!198)

(declare-fun log2_and_remainder!0 (Nat!60) tuple2!198)

(declare-fun pair!0 (Nat!60 Nat!60) Nat!60)

(assert (=> start!5004 (= res!18493 (= x$98!1 (tuple2!199 (_1!125 (log2_and_remainder!0 (Succ!41 (pair!0 n1!316 n2!332)))) (_2!125 (log2_and_remainder!0 (Succ!41 (pair!0 n1!316 n2!332)))))))))

(assert (=> start!5004 e!19969))

(assert (=> start!5004 true))

(declare-datatypes () ((Unit!331 (Unit!332))))

(declare-datatypes () ((RAEqEvidence!94 (RAEqEvidence!95 (x!13455 Int) (y!1386 Int) (evidence!499 Int)))))

(declare-fun prev!738 () RAEqEvidence!94)

(declare-fun inv!696 (RAEqEvidence!94) Bool)

(assert (=> start!5004 (and (inv!696 prev!738) e!19966)))

(declare-datatypes () ((RAEqEvidence!96 (RAEqEvidence!97 (x!13456 Int) (y!1387 Int) (evidence!500 Int)))))

(declare-fun x$103!3 () RAEqEvidence!96)

(declare-fun e!19964 () Bool)

(declare-fun inv!697 (RAEqEvidence!96) Bool)

(assert (=> start!5004 (and (inv!697 x$103!3) e!19964)))

(declare-fun x$102!4 () RAEqEvidence!94)

(declare-fun e!19965 () Bool)

(assert (=> start!5004 (and (inv!696 x$102!4) e!19965)))

(declare-fun thiss!6256 () RAEqEvidence!94)

(assert (=> start!5004 (and (inv!696 thiss!6256) e!19967)))

(declare-fun x$104!2 () RAEqEvidence!96)

(declare-fun e!19968 () Bool)

(assert (=> start!5004 (and (inv!697 x$104!2) e!19968)))

(declare-fun b!38746 () Bool)

(declare-fun res!18494 () Bool)

(assert (=> b!38746 (=> (not res!18494) (not e!19969))))

(declare-fun p2!66 () Nat!60)

(declare-fun remainder!2 () Nat!60)

(declare-fun /!2 (Nat!60 Nat!60) Nat!60)

(declare-fun -!4 (Nat!60 Nat!60) Nat!60)

(assert (=> b!38746 (= res!18494 (= p2!66 (/!2 (-!4 remainder!2 (Succ!41 Zero!44)) (Succ!41 (Succ!41 Zero!44)))))))

(declare-fun b!38747 () Bool)

(declare-fun res!18492 () Bool)

(assert (=> b!38747 (=> (not res!18492) (not e!19969))))

(declare-fun p1!72 () Nat!60)

(assert (=> b!38747 (= res!18492 (and (= p1!72 (_1!125 x$98!1)) (= remainder!2 (_2!125 x$98!1))))))

(assert (=> b!38748 (= e!19964 (and tp!8368 tp!8373 tp!8363))))

(assert (=> b!38749 (= e!19965 (and tp!8375 tp!8365 tp!8371))))

(assert (=> b!38750 (= e!19968 (and tp!8377 tp!8372 tp!8366))))

(declare-fun b!38751 () Bool)

(assert (=> b!38751 (= e!19969 false)))

(assert (= (and start!5004 res!18493) b!38747))

(assert (= (and b!38747 res!18492) b!38746))

(assert (= (and b!38746 res!18494) b!38751))

(assert (= start!5004 b!38745))

(assert (= start!5004 b!38748))

(assert (= start!5004 b!38749))

(assert (= start!5004 b!38744))

(assert (= start!5004 b!38750))

(declare-fun m!39957 () Bool)

(assert (=> start!5004 m!39957))

(declare-fun m!39959 () Bool)

(assert (=> start!5004 m!39959))

(declare-fun m!39961 () Bool)

(assert (=> start!5004 m!39961))

(declare-fun m!39963 () Bool)

(assert (=> start!5004 m!39963))

(declare-fun m!39965 () Bool)

(assert (=> start!5004 m!39965))

(declare-fun m!39967 () Bool)

(assert (=> start!5004 m!39967))

(declare-fun m!39969 () Bool)

(assert (=> start!5004 m!39969))

(declare-fun m!39971 () Bool)

(assert (=> b!38746 m!39971))

(assert (=> b!38746 m!39971))

(declare-fun m!39973 () Bool)

(assert (=> b!38746 m!39973))

(push 1)

(assert b_and!10171)

(assert (not b!38746))

(assert b_and!10155)

(assert (not b_next!7233))

(assert (not b_next!7249))

(assert (not b_next!7257))

(assert b_and!10151)

(assert (not b_next!7253))

(assert b_and!10167)

(assert (not b_next!7243))

(assert b_and!10169)

(assert b_and!10173)

(assert b_and!10177)

(assert (not start!5004))

(assert b_and!10165)

(assert (not b_next!7255))

(assert (not b_next!7241))

(assert b_and!10149)

(assert (not b_next!7247))

(assert b_and!10161)

(assert b_and!10163)

(assert b_and!10175)

(assert (not b_next!7235))

(assert b_and!10153)

(assert b_and!10157)

(assert (not b_next!7239))

(assert b_and!10159)

(assert (not b_next!7245))

(assert (not b_next!7259))

(assert (not b_next!7251))

(assert (not b_next!7231))

(assert (not b_next!7237))

(check-sat)

(pop 1)

(push 1)

(assert b_and!10171)

(assert b_and!10155)

(assert (not b_next!7233))

(assert (not b_next!7249))

(assert (not b_next!7257))

(assert b_and!10151)

(assert (not b_next!7253))

(assert b_and!10167)

(assert (not b_next!7243))

(assert b_and!10169)

(assert b_and!10173)

(assert b_and!10177)

(assert b_and!10165)

(assert (not b_next!7255))

(assert (not b_next!7241))

(assert b_and!10149)

(assert (not b_next!7247))

(assert b_and!10161)

(assert b_and!10163)

(assert b_and!10175)

(assert (not b_next!7235))

(assert b_and!10153)

(assert b_and!10157)

(assert (not b_next!7239))

(assert b_and!10159)

(assert (not b_next!7245))

(assert (not b_next!7259))

(assert (not b_next!7251))

(assert (not b_next!7231))

(assert (not b_next!7237))

(check-sat)

(pop 1)

