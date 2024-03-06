; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9404 () Bool)

(assert start!9404)

(declare-fun res!32834 () Bool)

(declare-fun e!36891 () Bool)

(assert (=> start!9404 (=> (not res!32834) (not e!36891))))

(declare-datatypes () ((Formula!40 (And!45 (lhs!923 Formula!40) (rhs!923 Formula!40)) (Literal!39 (id!4820 Int)) (Implies!45 (lhs!924 Formula!40) (rhs!924 Formula!40)) (Or!45 (lhs!925 Formula!40) (rhs!925 Formula!40)) (Not!45 (f!4176 Formula!40)))))

(declare-fun f!3683 () Formula!40)

(declare-fun isSimplified!1 (Formula!40) Bool)

(assert (=> start!9404 (= res!32834 (isSimplified!1 f!3683))))

(assert (=> start!9404 e!36891))

(assert (=> start!9404 true))

(declare-fun b!68149 () Bool)

(declare-fun res!32835 () Bool)

(assert (=> b!68149 (=> (not res!32835) (not e!36891))))

(declare-fun f!3718 () Formula!40)

(assert (=> b!68149 (= res!32835 (and (not (is-And!45 f!3683)) (not (is-Literal!39 f!3683)) (not (is-Implies!45 f!3683)) (not (is-Or!45 f!3683)) (= f!3718 (f!4176 f!3683))))))

(declare-fun b!68150 () Bool)

(assert (=> b!68150 (= e!36891 (not (isSimplified!1 f!3718)))))

(assert (= (and start!9404 res!32834) b!68149))

(assert (= (and b!68149 res!32835) b!68150))

(declare-fun m!70177 () Bool)

(assert (=> start!9404 m!70177))

(declare-fun m!70179 () Bool)

(assert (=> b!68150 m!70179))

(push 1)

(assert (not start!9404))

(assert (not b!68150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!68177 () Bool)

(declare-fun e!36912 () Bool)

(declare-fun lt!13786 () Bool)

(assert (=> b!68177 (= e!36912 lt!13786)))

(declare-fun b!68178 () Bool)

(declare-fun e!36914 () Bool)

(declare-fun res!32865 () Bool)

(assert (=> b!68178 (= e!36914 res!32865)))

(assert (=> b!68178 true))

(declare-fun b!68179 () Bool)

(declare-fun lt!13787 () Bool)

(assert (=> b!68179 (= e!36914 (isSimplified!1 (ite lt!13787 (rhs!923 f!3683) (rhs!925 f!3683))))))

(declare-fun d!53548 () Bool)

(declare-fun c!15811 () Bool)

(declare-fun lt!13790 () Bool)

(assert (=> d!53548 (= c!15811 lt!13790)))

(declare-fun lt!13792 () Bool)

(assert (=> d!53548 (= lt!13792 e!36914)))

(declare-fun c!15813 () Bool)

(declare-fun e!36909 () Bool)

(assert (=> d!53548 (= c!15813 e!36909)))

(declare-fun res!32864 () Bool)

(assert (=> d!53548 (=> res!32864 e!36909)))

(assert (=> d!53548 (= res!32864 lt!13787)))

(assert (=> d!53548 (= lt!13787 (and lt!13790 lt!13786))))

(declare-fun e!36913 () Bool)

(assert (=> d!53548 (= lt!13786 e!36913)))

(declare-fun c!15810 () Bool)

(assert (=> d!53548 (= c!15810 (or lt!13790 (is-Or!45 f!3683) (and (not (is-Implies!45 f!3683)) (is-Not!45 f!3683))))))

(assert (=> d!53548 (= lt!13790 (is-And!45 f!3683))))

(declare-fun e!36908 () Bool)

(assert (=> d!53548 (= (isSimplified!1 f!3683) e!36908)))

(declare-fun b!68180 () Bool)

(declare-fun res!32867 () Bool)

(assert (=> b!68180 (= e!36912 res!32867)))

(assert (=> b!68180 true))

(declare-fun b!68181 () Bool)

(declare-fun e!36910 () Bool)

(declare-fun res!32861 () Bool)

(assert (=> b!68181 (= e!36910 res!32861)))

(assert (=> b!68181 true))

(assert (=> b!68181 true))

(declare-fun b!68182 () Bool)

(declare-fun e!36915 () Bool)

(declare-fun e!36911 () Bool)

(assert (=> b!68182 (= e!36915 e!36911)))

(declare-fun res!32863 () Bool)

(assert (=> b!68182 (=> (not res!32863) (not e!36911))))

(declare-fun lt!13788 () Bool)

(assert (=> b!68182 (= res!32863 lt!13788)))

(assert (=> b!68182 (= lt!13788 (is-Or!45 f!3683))))

(declare-fun b!68183 () Bool)

(assert (=> b!68183 (= e!36913 (isSimplified!1 (ite lt!13790 (lhs!923 f!3683) (ite (is-Or!45 f!3683) (lhs!925 f!3683) (f!4176 f!3683)))))))

(declare-fun b!68184 () Bool)

(assert (=> b!68184 (= e!36910 lt!13786)))

(declare-fun lt!13791 () Bool)

(declare-fun b!68185 () Bool)

(declare-fun lt!13789 () Bool)

(assert (=> b!68185 (= e!36908 (ite lt!13791 (and lt!13789 lt!13792) (and (not (is-Implies!45 f!3683)) (or (not (is-Not!45 f!3683)) lt!13789))))))

(assert (=> b!68185 (= lt!13789 e!36910)))

(declare-fun c!15809 () Bool)

(assert (=> b!68185 (= c!15809 (or lt!13791 (and (not (is-Implies!45 f!3683)) (is-Not!45 f!3683))))))

(assert (=> b!68185 (= lt!13791 (is-Or!45 f!3683))))

(declare-fun b!68186 () Bool)

(assert (=> b!68186 (= e!36908 (and lt!13786 lt!13792))))

(declare-fun b!68187 () Bool)

(declare-fun res!32866 () Bool)

(assert (=> b!68187 (= e!36913 res!32866)))

(assert (=> b!68187 true))

(declare-fun b!68188 () Bool)

(assert (=> b!68188 (= e!36909 e!36915)))

(declare-fun res!32862 () Bool)

(assert (=> b!68188 (=> (not res!32862) (not e!36915))))

(assert (=> b!68188 (= res!32862 (not lt!13790))))

(declare-fun b!68189 () Bool)

(assert (=> b!68189 (= e!36911 e!36912)))

(declare-fun c!15812 () Bool)

(assert (=> b!68189 (= c!15812 (or lt!13788 (and (not (is-Implies!45 f!3683)) (is-Not!45 f!3683))))))

(assert (= (and d!53548 c!15810) b!68183))

(assert (= (and d!53548 (not c!15810)) b!68187))

(assert (= (and d!53548 (not res!32864)) b!68188))

(assert (= (and b!68188 res!32862) b!68182))

(assert (= (and b!68182 res!32863) b!68189))

(assert (= (and b!68189 c!15812) b!68177))

(assert (= (and b!68189 (not c!15812)) b!68180))

(assert (= (and d!53548 c!15813) b!68179))

(assert (= (and d!53548 (not c!15813)) b!68178))

(assert (= (and b!68185 c!15809) b!68184))

(assert (= (and b!68185 (not c!15809)) b!68181))

(assert (= (and d!53548 c!15811) b!68186))

(assert (= (and d!53548 (not c!15811)) b!68185))

(declare-fun m!70181 () Bool)

(assert (=> b!68179 m!70181))

(declare-fun m!70183 () Bool)

(assert (=> b!68183 m!70183))

(assert (=> start!9404 d!53548))

(declare-fun b!68190 () Bool)

(declare-fun e!36920 () Bool)

(declare-fun lt!13793 () Bool)

(assert (=> b!68190 (= e!36920 lt!13793)))

(declare-fun b!68191 () Bool)

(declare-fun e!36922 () Bool)

(declare-fun res!32872 () Bool)

(assert (=> b!68191 (= e!36922 res!32872)))

(assert (=> b!68191 true))

(declare-fun b!68192 () Bool)

(declare-fun lt!13794 () Bool)

(assert (=> b!68192 (= e!36922 (isSimplified!1 (ite lt!13794 (rhs!923 f!3718) (rhs!925 f!3718))))))

(declare-fun d!53550 () Bool)

(declare-fun c!15816 () Bool)

(declare-fun lt!13797 () Bool)

(assert (=> d!53550 (= c!15816 lt!13797)))

(declare-fun lt!13799 () Bool)

(assert (=> d!53550 (= lt!13799 e!36922)))

(declare-fun c!15818 () Bool)

(declare-fun e!36917 () Bool)

(assert (=> d!53550 (= c!15818 e!36917)))

(declare-fun res!32871 () Bool)

(assert (=> d!53550 (=> res!32871 e!36917)))

(assert (=> d!53550 (= res!32871 lt!13794)))

(assert (=> d!53550 (= lt!13794 (and lt!13797 lt!13793))))

(declare-fun e!36921 () Bool)

(assert (=> d!53550 (= lt!13793 e!36921)))

(declare-fun c!15815 () Bool)

(assert (=> d!53550 (= c!15815 (or lt!13797 (is-Or!45 f!3718) (and (not (is-Implies!45 f!3718)) (is-Not!45 f!3718))))))

(assert (=> d!53550 (= lt!13797 (is-And!45 f!3718))))

(declare-fun e!36916 () Bool)

(assert (=> d!53550 (= (isSimplified!1 f!3718) e!36916)))

(declare-fun b!68193 () Bool)

(declare-fun res!32874 () Bool)

(assert (=> b!68193 (= e!36920 res!32874)))

(assert (=> b!68193 true))

(declare-fun b!68194 () Bool)

(declare-fun e!36918 () Bool)

(declare-fun res!32868 () Bool)

(assert (=> b!68194 (= e!36918 res!32868)))

(assert (=> b!68194 true))

(assert (=> b!68194 true))

(declare-fun b!68195 () Bool)

(declare-fun e!36923 () Bool)

(declare-fun e!36919 () Bool)

(assert (=> b!68195 (= e!36923 e!36919)))

(declare-fun res!32870 () Bool)

(assert (=> b!68195 (=> (not res!32870) (not e!36919))))

(declare-fun lt!13795 () Bool)

(assert (=> b!68195 (= res!32870 lt!13795)))

(assert (=> b!68195 (= lt!13795 (is-Or!45 f!3718))))

(declare-fun b!68196 () Bool)

(assert (=> b!68196 (= e!36921 (isSimplified!1 (ite lt!13797 (lhs!923 f!3718) (ite (is-Or!45 f!3718) (lhs!925 f!3718) (f!4176 f!3718)))))))

(declare-fun b!68197 () Bool)

(assert (=> b!68197 (= e!36918 lt!13793)))

(declare-fun b!68198 () Bool)

(declare-fun lt!13798 () Bool)

(declare-fun lt!13796 () Bool)

(assert (=> b!68198 (= e!36916 (ite lt!13798 (and lt!13796 lt!13799) (and (not (is-Implies!45 f!3718)) (or (not (is-Not!45 f!3718)) lt!13796))))))

(assert (=> b!68198 (= lt!13796 e!36918)))

(declare-fun c!15814 () Bool)

(assert (=> b!68198 (= c!15814 (or lt!13798 (and (not (is-Implies!45 f!3718)) (is-Not!45 f!3718))))))

(assert (=> b!68198 (= lt!13798 (is-Or!45 f!3718))))

(declare-fun b!68199 () Bool)

(assert (=> b!68199 (= e!36916 (and lt!13793 lt!13799))))

(declare-fun b!68200 () Bool)

(declare-fun res!32873 () Bool)

(assert (=> b!68200 (= e!36921 res!32873)))

(assert (=> b!68200 true))

(declare-fun b!68201 () Bool)

(assert (=> b!68201 (= e!36917 e!36923)))

(declare-fun res!32869 () Bool)

(assert (=> b!68201 (=> (not res!32869) (not e!36923))))

(assert (=> b!68201 (= res!32869 (not lt!13797))))

(declare-fun b!68202 () Bool)

(assert (=> b!68202 (= e!36919 e!36920)))

(declare-fun c!15817 () Bool)

(assert (=> b!68202 (= c!15817 (or lt!13795 (and (not (is-Implies!45 f!3718)) (is-Not!45 f!3718))))))

(assert (= (and d!53550 c!15815) b!68196))

(assert (= (and d!53550 (not c!15815)) b!68200))

(assert (= (and d!53550 (not res!32871)) b!68201))

(assert (= (and b!68201 res!32869) b!68195))

(assert (= (and b!68195 res!32870) b!68202))

(assert (= (and b!68202 c!15817) b!68190))

(assert (= (and b!68202 (not c!15817)) b!68193))

(assert (= (and d!53550 c!15818) b!68192))

(assert (= (and d!53550 (not c!15818)) b!68191))

(assert (= (and b!68198 c!15814) b!68197))

(assert (= (and b!68198 (not c!15814)) b!68194))

(assert (= (and d!53550 c!15816) b!68199))

(assert (= (and d!53550 (not c!15816)) b!68198))

(declare-fun m!70185 () Bool)

(assert (=> b!68192 m!70185))

(declare-fun m!70187 () Bool)

(assert (=> b!68196 m!70187))

(assert (=> b!68150 d!53550))

(push 1)

(assert (not b!68196))

(assert (not b!68179))

(assert (not b!68183))

(assert (not b!68192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

