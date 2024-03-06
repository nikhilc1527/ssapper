; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4208 () Bool)

(assert start!4208)

(declare-fun b!33841 () Bool)

(declare-fun e!17111 () Bool)

(declare-fun tp_is_empty!217 () Bool)

(declare-fun tp!6972 () Bool)

(assert (=> b!33841 (= e!17111 (and tp_is_empty!217 tp!6972))))

(declare-fun b!33842 () Bool)

(declare-fun e!17110 () Bool)

(declare-fun tp!6975 () Bool)

(assert (=> b!33842 (= e!17110 (and tp_is_empty!217 tp!6975))))

(declare-fun b!33843 () Bool)

(declare-fun res!15631 () Bool)

(declare-fun e!17112 () Bool)

(assert (=> b!33843 (=> (not res!15631) (not e!17112))))

(declare-datatypes () ((T!1873 (T!1874 (val!109 Int)))))

(declare-datatypes () ((List!373 (Cons!367 (h!284 T!1873) (t!4395 List!373)) (Nil!368))))

(declare-fun l2!180 () List!373)

(declare-datatypes () ((Conc!86 (CC!85 (left!730 Conc!86) (right!733 Conc!86)) (Single!85 (x!9021 T!1873)) (Empty!96))))

(declare-fun xs!676 () Conc!86)

(declare-fun toList!128 (Conc!86) List!373)

(assert (=> b!33843 (= res!15631 (= l2!180 (toList!128 (right!733 xs!676))))))

(declare-fun res!15637 () Bool)

(assert (=> start!4208 (=> (not res!15637) (not e!17112))))

(declare-fun i!326 () Int)

(assert (=> start!4208 (= res!15637 (>= i!326 0))))

(assert (=> start!4208 e!17112))

(assert (=> start!4208 true))

(declare-fun e!17113 () Bool)

(assert (=> start!4208 e!17113))

(assert (=> start!4208 e!17111))

(assert (=> start!4208 tp_is_empty!217))

(assert (=> start!4208 e!17110))

(declare-fun i!327 () Int)

(declare-fun l1!186 () List!373)

(declare-fun b!33844 () Bool)

(declare-fun e!17114 () Bool)

(declare-fun size!298 (List!373) Int)

(assert (=> b!33844 (= e!17114 (>= i!327 (+ (size!298 l1!186) (size!298 l2!180))))))

(declare-fun b!33845 () Bool)

(assert (=> b!33845 (= e!17112 e!17114)))

(declare-fun res!15634 () Bool)

(assert (=> b!33845 (=> res!15634 e!17114)))

(assert (=> b!33845 (= res!15634 (> 0 i!327))))

(declare-fun b!33846 () Bool)

(declare-fun res!15633 () Bool)

(assert (=> b!33846 (=> (not res!15633) (not e!17112))))

(assert (=> b!33846 (= res!15633 (is-CC!85 xs!676))))

(declare-fun b!33847 () Bool)

(assert (=> b!33847 (= e!17113 tp_is_empty!217)))

(declare-fun b!33848 () Bool)

(declare-fun tp!6974 () Bool)

(declare-fun tp!6973 () Bool)

(assert (=> b!33848 (= e!17113 (and tp!6974 tp!6973))))

(declare-fun b!33849 () Bool)

(declare-fun res!15632 () Bool)

(assert (=> b!33849 (=> (not res!15632) (not e!17112))))

(assert (=> b!33849 (= res!15632 (= l1!186 (toList!128 (left!730 xs!676))))))

(declare-fun b!33850 () Bool)

(declare-fun res!15635 () Bool)

(assert (=> b!33850 (=> (not res!15635) (not e!17112))))

(declare-fun y!931 () T!1873)

(declare-fun y!930 () T!1873)

(assert (=> b!33850 (= res!15635 (and (= i!327 i!326) (= y!931 y!930)))))

(declare-fun b!33851 () Bool)

(declare-fun res!15636 () Bool)

(assert (=> b!33851 (=> (not res!15636) (not e!17112))))

(declare-fun size!299 (Conc!86) Int)

(assert (=> b!33851 (= res!15636 (< i!326 (size!299 xs!676)))))

(assert (= (and start!4208 res!15637) b!33851))

(assert (= (and b!33851 res!15636) b!33846))

(assert (= (and b!33846 res!15633) b!33849))

(assert (= (and b!33849 res!15632) b!33843))

(assert (= (and b!33843 res!15631) b!33850))

(assert (= (and b!33850 res!15635) b!33845))

(assert (= (and b!33845 (not res!15634)) b!33844))

(assert (= (and start!4208 (is-CC!85 xs!676)) b!33848))

(assert (= (and start!4208 (is-Single!85 xs!676)) b!33847))

(assert (= (and start!4208 (is-Cons!367 l1!186)) b!33841))

(assert (= (and start!4208 (is-Cons!367 l2!180)) b!33842))

(declare-fun m!36055 () Bool)

(assert (=> b!33843 m!36055))

(declare-fun m!36057 () Bool)

(assert (=> b!33844 m!36057))

(declare-fun m!36059 () Bool)

(assert (=> b!33844 m!36059))

(declare-fun m!36061 () Bool)

(assert (=> b!33849 m!36061))

(declare-fun m!36063 () Bool)

(assert (=> b!33851 m!36063))

(push 1)

(assert (not b!33849))

(assert (not b!33842))

(assert (not b!33848))

(assert (not b!33851))

(assert (not b!33844))

(assert (not b!33841))

(assert (not b!33843))

(assert tp_is_empty!217)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!33860 () Bool)

(declare-fun e!17119 () List!373)

(assert (=> b!33860 (= e!17119 Nil!368)))

(declare-fun b!33861 () Bool)

(declare-fun e!17120 () List!373)

(assert (=> b!33861 (= e!17119 e!17120)))

(declare-fun c!7263 () Bool)

(assert (=> b!33861 (= c!7263 (is-Single!85 (left!730 xs!676)))))

(declare-fun d!16919 () Bool)

(declare-fun lt!6378 () List!373)

(assert (=> d!16919 (= (size!298 lt!6378) (size!299 (left!730 xs!676)))))

(assert (=> d!16919 (= lt!6378 e!17119)))

(declare-fun c!7262 () Bool)

(assert (=> d!16919 (= c!7262 (is-Empty!96 (left!730 xs!676)))))

(assert (=> d!16919 (= (toList!128 (left!730 xs!676)) lt!6378)))

(declare-fun b!33862 () Bool)

(assert (=> b!33862 (= e!17120 (Cons!367 (x!9021 (left!730 xs!676)) Nil!368))))

(declare-fun b!33863 () Bool)

(declare-fun ++!53 (List!373 List!373) List!373)

(assert (=> b!33863 (= e!17120 (++!53 (toList!128 (left!730 (left!730 xs!676))) (toList!128 (right!733 (left!730 xs!676)))))))

(assert (= (and b!33861 c!7263) b!33862))

(assert (= (and b!33861 (not c!7263)) b!33863))

(assert (= (and d!16919 c!7262) b!33860))

(assert (= (and d!16919 (not c!7262)) b!33861))

(declare-fun m!36065 () Bool)

(assert (=> d!16919 m!36065))

(declare-fun m!36067 () Bool)

(assert (=> d!16919 m!36067))

(declare-fun m!36069 () Bool)

(assert (=> b!33863 m!36069))

(declare-fun m!36071 () Bool)

(assert (=> b!33863 m!36071))

(assert (=> b!33863 m!36069))

(assert (=> b!33863 m!36071))

(declare-fun m!36073 () Bool)

(assert (=> b!33863 m!36073))

(assert (=> b!33849 d!16919))

(declare-fun d!16921 () Bool)

(declare-fun lt!6381 () Int)

(assert (=> d!16921 (>= lt!6381 0)))

(declare-fun e!17123 () Int)

(assert (=> d!16921 (= lt!6381 e!17123)))

(declare-fun c!7266 () Bool)

(assert (=> d!16921 (= c!7266 (is-Nil!368 l1!186))))

(assert (=> d!16921 (= (size!298 l1!186) lt!6381)))

(declare-fun b!33868 () Bool)

(assert (=> b!33868 (= e!17123 0)))

(declare-fun b!33869 () Bool)

(assert (=> b!33869 (= e!17123 (+ 1 (size!298 (t!4395 l1!186))))))

(assert (= (and d!16921 c!7266) b!33868))

(assert (= (and d!16921 (not c!7266)) b!33869))

(declare-fun m!36075 () Bool)

(assert (=> b!33869 m!36075))

(assert (=> b!33844 d!16921))

(declare-fun d!16923 () Bool)

(declare-fun lt!6382 () Int)

(assert (=> d!16923 (>= lt!6382 0)))

(declare-fun e!17124 () Int)

(assert (=> d!16923 (= lt!6382 e!17124)))

(declare-fun c!7267 () Bool)

(assert (=> d!16923 (= c!7267 (is-Nil!368 l2!180))))

(assert (=> d!16923 (= (size!298 l2!180) lt!6382)))

(declare-fun b!33870 () Bool)

(assert (=> b!33870 (= e!17124 0)))

(declare-fun b!33871 () Bool)

(assert (=> b!33871 (= e!17124 (+ 1 (size!298 (t!4395 l2!180))))))

(assert (= (and d!16923 c!7267) b!33870))

(assert (= (and d!16923 (not c!7267)) b!33871))

(declare-fun m!36077 () Bool)

(assert (=> b!33871 m!36077))

(assert (=> b!33844 d!16923))

(declare-fun b!33881 () Bool)

(declare-fun e!17130 () Int)

(declare-fun e!17129 () Int)

(assert (=> b!33881 (= e!17130 e!17129)))

(declare-fun c!7273 () Bool)

(assert (=> b!33881 (= c!7273 (is-Single!85 xs!676))))

(declare-fun b!33880 () Bool)

(assert (=> b!33880 (= e!17130 0)))

(declare-fun b!33883 () Bool)

(assert (=> b!33883 (= e!17129 (+ (size!299 (left!730 xs!676)) (size!299 (right!733 xs!676))))))

(declare-fun d!16925 () Bool)

(declare-fun lt!6385 () Int)

(assert (=> d!16925 (>= lt!6385 0)))

(assert (=> d!16925 (= lt!6385 e!17130)))

(declare-fun c!7272 () Bool)

(assert (=> d!16925 (= c!7272 (is-Empty!96 xs!676))))

(assert (=> d!16925 (= (size!299 xs!676) lt!6385)))

(declare-fun b!33882 () Bool)

(assert (=> b!33882 (= e!17129 1)))

(assert (= (and b!33881 c!7273) b!33882))

(assert (= (and b!33881 (not c!7273)) b!33883))

(assert (= (and d!16925 c!7272) b!33880))

(assert (= (and d!16925 (not c!7272)) b!33881))

(assert (=> b!33883 m!36067))

(declare-fun m!36079 () Bool)

(assert (=> b!33883 m!36079))

(assert (=> b!33851 d!16925))

(declare-fun b!33884 () Bool)

(declare-fun e!17131 () List!373)

(assert (=> b!33884 (= e!17131 Nil!368)))

(declare-fun b!33885 () Bool)

(declare-fun e!17132 () List!373)

(assert (=> b!33885 (= e!17131 e!17132)))

(declare-fun c!7275 () Bool)

(assert (=> b!33885 (= c!7275 (is-Single!85 (right!733 xs!676)))))

(declare-fun d!16927 () Bool)

(declare-fun lt!6386 () List!373)

(assert (=> d!16927 (= (size!298 lt!6386) (size!299 (right!733 xs!676)))))

(assert (=> d!16927 (= lt!6386 e!17131)))

(declare-fun c!7274 () Bool)

(assert (=> d!16927 (= c!7274 (is-Empty!96 (right!733 xs!676)))))

(assert (=> d!16927 (= (toList!128 (right!733 xs!676)) lt!6386)))

(declare-fun b!33886 () Bool)

(assert (=> b!33886 (= e!17132 (Cons!367 (x!9021 (right!733 xs!676)) Nil!368))))

(declare-fun b!33887 () Bool)

(assert (=> b!33887 (= e!17132 (++!53 (toList!128 (left!730 (right!733 xs!676))) (toList!128 (right!733 (right!733 xs!676)))))))

(assert (= (and b!33885 c!7275) b!33886))

(assert (= (and b!33885 (not c!7275)) b!33887))

(assert (= (and d!16927 c!7274) b!33884))

(assert (= (and d!16927 (not c!7274)) b!33885))

(declare-fun m!36081 () Bool)

(assert (=> d!16927 m!36081))

(assert (=> d!16927 m!36079))

(declare-fun m!36083 () Bool)

(assert (=> b!33887 m!36083))

(declare-fun m!36085 () Bool)

(assert (=> b!33887 m!36085))

(assert (=> b!33887 m!36083))

(assert (=> b!33887 m!36085))

(declare-fun m!36087 () Bool)

(assert (=> b!33887 m!36087))

(assert (=> b!33843 d!16927))

(declare-fun b!33892 () Bool)

(declare-fun e!17135 () Bool)

(declare-fun tp!6978 () Bool)

(assert (=> b!33892 (= e!17135 (and tp_is_empty!217 tp!6978))))

(assert (=> b!33842 (= tp!6975 e!17135)))

(assert (= (and b!33842 (is-Cons!367 (t!4395 l2!180))) b!33892))

(declare-fun b!33893 () Bool)

(declare-fun e!17136 () Bool)

(declare-fun tp!6979 () Bool)

(assert (=> b!33893 (= e!17136 (and tp_is_empty!217 tp!6979))))

(assert (=> b!33841 (= tp!6972 e!17136)))

(assert (= (and b!33841 (is-Cons!367 (t!4395 l1!186))) b!33893))

(declare-fun b!33900 () Bool)

(declare-fun e!17139 () Bool)

(declare-fun tp!6984 () Bool)

(declare-fun tp!6985 () Bool)

(assert (=> b!33900 (= e!17139 (and tp!6984 tp!6985))))

(declare-fun b!33901 () Bool)

(assert (=> b!33901 (= e!17139 tp_is_empty!217)))

(assert (=> b!33848 (= tp!6974 e!17139)))

(assert (= (and b!33848 (is-CC!85 (left!730 xs!676))) b!33900))

(assert (= (and b!33848 (is-Single!85 (left!730 xs!676))) b!33901))

(declare-fun b!33902 () Bool)

(declare-fun e!17140 () Bool)

(declare-fun tp!6986 () Bool)

(declare-fun tp!6987 () Bool)

(assert (=> b!33902 (= e!17140 (and tp!6986 tp!6987))))

(declare-fun b!33903 () Bool)

(assert (=> b!33903 (= e!17140 tp_is_empty!217)))

(assert (=> b!33848 (= tp!6973 e!17140)))

(assert (= (and b!33848 (is-CC!85 (right!733 xs!676))) b!33902))

(assert (= (and b!33848 (is-Single!85 (right!733 xs!676))) b!33903))

(push 1)

(assert (not b!33883))

(assert (not b!33892))

(assert (not b!33900))

(assert (not b!33902))

(assert (not d!16927))

(assert (not d!16919))

(assert (not b!33871))

(assert (not b!33863))

(assert (not b!33893))

(assert (not b!33869))

(assert tp_is_empty!217)

(assert (not b!33887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

