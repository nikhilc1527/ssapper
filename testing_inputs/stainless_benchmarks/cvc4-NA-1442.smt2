; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9892 () Bool)

(assert start!9892)

(declare-fun res!35160 () Bool)

(declare-fun e!38853 () Bool)

(assert (=> start!9892 (=> res!35160 e!38853)))

(declare-datatypes () ((List!601 (Nil!559) (Cons!558 (head!968 Int) (tail!989 List!601)))))

(declare-fun list!806 () List!601)

(assert (=> start!9892 (= res!35160 (not (is-Cons!558 list!806)))))

(declare-datatypes () ((ProofOps!376 (ProofOps!377 (prop!498 Bool)))))

(declare-fun because!1 (ProofOps!376 Bool) Bool)

(declare-fun reverse!1 (List!601) List!601)

(declare-fun init!2 (List!601) List!601)

(declare-fun tail!45 (List!601) List!601)

(assert (=> start!9892 (not (because!1 (ProofOps!377 (= (reverse!1 (init!2 list!806)) (tail!45 (reverse!1 list!806)))) e!38853))))

(assert (=> start!9892 true))

(declare-fun b!71812 () Bool)

(declare-fun reverse_init_equivalence!0 (List!601) Bool)

(assert (=> b!71812 (= e!38853 (reverse_init_equivalence!0 (tail!989 list!806)))))

(assert (= (and start!9892 (not res!35160)) b!71812))

(declare-fun m!71796 () Bool)

(assert (=> start!9892 m!71796))

(declare-fun m!71798 () Bool)

(assert (=> start!9892 m!71798))

(assert (=> start!9892 m!71796))

(declare-fun m!71800 () Bool)

(assert (=> start!9892 m!71800))

(assert (=> start!9892 m!71798))

(declare-fun m!71802 () Bool)

(assert (=> start!9892 m!71802))

(declare-fun m!71804 () Bool)

(assert (=> start!9892 m!71804))

(declare-fun m!71806 () Bool)

(assert (=> b!71812 m!71806))

(push 1)

(assert (not b!71812))

(assert (not start!9892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54303 () Bool)

(declare-fun e!38856 () Bool)

(assert (=> d!54303 (because!1 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 list!806))) (tail!45 (reverse!1 (tail!989 list!806))))) e!38856)))

(declare-fun res!35163 () Bool)

(assert (=> d!54303 (=> res!35163 e!38856)))

(assert (=> d!54303 (= res!35163 (not (is-Cons!558 (tail!989 list!806))))))

(assert (=> d!54303 (= (reverse_init_equivalence!0 (tail!989 list!806)) true)))

(declare-fun b!71815 () Bool)

(assert (=> b!71815 (= e!38856 (reverse_init_equivalence!0 (tail!989 (tail!989 list!806))))))

(assert (= (and d!54303 (not res!35163)) b!71815))

(declare-fun m!71808 () Bool)

(assert (=> d!54303 m!71808))

(declare-fun m!71810 () Bool)

(assert (=> d!54303 m!71810))

(declare-fun m!71812 () Bool)

(assert (=> d!54303 m!71812))

(declare-fun m!71814 () Bool)

(assert (=> d!54303 m!71814))

(declare-fun m!71816 () Bool)

(assert (=> d!54303 m!71816))

(assert (=> d!54303 m!71808))

(assert (=> d!54303 m!71814))

(declare-fun m!71818 () Bool)

(assert (=> b!71815 m!71818))

(assert (=> b!71812 d!54303))

(declare-fun d!54305 () Bool)

(declare-fun e!38862 () Bool)

(assert (=> d!54305 e!38862))

(declare-fun res!35170 () Bool)

(assert (=> d!54305 (=> (not res!35170) (not e!38862))))

(declare-fun lt!15257 () List!601)

(declare-datatypes () ((Option!506 (Some!482 (x!28614 Int)) (None!483))))

(declare-fun lastOption!1 (List!601) Option!506)

(declare-fun headOption!1 (List!601) Option!506)

(assert (=> d!54305 (= res!35170 (= (lastOption!1 lt!15257) (headOption!1 (init!2 list!806))))))

(declare-fun e!38861 () List!601)

(assert (=> d!54305 (= lt!15257 e!38861)))

(declare-fun c!17217 () Bool)

(assert (=> d!54305 (= c!17217 (is-Cons!558 (init!2 list!806)))))

(assert (=> d!54305 (= (reverse!1 (init!2 list!806)) lt!15257)))

(declare-fun b!71825 () Bool)

(assert (=> b!71825 (= e!38861 Nil!559)))

(declare-fun b!71824 () Bool)

(declare-fun addLast!0 (List!601 Int) List!601)

(assert (=> b!71824 (= e!38861 (addLast!0 (reverse!1 (tail!989 (init!2 list!806))) (head!968 (init!2 list!806))))))

(declare-fun b!71826 () Bool)

(declare-fun res!35169 () Bool)

(assert (=> b!71826 (=> (not res!35169) (not e!38862))))

(assert (=> b!71826 (= res!35169 (= (lastOption!1 (init!2 list!806)) (headOption!1 lt!15257)))))

(declare-fun b!71827 () Bool)

(declare-fun size!4 (List!601) Int)

(assert (=> b!71827 (= e!38862 (= (size!4 lt!15257) (size!4 (init!2 list!806))))))

(assert (= (and d!54305 c!17217) b!71824))

(assert (= (and d!54305 (not c!17217)) b!71825))

(assert (= (and d!54305 res!35170) b!71826))

(assert (= (and b!71826 res!35169) b!71827))

(declare-fun m!71820 () Bool)

(assert (=> d!54305 m!71820))

(assert (=> d!54305 m!71798))

(declare-fun m!71822 () Bool)

(assert (=> d!54305 m!71822))

(declare-fun m!71824 () Bool)

(assert (=> b!71824 m!71824))

(assert (=> b!71824 m!71824))

(declare-fun m!71826 () Bool)

(assert (=> b!71824 m!71826))

(assert (=> b!71826 m!71798))

(declare-fun m!71828 () Bool)

(assert (=> b!71826 m!71828))

(declare-fun m!71830 () Bool)

(assert (=> b!71826 m!71830))

(declare-fun m!71832 () Bool)

(assert (=> b!71827 m!71832))

(assert (=> b!71827 m!71798))

(declare-fun m!71834 () Bool)

(assert (=> b!71827 m!71834))

(assert (=> start!9892 d!54305))

(declare-fun d!54307 () Bool)

(assert (=> d!54307 (= (because!1 (ProofOps!377 (= (reverse!1 (init!2 list!806)) (tail!45 (reverse!1 list!806)))) e!38853) (and e!38853 (prop!498 (ProofOps!377 (= (reverse!1 (init!2 list!806)) (tail!45 (reverse!1 list!806)))))))))

(assert (=> start!9892 d!54307))

(declare-fun b!71836 () Bool)

(declare-fun e!38867 () List!601)

(assert (=> b!71836 (= e!38867 Nil!559)))

(declare-fun b!71838 () Bool)

(declare-fun e!38868 () List!601)

(assert (=> b!71838 (= e!38868 (Cons!558 (head!968 list!806) (init!2 (tail!989 list!806))))))

(declare-fun b!71839 () Bool)

(assert (=> b!71839 (= e!38868 Nil!559)))

(declare-fun d!54309 () Bool)

(declare-fun c!17222 () Bool)

(assert (=> d!54309 (= c!17222 (and (is-Cons!558 list!806) (is-Nil!559 (tail!989 list!806))))))

(assert (=> d!54309 (= (init!2 list!806) e!38867)))

(declare-fun b!71837 () Bool)

(assert (=> b!71837 (= e!38867 e!38868)))

(declare-fun c!17223 () Bool)

(assert (=> b!71837 (= c!17223 (is-Cons!558 list!806))))

(assert (= (and b!71837 c!17223) b!71838))

(assert (= (and b!71837 (not c!17223)) b!71839))

(assert (= (and d!54309 c!17222) b!71836))

(assert (= (and d!54309 (not c!17222)) b!71837))

(assert (=> b!71838 m!71814))

(assert (=> start!9892 d!54309))

(declare-fun d!54311 () Bool)

(assert (=> d!54311 (= (tail!45 (reverse!1 list!806)) (ite (is-Cons!558 (reverse!1 list!806)) (tail!989 (reverse!1 list!806)) Nil!559))))

(assert (=> start!9892 d!54311))

(declare-fun d!54313 () Bool)

(declare-fun e!38870 () Bool)

(assert (=> d!54313 e!38870))

(declare-fun res!35172 () Bool)

(assert (=> d!54313 (=> (not res!35172) (not e!38870))))

(declare-fun lt!15258 () List!601)

(assert (=> d!54313 (= res!35172 (= (lastOption!1 lt!15258) (headOption!1 list!806)))))

(declare-fun e!38869 () List!601)

(assert (=> d!54313 (= lt!15258 e!38869)))

(declare-fun c!17224 () Bool)

(assert (=> d!54313 (= c!17224 (is-Cons!558 list!806))))

(assert (=> d!54313 (= (reverse!1 list!806) lt!15258)))

(declare-fun b!71841 () Bool)

(assert (=> b!71841 (= e!38869 Nil!559)))

(declare-fun b!71840 () Bool)

(assert (=> b!71840 (= e!38869 (addLast!0 (reverse!1 (tail!989 list!806)) (head!968 list!806)))))

(declare-fun b!71842 () Bool)

(declare-fun res!35171 () Bool)

(assert (=> b!71842 (=> (not res!35171) (not e!38870))))

(assert (=> b!71842 (= res!35171 (= (lastOption!1 list!806) (headOption!1 lt!15258)))))

(declare-fun b!71843 () Bool)

(assert (=> b!71843 (= e!38870 (= (size!4 lt!15258) (size!4 list!806)))))

(assert (= (and d!54313 c!17224) b!71840))

(assert (= (and d!54313 (not c!17224)) b!71841))

(assert (= (and d!54313 res!35172) b!71842))

(assert (= (and b!71842 res!35171) b!71843))

(declare-fun m!71836 () Bool)

(assert (=> d!54313 m!71836))

(declare-fun m!71838 () Bool)

(assert (=> d!54313 m!71838))

(assert (=> b!71840 m!71808))

(assert (=> b!71840 m!71808))

(declare-fun m!71840 () Bool)

(assert (=> b!71840 m!71840))

(declare-fun m!71842 () Bool)

(assert (=> b!71842 m!71842))

(declare-fun m!71844 () Bool)

(assert (=> b!71842 m!71844))

(declare-fun m!71846 () Bool)

(assert (=> b!71843 m!71846))

(declare-fun m!71848 () Bool)

(assert (=> b!71843 m!71848))

(assert (=> start!9892 d!54313))

(push 1)

(assert (not b!71842))

(assert (not b!71827))

(assert (not d!54305))

(assert (not b!71824))

(assert (not b!71838))

(assert (not d!54313))

(assert (not b!71826))

(assert (not b!71843))

(assert (not b!71815))

(assert (not d!54303))

(assert (not b!71840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!54315 () Bool)

(declare-fun lt!15261 () Int)

(assert (=> d!54315 (>= lt!15261 0)))

(declare-fun e!38873 () Int)

(assert (=> d!54315 (= lt!15261 e!38873)))

(declare-fun c!17227 () Bool)

(assert (=> d!54315 (= c!17227 (is-Nil!559 lt!15257))))

(assert (=> d!54315 (= (size!4 lt!15257) lt!15261)))

(declare-fun b!71848 () Bool)

(assert (=> b!71848 (= e!38873 0)))

(declare-fun b!71849 () Bool)

(assert (=> b!71849 (= e!38873 (+ 1 (size!4 (tail!989 lt!15257))))))

(assert (= (and d!54315 c!17227) b!71848))

(assert (= (and d!54315 (not c!17227)) b!71849))

(declare-fun m!71850 () Bool)

(assert (=> b!71849 m!71850))

(assert (=> b!71827 d!54315))

(declare-fun d!54317 () Bool)

(declare-fun lt!15262 () Int)

(assert (=> d!54317 (>= lt!15262 0)))

(declare-fun e!38874 () Int)

(assert (=> d!54317 (= lt!15262 e!38874)))

(declare-fun c!17228 () Bool)

(assert (=> d!54317 (= c!17228 (is-Nil!559 (init!2 list!806)))))

(assert (=> d!54317 (= (size!4 (init!2 list!806)) lt!15262)))

(declare-fun b!71850 () Bool)

(assert (=> b!71850 (= e!38874 0)))

(declare-fun b!71851 () Bool)

(assert (=> b!71851 (= e!38874 (+ 1 (size!4 (tail!989 (init!2 list!806)))))))

(assert (= (and d!54317 c!17228) b!71850))

(assert (= (and d!54317 (not c!17228)) b!71851))

(declare-fun m!71852 () Bool)

(assert (=> b!71851 m!71852))

(assert (=> b!71827 d!54317))

(declare-fun b!71862 () Bool)

(declare-fun res!35180 () Bool)

(declare-fun e!38879 () Bool)

(assert (=> b!71862 (=> (not res!35180) (not e!38879))))

(declare-fun lt!15265 () List!601)

(assert (=> b!71862 (= res!35180 (= (lastOption!1 lt!15265) (Some!482 (head!968 (init!2 list!806)))))))

(declare-fun b!71863 () Bool)

(declare-fun res!35182 () Bool)

(assert (=> b!71863 (=> (not res!35182) (not e!38879))))

(assert (=> b!71863 (= res!35182 (= (init!2 lt!15265) (reverse!1 (tail!989 (init!2 list!806)))))))

(declare-fun b!71864 () Bool)

(assert (=> b!71864 (= e!38879 (= (+ (size!4 (reverse!1 (tail!989 (init!2 list!806)))) 1) (size!4 lt!15265)))))

(declare-fun b!71865 () Bool)

(declare-fun e!38880 () List!601)

(assert (=> b!71865 (= e!38880 (Cons!558 (head!968 (init!2 list!806)) Nil!559))))

(declare-fun b!71866 () Bool)

(assert (=> b!71866 (= e!38880 (Cons!558 (head!968 (reverse!1 (tail!989 (init!2 list!806)))) (addLast!0 (tail!989 (reverse!1 (tail!989 (init!2 list!806)))) (head!968 (init!2 list!806)))))))

(declare-fun d!54319 () Bool)

(assert (=> d!54319 e!38879))

(declare-fun res!35181 () Bool)

(assert (=> d!54319 (=> (not res!35181) (not e!38879))))

(assert (=> d!54319 (= res!35181 (is-Cons!558 lt!15265))))

(assert (=> d!54319 (= lt!15265 e!38880)))

(declare-fun c!17231 () Bool)

(assert (=> d!54319 (= c!17231 (is-Cons!558 (reverse!1 (tail!989 (init!2 list!806)))))))

(assert (=> d!54319 (= (addLast!0 (reverse!1 (tail!989 (init!2 list!806))) (head!968 (init!2 list!806))) lt!15265)))

(assert (= (and d!54319 c!17231) b!71866))

(assert (= (and d!54319 (not c!17231)) b!71865))

(assert (= (and d!54319 res!35181) b!71862))

(assert (= (and b!71862 res!35180) b!71863))

(assert (= (and b!71863 res!35182) b!71864))

(declare-fun m!71854 () Bool)

(assert (=> b!71862 m!71854))

(declare-fun m!71856 () Bool)

(assert (=> b!71863 m!71856))

(assert (=> b!71864 m!71824))

(declare-fun m!71858 () Bool)

(assert (=> b!71864 m!71858))

(declare-fun m!71860 () Bool)

(assert (=> b!71864 m!71860))

(declare-fun m!71862 () Bool)

(assert (=> b!71866 m!71862))

(assert (=> b!71824 d!54319))

(declare-fun d!54321 () Bool)

(declare-fun e!38882 () Bool)

(assert (=> d!54321 e!38882))

(declare-fun res!35184 () Bool)

(assert (=> d!54321 (=> (not res!35184) (not e!38882))))

(declare-fun lt!15266 () List!601)

(assert (=> d!54321 (= res!35184 (= (lastOption!1 lt!15266) (headOption!1 (tail!989 (init!2 list!806)))))))

(declare-fun e!38881 () List!601)

(assert (=> d!54321 (= lt!15266 e!38881)))

(declare-fun c!17232 () Bool)

(assert (=> d!54321 (= c!17232 (is-Cons!558 (tail!989 (init!2 list!806))))))

(assert (=> d!54321 (= (reverse!1 (tail!989 (init!2 list!806))) lt!15266)))

(declare-fun b!71868 () Bool)

(assert (=> b!71868 (= e!38881 Nil!559)))

(declare-fun b!71867 () Bool)

(assert (=> b!71867 (= e!38881 (addLast!0 (reverse!1 (tail!989 (tail!989 (init!2 list!806)))) (head!968 (tail!989 (init!2 list!806)))))))

(declare-fun b!71869 () Bool)

(declare-fun res!35183 () Bool)

(assert (=> b!71869 (=> (not res!35183) (not e!38882))))

(assert (=> b!71869 (= res!35183 (= (lastOption!1 (tail!989 (init!2 list!806))) (headOption!1 lt!15266)))))

(declare-fun b!71870 () Bool)

(assert (=> b!71870 (= e!38882 (= (size!4 lt!15266) (size!4 (tail!989 (init!2 list!806)))))))

(assert (= (and d!54321 c!17232) b!71867))

(assert (= (and d!54321 (not c!17232)) b!71868))

(assert (= (and d!54321 res!35184) b!71869))

(assert (= (and b!71869 res!35183) b!71870))

(declare-fun m!71864 () Bool)

(assert (=> d!54321 m!71864))

(declare-fun m!71866 () Bool)

(assert (=> d!54321 m!71866))

(declare-fun m!71868 () Bool)

(assert (=> b!71867 m!71868))

(assert (=> b!71867 m!71868))

(declare-fun m!71870 () Bool)

(assert (=> b!71867 m!71870))

(declare-fun m!71872 () Bool)

(assert (=> b!71869 m!71872))

(declare-fun m!71874 () Bool)

(assert (=> b!71869 m!71874))

(declare-fun m!71876 () Bool)

(assert (=> b!71870 m!71876))

(assert (=> b!71870 m!71852))

(assert (=> b!71824 d!54321))

(declare-fun b!71871 () Bool)

(declare-fun e!38883 () List!601)

(assert (=> b!71871 (= e!38883 Nil!559)))

(declare-fun b!71873 () Bool)

(declare-fun e!38884 () List!601)

(assert (=> b!71873 (= e!38884 (Cons!558 (head!968 (tail!989 list!806)) (init!2 (tail!989 (tail!989 list!806)))))))

(declare-fun b!71874 () Bool)

(assert (=> b!71874 (= e!38884 Nil!559)))

(declare-fun d!54323 () Bool)

(declare-fun c!17233 () Bool)

(assert (=> d!54323 (= c!17233 (and (is-Cons!558 (tail!989 list!806)) (is-Nil!559 (tail!989 (tail!989 list!806)))))))

(assert (=> d!54323 (= (init!2 (tail!989 list!806)) e!38883)))

(declare-fun b!71872 () Bool)

(assert (=> b!71872 (= e!38883 e!38884)))

(declare-fun c!17234 () Bool)

(assert (=> b!71872 (= c!17234 (is-Cons!558 (tail!989 list!806)))))

(assert (= (and b!71872 c!17234) b!71873))

(assert (= (and b!71872 (not c!17234)) b!71874))

(assert (= (and d!54323 c!17233) b!71871))

(assert (= (and d!54323 (not c!17233)) b!71872))

(declare-fun m!71878 () Bool)

(assert (=> b!71873 m!71878))

(assert (=> b!71838 d!54323))

(declare-fun b!71886 () Bool)

(declare-fun e!38890 () Option!506)

(assert (=> b!71886 (= e!38890 None!483)))

(declare-fun b!71884 () Bool)

(declare-fun e!38889 () Option!506)

(assert (=> b!71884 (= e!38889 e!38890)))

(declare-fun c!17240 () Bool)

(assert (=> b!71884 (= c!17240 (is-Cons!558 list!806))))

(declare-fun b!71885 () Bool)

(assert (=> b!71885 (= e!38890 (lastOption!1 (tail!989 list!806)))))

(declare-fun d!54325 () Bool)

(declare-fun c!17239 () Bool)

(assert (=> d!54325 (= c!17239 (and (is-Cons!558 list!806) (is-Nil!559 (tail!989 list!806))))))

(assert (=> d!54325 (= (lastOption!1 list!806) e!38889)))

(declare-fun b!71883 () Bool)

(assert (=> b!71883 (= e!38889 (Some!482 (head!968 list!806)))))

(assert (= (and b!71884 c!17240) b!71885))

(assert (= (and b!71884 (not c!17240)) b!71886))

(assert (= (and d!54325 c!17239) b!71883))

(assert (= (and d!54325 (not c!17239)) b!71884))

(declare-fun m!71880 () Bool)

(assert (=> b!71885 m!71880))

(assert (=> b!71842 d!54325))

(declare-fun d!54327 () Bool)

(assert (=> d!54327 (= (headOption!1 lt!15258) (ite (is-Cons!558 lt!15258) (Some!482 (head!968 lt!15258)) None!483))))

(assert (=> b!71842 d!54327))

(declare-fun d!54329 () Bool)

(declare-fun e!38891 () Bool)

(assert (=> d!54329 (because!1 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 (tail!989 list!806)))) (tail!45 (reverse!1 (tail!989 (tail!989 list!806)))))) e!38891)))

(declare-fun res!35185 () Bool)

(assert (=> d!54329 (=> res!35185 e!38891)))

(assert (=> d!54329 (= res!35185 (not (is-Cons!558 (tail!989 (tail!989 list!806)))))))

(assert (=> d!54329 (= (reverse_init_equivalence!0 (tail!989 (tail!989 list!806))) true)))

(declare-fun b!71887 () Bool)

(assert (=> b!71887 (= e!38891 (reverse_init_equivalence!0 (tail!989 (tail!989 (tail!989 list!806)))))))

(assert (= (and d!54329 (not res!35185)) b!71887))

(declare-fun m!71882 () Bool)

(assert (=> d!54329 m!71882))

(declare-fun m!71884 () Bool)

(assert (=> d!54329 m!71884))

(declare-fun m!71886 () Bool)

(assert (=> d!54329 m!71886))

(assert (=> d!54329 m!71878))

(declare-fun m!71888 () Bool)

(assert (=> d!54329 m!71888))

(assert (=> d!54329 m!71882))

(assert (=> d!54329 m!71878))

(declare-fun m!71890 () Bool)

(assert (=> b!71887 m!71890))

(assert (=> b!71815 d!54329))

(declare-fun d!54331 () Bool)

(declare-fun lt!15267 () Int)

(assert (=> d!54331 (>= lt!15267 0)))

(declare-fun e!38892 () Int)

(assert (=> d!54331 (= lt!15267 e!38892)))

(declare-fun c!17241 () Bool)

(assert (=> d!54331 (= c!17241 (is-Nil!559 lt!15258))))

(assert (=> d!54331 (= (size!4 lt!15258) lt!15267)))

(declare-fun b!71888 () Bool)

(assert (=> b!71888 (= e!38892 0)))

(declare-fun b!71889 () Bool)

(assert (=> b!71889 (= e!38892 (+ 1 (size!4 (tail!989 lt!15258))))))

(assert (= (and d!54331 c!17241) b!71888))

(assert (= (and d!54331 (not c!17241)) b!71889))

(declare-fun m!71892 () Bool)

(assert (=> b!71889 m!71892))

(assert (=> b!71843 d!54331))

(declare-fun d!54333 () Bool)

(declare-fun lt!15268 () Int)

(assert (=> d!54333 (>= lt!15268 0)))

(declare-fun e!38893 () Int)

(assert (=> d!54333 (= lt!15268 e!38893)))

(declare-fun c!17242 () Bool)

(assert (=> d!54333 (= c!17242 (is-Nil!559 list!806))))

(assert (=> d!54333 (= (size!4 list!806) lt!15268)))

(declare-fun b!71890 () Bool)

(assert (=> b!71890 (= e!38893 0)))

(declare-fun b!71891 () Bool)

(assert (=> b!71891 (= e!38893 (+ 1 (size!4 (tail!989 list!806))))))

(assert (= (and d!54333 c!17242) b!71890))

(assert (= (and d!54333 (not c!17242)) b!71891))

(declare-fun m!71894 () Bool)

(assert (=> b!71891 m!71894))

(assert (=> b!71843 d!54333))

(declare-fun b!71895 () Bool)

(declare-fun e!38895 () Option!506)

(assert (=> b!71895 (= e!38895 None!483)))

(declare-fun b!71893 () Bool)

(declare-fun e!38894 () Option!506)

(assert (=> b!71893 (= e!38894 e!38895)))

(declare-fun c!17244 () Bool)

(assert (=> b!71893 (= c!17244 (is-Cons!558 (init!2 list!806)))))

(declare-fun b!71894 () Bool)

(assert (=> b!71894 (= e!38895 (lastOption!1 (tail!989 (init!2 list!806))))))

(declare-fun d!54335 () Bool)

(declare-fun c!17243 () Bool)

(assert (=> d!54335 (= c!17243 (and (is-Cons!558 (init!2 list!806)) (is-Nil!559 (tail!989 (init!2 list!806)))))))

(assert (=> d!54335 (= (lastOption!1 (init!2 list!806)) e!38894)))

(declare-fun b!71892 () Bool)

(assert (=> b!71892 (= e!38894 (Some!482 (head!968 (init!2 list!806))))))

(assert (= (and b!71893 c!17244) b!71894))

(assert (= (and b!71893 (not c!17244)) b!71895))

(assert (= (and d!54335 c!17243) b!71892))

(assert (= (and d!54335 (not c!17243)) b!71893))

(assert (=> b!71894 m!71872))

(assert (=> b!71826 d!54335))

(declare-fun d!54337 () Bool)

(assert (=> d!54337 (= (headOption!1 lt!15257) (ite (is-Cons!558 lt!15257) (Some!482 (head!968 lt!15257)) None!483))))

(assert (=> b!71826 d!54337))

(declare-fun b!71896 () Bool)

(declare-fun res!35186 () Bool)

(declare-fun e!38896 () Bool)

(assert (=> b!71896 (=> (not res!35186) (not e!38896))))

(declare-fun lt!15269 () List!601)

(assert (=> b!71896 (= res!35186 (= (lastOption!1 lt!15269) (Some!482 (head!968 list!806))))))

(declare-fun b!71897 () Bool)

(declare-fun res!35188 () Bool)

(assert (=> b!71897 (=> (not res!35188) (not e!38896))))

(assert (=> b!71897 (= res!35188 (= (init!2 lt!15269) (reverse!1 (tail!989 list!806))))))

(declare-fun b!71898 () Bool)

(assert (=> b!71898 (= e!38896 (= (+ (size!4 (reverse!1 (tail!989 list!806))) 1) (size!4 lt!15269)))))

(declare-fun b!71899 () Bool)

(declare-fun e!38897 () List!601)

(assert (=> b!71899 (= e!38897 (Cons!558 (head!968 list!806) Nil!559))))

(declare-fun b!71900 () Bool)

(assert (=> b!71900 (= e!38897 (Cons!558 (head!968 (reverse!1 (tail!989 list!806))) (addLast!0 (tail!989 (reverse!1 (tail!989 list!806))) (head!968 list!806))))))

(declare-fun d!54339 () Bool)

(assert (=> d!54339 e!38896))

(declare-fun res!35187 () Bool)

(assert (=> d!54339 (=> (not res!35187) (not e!38896))))

(assert (=> d!54339 (= res!35187 (is-Cons!558 lt!15269))))

(assert (=> d!54339 (= lt!15269 e!38897)))

(declare-fun c!17245 () Bool)

(assert (=> d!54339 (= c!17245 (is-Cons!558 (reverse!1 (tail!989 list!806))))))

(assert (=> d!54339 (= (addLast!0 (reverse!1 (tail!989 list!806)) (head!968 list!806)) lt!15269)))

(assert (= (and d!54339 c!17245) b!71900))

(assert (= (and d!54339 (not c!17245)) b!71899))

(assert (= (and d!54339 res!35187) b!71896))

(assert (= (and b!71896 res!35186) b!71897))

(assert (= (and b!71897 res!35188) b!71898))

(declare-fun m!71896 () Bool)

(assert (=> b!71896 m!71896))

(declare-fun m!71898 () Bool)

(assert (=> b!71897 m!71898))

(assert (=> b!71898 m!71808))

(declare-fun m!71900 () Bool)

(assert (=> b!71898 m!71900))

(declare-fun m!71902 () Bool)

(assert (=> b!71898 m!71902))

(declare-fun m!71904 () Bool)

(assert (=> b!71900 m!71904))

(assert (=> b!71840 d!54339))

(declare-fun d!54341 () Bool)

(declare-fun e!38899 () Bool)

(assert (=> d!54341 e!38899))

(declare-fun res!35190 () Bool)

(assert (=> d!54341 (=> (not res!35190) (not e!38899))))

(declare-fun lt!15270 () List!601)

(assert (=> d!54341 (= res!35190 (= (lastOption!1 lt!15270) (headOption!1 (tail!989 list!806))))))

(declare-fun e!38898 () List!601)

(assert (=> d!54341 (= lt!15270 e!38898)))

(declare-fun c!17246 () Bool)

(assert (=> d!54341 (= c!17246 (is-Cons!558 (tail!989 list!806)))))

(assert (=> d!54341 (= (reverse!1 (tail!989 list!806)) lt!15270)))

(declare-fun b!71902 () Bool)

(assert (=> b!71902 (= e!38898 Nil!559)))

(declare-fun b!71901 () Bool)

(assert (=> b!71901 (= e!38898 (addLast!0 (reverse!1 (tail!989 (tail!989 list!806))) (head!968 (tail!989 list!806))))))

(declare-fun b!71903 () Bool)

(declare-fun res!35189 () Bool)

(assert (=> b!71903 (=> (not res!35189) (not e!38899))))

(assert (=> b!71903 (= res!35189 (= (lastOption!1 (tail!989 list!806)) (headOption!1 lt!15270)))))

(declare-fun b!71904 () Bool)

(assert (=> b!71904 (= e!38899 (= (size!4 lt!15270) (size!4 (tail!989 list!806))))))

(assert (= (and d!54341 c!17246) b!71901))

(assert (= (and d!54341 (not c!17246)) b!71902))

(assert (= (and d!54341 res!35190) b!71903))

(assert (= (and b!71903 res!35189) b!71904))

(declare-fun m!71906 () Bool)

(assert (=> d!54341 m!71906))

(declare-fun m!71908 () Bool)

(assert (=> d!54341 m!71908))

(assert (=> b!71901 m!71882))

(assert (=> b!71901 m!71882))

(declare-fun m!71910 () Bool)

(assert (=> b!71901 m!71910))

(assert (=> b!71903 m!71880))

(declare-fun m!71912 () Bool)

(assert (=> b!71903 m!71912))

(declare-fun m!71914 () Bool)

(assert (=> b!71904 m!71914))

(assert (=> b!71904 m!71894))

(assert (=> b!71840 d!54341))

(declare-fun b!71908 () Bool)

(declare-fun e!38901 () Option!506)

(assert (=> b!71908 (= e!38901 None!483)))

(declare-fun b!71906 () Bool)

(declare-fun e!38900 () Option!506)

(assert (=> b!71906 (= e!38900 e!38901)))

(declare-fun c!17248 () Bool)

(assert (=> b!71906 (= c!17248 (is-Cons!558 lt!15257))))

(declare-fun b!71907 () Bool)

(assert (=> b!71907 (= e!38901 (lastOption!1 (tail!989 lt!15257)))))

(declare-fun d!54343 () Bool)

(declare-fun c!17247 () Bool)

(assert (=> d!54343 (= c!17247 (and (is-Cons!558 lt!15257) (is-Nil!559 (tail!989 lt!15257))))))

(assert (=> d!54343 (= (lastOption!1 lt!15257) e!38900)))

(declare-fun b!71905 () Bool)

(assert (=> b!71905 (= e!38900 (Some!482 (head!968 lt!15257)))))

(assert (= (and b!71906 c!17248) b!71907))

(assert (= (and b!71906 (not c!17248)) b!71908))

(assert (= (and d!54343 c!17247) b!71905))

(assert (= (and d!54343 (not c!17247)) b!71906))

(declare-fun m!71916 () Bool)

(assert (=> b!71907 m!71916))

(assert (=> d!54305 d!54343))

(declare-fun d!54345 () Bool)

(assert (=> d!54345 (= (headOption!1 (init!2 list!806)) (ite (is-Cons!558 (init!2 list!806)) (Some!482 (head!968 (init!2 list!806))) None!483))))

(assert (=> d!54305 d!54345))

(declare-fun b!71912 () Bool)

(declare-fun e!38903 () Option!506)

(assert (=> b!71912 (= e!38903 None!483)))

(declare-fun b!71910 () Bool)

(declare-fun e!38902 () Option!506)

(assert (=> b!71910 (= e!38902 e!38903)))

(declare-fun c!17250 () Bool)

(assert (=> b!71910 (= c!17250 (is-Cons!558 lt!15258))))

(declare-fun b!71911 () Bool)

(assert (=> b!71911 (= e!38903 (lastOption!1 (tail!989 lt!15258)))))

(declare-fun d!54347 () Bool)

(declare-fun c!17249 () Bool)

(assert (=> d!54347 (= c!17249 (and (is-Cons!558 lt!15258) (is-Nil!559 (tail!989 lt!15258))))))

(assert (=> d!54347 (= (lastOption!1 lt!15258) e!38902)))

(declare-fun b!71909 () Bool)

(assert (=> b!71909 (= e!38902 (Some!482 (head!968 lt!15258)))))

(assert (= (and b!71910 c!17250) b!71911))

(assert (= (and b!71910 (not c!17250)) b!71912))

(assert (= (and d!54347 c!17249) b!71909))

(assert (= (and d!54347 (not c!17249)) b!71910))

(declare-fun m!71918 () Bool)

(assert (=> b!71911 m!71918))

(assert (=> d!54313 d!54347))

(declare-fun d!54349 () Bool)

(assert (=> d!54349 (= (headOption!1 list!806) (ite (is-Cons!558 list!806) (Some!482 (head!968 list!806)) None!483))))

(assert (=> d!54313 d!54349))

(declare-fun d!54351 () Bool)

(assert (=> d!54351 (= (tail!45 (reverse!1 (tail!989 list!806))) (ite (is-Cons!558 (reverse!1 (tail!989 list!806))) (tail!989 (reverse!1 (tail!989 list!806))) Nil!559))))

(assert (=> d!54303 d!54351))

(declare-fun d!54353 () Bool)

(assert (=> d!54353 (= (because!1 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 list!806))) (tail!45 (reverse!1 (tail!989 list!806))))) e!38856) (and e!38856 (prop!498 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 list!806))) (tail!45 (reverse!1 (tail!989 list!806))))))))))

(assert (=> d!54303 d!54353))

(assert (=> d!54303 d!54341))

(declare-fun d!54355 () Bool)

(declare-fun e!38905 () Bool)

(assert (=> d!54355 e!38905))

(declare-fun res!35192 () Bool)

(assert (=> d!54355 (=> (not res!35192) (not e!38905))))

(declare-fun lt!15271 () List!601)

(assert (=> d!54355 (= res!35192 (= (lastOption!1 lt!15271) (headOption!1 (init!2 (tail!989 list!806)))))))

(declare-fun e!38904 () List!601)

(assert (=> d!54355 (= lt!15271 e!38904)))

(declare-fun c!17251 () Bool)

(assert (=> d!54355 (= c!17251 (is-Cons!558 (init!2 (tail!989 list!806))))))

(assert (=> d!54355 (= (reverse!1 (init!2 (tail!989 list!806))) lt!15271)))

(declare-fun b!71914 () Bool)

(assert (=> b!71914 (= e!38904 Nil!559)))

(declare-fun b!71913 () Bool)

(assert (=> b!71913 (= e!38904 (addLast!0 (reverse!1 (tail!989 (init!2 (tail!989 list!806)))) (head!968 (init!2 (tail!989 list!806)))))))

(declare-fun b!71915 () Bool)

(declare-fun res!35191 () Bool)

(assert (=> b!71915 (=> (not res!35191) (not e!38905))))

(assert (=> b!71915 (= res!35191 (= (lastOption!1 (init!2 (tail!989 list!806))) (headOption!1 lt!15271)))))

(declare-fun b!71916 () Bool)

(assert (=> b!71916 (= e!38905 (= (size!4 lt!15271) (size!4 (init!2 (tail!989 list!806)))))))

(assert (= (and d!54355 c!17251) b!71913))

(assert (= (and d!54355 (not c!17251)) b!71914))

(assert (= (and d!54355 res!35192) b!71915))

(assert (= (and b!71915 res!35191) b!71916))

(declare-fun m!71920 () Bool)

(assert (=> d!54355 m!71920))

(assert (=> d!54355 m!71814))

(declare-fun m!71922 () Bool)

(assert (=> d!54355 m!71922))

(declare-fun m!71924 () Bool)

(assert (=> b!71913 m!71924))

(assert (=> b!71913 m!71924))

(declare-fun m!71926 () Bool)

(assert (=> b!71913 m!71926))

(assert (=> b!71915 m!71814))

(declare-fun m!71928 () Bool)

(assert (=> b!71915 m!71928))

(declare-fun m!71930 () Bool)

(assert (=> b!71915 m!71930))

(declare-fun m!71932 () Bool)

(assert (=> b!71916 m!71932))

(assert (=> b!71916 m!71814))

(declare-fun m!71934 () Bool)

(assert (=> b!71916 m!71934))

(assert (=> d!54303 d!54355))

(assert (=> d!54303 d!54323))

(push 1)

(assert (not b!71911))

(assert (not b!71916))

(assert (not b!71896))

(assert (not d!54341))

(assert (not b!71901))

(assert (not b!71913))

(assert (not b!71851))

(assert (not b!71907))

(assert (not b!71862))

(assert (not b!71903))

(assert (not b!71894))

(assert (not b!71889))

(assert (not d!54321))

(assert (not d!54355))

(assert (not b!71915))

(assert (not b!71869))

(assert (not b!71864))

(assert (not b!71885))

(assert (not b!71891))

(assert (not b!71849))

(assert (not b!71870))

(assert (not b!71904))

(assert (not b!71867))

(assert (not b!71866))

(assert (not b!71900))

(assert (not b!71863))

(assert (not b!71897))

(assert (not b!71887))

(assert (not b!71873))

(assert (not b!71898))

(assert (not d!54329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!71920 () Bool)

(declare-fun e!38907 () Option!506)

(assert (=> b!71920 (= e!38907 None!483)))

(declare-fun b!71918 () Bool)

(declare-fun e!38906 () Option!506)

(assert (=> b!71918 (= e!38906 e!38907)))

(declare-fun c!17253 () Bool)

(assert (=> b!71918 (= c!17253 (is-Cons!558 (tail!989 lt!15257)))))

(declare-fun b!71919 () Bool)

(assert (=> b!71919 (= e!38907 (lastOption!1 (tail!989 (tail!989 lt!15257))))))

(declare-fun d!54357 () Bool)

(declare-fun c!17252 () Bool)

(assert (=> d!54357 (= c!17252 (and (is-Cons!558 (tail!989 lt!15257)) (is-Nil!559 (tail!989 (tail!989 lt!15257)))))))

(assert (=> d!54357 (= (lastOption!1 (tail!989 lt!15257)) e!38906)))

(declare-fun b!71917 () Bool)

(assert (=> b!71917 (= e!38906 (Some!482 (head!968 (tail!989 lt!15257))))))

(assert (= (and b!71918 c!17253) b!71919))

(assert (= (and b!71918 (not c!17253)) b!71920))

(assert (= (and d!54357 c!17252) b!71917))

(assert (= (and d!54357 (not c!17252)) b!71918))

(declare-fun m!71936 () Bool)

(assert (=> b!71919 m!71936))

(assert (=> b!71907 d!54357))

(declare-fun d!54359 () Bool)

(declare-fun lt!15272 () Int)

(assert (=> d!54359 (>= lt!15272 0)))

(declare-fun e!38908 () Int)

(assert (=> d!54359 (= lt!15272 e!38908)))

(declare-fun c!17254 () Bool)

(assert (=> d!54359 (= c!17254 (is-Nil!559 (tail!989 list!806)))))

(assert (=> d!54359 (= (size!4 (tail!989 list!806)) lt!15272)))

(declare-fun b!71921 () Bool)

(assert (=> b!71921 (= e!38908 0)))

(declare-fun b!71922 () Bool)

(assert (=> b!71922 (= e!38908 (+ 1 (size!4 (tail!989 (tail!989 list!806)))))))

(assert (= (and d!54359 c!17254) b!71921))

(assert (= (and d!54359 (not c!17254)) b!71922))

(declare-fun m!71938 () Bool)

(assert (=> b!71922 m!71938))

(assert (=> b!71891 d!54359))

(declare-fun b!71926 () Bool)

(declare-fun e!38910 () Option!506)

(assert (=> b!71926 (= e!38910 None!483)))

(declare-fun b!71924 () Bool)

(declare-fun e!38909 () Option!506)

(assert (=> b!71924 (= e!38909 e!38910)))

(declare-fun c!17256 () Bool)

(assert (=> b!71924 (= c!17256 (is-Cons!558 (tail!989 list!806)))))

(declare-fun b!71925 () Bool)

(assert (=> b!71925 (= e!38910 (lastOption!1 (tail!989 (tail!989 list!806))))))

(declare-fun d!54361 () Bool)

(declare-fun c!17255 () Bool)

(assert (=> d!54361 (= c!17255 (and (is-Cons!558 (tail!989 list!806)) (is-Nil!559 (tail!989 (tail!989 list!806)))))))

(assert (=> d!54361 (= (lastOption!1 (tail!989 list!806)) e!38909)))

(declare-fun b!71923 () Bool)

(assert (=> b!71923 (= e!38909 (Some!482 (head!968 (tail!989 list!806))))))

(assert (= (and b!71924 c!17256) b!71925))

(assert (= (and b!71924 (not c!17256)) b!71926))

(assert (= (and d!54361 c!17255) b!71923))

(assert (= (and d!54361 (not c!17255)) b!71924))

(declare-fun m!71940 () Bool)

(assert (=> b!71925 m!71940))

(assert (=> b!71903 d!54361))

(declare-fun d!54363 () Bool)

(assert (=> d!54363 (= (headOption!1 lt!15270) (ite (is-Cons!558 lt!15270) (Some!482 (head!968 lt!15270)) None!483))))

(assert (=> b!71903 d!54363))

(declare-fun d!54365 () Bool)

(declare-fun lt!15273 () Int)

(assert (=> d!54365 (>= lt!15273 0)))

(declare-fun e!38911 () Int)

(assert (=> d!54365 (= lt!15273 e!38911)))

(declare-fun c!17257 () Bool)

(assert (=> d!54365 (= c!17257 (is-Nil!559 (tail!989 lt!15257)))))

(assert (=> d!54365 (= (size!4 (tail!989 lt!15257)) lt!15273)))

(declare-fun b!71927 () Bool)

(assert (=> b!71927 (= e!38911 0)))

(declare-fun b!71928 () Bool)

(assert (=> b!71928 (= e!38911 (+ 1 (size!4 (tail!989 (tail!989 lt!15257)))))))

(assert (= (and d!54365 c!17257) b!71927))

(assert (= (and d!54365 (not c!17257)) b!71928))

(declare-fun m!71942 () Bool)

(assert (=> b!71928 m!71942))

(assert (=> b!71849 d!54365))

(declare-fun b!71929 () Bool)

(declare-fun res!35193 () Bool)

(declare-fun e!38912 () Bool)

(assert (=> b!71929 (=> (not res!35193) (not e!38912))))

(declare-fun lt!15274 () List!601)

(assert (=> b!71929 (= res!35193 (= (lastOption!1 lt!15274) (Some!482 (head!968 (tail!989 list!806)))))))

(declare-fun b!71930 () Bool)

(declare-fun res!35195 () Bool)

(assert (=> b!71930 (=> (not res!35195) (not e!38912))))

(assert (=> b!71930 (= res!35195 (= (init!2 lt!15274) (reverse!1 (tail!989 (tail!989 list!806)))))))

(declare-fun b!71931 () Bool)

(assert (=> b!71931 (= e!38912 (= (+ (size!4 (reverse!1 (tail!989 (tail!989 list!806)))) 1) (size!4 lt!15274)))))

(declare-fun b!71932 () Bool)

(declare-fun e!38913 () List!601)

(assert (=> b!71932 (= e!38913 (Cons!558 (head!968 (tail!989 list!806)) Nil!559))))

(declare-fun b!71933 () Bool)

(assert (=> b!71933 (= e!38913 (Cons!558 (head!968 (reverse!1 (tail!989 (tail!989 list!806)))) (addLast!0 (tail!989 (reverse!1 (tail!989 (tail!989 list!806)))) (head!968 (tail!989 list!806)))))))

(declare-fun d!54367 () Bool)

(assert (=> d!54367 e!38912))

(declare-fun res!35194 () Bool)

(assert (=> d!54367 (=> (not res!35194) (not e!38912))))

(assert (=> d!54367 (= res!35194 (is-Cons!558 lt!15274))))

(assert (=> d!54367 (= lt!15274 e!38913)))

(declare-fun c!17258 () Bool)

(assert (=> d!54367 (= c!17258 (is-Cons!558 (reverse!1 (tail!989 (tail!989 list!806)))))))

(assert (=> d!54367 (= (addLast!0 (reverse!1 (tail!989 (tail!989 list!806))) (head!968 (tail!989 list!806))) lt!15274)))

(assert (= (and d!54367 c!17258) b!71933))

(assert (= (and d!54367 (not c!17258)) b!71932))

(assert (= (and d!54367 res!35194) b!71929))

(assert (= (and b!71929 res!35193) b!71930))

(assert (= (and b!71930 res!35195) b!71931))

(declare-fun m!71944 () Bool)

(assert (=> b!71929 m!71944))

(declare-fun m!71946 () Bool)

(assert (=> b!71930 m!71946))

(assert (=> b!71931 m!71882))

(declare-fun m!71948 () Bool)

(assert (=> b!71931 m!71948))

(declare-fun m!71950 () Bool)

(assert (=> b!71931 m!71950))

(declare-fun m!71952 () Bool)

(assert (=> b!71933 m!71952))

(assert (=> b!71901 d!54367))

(declare-fun d!54369 () Bool)

(declare-fun e!38915 () Bool)

(assert (=> d!54369 e!38915))

(declare-fun res!35197 () Bool)

(assert (=> d!54369 (=> (not res!35197) (not e!38915))))

(declare-fun lt!15275 () List!601)

(assert (=> d!54369 (= res!35197 (= (lastOption!1 lt!15275) (headOption!1 (tail!989 (tail!989 list!806)))))))

(declare-fun e!38914 () List!601)

(assert (=> d!54369 (= lt!15275 e!38914)))

(declare-fun c!17259 () Bool)

(assert (=> d!54369 (= c!17259 (is-Cons!558 (tail!989 (tail!989 list!806))))))

(assert (=> d!54369 (= (reverse!1 (tail!989 (tail!989 list!806))) lt!15275)))

(declare-fun b!71935 () Bool)

(assert (=> b!71935 (= e!38914 Nil!559)))

(declare-fun b!71934 () Bool)

(assert (=> b!71934 (= e!38914 (addLast!0 (reverse!1 (tail!989 (tail!989 (tail!989 list!806)))) (head!968 (tail!989 (tail!989 list!806)))))))

(declare-fun b!71936 () Bool)

(declare-fun res!35196 () Bool)

(assert (=> b!71936 (=> (not res!35196) (not e!38915))))

(assert (=> b!71936 (= res!35196 (= (lastOption!1 (tail!989 (tail!989 list!806))) (headOption!1 lt!15275)))))

(declare-fun b!71937 () Bool)

(assert (=> b!71937 (= e!38915 (= (size!4 lt!15275) (size!4 (tail!989 (tail!989 list!806)))))))

(assert (= (and d!54369 c!17259) b!71934))

(assert (= (and d!54369 (not c!17259)) b!71935))

(assert (= (and d!54369 res!35197) b!71936))

(assert (= (and b!71936 res!35196) b!71937))

(declare-fun m!71954 () Bool)

(assert (=> d!54369 m!71954))

(declare-fun m!71956 () Bool)

(assert (=> d!54369 m!71956))

(declare-fun m!71958 () Bool)

(assert (=> b!71934 m!71958))

(assert (=> b!71934 m!71958))

(declare-fun m!71960 () Bool)

(assert (=> b!71934 m!71960))

(assert (=> b!71936 m!71940))

(declare-fun m!71962 () Bool)

(assert (=> b!71936 m!71962))

(declare-fun m!71964 () Bool)

(assert (=> b!71937 m!71964))

(assert (=> b!71937 m!71938))

(assert (=> b!71901 d!54369))

(declare-fun b!71941 () Bool)

(declare-fun e!38917 () Option!506)

(assert (=> b!71941 (= e!38917 None!483)))

(declare-fun b!71939 () Bool)

(declare-fun e!38916 () Option!506)

(assert (=> b!71939 (= e!38916 e!38917)))

(declare-fun c!17261 () Bool)

(assert (=> b!71939 (= c!17261 (is-Cons!558 lt!15271))))

(declare-fun b!71940 () Bool)

(assert (=> b!71940 (= e!38917 (lastOption!1 (tail!989 lt!15271)))))

(declare-fun d!54371 () Bool)

(declare-fun c!17260 () Bool)

(assert (=> d!54371 (= c!17260 (and (is-Cons!558 lt!15271) (is-Nil!559 (tail!989 lt!15271))))))

(assert (=> d!54371 (= (lastOption!1 lt!15271) e!38916)))

(declare-fun b!71938 () Bool)

(assert (=> b!71938 (= e!38916 (Some!482 (head!968 lt!15271)))))

(assert (= (and b!71939 c!17261) b!71940))

(assert (= (and b!71939 (not c!17261)) b!71941))

(assert (= (and d!54371 c!17260) b!71938))

(assert (= (and d!54371 (not c!17260)) b!71939))

(declare-fun m!71966 () Bool)

(assert (=> b!71940 m!71966))

(assert (=> d!54355 d!54371))

(declare-fun d!54373 () Bool)

(assert (=> d!54373 (= (headOption!1 (init!2 (tail!989 list!806))) (ite (is-Cons!558 (init!2 (tail!989 list!806))) (Some!482 (head!968 (init!2 (tail!989 list!806)))) None!483))))

(assert (=> d!54355 d!54373))

(declare-fun b!71945 () Bool)

(declare-fun e!38919 () Option!506)

(assert (=> b!71945 (= e!38919 None!483)))

(declare-fun b!71943 () Bool)

(declare-fun e!38918 () Option!506)

(assert (=> b!71943 (= e!38918 e!38919)))

(declare-fun c!17263 () Bool)

(assert (=> b!71943 (= c!17263 (is-Cons!558 lt!15270))))

(declare-fun b!71944 () Bool)

(assert (=> b!71944 (= e!38919 (lastOption!1 (tail!989 lt!15270)))))

(declare-fun d!54375 () Bool)

(declare-fun c!17262 () Bool)

(assert (=> d!54375 (= c!17262 (and (is-Cons!558 lt!15270) (is-Nil!559 (tail!989 lt!15270))))))

(assert (=> d!54375 (= (lastOption!1 lt!15270) e!38918)))

(declare-fun b!71942 () Bool)

(assert (=> b!71942 (= e!38918 (Some!482 (head!968 lt!15270)))))

(assert (= (and b!71943 c!17263) b!71944))

(assert (= (and b!71943 (not c!17263)) b!71945))

(assert (= (and d!54375 c!17262) b!71942))

(assert (= (and d!54375 (not c!17262)) b!71943))

(declare-fun m!71968 () Bool)

(assert (=> b!71944 m!71968))

(assert (=> d!54341 d!54375))

(declare-fun d!54377 () Bool)

(assert (=> d!54377 (= (headOption!1 (tail!989 list!806)) (ite (is-Cons!558 (tail!989 list!806)) (Some!482 (head!968 (tail!989 list!806))) None!483))))

(assert (=> d!54341 d!54377))

(declare-fun b!71946 () Bool)

(declare-fun res!35198 () Bool)

(declare-fun e!38920 () Bool)

(assert (=> b!71946 (=> (not res!35198) (not e!38920))))

(declare-fun lt!15276 () List!601)

(assert (=> b!71946 (= res!35198 (= (lastOption!1 lt!15276) (Some!482 (head!968 list!806))))))

(declare-fun b!71947 () Bool)

(declare-fun res!35200 () Bool)

(assert (=> b!71947 (=> (not res!35200) (not e!38920))))

(assert (=> b!71947 (= res!35200 (= (init!2 lt!15276) (tail!989 (reverse!1 (tail!989 list!806)))))))

(declare-fun b!71948 () Bool)

(assert (=> b!71948 (= e!38920 (= (+ (size!4 (tail!989 (reverse!1 (tail!989 list!806)))) 1) (size!4 lt!15276)))))

(declare-fun b!71949 () Bool)

(declare-fun e!38921 () List!601)

(assert (=> b!71949 (= e!38921 (Cons!558 (head!968 list!806) Nil!559))))

(declare-fun b!71950 () Bool)

(assert (=> b!71950 (= e!38921 (Cons!558 (head!968 (tail!989 (reverse!1 (tail!989 list!806)))) (addLast!0 (tail!989 (tail!989 (reverse!1 (tail!989 list!806)))) (head!968 list!806))))))

(declare-fun d!54379 () Bool)

(assert (=> d!54379 e!38920))

(declare-fun res!35199 () Bool)

(assert (=> d!54379 (=> (not res!35199) (not e!38920))))

(assert (=> d!54379 (= res!35199 (is-Cons!558 lt!15276))))

(assert (=> d!54379 (= lt!15276 e!38921)))

(declare-fun c!17264 () Bool)

(assert (=> d!54379 (= c!17264 (is-Cons!558 (tail!989 (reverse!1 (tail!989 list!806)))))))

(assert (=> d!54379 (= (addLast!0 (tail!989 (reverse!1 (tail!989 list!806))) (head!968 list!806)) lt!15276)))

(assert (= (and d!54379 c!17264) b!71950))

(assert (= (and d!54379 (not c!17264)) b!71949))

(assert (= (and d!54379 res!35199) b!71946))

(assert (= (and b!71946 res!35198) b!71947))

(assert (= (and b!71947 res!35200) b!71948))

(declare-fun m!71970 () Bool)

(assert (=> b!71946 m!71970))

(declare-fun m!71972 () Bool)

(assert (=> b!71947 m!71972))

(declare-fun m!71974 () Bool)

(assert (=> b!71948 m!71974))

(declare-fun m!71976 () Bool)

(assert (=> b!71948 m!71976))

(declare-fun m!71978 () Bool)

(assert (=> b!71950 m!71978))

(assert (=> b!71900 d!54379))

(declare-fun b!71951 () Bool)

(declare-fun e!38922 () List!601)

(assert (=> b!71951 (= e!38922 Nil!559)))

(declare-fun b!71953 () Bool)

(declare-fun e!38923 () List!601)

(assert (=> b!71953 (= e!38923 (Cons!558 (head!968 (tail!989 (tail!989 list!806))) (init!2 (tail!989 (tail!989 (tail!989 list!806))))))))

(declare-fun b!71954 () Bool)

(assert (=> b!71954 (= e!38923 Nil!559)))

(declare-fun d!54381 () Bool)

(declare-fun c!17265 () Bool)

(assert (=> d!54381 (= c!17265 (and (is-Cons!558 (tail!989 (tail!989 list!806))) (is-Nil!559 (tail!989 (tail!989 (tail!989 list!806))))))))

(assert (=> d!54381 (= (init!2 (tail!989 (tail!989 list!806))) e!38922)))

(declare-fun b!71952 () Bool)

(assert (=> b!71952 (= e!38922 e!38923)))

(declare-fun c!17266 () Bool)

(assert (=> b!71952 (= c!17266 (is-Cons!558 (tail!989 (tail!989 list!806))))))

(assert (= (and b!71952 c!17266) b!71953))

(assert (= (and b!71952 (not c!17266)) b!71954))

(assert (= (and d!54381 c!17265) b!71951))

(assert (= (and d!54381 (not c!17265)) b!71952))

(declare-fun m!71980 () Bool)

(assert (=> b!71953 m!71980))

(assert (=> b!71873 d!54381))

(declare-fun d!54383 () Bool)

(declare-fun lt!15277 () Int)

(assert (=> d!54383 (>= lt!15277 0)))

(declare-fun e!38924 () Int)

(assert (=> d!54383 (= lt!15277 e!38924)))

(declare-fun c!17267 () Bool)

(assert (=> d!54383 (= c!17267 (is-Nil!559 (reverse!1 (tail!989 (init!2 list!806)))))))

(assert (=> d!54383 (= (size!4 (reverse!1 (tail!989 (init!2 list!806)))) lt!15277)))

(declare-fun b!71955 () Bool)

(assert (=> b!71955 (= e!38924 0)))

(declare-fun b!71956 () Bool)

(assert (=> b!71956 (= e!38924 (+ 1 (size!4 (tail!989 (reverse!1 (tail!989 (init!2 list!806)))))))))

(assert (= (and d!54383 c!17267) b!71955))

(assert (= (and d!54383 (not c!17267)) b!71956))

(declare-fun m!71982 () Bool)

(assert (=> b!71956 m!71982))

(assert (=> b!71864 d!54383))

(declare-fun d!54385 () Bool)

(declare-fun lt!15278 () Int)

(assert (=> d!54385 (>= lt!15278 0)))

(declare-fun e!38925 () Int)

(assert (=> d!54385 (= lt!15278 e!38925)))

(declare-fun c!17268 () Bool)

(assert (=> d!54385 (= c!17268 (is-Nil!559 lt!15265))))

(assert (=> d!54385 (= (size!4 lt!15265) lt!15278)))

(declare-fun b!71957 () Bool)

(assert (=> b!71957 (= e!38925 0)))

(declare-fun b!71958 () Bool)

(assert (=> b!71958 (= e!38925 (+ 1 (size!4 (tail!989 lt!15265))))))

(assert (= (and d!54385 c!17268) b!71957))

(assert (= (and d!54385 (not c!17268)) b!71958))

(declare-fun m!71984 () Bool)

(assert (=> b!71958 m!71984))

(assert (=> b!71864 d!54385))

(declare-fun b!71962 () Bool)

(declare-fun e!38927 () Option!506)

(assert (=> b!71962 (= e!38927 None!483)))

(declare-fun b!71960 () Bool)

(declare-fun e!38926 () Option!506)

(assert (=> b!71960 (= e!38926 e!38927)))

(declare-fun c!17270 () Bool)

(assert (=> b!71960 (= c!17270 (is-Cons!558 lt!15269))))

(declare-fun b!71961 () Bool)

(assert (=> b!71961 (= e!38927 (lastOption!1 (tail!989 lt!15269)))))

(declare-fun d!54387 () Bool)

(declare-fun c!17269 () Bool)

(assert (=> d!54387 (= c!17269 (and (is-Cons!558 lt!15269) (is-Nil!559 (tail!989 lt!15269))))))

(assert (=> d!54387 (= (lastOption!1 lt!15269) e!38926)))

(declare-fun b!71959 () Bool)

(assert (=> b!71959 (= e!38926 (Some!482 (head!968 lt!15269)))))

(assert (= (and b!71960 c!17270) b!71961))

(assert (= (and b!71960 (not c!17270)) b!71962))

(assert (= (and d!54387 c!17269) b!71959))

(assert (= (and d!54387 (not c!17269)) b!71960))

(declare-fun m!71986 () Bool)

(assert (=> b!71961 m!71986))

(assert (=> b!71896 d!54387))

(declare-fun d!54389 () Bool)

(declare-fun lt!15279 () Int)

(assert (=> d!54389 (>= lt!15279 0)))

(declare-fun e!38928 () Int)

(assert (=> d!54389 (= lt!15279 e!38928)))

(declare-fun c!17271 () Bool)

(assert (=> d!54389 (= c!17271 (is-Nil!559 lt!15270))))

(assert (=> d!54389 (= (size!4 lt!15270) lt!15279)))

(declare-fun b!71963 () Bool)

(assert (=> b!71963 (= e!38928 0)))

(declare-fun b!71964 () Bool)

(assert (=> b!71964 (= e!38928 (+ 1 (size!4 (tail!989 lt!15270))))))

(assert (= (and d!54389 c!17271) b!71963))

(assert (= (and d!54389 (not c!17271)) b!71964))

(declare-fun m!71988 () Bool)

(assert (=> b!71964 m!71988))

(assert (=> b!71904 d!54389))

(assert (=> b!71904 d!54359))

(declare-fun b!71968 () Bool)

(declare-fun e!38930 () Option!506)

(assert (=> b!71968 (= e!38930 None!483)))

(declare-fun b!71966 () Bool)

(declare-fun e!38929 () Option!506)

(assert (=> b!71966 (= e!38929 e!38930)))

(declare-fun c!17273 () Bool)

(assert (=> b!71966 (= c!17273 (is-Cons!558 lt!15266))))

(declare-fun b!71967 () Bool)

(assert (=> b!71967 (= e!38930 (lastOption!1 (tail!989 lt!15266)))))

(declare-fun d!54391 () Bool)

(declare-fun c!17272 () Bool)

(assert (=> d!54391 (= c!17272 (and (is-Cons!558 lt!15266) (is-Nil!559 (tail!989 lt!15266))))))

(assert (=> d!54391 (= (lastOption!1 lt!15266) e!38929)))

(declare-fun b!71965 () Bool)

(assert (=> b!71965 (= e!38929 (Some!482 (head!968 lt!15266)))))

(assert (= (and b!71966 c!17273) b!71967))

(assert (= (and b!71966 (not c!17273)) b!71968))

(assert (= (and d!54391 c!17272) b!71965))

(assert (= (and d!54391 (not c!17272)) b!71966))

(declare-fun m!71990 () Bool)

(assert (=> b!71967 m!71990))

(assert (=> d!54321 d!54391))

(declare-fun d!54393 () Bool)

(assert (=> d!54393 (= (headOption!1 (tail!989 (init!2 list!806))) (ite (is-Cons!558 (tail!989 (init!2 list!806))) (Some!482 (head!968 (tail!989 (init!2 list!806)))) None!483))))

(assert (=> d!54321 d!54393))

(declare-fun b!71972 () Bool)

(declare-fun e!38932 () Option!506)

(assert (=> b!71972 (= e!38932 None!483)))

(declare-fun b!71970 () Bool)

(declare-fun e!38931 () Option!506)

(assert (=> b!71970 (= e!38931 e!38932)))

(declare-fun c!17275 () Bool)

(assert (=> b!71970 (= c!17275 (is-Cons!558 (tail!989 (init!2 list!806))))))

(declare-fun b!71971 () Bool)

(assert (=> b!71971 (= e!38932 (lastOption!1 (tail!989 (tail!989 (init!2 list!806)))))))

(declare-fun d!54395 () Bool)

(declare-fun c!17274 () Bool)

(assert (=> d!54395 (= c!17274 (and (is-Cons!558 (tail!989 (init!2 list!806))) (is-Nil!559 (tail!989 (tail!989 (init!2 list!806))))))))

(assert (=> d!54395 (= (lastOption!1 (tail!989 (init!2 list!806))) e!38931)))

(declare-fun b!71969 () Bool)

(assert (=> b!71969 (= e!38931 (Some!482 (head!968 (tail!989 (init!2 list!806)))))))

(assert (= (and b!71970 c!17275) b!71971))

(assert (= (and b!71970 (not c!17275)) b!71972))

(assert (= (and d!54395 c!17274) b!71969))

(assert (= (and d!54395 (not c!17274)) b!71970))

(declare-fun m!71992 () Bool)

(assert (=> b!71971 m!71992))

(assert (=> b!71894 d!54395))

(declare-fun d!54397 () Bool)

(declare-fun lt!15280 () Int)

(assert (=> d!54397 (>= lt!15280 0)))

(declare-fun e!38933 () Int)

(assert (=> d!54397 (= lt!15280 e!38933)))

(declare-fun c!17276 () Bool)

(assert (=> d!54397 (= c!17276 (is-Nil!559 (tail!989 lt!15258)))))

(assert (=> d!54397 (= (size!4 (tail!989 lt!15258)) lt!15280)))

(declare-fun b!71973 () Bool)

(assert (=> b!71973 (= e!38933 0)))

(declare-fun b!71974 () Bool)

(assert (=> b!71974 (= e!38933 (+ 1 (size!4 (tail!989 (tail!989 lt!15258)))))))

(assert (= (and d!54397 c!17276) b!71973))

(assert (= (and d!54397 (not c!17276)) b!71974))

(declare-fun m!71994 () Bool)

(assert (=> b!71974 m!71994))

(assert (=> b!71889 d!54397))

(declare-fun b!71975 () Bool)

(declare-fun res!35201 () Bool)

(declare-fun e!38934 () Bool)

(assert (=> b!71975 (=> (not res!35201) (not e!38934))))

(declare-fun lt!15281 () List!601)

(assert (=> b!71975 (= res!35201 (= (lastOption!1 lt!15281) (Some!482 (head!968 (init!2 (tail!989 list!806))))))))

(declare-fun b!71976 () Bool)

(declare-fun res!35203 () Bool)

(assert (=> b!71976 (=> (not res!35203) (not e!38934))))

(assert (=> b!71976 (= res!35203 (= (init!2 lt!15281) (reverse!1 (tail!989 (init!2 (tail!989 list!806))))))))

(declare-fun b!71977 () Bool)

(assert (=> b!71977 (= e!38934 (= (+ (size!4 (reverse!1 (tail!989 (init!2 (tail!989 list!806))))) 1) (size!4 lt!15281)))))

(declare-fun b!71978 () Bool)

(declare-fun e!38935 () List!601)

(assert (=> b!71978 (= e!38935 (Cons!558 (head!968 (init!2 (tail!989 list!806))) Nil!559))))

(declare-fun b!71979 () Bool)

(assert (=> b!71979 (= e!38935 (Cons!558 (head!968 (reverse!1 (tail!989 (init!2 (tail!989 list!806))))) (addLast!0 (tail!989 (reverse!1 (tail!989 (init!2 (tail!989 list!806))))) (head!968 (init!2 (tail!989 list!806))))))))

(declare-fun d!54399 () Bool)

(assert (=> d!54399 e!38934))

(declare-fun res!35202 () Bool)

(assert (=> d!54399 (=> (not res!35202) (not e!38934))))

(assert (=> d!54399 (= res!35202 (is-Cons!558 lt!15281))))

(assert (=> d!54399 (= lt!15281 e!38935)))

(declare-fun c!17277 () Bool)

(assert (=> d!54399 (= c!17277 (is-Cons!558 (reverse!1 (tail!989 (init!2 (tail!989 list!806))))))))

(assert (=> d!54399 (= (addLast!0 (reverse!1 (tail!989 (init!2 (tail!989 list!806)))) (head!968 (init!2 (tail!989 list!806)))) lt!15281)))

(assert (= (and d!54399 c!17277) b!71979))

(assert (= (and d!54399 (not c!17277)) b!71978))

(assert (= (and d!54399 res!35202) b!71975))

(assert (= (and b!71975 res!35201) b!71976))

(assert (= (and b!71976 res!35203) b!71977))

(declare-fun m!71996 () Bool)

(assert (=> b!71975 m!71996))

(declare-fun m!71998 () Bool)

(assert (=> b!71976 m!71998))

(assert (=> b!71977 m!71924))

(declare-fun m!72000 () Bool)

(assert (=> b!71977 m!72000))

(declare-fun m!72002 () Bool)

(assert (=> b!71977 m!72002))

(declare-fun m!72004 () Bool)

(assert (=> b!71979 m!72004))

(assert (=> b!71913 d!54399))

(declare-fun d!54401 () Bool)

(declare-fun e!38937 () Bool)

(assert (=> d!54401 e!38937))

(declare-fun res!35205 () Bool)

(assert (=> d!54401 (=> (not res!35205) (not e!38937))))

(declare-fun lt!15282 () List!601)

(assert (=> d!54401 (= res!35205 (= (lastOption!1 lt!15282) (headOption!1 (tail!989 (init!2 (tail!989 list!806))))))))

(declare-fun e!38936 () List!601)

(assert (=> d!54401 (= lt!15282 e!38936)))

(declare-fun c!17278 () Bool)

(assert (=> d!54401 (= c!17278 (is-Cons!558 (tail!989 (init!2 (tail!989 list!806)))))))

(assert (=> d!54401 (= (reverse!1 (tail!989 (init!2 (tail!989 list!806)))) lt!15282)))

(declare-fun b!71981 () Bool)

(assert (=> b!71981 (= e!38936 Nil!559)))

(declare-fun b!71980 () Bool)

(assert (=> b!71980 (= e!38936 (addLast!0 (reverse!1 (tail!989 (tail!989 (init!2 (tail!989 list!806))))) (head!968 (tail!989 (init!2 (tail!989 list!806))))))))

(declare-fun b!71982 () Bool)

(declare-fun res!35204 () Bool)

(assert (=> b!71982 (=> (not res!35204) (not e!38937))))

(assert (=> b!71982 (= res!35204 (= (lastOption!1 (tail!989 (init!2 (tail!989 list!806)))) (headOption!1 lt!15282)))))

(declare-fun b!71983 () Bool)

(assert (=> b!71983 (= e!38937 (= (size!4 lt!15282) (size!4 (tail!989 (init!2 (tail!989 list!806))))))))

(assert (= (and d!54401 c!17278) b!71980))

(assert (= (and d!54401 (not c!17278)) b!71981))

(assert (= (and d!54401 res!35205) b!71982))

(assert (= (and b!71982 res!35204) b!71983))

(declare-fun m!72006 () Bool)

(assert (=> d!54401 m!72006))

(declare-fun m!72008 () Bool)

(assert (=> d!54401 m!72008))

(declare-fun m!72010 () Bool)

(assert (=> b!71980 m!72010))

(assert (=> b!71980 m!72010))

(declare-fun m!72012 () Bool)

(assert (=> b!71980 m!72012))

(declare-fun m!72014 () Bool)

(assert (=> b!71982 m!72014))

(declare-fun m!72016 () Bool)

(assert (=> b!71982 m!72016))

(declare-fun m!72018 () Bool)

(assert (=> b!71983 m!72018))

(declare-fun m!72020 () Bool)

(assert (=> b!71983 m!72020))

(assert (=> b!71913 d!54401))

(assert (=> b!71885 d!54361))

(declare-fun b!71987 () Bool)

(declare-fun e!38939 () Option!506)

(assert (=> b!71987 (= e!38939 None!483)))

(declare-fun b!71985 () Bool)

(declare-fun e!38938 () Option!506)

(assert (=> b!71985 (= e!38938 e!38939)))

(declare-fun c!17280 () Bool)

(assert (=> b!71985 (= c!17280 (is-Cons!558 (tail!989 lt!15258)))))

(declare-fun b!71986 () Bool)

(assert (=> b!71986 (= e!38939 (lastOption!1 (tail!989 (tail!989 lt!15258))))))

(declare-fun d!54403 () Bool)

(declare-fun c!17279 () Bool)

(assert (=> d!54403 (= c!17279 (and (is-Cons!558 (tail!989 lt!15258)) (is-Nil!559 (tail!989 (tail!989 lt!15258)))))))

(assert (=> d!54403 (= (lastOption!1 (tail!989 lt!15258)) e!38938)))

(declare-fun b!71984 () Bool)

(assert (=> b!71984 (= e!38938 (Some!482 (head!968 (tail!989 lt!15258))))))

(assert (= (and b!71985 c!17280) b!71986))

(assert (= (and b!71985 (not c!17280)) b!71987))

(assert (= (and d!54403 c!17279) b!71984))

(assert (= (and d!54403 (not c!17279)) b!71985))

(declare-fun m!72022 () Bool)

(assert (=> b!71986 m!72022))

(assert (=> b!71911 d!54403))

(declare-fun b!71988 () Bool)

(declare-fun e!38940 () List!601)

(assert (=> b!71988 (= e!38940 Nil!559)))

(declare-fun b!71990 () Bool)

(declare-fun e!38941 () List!601)

(assert (=> b!71990 (= e!38941 (Cons!558 (head!968 lt!15265) (init!2 (tail!989 lt!15265))))))

(declare-fun b!71991 () Bool)

(assert (=> b!71991 (= e!38941 Nil!559)))

(declare-fun d!54405 () Bool)

(declare-fun c!17281 () Bool)

(assert (=> d!54405 (= c!17281 (and (is-Cons!558 lt!15265) (is-Nil!559 (tail!989 lt!15265))))))

(assert (=> d!54405 (= (init!2 lt!15265) e!38940)))

(declare-fun b!71989 () Bool)

(assert (=> b!71989 (= e!38940 e!38941)))

(declare-fun c!17282 () Bool)

(assert (=> b!71989 (= c!17282 (is-Cons!558 lt!15265))))

(assert (= (and b!71989 c!17282) b!71990))

(assert (= (and b!71989 (not c!17282)) b!71991))

(assert (= (and d!54405 c!17281) b!71988))

(assert (= (and d!54405 (not c!17281)) b!71989))

(declare-fun m!72024 () Bool)

(assert (=> b!71990 m!72024))

(assert (=> b!71863 d!54405))

(declare-fun d!54407 () Bool)

(declare-fun e!38943 () Bool)

(assert (=> d!54407 e!38943))

(declare-fun res!35207 () Bool)

(assert (=> d!54407 (=> (not res!35207) (not e!38943))))

(declare-fun lt!15283 () List!601)

(assert (=> d!54407 (= res!35207 (= (lastOption!1 lt!15283) (headOption!1 (init!2 (tail!989 (tail!989 list!806))))))))

(declare-fun e!38942 () List!601)

(assert (=> d!54407 (= lt!15283 e!38942)))

(declare-fun c!17283 () Bool)

(assert (=> d!54407 (= c!17283 (is-Cons!558 (init!2 (tail!989 (tail!989 list!806)))))))

(assert (=> d!54407 (= (reverse!1 (init!2 (tail!989 (tail!989 list!806)))) lt!15283)))

(declare-fun b!71993 () Bool)

(assert (=> b!71993 (= e!38942 Nil!559)))

(declare-fun b!71992 () Bool)

(assert (=> b!71992 (= e!38942 (addLast!0 (reverse!1 (tail!989 (init!2 (tail!989 (tail!989 list!806))))) (head!968 (init!2 (tail!989 (tail!989 list!806))))))))

(declare-fun b!71994 () Bool)

(declare-fun res!35206 () Bool)

(assert (=> b!71994 (=> (not res!35206) (not e!38943))))

(assert (=> b!71994 (= res!35206 (= (lastOption!1 (init!2 (tail!989 (tail!989 list!806)))) (headOption!1 lt!15283)))))

(declare-fun b!71995 () Bool)

(assert (=> b!71995 (= e!38943 (= (size!4 lt!15283) (size!4 (init!2 (tail!989 (tail!989 list!806))))))))

(assert (= (and d!54407 c!17283) b!71992))

(assert (= (and d!54407 (not c!17283)) b!71993))

(assert (= (and d!54407 res!35207) b!71994))

(assert (= (and b!71994 res!35206) b!71995))

(declare-fun m!72026 () Bool)

(assert (=> d!54407 m!72026))

(assert (=> d!54407 m!71878))

(declare-fun m!72028 () Bool)

(assert (=> d!54407 m!72028))

(declare-fun m!72030 () Bool)

(assert (=> b!71992 m!72030))

(assert (=> b!71992 m!72030))

(declare-fun m!72032 () Bool)

(assert (=> b!71992 m!72032))

(assert (=> b!71994 m!71878))

(declare-fun m!72034 () Bool)

(assert (=> b!71994 m!72034))

(declare-fun m!72036 () Bool)

(assert (=> b!71994 m!72036))

(declare-fun m!72038 () Bool)

(assert (=> b!71995 m!72038))

(assert (=> b!71995 m!71878))

(declare-fun m!72040 () Bool)

(assert (=> b!71995 m!72040))

(assert (=> d!54329 d!54407))

(assert (=> d!54329 d!54369))

(declare-fun d!54409 () Bool)

(assert (=> d!54409 (= (because!1 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 (tail!989 list!806)))) (tail!45 (reverse!1 (tail!989 (tail!989 list!806)))))) e!38891) (and e!38891 (prop!498 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 (tail!989 list!806)))) (tail!45 (reverse!1 (tail!989 (tail!989 list!806)))))))))))

(assert (=> d!54329 d!54409))

(assert (=> d!54329 d!54381))

(declare-fun d!54411 () Bool)

(assert (=> d!54411 (= (tail!45 (reverse!1 (tail!989 (tail!989 list!806)))) (ite (is-Cons!558 (reverse!1 (tail!989 (tail!989 list!806)))) (tail!989 (reverse!1 (tail!989 (tail!989 list!806)))) Nil!559))))

(assert (=> d!54329 d!54411))

(assert (=> b!71869 d!54395))

(declare-fun d!54413 () Bool)

(assert (=> d!54413 (= (headOption!1 lt!15266) (ite (is-Cons!558 lt!15266) (Some!482 (head!968 lt!15266)) None!483))))

(assert (=> b!71869 d!54413))

(declare-fun d!54415 () Bool)

(declare-fun lt!15284 () Int)

(assert (=> d!54415 (>= lt!15284 0)))

(declare-fun e!38944 () Int)

(assert (=> d!54415 (= lt!15284 e!38944)))

(declare-fun c!17284 () Bool)

(assert (=> d!54415 (= c!17284 (is-Nil!559 lt!15271))))

(assert (=> d!54415 (= (size!4 lt!15271) lt!15284)))

(declare-fun b!71996 () Bool)

(assert (=> b!71996 (= e!38944 0)))

(declare-fun b!71997 () Bool)

(assert (=> b!71997 (= e!38944 (+ 1 (size!4 (tail!989 lt!15271))))))

(assert (= (and d!54415 c!17284) b!71996))

(assert (= (and d!54415 (not c!17284)) b!71997))

(declare-fun m!72042 () Bool)

(assert (=> b!71997 m!72042))

(assert (=> b!71916 d!54415))

(declare-fun d!54417 () Bool)

(declare-fun lt!15285 () Int)

(assert (=> d!54417 (>= lt!15285 0)))

(declare-fun e!38945 () Int)

(assert (=> d!54417 (= lt!15285 e!38945)))

(declare-fun c!17285 () Bool)

(assert (=> d!54417 (= c!17285 (is-Nil!559 (init!2 (tail!989 list!806))))))

(assert (=> d!54417 (= (size!4 (init!2 (tail!989 list!806))) lt!15285)))

(declare-fun b!71998 () Bool)

(assert (=> b!71998 (= e!38945 0)))

(declare-fun b!71999 () Bool)

(assert (=> b!71999 (= e!38945 (+ 1 (size!4 (tail!989 (init!2 (tail!989 list!806))))))))

(assert (= (and d!54417 c!17285) b!71998))

(assert (= (and d!54417 (not c!17285)) b!71999))

(assert (=> b!71999 m!72020))

(assert (=> b!71916 d!54417))

(declare-fun d!54419 () Bool)

(declare-fun lt!15286 () Int)

(assert (=> d!54419 (>= lt!15286 0)))

(declare-fun e!38946 () Int)

(assert (=> d!54419 (= lt!15286 e!38946)))

(declare-fun c!17286 () Bool)

(assert (=> d!54419 (= c!17286 (is-Nil!559 (reverse!1 (tail!989 list!806))))))

(assert (=> d!54419 (= (size!4 (reverse!1 (tail!989 list!806))) lt!15286)))

(declare-fun b!72000 () Bool)

(assert (=> b!72000 (= e!38946 0)))

(declare-fun b!72001 () Bool)

(assert (=> b!72001 (= e!38946 (+ 1 (size!4 (tail!989 (reverse!1 (tail!989 list!806))))))))

(assert (= (and d!54419 c!17286) b!72000))

(assert (= (and d!54419 (not c!17286)) b!72001))

(assert (=> b!72001 m!71974))

(assert (=> b!71898 d!54419))

(declare-fun d!54421 () Bool)

(declare-fun lt!15287 () Int)

(assert (=> d!54421 (>= lt!15287 0)))

(declare-fun e!38947 () Int)

(assert (=> d!54421 (= lt!15287 e!38947)))

(declare-fun c!17287 () Bool)

(assert (=> d!54421 (= c!17287 (is-Nil!559 lt!15269))))

(assert (=> d!54421 (= (size!4 lt!15269) lt!15287)))

(declare-fun b!72002 () Bool)

(assert (=> b!72002 (= e!38947 0)))

(declare-fun b!72003 () Bool)

(assert (=> b!72003 (= e!38947 (+ 1 (size!4 (tail!989 lt!15269))))))

(assert (= (and d!54421 c!17287) b!72002))

(assert (= (and d!54421 (not c!17287)) b!72003))

(declare-fun m!72044 () Bool)

(assert (=> b!72003 m!72044))

(assert (=> b!71898 d!54421))

(declare-fun b!72007 () Bool)

(declare-fun e!38949 () Option!506)

(assert (=> b!72007 (= e!38949 None!483)))

(declare-fun b!72005 () Bool)

(declare-fun e!38948 () Option!506)

(assert (=> b!72005 (= e!38948 e!38949)))

(declare-fun c!17289 () Bool)

(assert (=> b!72005 (= c!17289 (is-Cons!558 lt!15265))))

(declare-fun b!72006 () Bool)

(assert (=> b!72006 (= e!38949 (lastOption!1 (tail!989 lt!15265)))))

(declare-fun d!54423 () Bool)

(declare-fun c!17288 () Bool)

(assert (=> d!54423 (= c!17288 (and (is-Cons!558 lt!15265) (is-Nil!559 (tail!989 lt!15265))))))

(assert (=> d!54423 (= (lastOption!1 lt!15265) e!38948)))

(declare-fun b!72004 () Bool)

(assert (=> b!72004 (= e!38948 (Some!482 (head!968 lt!15265)))))

(assert (= (and b!72005 c!17289) b!72006))

(assert (= (and b!72005 (not c!17289)) b!72007))

(assert (= (and d!54423 c!17288) b!72004))

(assert (= (and d!54423 (not c!17288)) b!72005))

(declare-fun m!72046 () Bool)

(assert (=> b!72006 m!72046))

(assert (=> b!71862 d!54423))

(declare-fun b!72011 () Bool)

(declare-fun e!38951 () Option!506)

(assert (=> b!72011 (= e!38951 None!483)))

(declare-fun b!72009 () Bool)

(declare-fun e!38950 () Option!506)

(assert (=> b!72009 (= e!38950 e!38951)))

(declare-fun c!17291 () Bool)

(assert (=> b!72009 (= c!17291 (is-Cons!558 (init!2 (tail!989 list!806))))))

(declare-fun b!72010 () Bool)

(assert (=> b!72010 (= e!38951 (lastOption!1 (tail!989 (init!2 (tail!989 list!806)))))))

(declare-fun d!54425 () Bool)

(declare-fun c!17290 () Bool)

(assert (=> d!54425 (= c!17290 (and (is-Cons!558 (init!2 (tail!989 list!806))) (is-Nil!559 (tail!989 (init!2 (tail!989 list!806))))))))

(assert (=> d!54425 (= (lastOption!1 (init!2 (tail!989 list!806))) e!38950)))

(declare-fun b!72008 () Bool)

(assert (=> b!72008 (= e!38950 (Some!482 (head!968 (init!2 (tail!989 list!806)))))))

(assert (= (and b!72009 c!17291) b!72010))

(assert (= (and b!72009 (not c!17291)) b!72011))

(assert (= (and d!54425 c!17290) b!72008))

(assert (= (and d!54425 (not c!17290)) b!72009))

(assert (=> b!72010 m!72014))

(assert (=> b!71915 d!54425))

(declare-fun d!54427 () Bool)

(assert (=> d!54427 (= (headOption!1 lt!15271) (ite (is-Cons!558 lt!15271) (Some!482 (head!968 lt!15271)) None!483))))

(assert (=> b!71915 d!54427))

(declare-fun d!54429 () Bool)

(declare-fun lt!15288 () Int)

(assert (=> d!54429 (>= lt!15288 0)))

(declare-fun e!38952 () Int)

(assert (=> d!54429 (= lt!15288 e!38952)))

(declare-fun c!17292 () Bool)

(assert (=> d!54429 (= c!17292 (is-Nil!559 lt!15266))))

(assert (=> d!54429 (= (size!4 lt!15266) lt!15288)))

(declare-fun b!72012 () Bool)

(assert (=> b!72012 (= e!38952 0)))

(declare-fun b!72013 () Bool)

(assert (=> b!72013 (= e!38952 (+ 1 (size!4 (tail!989 lt!15266))))))

(assert (= (and d!54429 c!17292) b!72012))

(assert (= (and d!54429 (not c!17292)) b!72013))

(declare-fun m!72048 () Bool)

(assert (=> b!72013 m!72048))

(assert (=> b!71870 d!54429))

(declare-fun d!54431 () Bool)

(declare-fun lt!15289 () Int)

(assert (=> d!54431 (>= lt!15289 0)))

(declare-fun e!38953 () Int)

(assert (=> d!54431 (= lt!15289 e!38953)))

(declare-fun c!17293 () Bool)

(assert (=> d!54431 (= c!17293 (is-Nil!559 (tail!989 (init!2 list!806))))))

(assert (=> d!54431 (= (size!4 (tail!989 (init!2 list!806))) lt!15289)))

(declare-fun b!72014 () Bool)

(assert (=> b!72014 (= e!38953 0)))

(declare-fun b!72015 () Bool)

(assert (=> b!72015 (= e!38953 (+ 1 (size!4 (tail!989 (tail!989 (init!2 list!806))))))))

(assert (= (and d!54431 c!17293) b!72014))

(assert (= (and d!54431 (not c!17293)) b!72015))

(declare-fun m!72050 () Bool)

(assert (=> b!72015 m!72050))

(assert (=> b!71870 d!54431))

(declare-fun b!72016 () Bool)

(declare-fun res!35208 () Bool)

(declare-fun e!38954 () Bool)

(assert (=> b!72016 (=> (not res!35208) (not e!38954))))

(declare-fun lt!15290 () List!601)

(assert (=> b!72016 (= res!35208 (= (lastOption!1 lt!15290) (Some!482 (head!968 (init!2 list!806)))))))

(declare-fun b!72017 () Bool)

(declare-fun res!35210 () Bool)

(assert (=> b!72017 (=> (not res!35210) (not e!38954))))

(assert (=> b!72017 (= res!35210 (= (init!2 lt!15290) (tail!989 (reverse!1 (tail!989 (init!2 list!806))))))))

(declare-fun b!72018 () Bool)

(assert (=> b!72018 (= e!38954 (= (+ (size!4 (tail!989 (reverse!1 (tail!989 (init!2 list!806))))) 1) (size!4 lt!15290)))))

(declare-fun b!72019 () Bool)

(declare-fun e!38955 () List!601)

(assert (=> b!72019 (= e!38955 (Cons!558 (head!968 (init!2 list!806)) Nil!559))))

(declare-fun b!72020 () Bool)

(assert (=> b!72020 (= e!38955 (Cons!558 (head!968 (tail!989 (reverse!1 (tail!989 (init!2 list!806))))) (addLast!0 (tail!989 (tail!989 (reverse!1 (tail!989 (init!2 list!806))))) (head!968 (init!2 list!806)))))))

(declare-fun d!54433 () Bool)

(assert (=> d!54433 e!38954))

(declare-fun res!35209 () Bool)

(assert (=> d!54433 (=> (not res!35209) (not e!38954))))

(assert (=> d!54433 (= res!35209 (is-Cons!558 lt!15290))))

(assert (=> d!54433 (= lt!15290 e!38955)))

(declare-fun c!17294 () Bool)

(assert (=> d!54433 (= c!17294 (is-Cons!558 (tail!989 (reverse!1 (tail!989 (init!2 list!806))))))))

(assert (=> d!54433 (= (addLast!0 (tail!989 (reverse!1 (tail!989 (init!2 list!806)))) (head!968 (init!2 list!806))) lt!15290)))

(assert (= (and d!54433 c!17294) b!72020))

(assert (= (and d!54433 (not c!17294)) b!72019))

(assert (= (and d!54433 res!35209) b!72016))

(assert (= (and b!72016 res!35208) b!72017))

(assert (= (and b!72017 res!35210) b!72018))

(declare-fun m!72052 () Bool)

(assert (=> b!72016 m!72052))

(declare-fun m!72054 () Bool)

(assert (=> b!72017 m!72054))

(assert (=> b!72018 m!71982))

(declare-fun m!72056 () Bool)

(assert (=> b!72018 m!72056))

(declare-fun m!72058 () Bool)

(assert (=> b!72020 m!72058))

(assert (=> b!71866 d!54433))

(declare-fun d!54435 () Bool)

(declare-fun e!38956 () Bool)

(assert (=> d!54435 (because!1 (ProofOps!377 (= (reverse!1 (init!2 (tail!989 (tail!989 (tail!989 list!806))))) (tail!45 (reverse!1 (tail!989 (tail!989 (tail!989 list!806))))))) e!38956)))

(declare-fun res!35211 () Bool)

(assert (=> d!54435 (=> res!35211 e!38956)))

(assert (=> d!54435 (= res!35211 (not (is-Cons!558 (tail!989 (tail!989 (tail!989 list!806))))))))

(assert (=> d!54435 (= (reverse_init_equivalence!0 (tail!989 (tail!989 (tail!989 list!806)))) true)))

(declare-fun b!72021 () Bool)

(assert (=> b!72021 (= e!38956 (reverse_init_equivalence!0 (tail!989 (tail!989 (tail!989 (tail!989 list!806))))))))

(assert (= (and d!54435 (not res!35211)) b!72021))

(assert (=> d!54435 m!71958))

(declare-fun m!72060 () Bool)

(assert (=> d!54435 m!72060))

(declare-fun m!72062 () Bool)

(assert (=> d!54435 m!72062))

(assert (=> d!54435 m!71980))

(declare-fun m!72064 () Bool)

(assert (=> d!54435 m!72064))

(assert (=> d!54435 m!71958))

(assert (=> d!54435 m!71980))

(declare-fun m!72066 () Bool)

(assert (=> b!72021 m!72066))

(assert (=> b!71887 d!54435))

(assert (=> b!71851 d!54431))

(declare-fun b!72022 () Bool)

(declare-fun e!38957 () List!601)

(assert (=> b!72022 (= e!38957 Nil!559)))

(declare-fun b!72024 () Bool)

(declare-fun e!38958 () List!601)

(assert (=> b!72024 (= e!38958 (Cons!558 (head!968 lt!15269) (init!2 (tail!989 lt!15269))))))

(declare-fun b!72025 () Bool)

(assert (=> b!72025 (= e!38958 Nil!559)))

(declare-fun d!54437 () Bool)

(declare-fun c!17295 () Bool)

(assert (=> d!54437 (= c!17295 (and (is-Cons!558 lt!15269) (is-Nil!559 (tail!989 lt!15269))))))

(assert (=> d!54437 (= (init!2 lt!15269) e!38957)))

(declare-fun b!72023 () Bool)

(assert (=> b!72023 (= e!38957 e!38958)))

(declare-fun c!17296 () Bool)

(assert (=> b!72023 (= c!17296 (is-Cons!558 lt!15269))))

(assert (= (and b!72023 c!17296) b!72024))

(assert (= (and b!72023 (not c!17296)) b!72025))

(assert (= (and d!54437 c!17295) b!72022))

(assert (= (and d!54437 (not c!17295)) b!72023))

(declare-fun m!72068 () Bool)

(assert (=> b!72024 m!72068))

(assert (=> b!71897 d!54437))

(declare-fun b!72026 () Bool)

(declare-fun res!35212 () Bool)

(declare-fun e!38959 () Bool)

(assert (=> b!72026 (=> (not res!35212) (not e!38959))))

(declare-fun lt!15291 () List!601)

(assert (=> b!72026 (= res!35212 (= (lastOption!1 lt!15291) (Some!482 (head!968 (tail!989 (init!2 list!806))))))))

(declare-fun b!72027 () Bool)

(declare-fun res!35214 () Bool)

(assert (=> b!72027 (=> (not res!35214) (not e!38959))))

(assert (=> b!72027 (= res!35214 (= (init!2 lt!15291) (reverse!1 (tail!989 (tail!989 (init!2 list!806))))))))

(declare-fun b!72028 () Bool)

(assert (=> b!72028 (= e!38959 (= (+ (size!4 (reverse!1 (tail!989 (tail!989 (init!2 list!806))))) 1) (size!4 lt!15291)))))

(declare-fun b!72029 () Bool)

(declare-fun e!38960 () List!601)

(assert (=> b!72029 (= e!38960 (Cons!558 (head!968 (tail!989 (init!2 list!806))) Nil!559))))

(declare-fun b!72030 () Bool)

(assert (=> b!72030 (= e!38960 (Cons!558 (head!968 (reverse!1 (tail!989 (tail!989 (init!2 list!806))))) (addLast!0 (tail!989 (reverse!1 (tail!989 (tail!989 (init!2 list!806))))) (head!968 (tail!989 (init!2 list!806))))))))

(declare-fun d!54439 () Bool)

(assert (=> d!54439 e!38959))

(declare-fun res!35213 () Bool)

(assert (=> d!54439 (=> (not res!35213) (not e!38959))))

(assert (=> d!54439 (= res!35213 (is-Cons!558 lt!15291))))

(assert (=> d!54439 (= lt!15291 e!38960)))

(declare-fun c!17297 () Bool)

(assert (=> d!54439 (= c!17297 (is-Cons!558 (reverse!1 (tail!989 (tail!989 (init!2 list!806))))))))

(assert (=> d!54439 (= (addLast!0 (reverse!1 (tail!989 (tail!989 (init!2 list!806)))) (head!968 (tail!989 (init!2 list!806)))) lt!15291)))

(assert (= (and d!54439 c!17297) b!72030))

(assert (= (and d!54439 (not c!17297)) b!72029))

(assert (= (and d!54439 res!35213) b!72026))

(assert (= (and b!72026 res!35212) b!72027))

(assert (= (and b!72027 res!35214) b!72028))

(declare-fun m!72070 () Bool)

(assert (=> b!72026 m!72070))

(declare-fun m!72072 () Bool)

(assert (=> b!72027 m!72072))

(assert (=> b!72028 m!71868))

(declare-fun m!72074 () Bool)

(assert (=> b!72028 m!72074))

(declare-fun m!72076 () Bool)

(assert (=> b!72028 m!72076))

(declare-fun m!72078 () Bool)

(assert (=> b!72030 m!72078))

(assert (=> b!71867 d!54439))

(declare-fun d!54441 () Bool)

(declare-fun e!38962 () Bool)

(assert (=> d!54441 e!38962))

(declare-fun res!35216 () Bool)

(assert (=> d!54441 (=> (not res!35216) (not e!38962))))

(declare-fun lt!15292 () List!601)

(assert (=> d!54441 (= res!35216 (= (lastOption!1 lt!15292) (headOption!1 (tail!989 (tail!989 (init!2 list!806))))))))

(declare-fun e!38961 () List!601)

(assert (=> d!54441 (= lt!15292 e!38961)))

(declare-fun c!17298 () Bool)

(assert (=> d!54441 (= c!17298 (is-Cons!558 (tail!989 (tail!989 (init!2 list!806)))))))

(assert (=> d!54441 (= (reverse!1 (tail!989 (tail!989 (init!2 list!806)))) lt!15292)))

(declare-fun b!72032 () Bool)

(assert (=> b!72032 (= e!38961 Nil!559)))

(declare-fun b!72031 () Bool)

(assert (=> b!72031 (= e!38961 (addLast!0 (reverse!1 (tail!989 (tail!989 (tail!989 (init!2 list!806))))) (head!968 (tail!989 (tail!989 (init!2 list!806))))))))

(declare-fun b!72033 () Bool)

(declare-fun res!35215 () Bool)

(assert (=> b!72033 (=> (not res!35215) (not e!38962))))

(assert (=> b!72033 (= res!35215 (= (lastOption!1 (tail!989 (tail!989 (init!2 list!806)))) (headOption!1 lt!15292)))))

(declare-fun b!72034 () Bool)

(assert (=> b!72034 (= e!38962 (= (size!4 lt!15292) (size!4 (tail!989 (tail!989 (init!2 list!806))))))))

(assert (= (and d!54441 c!17298) b!72031))

(assert (= (and d!54441 (not c!17298)) b!72032))

(assert (= (and d!54441 res!35216) b!72033))

(assert (= (and b!72033 res!35215) b!72034))

(declare-fun m!72080 () Bool)

(assert (=> d!54441 m!72080))

(declare-fun m!72082 () Bool)

(assert (=> d!54441 m!72082))

(declare-fun m!72084 () Bool)

(assert (=> b!72031 m!72084))

(assert (=> b!72031 m!72084))

(declare-fun m!72086 () Bool)

(assert (=> b!72031 m!72086))

(assert (=> b!72033 m!71992))

(declare-fun m!72088 () Bool)

(assert (=> b!72033 m!72088))

(declare-fun m!72090 () Bool)

(assert (=> b!72034 m!72090))

(assert (=> b!72034 m!72050))

(assert (=> b!71867 d!54441))

(push 1)

(assert (not b!71953))

(assert (not b!72017))

(assert (not b!72013))

(assert (not d!54401))

(assert (not b!71933))

(assert (not b!71977))

(assert (not b!72016))

(assert (not b!71976))

(assert (not b!71967))

(assert (not b!71929))

(assert (not b!72020))

(assert (not b!71930))

(assert (not b!71974))

(assert (not b!72031))

(assert (not b!71947))

(assert (not b!71931))

(assert (not b!71922))

(assert (not b!71990))

(assert (not b!71995))

(assert (not b!71956))

(assert (not b!71940))

(assert (not b!72015))

(assert (not b!72033))

(assert (not d!54435))

(assert (not b!72034))

(assert (not b!71975))

(assert (not b!72021))

(assert (not b!71934))

(assert (not b!71936))

(assert (not b!72003))

(assert (not b!72001))

(assert (not b!71937))

(assert (not b!71925))

(assert (not d!54441))

(assert (not b!71982))

(assert (not b!71997))

(assert (not b!71958))

(assert (not b!71999))

(assert (not b!71971))

(assert (not b!72006))

(assert (not b!71983))

(assert (not b!71986))

(assert (not b!71944))

(assert (not b!71992))

(assert (not b!71946))

(assert (not b!72030))

(assert (not b!71980))

(assert (not b!72028))

(assert (not d!54369))

(assert (not b!71979))

(assert (not d!54407))

(assert (not b!71948))

(assert (not b!71961))

(assert (not b!71950))

(assert (not b!72018))

(assert (not b!72027))

(assert (not b!72010))

(assert (not b!72024))

(assert (not b!71928))

(assert (not b!72026))

(assert (not b!71964))

(assert (not b!71994))

(assert (not b!71919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

