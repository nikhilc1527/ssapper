; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5770 () Bool)

(assert start!5770)

(declare-fun b!43873 () Bool)

(declare-fun res!20752 () Bool)

(declare-fun e!22749 () Bool)

(assert (=> b!43873 (=> (not res!20752) (not e!22749))))

(declare-datatypes () ((Nat!117 (Zero!101) (Succ!98 (n!1242 Nat!117)))))

(declare-fun n2!59 () Nat!117)

(declare-fun n1!48 () Nat!117)

(declare-fun n1!49 () Nat!117)

(declare-fun n2!60 () Nat!117)

(assert (=> b!43873 (= res!20752 (and (or (not (is-Succ!98 n1!48)) (not (is-Zero!101 (n!1242 n1!48)))) (= n1!49 (n!1242 n1!48)) (= n2!60 n2!59)))))

(declare-fun b!43872 () Bool)

(declare-fun res!20753 () Bool)

(assert (=> b!43872 (=> (not res!20753) (not e!22749))))

(declare-fun >!2 (Nat!117 Nat!117) Bool)

(assert (=> b!43872 (= res!20753 (>!2 n2!59 Zero!101))))

(declare-fun b!43874 () Bool)

(declare-fun e!22750 () Bool)

(assert (=> b!43874 (= e!22749 e!22750)))

(declare-fun res!20755 () Bool)

(assert (=> b!43874 (=> res!20755 e!22750)))

(assert (=> b!43874 (= res!20755 (not (>!2 n1!49 Zero!101)))))

(declare-fun res!20754 () Bool)

(assert (=> start!5770 (=> (not res!20754) (not e!22749))))

(assert (=> start!5770 (= res!20754 (>!2 n1!48 Zero!101))))

(assert (=> start!5770 e!22749))

(assert (=> start!5770 true))

(declare-fun b!43875 () Bool)

(assert (=> b!43875 (= e!22750 (not (>!2 n2!60 Zero!101)))))

(assert (= (and start!5770 res!20754) b!43872))

(assert (= (and b!43872 res!20753) b!43873))

(assert (= (and b!43873 res!20752) b!43874))

(assert (= (and b!43874 (not res!20755)) b!43875))

(declare-fun m!47133 () Bool)

(assert (=> b!43872 m!47133))

(declare-fun m!47135 () Bool)

(assert (=> b!43874 m!47135))

(declare-fun m!47137 () Bool)

(assert (=> start!5770 m!47137))

(declare-fun m!47139 () Bool)

(assert (=> b!43875 m!47139))

(push 1)

(assert (not start!5770))

(assert (not b!43872))

(assert (not b!43874))

(assert (not b!43875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31138 () Bool)

(declare-fun res!20758 () Bool)

(declare-fun e!22753 () Bool)

(assert (=> d!31138 (=> (not res!20758) (not e!22753))))

(declare-fun <!2 (Nat!117 Nat!117) Bool)

(assert (=> d!31138 (= res!20758 (not (<!2 n1!48 Zero!101)))))

(assert (=> d!31138 (= (>!2 n1!48 Zero!101) e!22753)))

(declare-fun b!43878 () Bool)

(assert (=> b!43878 (= e!22753 (not (= n1!48 Zero!101)))))

(assert (= (and d!31138 res!20758) b!43878))

(declare-fun m!47141 () Bool)

(assert (=> d!31138 m!47141))

(assert (=> start!5770 d!31138))

(declare-fun d!31140 () Bool)

(declare-fun res!20759 () Bool)

(declare-fun e!22754 () Bool)

(assert (=> d!31140 (=> (not res!20759) (not e!22754))))

(assert (=> d!31140 (= res!20759 (not (<!2 n2!59 Zero!101)))))

(assert (=> d!31140 (= (>!2 n2!59 Zero!101) e!22754)))

(declare-fun b!43879 () Bool)

(assert (=> b!43879 (= e!22754 (not (= n2!59 Zero!101)))))

(assert (= (and d!31140 res!20759) b!43879))

(declare-fun m!47143 () Bool)

(assert (=> d!31140 m!47143))

(assert (=> b!43872 d!31140))

(declare-fun d!31142 () Bool)

(declare-fun res!20760 () Bool)

(declare-fun e!22755 () Bool)

(assert (=> d!31142 (=> (not res!20760) (not e!22755))))

(assert (=> d!31142 (= res!20760 (not (<!2 n1!49 Zero!101)))))

(assert (=> d!31142 (= (>!2 n1!49 Zero!101) e!22755)))

(declare-fun b!43880 () Bool)

(assert (=> b!43880 (= e!22755 (not (= n1!49 Zero!101)))))

(assert (= (and d!31142 res!20760) b!43880))

(declare-fun m!47145 () Bool)

(assert (=> d!31142 m!47145))

(assert (=> b!43874 d!31142))

(declare-fun d!31144 () Bool)

(declare-fun res!20761 () Bool)

(declare-fun e!22756 () Bool)

(assert (=> d!31144 (=> (not res!20761) (not e!22756))))

(assert (=> d!31144 (= res!20761 (not (<!2 n2!60 Zero!101)))))

(assert (=> d!31144 (= (>!2 n2!60 Zero!101) e!22756)))

(declare-fun b!43881 () Bool)

(assert (=> b!43881 (= e!22756 (not (= n2!60 Zero!101)))))

(assert (= (and d!31144 res!20761) b!43881))

(declare-fun m!47147 () Bool)

(assert (=> d!31144 m!47147))

(assert (=> b!43875 d!31144))

(push 1)

(assert (not d!31142))

(assert (not d!31138))

(assert (not d!31144))

(assert (not d!31140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31146 () Bool)

(declare-fun lt!7983 () Bool)

(declare-fun repr!0 (Nat!117) Int)

(assert (=> d!31146 (= lt!7983 (< (repr!0 n1!49) (repr!0 Zero!101)))))

(declare-fun e!22759 () Bool)

(assert (=> d!31146 (= lt!7983 e!22759)))

(declare-fun c!9350 () Bool)

(assert (=> d!31146 (= c!9350 (and (is-Succ!98 n1!49) (is-Succ!98 Zero!101)))))

(assert (=> d!31146 (= (<!2 n1!49 Zero!101) lt!7983)))

(declare-fun b!43886 () Bool)

(assert (=> b!43886 (= e!22759 (<!2 (n!1242 n1!49) (n!1242 Zero!101)))))

(declare-fun b!43887 () Bool)

(assert (=> b!43887 (= e!22759 (and (is-Zero!101 n1!49) (is-Succ!98 Zero!101)))))

(assert (= (and d!31146 c!9350) b!43886))

(assert (= (and d!31146 (not c!9350)) b!43887))

(declare-fun m!47149 () Bool)

(assert (=> d!31146 m!47149))

(declare-fun m!47151 () Bool)

(assert (=> d!31146 m!47151))

(declare-fun m!47153 () Bool)

(assert (=> b!43886 m!47153))

(assert (=> d!31142 d!31146))

(declare-fun d!31148 () Bool)

(declare-fun lt!7984 () Bool)

(assert (=> d!31148 (= lt!7984 (< (repr!0 n1!48) (repr!0 Zero!101)))))

(declare-fun e!22760 () Bool)

(assert (=> d!31148 (= lt!7984 e!22760)))

(declare-fun c!9351 () Bool)

(assert (=> d!31148 (= c!9351 (and (is-Succ!98 n1!48) (is-Succ!98 Zero!101)))))

(assert (=> d!31148 (= (<!2 n1!48 Zero!101) lt!7984)))

(declare-fun b!43888 () Bool)

(assert (=> b!43888 (= e!22760 (<!2 (n!1242 n1!48) (n!1242 Zero!101)))))

(declare-fun b!43889 () Bool)

(assert (=> b!43889 (= e!22760 (and (is-Zero!101 n1!48) (is-Succ!98 Zero!101)))))

(assert (= (and d!31148 c!9351) b!43888))

(assert (= (and d!31148 (not c!9351)) b!43889))

(declare-fun m!47155 () Bool)

(assert (=> d!31148 m!47155))

(assert (=> d!31148 m!47151))

(declare-fun m!47157 () Bool)

(assert (=> b!43888 m!47157))

(assert (=> d!31138 d!31148))

(declare-fun d!31150 () Bool)

(declare-fun lt!7985 () Bool)

(assert (=> d!31150 (= lt!7985 (< (repr!0 n2!60) (repr!0 Zero!101)))))

(declare-fun e!22761 () Bool)

(assert (=> d!31150 (= lt!7985 e!22761)))

(declare-fun c!9352 () Bool)

(assert (=> d!31150 (= c!9352 (and (is-Succ!98 n2!60) (is-Succ!98 Zero!101)))))

(assert (=> d!31150 (= (<!2 n2!60 Zero!101) lt!7985)))

(declare-fun b!43890 () Bool)

(assert (=> b!43890 (= e!22761 (<!2 (n!1242 n2!60) (n!1242 Zero!101)))))

(declare-fun b!43891 () Bool)

(assert (=> b!43891 (= e!22761 (and (is-Zero!101 n2!60) (is-Succ!98 Zero!101)))))

(assert (= (and d!31150 c!9352) b!43890))

(assert (= (and d!31150 (not c!9352)) b!43891))

(declare-fun m!47159 () Bool)

(assert (=> d!31150 m!47159))

(assert (=> d!31150 m!47151))

(declare-fun m!47161 () Bool)

(assert (=> b!43890 m!47161))

(assert (=> d!31144 d!31150))

(declare-fun d!31152 () Bool)

(declare-fun lt!7986 () Bool)

(assert (=> d!31152 (= lt!7986 (< (repr!0 n2!59) (repr!0 Zero!101)))))

(declare-fun e!22762 () Bool)

(assert (=> d!31152 (= lt!7986 e!22762)))

(declare-fun c!9353 () Bool)

(assert (=> d!31152 (= c!9353 (and (is-Succ!98 n2!59) (is-Succ!98 Zero!101)))))

(assert (=> d!31152 (= (<!2 n2!59 Zero!101) lt!7986)))

(declare-fun b!43892 () Bool)

(assert (=> b!43892 (= e!22762 (<!2 (n!1242 n2!59) (n!1242 Zero!101)))))

(declare-fun b!43893 () Bool)

(assert (=> b!43893 (= e!22762 (and (is-Zero!101 n2!59) (is-Succ!98 Zero!101)))))

(assert (= (and d!31152 c!9353) b!43892))

(assert (= (and d!31152 (not c!9353)) b!43893))

(declare-fun m!47163 () Bool)

(assert (=> d!31152 m!47163))

(assert (=> d!31152 m!47151))

(declare-fun m!47165 () Bool)

(assert (=> b!43892 m!47165))

(assert (=> d!31140 d!31152))

(push 1)

(assert (not b!43890))

(assert (not d!31146))

(assert (not d!31152))

(assert (not b!43886))

(assert (not b!43892))

(assert (not d!31148))

(assert (not b!43888))

(assert (not d!31150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

