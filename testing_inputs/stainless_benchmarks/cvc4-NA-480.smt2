; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3162 () Bool)

(assert start!3162)

(declare-fun b!16840 () Bool)

(declare-fun res!6919 () Bool)

(declare-fun e!9135 () Bool)

(assert (=> b!16840 (=> (not res!6919) (not e!9135))))

(declare-datatypes () ((T!1715 (T!1716 (val!30 Int)))))

(declare-datatypes () ((Conc!12 (CC!11 (left!656 Conc!12) (right!659 Conc!12)) (Single!11 (x!8716 T!1715)) (Empty!22))))

(declare-fun rl!34 () Conc!12)

(declare-fun rr!34 () Conc!12)

(declare-datatypes () ((tuple2!108 (tuple2!109 (_1!54 Conc!12) (_2!54 Conc!12)))))

(declare-fun x$4!71 () tuple2!108)

(assert (=> b!16840 (= res!6919 (and (= rl!34 (_1!54 x$4!71)) (= rr!34 (_2!54 x$4!71))))))

(declare-fun b!16841 () Bool)

(declare-fun e!9140 () Bool)

(declare-fun tp_is_empty!59 () Bool)

(assert (=> b!16841 (= e!9140 tp_is_empty!59)))

(declare-fun b!16842 () Bool)

(declare-fun e!9134 () Bool)

(assert (=> b!16842 (= e!9134 tp_is_empty!59)))

(declare-fun b!16843 () Bool)

(declare-fun res!6920 () Bool)

(assert (=> b!16843 (=> (not res!6920) (not e!9135))))

(declare-fun n!315 () Int)

(declare-fun xs!637 () Conc!12)

(declare-fun size!194 (Conc!12) Int)

(assert (=> b!16843 (= res!6920 (>= n!315 (size!194 (left!656 xs!637))))))

(declare-fun b!16844 () Bool)

(declare-fun res!6924 () Bool)

(declare-fun e!9138 () Bool)

(assert (=> b!16844 (=> res!6924 e!9138)))

(declare-fun res!5666 () tuple2!108)

(declare-fun concInv!11 (Conc!12) Bool)

(assert (=> b!16844 (= res!6924 (not (concInv!11 (_2!54 res!5666))))))

(declare-fun b!16845 () Bool)

(declare-fun res!6914 () Bool)

(assert (=> b!16845 (=> res!6914 e!9138)))

(declare-fun level!11 (Conc!12) Int)

(assert (=> b!16845 (= res!6914 (< (level!11 xs!637) (level!11 (_1!54 res!5666))))))

(declare-fun b!16846 () Bool)

(declare-fun e!9141 () Bool)

(declare-fun tp!4015 () Bool)

(declare-fun tp!4009 () Bool)

(assert (=> b!16846 (= e!9141 (and tp!4015 tp!4009))))

(declare-fun b!16847 () Bool)

(declare-fun res!6911 () Bool)

(assert (=> b!16847 (=> res!6911 e!9138)))

(declare-fun instSplitAxiom!9 (Conc!12 Int) Bool)

(assert (=> b!16847 (= res!6911 (not (instSplitAxiom!9 xs!637 n!315)))))

(declare-fun b!16848 () Bool)

(declare-fun res!6915 () Bool)

(assert (=> b!16848 (=> (not res!6915) (not e!9135))))

(declare-fun concatNormalized!6 (Conc!12 Conc!12) Conc!12)

(assert (=> b!16848 (= res!6915 (= res!5666 (tuple2!109 (concatNormalized!6 (left!656 xs!637) rl!34) rr!34)))))

(declare-fun b!16849 () Bool)

(declare-fun tp!4011 () Bool)

(declare-fun tp!4018 () Bool)

(assert (=> b!16849 (= e!9140 (and tp!4011 tp!4018))))

(declare-fun b!16850 () Bool)

(declare-fun res!6918 () Bool)

(assert (=> b!16850 (=> (not res!6918) (not e!9135))))

(declare-fun balanced!12 (Conc!12) Bool)

(assert (=> b!16850 (= res!6918 (balanced!12 xs!637))))

(declare-fun b!16851 () Bool)

(declare-fun e!9133 () Bool)

(assert (=> b!16851 (= e!9133 tp_is_empty!59)))

(declare-fun b!16852 () Bool)

(declare-fun e!9136 () Bool)

(declare-fun tp!4012 () Bool)

(declare-fun tp!4020 () Bool)

(assert (=> b!16852 (= e!9136 (and tp!4012 tp!4020))))

(declare-fun b!16853 () Bool)

(assert (=> b!16853 (= e!9141 tp_is_empty!59)))

(declare-fun b!16854 () Bool)

(declare-fun splitCorrectness!7 (tuple2!108 Conc!12 Int) Bool)

(assert (=> b!16854 (= e!9138 (not (splitCorrectness!7 res!5666 xs!637 n!315)))))

(declare-fun b!16855 () Bool)

(declare-fun e!9139 () Bool)

(declare-fun tp!4010 () Bool)

(declare-fun tp!4017 () Bool)

(assert (=> b!16855 (= e!9139 (and tp!4010 tp!4017))))

(declare-fun b!16856 () Bool)

(declare-fun res!6912 () Bool)

(assert (=> b!16856 (=> (not res!6912) (not e!9135))))

(assert (=> b!16856 (= res!6912 (> n!315 (size!194 (left!656 xs!637))))))

(declare-fun b!16857 () Bool)

(declare-fun res!6923 () Bool)

(assert (=> b!16857 (=> res!6923 e!9138)))

(assert (=> b!16857 (= res!6923 (< (level!11 xs!637) (level!11 (_2!54 res!5666))))))

(declare-fun b!16858 () Bool)

(declare-fun tp!4021 () Bool)

(declare-fun tp!4013 () Bool)

(assert (=> b!16858 (= e!9133 (and tp!4021 tp!4013))))

(declare-fun b!16859 () Bool)

(declare-fun res!6913 () Bool)

(assert (=> b!16859 (=> res!6913 e!9138)))

(assert (=> b!16859 (= res!6913 (not (balanced!12 (_2!54 res!5666))))))

(declare-fun b!16860 () Bool)

(declare-fun res!6921 () Bool)

(assert (=> b!16860 (=> (not res!6921) (not e!9135))))

(declare-fun split!11 (Conc!12 Int) tuple2!108)

(assert (=> b!16860 (= res!6921 (= x$4!71 (split!11 (right!659 xs!637) (- n!315 (size!194 (left!656 xs!637))))))))

(declare-fun b!16861 () Bool)

(declare-fun res!6916 () Bool)

(assert (=> b!16861 (=> (not res!6916) (not e!9135))))

(assert (=> b!16861 (= res!6916 (and (not (is-Empty!22 xs!637)) (not (is-Single!11 xs!637))))))

(declare-fun res!6925 () Bool)

(assert (=> start!3162 (=> (not res!6925) (not e!9135))))

(assert (=> start!3162 (= res!6925 (concInv!11 xs!637))))

(assert (=> start!3162 e!9135))

(assert (=> start!3162 e!9139))

(assert (=> start!3162 e!9140))

(assert (=> start!3162 true))

(declare-fun e!9137 () Bool)

(assert (=> start!3162 (and e!9141 e!9137)))

(assert (=> start!3162 e!9133))

(assert (=> start!3162 (and e!9134 e!9136)))

(declare-fun b!16862 () Bool)

(assert (=> b!16862 (= e!9136 tp_is_empty!59)))

(declare-fun b!16863 () Bool)

(declare-fun res!6922 () Bool)

(assert (=> b!16863 (=> res!6922 e!9138)))

(assert (=> b!16863 (= res!6922 (not (balanced!12 (_1!54 res!5666))))))

(declare-fun b!16864 () Bool)

(declare-fun tp!4019 () Bool)

(declare-fun tp!4016 () Bool)

(assert (=> b!16864 (= e!9137 (and tp!4019 tp!4016))))

(declare-fun b!16865 () Bool)

(declare-fun tp!4022 () Bool)

(declare-fun tp!4014 () Bool)

(assert (=> b!16865 (= e!9134 (and tp!4022 tp!4014))))

(declare-fun b!16866 () Bool)

(assert (=> b!16866 (= e!9139 tp_is_empty!59)))

(declare-fun b!16867 () Bool)

(assert (=> b!16867 (= e!9135 e!9138)))

(declare-fun res!6917 () Bool)

(assert (=> b!16867 (=> res!6917 e!9138)))

(assert (=> b!16867 (= res!6917 (not (concInv!11 (_1!54 res!5666))))))

(declare-fun b!16868 () Bool)

(assert (=> b!16868 (= e!9137 tp_is_empty!59)))

(assert (= (and start!3162 res!6925) b!16850))

(assert (= (and b!16850 res!6918) b!16861))

(assert (= (and b!16861 res!6916) b!16843))

(assert (= (and b!16843 res!6920) b!16856))

(assert (= (and b!16856 res!6912) b!16860))

(assert (= (and b!16860 res!6921) b!16840))

(assert (= (and b!16840 res!6919) b!16848))

(assert (= (and b!16848 res!6915) b!16867))

(assert (= (and b!16867 (not res!6917)) b!16863))

(assert (= (and b!16863 (not res!6922)) b!16844))

(assert (= (and b!16844 (not res!6924)) b!16859))

(assert (= (and b!16859 (not res!6913)) b!16845))

(assert (= (and b!16845 (not res!6914)) b!16857))

(assert (= (and b!16857 (not res!6923)) b!16847))

(assert (= (and b!16847 (not res!6911)) b!16854))

(assert (= (and start!3162 (is-CC!11 xs!637)) b!16855))

(assert (= (and start!3162 (is-Single!11 xs!637)) b!16866))

(assert (= (and start!3162 (is-CC!11 rl!34)) b!16849))

(assert (= (and start!3162 (is-Single!11 rl!34)) b!16841))

(assert (= (and start!3162 (is-CC!11 (_1!54 res!5666))) b!16846))

(assert (= (and start!3162 (is-Single!11 (_1!54 res!5666))) b!16853))

(assert (= (and start!3162 (is-CC!11 (_2!54 res!5666))) b!16864))

(assert (= (and start!3162 (is-Single!11 (_2!54 res!5666))) b!16868))

(assert (= (and start!3162 (is-CC!11 rr!34)) b!16858))

(assert (= (and start!3162 (is-Single!11 rr!34)) b!16851))

(assert (= (and start!3162 (is-CC!11 (_1!54 x$4!71))) b!16865))

(assert (= (and start!3162 (is-Single!11 (_1!54 x$4!71))) b!16842))

(assert (= (and start!3162 (is-CC!11 (_2!54 x$4!71))) b!16852))

(assert (= (and start!3162 (is-Single!11 (_2!54 x$4!71))) b!16862))

(declare-fun m!20147 () Bool)

(assert (=> b!16844 m!20147))

(declare-fun m!20149 () Bool)

(assert (=> b!16848 m!20149))

(declare-fun m!20151 () Bool)

(assert (=> b!16850 m!20151))

(declare-fun m!20153 () Bool)

(assert (=> b!16856 m!20153))

(declare-fun m!20155 () Bool)

(assert (=> b!16857 m!20155))

(declare-fun m!20157 () Bool)

(assert (=> b!16857 m!20157))

(declare-fun m!20159 () Bool)

(assert (=> b!16859 m!20159))

(assert (=> b!16860 m!20153))

(declare-fun m!20161 () Bool)

(assert (=> b!16860 m!20161))

(declare-fun m!20163 () Bool)

(assert (=> b!16867 m!20163))

(assert (=> b!16843 m!20153))

(assert (=> b!16845 m!20155))

(declare-fun m!20165 () Bool)

(assert (=> b!16845 m!20165))

(declare-fun m!20167 () Bool)

(assert (=> b!16854 m!20167))

(declare-fun m!20169 () Bool)

(assert (=> b!16863 m!20169))

(declare-fun m!20171 () Bool)

(assert (=> b!16847 m!20171))

(declare-fun m!20173 () Bool)

(assert (=> start!3162 m!20173))

(push 1)

(assert (not b!16850))

(assert (not b!16847))

(assert (not start!3162))

(assert (not b!16846))

(assert (not b!16858))

(assert (not b!16863))

(assert (not b!16852))

(assert (not b!16854))

(assert (not b!16845))

(assert tp_is_empty!59)

(assert (not b!16855))

(assert (not b!16857))

(assert (not b!16843))

(assert (not b!16865))

(assert (not b!16864))

(assert (not b!16859))

(assert (not b!16848))

(assert (not b!16849))

(assert (not b!16860))

(assert (not b!16856))

(assert (not b!16844))

(assert (not b!16867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!16891 () Bool)

(declare-fun e!9154 () Conc!12)

(declare-fun e!9158 () Conc!12)

(assert (=> b!16891 (= e!9154 e!9158)))

(declare-fun c!4371 () Bool)

(assert (=> b!16891 (= c!4371 (is-Empty!22 (left!656 xs!637)))))

(declare-fun d!11895 () Bool)

(declare-fun e!9155 () Bool)

(assert (=> d!11895 e!9155))

(declare-fun res!6944 () Bool)

(assert (=> d!11895 (=> (not res!6944) (not e!9155))))

(declare-fun e!9156 () Bool)

(assert (=> d!11895 (= res!6944 e!9156)))

(declare-fun res!6943 () Bool)

(assert (=> d!11895 (=> (not res!6943) (not e!9156))))

(declare-fun lt!2503 () Conc!12)

(assert (=> d!11895 (= res!6943 (concInv!11 lt!2503))))

(assert (=> d!11895 (= lt!2503 e!9154)))

(declare-fun c!4370 () Bool)

(assert (=> d!11895 (= c!4370 (is-Empty!22 rl!34))))

(declare-fun e!9159 () Bool)

(assert (=> d!11895 e!9159))

(declare-fun res!6945 () Bool)

(assert (=> d!11895 (=> (not res!6945) (not e!9159))))

(declare-fun e!9157 () Bool)

(assert (=> d!11895 (= res!6945 e!9157)))

(declare-fun res!6947 () Bool)

(assert (=> d!11895 (=> (not res!6947) (not e!9157))))

(assert (=> d!11895 (= res!6947 (concInv!11 (left!656 xs!637)))))

(assert (=> d!11895 (= (concatNormalized!6 (left!656 xs!637) rl!34) lt!2503)))

(declare-fun b!16892 () Bool)

(declare-fun concatNonEmpty!4 (Conc!12 Conc!12) Conc!12)

(assert (=> b!16892 (= e!9158 (concatNonEmpty!4 (left!656 xs!637) rl!34))))

(declare-fun b!16893 () Bool)

(assert (=> b!16893 (= e!9154 (left!656 xs!637))))

(declare-fun b!16894 () Bool)

(assert (=> b!16894 (= e!9158 rl!34)))

(declare-fun b!16895 () Bool)

(declare-fun concatCorrectness!2 (Conc!12 Conc!12 Conc!12) Bool)

(assert (=> b!16895 (= e!9155 (concatCorrectness!2 lt!2503 (left!656 xs!637) rl!34))))

(declare-fun b!16896 () Bool)

(assert (=> b!16896 (= e!9159 (balanced!12 rl!34))))

(declare-fun b!16897 () Bool)

(assert (=> b!16897 (= e!9157 (balanced!12 (left!656 xs!637)))))

(declare-fun b!16898 () Bool)

(declare-fun res!6942 () Bool)

(assert (=> b!16898 (=> (not res!6942) (not e!9155))))

(declare-fun lt!2508 () Int)

(declare-fun lt!2505 () Int)

(declare-fun lt!2507 () Int)

(assert (=> b!16898 (= res!6942 (>= lt!2508 (ite (>= lt!2507 lt!2505) lt!2507 lt!2505)))))

(assert (=> b!16898 (= lt!2505 (level!11 rl!34))))

(assert (=> b!16898 (= lt!2507 (level!11 (left!656 xs!637)))))

(assert (=> b!16898 (= lt!2508 (level!11 lt!2503))))

(declare-fun b!16899 () Bool)

(declare-fun res!6941 () Bool)

(assert (=> b!16899 (=> (not res!6941) (not e!9155))))

(declare-fun lt!2504 () Int)

(declare-fun lt!2502 () Int)

(declare-fun lt!2506 () Int)

(assert (=> b!16899 (= res!6941 (<= lt!2504 (+ (ite (>= lt!2506 lt!2502) lt!2506 lt!2502) 1)))))

(assert (=> b!16899 (= lt!2502 (level!11 rl!34))))

(assert (=> b!16899 (= lt!2506 (level!11 (left!656 xs!637)))))

(assert (=> b!16899 (= lt!2504 (level!11 lt!2503))))

(declare-fun b!16900 () Bool)

(declare-fun res!6946 () Bool)

(assert (=> b!16900 (=> (not res!6946) (not e!9159))))

(assert (=> b!16900 (= res!6946 (concInv!11 rl!34))))

(declare-fun b!16901 () Bool)

(assert (=> b!16901 (= e!9156 (balanced!12 lt!2503))))

(assert (= (and d!11895 res!6947) b!16897))

(assert (= (and d!11895 res!6945) b!16900))

(assert (= (and b!16900 res!6946) b!16896))

(assert (= (and b!16891 c!4371) b!16894))

(assert (= (and b!16891 (not c!4371)) b!16892))

(assert (= (and d!11895 c!4370) b!16893))

(assert (= (and d!11895 (not c!4370)) b!16891))

(assert (= (and d!11895 res!6943) b!16901))

(assert (= (and d!11895 res!6944) b!16899))

(assert (= (and b!16899 res!6941) b!16898))

(assert (= (and b!16898 res!6942) b!16895))

(declare-fun m!20175 () Bool)

(assert (=> b!16898 m!20175))

(declare-fun m!20177 () Bool)

(assert (=> b!16898 m!20177))

(declare-fun m!20179 () Bool)

(assert (=> b!16898 m!20179))

(declare-fun m!20181 () Bool)

(assert (=> b!16892 m!20181))

(declare-fun m!20183 () Bool)

(assert (=> b!16897 m!20183))

(declare-fun m!20185 () Bool)

(assert (=> b!16900 m!20185))

(declare-fun m!20187 () Bool)

(assert (=> d!11895 m!20187))

(declare-fun m!20189 () Bool)

(assert (=> d!11895 m!20189))

(declare-fun m!20191 () Bool)

(assert (=> b!16895 m!20191))

(assert (=> b!16899 m!20175))

(assert (=> b!16899 m!20177))

(assert (=> b!16899 m!20179))

(declare-fun m!20193 () Bool)

(assert (=> b!16901 m!20193))

(declare-fun m!20195 () Bool)

(assert (=> b!16896 m!20195))

(assert (=> b!16848 d!11895))

(declare-fun d!11897 () Bool)

(declare-fun lt!2511 () Int)

(assert (=> d!11897 (>= lt!2511 0)))

(declare-fun e!9165 () Int)

(assert (=> d!11897 (= lt!2511 e!9165)))

(declare-fun c!4377 () Bool)

(assert (=> d!11897 (= c!4377 (is-Empty!22 (left!656 xs!637)))))

(assert (=> d!11897 (= (size!194 (left!656 xs!637)) lt!2511)))

(declare-fun b!16913 () Bool)

(declare-fun e!9164 () Int)

(assert (=> b!16913 (= e!9164 (+ (size!194 (left!656 (left!656 xs!637))) (size!194 (right!659 (left!656 xs!637)))))))

(declare-fun b!16912 () Bool)

(assert (=> b!16912 (= e!9164 1)))

(declare-fun b!16911 () Bool)

(assert (=> b!16911 (= e!9165 e!9164)))

(declare-fun c!4376 () Bool)

(assert (=> b!16911 (= c!4376 (is-Single!11 (left!656 xs!637)))))

(declare-fun b!16910 () Bool)

(assert (=> b!16910 (= e!9165 0)))

(assert (= (and b!16911 c!4376) b!16912))

(assert (= (and b!16911 (not c!4376)) b!16913))

(assert (= (and d!11897 c!4377) b!16910))

(assert (= (and d!11897 (not c!4377)) b!16911))

(declare-fun m!20197 () Bool)

(assert (=> b!16913 m!20197))

(declare-fun m!20199 () Bool)

(assert (=> b!16913 m!20199))

(assert (=> b!16856 d!11897))

(declare-fun d!11899 () Bool)

(declare-fun e!9168 () Bool)

(assert (=> d!11899 e!9168))

(declare-fun res!6950 () Bool)

(assert (=> d!11899 (=> res!6950 e!9168)))

(assert (=> d!11899 (= res!6950 (not (is-CC!11 xs!637)))))

(assert (=> d!11899 (= (instSplitAxiom!9 xs!637 n!315) true)))

(declare-fun b!16916 () Bool)

(declare-datatypes () ((List!325 (Cons!319 (h!233 T!1715) (t!4299 List!325)) (Nil!320))))

(declare-fun appendTakeDrop!6 (List!325 List!325 Int) Bool)

(declare-fun toList!85 (Conc!12) List!325)

(assert (=> b!16916 (= e!9168 (appendTakeDrop!6 (toList!85 (left!656 xs!637)) (toList!85 (right!659 xs!637)) n!315))))

(assert (= (and d!11899 (not res!6950)) b!16916))

(declare-fun m!20201 () Bool)

(assert (=> b!16916 m!20201))

(declare-fun m!20203 () Bool)

(assert (=> b!16916 m!20203))

(assert (=> b!16916 m!20201))

(assert (=> b!16916 m!20203))

(declare-fun m!20205 () Bool)

(assert (=> b!16916 m!20205))

(assert (=> b!16847 d!11899))

(declare-fun b!16928 () Bool)

(declare-fun e!9174 () Bool)

(assert (=> b!16928 (= e!9174 (balanced!12 (right!659 xs!637)))))

(declare-fun b!16927 () Bool)

(declare-fun res!6962 () Bool)

(assert (=> b!16927 (=> (not res!6962) (not e!9174))))

(assert (=> b!16927 (= res!6962 (balanced!12 (left!656 xs!637)))))

(declare-fun b!16926 () Bool)

(declare-fun res!6961 () Bool)

(assert (=> b!16926 (=> (not res!6961) (not e!9174))))

(assert (=> b!16926 (= res!6961 (<= (- (level!11 (left!656 xs!637)) (level!11 (right!659 xs!637))) 1))))

(declare-fun d!11901 () Bool)

(declare-fun res!6959 () Bool)

(declare-fun e!9173 () Bool)

(assert (=> d!11901 (=> res!6959 e!9173)))

(assert (=> d!11901 (= res!6959 (not (is-CC!11 xs!637)))))

(assert (=> d!11901 (= (balanced!12 xs!637) e!9173)))

(declare-fun b!16925 () Bool)

(assert (=> b!16925 (= e!9173 e!9174)))

(declare-fun res!6960 () Bool)

(assert (=> b!16925 (=> (not res!6960) (not e!9174))))

(assert (=> b!16925 (= res!6960 (>= (- (level!11 (left!656 xs!637)) (level!11 (right!659 xs!637))) (- 1)))))

(assert (= (and d!11901 (not res!6959)) b!16925))

(assert (= (and b!16925 res!6960) b!16926))

(assert (= (and b!16926 res!6961) b!16927))

(assert (= (and b!16927 res!6962) b!16928))

(declare-fun m!20207 () Bool)

(assert (=> b!16928 m!20207))

(assert (=> b!16927 m!20183))

(assert (=> b!16926 m!20177))

(declare-fun m!20209 () Bool)

(assert (=> b!16926 m!20209))

(assert (=> b!16925 m!20177))

(assert (=> b!16925 m!20209))

(assert (=> b!16850 d!11901))

(declare-fun b!16934 () Bool)

(declare-fun e!9177 () Int)

(declare-fun lt!2520 () Int)

(declare-fun lt!2519 () Int)

(assert (=> b!16934 (= e!9177 (+ 1 (ite (>= lt!2520 lt!2519) lt!2520 lt!2519)))))

(assert (=> b!16934 (= lt!2519 (level!11 (right!659 xs!637)))))

(assert (=> b!16934 (= lt!2520 (level!11 (left!656 xs!637)))))

(declare-fun d!11903 () Bool)

(declare-fun lt!2518 () Int)

(assert (=> d!11903 (>= lt!2518 0)))

(assert (=> d!11903 (= lt!2518 e!9177)))

(declare-fun c!4380 () Bool)

(assert (=> d!11903 (= c!4380 (or (is-Empty!22 xs!637) (is-Single!11 xs!637)))))

(assert (=> d!11903 (= (level!11 xs!637) lt!2518)))

(declare-fun b!16933 () Bool)

(assert (=> b!16933 (= e!9177 0)))

(assert (= (and d!11903 c!4380) b!16933))

(assert (= (and d!11903 (not c!4380)) b!16934))

(assert (=> b!16934 m!20209))

(assert (=> b!16934 m!20177))

(assert (=> b!16857 d!11903))

(declare-fun b!16936 () Bool)

(declare-fun e!9178 () Int)

(declare-fun lt!2523 () Int)

(declare-fun lt!2522 () Int)

(assert (=> b!16936 (= e!9178 (+ 1 (ite (>= lt!2523 lt!2522) lt!2523 lt!2522)))))

(assert (=> b!16936 (= lt!2522 (level!11 (right!659 (_2!54 res!5666))))))

(assert (=> b!16936 (= lt!2523 (level!11 (left!656 (_2!54 res!5666))))))

(declare-fun d!11905 () Bool)

(declare-fun lt!2521 () Int)

(assert (=> d!11905 (>= lt!2521 0)))

(assert (=> d!11905 (= lt!2521 e!9178)))

(declare-fun c!4381 () Bool)

(assert (=> d!11905 (= c!4381 (or (is-Empty!22 (_2!54 res!5666)) (is-Single!11 (_2!54 res!5666))))))

(assert (=> d!11905 (= (level!11 (_2!54 res!5666)) lt!2521)))

(declare-fun b!16935 () Bool)

(assert (=> b!16935 (= e!9178 0)))

(assert (= (and d!11905 c!4381) b!16935))

(assert (= (and d!11905 (not c!4381)) b!16936))

(declare-fun m!20211 () Bool)

(assert (=> b!16936 m!20211))

(declare-fun m!20213 () Bool)

(assert (=> b!16936 m!20213))

(assert (=> b!16857 d!11905))

(declare-fun b!16940 () Bool)

(declare-fun e!9180 () Bool)

(assert (=> b!16940 (= e!9180 (balanced!12 (right!659 (_1!54 res!5666))))))

(declare-fun b!16939 () Bool)

(declare-fun res!6966 () Bool)

(assert (=> b!16939 (=> (not res!6966) (not e!9180))))

(assert (=> b!16939 (= res!6966 (balanced!12 (left!656 (_1!54 res!5666))))))

(declare-fun b!16938 () Bool)

(declare-fun res!6965 () Bool)

(assert (=> b!16938 (=> (not res!6965) (not e!9180))))

(assert (=> b!16938 (= res!6965 (<= (- (level!11 (left!656 (_1!54 res!5666))) (level!11 (right!659 (_1!54 res!5666)))) 1))))

(declare-fun d!11907 () Bool)

(declare-fun res!6963 () Bool)

(declare-fun e!9179 () Bool)

(assert (=> d!11907 (=> res!6963 e!9179)))

(assert (=> d!11907 (= res!6963 (not (is-CC!11 (_1!54 res!5666))))))

(assert (=> d!11907 (= (balanced!12 (_1!54 res!5666)) e!9179)))

(declare-fun b!16937 () Bool)

(assert (=> b!16937 (= e!9179 e!9180)))

(declare-fun res!6964 () Bool)

(assert (=> b!16937 (=> (not res!6964) (not e!9180))))

(assert (=> b!16937 (= res!6964 (>= (- (level!11 (left!656 (_1!54 res!5666))) (level!11 (right!659 (_1!54 res!5666)))) (- 1)))))

(assert (= (and d!11907 (not res!6963)) b!16937))

(assert (= (and b!16937 res!6964) b!16938))

(assert (= (and b!16938 res!6965) b!16939))

(assert (= (and b!16939 res!6966) b!16940))

(declare-fun m!20215 () Bool)

(assert (=> b!16940 m!20215))

(declare-fun m!20217 () Bool)

(assert (=> b!16939 m!20217))

(declare-fun m!20219 () Bool)

(assert (=> b!16938 m!20219))

(declare-fun m!20221 () Bool)

(assert (=> b!16938 m!20221))

(assert (=> b!16937 m!20219))

(assert (=> b!16937 m!20221))

(assert (=> b!16863 d!11907))

(declare-fun d!11909 () Bool)

(declare-fun res!6969 () Bool)

(declare-fun e!9183 () Bool)

(assert (=> d!11909 (=> (not res!6969) (not e!9183))))

(declare-fun take!10 (List!325 Int) List!325)

(assert (=> d!11909 (= res!6969 (= (toList!85 (_1!54 res!5666)) (take!10 (toList!85 xs!637) n!315)))))

(assert (=> d!11909 (= (splitCorrectness!7 res!5666 xs!637 n!315) e!9183)))

(declare-fun b!16943 () Bool)

(declare-fun drop!8 (List!325 Int) List!325)

(assert (=> b!16943 (= e!9183 (= (toList!85 (_2!54 res!5666)) (drop!8 (toList!85 xs!637) n!315)))))

(assert (= (and d!11909 res!6969) b!16943))

(declare-fun m!20223 () Bool)

(assert (=> d!11909 m!20223))

(declare-fun m!20225 () Bool)

(assert (=> d!11909 m!20225))

(assert (=> d!11909 m!20225))

(declare-fun m!20227 () Bool)

(assert (=> d!11909 m!20227))

(declare-fun m!20229 () Bool)

(assert (=> b!16943 m!20229))

(assert (=> b!16943 m!20225))

(assert (=> b!16943 m!20225))

(declare-fun m!20231 () Bool)

(assert (=> b!16943 m!20231))

(assert (=> b!16854 d!11909))

(declare-fun b!16953 () Bool)

(declare-fun res!6981 () Bool)

(declare-fun e!9188 () Bool)

(assert (=> b!16953 (=> (not res!6981) (not e!9188))))

(declare-fun isEmpty!276 (Conc!12) Bool)

(assert (=> b!16953 (= res!6981 (not (isEmpty!276 (right!659 xs!637))))))

(declare-fun b!16955 () Bool)

(assert (=> b!16955 (= e!9188 (concInv!11 (right!659 xs!637)))))

(declare-fun d!11911 () Bool)

(declare-fun res!6978 () Bool)

(declare-fun e!9189 () Bool)

(assert (=> d!11911 (=> res!6978 e!9189)))

(assert (=> d!11911 (= res!6978 (not (is-CC!11 xs!637)))))

(assert (=> d!11911 (= (concInv!11 xs!637) e!9189)))

(declare-fun b!16954 () Bool)

(declare-fun res!6980 () Bool)

(assert (=> b!16954 (=> (not res!6980) (not e!9188))))

(assert (=> b!16954 (= res!6980 (concInv!11 (left!656 xs!637)))))

(declare-fun b!16952 () Bool)

(assert (=> b!16952 (= e!9189 e!9188)))

(declare-fun res!6979 () Bool)

(assert (=> b!16952 (=> (not res!6979) (not e!9188))))

(assert (=> b!16952 (= res!6979 (not (isEmpty!276 (left!656 xs!637))))))

(assert (= (and d!11911 (not res!6978)) b!16952))

(assert (= (and b!16952 res!6979) b!16953))

(assert (= (and b!16953 res!6981) b!16954))

(assert (= (and b!16954 res!6980) b!16955))

(declare-fun m!20233 () Bool)

(assert (=> b!16953 m!20233))

(declare-fun m!20235 () Bool)

(assert (=> b!16955 m!20235))

(assert (=> b!16954 m!20189))

(declare-fun m!20237 () Bool)

(assert (=> b!16952 m!20237))

(assert (=> start!3162 d!11911))

(assert (=> b!16845 d!11903))

(declare-fun b!16957 () Bool)

(declare-fun e!9190 () Int)

(declare-fun lt!2526 () Int)

(declare-fun lt!2525 () Int)

(assert (=> b!16957 (= e!9190 (+ 1 (ite (>= lt!2526 lt!2525) lt!2526 lt!2525)))))

(assert (=> b!16957 (= lt!2525 (level!11 (right!659 (_1!54 res!5666))))))

(assert (=> b!16957 (= lt!2526 (level!11 (left!656 (_1!54 res!5666))))))

(declare-fun d!11913 () Bool)

(declare-fun lt!2524 () Int)

(assert (=> d!11913 (>= lt!2524 0)))

(assert (=> d!11913 (= lt!2524 e!9190)))

(declare-fun c!4382 () Bool)

(assert (=> d!11913 (= c!4382 (or (is-Empty!22 (_1!54 res!5666)) (is-Single!11 (_1!54 res!5666))))))

(assert (=> d!11913 (= (level!11 (_1!54 res!5666)) lt!2524)))

(declare-fun b!16956 () Bool)

(assert (=> b!16956 (= e!9190 0)))

(assert (= (and d!11913 c!4382) b!16956))

(assert (= (and d!11913 (not c!4382)) b!16957))

(assert (=> b!16957 m!20221))

(assert (=> b!16957 m!20219))

(assert (=> b!16845 d!11913))

(declare-fun b!16990 () Bool)

(declare-fun e!9213 () tuple2!108)

(assert (=> b!16990 (= e!9213 (tuple2!109 (concatNormalized!6 (left!656 (right!659 xs!637)) (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))) (_2!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(declare-fun b!16991 () Bool)

(declare-fun res!6999 () Bool)

(declare-fun e!9212 () Bool)

(assert (=> b!16991 (=> (not res!6999) (not e!9212))))

(assert (=> b!16991 (= res!6999 (instSplitAxiom!9 (right!659 xs!637) (- n!315 (size!194 (left!656 xs!637)))))))

(declare-fun b!16992 () Bool)

(declare-fun e!9208 () tuple2!108)

(assert (=> b!16992 (= e!9208 (tuple2!109 Empty!22 Empty!22))))

(declare-fun b!16993 () Bool)

(declare-fun e!9207 () Bool)

(assert (=> b!16993 (= e!9207 (balanced!12 (right!659 xs!637)))))

(declare-fun b!16994 () Bool)

(assert (=> b!16994 (= e!9213 (tuple2!109 (left!656 (right!659 xs!637)) (right!659 (right!659 xs!637))))))

(declare-fun b!16995 () Bool)

(declare-fun e!9211 () tuple2!108)

(assert (=> b!16995 (= e!9208 e!9211)))

(declare-fun c!4391 () Bool)

(assert (=> b!16995 (= c!4391 (is-Single!11 (right!659 xs!637)))))

(declare-fun b!16996 () Bool)

(declare-fun e!9210 () tuple2!108)

(assert (=> b!16996 (= e!9210 e!9213)))

(declare-fun c!4392 () Bool)

(assert (=> b!16996 (= c!4392 (> (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))))))

(declare-fun b!16997 () Bool)

(declare-fun e!9214 () Bool)

(declare-fun lt!2534 () Conc!12)

(assert (=> b!16997 (= e!9214 (balanced!12 lt!2534))))

(declare-fun b!16998 () Bool)

(assert (=> b!16998 (= e!9211 e!9210)))

(declare-fun c!4393 () Bool)

(assert (=> b!16998 (= c!4393 (< (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))))))

(declare-fun b!16999 () Bool)

(assert (=> b!16999 (= e!9211 (ite (<= (- n!315 (size!194 (left!656 xs!637))) 0) (tuple2!109 Empty!22 (right!659 xs!637)) (tuple2!109 (right!659 xs!637) Empty!22)))))

(declare-fun b!17000 () Bool)

(declare-fun res!7003 () Bool)

(assert (=> b!17000 (=> (not res!7003) (not e!9212))))

(declare-fun lt!2535 () tuple2!108)

(assert (=> b!17000 (= res!7003 (>= (level!11 (right!659 xs!637)) (level!11 (_2!54 lt!2535))))))

(declare-fun b!17001 () Bool)

(declare-fun e!9209 () Bool)

(declare-fun lt!2533 () Conc!12)

(assert (=> b!17001 (= e!9209 (balanced!12 lt!2533))))

(declare-fun b!17002 () Bool)

(assert (=> b!17002 (= e!9212 (splitCorrectness!7 lt!2535 (right!659 xs!637) (- n!315 (size!194 (left!656 xs!637)))))))

(declare-fun b!17003 () Bool)

(declare-fun res!7006 () Bool)

(assert (=> b!17003 (=> (not res!7006) (not e!9212))))

(assert (=> b!17003 (= res!7006 (>= (level!11 (right!659 xs!637)) (level!11 (_1!54 lt!2535))))))

(declare-fun b!17004 () Bool)

(declare-fun res!7000 () Bool)

(assert (=> b!17004 (=> (not res!7000) (not e!9212))))

(assert (=> b!17004 (= res!7000 e!9209)))

(declare-fun res!7002 () Bool)

(assert (=> b!17004 (=> (not res!7002) (not e!9209))))

(assert (=> b!17004 (= res!7002 (concInv!11 lt!2533))))

(assert (=> b!17004 (= lt!2533 (_2!54 lt!2535))))

(declare-fun b!17005 () Bool)

(assert (=> b!17005 (= e!9210 (tuple2!109 (_1!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))) (concatNormalized!6 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))) (right!659 (right!659 xs!637)))))))

(declare-fun d!11915 () Bool)

(assert (=> d!11915 e!9212))

(declare-fun res!7004 () Bool)

(assert (=> d!11915 (=> (not res!7004) (not e!9212))))

(assert (=> d!11915 (= res!7004 e!9214)))

(declare-fun res!7005 () Bool)

(assert (=> d!11915 (=> (not res!7005) (not e!9214))))

(assert (=> d!11915 (= res!7005 (concInv!11 lt!2534))))

(assert (=> d!11915 (= lt!2534 (_1!54 lt!2535))))

(assert (=> d!11915 (= lt!2535 e!9208)))

(declare-fun c!4394 () Bool)

(assert (=> d!11915 (= c!4394 (is-Empty!22 (right!659 xs!637)))))

(assert (=> d!11915 e!9207))

(declare-fun res!7001 () Bool)

(assert (=> d!11915 (=> (not res!7001) (not e!9207))))

(assert (=> d!11915 (= res!7001 (concInv!11 (right!659 xs!637)))))

(assert (=> d!11915 (= (split!11 (right!659 xs!637) (- n!315 (size!194 (left!656 xs!637)))) lt!2535)))

(assert (= (and d!11915 res!7001) b!16993))

(assert (= (and b!16996 c!4392) b!16990))

(assert (= (and b!16996 (not c!4392)) b!16994))

(assert (= (and b!16998 c!4393) b!17005))

(assert (= (and b!16998 (not c!4393)) b!16996))

(assert (= (and b!16995 c!4391) b!16999))

(assert (= (and b!16995 (not c!4391)) b!16998))

(assert (= (and d!11915 c!4394) b!16992))

(assert (= (and d!11915 (not c!4394)) b!16995))

(assert (= (and d!11915 res!7005) b!16997))

(assert (= (and d!11915 res!7004) b!17004))

(assert (= (and b!17004 res!7002) b!17001))

(assert (= (and b!17004 res!7000) b!17003))

(assert (= (and b!17003 res!7006) b!17000))

(assert (= (and b!17000 res!7003) b!16991))

(assert (= (and b!16991 res!6999) b!17002))

(declare-fun m!20239 () Bool)

(assert (=> b!16991 m!20239))

(declare-fun m!20241 () Bool)

(assert (=> d!11915 m!20241))

(assert (=> d!11915 m!20235))

(assert (=> b!17000 m!20209))

(declare-fun m!20243 () Bool)

(assert (=> b!17000 m!20243))

(assert (=> b!17003 m!20209))

(declare-fun m!20245 () Bool)

(assert (=> b!17003 m!20245))

(declare-fun m!20247 () Bool)

(assert (=> b!16997 m!20247))

(declare-fun m!20249 () Bool)

(assert (=> b!17005 m!20249))

(declare-fun m!20251 () Bool)

(assert (=> b!17005 m!20251))

(declare-fun m!20253 () Bool)

(assert (=> b!17002 m!20253))

(declare-fun m!20255 () Bool)

(assert (=> b!17001 m!20255))

(declare-fun m!20257 () Bool)

(assert (=> b!16996 m!20257))

(assert (=> b!16990 m!20257))

(declare-fun m!20259 () Bool)

(assert (=> b!16990 m!20259))

(declare-fun m!20261 () Bool)

(assert (=> b!16990 m!20261))

(assert (=> b!16993 m!20207))

(declare-fun m!20263 () Bool)

(assert (=> b!17004 m!20263))

(assert (=> b!16998 m!20257))

(assert (=> b!16860 d!11915))

(assert (=> b!16860 d!11897))

(assert (=> b!16843 d!11897))

(declare-fun b!17007 () Bool)

(declare-fun res!7010 () Bool)

(declare-fun e!9215 () Bool)

(assert (=> b!17007 (=> (not res!7010) (not e!9215))))

(assert (=> b!17007 (= res!7010 (not (isEmpty!276 (right!659 (_1!54 res!5666)))))))

(declare-fun b!17009 () Bool)

(assert (=> b!17009 (= e!9215 (concInv!11 (right!659 (_1!54 res!5666))))))

(declare-fun d!11917 () Bool)

(declare-fun res!7007 () Bool)

(declare-fun e!9216 () Bool)

(assert (=> d!11917 (=> res!7007 e!9216)))

(assert (=> d!11917 (= res!7007 (not (is-CC!11 (_1!54 res!5666))))))

(assert (=> d!11917 (= (concInv!11 (_1!54 res!5666)) e!9216)))

(declare-fun b!17008 () Bool)

(declare-fun res!7009 () Bool)

(assert (=> b!17008 (=> (not res!7009) (not e!9215))))

(assert (=> b!17008 (= res!7009 (concInv!11 (left!656 (_1!54 res!5666))))))

(declare-fun b!17006 () Bool)

(assert (=> b!17006 (= e!9216 e!9215)))

(declare-fun res!7008 () Bool)

(assert (=> b!17006 (=> (not res!7008) (not e!9215))))

(assert (=> b!17006 (= res!7008 (not (isEmpty!276 (left!656 (_1!54 res!5666)))))))

(assert (= (and d!11917 (not res!7007)) b!17006))

(assert (= (and b!17006 res!7008) b!17007))

(assert (= (and b!17007 res!7010) b!17008))

(assert (= (and b!17008 res!7009) b!17009))

(declare-fun m!20265 () Bool)

(assert (=> b!17007 m!20265))

(declare-fun m!20267 () Bool)

(assert (=> b!17009 m!20267))

(declare-fun m!20269 () Bool)

(assert (=> b!17008 m!20269))

(declare-fun m!20271 () Bool)

(assert (=> b!17006 m!20271))

(assert (=> b!16867 d!11917))

(declare-fun b!17013 () Bool)

(declare-fun e!9218 () Bool)

(assert (=> b!17013 (= e!9218 (balanced!12 (right!659 (_2!54 res!5666))))))

(declare-fun b!17012 () Bool)

(declare-fun res!7014 () Bool)

(assert (=> b!17012 (=> (not res!7014) (not e!9218))))

(assert (=> b!17012 (= res!7014 (balanced!12 (left!656 (_2!54 res!5666))))))

(declare-fun b!17011 () Bool)

(declare-fun res!7013 () Bool)

(assert (=> b!17011 (=> (not res!7013) (not e!9218))))

(assert (=> b!17011 (= res!7013 (<= (- (level!11 (left!656 (_2!54 res!5666))) (level!11 (right!659 (_2!54 res!5666)))) 1))))

(declare-fun d!11919 () Bool)

(declare-fun res!7011 () Bool)

(declare-fun e!9217 () Bool)

(assert (=> d!11919 (=> res!7011 e!9217)))

(assert (=> d!11919 (= res!7011 (not (is-CC!11 (_2!54 res!5666))))))

(assert (=> d!11919 (= (balanced!12 (_2!54 res!5666)) e!9217)))

(declare-fun b!17010 () Bool)

(assert (=> b!17010 (= e!9217 e!9218)))

(declare-fun res!7012 () Bool)

(assert (=> b!17010 (=> (not res!7012) (not e!9218))))

(assert (=> b!17010 (= res!7012 (>= (- (level!11 (left!656 (_2!54 res!5666))) (level!11 (right!659 (_2!54 res!5666)))) (- 1)))))

(assert (= (and d!11919 (not res!7011)) b!17010))

(assert (= (and b!17010 res!7012) b!17011))

(assert (= (and b!17011 res!7013) b!17012))

(assert (= (and b!17012 res!7014) b!17013))

(declare-fun m!20273 () Bool)

(assert (=> b!17013 m!20273))

(declare-fun m!20275 () Bool)

(assert (=> b!17012 m!20275))

(assert (=> b!17011 m!20213))

(assert (=> b!17011 m!20211))

(assert (=> b!17010 m!20213))

(assert (=> b!17010 m!20211))

(assert (=> b!16859 d!11919))

(declare-fun b!17015 () Bool)

(declare-fun res!7018 () Bool)

(declare-fun e!9219 () Bool)

(assert (=> b!17015 (=> (not res!7018) (not e!9219))))

(assert (=> b!17015 (= res!7018 (not (isEmpty!276 (right!659 (_2!54 res!5666)))))))

(declare-fun b!17017 () Bool)

(assert (=> b!17017 (= e!9219 (concInv!11 (right!659 (_2!54 res!5666))))))

(declare-fun d!11921 () Bool)

(declare-fun res!7015 () Bool)

(declare-fun e!9220 () Bool)

(assert (=> d!11921 (=> res!7015 e!9220)))

(assert (=> d!11921 (= res!7015 (not (is-CC!11 (_2!54 res!5666))))))

(assert (=> d!11921 (= (concInv!11 (_2!54 res!5666)) e!9220)))

(declare-fun b!17016 () Bool)

(declare-fun res!7017 () Bool)

(assert (=> b!17016 (=> (not res!7017) (not e!9219))))

(assert (=> b!17016 (= res!7017 (concInv!11 (left!656 (_2!54 res!5666))))))

(declare-fun b!17014 () Bool)

(assert (=> b!17014 (= e!9220 e!9219)))

(declare-fun res!7016 () Bool)

(assert (=> b!17014 (=> (not res!7016) (not e!9219))))

(assert (=> b!17014 (= res!7016 (not (isEmpty!276 (left!656 (_2!54 res!5666)))))))

(assert (= (and d!11921 (not res!7015)) b!17014))

(assert (= (and b!17014 res!7016) b!17015))

(assert (= (and b!17015 res!7018) b!17016))

(assert (= (and b!17016 res!7017) b!17017))

(declare-fun m!20277 () Bool)

(assert (=> b!17015 m!20277))

(declare-fun m!20279 () Bool)

(assert (=> b!17017 m!20279))

(declare-fun m!20281 () Bool)

(assert (=> b!17016 m!20281))

(declare-fun m!20283 () Bool)

(assert (=> b!17014 m!20283))

(assert (=> b!16844 d!11921))

(declare-fun b!17024 () Bool)

(declare-fun e!9223 () Bool)

(declare-fun tp!4027 () Bool)

(declare-fun tp!4028 () Bool)

(assert (=> b!17024 (= e!9223 (and tp!4027 tp!4028))))

(declare-fun b!17025 () Bool)

(assert (=> b!17025 (= e!9223 tp_is_empty!59)))

(assert (=> b!16846 (= tp!4015 e!9223)))

(assert (= (and b!16846 (is-CC!11 (left!656 (_1!54 res!5666)))) b!17024))

(assert (= (and b!16846 (is-Single!11 (left!656 (_1!54 res!5666)))) b!17025))

(declare-fun b!17026 () Bool)

(declare-fun e!9224 () Bool)

(declare-fun tp!4029 () Bool)

(declare-fun tp!4030 () Bool)

(assert (=> b!17026 (= e!9224 (and tp!4029 tp!4030))))

(declare-fun b!17027 () Bool)

(assert (=> b!17027 (= e!9224 tp_is_empty!59)))

(assert (=> b!16846 (= tp!4009 e!9224)))

(assert (= (and b!16846 (is-CC!11 (right!659 (_1!54 res!5666)))) b!17026))

(assert (= (and b!16846 (is-Single!11 (right!659 (_1!54 res!5666)))) b!17027))

(declare-fun b!17028 () Bool)

(declare-fun e!9225 () Bool)

(declare-fun tp!4031 () Bool)

(declare-fun tp!4032 () Bool)

(assert (=> b!17028 (= e!9225 (and tp!4031 tp!4032))))

(declare-fun b!17029 () Bool)

(assert (=> b!17029 (= e!9225 tp_is_empty!59)))

(assert (=> b!16849 (= tp!4011 e!9225)))

(assert (= (and b!16849 (is-CC!11 (left!656 rl!34))) b!17028))

(assert (= (and b!16849 (is-Single!11 (left!656 rl!34))) b!17029))

(declare-fun b!17030 () Bool)

(declare-fun e!9226 () Bool)

(declare-fun tp!4033 () Bool)

(declare-fun tp!4034 () Bool)

(assert (=> b!17030 (= e!9226 (and tp!4033 tp!4034))))

(declare-fun b!17031 () Bool)

(assert (=> b!17031 (= e!9226 tp_is_empty!59)))

(assert (=> b!16849 (= tp!4018 e!9226)))

(assert (= (and b!16849 (is-CC!11 (right!659 rl!34))) b!17030))

(assert (= (and b!16849 (is-Single!11 (right!659 rl!34))) b!17031))

(declare-fun b!17032 () Bool)

(declare-fun e!9227 () Bool)

(declare-fun tp!4035 () Bool)

(declare-fun tp!4036 () Bool)

(assert (=> b!17032 (= e!9227 (and tp!4035 tp!4036))))

(declare-fun b!17033 () Bool)

(assert (=> b!17033 (= e!9227 tp_is_empty!59)))

(assert (=> b!16858 (= tp!4021 e!9227)))

(assert (= (and b!16858 (is-CC!11 (left!656 rr!34))) b!17032))

(assert (= (and b!16858 (is-Single!11 (left!656 rr!34))) b!17033))

(declare-fun b!17034 () Bool)

(declare-fun e!9228 () Bool)

(declare-fun tp!4037 () Bool)

(declare-fun tp!4038 () Bool)

(assert (=> b!17034 (= e!9228 (and tp!4037 tp!4038))))

(declare-fun b!17035 () Bool)

(assert (=> b!17035 (= e!9228 tp_is_empty!59)))

(assert (=> b!16858 (= tp!4013 e!9228)))

(assert (= (and b!16858 (is-CC!11 (right!659 rr!34))) b!17034))

(assert (= (and b!16858 (is-Single!11 (right!659 rr!34))) b!17035))

(declare-fun b!17036 () Bool)

(declare-fun e!9229 () Bool)

(declare-fun tp!4039 () Bool)

(declare-fun tp!4040 () Bool)

(assert (=> b!17036 (= e!9229 (and tp!4039 tp!4040))))

(declare-fun b!17037 () Bool)

(assert (=> b!17037 (= e!9229 tp_is_empty!59)))

(assert (=> b!16865 (= tp!4022 e!9229)))

(assert (= (and b!16865 (is-CC!11 (left!656 (_1!54 x$4!71)))) b!17036))

(assert (= (and b!16865 (is-Single!11 (left!656 (_1!54 x$4!71)))) b!17037))

(declare-fun b!17038 () Bool)

(declare-fun e!9230 () Bool)

(declare-fun tp!4041 () Bool)

(declare-fun tp!4042 () Bool)

(assert (=> b!17038 (= e!9230 (and tp!4041 tp!4042))))

(declare-fun b!17039 () Bool)

(assert (=> b!17039 (= e!9230 tp_is_empty!59)))

(assert (=> b!16865 (= tp!4014 e!9230)))

(assert (= (and b!16865 (is-CC!11 (right!659 (_1!54 x$4!71)))) b!17038))

(assert (= (and b!16865 (is-Single!11 (right!659 (_1!54 x$4!71)))) b!17039))

(declare-fun b!17040 () Bool)

(declare-fun e!9231 () Bool)

(declare-fun tp!4043 () Bool)

(declare-fun tp!4044 () Bool)

(assert (=> b!17040 (= e!9231 (and tp!4043 tp!4044))))

(declare-fun b!17041 () Bool)

(assert (=> b!17041 (= e!9231 tp_is_empty!59)))

(assert (=> b!16855 (= tp!4010 e!9231)))

(assert (= (and b!16855 (is-CC!11 (left!656 xs!637))) b!17040))

(assert (= (and b!16855 (is-Single!11 (left!656 xs!637))) b!17041))

(declare-fun b!17042 () Bool)

(declare-fun e!9232 () Bool)

(declare-fun tp!4045 () Bool)

(declare-fun tp!4046 () Bool)

(assert (=> b!17042 (= e!9232 (and tp!4045 tp!4046))))

(declare-fun b!17043 () Bool)

(assert (=> b!17043 (= e!9232 tp_is_empty!59)))

(assert (=> b!16855 (= tp!4017 e!9232)))

(assert (= (and b!16855 (is-CC!11 (right!659 xs!637))) b!17042))

(assert (= (and b!16855 (is-Single!11 (right!659 xs!637))) b!17043))

(declare-fun b!17044 () Bool)

(declare-fun e!9233 () Bool)

(declare-fun tp!4047 () Bool)

(declare-fun tp!4048 () Bool)

(assert (=> b!17044 (= e!9233 (and tp!4047 tp!4048))))

(declare-fun b!17045 () Bool)

(assert (=> b!17045 (= e!9233 tp_is_empty!59)))

(assert (=> b!16852 (= tp!4012 e!9233)))

(assert (= (and b!16852 (is-CC!11 (left!656 (_2!54 x$4!71)))) b!17044))

(assert (= (and b!16852 (is-Single!11 (left!656 (_2!54 x$4!71)))) b!17045))

(declare-fun b!17046 () Bool)

(declare-fun e!9234 () Bool)

(declare-fun tp!4049 () Bool)

(declare-fun tp!4050 () Bool)

(assert (=> b!17046 (= e!9234 (and tp!4049 tp!4050))))

(declare-fun b!17047 () Bool)

(assert (=> b!17047 (= e!9234 tp_is_empty!59)))

(assert (=> b!16852 (= tp!4020 e!9234)))

(assert (= (and b!16852 (is-CC!11 (right!659 (_2!54 x$4!71)))) b!17046))

(assert (= (and b!16852 (is-Single!11 (right!659 (_2!54 x$4!71)))) b!17047))

(declare-fun b!17048 () Bool)

(declare-fun e!9235 () Bool)

(declare-fun tp!4051 () Bool)

(declare-fun tp!4052 () Bool)

(assert (=> b!17048 (= e!9235 (and tp!4051 tp!4052))))

(declare-fun b!17049 () Bool)

(assert (=> b!17049 (= e!9235 tp_is_empty!59)))

(assert (=> b!16864 (= tp!4019 e!9235)))

(assert (= (and b!16864 (is-CC!11 (left!656 (_2!54 res!5666)))) b!17048))

(assert (= (and b!16864 (is-Single!11 (left!656 (_2!54 res!5666)))) b!17049))

(declare-fun b!17050 () Bool)

(declare-fun e!9236 () Bool)

(declare-fun tp!4053 () Bool)

(declare-fun tp!4054 () Bool)

(assert (=> b!17050 (= e!9236 (and tp!4053 tp!4054))))

(declare-fun b!17051 () Bool)

(assert (=> b!17051 (= e!9236 tp_is_empty!59)))

(assert (=> b!16864 (= tp!4016 e!9236)))

(assert (= (and b!16864 (is-CC!11 (right!659 (_2!54 res!5666)))) b!17050))

(assert (= (and b!16864 (is-Single!11 (right!659 (_2!54 res!5666)))) b!17051))

(push 1)

(assert (not b!17006))

(assert (not d!11895))

(assert (not b!17007))

(assert (not b!17038))

(assert (not b!17000))

(assert (not b!17028))

(assert (not b!16901))

(assert (not b!17017))

(assert (not b!16937))

(assert (not b!16925))

(assert (not b!17005))

(assert (not b!17032))

(assert (not b!17014))

(assert (not b!16899))

(assert (not b!17013))

(assert (not b!16896))

(assert (not b!17008))

(assert (not b!17003))

(assert (not b!17042))

(assert (not b!16916))

(assert (not b!16997))

(assert (not b!17002))

(assert (not b!17024))

(assert (not b!16895))

(assert (not b!17044))

(assert (not b!16928))

(assert (not b!16955))

(assert (not b!16936))

(assert (not b!16943))

(assert (not b!16952))

(assert (not d!11915))

(assert (not b!17015))

(assert tp_is_empty!59)

(assert (not b!17011))

(assert (not b!17036))

(assert (not b!16900))

(assert (not d!11909))

(assert (not b!17026))

(assert (not b!16939))

(assert (not b!17004))

(assert (not b!16954))

(assert (not b!16993))

(assert (not b!16897))

(assert (not b!16898))

(assert (not b!16913))

(assert (not b!16940))

(assert (not b!17010))

(assert (not b!16938))

(assert (not b!17012))

(assert (not b!17046))

(assert (not b!17034))

(assert (not b!16926))

(assert (not b!16953))

(assert (not b!17009))

(assert (not b!16998))

(assert (not b!16927))

(assert (not b!17048))

(assert (not b!17030))

(assert (not b!17001))

(assert (not b!16934))

(assert (not b!16957))

(assert (not b!17040))

(assert (not b!17016))

(assert (not b!16991))

(assert (not b!16892))

(assert (not b!16996))

(assert (not b!17050))

(assert (not b!16990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!17055 () Bool)

(declare-fun e!9238 () Bool)

(assert (=> b!17055 (= e!9238 (balanced!12 (right!659 (left!656 xs!637))))))

(declare-fun b!17054 () Bool)

(declare-fun res!7022 () Bool)

(assert (=> b!17054 (=> (not res!7022) (not e!9238))))

(assert (=> b!17054 (= res!7022 (balanced!12 (left!656 (left!656 xs!637))))))

(declare-fun b!17053 () Bool)

(declare-fun res!7021 () Bool)

(assert (=> b!17053 (=> (not res!7021) (not e!9238))))

(assert (=> b!17053 (= res!7021 (<= (- (level!11 (left!656 (left!656 xs!637))) (level!11 (right!659 (left!656 xs!637)))) 1))))

(declare-fun d!11923 () Bool)

(declare-fun res!7019 () Bool)

(declare-fun e!9237 () Bool)

(assert (=> d!11923 (=> res!7019 e!9237)))

(assert (=> d!11923 (= res!7019 (not (is-CC!11 (left!656 xs!637))))))

(assert (=> d!11923 (= (balanced!12 (left!656 xs!637)) e!9237)))

(declare-fun b!17052 () Bool)

(assert (=> b!17052 (= e!9237 e!9238)))

(declare-fun res!7020 () Bool)

(assert (=> b!17052 (=> (not res!7020) (not e!9238))))

(assert (=> b!17052 (= res!7020 (>= (- (level!11 (left!656 (left!656 xs!637))) (level!11 (right!659 (left!656 xs!637)))) (- 1)))))

(assert (= (and d!11923 (not res!7019)) b!17052))

(assert (= (and b!17052 res!7020) b!17053))

(assert (= (and b!17053 res!7021) b!17054))

(assert (= (and b!17054 res!7022) b!17055))

(declare-fun m!20285 () Bool)

(assert (=> b!17055 m!20285))

(declare-fun m!20287 () Bool)

(assert (=> b!17054 m!20287))

(declare-fun m!20289 () Bool)

(assert (=> b!17053 m!20289))

(declare-fun m!20291 () Bool)

(assert (=> b!17053 m!20291))

(assert (=> b!17052 m!20289))

(assert (=> b!17052 m!20291))

(assert (=> b!16927 d!11923))

(declare-fun b!17057 () Bool)

(declare-fun res!7026 () Bool)

(declare-fun e!9239 () Bool)

(assert (=> b!17057 (=> (not res!7026) (not e!9239))))

(assert (=> b!17057 (= res!7026 (not (isEmpty!276 (right!659 rl!34))))))

(declare-fun b!17059 () Bool)

(assert (=> b!17059 (= e!9239 (concInv!11 (right!659 rl!34)))))

(declare-fun d!11925 () Bool)

(declare-fun res!7023 () Bool)

(declare-fun e!9240 () Bool)

(assert (=> d!11925 (=> res!7023 e!9240)))

(assert (=> d!11925 (= res!7023 (not (is-CC!11 rl!34)))))

(assert (=> d!11925 (= (concInv!11 rl!34) e!9240)))

(declare-fun b!17058 () Bool)

(declare-fun res!7025 () Bool)

(assert (=> b!17058 (=> (not res!7025) (not e!9239))))

(assert (=> b!17058 (= res!7025 (concInv!11 (left!656 rl!34)))))

(declare-fun b!17056 () Bool)

(assert (=> b!17056 (= e!9240 e!9239)))

(declare-fun res!7024 () Bool)

(assert (=> b!17056 (=> (not res!7024) (not e!9239))))

(assert (=> b!17056 (= res!7024 (not (isEmpty!276 (left!656 rl!34))))))

(assert (= (and d!11925 (not res!7023)) b!17056))

(assert (= (and b!17056 res!7024) b!17057))

(assert (= (and b!17057 res!7026) b!17058))

(assert (= (and b!17058 res!7025) b!17059))

(declare-fun m!20293 () Bool)

(assert (=> b!17057 m!20293))

(declare-fun m!20295 () Bool)

(assert (=> b!17059 m!20295))

(declare-fun m!20297 () Bool)

(assert (=> b!17058 m!20297))

(declare-fun m!20299 () Bool)

(assert (=> b!17056 m!20299))

(assert (=> b!16900 d!11925))

(declare-fun b!17061 () Bool)

(declare-fun res!7030 () Bool)

(declare-fun e!9241 () Bool)

(assert (=> b!17061 (=> (not res!7030) (not e!9241))))

(assert (=> b!17061 (= res!7030 (not (isEmpty!276 (right!659 (right!659 xs!637)))))))

(declare-fun b!17063 () Bool)

(assert (=> b!17063 (= e!9241 (concInv!11 (right!659 (right!659 xs!637))))))

(declare-fun d!11927 () Bool)

(declare-fun res!7027 () Bool)

(declare-fun e!9242 () Bool)

(assert (=> d!11927 (=> res!7027 e!9242)))

(assert (=> d!11927 (= res!7027 (not (is-CC!11 (right!659 xs!637))))))

(assert (=> d!11927 (= (concInv!11 (right!659 xs!637)) e!9242)))

(declare-fun b!17062 () Bool)

(declare-fun res!7029 () Bool)

(assert (=> b!17062 (=> (not res!7029) (not e!9241))))

(assert (=> b!17062 (= res!7029 (concInv!11 (left!656 (right!659 xs!637))))))

(declare-fun b!17060 () Bool)

(assert (=> b!17060 (= e!9242 e!9241)))

(declare-fun res!7028 () Bool)

(assert (=> b!17060 (=> (not res!7028) (not e!9241))))

(assert (=> b!17060 (= res!7028 (not (isEmpty!276 (left!656 (right!659 xs!637)))))))

(assert (= (and d!11927 (not res!7027)) b!17060))

(assert (= (and b!17060 res!7028) b!17061))

(assert (= (and b!17061 res!7030) b!17062))

(assert (= (and b!17062 res!7029) b!17063))

(declare-fun m!20301 () Bool)

(assert (=> b!17061 m!20301))

(declare-fun m!20303 () Bool)

(assert (=> b!17063 m!20303))

(declare-fun m!20305 () Bool)

(assert (=> b!17062 m!20305))

(declare-fun m!20307 () Bool)

(assert (=> b!17060 m!20307))

(assert (=> b!16955 d!11927))

(declare-fun b!17065 () Bool)

(declare-fun res!7034 () Bool)

(declare-fun e!9243 () Bool)

(assert (=> b!17065 (=> (not res!7034) (not e!9243))))

(assert (=> b!17065 (= res!7034 (not (isEmpty!276 (right!659 (left!656 xs!637)))))))

(declare-fun b!17067 () Bool)

(assert (=> b!17067 (= e!9243 (concInv!11 (right!659 (left!656 xs!637))))))

(declare-fun d!11929 () Bool)

(declare-fun res!7031 () Bool)

(declare-fun e!9244 () Bool)

(assert (=> d!11929 (=> res!7031 e!9244)))

(assert (=> d!11929 (= res!7031 (not (is-CC!11 (left!656 xs!637))))))

(assert (=> d!11929 (= (concInv!11 (left!656 xs!637)) e!9244)))

(declare-fun b!17066 () Bool)

(declare-fun res!7033 () Bool)

(assert (=> b!17066 (=> (not res!7033) (not e!9243))))

(assert (=> b!17066 (= res!7033 (concInv!11 (left!656 (left!656 xs!637))))))

(declare-fun b!17064 () Bool)

(assert (=> b!17064 (= e!9244 e!9243)))

(declare-fun res!7032 () Bool)

(assert (=> b!17064 (=> (not res!7032) (not e!9243))))

(assert (=> b!17064 (= res!7032 (not (isEmpty!276 (left!656 (left!656 xs!637)))))))

(assert (= (and d!11929 (not res!7031)) b!17064))

(assert (= (and b!17064 res!7032) b!17065))

(assert (= (and b!17065 res!7034) b!17066))

(assert (= (and b!17066 res!7033) b!17067))

(declare-fun m!20309 () Bool)

(assert (=> b!17065 m!20309))

(declare-fun m!20311 () Bool)

(assert (=> b!17067 m!20311))

(declare-fun m!20313 () Bool)

(assert (=> b!17066 m!20313))

(declare-fun m!20315 () Bool)

(assert (=> b!17064 m!20315))

(assert (=> b!16954 d!11929))

(declare-fun d!11931 () Bool)

(assert (=> d!11931 (= (isEmpty!276 (right!659 (_2!54 res!5666))) (= (right!659 (_2!54 res!5666)) Empty!22))))

(assert (=> b!17015 d!11931))

(declare-fun b!17069 () Bool)

(declare-fun e!9245 () Int)

(declare-fun lt!2538 () Int)

(declare-fun lt!2537 () Int)

(assert (=> b!17069 (= e!9245 (+ 1 (ite (>= lt!2538 lt!2537) lt!2538 lt!2537)))))

(assert (=> b!17069 (= lt!2537 (level!11 (right!659 (right!659 (_1!54 res!5666)))))))

(assert (=> b!17069 (= lt!2538 (level!11 (left!656 (right!659 (_1!54 res!5666)))))))

(declare-fun d!11933 () Bool)

(declare-fun lt!2536 () Int)

(assert (=> d!11933 (>= lt!2536 0)))

(assert (=> d!11933 (= lt!2536 e!9245)))

(declare-fun c!4395 () Bool)

(assert (=> d!11933 (= c!4395 (or (is-Empty!22 (right!659 (_1!54 res!5666))) (is-Single!11 (right!659 (_1!54 res!5666)))))))

(assert (=> d!11933 (= (level!11 (right!659 (_1!54 res!5666))) lt!2536)))

(declare-fun b!17068 () Bool)

(assert (=> b!17068 (= e!9245 0)))

(assert (= (and d!11933 c!4395) b!17068))

(assert (= (and d!11933 (not c!4395)) b!17069))

(declare-fun m!20317 () Bool)

(assert (=> b!17069 m!20317))

(declare-fun m!20319 () Bool)

(assert (=> b!17069 m!20319))

(assert (=> b!16957 d!11933))

(declare-fun b!17071 () Bool)

(declare-fun e!9246 () Int)

(declare-fun lt!2541 () Int)

(declare-fun lt!2540 () Int)

(assert (=> b!17071 (= e!9246 (+ 1 (ite (>= lt!2541 lt!2540) lt!2541 lt!2540)))))

(assert (=> b!17071 (= lt!2540 (level!11 (right!659 (left!656 (_1!54 res!5666)))))))

(assert (=> b!17071 (= lt!2541 (level!11 (left!656 (left!656 (_1!54 res!5666)))))))

(declare-fun d!11935 () Bool)

(declare-fun lt!2539 () Int)

(assert (=> d!11935 (>= lt!2539 0)))

(assert (=> d!11935 (= lt!2539 e!9246)))

(declare-fun c!4396 () Bool)

(assert (=> d!11935 (= c!4396 (or (is-Empty!22 (left!656 (_1!54 res!5666))) (is-Single!11 (left!656 (_1!54 res!5666)))))))

(assert (=> d!11935 (= (level!11 (left!656 (_1!54 res!5666))) lt!2539)))

(declare-fun b!17070 () Bool)

(assert (=> b!17070 (= e!9246 0)))

(assert (= (and d!11935 c!4396) b!17070))

(assert (= (and d!11935 (not c!4396)) b!17071))

(declare-fun m!20321 () Bool)

(assert (=> b!17071 m!20321))

(declare-fun m!20323 () Bool)

(assert (=> b!17071 m!20323))

(assert (=> b!16957 d!11935))

(declare-fun d!11937 () Bool)

(assert (=> d!11937 (= (isEmpty!276 (left!656 (_1!54 res!5666))) (= (left!656 (_1!54 res!5666)) Empty!22))))

(assert (=> b!17006 d!11937))

(declare-fun d!11939 () Bool)

(declare-fun e!9247 () Bool)

(assert (=> d!11939 e!9247))

(declare-fun res!7035 () Bool)

(assert (=> d!11939 (=> res!7035 e!9247)))

(assert (=> d!11939 (= res!7035 (not (is-CC!11 (right!659 xs!637))))))

(assert (=> d!11939 (= (instSplitAxiom!9 (right!659 xs!637) (- n!315 (size!194 (left!656 xs!637)))) true)))

(declare-fun b!17072 () Bool)

(assert (=> b!17072 (= e!9247 (appendTakeDrop!6 (toList!85 (left!656 (right!659 xs!637))) (toList!85 (right!659 (right!659 xs!637))) (- n!315 (size!194 (left!656 xs!637)))))))

(assert (= (and d!11939 (not res!7035)) b!17072))

(declare-fun m!20325 () Bool)

(assert (=> b!17072 m!20325))

(declare-fun m!20327 () Bool)

(assert (=> b!17072 m!20327))

(assert (=> b!17072 m!20325))

(assert (=> b!17072 m!20327))

(declare-fun m!20329 () Bool)

(assert (=> b!17072 m!20329))

(assert (=> b!16991 d!11939))

(declare-fun b!17074 () Bool)

(declare-fun e!9248 () Int)

(declare-fun lt!2544 () Int)

(declare-fun lt!2543 () Int)

(assert (=> b!17074 (= e!9248 (+ 1 (ite (>= lt!2544 lt!2543) lt!2544 lt!2543)))))

(assert (=> b!17074 (= lt!2543 (level!11 (right!659 rl!34)))))

(assert (=> b!17074 (= lt!2544 (level!11 (left!656 rl!34)))))

(declare-fun d!11941 () Bool)

(declare-fun lt!2542 () Int)

(assert (=> d!11941 (>= lt!2542 0)))

(assert (=> d!11941 (= lt!2542 e!9248)))

(declare-fun c!4397 () Bool)

(assert (=> d!11941 (= c!4397 (or (is-Empty!22 rl!34) (is-Single!11 rl!34)))))

(assert (=> d!11941 (= (level!11 rl!34) lt!2542)))

(declare-fun b!17073 () Bool)

(assert (=> b!17073 (= e!9248 0)))

(assert (= (and d!11941 c!4397) b!17073))

(assert (= (and d!11941 (not c!4397)) b!17074))

(declare-fun m!20331 () Bool)

(assert (=> b!17074 m!20331))

(declare-fun m!20333 () Bool)

(assert (=> b!17074 m!20333))

(assert (=> b!16899 d!11941))

(declare-fun b!17076 () Bool)

(declare-fun e!9249 () Int)

(declare-fun lt!2547 () Int)

(declare-fun lt!2546 () Int)

(assert (=> b!17076 (= e!9249 (+ 1 (ite (>= lt!2547 lt!2546) lt!2547 lt!2546)))))

(assert (=> b!17076 (= lt!2546 (level!11 (right!659 (left!656 xs!637))))))

(assert (=> b!17076 (= lt!2547 (level!11 (left!656 (left!656 xs!637))))))

(declare-fun d!11943 () Bool)

(declare-fun lt!2545 () Int)

(assert (=> d!11943 (>= lt!2545 0)))

(assert (=> d!11943 (= lt!2545 e!9249)))

(declare-fun c!4398 () Bool)

(assert (=> d!11943 (= c!4398 (or (is-Empty!22 (left!656 xs!637)) (is-Single!11 (left!656 xs!637))))))

(assert (=> d!11943 (= (level!11 (left!656 xs!637)) lt!2545)))

(declare-fun b!17075 () Bool)

(assert (=> b!17075 (= e!9249 0)))

(assert (= (and d!11943 c!4398) b!17075))

(assert (= (and d!11943 (not c!4398)) b!17076))

(assert (=> b!17076 m!20291))

(assert (=> b!17076 m!20289))

(assert (=> b!16899 d!11943))

(declare-fun b!17078 () Bool)

(declare-fun e!9250 () Int)

(declare-fun lt!2550 () Int)

(declare-fun lt!2549 () Int)

(assert (=> b!17078 (= e!9250 (+ 1 (ite (>= lt!2550 lt!2549) lt!2550 lt!2549)))))

(assert (=> b!17078 (= lt!2549 (level!11 (right!659 lt!2503)))))

(assert (=> b!17078 (= lt!2550 (level!11 (left!656 lt!2503)))))

(declare-fun d!11945 () Bool)

(declare-fun lt!2548 () Int)

(assert (=> d!11945 (>= lt!2548 0)))

(assert (=> d!11945 (= lt!2548 e!9250)))

(declare-fun c!4399 () Bool)

(assert (=> d!11945 (= c!4399 (or (is-Empty!22 lt!2503) (is-Single!11 lt!2503)))))

(assert (=> d!11945 (= (level!11 lt!2503) lt!2548)))

(declare-fun b!17077 () Bool)

(assert (=> b!17077 (= e!9250 0)))

(assert (= (and d!11945 c!4399) b!17077))

(assert (= (and d!11945 (not c!4399)) b!17078))

(declare-fun m!20335 () Bool)

(assert (=> b!17078 m!20335))

(declare-fun m!20337 () Bool)

(assert (=> b!17078 m!20337))

(assert (=> b!16899 d!11945))

(assert (=> b!16937 d!11935))

(assert (=> b!16937 d!11933))

(declare-fun b!17080 () Bool)

(declare-fun res!7039 () Bool)

(declare-fun e!9251 () Bool)

(assert (=> b!17080 (=> (not res!7039) (not e!9251))))

(assert (=> b!17080 (= res!7039 (not (isEmpty!276 (right!659 (right!659 (_2!54 res!5666))))))))

(declare-fun b!17082 () Bool)

(assert (=> b!17082 (= e!9251 (concInv!11 (right!659 (right!659 (_2!54 res!5666)))))))

(declare-fun d!11947 () Bool)

(declare-fun res!7036 () Bool)

(declare-fun e!9252 () Bool)

(assert (=> d!11947 (=> res!7036 e!9252)))

(assert (=> d!11947 (= res!7036 (not (is-CC!11 (right!659 (_2!54 res!5666)))))))

(assert (=> d!11947 (= (concInv!11 (right!659 (_2!54 res!5666))) e!9252)))

(declare-fun b!17081 () Bool)

(declare-fun res!7038 () Bool)

(assert (=> b!17081 (=> (not res!7038) (not e!9251))))

(assert (=> b!17081 (= res!7038 (concInv!11 (left!656 (right!659 (_2!54 res!5666)))))))

(declare-fun b!17079 () Bool)

(assert (=> b!17079 (= e!9252 e!9251)))

(declare-fun res!7037 () Bool)

(assert (=> b!17079 (=> (not res!7037) (not e!9251))))

(assert (=> b!17079 (= res!7037 (not (isEmpty!276 (left!656 (right!659 (_2!54 res!5666))))))))

(assert (= (and d!11947 (not res!7036)) b!17079))

(assert (= (and b!17079 res!7037) b!17080))

(assert (= (and b!17080 res!7039) b!17081))

(assert (= (and b!17081 res!7038) b!17082))

(declare-fun m!20339 () Bool)

(assert (=> b!17080 m!20339))

(declare-fun m!20341 () Bool)

(assert (=> b!17082 m!20341))

(declare-fun m!20343 () Bool)

(assert (=> b!17081 m!20343))

(declare-fun m!20345 () Bool)

(assert (=> b!17079 m!20345))

(assert (=> b!17017 d!11947))

(assert (=> b!16926 d!11943))

(declare-fun b!17084 () Bool)

(declare-fun e!9253 () Int)

(declare-fun lt!2553 () Int)

(declare-fun lt!2552 () Int)

(assert (=> b!17084 (= e!9253 (+ 1 (ite (>= lt!2553 lt!2552) lt!2553 lt!2552)))))

(assert (=> b!17084 (= lt!2552 (level!11 (right!659 (right!659 xs!637))))))

(assert (=> b!17084 (= lt!2553 (level!11 (left!656 (right!659 xs!637))))))

(declare-fun d!11949 () Bool)

(declare-fun lt!2551 () Int)

(assert (=> d!11949 (>= lt!2551 0)))

(assert (=> d!11949 (= lt!2551 e!9253)))

(declare-fun c!4400 () Bool)

(assert (=> d!11949 (= c!4400 (or (is-Empty!22 (right!659 xs!637)) (is-Single!11 (right!659 xs!637))))))

(assert (=> d!11949 (= (level!11 (right!659 xs!637)) lt!2551)))

(declare-fun b!17083 () Bool)

(assert (=> b!17083 (= e!9253 0)))

(assert (= (and d!11949 c!4400) b!17083))

(assert (= (and d!11949 (not c!4400)) b!17084))

(declare-fun m!20347 () Bool)

(assert (=> b!17084 m!20347))

(declare-fun m!20349 () Bool)

(assert (=> b!17084 m!20349))

(assert (=> b!16926 d!11949))

(declare-fun b!17093 () Bool)

(declare-fun e!9258 () List!325)

(assert (=> b!17093 (= e!9258 Nil!320)))

(declare-fun d!11951 () Bool)

(declare-fun lt!2556 () List!325)

(declare-fun size!195 (List!325) Int)

(assert (=> d!11951 (= (size!195 lt!2556) (size!194 (_1!54 res!5666)))))

(assert (=> d!11951 (= lt!2556 e!9258)))

(declare-fun c!4405 () Bool)

(assert (=> d!11951 (= c!4405 (is-Empty!22 (_1!54 res!5666)))))

(assert (=> d!11951 (= (toList!85 (_1!54 res!5666)) lt!2556)))

(declare-fun b!17095 () Bool)

(declare-fun e!9259 () List!325)

(assert (=> b!17095 (= e!9259 (Cons!319 (x!8716 (_1!54 res!5666)) Nil!320))))

(declare-fun b!17094 () Bool)

(assert (=> b!17094 (= e!9258 e!9259)))

(declare-fun c!4406 () Bool)

(assert (=> b!17094 (= c!4406 (is-Single!11 (_1!54 res!5666)))))

(declare-fun b!17096 () Bool)

(declare-fun ++!10 (List!325 List!325) List!325)

(assert (=> b!17096 (= e!9259 (++!10 (toList!85 (left!656 (_1!54 res!5666))) (toList!85 (right!659 (_1!54 res!5666)))))))

(assert (= (and b!17094 c!4406) b!17095))

(assert (= (and b!17094 (not c!4406)) b!17096))

(assert (= (and d!11951 c!4405) b!17093))

(assert (= (and d!11951 (not c!4405)) b!17094))

(declare-fun m!20351 () Bool)

(assert (=> d!11951 m!20351))

(declare-fun m!20353 () Bool)

(assert (=> d!11951 m!20353))

(declare-fun m!20355 () Bool)

(assert (=> b!17096 m!20355))

(declare-fun m!20357 () Bool)

(assert (=> b!17096 m!20357))

(assert (=> b!17096 m!20355))

(assert (=> b!17096 m!20357))

(declare-fun m!20359 () Bool)

(assert (=> b!17096 m!20359))

(assert (=> d!11909 d!11951))

(declare-fun b!17111 () Bool)

(declare-fun e!9270 () Int)

(assert (=> b!17111 (= e!9270 (size!195 (toList!85 xs!637)))))

(declare-fun b!17112 () Bool)

(assert (=> b!17112 (= e!9270 n!315)))

(declare-fun b!17113 () Bool)

(declare-fun e!9271 () List!325)

(assert (=> b!17113 (= e!9271 Nil!320)))

(declare-fun d!11953 () Bool)

(declare-fun e!9268 () Bool)

(assert (=> d!11953 e!9268))

(declare-fun res!7044 () Bool)

(assert (=> d!11953 (=> (not res!7044) (not e!9268))))

(declare-fun lt!2559 () List!325)

(declare-fun content!55 (List!325) (Set T!1715))

(assert (=> d!11953 (= res!7044 (subset (content!55 lt!2559) (content!55 (toList!85 xs!637))))))

(assert (=> d!11953 (= lt!2559 e!9271)))

(declare-fun c!4414 () Bool)

(assert (=> d!11953 (= c!4414 (or (is-Nil!320 (toList!85 xs!637)) (<= n!315 0)))))

(assert (=> d!11953 (= (take!10 (toList!85 xs!637) n!315) lt!2559)))

(declare-fun b!17114 () Bool)

(declare-fun e!9269 () Int)

(assert (=> b!17114 (= e!9269 e!9270)))

(declare-fun c!4415 () Bool)

(assert (=> b!17114 (= c!4415 (>= n!315 (size!195 (toList!85 xs!637))))))

(declare-fun b!17115 () Bool)

(assert (=> b!17115 (= e!9269 0)))

(declare-fun b!17116 () Bool)

(assert (=> b!17116 (= e!9268 (= (size!195 lt!2559) e!9269))))

(declare-fun c!4413 () Bool)

(assert (=> b!17116 (= c!4413 (<= n!315 0))))

(declare-fun b!17117 () Bool)

(assert (=> b!17117 (= e!9271 (Cons!319 (h!233 (toList!85 xs!637)) (take!10 (t!4299 (toList!85 xs!637)) (- n!315 1))))))

(assert (= (and d!11953 c!4414) b!17113))

(assert (= (and d!11953 (not c!4414)) b!17117))

(assert (= (and d!11953 res!7044) b!17116))

(assert (= (and b!17114 c!4415) b!17111))

(assert (= (and b!17114 (not c!4415)) b!17112))

(assert (= (and b!17116 c!4413) b!17115))

(assert (= (and b!17116 (not c!4413)) b!17114))

(declare-fun m!20361 () Bool)

(assert (=> d!11953 m!20361))

(assert (=> d!11953 m!20225))

(declare-fun m!20363 () Bool)

(assert (=> d!11953 m!20363))

(assert (=> b!17111 m!20225))

(declare-fun m!20365 () Bool)

(assert (=> b!17111 m!20365))

(declare-fun m!20367 () Bool)

(assert (=> b!17116 m!20367))

(declare-fun m!20369 () Bool)

(assert (=> b!17117 m!20369))

(assert (=> b!17114 m!20225))

(assert (=> b!17114 m!20365))

(assert (=> d!11909 d!11953))

(declare-fun b!17118 () Bool)

(declare-fun e!9272 () List!325)

(assert (=> b!17118 (= e!9272 Nil!320)))

(declare-fun d!11955 () Bool)

(declare-fun lt!2560 () List!325)

(assert (=> d!11955 (= (size!195 lt!2560) (size!194 xs!637))))

(assert (=> d!11955 (= lt!2560 e!9272)))

(declare-fun c!4416 () Bool)

(assert (=> d!11955 (= c!4416 (is-Empty!22 xs!637))))

(assert (=> d!11955 (= (toList!85 xs!637) lt!2560)))

(declare-fun b!17120 () Bool)

(declare-fun e!9273 () List!325)

(assert (=> b!17120 (= e!9273 (Cons!319 (x!8716 xs!637) Nil!320))))

(declare-fun b!17119 () Bool)

(assert (=> b!17119 (= e!9272 e!9273)))

(declare-fun c!4417 () Bool)

(assert (=> b!17119 (= c!4417 (is-Single!11 xs!637))))

(declare-fun b!17121 () Bool)

(assert (=> b!17121 (= e!9273 (++!10 (toList!85 (left!656 xs!637)) (toList!85 (right!659 xs!637))))))

(assert (= (and b!17119 c!4417) b!17120))

(assert (= (and b!17119 (not c!4417)) b!17121))

(assert (= (and d!11955 c!4416) b!17118))

(assert (= (and d!11955 (not c!4416)) b!17119))

(declare-fun m!20371 () Bool)

(assert (=> d!11955 m!20371))

(declare-fun m!20373 () Bool)

(assert (=> d!11955 m!20373))

(assert (=> b!17121 m!20201))

(assert (=> b!17121 m!20203))

(assert (=> b!17121 m!20201))

(assert (=> b!17121 m!20203))

(declare-fun m!20375 () Bool)

(assert (=> b!17121 m!20375))

(assert (=> d!11909 d!11955))

(declare-fun d!11957 () Bool)

(assert (=> d!11957 (= (isEmpty!276 (right!659 (_1!54 res!5666))) (= (right!659 (_1!54 res!5666)) Empty!22))))

(assert (=> b!17007 d!11957))

(declare-fun b!17125 () Bool)

(declare-fun e!9275 () Bool)

(assert (=> b!17125 (= e!9275 (balanced!12 (right!659 (left!656 (_2!54 res!5666)))))))

(declare-fun b!17124 () Bool)

(declare-fun res!7048 () Bool)

(assert (=> b!17124 (=> (not res!7048) (not e!9275))))

(assert (=> b!17124 (= res!7048 (balanced!12 (left!656 (left!656 (_2!54 res!5666)))))))

(declare-fun b!17123 () Bool)

(declare-fun res!7047 () Bool)

(assert (=> b!17123 (=> (not res!7047) (not e!9275))))

(assert (=> b!17123 (= res!7047 (<= (- (level!11 (left!656 (left!656 (_2!54 res!5666)))) (level!11 (right!659 (left!656 (_2!54 res!5666))))) 1))))

(declare-fun d!11959 () Bool)

(declare-fun res!7045 () Bool)

(declare-fun e!9274 () Bool)

(assert (=> d!11959 (=> res!7045 e!9274)))

(assert (=> d!11959 (= res!7045 (not (is-CC!11 (left!656 (_2!54 res!5666)))))))

(assert (=> d!11959 (= (balanced!12 (left!656 (_2!54 res!5666))) e!9274)))

(declare-fun b!17122 () Bool)

(assert (=> b!17122 (= e!9274 e!9275)))

(declare-fun res!7046 () Bool)

(assert (=> b!17122 (=> (not res!7046) (not e!9275))))

(assert (=> b!17122 (= res!7046 (>= (- (level!11 (left!656 (left!656 (_2!54 res!5666)))) (level!11 (right!659 (left!656 (_2!54 res!5666))))) (- 1)))))

(assert (= (and d!11959 (not res!7045)) b!17122))

(assert (= (and b!17122 res!7046) b!17123))

(assert (= (and b!17123 res!7047) b!17124))

(assert (= (and b!17124 res!7048) b!17125))

(declare-fun m!20377 () Bool)

(assert (=> b!17125 m!20377))

(declare-fun m!20379 () Bool)

(assert (=> b!17124 m!20379))

(declare-fun m!20381 () Bool)

(assert (=> b!17123 m!20381))

(declare-fun m!20383 () Bool)

(assert (=> b!17123 m!20383))

(assert (=> b!17122 m!20381))

(assert (=> b!17122 m!20383))

(assert (=> b!17012 d!11959))

(assert (=> b!16897 d!11923))

(declare-fun b!17126 () Bool)

(declare-fun e!9282 () tuple2!108)

(assert (=> b!17126 (= e!9282 (tuple2!109 (concatNormalized!6 (left!656 (left!656 (right!659 xs!637))) (_1!54 (split!11 (right!659 (left!656 (right!659 xs!637))) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (left!656 (right!659 xs!637)))))))) (_2!54 (split!11 (right!659 (left!656 (right!659 xs!637))) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (left!656 (right!659 xs!637)))))))))))

(declare-fun b!17127 () Bool)

(declare-fun res!7049 () Bool)

(declare-fun e!9281 () Bool)

(assert (=> b!17127 (=> (not res!7049) (not e!9281))))

(assert (=> b!17127 (= res!7049 (instSplitAxiom!9 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))

(declare-fun b!17128 () Bool)

(declare-fun e!9277 () tuple2!108)

(assert (=> b!17128 (= e!9277 (tuple2!109 Empty!22 Empty!22))))

(declare-fun b!17129 () Bool)

(declare-fun e!9276 () Bool)

(assert (=> b!17129 (= e!9276 (balanced!12 (left!656 (right!659 xs!637))))))

(declare-fun b!17130 () Bool)

(assert (=> b!17130 (= e!9282 (tuple2!109 (left!656 (left!656 (right!659 xs!637))) (right!659 (left!656 (right!659 xs!637)))))))

(declare-fun b!17131 () Bool)

(declare-fun e!9280 () tuple2!108)

(assert (=> b!17131 (= e!9277 e!9280)))

(declare-fun c!4418 () Bool)

(assert (=> b!17131 (= c!4418 (is-Single!11 (left!656 (right!659 xs!637))))))

(declare-fun b!17132 () Bool)

(declare-fun e!9279 () tuple2!108)

(assert (=> b!17132 (= e!9279 e!9282)))

(declare-fun c!4419 () Bool)

(assert (=> b!17132 (= c!4419 (> (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (left!656 (right!659 xs!637))))))))

(declare-fun b!17133 () Bool)

(declare-fun e!9283 () Bool)

(declare-fun lt!2562 () Conc!12)

(assert (=> b!17133 (= e!9283 (balanced!12 lt!2562))))

(declare-fun b!17134 () Bool)

(assert (=> b!17134 (= e!9280 e!9279)))

(declare-fun c!4420 () Bool)

(assert (=> b!17134 (= c!4420 (< (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (left!656 (right!659 xs!637))))))))

(declare-fun b!17135 () Bool)

(assert (=> b!17135 (= e!9280 (ite (<= (- n!315 (size!194 (left!656 xs!637))) 0) (tuple2!109 Empty!22 (left!656 (right!659 xs!637))) (tuple2!109 (left!656 (right!659 xs!637)) Empty!22)))))

(declare-fun b!17136 () Bool)

(declare-fun res!7053 () Bool)

(assert (=> b!17136 (=> (not res!7053) (not e!9281))))

(declare-fun lt!2563 () tuple2!108)

(assert (=> b!17136 (= res!7053 (>= (level!11 (left!656 (right!659 xs!637))) (level!11 (_2!54 lt!2563))))))

(declare-fun b!17137 () Bool)

(declare-fun e!9278 () Bool)

(declare-fun lt!2561 () Conc!12)

(assert (=> b!17137 (= e!9278 (balanced!12 lt!2561))))

(declare-fun b!17138 () Bool)

(assert (=> b!17138 (= e!9281 (splitCorrectness!7 lt!2563 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))

(declare-fun b!17139 () Bool)

(declare-fun res!7056 () Bool)

(assert (=> b!17139 (=> (not res!7056) (not e!9281))))

(assert (=> b!17139 (= res!7056 (>= (level!11 (left!656 (right!659 xs!637))) (level!11 (_1!54 lt!2563))))))

(declare-fun b!17140 () Bool)

(declare-fun res!7050 () Bool)

(assert (=> b!17140 (=> (not res!7050) (not e!9281))))

(assert (=> b!17140 (= res!7050 e!9278)))

(declare-fun res!7052 () Bool)

(assert (=> b!17140 (=> (not res!7052) (not e!9278))))

(assert (=> b!17140 (= res!7052 (concInv!11 lt!2561))))

(assert (=> b!17140 (= lt!2561 (_2!54 lt!2563))))

(declare-fun b!17141 () Bool)

(assert (=> b!17141 (= e!9279 (tuple2!109 (_1!54 (split!11 (left!656 (left!656 (right!659 xs!637))) (- n!315 (size!194 (left!656 xs!637))))) (concatNormalized!6 (_2!54 (split!11 (left!656 (left!656 (right!659 xs!637))) (- n!315 (size!194 (left!656 xs!637))))) (right!659 (left!656 (right!659 xs!637))))))))

(declare-fun d!11961 () Bool)

(assert (=> d!11961 e!9281))

(declare-fun res!7054 () Bool)

(assert (=> d!11961 (=> (not res!7054) (not e!9281))))

(assert (=> d!11961 (= res!7054 e!9283)))

(declare-fun res!7055 () Bool)

(assert (=> d!11961 (=> (not res!7055) (not e!9283))))

(assert (=> d!11961 (= res!7055 (concInv!11 lt!2562))))

(assert (=> d!11961 (= lt!2562 (_1!54 lt!2563))))

(assert (=> d!11961 (= lt!2563 e!9277)))

(declare-fun c!4421 () Bool)

(assert (=> d!11961 (= c!4421 (is-Empty!22 (left!656 (right!659 xs!637))))))

(assert (=> d!11961 e!9276))

(declare-fun res!7051 () Bool)

(assert (=> d!11961 (=> (not res!7051) (not e!9276))))

(assert (=> d!11961 (= res!7051 (concInv!11 (left!656 (right!659 xs!637))))))

(assert (=> d!11961 (= (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))) lt!2563)))

(assert (= (and d!11961 res!7051) b!17129))

(assert (= (and b!17132 c!4419) b!17126))

(assert (= (and b!17132 (not c!4419)) b!17130))

(assert (= (and b!17134 c!4420) b!17141))

(assert (= (and b!17134 (not c!4420)) b!17132))

(assert (= (and b!17131 c!4418) b!17135))

(assert (= (and b!17131 (not c!4418)) b!17134))

(assert (= (and d!11961 c!4421) b!17128))

(assert (= (and d!11961 (not c!4421)) b!17131))

(assert (= (and d!11961 res!7055) b!17133))

(assert (= (and d!11961 res!7054) b!17140))

(assert (= (and b!17140 res!7052) b!17137))

(assert (= (and b!17140 res!7050) b!17139))

(assert (= (and b!17139 res!7056) b!17136))

(assert (= (and b!17136 res!7053) b!17127))

(assert (= (and b!17127 res!7049) b!17138))

(declare-fun m!20385 () Bool)

(assert (=> b!17127 m!20385))

(declare-fun m!20387 () Bool)

(assert (=> d!11961 m!20387))

(assert (=> d!11961 m!20305))

(assert (=> b!17136 m!20349))

(declare-fun m!20389 () Bool)

(assert (=> b!17136 m!20389))

(assert (=> b!17139 m!20349))

(declare-fun m!20391 () Bool)

(assert (=> b!17139 m!20391))

(declare-fun m!20393 () Bool)

(assert (=> b!17133 m!20393))

(declare-fun m!20395 () Bool)

(assert (=> b!17141 m!20395))

(declare-fun m!20397 () Bool)

(assert (=> b!17141 m!20397))

(declare-fun m!20399 () Bool)

(assert (=> b!17138 m!20399))

(declare-fun m!20401 () Bool)

(assert (=> b!17137 m!20401))

(declare-fun m!20403 () Bool)

(assert (=> b!17132 m!20403))

(assert (=> b!17126 m!20403))

(declare-fun m!20405 () Bool)

(assert (=> b!17126 m!20405))

(declare-fun m!20407 () Bool)

(assert (=> b!17126 m!20407))

(declare-fun m!20409 () Bool)

(assert (=> b!17129 m!20409))

(declare-fun m!20411 () Bool)

(assert (=> b!17140 m!20411))

(assert (=> b!17134 m!20403))

(assert (=> b!17005 d!11961))

(declare-fun b!17142 () Bool)

(declare-fun e!9284 () Conc!12)

(declare-fun e!9288 () Conc!12)

(assert (=> b!17142 (= e!9284 e!9288)))

(declare-fun c!4423 () Bool)

(assert (=> b!17142 (= c!4423 (is-Empty!22 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))))

(declare-fun d!11963 () Bool)

(declare-fun e!9285 () Bool)

(assert (=> d!11963 e!9285))

(declare-fun res!7060 () Bool)

(assert (=> d!11963 (=> (not res!7060) (not e!9285))))

(declare-fun e!9286 () Bool)

(assert (=> d!11963 (= res!7060 e!9286)))

(declare-fun res!7059 () Bool)

(assert (=> d!11963 (=> (not res!7059) (not e!9286))))

(declare-fun lt!2565 () Conc!12)

(assert (=> d!11963 (= res!7059 (concInv!11 lt!2565))))

(assert (=> d!11963 (= lt!2565 e!9284)))

(declare-fun c!4422 () Bool)

(assert (=> d!11963 (= c!4422 (is-Empty!22 (right!659 (right!659 xs!637))))))

(declare-fun e!9289 () Bool)

(assert (=> d!11963 e!9289))

(declare-fun res!7061 () Bool)

(assert (=> d!11963 (=> (not res!7061) (not e!9289))))

(declare-fun e!9287 () Bool)

(assert (=> d!11963 (= res!7061 e!9287)))

(declare-fun res!7063 () Bool)

(assert (=> d!11963 (=> (not res!7063) (not e!9287))))

(assert (=> d!11963 (= res!7063 (concInv!11 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))))

(assert (=> d!11963 (= (concatNormalized!6 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))) (right!659 (right!659 xs!637))) lt!2565)))

(declare-fun b!17143 () Bool)

(assert (=> b!17143 (= e!9288 (concatNonEmpty!4 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))) (right!659 (right!659 xs!637))))))

(declare-fun b!17144 () Bool)

(assert (=> b!17144 (= e!9284 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))))))

(declare-fun b!17145 () Bool)

(assert (=> b!17145 (= e!9288 (right!659 (right!659 xs!637)))))

(declare-fun b!17146 () Bool)

(assert (=> b!17146 (= e!9285 (concatCorrectness!2 lt!2565 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))) (right!659 (right!659 xs!637))))))

(declare-fun b!17147 () Bool)

(assert (=> b!17147 (= e!9289 (balanced!12 (right!659 (right!659 xs!637))))))

(declare-fun b!17148 () Bool)

(assert (=> b!17148 (= e!9287 (balanced!12 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))))

(declare-fun b!17149 () Bool)

(declare-fun res!7058 () Bool)

(assert (=> b!17149 (=> (not res!7058) (not e!9285))))

(declare-fun lt!2569 () Int)

(declare-fun lt!2567 () Int)

(declare-fun lt!2570 () Int)

(assert (=> b!17149 (= res!7058 (>= lt!2570 (ite (>= lt!2569 lt!2567) lt!2569 lt!2567)))))

(assert (=> b!17149 (= lt!2567 (level!11 (right!659 (right!659 xs!637))))))

(assert (=> b!17149 (= lt!2569 (level!11 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))))

(assert (=> b!17149 (= lt!2570 (level!11 lt!2565))))

(declare-fun b!17150 () Bool)

(declare-fun res!7057 () Bool)

(assert (=> b!17150 (=> (not res!7057) (not e!9285))))

(declare-fun lt!2564 () Int)

(declare-fun lt!2568 () Int)

(declare-fun lt!2566 () Int)

(assert (=> b!17150 (= res!7057 (<= lt!2566 (+ (ite (>= lt!2568 lt!2564) lt!2568 lt!2564) 1)))))

(assert (=> b!17150 (= lt!2564 (level!11 (right!659 (right!659 xs!637))))))

(assert (=> b!17150 (= lt!2568 (level!11 (_2!54 (split!11 (left!656 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637)))))))))

(assert (=> b!17150 (= lt!2566 (level!11 lt!2565))))

(declare-fun b!17151 () Bool)

(declare-fun res!7062 () Bool)

(assert (=> b!17151 (=> (not res!7062) (not e!9289))))

(assert (=> b!17151 (= res!7062 (concInv!11 (right!659 (right!659 xs!637))))))

(declare-fun b!17152 () Bool)

(assert (=> b!17152 (= e!9286 (balanced!12 lt!2565))))

(assert (= (and d!11963 res!7063) b!17148))

(assert (= (and d!11963 res!7061) b!17151))

(assert (= (and b!17151 res!7062) b!17147))

(assert (= (and b!17142 c!4423) b!17145))

(assert (= (and b!17142 (not c!4423)) b!17143))

(assert (= (and d!11963 c!4422) b!17144))

(assert (= (and d!11963 (not c!4422)) b!17142))

(assert (= (and d!11963 res!7059) b!17152))

(assert (= (and d!11963 res!7060) b!17150))

(assert (= (and b!17150 res!7057) b!17149))

(assert (= (and b!17149 res!7058) b!17146))

(assert (=> b!17149 m!20347))

(declare-fun m!20413 () Bool)

(assert (=> b!17149 m!20413))

(declare-fun m!20415 () Bool)

(assert (=> b!17149 m!20415))

(declare-fun m!20417 () Bool)

(assert (=> b!17143 m!20417))

(declare-fun m!20419 () Bool)

(assert (=> b!17148 m!20419))

(assert (=> b!17151 m!20303))

(declare-fun m!20421 () Bool)

(assert (=> d!11963 m!20421))

(declare-fun m!20423 () Bool)

(assert (=> d!11963 m!20423))

(declare-fun m!20425 () Bool)

(assert (=> b!17146 m!20425))

(assert (=> b!17150 m!20347))

(assert (=> b!17150 m!20413))

(assert (=> b!17150 m!20415))

(declare-fun m!20427 () Bool)

(assert (=> b!17152 m!20427))

(declare-fun m!20429 () Bool)

(assert (=> b!17147 m!20429))

(assert (=> b!17005 d!11963))

(declare-fun b!17153 () Bool)

(declare-fun e!9290 () Conc!12)

(declare-fun e!9294 () Conc!12)

(assert (=> b!17153 (= e!9290 e!9294)))

(declare-fun c!4425 () Bool)

(assert (=> b!17153 (= c!4425 (is-Empty!22 (left!656 (right!659 xs!637))))))

(declare-fun d!11965 () Bool)

(declare-fun e!9291 () Bool)

(assert (=> d!11965 e!9291))

(declare-fun res!7067 () Bool)

(assert (=> d!11965 (=> (not res!7067) (not e!9291))))

(declare-fun e!9292 () Bool)

(assert (=> d!11965 (= res!7067 e!9292)))

(declare-fun res!7066 () Bool)

(assert (=> d!11965 (=> (not res!7066) (not e!9292))))

(declare-fun lt!2572 () Conc!12)

(assert (=> d!11965 (= res!7066 (concInv!11 lt!2572))))

(assert (=> d!11965 (= lt!2572 e!9290)))

(declare-fun c!4424 () Bool)

(assert (=> d!11965 (= c!4424 (is-Empty!22 (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(declare-fun e!9295 () Bool)

(assert (=> d!11965 e!9295))

(declare-fun res!7068 () Bool)

(assert (=> d!11965 (=> (not res!7068) (not e!9295))))

(declare-fun e!9293 () Bool)

(assert (=> d!11965 (= res!7068 e!9293)))

(declare-fun res!7070 () Bool)

(assert (=> d!11965 (=> (not res!7070) (not e!9293))))

(assert (=> d!11965 (= res!7070 (concInv!11 (left!656 (right!659 xs!637))))))

(assert (=> d!11965 (= (concatNormalized!6 (left!656 (right!659 xs!637)) (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))) lt!2572)))

(declare-fun b!17154 () Bool)

(assert (=> b!17154 (= e!9294 (concatNonEmpty!4 (left!656 (right!659 xs!637)) (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(declare-fun b!17155 () Bool)

(assert (=> b!17155 (= e!9290 (left!656 (right!659 xs!637)))))

(declare-fun b!17156 () Bool)

(assert (=> b!17156 (= e!9294 (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))))))))

(declare-fun b!17157 () Bool)

(assert (=> b!17157 (= e!9291 (concatCorrectness!2 lt!2572 (left!656 (right!659 xs!637)) (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(declare-fun b!17158 () Bool)

(assert (=> b!17158 (= e!9295 (balanced!12 (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(declare-fun b!17159 () Bool)

(assert (=> b!17159 (= e!9293 (balanced!12 (left!656 (right!659 xs!637))))))

(declare-fun b!17160 () Bool)

(declare-fun res!7065 () Bool)

(assert (=> b!17160 (=> (not res!7065) (not e!9291))))

(declare-fun lt!2576 () Int)

(declare-fun lt!2577 () Int)

(declare-fun lt!2574 () Int)

(assert (=> b!17160 (= res!7065 (>= lt!2577 (ite (>= lt!2576 lt!2574) lt!2576 lt!2574)))))

(assert (=> b!17160 (= lt!2574 (level!11 (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(assert (=> b!17160 (= lt!2576 (level!11 (left!656 (right!659 xs!637))))))

(assert (=> b!17160 (= lt!2577 (level!11 lt!2572))))

(declare-fun b!17161 () Bool)

(declare-fun res!7064 () Bool)

(assert (=> b!17161 (=> (not res!7064) (not e!9291))))

(declare-fun lt!2575 () Int)

(declare-fun lt!2571 () Int)

(declare-fun lt!2573 () Int)

(assert (=> b!17161 (= res!7064 (<= lt!2573 (+ (ite (>= lt!2575 lt!2571) lt!2575 lt!2571) 1)))))

(assert (=> b!17161 (= lt!2571 (level!11 (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(assert (=> b!17161 (= lt!2575 (level!11 (left!656 (right!659 xs!637))))))

(assert (=> b!17161 (= lt!2573 (level!11 lt!2572))))

(declare-fun b!17162 () Bool)

(declare-fun res!7069 () Bool)

(assert (=> b!17162 (=> (not res!7069) (not e!9295))))

(assert (=> b!17162 (= res!7069 (concInv!11 (_1!54 (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))))

(declare-fun b!17163 () Bool)

(assert (=> b!17163 (= e!9292 (balanced!12 lt!2572))))

(assert (= (and d!11965 res!7070) b!17159))

(assert (= (and d!11965 res!7068) b!17162))

(assert (= (and b!17162 res!7069) b!17158))

(assert (= (and b!17153 c!4425) b!17156))

(assert (= (and b!17153 (not c!4425)) b!17154))

(assert (= (and d!11965 c!4424) b!17155))

(assert (= (and d!11965 (not c!4424)) b!17153))

(assert (= (and d!11965 res!7066) b!17163))

(assert (= (and d!11965 res!7067) b!17161))

(assert (= (and b!17161 res!7064) b!17160))

(assert (= (and b!17160 res!7065) b!17157))

(declare-fun m!20431 () Bool)

(assert (=> b!17160 m!20431))

(assert (=> b!17160 m!20349))

(declare-fun m!20433 () Bool)

(assert (=> b!17160 m!20433))

(declare-fun m!20435 () Bool)

(assert (=> b!17154 m!20435))

(assert (=> b!17159 m!20409))

(declare-fun m!20437 () Bool)

(assert (=> b!17162 m!20437))

(declare-fun m!20439 () Bool)

(assert (=> d!11965 m!20439))

(assert (=> d!11965 m!20305))

(declare-fun m!20441 () Bool)

(assert (=> b!17157 m!20441))

(assert (=> b!17161 m!20431))

(assert (=> b!17161 m!20349))

(assert (=> b!17161 m!20433))

(declare-fun m!20443 () Bool)

(assert (=> b!17163 m!20443))

(declare-fun m!20445 () Bool)

(assert (=> b!17158 m!20445))

(assert (=> b!16990 d!11965))

(declare-fun b!17164 () Bool)

(declare-fun e!9302 () tuple2!108)

(assert (=> b!17164 (= e!9302 (tuple2!109 (concatNormalized!6 (left!656 (right!659 (right!659 xs!637))) (_1!54 (split!11 (right!659 (right!659 (right!659 xs!637))) (- (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))) (size!194 (left!656 (right!659 (right!659 xs!637)))))))) (_2!54 (split!11 (right!659 (right!659 (right!659 xs!637))) (- (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))) (size!194 (left!656 (right!659 (right!659 xs!637)))))))))))

(declare-fun b!17165 () Bool)

(declare-fun res!7071 () Bool)

(declare-fun e!9301 () Bool)

(assert (=> b!17165 (=> (not res!7071) (not e!9301))))

(assert (=> b!17165 (= res!7071 (instSplitAxiom!9 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))

(declare-fun b!17166 () Bool)

(declare-fun e!9297 () tuple2!108)

(assert (=> b!17166 (= e!9297 (tuple2!109 Empty!22 Empty!22))))

(declare-fun b!17167 () Bool)

(declare-fun e!9296 () Bool)

(assert (=> b!17167 (= e!9296 (balanced!12 (right!659 (right!659 xs!637))))))

(declare-fun b!17168 () Bool)

(assert (=> b!17168 (= e!9302 (tuple2!109 (left!656 (right!659 (right!659 xs!637))) (right!659 (right!659 (right!659 xs!637)))))))

(declare-fun b!17169 () Bool)

(declare-fun e!9300 () tuple2!108)

(assert (=> b!17169 (= e!9297 e!9300)))

(declare-fun c!4426 () Bool)

(assert (=> b!17169 (= c!4426 (is-Single!11 (right!659 (right!659 xs!637))))))

(declare-fun b!17170 () Bool)

(declare-fun e!9299 () tuple2!108)

(assert (=> b!17170 (= e!9299 e!9302)))

(declare-fun c!4427 () Bool)

(assert (=> b!17170 (= c!4427 (> (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))) (size!194 (left!656 (right!659 (right!659 xs!637))))))))

(declare-fun b!17171 () Bool)

(declare-fun e!9303 () Bool)

(declare-fun lt!2579 () Conc!12)

(assert (=> b!17171 (= e!9303 (balanced!12 lt!2579))))

(declare-fun b!17172 () Bool)

(assert (=> b!17172 (= e!9300 e!9299)))

(declare-fun c!4428 () Bool)

(assert (=> b!17172 (= c!4428 (< (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))) (size!194 (left!656 (right!659 (right!659 xs!637))))))))

(declare-fun b!17173 () Bool)

(assert (=> b!17173 (= e!9300 (ite (<= (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))) 0) (tuple2!109 Empty!22 (right!659 (right!659 xs!637))) (tuple2!109 (right!659 (right!659 xs!637)) Empty!22)))))

(declare-fun b!17174 () Bool)

(declare-fun res!7075 () Bool)

(assert (=> b!17174 (=> (not res!7075) (not e!9301))))

(declare-fun lt!2580 () tuple2!108)

(assert (=> b!17174 (= res!7075 (>= (level!11 (right!659 (right!659 xs!637))) (level!11 (_2!54 lt!2580))))))

(declare-fun b!17175 () Bool)

(declare-fun e!9298 () Bool)

(declare-fun lt!2578 () Conc!12)

(assert (=> b!17175 (= e!9298 (balanced!12 lt!2578))))

(declare-fun b!17176 () Bool)

(assert (=> b!17176 (= e!9301 (splitCorrectness!7 lt!2580 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))))))

(declare-fun b!17177 () Bool)

(declare-fun res!7078 () Bool)

(assert (=> b!17177 (=> (not res!7078) (not e!9301))))

(assert (=> b!17177 (= res!7078 (>= (level!11 (right!659 (right!659 xs!637))) (level!11 (_1!54 lt!2580))))))

(declare-fun b!17178 () Bool)

(declare-fun res!7072 () Bool)

(assert (=> b!17178 (=> (not res!7072) (not e!9301))))

(assert (=> b!17178 (= res!7072 e!9298)))

(declare-fun res!7074 () Bool)

(assert (=> b!17178 (=> (not res!7074) (not e!9298))))

(assert (=> b!17178 (= res!7074 (concInv!11 lt!2578))))

(assert (=> b!17178 (= lt!2578 (_2!54 lt!2580))))

(declare-fun b!17179 () Bool)

(assert (=> b!17179 (= e!9299 (tuple2!109 (_1!54 (split!11 (left!656 (right!659 (right!659 xs!637))) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))))) (concatNormalized!6 (_2!54 (split!11 (left!656 (right!659 (right!659 xs!637))) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637)))))) (right!659 (right!659 (right!659 xs!637))))))))

(declare-fun d!11967 () Bool)

(assert (=> d!11967 e!9301))

(declare-fun res!7076 () Bool)

(assert (=> d!11967 (=> (not res!7076) (not e!9301))))

(assert (=> d!11967 (= res!7076 e!9303)))

(declare-fun res!7077 () Bool)

(assert (=> d!11967 (=> (not res!7077) (not e!9303))))

(assert (=> d!11967 (= res!7077 (concInv!11 lt!2579))))

(assert (=> d!11967 (= lt!2579 (_1!54 lt!2580))))

(assert (=> d!11967 (= lt!2580 e!9297)))

(declare-fun c!4429 () Bool)

(assert (=> d!11967 (= c!4429 (is-Empty!22 (right!659 (right!659 xs!637))))))

(assert (=> d!11967 e!9296))

(declare-fun res!7073 () Bool)

(assert (=> d!11967 (=> (not res!7073) (not e!9296))))

(assert (=> d!11967 (= res!7073 (concInv!11 (right!659 (right!659 xs!637))))))

(assert (=> d!11967 (= (split!11 (right!659 (right!659 xs!637)) (- (- n!315 (size!194 (left!656 xs!637))) (size!194 (left!656 (right!659 xs!637))))) lt!2580)))

(assert (= (and d!11967 res!7073) b!17167))

(assert (= (and b!17170 c!4427) b!17164))

(assert (= (and b!17170 (not c!4427)) b!17168))

(assert (= (and b!17172 c!4428) b!17179))

(assert (= (and b!17172 (not c!4428)) b!17170))

(assert (= (and b!17169 c!4426) b!17173))

(assert (= (and b!17169 (not c!4426)) b!17172))

(assert (= (and d!11967 c!4429) b!17166))

(assert (= (and d!11967 (not c!4429)) b!17169))

(assert (= (and d!11967 res!7077) b!17171))

(assert (= (and d!11967 res!7076) b!17178))

(assert (= (and b!17178 res!7074) b!17175))

(assert (= (and b!17178 res!7072) b!17177))

(assert (= (and b!17177 res!7078) b!17174))

(assert (= (and b!17174 res!7075) b!17165))

(assert (= (and b!17165 res!7071) b!17176))

(declare-fun m!20447 () Bool)

(assert (=> b!17165 m!20447))

(declare-fun m!20449 () Bool)

(assert (=> d!11967 m!20449))

(assert (=> d!11967 m!20303))

(assert (=> b!17174 m!20347))

(declare-fun m!20451 () Bool)

(assert (=> b!17174 m!20451))

(assert (=> b!17177 m!20347))

(declare-fun m!20453 () Bool)

(assert (=> b!17177 m!20453))

(declare-fun m!20455 () Bool)

(assert (=> b!17171 m!20455))

(declare-fun m!20457 () Bool)

(assert (=> b!17179 m!20457))

(declare-fun m!20459 () Bool)

(assert (=> b!17179 m!20459))

(declare-fun m!20461 () Bool)

(assert (=> b!17176 m!20461))

(declare-fun m!20463 () Bool)

(assert (=> b!17175 m!20463))

(declare-fun m!20465 () Bool)

(assert (=> b!17170 m!20465))

(assert (=> b!17164 m!20465))

(declare-fun m!20467 () Bool)

(assert (=> b!17164 m!20467))

(declare-fun m!20469 () Bool)

(assert (=> b!17164 m!20469))

(assert (=> b!17167 m!20429))

(declare-fun m!20471 () Bool)

(assert (=> b!17178 m!20471))

(assert (=> b!17172 m!20465))

(assert (=> b!16990 d!11967))

(declare-fun d!11969 () Bool)

(declare-fun lt!2581 () Int)

(assert (=> d!11969 (>= lt!2581 0)))

(declare-fun e!9305 () Int)

(assert (=> d!11969 (= lt!2581 e!9305)))

(declare-fun c!4431 () Bool)

(assert (=> d!11969 (= c!4431 (is-Empty!22 (left!656 (right!659 xs!637))))))

(assert (=> d!11969 (= (size!194 (left!656 (right!659 xs!637))) lt!2581)))

(declare-fun b!17183 () Bool)

(declare-fun e!9304 () Int)

(assert (=> b!17183 (= e!9304 (+ (size!194 (left!656 (left!656 (right!659 xs!637)))) (size!194 (right!659 (left!656 (right!659 xs!637))))))))

(declare-fun b!17182 () Bool)

(assert (=> b!17182 (= e!9304 1)))

(declare-fun b!17181 () Bool)

(assert (=> b!17181 (= e!9305 e!9304)))

(declare-fun c!4430 () Bool)

(assert (=> b!17181 (= c!4430 (is-Single!11 (left!656 (right!659 xs!637))))))

(declare-fun b!17180 () Bool)

(assert (=> b!17180 (= e!9305 0)))

(assert (= (and b!17181 c!4430) b!17182))

(assert (= (and b!17181 (not c!4430)) b!17183))

(assert (= (and d!11969 c!4431) b!17180))

(assert (= (and d!11969 (not c!4431)) b!17181))

(assert (=> b!17183 m!20403))

(declare-fun m!20473 () Bool)

(assert (=> b!17183 m!20473))

(assert (=> b!16990 d!11969))

(declare-fun b!17185 () Bool)

(declare-fun e!9306 () Int)

(declare-fun lt!2584 () Int)

(declare-fun lt!2583 () Int)

(assert (=> b!17185 (= e!9306 (+ 1 (ite (>= lt!2584 lt!2583) lt!2584 lt!2583)))))

(assert (=> b!17185 (= lt!2583 (level!11 (right!659 (left!656 (_2!54 res!5666)))))))

(assert (=> b!17185 (= lt!2584 (level!11 (left!656 (left!656 (_2!54 res!5666)))))))

(declare-fun d!11971 () Bool)

(declare-fun lt!2582 () Int)

(assert (=> d!11971 (>= lt!2582 0)))

(assert (=> d!11971 (= lt!2582 e!9306)))

(declare-fun c!4432 () Bool)

(assert (=> d!11971 (= c!4432 (or (is-Empty!22 (left!656 (_2!54 res!5666))) (is-Single!11 (left!656 (_2!54 res!5666)))))))

(assert (=> d!11971 (= (level!11 (left!656 (_2!54 res!5666))) lt!2582)))

(declare-fun b!17184 () Bool)

(assert (=> b!17184 (= e!9306 0)))

(assert (= (and d!11971 c!4432) b!17184))

(assert (= (and d!11971 (not c!4432)) b!17185))

(assert (=> b!17185 m!20383))

(assert (=> b!17185 m!20381))

(assert (=> b!17011 d!11971))

(declare-fun b!17187 () Bool)

(declare-fun e!9307 () Int)

(declare-fun lt!2587 () Int)

(declare-fun lt!2586 () Int)

(assert (=> b!17187 (= e!9307 (+ 1 (ite (>= lt!2587 lt!2586) lt!2587 lt!2586)))))

(assert (=> b!17187 (= lt!2586 (level!11 (right!659 (right!659 (_2!54 res!5666)))))))

(assert (=> b!17187 (= lt!2587 (level!11 (left!656 (right!659 (_2!54 res!5666)))))))

(declare-fun d!11973 () Bool)

(declare-fun lt!2585 () Int)

(assert (=> d!11973 (>= lt!2585 0)))

(assert (=> d!11973 (= lt!2585 e!9307)))

(declare-fun c!4433 () Bool)

(assert (=> d!11973 (= c!4433 (or (is-Empty!22 (right!659 (_2!54 res!5666))) (is-Single!11 (right!659 (_2!54 res!5666)))))))

(assert (=> d!11973 (= (level!11 (right!659 (_2!54 res!5666))) lt!2585)))

(declare-fun b!17186 () Bool)

(assert (=> b!17186 (= e!9307 0)))

(assert (= (and d!11973 c!4433) b!17186))

(assert (= (and d!11973 (not c!4433)) b!17187))

(declare-fun m!20475 () Bool)

(assert (=> b!17187 m!20475))

(declare-fun m!20477 () Bool)

(assert (=> b!17187 m!20477))

(assert (=> b!17011 d!11973))

(assert (=> b!16998 d!11969))

(declare-fun d!11975 () Bool)

(assert (=> d!11975 (= (isEmpty!276 (right!659 xs!637)) (= (right!659 xs!637) Empty!22))))

(assert (=> b!16953 d!11975))

(assert (=> b!17000 d!11949))

(declare-fun b!17189 () Bool)

(declare-fun e!9308 () Int)

(declare-fun lt!2590 () Int)

(declare-fun lt!2589 () Int)

(assert (=> b!17189 (= e!9308 (+ 1 (ite (>= lt!2590 lt!2589) lt!2590 lt!2589)))))

(assert (=> b!17189 (= lt!2589 (level!11 (right!659 (_2!54 lt!2535))))))

(assert (=> b!17189 (= lt!2590 (level!11 (left!656 (_2!54 lt!2535))))))

(declare-fun d!11977 () Bool)

(declare-fun lt!2588 () Int)

(assert (=> d!11977 (>= lt!2588 0)))

(assert (=> d!11977 (= lt!2588 e!9308)))

(declare-fun c!4434 () Bool)

(assert (=> d!11977 (= c!4434 (or (is-Empty!22 (_2!54 lt!2535)) (is-Single!11 (_2!54 lt!2535))))))

(assert (=> d!11977 (= (level!11 (_2!54 lt!2535)) lt!2588)))

(declare-fun b!17188 () Bool)

(assert (=> b!17188 (= e!9308 0)))

(assert (= (and d!11977 c!4434) b!17188))

(assert (= (and d!11977 (not c!4434)) b!17189))

(declare-fun m!20479 () Bool)

(assert (=> b!17189 m!20479))

(declare-fun m!20481 () Bool)

(assert (=> b!17189 m!20481))

(assert (=> b!17000 d!11977))

(declare-fun b!17193 () Bool)

(declare-fun e!9310 () Bool)

(assert (=> b!17193 (= e!9310 (balanced!12 (right!659 (right!659 xs!637))))))

(declare-fun b!17192 () Bool)

(declare-fun res!7082 () Bool)

(assert (=> b!17192 (=> (not res!7082) (not e!9310))))

(assert (=> b!17192 (= res!7082 (balanced!12 (left!656 (right!659 xs!637))))))

(declare-fun b!17191 () Bool)

(declare-fun res!7081 () Bool)

(assert (=> b!17191 (=> (not res!7081) (not e!9310))))

(assert (=> b!17191 (= res!7081 (<= (- (level!11 (left!656 (right!659 xs!637))) (level!11 (right!659 (right!659 xs!637)))) 1))))

(declare-fun d!11979 () Bool)

(declare-fun res!7079 () Bool)

(declare-fun e!9309 () Bool)

(assert (=> d!11979 (=> res!7079 e!9309)))

(assert (=> d!11979 (= res!7079 (not (is-CC!11 (right!659 xs!637))))))

(assert (=> d!11979 (= (balanced!12 (right!659 xs!637)) e!9309)))

(declare-fun b!17190 () Bool)

(assert (=> b!17190 (= e!9309 e!9310)))

(declare-fun res!7080 () Bool)

(assert (=> b!17190 (=> (not res!7080) (not e!9310))))

(assert (=> b!17190 (= res!7080 (>= (- (level!11 (left!656 (right!659 xs!637))) (level!11 (right!659 (right!659 xs!637)))) (- 1)))))

(assert (= (and d!11979 (not res!7079)) b!17190))

(assert (= (and b!17190 res!7080) b!17191))

(assert (= (and b!17191 res!7081) b!17192))

(assert (= (and b!17192 res!7082) b!17193))

(assert (=> b!17193 m!20429))

(assert (=> b!17192 m!20409))

(assert (=> b!17191 m!20349))

(assert (=> b!17191 m!20347))

(assert (=> b!17190 m!20349))

(assert (=> b!17190 m!20347))

(assert (=> b!16993 d!11979))

(declare-fun b!17195 () Bool)

(declare-fun res!7086 () Bool)

(declare-fun e!9311 () Bool)

(assert (=> b!17195 (=> (not res!7086) (not e!9311))))

(assert (=> b!17195 (= res!7086 (not (isEmpty!276 (right!659 lt!2533))))))

(declare-fun b!17197 () Bool)

(assert (=> b!17197 (= e!9311 (concInv!11 (right!659 lt!2533)))))

(declare-fun d!11981 () Bool)

(declare-fun res!7083 () Bool)

(declare-fun e!9312 () Bool)

(assert (=> d!11981 (=> res!7083 e!9312)))

(assert (=> d!11981 (= res!7083 (not (is-CC!11 lt!2533)))))

(assert (=> d!11981 (= (concInv!11 lt!2533) e!9312)))

(declare-fun b!17196 () Bool)

(declare-fun res!7085 () Bool)

(assert (=> b!17196 (=> (not res!7085) (not e!9311))))

(assert (=> b!17196 (= res!7085 (concInv!11 (left!656 lt!2533)))))

(declare-fun b!17194 () Bool)

(assert (=> b!17194 (= e!9312 e!9311)))

(declare-fun res!7084 () Bool)

(assert (=> b!17194 (=> (not res!7084) (not e!9311))))

(assert (=> b!17194 (= res!7084 (not (isEmpty!276 (left!656 lt!2533))))))

(assert (= (and d!11981 (not res!7083)) b!17194))

(assert (= (and b!17194 res!7084) b!17195))

(assert (= (and b!17195 res!7086) b!17196))

(assert (= (and b!17196 res!7085) b!17197))

(declare-fun m!20483 () Bool)

(assert (=> b!17195 m!20483))

(declare-fun m!20485 () Bool)

(assert (=> b!17197 m!20485))

(declare-fun m!20487 () Bool)

(assert (=> b!17196 m!20487))

(declare-fun m!20489 () Bool)

(assert (=> b!17194 m!20489))

(assert (=> b!17004 d!11981))

(assert (=> b!16928 d!11979))

(declare-fun b!17218 () Bool)

(declare-fun e!9325 () Bool)

(assert (=> b!17218 (= e!9325 (appendTakeDrop!6 (t!4299 (toList!85 (left!656 xs!637))) (toList!85 (right!659 xs!637)) (- n!315 1)))))

(declare-fun b!17219 () Bool)

(declare-fun e!9330 () List!325)

(declare-fun e!9327 () List!325)

(assert (=> b!17219 (= e!9330 e!9327)))

(declare-fun c!4443 () Bool)

(assert (=> b!17219 (= c!4443 (> n!315 (size!195 (toList!85 (left!656 xs!637)))))))

(declare-fun b!17220 () Bool)

(declare-fun e!9326 () List!325)

(assert (=> b!17220 (= e!9326 (toList!85 (left!656 xs!637)))))

(declare-fun b!17221 () Bool)

(assert (=> b!17221 (= e!9327 (toList!85 (right!659 xs!637)))))

(declare-fun b!17222 () Bool)

(declare-fun e!9328 () List!325)

(assert (=> b!17222 (= e!9328 e!9326)))

(declare-fun c!4445 () Bool)

(assert (=> b!17222 (= c!4445 (> n!315 (size!195 (toList!85 (left!656 xs!637)))))))

(declare-fun b!17223 () Bool)

(assert (=> b!17223 (= e!9330 (++!10 (drop!8 (toList!85 (left!656 xs!637)) n!315) (toList!85 (right!659 xs!637))))))

(declare-fun b!17224 () Bool)

(assert (=> b!17224 (= e!9326 (++!10 (toList!85 (left!656 xs!637)) (take!10 (toList!85 (right!659 xs!637)) (- n!315 (size!195 (toList!85 (left!656 xs!637)))))))))

(declare-fun d!11983 () Bool)

(declare-fun e!9329 () Bool)

(assert (=> d!11983 e!9329))

(declare-fun res!7098 () Bool)

(assert (=> d!11983 (=> (not res!7098) (not e!9329))))

(assert (=> d!11983 (= res!7098 (= (take!10 (++!10 (toList!85 (left!656 xs!637)) (toList!85 (right!659 xs!637))) n!315) e!9328))))

(declare-fun c!4446 () Bool)

(assert (=> d!11983 (= c!4446 (< n!315 (size!195 (toList!85 (left!656 xs!637)))))))

(declare-fun lt!2593 () Bool)

(assert (=> d!11983 (= lt!2593 e!9325)))

(declare-fun res!7099 () Bool)

(assert (=> d!11983 (=> res!7099 e!9325)))

(assert (=> d!11983 (= res!7099 (or (is-Nil!320 (toList!85 (left!656 xs!637))) (<= n!315 0)))))

(assert (=> d!11983 (= (appendTakeDrop!6 (toList!85 (left!656 xs!637)) (toList!85 (right!659 xs!637)) n!315) true)))

(declare-fun b!17225 () Bool)

(assert (=> b!17225 (= e!9329 (= (drop!8 (++!10 (toList!85 (left!656 xs!637)) (toList!85 (right!659 xs!637))) n!315) e!9330))))

(declare-fun c!4444 () Bool)

(assert (=> b!17225 (= c!4444 (< n!315 (size!195 (toList!85 (left!656 xs!637)))))))

(declare-fun b!17226 () Bool)

(assert (=> b!17226 (= e!9327 (drop!8 (toList!85 (right!659 xs!637)) (- n!315 (size!195 (toList!85 (left!656 xs!637))))))))

(declare-fun b!17227 () Bool)

(assert (=> b!17227 (= e!9328 (take!10 (toList!85 (left!656 xs!637)) n!315))))

(assert (= (and d!11983 (not res!7099)) b!17218))

(assert (= (and b!17222 c!4445) b!17224))

(assert (= (and b!17222 (not c!4445)) b!17220))

(assert (= (and d!11983 c!4446) b!17227))

(assert (= (and d!11983 (not c!4446)) b!17222))

(assert (= (and d!11983 res!7098) b!17225))

(assert (= (and b!17219 c!4443) b!17226))

(assert (= (and b!17219 (not c!4443)) b!17221))

(assert (= (and b!17225 c!4444) b!17223))

(assert (= (and b!17225 (not c!4444)) b!17219))

(assert (=> b!17226 m!20201))

(declare-fun m!20491 () Bool)

(assert (=> b!17226 m!20491))

(assert (=> b!17226 m!20203))

(declare-fun m!20493 () Bool)

(assert (=> b!17226 m!20493))

(assert (=> b!17224 m!20201))

(assert (=> b!17224 m!20491))

(assert (=> b!17224 m!20203))

(declare-fun m!20495 () Bool)

(assert (=> b!17224 m!20495))

(assert (=> b!17224 m!20201))

(assert (=> b!17224 m!20495))

(declare-fun m!20497 () Bool)

(assert (=> b!17224 m!20497))

(assert (=> b!17227 m!20201))

(declare-fun m!20499 () Bool)

(assert (=> b!17227 m!20499))

(assert (=> d!11983 m!20201))

(assert (=> d!11983 m!20203))

(assert (=> d!11983 m!20375))

(assert (=> d!11983 m!20375))

(declare-fun m!20501 () Bool)

(assert (=> d!11983 m!20501))

(assert (=> d!11983 m!20201))

(assert (=> d!11983 m!20491))

(assert (=> b!17218 m!20203))

(declare-fun m!20503 () Bool)

(assert (=> b!17218 m!20503))

(assert (=> b!17219 m!20201))

(assert (=> b!17219 m!20491))

(assert (=> b!17222 m!20201))

(assert (=> b!17222 m!20491))

(assert (=> b!17225 m!20201))

(assert (=> b!17225 m!20203))

(assert (=> b!17225 m!20375))

(assert (=> b!17225 m!20375))

(declare-fun m!20505 () Bool)

(assert (=> b!17225 m!20505))

(assert (=> b!17225 m!20201))

(assert (=> b!17225 m!20491))

(assert (=> b!17223 m!20201))

(declare-fun m!20507 () Bool)

(assert (=> b!17223 m!20507))

(assert (=> b!17223 m!20507))

(assert (=> b!17223 m!20203))

(declare-fun m!20509 () Bool)

(assert (=> b!17223 m!20509))

(assert (=> b!16916 d!11983))

(declare-fun b!17228 () Bool)

(declare-fun e!9331 () List!325)

(assert (=> b!17228 (= e!9331 Nil!320)))

(declare-fun d!11985 () Bool)

(declare-fun lt!2594 () List!325)

(assert (=> d!11985 (= (size!195 lt!2594) (size!194 (left!656 xs!637)))))

(assert (=> d!11985 (= lt!2594 e!9331)))

(declare-fun c!4447 () Bool)

(assert (=> d!11985 (= c!4447 (is-Empty!22 (left!656 xs!637)))))

(assert (=> d!11985 (= (toList!85 (left!656 xs!637)) lt!2594)))

(declare-fun b!17230 () Bool)

(declare-fun e!9332 () List!325)

(assert (=> b!17230 (= e!9332 (Cons!319 (x!8716 (left!656 xs!637)) Nil!320))))

(declare-fun b!17229 () Bool)

(assert (=> b!17229 (= e!9331 e!9332)))

(declare-fun c!4448 () Bool)

(assert (=> b!17229 (= c!4448 (is-Single!11 (left!656 xs!637)))))

(declare-fun b!17231 () Bool)

(assert (=> b!17231 (= e!9332 (++!10 (toList!85 (left!656 (left!656 xs!637))) (toList!85 (right!659 (left!656 xs!637)))))))

(assert (= (and b!17229 c!4448) b!17230))

(assert (= (and b!17229 (not c!4448)) b!17231))

(assert (= (and d!11985 c!4447) b!17228))

(assert (= (and d!11985 (not c!4447)) b!17229))

(declare-fun m!20511 () Bool)

(assert (=> d!11985 m!20511))

(assert (=> d!11985 m!20153))

(declare-fun m!20513 () Bool)

(assert (=> b!17231 m!20513))

(declare-fun m!20515 () Bool)

(assert (=> b!17231 m!20515))

(assert (=> b!17231 m!20513))

(assert (=> b!17231 m!20515))

(declare-fun m!20517 () Bool)

(assert (=> b!17231 m!20517))

(assert (=> b!16916 d!11985))

(declare-fun b!17232 () Bool)

(declare-fun e!9333 () List!325)

(assert (=> b!17232 (= e!9333 Nil!320)))

(declare-fun d!11987 () Bool)

(declare-fun lt!2595 () List!325)

(assert (=> d!11987 (= (size!195 lt!2595) (size!194 (right!659 xs!637)))))

(assert (=> d!11987 (= lt!2595 e!9333)))

(declare-fun c!4449 () Bool)

(assert (=> d!11987 (= c!4449 (is-Empty!22 (right!659 xs!637)))))

(assert (=> d!11987 (= (toList!85 (right!659 xs!637)) lt!2595)))

(declare-fun b!17234 () Bool)

(declare-fun e!9334 () List!325)

(assert (=> b!17234 (= e!9334 (Cons!319 (x!8716 (right!659 xs!637)) Nil!320))))

(declare-fun b!17233 () Bool)

(assert (=> b!17233 (= e!9333 e!9334)))

(declare-fun c!4450 () Bool)

(assert (=> b!17233 (= c!4450 (is-Single!11 (right!659 xs!637)))))

(declare-fun b!17235 () Bool)

(assert (=> b!17235 (= e!9334 (++!10 (toList!85 (left!656 (right!659 xs!637))) (toList!85 (right!659 (right!659 xs!637)))))))

(assert (= (and b!17233 c!4450) b!17234))

(assert (= (and b!17233 (not c!4450)) b!17235))

(assert (= (and d!11987 c!4449) b!17232))

(assert (= (and d!11987 (not c!4449)) b!17233))

(declare-fun m!20519 () Bool)

(assert (=> d!11987 m!20519))

(declare-fun m!20521 () Bool)

(assert (=> d!11987 m!20521))

(assert (=> b!17235 m!20325))

(assert (=> b!17235 m!20327))

(assert (=> b!17235 m!20325))

(assert (=> b!17235 m!20327))

(declare-fun m!20523 () Bool)

(assert (=> b!17235 m!20523))

(assert (=> b!16916 d!11987))

(declare-fun b!17237 () Bool)

(declare-fun res!7103 () Bool)

(declare-fun e!9335 () Bool)

(assert (=> b!17237 (=> (not res!7103) (not e!9335))))

(assert (=> b!17237 (= res!7103 (not (isEmpty!276 (right!659 lt!2503))))))

(declare-fun b!17239 () Bool)

(assert (=> b!17239 (= e!9335 (concInv!11 (right!659 lt!2503)))))

(declare-fun d!11989 () Bool)

(declare-fun res!7100 () Bool)

(declare-fun e!9336 () Bool)

(assert (=> d!11989 (=> res!7100 e!9336)))

(assert (=> d!11989 (= res!7100 (not (is-CC!11 lt!2503)))))

(assert (=> d!11989 (= (concInv!11 lt!2503) e!9336)))

(declare-fun b!17238 () Bool)

(declare-fun res!7102 () Bool)

(assert (=> b!17238 (=> (not res!7102) (not e!9335))))

(assert (=> b!17238 (= res!7102 (concInv!11 (left!656 lt!2503)))))

(declare-fun b!17236 () Bool)

(assert (=> b!17236 (= e!9336 e!9335)))

(declare-fun res!7101 () Bool)

(assert (=> b!17236 (=> (not res!7101) (not e!9335))))

(assert (=> b!17236 (= res!7101 (not (isEmpty!276 (left!656 lt!2503))))))

(assert (= (and d!11989 (not res!7100)) b!17236))

(assert (= (and b!17236 res!7101) b!17237))

(assert (= (and b!17237 res!7103) b!17238))

(assert (= (and b!17238 res!7102) b!17239))

(declare-fun m!20525 () Bool)

(assert (=> b!17237 m!20525))

(declare-fun m!20527 () Bool)

(assert (=> b!17239 m!20527))

(declare-fun m!20529 () Bool)

(assert (=> b!17238 m!20529))

(declare-fun m!20531 () Bool)

(assert (=> b!17236 m!20531))

(assert (=> d!11895 d!11989))

(assert (=> d!11895 d!11929))

(declare-fun b!17240 () Bool)

(declare-fun e!9337 () List!325)

(assert (=> b!17240 (= e!9337 Nil!320)))

(declare-fun d!11991 () Bool)

(declare-fun lt!2596 () List!325)

(assert (=> d!11991 (= (size!195 lt!2596) (size!194 (_2!54 res!5666)))))

(assert (=> d!11991 (= lt!2596 e!9337)))

(declare-fun c!4451 () Bool)

(assert (=> d!11991 (= c!4451 (is-Empty!22 (_2!54 res!5666)))))

(assert (=> d!11991 (= (toList!85 (_2!54 res!5666)) lt!2596)))

(declare-fun b!17242 () Bool)

(declare-fun e!9338 () List!325)

(assert (=> b!17242 (= e!9338 (Cons!319 (x!8716 (_2!54 res!5666)) Nil!320))))

(declare-fun b!17241 () Bool)

(assert (=> b!17241 (= e!9337 e!9338)))

(declare-fun c!4452 () Bool)

(assert (=> b!17241 (= c!4452 (is-Single!11 (_2!54 res!5666)))))

(declare-fun b!17243 () Bool)

(assert (=> b!17243 (= e!9338 (++!10 (toList!85 (left!656 (_2!54 res!5666))) (toList!85 (right!659 (_2!54 res!5666)))))))

(assert (= (and b!17241 c!4452) b!17242))

(assert (= (and b!17241 (not c!4452)) b!17243))

(assert (= (and d!11991 c!4451) b!17240))

(assert (= (and d!11991 (not c!4451)) b!17241))

(declare-fun m!20533 () Bool)

(assert (=> d!11991 m!20533))

(declare-fun m!20535 () Bool)

(assert (=> d!11991 m!20535))

(declare-fun m!20537 () Bool)

(assert (=> b!17243 m!20537))

(declare-fun m!20539 () Bool)

(assert (=> b!17243 m!20539))

(assert (=> b!17243 m!20537))

(assert (=> b!17243 m!20539))

(declare-fun m!20541 () Bool)

(assert (=> b!17243 m!20541))

(assert (=> b!16943 d!11991))

(declare-fun b!17262 () Bool)

(declare-fun e!9350 () Int)

(declare-fun e!9353 () Int)

(assert (=> b!17262 (= e!9350 e!9353)))

(declare-fun c!4462 () Bool)

(declare-fun lt!2602 () Int)

(assert (=> b!17262 (= c!4462 (>= n!315 lt!2602))))

(declare-fun b!17263 () Bool)

(declare-fun e!9352 () List!325)

(assert (=> b!17263 (= e!9352 (Cons!319 (h!233 (toList!85 xs!637)) (t!4299 (toList!85 xs!637))))))

(declare-fun b!17264 () Bool)

(assert (=> b!17264 (= e!9352 (drop!8 (t!4299 (toList!85 xs!637)) (- n!315 1)))))

(declare-fun b!17265 () Bool)

(declare-fun e!9351 () List!325)

(assert (=> b!17265 (= e!9351 e!9352)))

(declare-fun c!4463 () Bool)

(assert (=> b!17265 (= c!4463 (<= n!315 0))))

(declare-fun b!17266 () Bool)

(assert (=> b!17266 (= e!9353 (- (size!195 (toList!85 xs!637)) n!315))))

(declare-fun b!17267 () Bool)

(assert (=> b!17267 (= e!9351 Nil!320)))

(declare-fun b!17268 () Bool)

(assert (=> b!17268 (= e!9350 lt!2602)))

(declare-fun b!17269 () Bool)

(declare-fun e!9349 () Bool)

(declare-fun lt!2601 () List!325)

(assert (=> b!17269 (= e!9349 (= (size!195 lt!2601) e!9350))))

(declare-fun c!4461 () Bool)

(assert (=> b!17269 (= c!4461 (<= n!315 0))))

(assert (=> b!17269 (= lt!2602 (size!195 (toList!85 xs!637)))))

(declare-fun b!17270 () Bool)

(assert (=> b!17270 (= e!9353 0)))

(declare-fun d!11993 () Bool)

(assert (=> d!11993 e!9349))

(declare-fun res!7110 () Bool)

(assert (=> d!11993 (=> (not res!7110) (not e!9349))))

(assert (=> d!11993 (= res!7110 (subset (content!55 lt!2601) (content!55 (toList!85 xs!637))))))

(assert (=> d!11993 (= lt!2601 e!9351)))

(declare-fun c!4464 () Bool)

(assert (=> d!11993 (= c!4464 (is-Nil!320 (toList!85 xs!637)))))

(assert (=> d!11993 (= (drop!8 (toList!85 xs!637) n!315) lt!2601)))

(assert (= (and b!17265 c!4463) b!17263))

(assert (= (and b!17265 (not c!4463)) b!17264))

(assert (= (and d!11993 c!4464) b!17267))

(assert (= (and d!11993 (not c!4464)) b!17265))

(assert (= (and d!11993 res!7110) b!17269))

(assert (= (and b!17262 c!4462) b!17270))

(assert (= (and b!17262 (not c!4462)) b!17266))

(assert (= (and b!17269 c!4461) b!17268))

(assert (= (and b!17269 (not c!4461)) b!17262))

(declare-fun m!20543 () Bool)

(assert (=> b!17264 m!20543))

(assert (=> b!17266 m!20225))

(assert (=> b!17266 m!20365))

(declare-fun m!20545 () Bool)

(assert (=> b!17269 m!20545))

(assert (=> b!17269 m!20225))

(assert (=> b!17269 m!20365))

(declare-fun m!20547 () Bool)

(assert (=> d!11993 m!20547))

(assert (=> d!11993 m!20225))

(assert (=> d!11993 m!20363))

(assert (=> b!16943 d!11993))

(assert (=> b!16943 d!11955))

(declare-fun b!17274 () Bool)

(declare-fun e!9355 () Bool)

(assert (=> b!17274 (= e!9355 (balanced!12 (right!659 lt!2533)))))

(declare-fun b!17273 () Bool)

(declare-fun res!7114 () Bool)

(assert (=> b!17273 (=> (not res!7114) (not e!9355))))

(assert (=> b!17273 (= res!7114 (balanced!12 (left!656 lt!2533)))))

(declare-fun b!17272 () Bool)

(declare-fun res!7113 () Bool)

(assert (=> b!17272 (=> (not res!7113) (not e!9355))))

(assert (=> b!17272 (= res!7113 (<= (- (level!11 (left!656 lt!2533)) (level!11 (right!659 lt!2533))) 1))))

(declare-fun d!11995 () Bool)

(declare-fun res!7111 () Bool)

(declare-fun e!9354 () Bool)

(assert (=> d!11995 (=> res!7111 e!9354)))

(assert (=> d!11995 (= res!7111 (not (is-CC!11 lt!2533)))))

(assert (=> d!11995 (= (balanced!12 lt!2533) e!9354)))

(declare-fun b!17271 () Bool)

(assert (=> b!17271 (= e!9354 e!9355)))

(declare-fun res!7112 () Bool)

(assert (=> b!17271 (=> (not res!7112) (not e!9355))))

(assert (=> b!17271 (= res!7112 (>= (- (level!11 (left!656 lt!2533)) (level!11 (right!659 lt!2533))) (- 1)))))

(assert (= (and d!11995 (not res!7111)) b!17271))

(assert (= (and b!17271 res!7112) b!17272))

(assert (= (and b!17272 res!7113) b!17273))

(assert (= (and b!17273 res!7114) b!17274))

(declare-fun m!20549 () Bool)

(assert (=> b!17274 m!20549))

(declare-fun m!20551 () Bool)

(assert (=> b!17273 m!20551))

(declare-fun m!20553 () Bool)

(assert (=> b!17272 m!20553))

(declare-fun m!20555 () Bool)

(assert (=> b!17272 m!20555))

(assert (=> b!17271 m!20553))

(assert (=> b!17271 m!20555))

(assert (=> b!17001 d!11995))

(assert (=> b!17010 d!11971))

(assert (=> b!17010 d!11973))

(declare-fun d!11997 () Bool)

(declare-fun lt!2603 () Int)

(assert (=> d!11997 (>= lt!2603 0)))

(declare-fun e!9357 () Int)

(assert (=> d!11997 (= lt!2603 e!9357)))

(declare-fun c!4466 () Bool)

(assert (=> d!11997 (= c!4466 (is-Empty!22 (left!656 (left!656 xs!637))))))

(assert (=> d!11997 (= (size!194 (left!656 (left!656 xs!637))) lt!2603)))

(declare-fun b!17278 () Bool)

(declare-fun e!9356 () Int)

(assert (=> b!17278 (= e!9356 (+ (size!194 (left!656 (left!656 (left!656 xs!637)))) (size!194 (right!659 (left!656 (left!656 xs!637))))))))

(declare-fun b!17277 () Bool)

(assert (=> b!17277 (= e!9356 1)))

(declare-fun b!17276 () Bool)

(assert (=> b!17276 (= e!9357 e!9356)))

(declare-fun c!4465 () Bool)

(assert (=> b!17276 (= c!4465 (is-Single!11 (left!656 (left!656 xs!637))))))

(declare-fun b!17275 () Bool)

(assert (=> b!17275 (= e!9357 0)))

(assert (= (and b!17276 c!4465) b!17277))

(assert (= (and b!17276 (not c!4465)) b!17278))

(assert (= (and d!11997 c!4466) b!17275))

(assert (= (and d!11997 (not c!4466)) b!17276))

(declare-fun m!20557 () Bool)

(assert (=> b!17278 m!20557))

(declare-fun m!20559 () Bool)

(assert (=> b!17278 m!20559))

(assert (=> b!16913 d!11997))

(declare-fun d!11999 () Bool)

(declare-fun lt!2604 () Int)

(assert (=> d!11999 (>= lt!2604 0)))

(declare-fun e!9359 () Int)

(assert (=> d!11999 (= lt!2604 e!9359)))

(declare-fun c!4468 () Bool)

(assert (=> d!11999 (= c!4468 (is-Empty!22 (right!659 (left!656 xs!637))))))

(assert (=> d!11999 (= (size!194 (right!659 (left!656 xs!637))) lt!2604)))

(declare-fun b!17282 () Bool)

(declare-fun e!9358 () Int)

(assert (=> b!17282 (= e!9358 (+ (size!194 (left!656 (right!659 (left!656 xs!637)))) (size!194 (right!659 (right!659 (left!656 xs!637))))))))

(declare-fun b!17281 () Bool)

(assert (=> b!17281 (= e!9358 1)))

(declare-fun b!17280 () Bool)

(assert (=> b!17280 (= e!9359 e!9358)))

(declare-fun c!4467 () Bool)

(assert (=> b!17280 (= c!4467 (is-Single!11 (right!659 (left!656 xs!637))))))

(declare-fun b!17279 () Bool)

(assert (=> b!17279 (= e!9359 0)))

(assert (= (and b!17280 c!4467) b!17281))

(assert (= (and b!17280 (not c!4467)) b!17282))

(assert (= (and d!11999 c!4468) b!17279))

(assert (= (and d!11999 (not c!4468)) b!17280))

(declare-fun m!20561 () Bool)

(assert (=> b!17282 m!20561))

(declare-fun m!20563 () Bool)

(assert (=> b!17282 m!20563))

(assert (=> b!16913 d!11999))

(declare-fun b!17284 () Bool)

(declare-fun res!7118 () Bool)

(declare-fun e!9360 () Bool)

(assert (=> b!17284 (=> (not res!7118) (not e!9360))))

(assert (=> b!17284 (= res!7118 (not (isEmpty!276 (right!659 (left!656 (_2!54 res!5666))))))))

(declare-fun b!17286 () Bool)

(assert (=> b!17286 (= e!9360 (concInv!11 (right!659 (left!656 (_2!54 res!5666)))))))

(declare-fun d!12001 () Bool)

(declare-fun res!7115 () Bool)

(declare-fun e!9361 () Bool)

(assert (=> d!12001 (=> res!7115 e!9361)))

(assert (=> d!12001 (= res!7115 (not (is-CC!11 (left!656 (_2!54 res!5666)))))))

(assert (=> d!12001 (= (concInv!11 (left!656 (_2!54 res!5666))) e!9361)))

(declare-fun b!17285 () Bool)

(declare-fun res!7117 () Bool)

(assert (=> b!17285 (=> (not res!7117) (not e!9360))))

(assert (=> b!17285 (= res!7117 (concInv!11 (left!656 (left!656 (_2!54 res!5666)))))))

(declare-fun b!17283 () Bool)

(assert (=> b!17283 (= e!9361 e!9360)))

(declare-fun res!7116 () Bool)

(assert (=> b!17283 (=> (not res!7116) (not e!9360))))

(assert (=> b!17283 (= res!7116 (not (isEmpty!276 (left!656 (left!656 (_2!54 res!5666))))))))

(assert (= (and d!12001 (not res!7115)) b!17283))

(assert (= (and b!17283 res!7116) b!17284))

(assert (= (and b!17284 res!7118) b!17285))

(assert (= (and b!17285 res!7117) b!17286))

(declare-fun m!20565 () Bool)

(assert (=> b!17284 m!20565))

(declare-fun m!20567 () Bool)

(assert (=> b!17286 m!20567))

(declare-fun m!20569 () Bool)

(assert (=> b!17285 m!20569))

(declare-fun m!20571 () Bool)

(assert (=> b!17283 m!20571))

(assert (=> b!17016 d!12001))

(declare-fun b!17290 () Bool)

(declare-fun e!9363 () Bool)

(assert (=> b!17290 (= e!9363 (balanced!12 (right!659 (left!656 (_1!54 res!5666)))))))

(declare-fun b!17289 () Bool)

(declare-fun res!7122 () Bool)

(assert (=> b!17289 (=> (not res!7122) (not e!9363))))

(assert (=> b!17289 (= res!7122 (balanced!12 (left!656 (left!656 (_1!54 res!5666)))))))

(declare-fun b!17288 () Bool)

(declare-fun res!7121 () Bool)

(assert (=> b!17288 (=> (not res!7121) (not e!9363))))

(assert (=> b!17288 (= res!7121 (<= (- (level!11 (left!656 (left!656 (_1!54 res!5666)))) (level!11 (right!659 (left!656 (_1!54 res!5666))))) 1))))

(declare-fun d!12003 () Bool)

(declare-fun res!7119 () Bool)

(declare-fun e!9362 () Bool)

(assert (=> d!12003 (=> res!7119 e!9362)))

(assert (=> d!12003 (= res!7119 (not (is-CC!11 (left!656 (_1!54 res!5666)))))))

(assert (=> d!12003 (= (balanced!12 (left!656 (_1!54 res!5666))) e!9362)))

(declare-fun b!17287 () Bool)

(assert (=> b!17287 (= e!9362 e!9363)))

(declare-fun res!7120 () Bool)

(assert (=> b!17287 (=> (not res!7120) (not e!9363))))

(assert (=> b!17287 (= res!7120 (>= (- (level!11 (left!656 (left!656 (_1!54 res!5666)))) (level!11 (right!659 (left!656 (_1!54 res!5666))))) (- 1)))))

(assert (= (and d!12003 (not res!7119)) b!17287))

(assert (= (and b!17287 res!7120) b!17288))

(assert (= (and b!17288 res!7121) b!17289))

(assert (= (and b!17289 res!7122) b!17290))

(declare-fun m!20573 () Bool)

(assert (=> b!17290 m!20573))

(declare-fun m!20575 () Bool)

(assert (=> b!17289 m!20575))

(assert (=> b!17288 m!20323))

(assert (=> b!17288 m!20321))

(assert (=> b!17287 m!20323))

(assert (=> b!17287 m!20321))

(assert (=> b!16939 d!12003))

(declare-fun b!17333 () Bool)

(declare-fun e!9383 () Int)

(declare-fun lt!2647 () Conc!12)

(assert (=> b!17333 (= e!9383 (level!11 lt!2647))))

(declare-fun lt!2648 () Int)

(declare-fun lt!2652 () Bool)

(declare-fun lt!2641 () Int)

(declare-fun lt!2637 () Int)

(declare-fun b!17334 () Bool)

(declare-fun e!9384 () Conc!12)

(declare-fun lt!2639 () Int)

(assert (=> b!17334 (= e!9384 (ite lt!2652 (let ((res!7126 lt!2647)) (ite (>= lt!2641 lt!2639) (CC!11 (left!656 (left!656 xs!637)) res!7126) (ite (= lt!2637 (- lt!2648 3)) (CC!11 (left!656 (left!656 xs!637)) (CC!11 (left!656 (right!659 (left!656 xs!637))) res!7126)) (CC!11 (CC!11 (left!656 (left!656 xs!637)) (left!656 (right!659 (left!656 xs!637)))) res!7126)))) (let ((res!7129 lt!2647)) (ite (>= lt!2641 lt!2639) (CC!11 res!7129 (right!659 rl!34)) (ite (= lt!2637 (- lt!2648 3)) (CC!11 (CC!11 res!7129 (right!659 (left!656 rl!34))) (right!659 rl!34)) (CC!11 res!7129 (CC!11 (right!659 (left!656 rl!34)) (right!659 rl!34))))))))))

(declare-fun e!9382 () Int)

(assert (=> b!17334 (= lt!2648 e!9382)))

(declare-fun c!4477 () Bool)

(declare-fun lt!2651 () Bool)

(assert (=> b!17334 (= c!4477 (or lt!2651 (and (not lt!2652) (not (>= lt!2641 lt!2639)))))))

(assert (=> b!17334 (= lt!2651 (and lt!2652 (not (>= lt!2641 lt!2639))))))

(assert (=> b!17334 (= lt!2637 e!9383)))

(declare-fun c!4480 () Bool)

(assert (=> b!17334 (= c!4480 (or (and lt!2652 (not (>= lt!2641 lt!2639))) (and (not lt!2652) (not (>= lt!2641 lt!2639)))))))

(declare-fun e!9389 () Conc!12)

(assert (=> b!17334 (= lt!2647 e!9389)))

(declare-fun c!4479 () Bool)

(declare-fun lt!2644 () Bool)

(assert (=> b!17334 (= c!4479 (or lt!2644 (not lt!2652)))))

(assert (=> b!17334 (= lt!2644 lt!2652)))

(assert (=> b!17334 (= lt!2639 (level!11 (ite lt!2652 (right!659 (left!656 xs!637)) (left!656 rl!34))))))

(assert (=> b!17334 (= lt!2641 (level!11 (ite lt!2652 (left!656 (left!656 xs!637)) (right!659 rl!34))))))

(declare-fun lt!2643 () Int)

(assert (=> b!17334 (= lt!2652 (< lt!2643 (- 1)))))

(declare-fun b!17335 () Bool)

(declare-fun e!9388 () Bool)

(declare-fun e!9387 () Bool)

(assert (=> b!17335 (= e!9388 e!9387)))

(declare-fun res!7179 () Bool)

(assert (=> b!17335 (=> (not res!7179) (not e!9387))))

(declare-fun lt!2640 () Int)

(declare-fun lt!2645 () Int)

(declare-fun lt!2638 () Int)

(assert (=> b!17335 (= res!7179 (<= lt!2640 (+ (ite (>= lt!2645 lt!2638) lt!2645 lt!2638) 1)))))

(assert (=> b!17335 (= lt!2638 (level!11 rl!34))))

(assert (=> b!17335 (= lt!2645 (level!11 (left!656 xs!637)))))

(declare-fun lt!2642 () Conc!12)

(assert (=> b!17335 (= lt!2640 (level!11 lt!2642))))

(declare-fun b!17336 () Bool)

(declare-fun res!7184 () Bool)

(assert (=> b!17336 (=> (not res!7184) (not e!9387))))

(assert (=> b!17336 (= res!7184 (concInv!11 lt!2642))))

(declare-fun b!17337 () Bool)

(declare-fun res!7185 () Bool)

(declare-fun e!9386 () Bool)

(assert (=> b!17337 (=> (not res!7185) (not e!9386))))

(assert (=> b!17337 (= res!7185 (balanced!12 rl!34))))

(declare-fun b!17338 () Bool)

(declare-fun res!7188 () Int)

(assert (=> b!17338 (= e!9382 res!7188)))

(assert (=> b!17338 true))

(assert (=> b!17338 true))

(declare-fun b!17339 () Bool)

(declare-fun e!9390 () Bool)

(assert (=> b!17339 (= e!9390 (balanced!12 (left!656 xs!637)))))

(declare-fun b!17340 () Bool)

(declare-fun res!7183 () Bool)

(assert (=> b!17340 (=> (not res!7183) (not e!9386))))

(assert (=> b!17340 (= res!7183 (not (isEmpty!276 (left!656 xs!637))))))

(declare-fun b!17341 () Bool)

(declare-fun res!7186 () Conc!12)

(assert (=> b!17341 (= e!9389 res!7186)))

(assert (=> b!17341 true))

(declare-fun e!9385 () Bool)

(assert (=> b!17341 e!9385))

(declare-fun d!12005 () Bool)

(assert (=> d!12005 e!9388))

(declare-fun res!7181 () Bool)

(assert (=> d!12005 (=> (not res!7181) (not e!9388))))

(assert (=> d!12005 (= res!7181 (is-CC!11 lt!2642))))

(assert (=> d!12005 (= lt!2642 e!9384)))

(declare-fun c!4478 () Bool)

(assert (=> d!12005 (= c!4478 (and (>= lt!2643 (- 1)) (<= lt!2643 1)))))

(assert (=> d!12005 (= lt!2643 (- (level!11 rl!34) (level!11 (left!656 xs!637))))))

(assert (=> d!12005 e!9386))

(declare-fun res!7187 () Bool)

(assert (=> d!12005 (=> (not res!7187) (not e!9386))))

(assert (=> d!12005 (= res!7187 e!9390)))

(declare-fun res!7177 () Bool)

(assert (=> d!12005 (=> (not res!7177) (not e!9390))))

(assert (=> d!12005 (= res!7177 (concInv!11 (left!656 xs!637)))))

(assert (=> d!12005 (= (concatNonEmpty!4 (left!656 xs!637) rl!34) lt!2642)))

(declare-fun b!17342 () Bool)

(assert (=> b!17342 (= e!9389 (concatNonEmpty!4 (ite lt!2644 (ite (>= lt!2641 lt!2639) (right!659 (left!656 xs!637)) (right!659 (right!659 (left!656 xs!637)))) (left!656 xs!637)) (ite lt!2644 rl!34 (ite (>= lt!2641 lt!2639) (left!656 rl!34) (left!656 (left!656 rl!34))))))))

(declare-fun b!17343 () Bool)

(declare-fun res!7180 () Bool)

(assert (=> b!17343 (=> (not res!7180) (not e!9387))))

(assert (=> b!17343 (= res!7180 (balanced!12 lt!2642))))

(declare-fun b!17344 () Bool)

(assert (=> b!17344 (= e!9385 tp_is_empty!59)))

(declare-fun b!17345 () Bool)

(assert (=> b!17345 (= e!9387 (concatCorrectness!2 lt!2642 (left!656 xs!637) rl!34))))

(declare-fun b!17346 () Bool)

(declare-fun res!7182 () Int)

(assert (=> b!17346 (= e!9383 res!7182)))

(assert (=> b!17346 true))

(declare-fun b!17347 () Bool)

(assert (=> b!17347 (= e!9386 (not (isEmpty!276 rl!34)))))

(declare-fun b!17348 () Bool)

(assert (=> b!17348 (= e!9382 (level!11 (ite lt!2651 (left!656 xs!637) rl!34)))))

(declare-fun b!17349 () Bool)

(declare-fun tp!4059 () Bool)

(declare-fun tp!4060 () Bool)

(assert (=> b!17349 (= e!9385 (and tp!4059 tp!4060))))

(declare-fun b!17350 () Bool)

(declare-fun res!7190 () Bool)

(assert (=> b!17350 (=> (not res!7190) (not e!9387))))

(declare-fun lt!2650 () Int)

(declare-fun lt!2649 () Int)

(declare-fun lt!2646 () Int)

(assert (=> b!17350 (= res!7190 (>= lt!2649 (ite (>= lt!2646 lt!2650) lt!2646 lt!2650)))))

(assert (=> b!17350 (= lt!2650 (level!11 rl!34))))

(assert (=> b!17350 (= lt!2646 (level!11 (left!656 xs!637)))))

(assert (=> b!17350 (= lt!2649 (level!11 lt!2642))))

(declare-fun b!17351 () Bool)

(assert (=> b!17351 (= e!9384 (CC!11 (left!656 xs!637) rl!34))))

(declare-fun b!17352 () Bool)

(declare-fun res!7178 () Bool)

(assert (=> b!17352 (=> (not res!7178) (not e!9387))))

(declare-fun appendAssocInst!4 (Conc!12 Conc!12) Bool)

(assert (=> b!17352 (= res!7178 (appendAssocInst!4 (left!656 xs!637) rl!34))))

(declare-fun b!17353 () Bool)

(declare-fun res!7189 () Bool)

(assert (=> b!17353 (=> (not res!7189) (not e!9386))))

(assert (=> b!17353 (= res!7189 (concInv!11 rl!34))))

(assert (= (and d!12005 res!7177) b!17339))

(assert (= (and d!12005 res!7187) b!17353))

(assert (= (and b!17353 res!7189) b!17337))

(assert (= (and b!17337 res!7185) b!17340))

(assert (= (and b!17340 res!7183) b!17347))

(assert (= (and b!17341 (is-CC!11 res!7186)) b!17349))

(assert (= (and b!17341 (is-Single!11 res!7186)) b!17344))

(assert (= (and b!17334 c!4479) b!17342))

(assert (= (and b!17334 (not c!4479)) b!17341))

(assert (= (and b!17334 c!4480) b!17333))

(assert (= (and b!17334 (not c!4480)) b!17346))

(assert (= (and b!17334 c!4477) b!17348))

(assert (= (and b!17334 (not c!4477)) b!17338))

(assert (= (and d!12005 c!4478) b!17351))

(assert (= (and d!12005 (not c!4478)) b!17334))

(assert (= (and d!12005 res!7181) b!17335))

(assert (= (and b!17335 res!7179) b!17350))

(assert (= (and b!17350 res!7190) b!17336))

(assert (= (and b!17336 res!7184) b!17343))

(assert (= (and b!17343 res!7180) b!17352))

(assert (= (and b!17352 res!7178) b!17345))

(declare-fun m!20577 () Bool)

(assert (=> b!17343 m!20577))

(assert (=> b!17339 m!20183))

(assert (=> b!17337 m!20195))

(declare-fun m!20579 () Bool)

(assert (=> b!17347 m!20579))

(declare-fun m!20581 () Bool)

(assert (=> b!17342 m!20581))

(assert (=> b!17340 m!20237))

(declare-fun m!20583 () Bool)

(assert (=> b!17352 m!20583))

(declare-fun m!20585 () Bool)

(assert (=> b!17333 m!20585))

(assert (=> b!17353 m!20185))

(declare-fun m!20587 () Bool)

(assert (=> b!17334 m!20587))

(declare-fun m!20589 () Bool)

(assert (=> b!17334 m!20589))

(assert (=> d!12005 m!20175))

(assert (=> d!12005 m!20177))

(assert (=> d!12005 m!20189))

(declare-fun m!20591 () Bool)

(assert (=> b!17345 m!20591))

(assert (=> b!17350 m!20175))

(assert (=> b!17350 m!20177))

(declare-fun m!20593 () Bool)

(assert (=> b!17350 m!20593))

(assert (=> b!17335 m!20175))

(assert (=> b!17335 m!20177))

(assert (=> b!17335 m!20593))

(declare-fun m!20595 () Bool)

(assert (=> b!17336 m!20595))

(declare-fun m!20597 () Bool)

(assert (=> b!17348 m!20597))

(assert (=> b!16892 d!12005))

(declare-fun b!17355 () Bool)

(declare-fun res!7194 () Bool)

(declare-fun e!9391 () Bool)

(assert (=> b!17355 (=> (not res!7194) (not e!9391))))

(assert (=> b!17355 (= res!7194 (not (isEmpty!276 (right!659 lt!2534))))))

(declare-fun b!17357 () Bool)

(assert (=> b!17357 (= e!9391 (concInv!11 (right!659 lt!2534)))))

(declare-fun d!12007 () Bool)

(declare-fun res!7191 () Bool)

(declare-fun e!9392 () Bool)

(assert (=> d!12007 (=> res!7191 e!9392)))

(assert (=> d!12007 (= res!7191 (not (is-CC!11 lt!2534)))))

(assert (=> d!12007 (= (concInv!11 lt!2534) e!9392)))

(declare-fun b!17356 () Bool)

(declare-fun res!7193 () Bool)

(assert (=> b!17356 (=> (not res!7193) (not e!9391))))

(assert (=> b!17356 (= res!7193 (concInv!11 (left!656 lt!2534)))))

(declare-fun b!17354 () Bool)

(assert (=> b!17354 (= e!9392 e!9391)))

(declare-fun res!7192 () Bool)

(assert (=> b!17354 (=> (not res!7192) (not e!9391))))

(assert (=> b!17354 (= res!7192 (not (isEmpty!276 (left!656 lt!2534))))))

(assert (= (and d!12007 (not res!7191)) b!17354))

(assert (= (and b!17354 res!7192) b!17355))

(assert (= (and b!17355 res!7194) b!17356))

(assert (= (and b!17356 res!7193) b!17357))

(declare-fun m!20599 () Bool)

(assert (=> b!17355 m!20599))

(declare-fun m!20601 () Bool)

(assert (=> b!17357 m!20601))

(declare-fun m!20603 () Bool)

(assert (=> b!17356 m!20603))

(declare-fun m!20605 () Bool)

(assert (=> b!17354 m!20605))

(assert (=> d!11915 d!12007))

(assert (=> d!11915 d!11927))

(declare-fun d!12009 () Bool)

(assert (=> d!12009 (= (isEmpty!276 (left!656 xs!637)) (= (left!656 xs!637) Empty!22))))

(assert (=> b!16952 d!12009))

(assert (=> b!16898 d!11941))

(assert (=> b!16898 d!11943))

(assert (=> b!16898 d!11945))

(declare-fun d!12011 () Bool)

(assert (=> d!12011 (= (concatCorrectness!2 lt!2503 (left!656 xs!637) rl!34) (= (toList!85 lt!2503) (++!10 (toList!85 (left!656 xs!637)) (toList!85 rl!34))))))

(declare-fun bs!5027 () Bool)

(assert (= bs!5027 d!12011))

(declare-fun m!20607 () Bool)

(assert (=> bs!5027 m!20607))

(assert (=> bs!5027 m!20201))

(assert (=> bs!5027 m!20201))

(declare-fun m!20609 () Bool)

(assert (=> bs!5027 m!20609))

(declare-fun m!20611 () Bool)

(assert (=> bs!5027 m!20611))

(assert (=> bs!5027 m!20609))

(assert (=> b!16895 d!12011))

(declare-fun d!12013 () Bool)

(assert (=> d!12013 (= (isEmpty!276 (left!656 (_2!54 res!5666))) (= (left!656 (_2!54 res!5666)) Empty!22))))

(assert (=> b!17014 d!12013))

(declare-fun b!17359 () Bool)

(declare-fun res!7199 () Bool)

(declare-fun e!9393 () Bool)

(assert (=> b!17359 (=> (not res!7199) (not e!9393))))

(assert (=> b!17359 (= res!7199 (not (isEmpty!276 (right!659 (right!659 (_1!54 res!5666))))))))

(declare-fun b!17361 () Bool)

(assert (=> b!17361 (= e!9393 (concInv!11 (right!659 (right!659 (_1!54 res!5666)))))))

(declare-fun d!12015 () Bool)

(declare-fun res!7196 () Bool)

(declare-fun e!9394 () Bool)

(assert (=> d!12015 (=> res!7196 e!9394)))

(assert (=> d!12015 (= res!7196 (not (is-CC!11 (right!659 (_1!54 res!5666)))))))

(assert (=> d!12015 (= (concInv!11 (right!659 (_1!54 res!5666))) e!9394)))

(declare-fun b!17360 () Bool)

(declare-fun res!7198 () Bool)

(assert (=> b!17360 (=> (not res!7198) (not e!9393))))

(assert (=> b!17360 (= res!7198 (concInv!11 (left!656 (right!659 (_1!54 res!5666)))))))

(declare-fun b!17358 () Bool)

(assert (=> b!17358 (= e!9394 e!9393)))

(declare-fun res!7197 () Bool)

(assert (=> b!17358 (=> (not res!7197) (not e!9393))))

(assert (=> b!17358 (= res!7197 (not (isEmpty!276 (left!656 (right!659 (_1!54 res!5666))))))))

(assert (= (and d!12015 (not res!7196)) b!17358))

(assert (= (and b!17358 res!7197) b!17359))

(assert (= (and b!17359 res!7199) b!17360))

(assert (= (and b!17360 res!7198) b!17361))

(declare-fun m!20613 () Bool)

(assert (=> b!17359 m!20613))

(declare-fun m!20615 () Bool)

(assert (=> b!17361 m!20615))

(declare-fun m!20617 () Bool)

(assert (=> b!17360 m!20617))

(declare-fun m!20619 () Bool)

(assert (=> b!17358 m!20619))

(assert (=> b!17009 d!12015))

(assert (=> b!16936 d!11973))

(assert (=> b!16936 d!11971))

(declare-fun b!17365 () Bool)

(declare-fun e!9396 () Bool)

(assert (=> b!17365 (= e!9396 (balanced!12 (right!659 (right!659 (_2!54 res!5666)))))))

(declare-fun b!17364 () Bool)

(declare-fun res!7203 () Bool)

(assert (=> b!17364 (=> (not res!7203) (not e!9396))))

(assert (=> b!17364 (= res!7203 (balanced!12 (left!656 (right!659 (_2!54 res!5666)))))))

(declare-fun b!17363 () Bool)

(declare-fun res!7202 () Bool)

(assert (=> b!17363 (=> (not res!7202) (not e!9396))))

(assert (=> b!17363 (= res!7202 (<= (- (level!11 (left!656 (right!659 (_2!54 res!5666)))) (level!11 (right!659 (right!659 (_2!54 res!5666))))) 1))))

(declare-fun d!12017 () Bool)

(declare-fun res!7200 () Bool)

(declare-fun e!9395 () Bool)

(assert (=> d!12017 (=> res!7200 e!9395)))

(assert (=> d!12017 (= res!7200 (not (is-CC!11 (right!659 (_2!54 res!5666)))))))

(assert (=> d!12017 (= (balanced!12 (right!659 (_2!54 res!5666))) e!9395)))

(declare-fun b!17362 () Bool)

(assert (=> b!17362 (= e!9395 e!9396)))

(declare-fun res!7201 () Bool)

(assert (=> b!17362 (=> (not res!7201) (not e!9396))))

(assert (=> b!17362 (= res!7201 (>= (- (level!11 (left!656 (right!659 (_2!54 res!5666)))) (level!11 (right!659 (right!659 (_2!54 res!5666))))) (- 1)))))

(assert (= (and d!12017 (not res!7200)) b!17362))

(assert (= (and b!17362 res!7201) b!17363))

(assert (= (and b!17363 res!7202) b!17364))

(assert (= (and b!17364 res!7203) b!17365))

(declare-fun m!20621 () Bool)

(assert (=> b!17365 m!20621))

(declare-fun m!20623 () Bool)

(assert (=> b!17364 m!20623))

(assert (=> b!17363 m!20477))

(assert (=> b!17363 m!20475))

(assert (=> b!17362 m!20477))

(assert (=> b!17362 m!20475))

(assert (=> b!17013 d!12017))

(declare-fun b!17369 () Bool)

(declare-fun e!9398 () Bool)

(assert (=> b!17369 (= e!9398 (balanced!12 (right!659 lt!2503)))))

(declare-fun b!17368 () Bool)

(declare-fun res!7207 () Bool)

(assert (=> b!17368 (=> (not res!7207) (not e!9398))))

(assert (=> b!17368 (= res!7207 (balanced!12 (left!656 lt!2503)))))

(declare-fun b!17367 () Bool)

(declare-fun res!7206 () Bool)

(assert (=> b!17367 (=> (not res!7206) (not e!9398))))

(assert (=> b!17367 (= res!7206 (<= (- (level!11 (left!656 lt!2503)) (level!11 (right!659 lt!2503))) 1))))

(declare-fun d!12019 () Bool)

(declare-fun res!7204 () Bool)

(declare-fun e!9397 () Bool)

(assert (=> d!12019 (=> res!7204 e!9397)))

(assert (=> d!12019 (= res!7204 (not (is-CC!11 lt!2503)))))

(assert (=> d!12019 (= (balanced!12 lt!2503) e!9397)))

(declare-fun b!17366 () Bool)

(assert (=> b!17366 (= e!9397 e!9398)))

(declare-fun res!7205 () Bool)

(assert (=> b!17366 (=> (not res!7205) (not e!9398))))

(assert (=> b!17366 (= res!7205 (>= (- (level!11 (left!656 lt!2503)) (level!11 (right!659 lt!2503))) (- 1)))))

(assert (= (and d!12019 (not res!7204)) b!17366))

(assert (= (and b!17366 res!7205) b!17367))

(assert (= (and b!17367 res!7206) b!17368))

(assert (= (and b!17368 res!7207) b!17369))

(declare-fun m!20625 () Bool)

(assert (=> b!17369 m!20625))

(declare-fun m!20627 () Bool)

(assert (=> b!17368 m!20627))

(assert (=> b!17367 m!20337))

(assert (=> b!17367 m!20335))

(assert (=> b!17366 m!20337))

(assert (=> b!17366 m!20335))

(assert (=> b!16901 d!12019))

(declare-fun d!12021 () Bool)

(declare-fun res!7208 () Bool)

(declare-fun e!9399 () Bool)

(assert (=> d!12021 (=> (not res!7208) (not e!9399))))

(assert (=> d!12021 (= res!7208 (= (toList!85 (_1!54 lt!2535)) (take!10 (toList!85 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))))))

(assert (=> d!12021 (= (splitCorrectness!7 lt!2535 (right!659 xs!637) (- n!315 (size!194 (left!656 xs!637)))) e!9399)))

(declare-fun b!17370 () Bool)

(assert (=> b!17370 (= e!9399 (= (toList!85 (_2!54 lt!2535)) (drop!8 (toList!85 (right!659 xs!637)) (- n!315 (size!194 (left!656 xs!637))))))))

(assert (= (and d!12021 res!7208) b!17370))

(declare-fun m!20629 () Bool)

(assert (=> d!12021 m!20629))

(assert (=> d!12021 m!20203))

(assert (=> d!12021 m!20203))

(declare-fun m!20631 () Bool)

(assert (=> d!12021 m!20631))

(declare-fun m!20633 () Bool)

(assert (=> b!17370 m!20633))

(assert (=> b!17370 m!20203))

(assert (=> b!17370 m!20203))

(declare-fun m!20635 () Bool)

(assert (=> b!17370 m!20635))

(assert (=> b!17002 d!12021))

(assert (=> b!17003 d!11949))

(declare-fun b!17372 () Bool)

(declare-fun e!9400 () Int)

(declare-fun lt!2655 () Int)

(declare-fun lt!2654 () Int)

(assert (=> b!17372 (= e!9400 (+ 1 (ite (>= lt!2655 lt!2654) lt!2655 lt!2654)))))

(assert (=> b!17372 (= lt!2654 (level!11 (right!659 (_1!54 lt!2535))))))

(assert (=> b!17372 (= lt!2655 (level!11 (left!656 (_1!54 lt!2535))))))

(declare-fun d!12023 () Bool)

(declare-fun lt!2653 () Int)

(assert (=> d!12023 (>= lt!2653 0)))

(assert (=> d!12023 (= lt!2653 e!9400)))

(declare-fun c!4481 () Bool)

(assert (=> d!12023 (= c!4481 (or (is-Empty!22 (_1!54 lt!2535)) (is-Single!11 (_1!54 lt!2535))))))

(assert (=> d!12023 (= (level!11 (_1!54 lt!2535)) lt!2653)))

(declare-fun b!17371 () Bool)

(assert (=> b!17371 (= e!9400 0)))

(assert (= (and d!12023 c!4481) b!17371))

(assert (= (and d!12023 (not c!4481)) b!17372))

(declare-fun m!20637 () Bool)

(assert (=> b!17372 m!20637))

(declare-fun m!20639 () Bool)

(assert (=> b!17372 m!20639))

(assert (=> b!17003 d!12023))

(declare-fun b!17376 () Bool)

(declare-fun e!9402 () Bool)

(assert (=> b!17376 (= e!9402 (balanced!12 (right!659 rl!34)))))

(declare-fun b!17375 () Bool)

(declare-fun res!7212 () Bool)

(assert (=> b!17375 (=> (not res!7212) (not e!9402))))

(assert (=> b!17375 (= res!7212 (balanced!12 (left!656 rl!34)))))

(declare-fun b!17374 () Bool)

(declare-fun res!7211 () Bool)

(assert (=> b!17374 (=> (not res!7211) (not e!9402))))

(assert (=> b!17374 (= res!7211 (<= (- (level!11 (left!656 rl!34)) (level!11 (right!659 rl!34))) 1))))

(declare-fun d!12025 () Bool)

(declare-fun res!7209 () Bool)

(declare-fun e!9401 () Bool)

(assert (=> d!12025 (=> res!7209 e!9401)))

(assert (=> d!12025 (= res!7209 (not (is-CC!11 rl!34)))))

(assert (=> d!12025 (= (balanced!12 rl!34) e!9401)))

(declare-fun b!17373 () Bool)

(assert (=> b!17373 (= e!9401 e!9402)))

(declare-fun res!7210 () Bool)

(assert (=> b!17373 (=> (not res!7210) (not e!9402))))

(assert (=> b!17373 (= res!7210 (>= (- (level!11 (left!656 rl!34)) (level!11 (right!659 rl!34))) (- 1)))))

(assert (= (and d!12025 (not res!7209)) b!17373))

(assert (= (and b!17373 res!7210) b!17374))

(assert (= (and b!17374 res!7211) b!17375))

(assert (= (and b!17375 res!7212) b!17376))

(declare-fun m!20641 () Bool)

(assert (=> b!17376 m!20641))

(declare-fun m!20643 () Bool)

(assert (=> b!17375 m!20643))

(assert (=> b!17374 m!20333))

(assert (=> b!17374 m!20331))

(assert (=> b!17373 m!20333))

(assert (=> b!17373 m!20331))

(assert (=> b!16896 d!12025))

(assert (=> b!16996 d!11969))

(assert (=> b!16934 d!11949))

(assert (=> b!16934 d!11943))

(assert (=> b!16925 d!11943))

(assert (=> b!16925 d!11949))

(declare-fun b!17380 () Bool)

(declare-fun e!9404 () Bool)

(assert (=> b!17380 (= e!9404 (balanced!12 (right!659 (right!659 (_1!54 res!5666)))))))

(declare-fun b!17379 () Bool)

(declare-fun res!7216 () Bool)

(assert (=> b!17379 (=> (not res!7216) (not e!9404))))

(assert (=> b!17379 (= res!7216 (balanced!12 (left!656 (right!659 (_1!54 res!5666)))))))

(declare-fun b!17378 () Bool)

(declare-fun res!7215 () Bool)

(assert (=> b!17378 (=> (not res!7215) (not e!9404))))

(assert (=> b!17378 (= res!7215 (<= (- (level!11 (left!656 (right!659 (_1!54 res!5666)))) (level!11 (right!659 (right!659 (_1!54 res!5666))))) 1))))

(declare-fun d!12027 () Bool)

(declare-fun res!7213 () Bool)

(declare-fun e!9403 () Bool)

(assert (=> d!12027 (=> res!7213 e!9403)))

(assert (=> d!12027 (= res!7213 (not (is-CC!11 (right!659 (_1!54 res!5666)))))))

(assert (=> d!12027 (= (balanced!12 (right!659 (_1!54 res!5666))) e!9403)))

(declare-fun b!17377 () Bool)

(assert (=> b!17377 (= e!9403 e!9404)))

(declare-fun res!7214 () Bool)

(assert (=> b!17377 (=> (not res!7214) (not e!9404))))

(assert (=> b!17377 (= res!7214 (>= (- (level!11 (left!656 (right!659 (_1!54 res!5666)))) (level!11 (right!659 (right!659 (_1!54 res!5666))))) (- 1)))))

(assert (= (and d!12027 (not res!7213)) b!17377))

(assert (= (and b!17377 res!7214) b!17378))

(assert (= (and b!17378 res!7215) b!17379))

(assert (= (and b!17379 res!7216) b!17380))

(declare-fun m!20645 () Bool)

(assert (=> b!17380 m!20645))

(declare-fun m!20647 () Bool)

(assert (=> b!17379 m!20647))

(assert (=> b!17378 m!20319))

(assert (=> b!17378 m!20317))

(assert (=> b!17377 m!20319))

(assert (=> b!17377 m!20317))

(assert (=> b!16940 d!12027))

(assert (=> b!16938 d!11935))

(assert (=> b!16938 d!11933))

(declare-fun b!17384 () Bool)

(declare-fun e!9406 () Bool)

(assert (=> b!17384 (= e!9406 (balanced!12 (right!659 lt!2534)))))

(declare-fun b!17383 () Bool)

(declare-fun res!7220 () Bool)

(assert (=> b!17383 (=> (not res!7220) (not e!9406))))

(assert (=> b!17383 (= res!7220 (balanced!12 (left!656 lt!2534)))))

(declare-fun b!17382 () Bool)

(declare-fun res!7219 () Bool)

(assert (=> b!17382 (=> (not res!7219) (not e!9406))))

(assert (=> b!17382 (= res!7219 (<= (- (level!11 (left!656 lt!2534)) (level!11 (right!659 lt!2534))) 1))))

(declare-fun d!12029 () Bool)

(declare-fun res!7217 () Bool)

(declare-fun e!9405 () Bool)

(assert (=> d!12029 (=> res!7217 e!9405)))

(assert (=> d!12029 (= res!7217 (not (is-CC!11 lt!2534)))))

(assert (=> d!12029 (= (balanced!12 lt!2534) e!9405)))

(declare-fun b!17381 () Bool)

(assert (=> b!17381 (= e!9405 e!9406)))

(declare-fun res!7218 () Bool)

(assert (=> b!17381 (=> (not res!7218) (not e!9406))))

(assert (=> b!17381 (= res!7218 (>= (- (level!11 (left!656 lt!2534)) (level!11 (right!659 lt!2534))) (- 1)))))

(assert (= (and d!12029 (not res!7217)) b!17381))

(assert (= (and b!17381 res!7218) b!17382))

(assert (= (and b!17382 res!7219) b!17383))

(assert (= (and b!17383 res!7220) b!17384))

(declare-fun m!20649 () Bool)

(assert (=> b!17384 m!20649))

(declare-fun m!20651 () Bool)

(assert (=> b!17383 m!20651))

(declare-fun m!20653 () Bool)

(assert (=> b!17382 m!20653))

(declare-fun m!20655 () Bool)

(assert (=> b!17382 m!20655))

(assert (=> b!17381 m!20653))

(assert (=> b!17381 m!20655))

(assert (=> b!16997 d!12029))

(declare-fun b!17386 () Bool)

(declare-fun res!7224 () Bool)

(declare-fun e!9407 () Bool)

(assert (=> b!17386 (=> (not res!7224) (not e!9407))))

(assert (=> b!17386 (= res!7224 (not (isEmpty!276 (right!659 (left!656 (_1!54 res!5666))))))))

(declare-fun b!17388 () Bool)

(assert (=> b!17388 (= e!9407 (concInv!11 (right!659 (left!656 (_1!54 res!5666)))))))

(declare-fun d!12031 () Bool)

(declare-fun res!7221 () Bool)

(declare-fun e!9408 () Bool)

(assert (=> d!12031 (=> res!7221 e!9408)))

(assert (=> d!12031 (= res!7221 (not (is-CC!11 (left!656 (_1!54 res!5666)))))))

(assert (=> d!12031 (= (concInv!11 (left!656 (_1!54 res!5666))) e!9408)))

(declare-fun b!17387 () Bool)

(declare-fun res!7223 () Bool)

(assert (=> b!17387 (=> (not res!7223) (not e!9407))))

(assert (=> b!17387 (= res!7223 (concInv!11 (left!656 (left!656 (_1!54 res!5666)))))))

(declare-fun b!17385 () Bool)

(assert (=> b!17385 (= e!9408 e!9407)))

(declare-fun res!7222 () Bool)

(assert (=> b!17385 (=> (not res!7222) (not e!9407))))

(assert (=> b!17385 (= res!7222 (not (isEmpty!276 (left!656 (left!656 (_1!54 res!5666))))))))

(assert (= (and d!12031 (not res!7221)) b!17385))

(assert (= (and b!17385 res!7222) b!17386))

(assert (= (and b!17386 res!7224) b!17387))

(assert (= (and b!17387 res!7223) b!17388))

(declare-fun m!20657 () Bool)

(assert (=> b!17386 m!20657))

(declare-fun m!20659 () Bool)

(assert (=> b!17388 m!20659))

(declare-fun m!20661 () Bool)

(assert (=> b!17387 m!20661))

(declare-fun m!20663 () Bool)

(assert (=> b!17385 m!20663))

(assert (=> b!17008 d!12031))

(declare-fun b!17389 () Bool)

(declare-fun e!9409 () Bool)

(declare-fun tp!4061 () Bool)

(declare-fun tp!4062 () Bool)

(assert (=> b!17389 (= e!9409 (and tp!4061 tp!4062))))

(declare-fun b!17390 () Bool)

(assert (=> b!17390 (= e!9409 tp_is_empty!59)))

(assert (=> b!17026 (= tp!4029 e!9409)))

(assert (= (and b!17026 (is-CC!11 (left!656 (right!659 (_1!54 res!5666))))) b!17389))

(assert (= (and b!17026 (is-Single!11 (left!656 (right!659 (_1!54 res!5666))))) b!17390))

(declare-fun b!17391 () Bool)

(declare-fun e!9410 () Bool)

(declare-fun tp!4063 () Bool)

(declare-fun tp!4064 () Bool)

(assert (=> b!17391 (= e!9410 (and tp!4063 tp!4064))))

(declare-fun b!17392 () Bool)

(assert (=> b!17392 (= e!9410 tp_is_empty!59)))

(assert (=> b!17026 (= tp!4030 e!9410)))

(assert (= (and b!17026 (is-CC!11 (right!659 (right!659 (_1!54 res!5666))))) b!17391))

(assert (= (and b!17026 (is-Single!11 (right!659 (right!659 (_1!54 res!5666))))) b!17392))

(declare-fun b!17393 () Bool)

(declare-fun e!9411 () Bool)

(declare-fun tp!4065 () Bool)

(declare-fun tp!4066 () Bool)

(assert (=> b!17393 (= e!9411 (and tp!4065 tp!4066))))

(declare-fun b!17394 () Bool)

(assert (=> b!17394 (= e!9411 tp_is_empty!59)))

(assert (=> b!17050 (= tp!4053 e!9411)))

(assert (= (and b!17050 (is-CC!11 (left!656 (right!659 (_2!54 res!5666))))) b!17393))

(assert (= (and b!17050 (is-Single!11 (left!656 (right!659 (_2!54 res!5666))))) b!17394))

(declare-fun b!17395 () Bool)

(declare-fun e!9412 () Bool)

(declare-fun tp!4067 () Bool)

(declare-fun tp!4068 () Bool)

(assert (=> b!17395 (= e!9412 (and tp!4067 tp!4068))))

(declare-fun b!17396 () Bool)

(assert (=> b!17396 (= e!9412 tp_is_empty!59)))

(assert (=> b!17050 (= tp!4054 e!9412)))

(assert (= (and b!17050 (is-CC!11 (right!659 (right!659 (_2!54 res!5666))))) b!17395))

(assert (= (and b!17050 (is-Single!11 (right!659 (right!659 (_2!54 res!5666))))) b!17396))

(declare-fun b!17397 () Bool)

(declare-fun e!9413 () Bool)

(declare-fun tp!4069 () Bool)

(declare-fun tp!4070 () Bool)

(assert (=> b!17397 (= e!9413 (and tp!4069 tp!4070))))

(declare-fun b!17398 () Bool)

(assert (=> b!17398 (= e!9413 tp_is_empty!59)))

(assert (=> b!17044 (= tp!4047 e!9413)))

(assert (= (and b!17044 (is-CC!11 (left!656 (left!656 (_2!54 x$4!71))))) b!17397))

(assert (= (and b!17044 (is-Single!11 (left!656 (left!656 (_2!54 x$4!71))))) b!17398))

(declare-fun b!17399 () Bool)

(declare-fun e!9414 () Bool)

(declare-fun tp!4071 () Bool)

(declare-fun tp!4072 () Bool)

(assert (=> b!17399 (= e!9414 (and tp!4071 tp!4072))))

(declare-fun b!17400 () Bool)

(assert (=> b!17400 (= e!9414 tp_is_empty!59)))

(assert (=> b!17044 (= tp!4048 e!9414)))

(assert (= (and b!17044 (is-CC!11 (right!659 (left!656 (_2!54 x$4!71))))) b!17399))

(assert (= (and b!17044 (is-Single!11 (right!659 (left!656 (_2!54 x$4!71))))) b!17400))

(declare-fun b!17401 () Bool)

(declare-fun e!9415 () Bool)

(declare-fun tp!4073 () Bool)

(declare-fun tp!4074 () Bool)

(assert (=> b!17401 (= e!9415 (and tp!4073 tp!4074))))

(declare-fun b!17402 () Bool)

(assert (=> b!17402 (= e!9415 tp_is_empty!59)))

(assert (=> b!17032 (= tp!4035 e!9415)))

(assert (= (and b!17032 (is-CC!11 (left!656 (left!656 rr!34)))) b!17401))

(assert (= (and b!17032 (is-Single!11 (left!656 (left!656 rr!34)))) b!17402))

(declare-fun b!17403 () Bool)

(declare-fun e!9416 () Bool)

(declare-fun tp!4075 () Bool)

(declare-fun tp!4076 () Bool)

(assert (=> b!17403 (= e!9416 (and tp!4075 tp!4076))))

(declare-fun b!17404 () Bool)

(assert (=> b!17404 (= e!9416 tp_is_empty!59)))

(assert (=> b!17032 (= tp!4036 e!9416)))

(assert (= (and b!17032 (is-CC!11 (right!659 (left!656 rr!34)))) b!17403))

(assert (= (and b!17032 (is-Single!11 (right!659 (left!656 rr!34)))) b!17404))

(declare-fun b!17405 () Bool)

(declare-fun e!9417 () Bool)

(declare-fun tp!4077 () Bool)

(declare-fun tp!4078 () Bool)

(assert (=> b!17405 (= e!9417 (and tp!4077 tp!4078))))

(declare-fun b!17406 () Bool)

(assert (=> b!17406 (= e!9417 tp_is_empty!59)))

(assert (=> b!17046 (= tp!4049 e!9417)))

(assert (= (and b!17046 (is-CC!11 (left!656 (right!659 (_2!54 x$4!71))))) b!17405))

(assert (= (and b!17046 (is-Single!11 (left!656 (right!659 (_2!54 x$4!71))))) b!17406))

(declare-fun b!17407 () Bool)

(declare-fun e!9418 () Bool)

(declare-fun tp!4079 () Bool)

(declare-fun tp!4080 () Bool)

(assert (=> b!17407 (= e!9418 (and tp!4079 tp!4080))))

(declare-fun b!17408 () Bool)

(assert (=> b!17408 (= e!9418 tp_is_empty!59)))

(assert (=> b!17046 (= tp!4050 e!9418)))

(assert (= (and b!17046 (is-CC!11 (right!659 (right!659 (_2!54 x$4!71))))) b!17407))

(assert (= (and b!17046 (is-Single!11 (right!659 (right!659 (_2!54 x$4!71))))) b!17408))

(declare-fun b!17409 () Bool)

(declare-fun e!9419 () Bool)

(declare-fun tp!4081 () Bool)

(declare-fun tp!4082 () Bool)

(assert (=> b!17409 (= e!9419 (and tp!4081 tp!4082))))

(declare-fun b!17410 () Bool)

(assert (=> b!17410 (= e!9419 tp_is_empty!59)))

(assert (=> b!17040 (= tp!4043 e!9419)))

(assert (= (and b!17040 (is-CC!11 (left!656 (left!656 xs!637)))) b!17409))

(assert (= (and b!17040 (is-Single!11 (left!656 (left!656 xs!637)))) b!17410))

(declare-fun b!17411 () Bool)

(declare-fun e!9420 () Bool)

(declare-fun tp!4083 () Bool)

(declare-fun tp!4084 () Bool)

(assert (=> b!17411 (= e!9420 (and tp!4083 tp!4084))))

(declare-fun b!17412 () Bool)

(assert (=> b!17412 (= e!9420 tp_is_empty!59)))

(assert (=> b!17040 (= tp!4044 e!9420)))

(assert (= (and b!17040 (is-CC!11 (right!659 (left!656 xs!637)))) b!17411))

(assert (= (and b!17040 (is-Single!11 (right!659 (left!656 xs!637)))) b!17412))

(declare-fun b!17413 () Bool)

(declare-fun e!9421 () Bool)

(declare-fun tp!4085 () Bool)

(declare-fun tp!4086 () Bool)

(assert (=> b!17413 (= e!9421 (and tp!4085 tp!4086))))

(declare-fun b!17414 () Bool)

(assert (=> b!17414 (= e!9421 tp_is_empty!59)))

(assert (=> b!17030 (= tp!4033 e!9421)))

(assert (= (and b!17030 (is-CC!11 (left!656 (right!659 rl!34)))) b!17413))

(assert (= (and b!17030 (is-Single!11 (left!656 (right!659 rl!34)))) b!17414))

(declare-fun b!17415 () Bool)

(declare-fun e!9422 () Bool)

(declare-fun tp!4087 () Bool)

(declare-fun tp!4088 () Bool)

(assert (=> b!17415 (= e!9422 (and tp!4087 tp!4088))))

(declare-fun b!17416 () Bool)

(assert (=> b!17416 (= e!9422 tp_is_empty!59)))

(assert (=> b!17030 (= tp!4034 e!9422)))

(assert (= (and b!17030 (is-CC!11 (right!659 (right!659 rl!34)))) b!17415))

(assert (= (and b!17030 (is-Single!11 (right!659 (right!659 rl!34)))) b!17416))

(declare-fun b!17417 () Bool)

(declare-fun e!9423 () Bool)

(declare-fun tp!4089 () Bool)

(declare-fun tp!4090 () Bool)

(assert (=> b!17417 (= e!9423 (and tp!4089 tp!4090))))

(declare-fun b!17418 () Bool)

(assert (=> b!17418 (= e!9423 tp_is_empty!59)))

(assert (=> b!17048 (= tp!4051 e!9423)))

(assert (= (and b!17048 (is-CC!11 (left!656 (left!656 (_2!54 res!5666))))) b!17417))

(assert (= (and b!17048 (is-Single!11 (left!656 (left!656 (_2!54 res!5666))))) b!17418))

(declare-fun b!17419 () Bool)

(declare-fun e!9424 () Bool)

(declare-fun tp!4091 () Bool)

(declare-fun tp!4092 () Bool)

(assert (=> b!17419 (= e!9424 (and tp!4091 tp!4092))))

(declare-fun b!17420 () Bool)

(assert (=> b!17420 (= e!9424 tp_is_empty!59)))

(assert (=> b!17048 (= tp!4052 e!9424)))

(assert (= (and b!17048 (is-CC!11 (right!659 (left!656 (_2!54 res!5666))))) b!17419))

(assert (= (and b!17048 (is-Single!11 (right!659 (left!656 (_2!54 res!5666))))) b!17420))

(declare-fun b!17421 () Bool)

(declare-fun e!9425 () Bool)

(declare-fun tp!4093 () Bool)

(declare-fun tp!4094 () Bool)

(assert (=> b!17421 (= e!9425 (and tp!4093 tp!4094))))

(declare-fun b!17422 () Bool)

(assert (=> b!17422 (= e!9425 tp_is_empty!59)))

(assert (=> b!17038 (= tp!4041 e!9425)))

(assert (= (and b!17038 (is-CC!11 (left!656 (right!659 (_1!54 x$4!71))))) b!17421))

(assert (= (and b!17038 (is-Single!11 (left!656 (right!659 (_1!54 x$4!71))))) b!17422))

(declare-fun b!17423 () Bool)

(declare-fun e!9426 () Bool)

(declare-fun tp!4095 () Bool)

(declare-fun tp!4096 () Bool)

(assert (=> b!17423 (= e!9426 (and tp!4095 tp!4096))))

(declare-fun b!17424 () Bool)

(assert (=> b!17424 (= e!9426 tp_is_empty!59)))

(assert (=> b!17038 (= tp!4042 e!9426)))

(assert (= (and b!17038 (is-CC!11 (right!659 (right!659 (_1!54 x$4!71))))) b!17423))

(assert (= (and b!17038 (is-Single!11 (right!659 (right!659 (_1!54 x$4!71))))) b!17424))

(declare-fun b!17425 () Bool)

(declare-fun e!9427 () Bool)

(declare-fun tp!4097 () Bool)

(declare-fun tp!4098 () Bool)

(assert (=> b!17425 (= e!9427 (and tp!4097 tp!4098))))

(declare-fun b!17426 () Bool)

(assert (=> b!17426 (= e!9427 tp_is_empty!59)))

(assert (=> b!17042 (= tp!4045 e!9427)))

(assert (= (and b!17042 (is-CC!11 (left!656 (right!659 xs!637)))) b!17425))

(assert (= (and b!17042 (is-Single!11 (left!656 (right!659 xs!637)))) b!17426))

(declare-fun b!17427 () Bool)

(declare-fun e!9428 () Bool)

(declare-fun tp!4099 () Bool)

(declare-fun tp!4100 () Bool)

(assert (=> b!17427 (= e!9428 (and tp!4099 tp!4100))))

(declare-fun b!17428 () Bool)

(assert (=> b!17428 (= e!9428 tp_is_empty!59)))

(assert (=> b!17042 (= tp!4046 e!9428)))

(assert (= (and b!17042 (is-CC!11 (right!659 (right!659 xs!637)))) b!17427))

(assert (= (and b!17042 (is-Single!11 (right!659 (right!659 xs!637)))) b!17428))

(declare-fun b!17429 () Bool)

(declare-fun e!9429 () Bool)

(declare-fun tp!4101 () Bool)

(declare-fun tp!4102 () Bool)

(assert (=> b!17429 (= e!9429 (and tp!4101 tp!4102))))

(declare-fun b!17430 () Bool)

(assert (=> b!17430 (= e!9429 tp_is_empty!59)))

(assert (=> b!17036 (= tp!4039 e!9429)))

(assert (= (and b!17036 (is-CC!11 (left!656 (left!656 (_1!54 x$4!71))))) b!17429))

(assert (= (and b!17036 (is-Single!11 (left!656 (left!656 (_1!54 x$4!71))))) b!17430))

(declare-fun b!17431 () Bool)

(declare-fun e!9430 () Bool)

(declare-fun tp!4103 () Bool)

(declare-fun tp!4104 () Bool)

(assert (=> b!17431 (= e!9430 (and tp!4103 tp!4104))))

(declare-fun b!17432 () Bool)

(assert (=> b!17432 (= e!9430 tp_is_empty!59)))

(assert (=> b!17036 (= tp!4040 e!9430)))

(assert (= (and b!17036 (is-CC!11 (right!659 (left!656 (_1!54 x$4!71))))) b!17431))

(assert (= (and b!17036 (is-Single!11 (right!659 (left!656 (_1!54 x$4!71))))) b!17432))

(declare-fun b!17433 () Bool)

(declare-fun e!9431 () Bool)

(declare-fun tp!4105 () Bool)

(declare-fun tp!4106 () Bool)

(assert (=> b!17433 (= e!9431 (and tp!4105 tp!4106))))

(declare-fun b!17434 () Bool)

(assert (=> b!17434 (= e!9431 tp_is_empty!59)))

(assert (=> b!17028 (= tp!4031 e!9431)))

(assert (= (and b!17028 (is-CC!11 (left!656 (left!656 rl!34)))) b!17433))

(assert (= (and b!17028 (is-Single!11 (left!656 (left!656 rl!34)))) b!17434))

(declare-fun b!17435 () Bool)

(declare-fun e!9432 () Bool)

(declare-fun tp!4107 () Bool)

(declare-fun tp!4108 () Bool)

(assert (=> b!17435 (= e!9432 (and tp!4107 tp!4108))))

(declare-fun b!17436 () Bool)

(assert (=> b!17436 (= e!9432 tp_is_empty!59)))

(assert (=> b!17028 (= tp!4032 e!9432)))

(assert (= (and b!17028 (is-CC!11 (right!659 (left!656 rl!34)))) b!17435))

(assert (= (and b!17028 (is-Single!11 (right!659 (left!656 rl!34)))) b!17436))

(declare-fun b!17437 () Bool)

(declare-fun e!9433 () Bool)

(declare-fun tp!4109 () Bool)

(declare-fun tp!4110 () Bool)

(assert (=> b!17437 (= e!9433 (and tp!4109 tp!4110))))

(declare-fun b!17438 () Bool)

(assert (=> b!17438 (= e!9433 tp_is_empty!59)))

(assert (=> b!17034 (= tp!4037 e!9433)))

(assert (= (and b!17034 (is-CC!11 (left!656 (right!659 rr!34)))) b!17437))

(assert (= (and b!17034 (is-Single!11 (left!656 (right!659 rr!34)))) b!17438))

(declare-fun b!17439 () Bool)

(declare-fun e!9434 () Bool)

(declare-fun tp!4111 () Bool)

(declare-fun tp!4112 () Bool)

(assert (=> b!17439 (= e!9434 (and tp!4111 tp!4112))))

(declare-fun b!17440 () Bool)

(assert (=> b!17440 (= e!9434 tp_is_empty!59)))

(assert (=> b!17034 (= tp!4038 e!9434)))

(assert (= (and b!17034 (is-CC!11 (right!659 (right!659 rr!34)))) b!17439))

(assert (= (and b!17034 (is-Single!11 (right!659 (right!659 rr!34)))) b!17440))

(declare-fun b!17441 () Bool)

(declare-fun e!9435 () Bool)

(declare-fun tp!4113 () Bool)

(declare-fun tp!4114 () Bool)

(assert (=> b!17441 (= e!9435 (and tp!4113 tp!4114))))

(declare-fun b!17442 () Bool)

(assert (=> b!17442 (= e!9435 tp_is_empty!59)))

(assert (=> b!17024 (= tp!4027 e!9435)))

(assert (= (and b!17024 (is-CC!11 (left!656 (left!656 (_1!54 res!5666))))) b!17441))

(assert (= (and b!17024 (is-Single!11 (left!656 (left!656 (_1!54 res!5666))))) b!17442))

(declare-fun b!17443 () Bool)

(declare-fun e!9436 () Bool)

(declare-fun tp!4115 () Bool)

(declare-fun tp!4116 () Bool)

(assert (=> b!17443 (= e!9436 (and tp!4115 tp!4116))))

(declare-fun b!17444 () Bool)

(assert (=> b!17444 (= e!9436 tp_is_empty!59)))

(assert (=> b!17024 (= tp!4028 e!9436)))

(assert (= (and b!17024 (is-CC!11 (right!659 (left!656 (_1!54 res!5666))))) b!17443))

(assert (= (and b!17024 (is-Single!11 (right!659 (left!656 (_1!54 res!5666))))) b!17444))

(push 1)

(assert (not b!17415))

(assert (not b!17139))

(assert (not b!17397))

(assert (not b!17380))

(assert (not b!17185))

(assert (not b!17062))

(assert (not b!17433))

(assert (not b!17372))

(assert (not b!17431))

(assert (not b!17379))

(assert (not b!17273))

(assert (not b!17071))

(assert (not b!17393))

(assert (not b!17176))

(assert (not b!17374))

(assert (not b!17343))

(assert (not b!17164))

(assert (not b!17157))

(assert (not b!17124))

(assert (not b!17339))

(assert (not d!11991))

(assert (not b!17143))

(assert (not b!17378))

(assert (not b!17336))

(assert (not b!17060))

(assert (not b!17066))

(assert (not b!17349))

(assert (not b!17138))

(assert (not b!17359))

(assert (not b!17419))

(assert (not b!17271))

(assert (not b!17358))

(assert (not b!17283))

(assert (not b!17172))

(assert (not b!17064))

(assert (not b!17122))

(assert (not b!17269))

(assert (not d!11985))

(assert (not b!17278))

(assert (not b!17282))

(assert (not b!17125))

(assert (not b!17132))

(assert (not b!17437))

(assert (not b!17421))

(assert (not b!17333))

(assert (not b!17179))

(assert (not b!17223))

(assert (not b!17170))

(assert (not b!17348))

(assert (not b!17388))

(assert (not b!17140))

(assert (not b!17061))

(assert (not b!17407))

(assert (not b!17148))

(assert (not b!17387))

(assert (not b!17401))

(assert (not b!17226))

(assert (not b!17362))

(assert (not b!17289))

(assert (not b!17356))

(assert (not b!17272))

(assert (not b!17427))

(assert (not b!17058))

(assert (not b!17084))

(assert (not b!17159))

(assert (not b!17239))

(assert (not b!17345))

(assert (not b!17231))

(assert (not b!17411))

(assert (not b!17364))

(assert (not b!17165))

(assert (not b!17375))

(assert (not b!17078))

(assert (not d!12011))

(assert (not b!17395))

(assert (not b!17074))

(assert (not b!17403))

(assert (not b!17053))

(assert (not d!11953))

(assert (not b!17079))

(assert (not d!11961))

(assert (not b!17425))

(assert (not b!17369))

(assert (not b!17367))

(assert (not b!17052))

(assert (not b!17116))

(assert (not b!17065))

(assert (not d!12021))

(assert (not b!17174))

(assert (not b!17187))

(assert (not b!17335))

(assert (not b!17175))

(assert (not b!17386))

(assert (not b!17355))

(assert (not b!17161))

(assert (not b!17111))

(assert (not b!17123))

(assert (not b!17353))

(assert (not b!17067))

(assert (not b!17171))

(assert (not b!17114))

(assert (not b!17366))

(assert (not b!17133))

(assert (not d!11967))

(assert (not b!17236))

(assert (not b!17150))

(assert tp_is_empty!59)

(assert (not b!17076))

(assert (not d!11993))

(assert (not b!17385))

(assert (not b!17443))

(assert (not b!17363))

(assert (not b!17287))

(assert (not b!17160))

(assert (not b!17340))

(assert (not b!17350))

(assert (not b!17152))

(assert (not b!17264))

(assert (not b!17225))

(assert (not b!17072))

(assert (not b!17056))

(assert (not b!17357))

(assert (not b!17082))

(assert (not b!17391))

(assert (not d!11987))

(assert (not b!17376))

(assert (not d!12005))

(assert (not b!17183))

(assert (not b!17137))

(assert (not b!17057))

(assert (not b!17337))

(assert (not b!17136))

(assert (not b!17134))

(assert (not b!17274))

(assert (not b!17218))

(assert (not b!17334))

(assert (not b!17059))

(assert (not b!17377))

(assert (not b!17154))

(assert (not b!17167))

(assert (not b!17146))

(assert (not b!17127))

(assert (not d!11951))

(assert (not b!17237))

(assert (not b!17409))

(assert (not b!17347))

(assert (not b!17266))

(assert (not b!17196))

(assert (not b!17129))

(assert (not b!17365))

(assert (not b!17178))

(assert (not b!17399))

(assert (not b!17162))

(assert (not b!17193))

(assert (not b!17177))

(assert (not b!17096))

(assert (not b!17080))

(assert (not b!17354))

(assert (not b!17149))

(assert (not b!17190))

(assert (not b!17194))

(assert (not b!17147))

(assert (not b!17373))

(assert (not b!17439))

(assert (not b!17121))

(assert (not b!17383))

(assert (not b!17413))

(assert (not b!17435))

(assert (not b!17405))

(assert (not b!17189))

(assert (not b!17151))

(assert (not b!17381))

(assert (not b!17290))

(assert (not b!17141))

(assert (not b!17288))

(assert (not b!17389))

(assert (not b!17441))

(assert (not d!11965))

(assert (not b!17081))

(assert (not d!11955))

(assert (not b!17224))

(assert (not b!17368))

(assert (not b!17423))

(assert (not b!17285))

(assert (not b!17238))

(assert (not b!17191))

(assert (not d!11983))

(assert (not b!17342))

(assert (not b!17222))

(assert (not b!17117))

(assert (not b!17163))

(assert (not b!17417))

(assert (not b!17361))

(assert (not b!17235))

(assert (not b!17195))

(assert (not b!17243))

(assert (not b!17352))

(assert (not b!17063))

(assert (not b!17055))

(assert (not b!17197))

(assert (not d!11963))

(assert (not b!17284))

(assert (not b!17219))

(assert (not b!17382))

(assert (not b!17158))

(assert (not b!17286))

(assert (not b!17054))

(assert (not b!17227))

(assert (not b!17384))

(assert (not b!17126))

(assert (not b!17360))

(assert (not b!17429))

(assert (not b!17192))

(assert (not b!17370))

(assert (not b!17069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

