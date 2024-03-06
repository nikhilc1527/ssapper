; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4664 () Bool)

(assert start!4664)

(declare-fun res!16780 () Bool)

(declare-fun e!18285 () Bool)

(assert (=> start!4664 (=> (not res!16780) (not e!18285))))

(declare-datatypes () ((Expr!5 (And!6 (lhs!204 Expr!5) (rhs!204 Expr!5)) (Implies!6 (lhs!205 Expr!5) (rhs!205 Expr!5)) (BoolLiteral!3 (i!415 Int)) (Or!6 (lhs!206 Expr!5) (rhs!206 Expr!5)) (Not!6 (e!18286 Expr!5)))))

(declare-fun e!17837 () Expr!5)

(assert (=> start!4664 (= res!16780 (and (not (is-And!6 e!17837)) (not (is-Or!6 e!17837)) (is-Implies!6 e!17837)))))

(assert (=> start!4664 e!18285))

(assert (=> start!4664 true))

(declare-fun b!35868 () Bool)

(declare-fun res!16782 () Bool)

(assert (=> b!35868 (=> (not res!16782) (not e!18285))))

(declare-fun out!53 () Expr!5)

(declare-fun desugar!0 (Expr!5) Expr!5)

(assert (=> b!35868 (= res!16782 (= out!53 (Or!6 (Not!6 (desugar!0 (lhs!205 e!17837))) (desugar!0 (rhs!205 e!17837)))))))

(declare-fun b!35869 () Bool)

(declare-fun e!18284 () Bool)

(assert (=> b!35869 (= e!18285 e!18284)))

(declare-fun res!16781 () Bool)

(assert (=> b!35869 (=> res!16781 e!18284)))

(declare-fun existsImplies!0 (Expr!5) Bool)

(assert (=> b!35869 (= res!16781 (existsImplies!0 out!53))))

(declare-fun b!35870 () Bool)

(declare-fun lambda!4197 () Int)

(declare-fun exists!6 (Expr!5 Int) Bool)

(assert (=> b!35870 (= e!18284 (exists!6 out!53 lambda!4197))))

(assert (= (and start!4664 res!16780) b!35868))

(assert (= (and b!35868 res!16782) b!35869))

(assert (= (and b!35869 (not res!16781)) b!35870))

(declare-fun m!38149 () Bool)

(assert (=> b!35868 m!38149))

(declare-fun m!38151 () Bool)

(assert (=> b!35868 m!38151))

(declare-fun m!38153 () Bool)

(assert (=> b!35869 m!38153))

(declare-fun m!38155 () Bool)

(assert (=> b!35870 m!38155))

(push 1)

(assert (not b!35868))

(assert (not b!35870))

(assert (not b!35869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11310 () Bool)

(declare-fun b!35914 () Bool)

(assert (= bs!11310 (and b!35914 b!35870)))

(declare-fun lambda!4200 () Int)

(assert (=> bs!11310 (= lambda!4200 lambda!4197)))

(declare-fun b!35901 () Bool)

(declare-fun e!18311 () Expr!5)

(declare-fun lt!6977 () Expr!5)

(assert (=> b!35901 (= e!18311 lt!6977)))

(declare-fun b!35902 () Bool)

(declare-fun e!18304 () Expr!5)

(declare-fun lt!6974 () Expr!5)

(declare-fun lt!6976 () Expr!5)

(assert (=> b!35902 (= e!18304 (And!6 lt!6974 lt!6976))))

(declare-fun b!35903 () Bool)

(declare-fun e!18308 () Expr!5)

(declare-fun lt!6973 () Bool)

(assert (=> b!35903 (= e!18308 (desugar!0 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))))))

(declare-fun b!35904 () Bool)

(declare-fun e!18310 () Expr!5)

(declare-fun res!16815 () Expr!5)

(assert (=> b!35904 (= e!18310 res!16815)))

(assert (=> b!35904 true))

(declare-fun b!35905 () Bool)

(declare-fun res!16812 () Expr!5)

(assert (=> b!35905 (= e!18311 res!16812)))

(assert (=> b!35905 true))

(assert (=> b!35905 true))

(declare-fun b!35906 () Bool)

(assert (=> b!35906 (= e!18310 lt!6976)))

(declare-fun b!35907 () Bool)

(declare-fun res!16811 () Expr!5)

(assert (=> b!35907 (= e!18308 res!16811)))

(assert (=> b!35907 true))

(declare-fun b!35908 () Bool)

(declare-fun e!18307 () Expr!5)

(declare-fun res!16814 () Expr!5)

(assert (=> b!35908 (= e!18307 res!16814)))

(assert (=> b!35908 true))

(declare-fun lt!6975 () Expr!5)

(declare-fun e!18306 () Expr!5)

(declare-fun lt!6970 () Expr!5)

(declare-fun b!35909 () Bool)

(declare-fun lt!6972 () Bool)

(assert (=> b!35909 (= e!18306 (ite lt!6972 (Or!6 (Not!6 lt!6975) lt!6970) (ite (is-Not!6 (lhs!205 e!17837)) (Not!6 lt!6975) (lhs!205 e!17837))))))

(assert (=> b!35909 (= lt!6975 e!18311)))

(declare-fun c!7721 () Bool)

(assert (=> b!35909 (= c!7721 (or lt!6972 (is-Not!6 (lhs!205 e!17837))))))

(assert (=> b!35909 (= lt!6972 (is-Implies!6 (lhs!205 e!17837)))))

(declare-fun b!35910 () Bool)

(declare-fun e!18305 () Expr!5)

(declare-fun res!16810 () Expr!5)

(assert (=> b!35910 (= e!18305 res!16810)))

(assert (=> b!35910 true))

(declare-fun b!35911 () Bool)

(assert (=> b!35911 (= e!18305 lt!6974)))

(declare-fun b!35912 () Bool)

(assert (=> b!35912 (= e!18304 e!18306)))

(declare-fun c!7719 () Bool)

(declare-fun lt!6969 () Bool)

(assert (=> b!35912 (= c!7719 lt!6969)))

(assert (=> b!35912 (= lt!6970 e!18310)))

(declare-fun c!7718 () Bool)

(assert (=> b!35912 (= c!7718 (or lt!6969 (is-Implies!6 (lhs!205 e!17837))))))

(assert (=> b!35912 (= lt!6977 e!18305)))

(declare-fun c!7717 () Bool)

(assert (=> b!35912 (= c!7717 (or lt!6969 (is-Implies!6 (lhs!205 e!17837)) (is-Not!6 (lhs!205 e!17837))))))

(assert (=> b!35912 (= lt!6969 (is-Or!6 (lhs!205 e!17837)))))

(declare-fun d!18518 () Bool)

(declare-fun e!18309 () Bool)

(assert (=> d!18518 e!18309))

(declare-fun res!16813 () Bool)

(assert (=> d!18518 (=> (not res!16813) (not e!18309))))

(declare-fun lt!6971 () Expr!5)

(assert (=> d!18518 (= res!16813 (not (existsImplies!0 lt!6971)))))

(assert (=> d!18518 (= lt!6971 e!18304)))

(declare-fun c!7720 () Bool)

(assert (=> d!18518 (= c!7720 lt!6973)))

(assert (=> d!18518 (= lt!6976 e!18307)))

(declare-fun c!7716 () Bool)

(assert (=> d!18518 (= c!7716 (or lt!6973 (is-Or!6 (lhs!205 e!17837)) (is-Implies!6 (lhs!205 e!17837))))))

(assert (=> d!18518 (= lt!6974 e!18308)))

(declare-fun c!7722 () Bool)

(assert (=> d!18518 (= c!7722 (or lt!6973 (is-Or!6 (lhs!205 e!17837)) (is-Implies!6 (lhs!205 e!17837)) (is-Not!6 (lhs!205 e!17837))))))

(assert (=> d!18518 (= lt!6973 (is-And!6 (lhs!205 e!17837)))))

(assert (=> d!18518 (= (desugar!0 (lhs!205 e!17837)) lt!6971)))

(declare-fun b!35913 () Bool)

(assert (=> b!35913 (= e!18307 (desugar!0 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))))))

(assert (=> b!35914 (= e!18309 (not (exists!6 lt!6971 lambda!4200)))))

(declare-fun b!35915 () Bool)

(assert (=> b!35915 (= e!18306 (Or!6 lt!6977 lt!6970))))

(assert (= (and d!18518 c!7722) b!35903))

(assert (= (and d!18518 (not c!7722)) b!35907))

(assert (= (and d!18518 c!7716) b!35913))

(assert (= (and d!18518 (not c!7716)) b!35908))

(assert (= (and b!35912 c!7717) b!35911))

(assert (= (and b!35912 (not c!7717)) b!35910))

(assert (= (and b!35912 c!7718) b!35906))

(assert (= (and b!35912 (not c!7718)) b!35904))

(assert (= (and b!35909 c!7721) b!35901))

(assert (= (and b!35909 (not c!7721)) b!35905))

(assert (= (and b!35912 c!7719) b!35915))

(assert (= (and b!35912 (not c!7719)) b!35909))

(assert (= (and d!18518 c!7720) b!35902))

(assert (= (and d!18518 (not c!7720)) b!35912))

(assert (= (and d!18518 res!16813) b!35914))

(declare-fun m!38157 () Bool)

(assert (=> b!35903 m!38157))

(declare-fun m!38159 () Bool)

(assert (=> d!18518 m!38159))

(declare-fun m!38161 () Bool)

(assert (=> b!35913 m!38161))

(declare-fun m!38163 () Bool)

(assert (=> b!35914 m!38163))

(assert (=> b!35868 d!18518))

(declare-fun bs!11311 () Bool)

(declare-fun b!35929 () Bool)

(assert (= bs!11311 (and b!35929 b!35870)))

(declare-fun lambda!4201 () Int)

(assert (=> bs!11311 (= lambda!4201 lambda!4197)))

(declare-fun bs!11312 () Bool)

(assert (= bs!11312 (and b!35929 b!35914)))

(assert (=> bs!11312 (= lambda!4201 lambda!4200)))

(declare-fun b!35916 () Bool)

(declare-fun e!18319 () Expr!5)

(declare-fun lt!6986 () Expr!5)

(assert (=> b!35916 (= e!18319 lt!6986)))

(declare-fun b!35917 () Bool)

(declare-fun e!18312 () Expr!5)

(declare-fun lt!6983 () Expr!5)

(declare-fun lt!6985 () Expr!5)

(assert (=> b!35917 (= e!18312 (And!6 lt!6983 lt!6985))))

(declare-fun b!35918 () Bool)

(declare-fun e!18316 () Expr!5)

(declare-fun lt!6982 () Bool)

(assert (=> b!35918 (= e!18316 (desugar!0 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))))))

(declare-fun b!35919 () Bool)

(declare-fun e!18318 () Expr!5)

(declare-fun res!16821 () Expr!5)

(assert (=> b!35919 (= e!18318 res!16821)))

(assert (=> b!35919 true))

(declare-fun b!35920 () Bool)

(declare-fun res!16818 () Expr!5)

(assert (=> b!35920 (= e!18319 res!16818)))

(assert (=> b!35920 true))

(assert (=> b!35920 true))

(declare-fun b!35921 () Bool)

(assert (=> b!35921 (= e!18318 lt!6985)))

(declare-fun b!35922 () Bool)

(declare-fun res!16817 () Expr!5)

(assert (=> b!35922 (= e!18316 res!16817)))

(assert (=> b!35922 true))

(declare-fun b!35923 () Bool)

(declare-fun e!18315 () Expr!5)

(declare-fun res!16820 () Expr!5)

(assert (=> b!35923 (= e!18315 res!16820)))

(assert (=> b!35923 true))

(declare-fun e!18314 () Expr!5)

(declare-fun lt!6981 () Bool)

(declare-fun lt!6979 () Expr!5)

(declare-fun lt!6984 () Expr!5)

(declare-fun b!35924 () Bool)

(assert (=> b!35924 (= e!18314 (ite lt!6981 (Or!6 (Not!6 lt!6984) lt!6979) (ite (is-Not!6 (rhs!205 e!17837)) (Not!6 lt!6984) (rhs!205 e!17837))))))

(assert (=> b!35924 (= lt!6984 e!18319)))

(declare-fun c!7728 () Bool)

(assert (=> b!35924 (= c!7728 (or lt!6981 (is-Not!6 (rhs!205 e!17837))))))

(assert (=> b!35924 (= lt!6981 (is-Implies!6 (rhs!205 e!17837)))))

(declare-fun b!35925 () Bool)

(declare-fun e!18313 () Expr!5)

(declare-fun res!16816 () Expr!5)

(assert (=> b!35925 (= e!18313 res!16816)))

(assert (=> b!35925 true))

(declare-fun b!35926 () Bool)

(assert (=> b!35926 (= e!18313 lt!6983)))

(declare-fun b!35927 () Bool)

(assert (=> b!35927 (= e!18312 e!18314)))

(declare-fun c!7726 () Bool)

(declare-fun lt!6978 () Bool)

(assert (=> b!35927 (= c!7726 lt!6978)))

(assert (=> b!35927 (= lt!6979 e!18318)))

(declare-fun c!7725 () Bool)

(assert (=> b!35927 (= c!7725 (or lt!6978 (is-Implies!6 (rhs!205 e!17837))))))

(assert (=> b!35927 (= lt!6986 e!18313)))

(declare-fun c!7724 () Bool)

(assert (=> b!35927 (= c!7724 (or lt!6978 (is-Implies!6 (rhs!205 e!17837)) (is-Not!6 (rhs!205 e!17837))))))

(assert (=> b!35927 (= lt!6978 (is-Or!6 (rhs!205 e!17837)))))

(declare-fun d!18520 () Bool)

(declare-fun e!18317 () Bool)

(assert (=> d!18520 e!18317))

(declare-fun res!16819 () Bool)

(assert (=> d!18520 (=> (not res!16819) (not e!18317))))

(declare-fun lt!6980 () Expr!5)

(assert (=> d!18520 (= res!16819 (not (existsImplies!0 lt!6980)))))

(assert (=> d!18520 (= lt!6980 e!18312)))

(declare-fun c!7727 () Bool)

(assert (=> d!18520 (= c!7727 lt!6982)))

(assert (=> d!18520 (= lt!6985 e!18315)))

(declare-fun c!7723 () Bool)

(assert (=> d!18520 (= c!7723 (or lt!6982 (is-Or!6 (rhs!205 e!17837)) (is-Implies!6 (rhs!205 e!17837))))))

(assert (=> d!18520 (= lt!6983 e!18316)))

(declare-fun c!7729 () Bool)

(assert (=> d!18520 (= c!7729 (or lt!6982 (is-Or!6 (rhs!205 e!17837)) (is-Implies!6 (rhs!205 e!17837)) (is-Not!6 (rhs!205 e!17837))))))

(assert (=> d!18520 (= lt!6982 (is-And!6 (rhs!205 e!17837)))))

(assert (=> d!18520 (= (desugar!0 (rhs!205 e!17837)) lt!6980)))

(declare-fun b!35928 () Bool)

(assert (=> b!35928 (= e!18315 (desugar!0 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))))))

(assert (=> b!35929 (= e!18317 (not (exists!6 lt!6980 lambda!4201)))))

(declare-fun b!35930 () Bool)

(assert (=> b!35930 (= e!18314 (Or!6 lt!6986 lt!6979))))

(assert (= (and d!18520 c!7729) b!35918))

(assert (= (and d!18520 (not c!7729)) b!35922))

(assert (= (and d!18520 c!7723) b!35928))

(assert (= (and d!18520 (not c!7723)) b!35923))

(assert (= (and b!35927 c!7724) b!35926))

(assert (= (and b!35927 (not c!7724)) b!35925))

(assert (= (and b!35927 c!7725) b!35921))

(assert (= (and b!35927 (not c!7725)) b!35919))

(assert (= (and b!35924 c!7728) b!35916))

(assert (= (and b!35924 (not c!7728)) b!35920))

(assert (= (and b!35927 c!7726) b!35930))

(assert (= (and b!35927 (not c!7726)) b!35924))

(assert (= (and d!18520 c!7727) b!35917))

(assert (= (and d!18520 (not c!7727)) b!35927))

(assert (= (and d!18520 res!16819) b!35929))

(declare-fun m!38165 () Bool)

(assert (=> b!35918 m!38165))

(declare-fun m!38167 () Bool)

(assert (=> d!18520 m!38167))

(declare-fun m!38169 () Bool)

(assert (=> b!35928 m!38169))

(declare-fun m!38171 () Bool)

(assert (=> b!35929 m!38171))

(assert (=> b!35868 d!18520))

(declare-fun b!36003 () Bool)

(declare-fun e!18385 () Bool)

(declare-fun lt!7018 () Bool)

(assert (=> b!36003 (= e!18385 lt!7018)))

(declare-fun b!36004 () Bool)

(declare-fun e!18378 () Expr!5)

(assert (=> b!36004 (= e!18378 (rhs!206 out!53))))

(declare-fun lt!7027 () Bool)

(declare-fun b!36005 () Bool)

(declare-fun e!18367 () Bool)

(assert (=> b!36005 (= e!18367 (exists!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))) lambda!4197))))

(declare-fun b!36006 () Bool)

(declare-fun e!18384 () Bool)

(declare-fun e!18379 () Bool)

(assert (=> b!36006 (= e!18384 e!18379)))

(declare-fun res!16898 () Bool)

(assert (=> b!36006 (=> (not res!16898) (not e!18379))))

(declare-fun lt!7025 () Bool)

(assert (=> b!36006 (= res!16898 lt!7025)))

(assert (=> b!36006 (= lt!7025 (is-Implies!6 out!53))))

(declare-fun b!36007 () Bool)

(declare-fun e!18371 () Expr!5)

(assert (=> b!36007 (= e!18371 (rhs!204 out!53))))

(declare-fun b!36008 () Bool)

(declare-fun e!18370 () Bool)

(declare-fun e!18368 () Bool)

(assert (=> b!36008 (= e!18370 e!18368)))

(declare-fun c!7765 () Bool)

(declare-fun lt!7026 () Bool)

(assert (=> b!36008 (= c!7765 lt!7026)))

(declare-fun lt!7016 () Bool)

(declare-fun e!18383 () Bool)

(assert (=> b!36008 (= lt!7016 e!18383)))

(declare-fun c!7759 () Bool)

(declare-fun e!18381 () Bool)

(assert (=> b!36008 (= c!7759 e!18381)))

(declare-fun res!16892 () Bool)

(assert (=> b!36008 (=> res!16892 e!18381)))

(declare-fun lt!7017 () Bool)

(assert (=> b!36008 (= res!16892 (and lt!7026 (not lt!7017)))))

(declare-fun e!18386 () Bool)

(assert (=> b!36008 (= lt!7017 e!18386)))

(declare-fun c!7758 () Bool)

(assert (=> b!36008 (= c!7758 (or lt!7026 (is-Implies!6 out!53) (is-Not!6 out!53)))))

(assert (=> b!36008 (= lt!7026 (is-Or!6 out!53))))

(declare-fun b!36009 () Bool)

(assert (=> b!36009 (= e!18368 (or lt!7017 lt!7016))))

(declare-fun b!36010 () Bool)

(declare-fun e!18389 () Bool)

(assert (=> b!36010 (= e!18379 (not e!18389))))

(declare-fun c!7762 () Bool)

(assert (=> b!36010 (= c!7762 (or lt!7025 (is-Not!6 out!53)))))

(declare-fun b!36011 () Bool)

(declare-fun e!18382 () Bool)

(declare-fun e!18387 () Bool)

(assert (=> b!36011 (= e!18382 (not e!18387))))

(declare-fun c!7756 () Bool)

(declare-fun lt!7020 () Bool)

(assert (=> b!36011 (= c!7756 (or lt!7020 (is-Implies!6 out!53) (is-Not!6 out!53)))))

(declare-fun b!36012 () Bool)

(declare-fun e!18373 () Bool)

(declare-fun res!16888 () Bool)

(assert (=> b!36012 (= e!18373 res!16888)))

(assert (=> b!36012 true))

(declare-fun b!36013 () Bool)

(declare-fun e!18380 () Bool)

(assert (=> b!36013 (= e!18380 (exists!6 e!18371 lambda!4197))))

(declare-fun c!7757 () Bool)

(declare-fun lt!7019 () Bool)

(assert (=> b!36013 (= c!7757 lt!7019)))

(declare-fun b!36014 () Bool)

(assert (=> b!36014 (= e!18371 e!18378)))

(declare-fun c!7760 () Bool)

(assert (=> b!36014 (= c!7760 e!18382)))

(declare-fun res!16893 () Bool)

(assert (=> b!36014 (=> (not res!16893) (not e!18382))))

(assert (=> b!36014 (= res!16893 lt!7020)))

(assert (=> b!36014 (= lt!7020 (is-Or!6 out!53))))

(declare-fun b!36015 () Bool)

(declare-fun lt!7021 () Bool)

(assert (=> b!36015 (= e!18387 lt!7021)))

(declare-fun b!36016 () Bool)

(declare-fun e!18374 () Bool)

(declare-fun e!18388 () Bool)

(assert (=> b!36016 (= e!18374 e!18388)))

(declare-fun res!16882 () Bool)

(assert (=> b!36016 (=> (not res!16882) (not e!18388))))

(assert (=> b!36016 (= res!16882 (not lt!7027))))

(declare-fun b!36017 () Bool)

(assert (=> b!36017 (= e!18373 lt!7021)))

(declare-fun b!36018 () Bool)

(declare-fun res!16886 () Bool)

(assert (=> b!36018 (= e!18383 res!16886)))

(assert (=> b!36018 true))

(declare-fun b!36019 () Bool)

(assert (=> b!36019 (= e!18381 e!18384)))

(declare-fun res!16894 () Bool)

(assert (=> b!36019 (=> (not res!16894) (not e!18384))))

(assert (=> b!36019 (= res!16894 (not lt!7026))))

(declare-fun b!36020 () Bool)

(assert (=> b!36020 (= e!18389 lt!7017)))

(declare-fun b!36021 () Bool)

(declare-fun lt!7022 () Bool)

(assert (=> b!36021 (= e!18370 (or lt!7021 lt!7022))))

(declare-fun b!36022 () Bool)

(declare-fun res!16899 () Bool)

(assert (=> b!36022 (= e!18387 res!16899)))

(assert (=> b!36022 true))

(declare-fun b!36023 () Bool)

(declare-fun res!16887 () Bool)

(assert (=> b!36023 (= e!18386 res!16887)))

(assert (=> b!36023 true))

(declare-fun b!36024 () Bool)

(assert (=> b!36024 (= e!18386 lt!7021)))

(declare-fun d!18522 () Bool)

(declare-fun res!16884 () Bool)

(declare-fun e!18375 () Bool)

(assert (=> d!18522 (=> res!16884 e!18375)))

(declare-fun dynLambda!647 (Int Expr!5) Bool)

(assert (=> d!18522 (= res!16884 (dynLambda!647 lambda!4197 out!53))))

(assert (=> d!18522 (= (exists!6 out!53 lambda!4197) e!18375)))

(declare-fun b!36025 () Bool)

(declare-fun e!18376 () Bool)

(assert (=> b!36025 (= e!18376 lt!7017)))

(declare-fun b!36026 () Bool)

(declare-fun e!18377 () Bool)

(assert (=> b!36026 (= e!18388 e!18377)))

(declare-fun res!16891 () Bool)

(assert (=> b!36026 (=> res!16891 e!18377)))

(declare-fun lt!7024 () Bool)

(assert (=> b!36026 (= res!16891 (and lt!7024 (not lt!7018)))))

(assert (=> b!36026 (= lt!7018 e!18373)))

(declare-fun c!7767 () Bool)

(assert (=> b!36026 (= c!7767 (or lt!7024 (is-Implies!6 out!53) (is-Not!6 out!53)))))

(assert (=> b!36026 (= lt!7024 (is-Or!6 out!53))))

(declare-fun b!36027 () Bool)

(declare-fun e!18372 () Bool)

(declare-fun e!18369 () Bool)

(assert (=> b!36027 (= e!18372 e!18369)))

(declare-fun res!16897 () Bool)

(assert (=> b!36027 (=> (not res!16897) (not e!18369))))

(declare-fun lt!7028 () Bool)

(assert (=> b!36027 (= res!16897 lt!7028)))

(assert (=> b!36027 (= lt!7028 (is-Implies!6 out!53))))

(declare-fun lt!7015 () Bool)

(declare-fun lt!7023 () Bool)

(declare-fun b!36028 () Bool)

(assert (=> b!36028 (= e!18368 (ite lt!7015 (or lt!7023 lt!7016) (and (is-Not!6 out!53) lt!7023)))))

(assert (=> b!36028 (= lt!7023 e!18376)))

(declare-fun c!7768 () Bool)

(assert (=> b!36028 (= c!7768 (or lt!7015 (is-Not!6 out!53)))))

(assert (=> b!36028 (= lt!7015 (is-Implies!6 out!53))))

(declare-fun b!36029 () Bool)

(declare-fun res!16883 () Bool)

(assert (=> b!36029 (= e!18376 res!16883)))

(assert (=> b!36029 true))

(assert (=> b!36029 true))

(declare-fun b!36030 () Bool)

(declare-fun res!16890 () Bool)

(assert (=> b!36030 (= e!18389 res!16890)))

(assert (=> b!36030 true))

(declare-fun b!36031 () Bool)

(assert (=> b!36031 (= e!18375 e!18370)))

(declare-fun c!7766 () Bool)

(assert (=> b!36031 (= c!7766 lt!7027)))

(assert (=> b!36031 (= lt!7022 e!18380)))

(declare-fun c!7764 () Bool)

(assert (=> b!36031 (= c!7764 e!18374)))

(declare-fun res!16895 () Bool)

(assert (=> b!36031 (=> res!16895 e!18374)))

(assert (=> b!36031 (= res!16895 lt!7019)))

(assert (=> b!36031 (= lt!7019 (and lt!7027 (not lt!7021)))))

(assert (=> b!36031 (= lt!7021 e!18367)))

(declare-fun c!7761 () Bool)

(assert (=> b!36031 (= c!7761 (or lt!7027 (is-Or!6 out!53) (is-Implies!6 out!53) (is-Not!6 out!53)))))

(assert (=> b!36031 (= lt!7027 (is-And!6 out!53))))

(declare-fun b!36032 () Bool)

(declare-fun res!16885 () Bool)

(assert (=> b!36032 (= e!18385 res!16885)))

(assert (=> b!36032 true))

(declare-fun b!36033 () Bool)

(assert (=> b!36033 (= e!18378 (rhs!205 out!53))))

(declare-fun b!36034 () Bool)

(assert (=> b!36034 (= e!18377 e!18372)))

(declare-fun res!16900 () Bool)

(assert (=> b!36034 (=> (not res!16900) (not e!18372))))

(assert (=> b!36034 (= res!16900 (not lt!7024))))

(declare-fun b!36035 () Bool)

(declare-fun res!16889 () Bool)

(assert (=> b!36035 (= e!18380 res!16889)))

(assert (=> b!36035 true))

(declare-fun b!36036 () Bool)

(assert (=> b!36036 (= e!18383 lt!7022)))

(declare-fun b!36037 () Bool)

(assert (=> b!36037 (= e!18369 (not e!18385))))

(declare-fun c!7763 () Bool)

(assert (=> b!36037 (= c!7763 (or lt!7028 (is-Not!6 out!53)))))

(declare-fun b!36038 () Bool)

(declare-fun res!16896 () Bool)

(assert (=> b!36038 (= e!18367 res!16896)))

(assert (=> b!36038 true))

(assert (= (and d!18522 (not res!16884)) b!36031))

(assert (= (and b!36031 c!7761) b!36005))

(assert (= (and b!36031 (not c!7761)) b!36038))

(assert (= (and b!36031 (not res!16895)) b!36016))

(assert (= (and b!36016 res!16882) b!36026))

(assert (= (and b!36026 c!7767) b!36017))

(assert (= (and b!36026 (not c!7767)) b!36012))

(assert (= (and b!36026 (not res!16891)) b!36034))

(assert (= (and b!36034 res!16900) b!36027))

(assert (= (and b!36027 res!16897) b!36037))

(assert (= (and b!36037 c!7763) b!36003))

(assert (= (and b!36037 (not c!7763)) b!36032))

(assert (= (and b!36014 res!16893) b!36011))

(assert (= (and b!36011 c!7756) b!36015))

(assert (= (and b!36011 (not c!7756)) b!36022))

(assert (= (and b!36014 c!7760) b!36004))

(assert (= (and b!36014 (not c!7760)) b!36033))

(assert (= (and b!36013 c!7757) b!36007))

(assert (= (and b!36013 (not c!7757)) b!36014))

(assert (= (and b!36031 c!7764) b!36013))

(assert (= (and b!36031 (not c!7764)) b!36035))

(assert (= (and b!36008 c!7758) b!36024))

(assert (= (and b!36008 (not c!7758)) b!36023))

(assert (= (and b!36008 (not res!16892)) b!36019))

(assert (= (and b!36019 res!16894) b!36006))

(assert (= (and b!36006 res!16898) b!36010))

(assert (= (and b!36010 c!7762) b!36020))

(assert (= (and b!36010 (not c!7762)) b!36030))

(assert (= (and b!36008 c!7759) b!36036))

(assert (= (and b!36008 (not c!7759)) b!36018))

(assert (= (and b!36028 c!7768) b!36025))

(assert (= (and b!36028 (not c!7768)) b!36029))

(assert (= (and b!36008 c!7765) b!36009))

(assert (= (and b!36008 (not c!7765)) b!36028))

(assert (= (and b!36031 c!7766) b!36021))

(assert (= (and b!36031 (not c!7766)) b!36008))

(declare-fun b_lambda!9591 () Bool)

(assert (=> (not b_lambda!9591) (not d!18522)))

(declare-fun m!38173 () Bool)

(assert (=> b!36005 m!38173))

(declare-fun m!38175 () Bool)

(assert (=> b!36013 m!38175))

(declare-fun m!38177 () Bool)

(assert (=> d!18522 m!38177))

(assert (=> b!35870 d!18522))

(declare-fun b!36111 () Bool)

(declare-fun e!18445 () Bool)

(declare-fun e!18454 () Bool)

(assert (=> b!36111 (= e!18445 e!18454)))

(declare-fun res!16965 () Bool)

(assert (=> b!36111 (=> (not res!16965) (not e!18454))))

(declare-fun lt!7057 () Bool)

(assert (=> b!36111 (= res!16965 (not lt!7057))))

(declare-fun b!36112 () Bool)

(declare-fun e!18442 () Bool)

(declare-fun e!18457 () Bool)

(assert (=> b!36112 (= e!18442 e!18457)))

(declare-fun res!16972 () Bool)

(assert (=> b!36112 (=> (not res!16972) (not e!18457))))

(declare-fun lt!7060 () Bool)

(assert (=> b!36112 (= res!16972 (not lt!7060))))

(declare-fun b!36113 () Bool)

(declare-fun e!18455 () Bool)

(declare-fun lt!7063 () Bool)

(assert (=> b!36113 (= e!18455 lt!7063)))

(declare-fun b!36114 () Bool)

(declare-fun e!18444 () Bool)

(declare-fun e!18458 () Bool)

(assert (=> b!36114 (= e!18444 (not e!18458))))

(declare-fun c!7800 () Bool)

(declare-fun lt!7065 () Bool)

(assert (=> b!36114 (= c!7800 (or lt!7065 (is-Not!6 out!53)))))

(declare-fun b!36115 () Bool)

(declare-fun e!18453 () Bool)

(declare-fun lt!7066 () Bool)

(assert (=> b!36115 (= e!18453 lt!7066)))

(declare-fun b!36116 () Bool)

(declare-fun e!18438 () Bool)

(assert (=> b!36116 (= e!18454 e!18438)))

(declare-fun res!16971 () Bool)

(assert (=> b!36116 (=> res!16971 e!18438)))

(declare-fun lt!7059 () Bool)

(declare-fun lt!7068 () Bool)

(assert (=> b!36116 (= res!16971 (and lt!7059 (not lt!7068)))))

(declare-fun e!18440 () Bool)

(assert (=> b!36116 (= lt!7068 e!18440)))

(declare-fun c!7795 () Bool)

(assert (=> b!36116 (= c!7795 (or lt!7059 (is-Not!6 out!53)))))

(assert (=> b!36116 (= lt!7059 (is-Or!6 out!53))))

(declare-fun b!36117 () Bool)

(declare-fun e!18443 () Bool)

(declare-fun e!18459 () Bool)

(assert (=> b!36117 (= e!18443 e!18459)))

(declare-fun c!7804 () Bool)

(assert (=> b!36117 (= c!7804 lt!7060)))

(declare-fun lt!7062 () Bool)

(assert (=> b!36117 (= lt!7062 e!18453)))

(declare-fun c!7797 () Bool)

(assert (=> b!36117 (= c!7797 e!18442)))

(declare-fun res!16977 () Bool)

(assert (=> b!36117 (=> res!16977 e!18442)))

(declare-fun lt!7064 () Bool)

(assert (=> b!36117 (= res!16977 (and lt!7060 (not lt!7064)))))

(declare-fun e!18437 () Bool)

(assert (=> b!36117 (= lt!7064 e!18437)))

(declare-fun c!7802 () Bool)

(assert (=> b!36117 (= c!7802 (or lt!7060 (is-Not!6 out!53)))))

(assert (=> b!36117 (= lt!7060 (is-Or!6 out!53))))

(declare-fun b!36118 () Bool)

(declare-fun e!18448 () Bool)

(declare-fun e!18447 () Bool)

(assert (=> b!36118 (= e!18448 (not e!18447))))

(declare-fun c!7801 () Bool)

(declare-fun lt!7070 () Bool)

(assert (=> b!36118 (= c!7801 (or lt!7070 (is-Not!6 out!53)))))

(declare-fun b!36119 () Bool)

(declare-fun e!18439 () Bool)

(assert (=> b!36119 (= e!18439 e!18448)))

(declare-fun res!16974 () Bool)

(assert (=> b!36119 (=> (not res!16974) (not e!18448))))

(assert (=> b!36119 (= res!16974 lt!7070)))

(assert (=> b!36119 (= lt!7070 false)))

(declare-fun b!36120 () Bool)

(declare-fun e!18450 () Expr!5)

(assert (=> b!36120 (= e!18450 (rhs!206 out!53))))

(declare-fun b!36121 () Bool)

(declare-fun e!18449 () Bool)

(declare-fun e!18452 () Expr!5)

(assert (=> b!36121 (= e!18449 (existsImplies!0 e!18452))))

(declare-fun c!7796 () Bool)

(declare-fun lt!7069 () Bool)

(assert (=> b!36121 (= c!7796 lt!7069)))

(declare-fun b!36122 () Bool)

(declare-fun e!18456 () Bool)

(assert (=> b!36122 (= e!18456 (existsImplies!0 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36123 () Bool)

(declare-fun e!18446 () Bool)

(assert (=> b!36123 (= e!18446 e!18443)))

(declare-fun c!7805 () Bool)

(assert (=> b!36123 (= c!7805 lt!7057)))

(assert (=> b!36123 (= lt!7066 e!18449)))

(declare-fun c!7798 () Bool)

(assert (=> b!36123 (= c!7798 e!18445)))

(declare-fun res!16962 () Bool)

(assert (=> b!36123 (=> res!16962 e!18445)))

(assert (=> b!36123 (= res!16962 lt!7069)))

(assert (=> b!36123 (= lt!7069 (and lt!7057 (not lt!7063)))))

(assert (=> b!36123 (= lt!7063 e!18456)))

(declare-fun c!7799 () Bool)

(assert (=> b!36123 (= c!7799 (or lt!7057 (is-Or!6 out!53) (is-Not!6 out!53)))))

(assert (=> b!36123 (= lt!7057 (is-And!6 out!53))))

(declare-fun b!36124 () Bool)

(declare-fun res!16963 () Bool)

(assert (=> b!36124 (= e!18440 res!16963)))

(assert (=> b!36124 true))

(declare-fun b!36125 () Bool)

(assert (=> b!36125 (= e!18459 (or lt!7064 lt!7062))))

(declare-fun b!36126 () Bool)

(declare-fun e!18441 () Bool)

(declare-fun res!16966 () Bool)

(assert (=> b!36126 (= e!18441 res!16966)))

(assert (=> b!36126 true))

(assert (=> b!36126 true))

(declare-fun b!36127 () Bool)

(declare-fun e!18451 () Bool)

(assert (=> b!36127 (= e!18451 (not e!18455))))

(declare-fun c!7803 () Bool)

(declare-fun lt!7067 () Bool)

(assert (=> b!36127 (= c!7803 (or lt!7067 (is-Not!6 out!53)))))

(declare-fun b!36128 () Bool)

(assert (=> b!36128 (= e!18441 lt!7064)))

(declare-fun b!36129 () Bool)

(assert (=> b!36129 (= e!18438 e!18439)))

(declare-fun res!16959 () Bool)

(assert (=> b!36129 (=> (not res!16959) (not e!18439))))

(assert (=> b!36129 (= res!16959 (not lt!7059))))

(declare-fun b!36130 () Bool)

(assert (=> b!36130 (= e!18452 e!18450)))

(declare-fun c!7806 () Bool)

(assert (=> b!36130 (= c!7806 e!18451)))

(declare-fun res!16961 () Bool)

(assert (=> b!36130 (=> (not res!16961) (not e!18451))))

(assert (=> b!36130 (= res!16961 lt!7067)))

(assert (=> b!36130 (= lt!7067 (is-Or!6 out!53))))

(declare-fun b!36131 () Bool)

(declare-fun res!16968 () Bool)

(assert (=> b!36131 (= e!18437 res!16968)))

(assert (=> b!36131 true))

(declare-fun b!36132 () Bool)

(declare-fun res!16964 () Bool)

(assert (=> b!36132 (= e!18456 res!16964)))

(assert (=> b!36132 true))

(declare-fun b!36133 () Bool)

(declare-fun res!16973 () Bool)

(assert (=> b!36133 (= e!18455 res!16973)))

(assert (=> b!36133 true))

(declare-fun b!36134 () Bool)

(declare-fun res!16969 () Bool)

(assert (=> b!36134 (= e!18447 res!16969)))

(assert (=> b!36134 true))

(declare-fun b!36135 () Bool)

(declare-fun res!16975 () Bool)

(assert (=> b!36135 (= e!18458 res!16975)))

(assert (=> b!36135 true))

(declare-fun b!36136 () Bool)

(declare-fun res!16960 () Bool)

(assert (=> b!36136 (= e!18453 res!16960)))

(assert (=> b!36136 true))

(declare-fun b!36137 () Bool)

(assert (=> b!36137 (= e!18452 (rhs!204 out!53))))

(declare-fun b!36138 () Bool)

(assert (=> b!36138 (= e!18457 e!18444)))

(declare-fun res!16970 () Bool)

(assert (=> b!36138 (=> (not res!16970) (not e!18444))))

(assert (=> b!36138 (= res!16970 lt!7065)))

(assert (=> b!36138 (= lt!7065 false)))

(declare-fun b!36139 () Bool)

(assert (=> b!36139 (= e!18458 lt!7064)))

(declare-fun b!36140 () Bool)

(assert (=> b!36140 (= e!18440 lt!7063)))

(declare-fun b!36141 () Bool)

(declare-fun res!16976 () Bool)

(assert (=> b!36141 (= e!18449 res!16976)))

(assert (=> b!36141 true))

(declare-fun b!36142 () Bool)

(assert (=> b!36142 (= e!18443 (or lt!7063 lt!7066))))

(declare-fun b!36143 () Bool)

(assert (=> b!36143 (= e!18447 lt!7068)))

(declare-fun lt!7061 () Bool)

(declare-fun b!36144 () Bool)

(declare-fun lt!7058 () Bool)

(assert (=> b!36144 (= e!18459 (ite lt!7061 (or lt!7058 lt!7062) (and (is-Not!6 out!53) lt!7058)))))

(assert (=> b!36144 (= lt!7058 e!18441)))

(declare-fun c!7807 () Bool)

(assert (=> b!36144 (= c!7807 (or lt!7061 (is-Not!6 out!53)))))

(assert (=> b!36144 (= lt!7061 false)))

(declare-fun d!18524 () Bool)

(declare-fun res!16967 () Bool)

(assert (=> d!18524 (=> res!16967 e!18446)))

(assert (=> d!18524 (= res!16967 (is-Implies!6 out!53))))

(assert (=> d!18524 (= (existsImplies!0 out!53) e!18446)))

(declare-fun b!36145 () Bool)

(assert (=> b!36145 (= e!18437 lt!7063)))

(declare-fun b!36146 () Bool)

(assert (=> b!36146 (= e!18450 (rhs!205 out!53))))

(assert (= (and d!18524 (not res!16967)) b!36123))

(assert (= (and b!36123 c!7799) b!36122))

(assert (= (and b!36123 (not c!7799)) b!36132))

(assert (= (and b!36123 (not res!16962)) b!36111))

(assert (= (and b!36111 res!16965) b!36116))

(assert (= (and b!36116 c!7795) b!36140))

(assert (= (and b!36116 (not c!7795)) b!36124))

(assert (= (and b!36116 (not res!16971)) b!36129))

(assert (= (and b!36129 res!16959) b!36119))

(assert (= (and b!36119 res!16974) b!36118))

(assert (= (and b!36118 c!7801) b!36143))

(assert (= (and b!36118 (not c!7801)) b!36134))

(assert (= (and b!36130 res!16961) b!36127))

(assert (= (and b!36127 c!7803) b!36113))

(assert (= (and b!36127 (not c!7803)) b!36133))

(assert (= (and b!36130 c!7806) b!36120))

(assert (= (and b!36130 (not c!7806)) b!36146))

(assert (= (and b!36121 c!7796) b!36137))

(assert (= (and b!36121 (not c!7796)) b!36130))

(assert (= (and b!36123 c!7798) b!36121))

(assert (= (and b!36123 (not c!7798)) b!36141))

(assert (= (and b!36117 c!7802) b!36145))

(assert (= (and b!36117 (not c!7802)) b!36131))

(assert (= (and b!36117 (not res!16977)) b!36112))

(assert (= (and b!36112 res!16972) b!36138))

(assert (= (and b!36138 res!16970) b!36114))

(assert (= (and b!36114 c!7800) b!36139))

(assert (= (and b!36114 (not c!7800)) b!36135))

(assert (= (and b!36117 c!7797) b!36115))

(assert (= (and b!36117 (not c!7797)) b!36136))

(assert (= (and b!36144 c!7807) b!36128))

(assert (= (and b!36144 (not c!7807)) b!36126))

(assert (= (and b!36117 c!7804) b!36125))

(assert (= (and b!36117 (not c!7804)) b!36144))

(assert (= (and b!36123 c!7805) b!36142))

(assert (= (and b!36123 (not c!7805)) b!36117))

(declare-fun m!38179 () Bool)

(assert (=> b!36121 m!38179))

(declare-fun m!38181 () Bool)

(assert (=> b!36122 m!38181))

(assert (=> b!35869 d!18524))

(declare-fun b_lambda!9593 () Bool)

(assert (= b_lambda!9591 (or b!35870 b_lambda!9593)))

(declare-fun bs!11313 () Bool)

(declare-fun d!18526 () Bool)

(assert (= bs!11313 (and d!18526 b!35870)))

(assert (=> bs!11313 (= (dynLambda!647 lambda!4197 out!53) (is-Implies!6 out!53))))

(assert (=> d!18522 d!18526))

(push 1)

(assert (not b!35903))

(assert (not d!18518))

(assert (not b!36013))

(assert (not b!35928))

(assert (not b!35918))

(assert (not b!35914))

(assert (not b!36121))

(assert (not b!35913))

(assert (not d!18520))

(assert (not b!36005))

(assert (not b!35929))

(assert (not b!36122))

(assert (not b_lambda!9593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11314 () Bool)

(declare-fun b!36160 () Bool)

(assert (= bs!11314 (and b!36160 b!35870)))

(declare-fun lambda!4202 () Int)

(assert (=> bs!11314 (= lambda!4202 lambda!4197)))

(declare-fun bs!11315 () Bool)

(assert (= bs!11315 (and b!36160 b!35914)))

(assert (=> bs!11315 (= lambda!4202 lambda!4200)))

(declare-fun bs!11316 () Bool)

(assert (= bs!11316 (and b!36160 b!35929)))

(assert (=> bs!11316 (= lambda!4202 lambda!4201)))

(declare-fun b!36147 () Bool)

(declare-fun e!18467 () Expr!5)

(declare-fun lt!7079 () Expr!5)

(assert (=> b!36147 (= e!18467 lt!7079)))

(declare-fun b!36148 () Bool)

(declare-fun e!18460 () Expr!5)

(declare-fun lt!7076 () Expr!5)

(declare-fun lt!7078 () Expr!5)

(assert (=> b!36148 (= e!18460 (And!6 lt!7076 lt!7078))))

(declare-fun lt!7075 () Bool)

(declare-fun b!36149 () Bool)

(declare-fun e!18464 () Expr!5)

(assert (=> b!36149 (= e!18464 (desugar!0 (ite lt!7075 (lhs!204 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (ite (is-Or!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (lhs!206 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (ite (is-Implies!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (lhs!205 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (e!18286 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))))))))))

(declare-fun b!36150 () Bool)

(declare-fun e!18466 () Expr!5)

(declare-fun res!16983 () Expr!5)

(assert (=> b!36150 (= e!18466 res!16983)))

(assert (=> b!36150 true))

(declare-fun b!36151 () Bool)

(declare-fun res!16980 () Expr!5)

(assert (=> b!36151 (= e!18467 res!16980)))

(assert (=> b!36151 true))

(assert (=> b!36151 true))

(declare-fun b!36152 () Bool)

(assert (=> b!36152 (= e!18466 lt!7078)))

(declare-fun b!36153 () Bool)

(declare-fun res!16979 () Expr!5)

(assert (=> b!36153 (= e!18464 res!16979)))

(assert (=> b!36153 true))

(declare-fun b!36154 () Bool)

(declare-fun e!18463 () Expr!5)

(declare-fun res!16982 () Expr!5)

(assert (=> b!36154 (= e!18463 res!16982)))

(assert (=> b!36154 true))

(declare-fun lt!7077 () Expr!5)

(declare-fun lt!7074 () Bool)

(declare-fun b!36155 () Bool)

(declare-fun e!18462 () Expr!5)

(declare-fun lt!7072 () Expr!5)

(assert (=> b!36155 (= e!18462 (ite lt!7074 (Or!6 (Not!6 lt!7077) lt!7072) (ite (is-Not!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (Not!6 lt!7077) (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))

(assert (=> b!36155 (= lt!7077 e!18467)))

(declare-fun c!7813 () Bool)

(assert (=> b!36155 (= c!7813 (or lt!7074 (is-Not!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))

(assert (=> b!36155 (= lt!7074 (is-Implies!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))))))

(declare-fun b!36156 () Bool)

(declare-fun e!18461 () Expr!5)

(declare-fun res!16978 () Expr!5)

(assert (=> b!36156 (= e!18461 res!16978)))

(assert (=> b!36156 true))

(declare-fun b!36157 () Bool)

(assert (=> b!36157 (= e!18461 lt!7076)))

(declare-fun b!36158 () Bool)

(assert (=> b!36158 (= e!18460 e!18462)))

(declare-fun c!7811 () Bool)

(declare-fun lt!7071 () Bool)

(assert (=> b!36158 (= c!7811 lt!7071)))

(assert (=> b!36158 (= lt!7072 e!18466)))

(declare-fun c!7810 () Bool)

(assert (=> b!36158 (= c!7810 (or lt!7071 (is-Implies!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))

(assert (=> b!36158 (= lt!7079 e!18461)))

(declare-fun c!7809 () Bool)

(assert (=> b!36158 (= c!7809 (or lt!7071 (is-Implies!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (is-Not!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))

(assert (=> b!36158 (= lt!7071 (is-Or!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))))))

(declare-fun d!18528 () Bool)

(declare-fun e!18465 () Bool)

(assert (=> d!18528 e!18465))

(declare-fun res!16981 () Bool)

(assert (=> d!18528 (=> (not res!16981) (not e!18465))))

(declare-fun lt!7073 () Expr!5)

(assert (=> d!18528 (= res!16981 (not (existsImplies!0 lt!7073)))))

(assert (=> d!18528 (= lt!7073 e!18460)))

(declare-fun c!7812 () Bool)

(assert (=> d!18528 (= c!7812 lt!7075)))

(assert (=> d!18528 (= lt!7078 e!18463)))

(declare-fun c!7808 () Bool)

(assert (=> d!18528 (= c!7808 (or lt!7075 (is-Or!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (is-Implies!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))

(assert (=> d!18528 (= lt!7076 e!18464)))

(declare-fun c!7814 () Bool)

(assert (=> d!18528 (= c!7814 (or lt!7075 (is-Or!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (is-Implies!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (is-Not!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))

(assert (=> d!18528 (= lt!7075 (is-And!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))))))

(assert (=> d!18528 (= (desugar!0 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) lt!7073)))

(declare-fun b!36159 () Bool)

(assert (=> b!36159 (= e!18463 (desugar!0 (ite lt!7075 (rhs!204 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (ite (is-Or!6 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (rhs!206 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837))))) (rhs!205 (ite lt!6982 (rhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (rhs!206 (rhs!205 e!17837)) (rhs!205 (rhs!205 e!17837)))))))))))

(assert (=> b!36160 (= e!18465 (not (exists!6 lt!7073 lambda!4202)))))

(declare-fun b!36161 () Bool)

(assert (=> b!36161 (= e!18462 (Or!6 lt!7079 lt!7072))))

(assert (= (and d!18528 c!7814) b!36149))

(assert (= (and d!18528 (not c!7814)) b!36153))

(assert (= (and d!18528 c!7808) b!36159))

(assert (= (and d!18528 (not c!7808)) b!36154))

(assert (= (and b!36158 c!7809) b!36157))

(assert (= (and b!36158 (not c!7809)) b!36156))

(assert (= (and b!36158 c!7810) b!36152))

(assert (= (and b!36158 (not c!7810)) b!36150))

(assert (= (and b!36155 c!7813) b!36147))

(assert (= (and b!36155 (not c!7813)) b!36151))

(assert (= (and b!36158 c!7811) b!36161))

(assert (= (and b!36158 (not c!7811)) b!36155))

(assert (= (and d!18528 c!7812) b!36148))

(assert (= (and d!18528 (not c!7812)) b!36158))

(assert (= (and d!18528 res!16981) b!36160))

(declare-fun m!38183 () Bool)

(assert (=> b!36149 m!38183))

(declare-fun m!38185 () Bool)

(assert (=> d!18528 m!38185))

(declare-fun m!38187 () Bool)

(assert (=> b!36159 m!38187))

(declare-fun m!38189 () Bool)

(assert (=> b!36160 m!38189))

(assert (=> b!35928 d!18528))

(declare-fun b!36162 () Bool)

(declare-fun e!18476 () Bool)

(declare-fun e!18485 () Bool)

(assert (=> b!36162 (= e!18476 e!18485)))

(declare-fun res!16990 () Bool)

(assert (=> b!36162 (=> (not res!16990) (not e!18485))))

(declare-fun lt!7080 () Bool)

(assert (=> b!36162 (= res!16990 (not lt!7080))))

(declare-fun b!36163 () Bool)

(declare-fun e!18473 () Bool)

(declare-fun e!18488 () Bool)

(assert (=> b!36163 (= e!18473 e!18488)))

(declare-fun res!16997 () Bool)

(assert (=> b!36163 (=> (not res!16997) (not e!18488))))

(declare-fun lt!7083 () Bool)

(assert (=> b!36163 (= res!16997 (not lt!7083))))

(declare-fun b!36164 () Bool)

(declare-fun e!18486 () Bool)

(declare-fun lt!7086 () Bool)

(assert (=> b!36164 (= e!18486 lt!7086)))

(declare-fun b!36165 () Bool)

(declare-fun e!18475 () Bool)

(declare-fun e!18489 () Bool)

(assert (=> b!36165 (= e!18475 (not e!18489))))

(declare-fun c!7820 () Bool)

(declare-fun lt!7088 () Bool)

(assert (=> b!36165 (= c!7820 (or lt!7088 (is-Not!6 lt!6980)))))

(declare-fun b!36166 () Bool)

(declare-fun e!18484 () Bool)

(declare-fun lt!7089 () Bool)

(assert (=> b!36166 (= e!18484 lt!7089)))

(declare-fun b!36167 () Bool)

(declare-fun e!18469 () Bool)

(assert (=> b!36167 (= e!18485 e!18469)))

(declare-fun res!16996 () Bool)

(assert (=> b!36167 (=> res!16996 e!18469)))

(declare-fun lt!7082 () Bool)

(declare-fun lt!7091 () Bool)

(assert (=> b!36167 (= res!16996 (and lt!7082 (not lt!7091)))))

(declare-fun e!18471 () Bool)

(assert (=> b!36167 (= lt!7091 e!18471)))

(declare-fun c!7815 () Bool)

(assert (=> b!36167 (= c!7815 (or lt!7082 (is-Not!6 lt!6980)))))

(assert (=> b!36167 (= lt!7082 (is-Or!6 lt!6980))))

(declare-fun b!36168 () Bool)

(declare-fun e!18474 () Bool)

(declare-fun e!18490 () Bool)

(assert (=> b!36168 (= e!18474 e!18490)))

(declare-fun c!7824 () Bool)

(assert (=> b!36168 (= c!7824 lt!7083)))

(declare-fun lt!7085 () Bool)

(assert (=> b!36168 (= lt!7085 e!18484)))

(declare-fun c!7817 () Bool)

(assert (=> b!36168 (= c!7817 e!18473)))

(declare-fun res!17002 () Bool)

(assert (=> b!36168 (=> res!17002 e!18473)))

(declare-fun lt!7087 () Bool)

(assert (=> b!36168 (= res!17002 (and lt!7083 (not lt!7087)))))

(declare-fun e!18468 () Bool)

(assert (=> b!36168 (= lt!7087 e!18468)))

(declare-fun c!7822 () Bool)

(assert (=> b!36168 (= c!7822 (or lt!7083 (is-Not!6 lt!6980)))))

(assert (=> b!36168 (= lt!7083 (is-Or!6 lt!6980))))

(declare-fun b!36169 () Bool)

(declare-fun e!18479 () Bool)

(declare-fun e!18478 () Bool)

(assert (=> b!36169 (= e!18479 (not e!18478))))

(declare-fun c!7821 () Bool)

(declare-fun lt!7093 () Bool)

(assert (=> b!36169 (= c!7821 (or lt!7093 (is-Not!6 lt!6980)))))

(declare-fun b!36170 () Bool)

(declare-fun e!18470 () Bool)

(assert (=> b!36170 (= e!18470 e!18479)))

(declare-fun res!16999 () Bool)

(assert (=> b!36170 (=> (not res!16999) (not e!18479))))

(assert (=> b!36170 (= res!16999 lt!7093)))

(assert (=> b!36170 (= lt!7093 false)))

(declare-fun b!36171 () Bool)

(declare-fun e!18481 () Expr!5)

(assert (=> b!36171 (= e!18481 (rhs!206 lt!6980))))

(declare-fun b!36172 () Bool)

(declare-fun e!18480 () Bool)

(declare-fun e!18483 () Expr!5)

(assert (=> b!36172 (= e!18480 (existsImplies!0 e!18483))))

(declare-fun c!7816 () Bool)

(declare-fun lt!7092 () Bool)

(assert (=> b!36172 (= c!7816 lt!7092)))

(declare-fun b!36173 () Bool)

(declare-fun e!18487 () Bool)

(assert (=> b!36173 (= e!18487 (existsImplies!0 (ite lt!7080 (lhs!204 lt!6980) (ite (is-Or!6 lt!6980) (lhs!206 lt!6980) (ite false (lhs!205 lt!6980) (e!18286 lt!6980))))))))

(declare-fun b!36174 () Bool)

(declare-fun e!18477 () Bool)

(assert (=> b!36174 (= e!18477 e!18474)))

(declare-fun c!7825 () Bool)

(assert (=> b!36174 (= c!7825 lt!7080)))

(assert (=> b!36174 (= lt!7089 e!18480)))

(declare-fun c!7818 () Bool)

(assert (=> b!36174 (= c!7818 e!18476)))

(declare-fun res!16987 () Bool)

(assert (=> b!36174 (=> res!16987 e!18476)))

(assert (=> b!36174 (= res!16987 lt!7092)))

(assert (=> b!36174 (= lt!7092 (and lt!7080 (not lt!7086)))))

(assert (=> b!36174 (= lt!7086 e!18487)))

(declare-fun c!7819 () Bool)

(assert (=> b!36174 (= c!7819 (or lt!7080 (is-Or!6 lt!6980) (is-Not!6 lt!6980)))))

(assert (=> b!36174 (= lt!7080 (is-And!6 lt!6980))))

(declare-fun b!36175 () Bool)

(declare-fun res!16988 () Bool)

(assert (=> b!36175 (= e!18471 res!16988)))

(assert (=> b!36175 true))

(declare-fun b!36176 () Bool)

(assert (=> b!36176 (= e!18490 (or lt!7087 lt!7085))))

(declare-fun b!36177 () Bool)

(declare-fun e!18472 () Bool)

(declare-fun res!16991 () Bool)

(assert (=> b!36177 (= e!18472 res!16991)))

(assert (=> b!36177 true))

(assert (=> b!36177 true))

(declare-fun b!36178 () Bool)

(declare-fun e!18482 () Bool)

(assert (=> b!36178 (= e!18482 (not e!18486))))

(declare-fun c!7823 () Bool)

(declare-fun lt!7090 () Bool)

(assert (=> b!36178 (= c!7823 (or lt!7090 (is-Not!6 lt!6980)))))

(declare-fun b!36179 () Bool)

(assert (=> b!36179 (= e!18472 lt!7087)))

(declare-fun b!36180 () Bool)

(assert (=> b!36180 (= e!18469 e!18470)))

(declare-fun res!16984 () Bool)

(assert (=> b!36180 (=> (not res!16984) (not e!18470))))

(assert (=> b!36180 (= res!16984 (not lt!7082))))

(declare-fun b!36181 () Bool)

(assert (=> b!36181 (= e!18483 e!18481)))

(declare-fun c!7826 () Bool)

(assert (=> b!36181 (= c!7826 e!18482)))

(declare-fun res!16986 () Bool)

(assert (=> b!36181 (=> (not res!16986) (not e!18482))))

(assert (=> b!36181 (= res!16986 lt!7090)))

(assert (=> b!36181 (= lt!7090 (is-Or!6 lt!6980))))

(declare-fun b!36182 () Bool)

(declare-fun res!16993 () Bool)

(assert (=> b!36182 (= e!18468 res!16993)))

(assert (=> b!36182 true))

(declare-fun b!36183 () Bool)

(declare-fun res!16989 () Bool)

(assert (=> b!36183 (= e!18487 res!16989)))

(assert (=> b!36183 true))

(declare-fun b!36184 () Bool)

(declare-fun res!16998 () Bool)

(assert (=> b!36184 (= e!18486 res!16998)))

(assert (=> b!36184 true))

(declare-fun b!36185 () Bool)

(declare-fun res!16994 () Bool)

(assert (=> b!36185 (= e!18478 res!16994)))

(assert (=> b!36185 true))

(declare-fun b!36186 () Bool)

(declare-fun res!17000 () Bool)

(assert (=> b!36186 (= e!18489 res!17000)))

(assert (=> b!36186 true))

(declare-fun b!36187 () Bool)

(declare-fun res!16985 () Bool)

(assert (=> b!36187 (= e!18484 res!16985)))

(assert (=> b!36187 true))

(declare-fun b!36188 () Bool)

(assert (=> b!36188 (= e!18483 (rhs!204 lt!6980))))

(declare-fun b!36189 () Bool)

(assert (=> b!36189 (= e!18488 e!18475)))

(declare-fun res!16995 () Bool)

(assert (=> b!36189 (=> (not res!16995) (not e!18475))))

(assert (=> b!36189 (= res!16995 lt!7088)))

(assert (=> b!36189 (= lt!7088 false)))

(declare-fun b!36190 () Bool)

(assert (=> b!36190 (= e!18489 lt!7087)))

(declare-fun b!36191 () Bool)

(assert (=> b!36191 (= e!18471 lt!7086)))

(declare-fun b!36192 () Bool)

(declare-fun res!17001 () Bool)

(assert (=> b!36192 (= e!18480 res!17001)))

(assert (=> b!36192 true))

(declare-fun b!36193 () Bool)

(assert (=> b!36193 (= e!18474 (or lt!7086 lt!7089))))

(declare-fun b!36194 () Bool)

(assert (=> b!36194 (= e!18478 lt!7091)))

(declare-fun lt!7081 () Bool)

(declare-fun b!36195 () Bool)

(declare-fun lt!7084 () Bool)

(assert (=> b!36195 (= e!18490 (ite lt!7084 (or lt!7081 lt!7085) (and (is-Not!6 lt!6980) lt!7081)))))

(assert (=> b!36195 (= lt!7081 e!18472)))

(declare-fun c!7827 () Bool)

(assert (=> b!36195 (= c!7827 (or lt!7084 (is-Not!6 lt!6980)))))

(assert (=> b!36195 (= lt!7084 false)))

(declare-fun d!18530 () Bool)

(declare-fun res!16992 () Bool)

(assert (=> d!18530 (=> res!16992 e!18477)))

(assert (=> d!18530 (= res!16992 (is-Implies!6 lt!6980))))

(assert (=> d!18530 (= (existsImplies!0 lt!6980) e!18477)))

(declare-fun b!36196 () Bool)

(assert (=> b!36196 (= e!18468 lt!7086)))

(declare-fun b!36197 () Bool)

(assert (=> b!36197 (= e!18481 (rhs!205 lt!6980))))

(assert (= (and d!18530 (not res!16992)) b!36174))

(assert (= (and b!36174 c!7819) b!36173))

(assert (= (and b!36174 (not c!7819)) b!36183))

(assert (= (and b!36174 (not res!16987)) b!36162))

(assert (= (and b!36162 res!16990) b!36167))

(assert (= (and b!36167 c!7815) b!36191))

(assert (= (and b!36167 (not c!7815)) b!36175))

(assert (= (and b!36167 (not res!16996)) b!36180))

(assert (= (and b!36180 res!16984) b!36170))

(assert (= (and b!36170 res!16999) b!36169))

(assert (= (and b!36169 c!7821) b!36194))

(assert (= (and b!36169 (not c!7821)) b!36185))

(assert (= (and b!36181 res!16986) b!36178))

(assert (= (and b!36178 c!7823) b!36164))

(assert (= (and b!36178 (not c!7823)) b!36184))

(assert (= (and b!36181 c!7826) b!36171))

(assert (= (and b!36181 (not c!7826)) b!36197))

(assert (= (and b!36172 c!7816) b!36188))

(assert (= (and b!36172 (not c!7816)) b!36181))

(assert (= (and b!36174 c!7818) b!36172))

(assert (= (and b!36174 (not c!7818)) b!36192))

(assert (= (and b!36168 c!7822) b!36196))

(assert (= (and b!36168 (not c!7822)) b!36182))

(assert (= (and b!36168 (not res!17002)) b!36163))

(assert (= (and b!36163 res!16997) b!36189))

(assert (= (and b!36189 res!16995) b!36165))

(assert (= (and b!36165 c!7820) b!36190))

(assert (= (and b!36165 (not c!7820)) b!36186))

(assert (= (and b!36168 c!7817) b!36166))

(assert (= (and b!36168 (not c!7817)) b!36187))

(assert (= (and b!36195 c!7827) b!36179))

(assert (= (and b!36195 (not c!7827)) b!36177))

(assert (= (and b!36168 c!7824) b!36176))

(assert (= (and b!36168 (not c!7824)) b!36195))

(assert (= (and b!36174 c!7825) b!36193))

(assert (= (and b!36174 (not c!7825)) b!36168))

(declare-fun m!38191 () Bool)

(assert (=> b!36172 m!38191))

(declare-fun m!38193 () Bool)

(assert (=> b!36173 m!38193))

(assert (=> d!18520 d!18530))

(declare-fun b!36198 () Bool)

(declare-fun e!18509 () Bool)

(declare-fun lt!7097 () Bool)

(assert (=> b!36198 (= e!18509 lt!7097)))

(declare-fun b!36199 () Bool)

(declare-fun e!18502 () Expr!5)

(assert (=> b!36199 (= e!18502 (rhs!206 e!18371))))

(declare-fun lt!7106 () Bool)

(declare-fun e!18491 () Bool)

(declare-fun b!36200 () Bool)

(assert (=> b!36200 (= e!18491 (exists!6 (ite lt!7106 (lhs!204 e!18371) (ite (is-Or!6 e!18371) (lhs!206 e!18371) (ite (is-Implies!6 e!18371) (lhs!205 e!18371) (e!18286 e!18371)))) lambda!4197))))

(declare-fun b!36201 () Bool)

(declare-fun e!18508 () Bool)

(declare-fun e!18503 () Bool)

(assert (=> b!36201 (= e!18508 e!18503)))

(declare-fun res!17019 () Bool)

(assert (=> b!36201 (=> (not res!17019) (not e!18503))))

(declare-fun lt!7104 () Bool)

(assert (=> b!36201 (= res!17019 lt!7104)))

(assert (=> b!36201 (= lt!7104 (is-Implies!6 e!18371))))

(declare-fun b!36202 () Bool)

(declare-fun e!18495 () Expr!5)

(assert (=> b!36202 (= e!18495 (rhs!204 e!18371))))

(declare-fun b!36203 () Bool)

(declare-fun e!18494 () Bool)

(declare-fun e!18492 () Bool)

(assert (=> b!36203 (= e!18494 e!18492)))

(declare-fun c!7837 () Bool)

(declare-fun lt!7105 () Bool)

(assert (=> b!36203 (= c!7837 lt!7105)))

(declare-fun lt!7095 () Bool)

(declare-fun e!18507 () Bool)

(assert (=> b!36203 (= lt!7095 e!18507)))

(declare-fun c!7831 () Bool)

(declare-fun e!18505 () Bool)

(assert (=> b!36203 (= c!7831 e!18505)))

(declare-fun res!17013 () Bool)

(assert (=> b!36203 (=> res!17013 e!18505)))

(declare-fun lt!7096 () Bool)

(assert (=> b!36203 (= res!17013 (and lt!7105 (not lt!7096)))))

(declare-fun e!18510 () Bool)

(assert (=> b!36203 (= lt!7096 e!18510)))

(declare-fun c!7830 () Bool)

(assert (=> b!36203 (= c!7830 (or lt!7105 (is-Implies!6 e!18371) (is-Not!6 e!18371)))))

(assert (=> b!36203 (= lt!7105 (is-Or!6 e!18371))))

(declare-fun b!36204 () Bool)

(assert (=> b!36204 (= e!18492 (or lt!7096 lt!7095))))

(declare-fun b!36205 () Bool)

(declare-fun e!18513 () Bool)

(assert (=> b!36205 (= e!18503 (not e!18513))))

(declare-fun c!7834 () Bool)

(assert (=> b!36205 (= c!7834 (or lt!7104 (is-Not!6 e!18371)))))

(declare-fun b!36206 () Bool)

(declare-fun e!18506 () Bool)

(declare-fun e!18511 () Bool)

(assert (=> b!36206 (= e!18506 (not e!18511))))

(declare-fun c!7828 () Bool)

(declare-fun lt!7099 () Bool)

(assert (=> b!36206 (= c!7828 (or lt!7099 (is-Implies!6 e!18371) (is-Not!6 e!18371)))))

(declare-fun b!36207 () Bool)

(declare-fun e!18497 () Bool)

(declare-fun res!17009 () Bool)

(assert (=> b!36207 (= e!18497 res!17009)))

(assert (=> b!36207 true))

(declare-fun b!36208 () Bool)

(declare-fun e!18504 () Bool)

(assert (=> b!36208 (= e!18504 (exists!6 e!18495 lambda!4197))))

(declare-fun c!7829 () Bool)

(declare-fun lt!7098 () Bool)

(assert (=> b!36208 (= c!7829 lt!7098)))

(declare-fun b!36209 () Bool)

(assert (=> b!36209 (= e!18495 e!18502)))

(declare-fun c!7832 () Bool)

(assert (=> b!36209 (= c!7832 e!18506)))

(declare-fun res!17014 () Bool)

(assert (=> b!36209 (=> (not res!17014) (not e!18506))))

(assert (=> b!36209 (= res!17014 lt!7099)))

(assert (=> b!36209 (= lt!7099 (is-Or!6 e!18371))))

(declare-fun b!36210 () Bool)

(declare-fun lt!7100 () Bool)

(assert (=> b!36210 (= e!18511 lt!7100)))

(declare-fun b!36211 () Bool)

(declare-fun e!18498 () Bool)

(declare-fun e!18512 () Bool)

(assert (=> b!36211 (= e!18498 e!18512)))

(declare-fun res!17003 () Bool)

(assert (=> b!36211 (=> (not res!17003) (not e!18512))))

(assert (=> b!36211 (= res!17003 (not lt!7106))))

(declare-fun b!36212 () Bool)

(assert (=> b!36212 (= e!18497 lt!7100)))

(declare-fun b!36213 () Bool)

(declare-fun res!17007 () Bool)

(assert (=> b!36213 (= e!18507 res!17007)))

(assert (=> b!36213 true))

(declare-fun b!36214 () Bool)

(assert (=> b!36214 (= e!18505 e!18508)))

(declare-fun res!17015 () Bool)

(assert (=> b!36214 (=> (not res!17015) (not e!18508))))

(assert (=> b!36214 (= res!17015 (not lt!7105))))

(declare-fun b!36215 () Bool)

(assert (=> b!36215 (= e!18513 lt!7096)))

(declare-fun b!36216 () Bool)

(declare-fun lt!7101 () Bool)

(assert (=> b!36216 (= e!18494 (or lt!7100 lt!7101))))

(declare-fun b!36217 () Bool)

(declare-fun res!17020 () Bool)

(assert (=> b!36217 (= e!18511 res!17020)))

(assert (=> b!36217 true))

(declare-fun b!36218 () Bool)

(declare-fun res!17008 () Bool)

(assert (=> b!36218 (= e!18510 res!17008)))

(assert (=> b!36218 true))

(declare-fun b!36219 () Bool)

(assert (=> b!36219 (= e!18510 lt!7100)))

(declare-fun d!18532 () Bool)

(declare-fun res!17005 () Bool)

(declare-fun e!18499 () Bool)

(assert (=> d!18532 (=> res!17005 e!18499)))

(assert (=> d!18532 (= res!17005 (dynLambda!647 lambda!4197 e!18371))))

(assert (=> d!18532 (= (exists!6 e!18371 lambda!4197) e!18499)))

(declare-fun b!36220 () Bool)

(declare-fun e!18500 () Bool)

(assert (=> b!36220 (= e!18500 lt!7096)))

(declare-fun b!36221 () Bool)

(declare-fun e!18501 () Bool)

(assert (=> b!36221 (= e!18512 e!18501)))

(declare-fun res!17012 () Bool)

(assert (=> b!36221 (=> res!17012 e!18501)))

(declare-fun lt!7103 () Bool)

(assert (=> b!36221 (= res!17012 (and lt!7103 (not lt!7097)))))

(assert (=> b!36221 (= lt!7097 e!18497)))

(declare-fun c!7839 () Bool)

(assert (=> b!36221 (= c!7839 (or lt!7103 (is-Implies!6 e!18371) (is-Not!6 e!18371)))))

(assert (=> b!36221 (= lt!7103 (is-Or!6 e!18371))))

(declare-fun b!36222 () Bool)

(declare-fun e!18496 () Bool)

(declare-fun e!18493 () Bool)

(assert (=> b!36222 (= e!18496 e!18493)))

(declare-fun res!17018 () Bool)

(assert (=> b!36222 (=> (not res!17018) (not e!18493))))

(declare-fun lt!7107 () Bool)

(assert (=> b!36222 (= res!17018 lt!7107)))

(assert (=> b!36222 (= lt!7107 (is-Implies!6 e!18371))))

(declare-fun lt!7094 () Bool)

(declare-fun lt!7102 () Bool)

(declare-fun b!36223 () Bool)

(assert (=> b!36223 (= e!18492 (ite lt!7094 (or lt!7102 lt!7095) (and (is-Not!6 e!18371) lt!7102)))))

(assert (=> b!36223 (= lt!7102 e!18500)))

(declare-fun c!7840 () Bool)

(assert (=> b!36223 (= c!7840 (or lt!7094 (is-Not!6 e!18371)))))

(assert (=> b!36223 (= lt!7094 (is-Implies!6 e!18371))))

(declare-fun b!36224 () Bool)

(declare-fun res!17004 () Bool)

(assert (=> b!36224 (= e!18500 res!17004)))

(assert (=> b!36224 true))

(assert (=> b!36224 true))

(declare-fun b!36225 () Bool)

(declare-fun res!17011 () Bool)

(assert (=> b!36225 (= e!18513 res!17011)))

(assert (=> b!36225 true))

(declare-fun b!36226 () Bool)

(assert (=> b!36226 (= e!18499 e!18494)))

(declare-fun c!7838 () Bool)

(assert (=> b!36226 (= c!7838 lt!7106)))

(assert (=> b!36226 (= lt!7101 e!18504)))

(declare-fun c!7836 () Bool)

(assert (=> b!36226 (= c!7836 e!18498)))

(declare-fun res!17016 () Bool)

(assert (=> b!36226 (=> res!17016 e!18498)))

(assert (=> b!36226 (= res!17016 lt!7098)))

(assert (=> b!36226 (= lt!7098 (and lt!7106 (not lt!7100)))))

(assert (=> b!36226 (= lt!7100 e!18491)))

(declare-fun c!7833 () Bool)

(assert (=> b!36226 (= c!7833 (or lt!7106 (is-Or!6 e!18371) (is-Implies!6 e!18371) (is-Not!6 e!18371)))))

(assert (=> b!36226 (= lt!7106 (is-And!6 e!18371))))

(declare-fun b!36227 () Bool)

(declare-fun res!17006 () Bool)

(assert (=> b!36227 (= e!18509 res!17006)))

(assert (=> b!36227 true))

(declare-fun b!36228 () Bool)

(assert (=> b!36228 (= e!18502 (rhs!205 e!18371))))

(declare-fun b!36229 () Bool)

(assert (=> b!36229 (= e!18501 e!18496)))

(declare-fun res!17021 () Bool)

(assert (=> b!36229 (=> (not res!17021) (not e!18496))))

(assert (=> b!36229 (= res!17021 (not lt!7103))))

(declare-fun b!36230 () Bool)

(declare-fun res!17010 () Bool)

(assert (=> b!36230 (= e!18504 res!17010)))

(assert (=> b!36230 true))

(declare-fun b!36231 () Bool)

(assert (=> b!36231 (= e!18507 lt!7101)))

(declare-fun b!36232 () Bool)

(assert (=> b!36232 (= e!18493 (not e!18509))))

(declare-fun c!7835 () Bool)

(assert (=> b!36232 (= c!7835 (or lt!7107 (is-Not!6 e!18371)))))

(declare-fun b!36233 () Bool)

(declare-fun res!17017 () Bool)

(assert (=> b!36233 (= e!18491 res!17017)))

(assert (=> b!36233 true))

(assert (= (and d!18532 (not res!17005)) b!36226))

(assert (= (and b!36226 c!7833) b!36200))

(assert (= (and b!36226 (not c!7833)) b!36233))

(assert (= (and b!36226 (not res!17016)) b!36211))

(assert (= (and b!36211 res!17003) b!36221))

(assert (= (and b!36221 c!7839) b!36212))

(assert (= (and b!36221 (not c!7839)) b!36207))

(assert (= (and b!36221 (not res!17012)) b!36229))

(assert (= (and b!36229 res!17021) b!36222))

(assert (= (and b!36222 res!17018) b!36232))

(assert (= (and b!36232 c!7835) b!36198))

(assert (= (and b!36232 (not c!7835)) b!36227))

(assert (= (and b!36209 res!17014) b!36206))

(assert (= (and b!36206 c!7828) b!36210))

(assert (= (and b!36206 (not c!7828)) b!36217))

(assert (= (and b!36209 c!7832) b!36199))

(assert (= (and b!36209 (not c!7832)) b!36228))

(assert (= (and b!36208 c!7829) b!36202))

(assert (= (and b!36208 (not c!7829)) b!36209))

(assert (= (and b!36226 c!7836) b!36208))

(assert (= (and b!36226 (not c!7836)) b!36230))

(assert (= (and b!36203 c!7830) b!36219))

(assert (= (and b!36203 (not c!7830)) b!36218))

(assert (= (and b!36203 (not res!17013)) b!36214))

(assert (= (and b!36214 res!17015) b!36201))

(assert (= (and b!36201 res!17019) b!36205))

(assert (= (and b!36205 c!7834) b!36215))

(assert (= (and b!36205 (not c!7834)) b!36225))

(assert (= (and b!36203 c!7831) b!36231))

(assert (= (and b!36203 (not c!7831)) b!36213))

(assert (= (and b!36223 c!7840) b!36220))

(assert (= (and b!36223 (not c!7840)) b!36224))

(assert (= (and b!36203 c!7837) b!36204))

(assert (= (and b!36203 (not c!7837)) b!36223))

(assert (= (and b!36226 c!7838) b!36216))

(assert (= (and b!36226 (not c!7838)) b!36203))

(declare-fun b_lambda!9595 () Bool)

(assert (=> (not b_lambda!9595) (not d!18532)))

(declare-fun m!38195 () Bool)

(assert (=> b!36200 m!38195))

(declare-fun m!38197 () Bool)

(assert (=> b!36208 m!38197))

(declare-fun m!38199 () Bool)

(assert (=> d!18532 m!38199))

(assert (=> b!36013 d!18532))

(declare-fun b!36234 () Bool)

(declare-fun e!18522 () Bool)

(declare-fun e!18531 () Bool)

(assert (=> b!36234 (= e!18522 e!18531)))

(declare-fun res!17028 () Bool)

(assert (=> b!36234 (=> (not res!17028) (not e!18531))))

(declare-fun lt!7108 () Bool)

(assert (=> b!36234 (= res!17028 (not lt!7108))))

(declare-fun b!36235 () Bool)

(declare-fun e!18519 () Bool)

(declare-fun e!18534 () Bool)

(assert (=> b!36235 (= e!18519 e!18534)))

(declare-fun res!17035 () Bool)

(assert (=> b!36235 (=> (not res!17035) (not e!18534))))

(declare-fun lt!7111 () Bool)

(assert (=> b!36235 (= res!17035 (not lt!7111))))

(declare-fun b!36236 () Bool)

(declare-fun e!18532 () Bool)

(declare-fun lt!7114 () Bool)

(assert (=> b!36236 (= e!18532 lt!7114)))

(declare-fun b!36237 () Bool)

(declare-fun e!18521 () Bool)

(declare-fun e!18535 () Bool)

(assert (=> b!36237 (= e!18521 (not e!18535))))

(declare-fun c!7846 () Bool)

(declare-fun lt!7116 () Bool)

(assert (=> b!36237 (= c!7846 (or lt!7116 (is-Not!6 e!18452)))))

(declare-fun b!36238 () Bool)

(declare-fun e!18530 () Bool)

(declare-fun lt!7117 () Bool)

(assert (=> b!36238 (= e!18530 lt!7117)))

(declare-fun b!36239 () Bool)

(declare-fun e!18515 () Bool)

(assert (=> b!36239 (= e!18531 e!18515)))

(declare-fun res!17034 () Bool)

(assert (=> b!36239 (=> res!17034 e!18515)))

(declare-fun lt!7110 () Bool)

(declare-fun lt!7119 () Bool)

(assert (=> b!36239 (= res!17034 (and lt!7110 (not lt!7119)))))

(declare-fun e!18517 () Bool)

(assert (=> b!36239 (= lt!7119 e!18517)))

(declare-fun c!7841 () Bool)

(assert (=> b!36239 (= c!7841 (or lt!7110 (is-Not!6 e!18452)))))

(assert (=> b!36239 (= lt!7110 (is-Or!6 e!18452))))

(declare-fun b!36240 () Bool)

(declare-fun e!18520 () Bool)

(declare-fun e!18536 () Bool)

(assert (=> b!36240 (= e!18520 e!18536)))

(declare-fun c!7850 () Bool)

(assert (=> b!36240 (= c!7850 lt!7111)))

(declare-fun lt!7113 () Bool)

(assert (=> b!36240 (= lt!7113 e!18530)))

(declare-fun c!7843 () Bool)

(assert (=> b!36240 (= c!7843 e!18519)))

(declare-fun res!17040 () Bool)

(assert (=> b!36240 (=> res!17040 e!18519)))

(declare-fun lt!7115 () Bool)

(assert (=> b!36240 (= res!17040 (and lt!7111 (not lt!7115)))))

(declare-fun e!18514 () Bool)

(assert (=> b!36240 (= lt!7115 e!18514)))

(declare-fun c!7848 () Bool)

(assert (=> b!36240 (= c!7848 (or lt!7111 (is-Not!6 e!18452)))))

(assert (=> b!36240 (= lt!7111 (is-Or!6 e!18452))))

(declare-fun b!36241 () Bool)

(declare-fun e!18525 () Bool)

(declare-fun e!18524 () Bool)

(assert (=> b!36241 (= e!18525 (not e!18524))))

(declare-fun c!7847 () Bool)

(declare-fun lt!7121 () Bool)

(assert (=> b!36241 (= c!7847 (or lt!7121 (is-Not!6 e!18452)))))

(declare-fun b!36242 () Bool)

(declare-fun e!18516 () Bool)

(assert (=> b!36242 (= e!18516 e!18525)))

(declare-fun res!17037 () Bool)

(assert (=> b!36242 (=> (not res!17037) (not e!18525))))

(assert (=> b!36242 (= res!17037 lt!7121)))

(assert (=> b!36242 (= lt!7121 false)))

(declare-fun b!36243 () Bool)

(declare-fun e!18527 () Expr!5)

(assert (=> b!36243 (= e!18527 (rhs!206 e!18452))))

(declare-fun b!36244 () Bool)

(declare-fun e!18526 () Bool)

(declare-fun e!18529 () Expr!5)

(assert (=> b!36244 (= e!18526 (existsImplies!0 e!18529))))

(declare-fun c!7842 () Bool)

(declare-fun lt!7120 () Bool)

(assert (=> b!36244 (= c!7842 lt!7120)))

(declare-fun b!36245 () Bool)

(declare-fun e!18533 () Bool)

(assert (=> b!36245 (= e!18533 (existsImplies!0 (ite lt!7108 (lhs!204 e!18452) (ite (is-Or!6 e!18452) (lhs!206 e!18452) (ite false (lhs!205 e!18452) (e!18286 e!18452))))))))

(declare-fun b!36246 () Bool)

(declare-fun e!18523 () Bool)

(assert (=> b!36246 (= e!18523 e!18520)))

(declare-fun c!7851 () Bool)

(assert (=> b!36246 (= c!7851 lt!7108)))

(assert (=> b!36246 (= lt!7117 e!18526)))

(declare-fun c!7844 () Bool)

(assert (=> b!36246 (= c!7844 e!18522)))

(declare-fun res!17025 () Bool)

(assert (=> b!36246 (=> res!17025 e!18522)))

(assert (=> b!36246 (= res!17025 lt!7120)))

(assert (=> b!36246 (= lt!7120 (and lt!7108 (not lt!7114)))))

(assert (=> b!36246 (= lt!7114 e!18533)))

(declare-fun c!7845 () Bool)

(assert (=> b!36246 (= c!7845 (or lt!7108 (is-Or!6 e!18452) (is-Not!6 e!18452)))))

(assert (=> b!36246 (= lt!7108 (is-And!6 e!18452))))

(declare-fun b!36247 () Bool)

(declare-fun res!17026 () Bool)

(assert (=> b!36247 (= e!18517 res!17026)))

(assert (=> b!36247 true))

(declare-fun b!36248 () Bool)

(assert (=> b!36248 (= e!18536 (or lt!7115 lt!7113))))

(declare-fun b!36249 () Bool)

(declare-fun e!18518 () Bool)

(declare-fun res!17029 () Bool)

(assert (=> b!36249 (= e!18518 res!17029)))

(assert (=> b!36249 true))

(assert (=> b!36249 true))

(declare-fun b!36250 () Bool)

(declare-fun e!18528 () Bool)

(assert (=> b!36250 (= e!18528 (not e!18532))))

(declare-fun c!7849 () Bool)

(declare-fun lt!7118 () Bool)

(assert (=> b!36250 (= c!7849 (or lt!7118 (is-Not!6 e!18452)))))

(declare-fun b!36251 () Bool)

(assert (=> b!36251 (= e!18518 lt!7115)))

(declare-fun b!36252 () Bool)

(assert (=> b!36252 (= e!18515 e!18516)))

(declare-fun res!17022 () Bool)

(assert (=> b!36252 (=> (not res!17022) (not e!18516))))

(assert (=> b!36252 (= res!17022 (not lt!7110))))

(declare-fun b!36253 () Bool)

(assert (=> b!36253 (= e!18529 e!18527)))

(declare-fun c!7852 () Bool)

(assert (=> b!36253 (= c!7852 e!18528)))

(declare-fun res!17024 () Bool)

(assert (=> b!36253 (=> (not res!17024) (not e!18528))))

(assert (=> b!36253 (= res!17024 lt!7118)))

(assert (=> b!36253 (= lt!7118 (is-Or!6 e!18452))))

(declare-fun b!36254 () Bool)

(declare-fun res!17031 () Bool)

(assert (=> b!36254 (= e!18514 res!17031)))

(assert (=> b!36254 true))

(declare-fun b!36255 () Bool)

(declare-fun res!17027 () Bool)

(assert (=> b!36255 (= e!18533 res!17027)))

(assert (=> b!36255 true))

(declare-fun b!36256 () Bool)

(declare-fun res!17036 () Bool)

(assert (=> b!36256 (= e!18532 res!17036)))

(assert (=> b!36256 true))

(declare-fun b!36257 () Bool)

(declare-fun res!17032 () Bool)

(assert (=> b!36257 (= e!18524 res!17032)))

(assert (=> b!36257 true))

(declare-fun b!36258 () Bool)

(declare-fun res!17038 () Bool)

(assert (=> b!36258 (= e!18535 res!17038)))

(assert (=> b!36258 true))

(declare-fun b!36259 () Bool)

(declare-fun res!17023 () Bool)

(assert (=> b!36259 (= e!18530 res!17023)))

(assert (=> b!36259 true))

(declare-fun b!36260 () Bool)

(assert (=> b!36260 (= e!18529 (rhs!204 e!18452))))

(declare-fun b!36261 () Bool)

(assert (=> b!36261 (= e!18534 e!18521)))

(declare-fun res!17033 () Bool)

(assert (=> b!36261 (=> (not res!17033) (not e!18521))))

(assert (=> b!36261 (= res!17033 lt!7116)))

(assert (=> b!36261 (= lt!7116 false)))

(declare-fun b!36262 () Bool)

(assert (=> b!36262 (= e!18535 lt!7115)))

(declare-fun b!36263 () Bool)

(assert (=> b!36263 (= e!18517 lt!7114)))

(declare-fun b!36264 () Bool)

(declare-fun res!17039 () Bool)

(assert (=> b!36264 (= e!18526 res!17039)))

(assert (=> b!36264 true))

(declare-fun b!36265 () Bool)

(assert (=> b!36265 (= e!18520 (or lt!7114 lt!7117))))

(declare-fun b!36266 () Bool)

(assert (=> b!36266 (= e!18524 lt!7119)))

(declare-fun b!36267 () Bool)

(declare-fun lt!7109 () Bool)

(declare-fun lt!7112 () Bool)

(assert (=> b!36267 (= e!18536 (ite lt!7112 (or lt!7109 lt!7113) (and (is-Not!6 e!18452) lt!7109)))))

(assert (=> b!36267 (= lt!7109 e!18518)))

(declare-fun c!7853 () Bool)

(assert (=> b!36267 (= c!7853 (or lt!7112 (is-Not!6 e!18452)))))

(assert (=> b!36267 (= lt!7112 false)))

(declare-fun d!18534 () Bool)

(declare-fun res!17030 () Bool)

(assert (=> d!18534 (=> res!17030 e!18523)))

(assert (=> d!18534 (= res!17030 (is-Implies!6 e!18452))))

(assert (=> d!18534 (= (existsImplies!0 e!18452) e!18523)))

(declare-fun b!36268 () Bool)

(assert (=> b!36268 (= e!18514 lt!7114)))

(declare-fun b!36269 () Bool)

(assert (=> b!36269 (= e!18527 (rhs!205 e!18452))))

(assert (= (and d!18534 (not res!17030)) b!36246))

(assert (= (and b!36246 c!7845) b!36245))

(assert (= (and b!36246 (not c!7845)) b!36255))

(assert (= (and b!36246 (not res!17025)) b!36234))

(assert (= (and b!36234 res!17028) b!36239))

(assert (= (and b!36239 c!7841) b!36263))

(assert (= (and b!36239 (not c!7841)) b!36247))

(assert (= (and b!36239 (not res!17034)) b!36252))

(assert (= (and b!36252 res!17022) b!36242))

(assert (= (and b!36242 res!17037) b!36241))

(assert (= (and b!36241 c!7847) b!36266))

(assert (= (and b!36241 (not c!7847)) b!36257))

(assert (= (and b!36253 res!17024) b!36250))

(assert (= (and b!36250 c!7849) b!36236))

(assert (= (and b!36250 (not c!7849)) b!36256))

(assert (= (and b!36253 c!7852) b!36243))

(assert (= (and b!36253 (not c!7852)) b!36269))

(assert (= (and b!36244 c!7842) b!36260))

(assert (= (and b!36244 (not c!7842)) b!36253))

(assert (= (and b!36246 c!7844) b!36244))

(assert (= (and b!36246 (not c!7844)) b!36264))

(assert (= (and b!36240 c!7848) b!36268))

(assert (= (and b!36240 (not c!7848)) b!36254))

(assert (= (and b!36240 (not res!17040)) b!36235))

(assert (= (and b!36235 res!17035) b!36261))

(assert (= (and b!36261 res!17033) b!36237))

(assert (= (and b!36237 c!7846) b!36262))

(assert (= (and b!36237 (not c!7846)) b!36258))

(assert (= (and b!36240 c!7843) b!36238))

(assert (= (and b!36240 (not c!7843)) b!36259))

(assert (= (and b!36267 c!7853) b!36251))

(assert (= (and b!36267 (not c!7853)) b!36249))

(assert (= (and b!36240 c!7850) b!36248))

(assert (= (and b!36240 (not c!7850)) b!36267))

(assert (= (and b!36246 c!7851) b!36265))

(assert (= (and b!36246 (not c!7851)) b!36240))

(declare-fun m!38201 () Bool)

(assert (=> b!36244 m!38201))

(declare-fun m!38203 () Bool)

(assert (=> b!36245 m!38203))

(assert (=> b!36121 d!18534))

(declare-fun bs!11317 () Bool)

(declare-fun b!36283 () Bool)

(assert (= bs!11317 (and b!36283 b!35870)))

(declare-fun lambda!4203 () Int)

(assert (=> bs!11317 (= lambda!4203 lambda!4197)))

(declare-fun bs!11318 () Bool)

(assert (= bs!11318 (and b!36283 b!35914)))

(assert (=> bs!11318 (= lambda!4203 lambda!4200)))

(declare-fun bs!11319 () Bool)

(assert (= bs!11319 (and b!36283 b!35929)))

(assert (=> bs!11319 (= lambda!4203 lambda!4201)))

(declare-fun bs!11320 () Bool)

(assert (= bs!11320 (and b!36283 b!36160)))

(assert (=> bs!11320 (= lambda!4203 lambda!4202)))

(declare-fun b!36270 () Bool)

(declare-fun e!18544 () Expr!5)

(declare-fun lt!7130 () Expr!5)

(assert (=> b!36270 (= e!18544 lt!7130)))

(declare-fun b!36271 () Bool)

(declare-fun e!18537 () Expr!5)

(declare-fun lt!7127 () Expr!5)

(declare-fun lt!7129 () Expr!5)

(assert (=> b!36271 (= e!18537 (And!6 lt!7127 lt!7129))))

(declare-fun e!18541 () Expr!5)

(declare-fun b!36272 () Bool)

(declare-fun lt!7126 () Bool)

(assert (=> b!36272 (= e!18541 (desugar!0 (ite lt!7126 (lhs!204 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (ite (is-Or!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (lhs!206 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (ite (is-Implies!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (lhs!205 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (e!18286 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))))))))))

(declare-fun b!36273 () Bool)

(declare-fun e!18543 () Expr!5)

(declare-fun res!17046 () Expr!5)

(assert (=> b!36273 (= e!18543 res!17046)))

(assert (=> b!36273 true))

(declare-fun b!36274 () Bool)

(declare-fun res!17043 () Expr!5)

(assert (=> b!36274 (= e!18544 res!17043)))

(assert (=> b!36274 true))

(assert (=> b!36274 true))

(declare-fun b!36275 () Bool)

(assert (=> b!36275 (= e!18543 lt!7129)))

(declare-fun b!36276 () Bool)

(declare-fun res!17042 () Expr!5)

(assert (=> b!36276 (= e!18541 res!17042)))

(assert (=> b!36276 true))

(declare-fun b!36277 () Bool)

(declare-fun e!18540 () Expr!5)

(declare-fun res!17045 () Expr!5)

(assert (=> b!36277 (= e!18540 res!17045)))

(assert (=> b!36277 true))

(declare-fun lt!7128 () Expr!5)

(declare-fun lt!7123 () Expr!5)

(declare-fun b!36278 () Bool)

(declare-fun e!18539 () Expr!5)

(declare-fun lt!7125 () Bool)

(assert (=> b!36278 (= e!18539 (ite lt!7125 (Or!6 (Not!6 lt!7128) lt!7123) (ite (is-Not!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (Not!6 lt!7128) (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))

(assert (=> b!36278 (= lt!7128 e!18544)))

(declare-fun c!7859 () Bool)

(assert (=> b!36278 (= c!7859 (or lt!7125 (is-Not!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))

(assert (=> b!36278 (= lt!7125 (is-Implies!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))))))

(declare-fun b!36279 () Bool)

(declare-fun e!18538 () Expr!5)

(declare-fun res!17041 () Expr!5)

(assert (=> b!36279 (= e!18538 res!17041)))

(assert (=> b!36279 true))

(declare-fun b!36280 () Bool)

(assert (=> b!36280 (= e!18538 lt!7127)))

(declare-fun b!36281 () Bool)

(assert (=> b!36281 (= e!18537 e!18539)))

(declare-fun c!7857 () Bool)

(declare-fun lt!7122 () Bool)

(assert (=> b!36281 (= c!7857 lt!7122)))

(assert (=> b!36281 (= lt!7123 e!18543)))

(declare-fun c!7856 () Bool)

(assert (=> b!36281 (= c!7856 (or lt!7122 (is-Implies!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))

(assert (=> b!36281 (= lt!7130 e!18538)))

(declare-fun c!7855 () Bool)

(assert (=> b!36281 (= c!7855 (or lt!7122 (is-Implies!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (is-Not!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))

(assert (=> b!36281 (= lt!7122 (is-Or!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))))))

(declare-fun d!18536 () Bool)

(declare-fun e!18542 () Bool)

(assert (=> d!18536 e!18542))

(declare-fun res!17044 () Bool)

(assert (=> d!18536 (=> (not res!17044) (not e!18542))))

(declare-fun lt!7124 () Expr!5)

(assert (=> d!18536 (= res!17044 (not (existsImplies!0 lt!7124)))))

(assert (=> d!18536 (= lt!7124 e!18537)))

(declare-fun c!7858 () Bool)

(assert (=> d!18536 (= c!7858 lt!7126)))

(assert (=> d!18536 (= lt!7129 e!18540)))

(declare-fun c!7854 () Bool)

(assert (=> d!18536 (= c!7854 (or lt!7126 (is-Or!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (is-Implies!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))

(assert (=> d!18536 (= lt!7127 e!18541)))

(declare-fun c!7860 () Bool)

(assert (=> d!18536 (= c!7860 (or lt!7126 (is-Or!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (is-Implies!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (is-Not!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))

(assert (=> d!18536 (= lt!7126 (is-And!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))))))

(assert (=> d!18536 (= (desugar!0 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) lt!7124)))

(declare-fun b!36282 () Bool)

(assert (=> b!36282 (= e!18540 (desugar!0 (ite lt!7126 (rhs!204 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (ite (is-Or!6 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (rhs!206 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837))))) (rhs!205 (ite lt!6973 (rhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (rhs!206 (lhs!205 e!17837)) (rhs!205 (lhs!205 e!17837)))))))))))

(assert (=> b!36283 (= e!18542 (not (exists!6 lt!7124 lambda!4203)))))

(declare-fun b!36284 () Bool)

(assert (=> b!36284 (= e!18539 (Or!6 lt!7130 lt!7123))))

(assert (= (and d!18536 c!7860) b!36272))

(assert (= (and d!18536 (not c!7860)) b!36276))

(assert (= (and d!18536 c!7854) b!36282))

(assert (= (and d!18536 (not c!7854)) b!36277))

(assert (= (and b!36281 c!7855) b!36280))

(assert (= (and b!36281 (not c!7855)) b!36279))

(assert (= (and b!36281 c!7856) b!36275))

(assert (= (and b!36281 (not c!7856)) b!36273))

(assert (= (and b!36278 c!7859) b!36270))

(assert (= (and b!36278 (not c!7859)) b!36274))

(assert (= (and b!36281 c!7857) b!36284))

(assert (= (and b!36281 (not c!7857)) b!36278))

(assert (= (and d!18536 c!7858) b!36271))

(assert (= (and d!18536 (not c!7858)) b!36281))

(assert (= (and d!18536 res!17044) b!36283))

(declare-fun m!38205 () Bool)

(assert (=> b!36272 m!38205))

(declare-fun m!38207 () Bool)

(assert (=> d!18536 m!38207))

(declare-fun m!38209 () Bool)

(assert (=> b!36282 m!38209))

(declare-fun m!38211 () Bool)

(assert (=> b!36283 m!38211))

(assert (=> b!35913 d!18536))

(declare-fun b!36285 () Bool)

(declare-fun e!18563 () Bool)

(declare-fun lt!7134 () Bool)

(assert (=> b!36285 (= e!18563 lt!7134)))

(declare-fun b!36286 () Bool)

(declare-fun e!18556 () Expr!5)

(assert (=> b!36286 (= e!18556 (rhs!206 lt!6971))))

(declare-fun e!18545 () Bool)

(declare-fun b!36287 () Bool)

(declare-fun lt!7143 () Bool)

(assert (=> b!36287 (= e!18545 (exists!6 (ite lt!7143 (lhs!204 lt!6971) (ite (is-Or!6 lt!6971) (lhs!206 lt!6971) (ite (is-Implies!6 lt!6971) (lhs!205 lt!6971) (e!18286 lt!6971)))) lambda!4200))))

(declare-fun b!36288 () Bool)

(declare-fun e!18562 () Bool)

(declare-fun e!18557 () Bool)

(assert (=> b!36288 (= e!18562 e!18557)))

(declare-fun res!17063 () Bool)

(assert (=> b!36288 (=> (not res!17063) (not e!18557))))

(declare-fun lt!7141 () Bool)

(assert (=> b!36288 (= res!17063 lt!7141)))

(assert (=> b!36288 (= lt!7141 (is-Implies!6 lt!6971))))

(declare-fun b!36289 () Bool)

(declare-fun e!18549 () Expr!5)

(assert (=> b!36289 (= e!18549 (rhs!204 lt!6971))))

(declare-fun b!36290 () Bool)

(declare-fun e!18548 () Bool)

(declare-fun e!18546 () Bool)

(assert (=> b!36290 (= e!18548 e!18546)))

(declare-fun c!7870 () Bool)

(declare-fun lt!7142 () Bool)

(assert (=> b!36290 (= c!7870 lt!7142)))

(declare-fun lt!7132 () Bool)

(declare-fun e!18561 () Bool)

(assert (=> b!36290 (= lt!7132 e!18561)))

(declare-fun c!7864 () Bool)

(declare-fun e!18559 () Bool)

(assert (=> b!36290 (= c!7864 e!18559)))

(declare-fun res!17057 () Bool)

(assert (=> b!36290 (=> res!17057 e!18559)))

(declare-fun lt!7133 () Bool)

(assert (=> b!36290 (= res!17057 (and lt!7142 (not lt!7133)))))

(declare-fun e!18564 () Bool)

(assert (=> b!36290 (= lt!7133 e!18564)))

(declare-fun c!7863 () Bool)

(assert (=> b!36290 (= c!7863 (or lt!7142 (is-Implies!6 lt!6971) (is-Not!6 lt!6971)))))

(assert (=> b!36290 (= lt!7142 (is-Or!6 lt!6971))))

(declare-fun b!36291 () Bool)

(assert (=> b!36291 (= e!18546 (or lt!7133 lt!7132))))

(declare-fun b!36292 () Bool)

(declare-fun e!18567 () Bool)

(assert (=> b!36292 (= e!18557 (not e!18567))))

(declare-fun c!7867 () Bool)

(assert (=> b!36292 (= c!7867 (or lt!7141 (is-Not!6 lt!6971)))))

(declare-fun b!36293 () Bool)

(declare-fun e!18560 () Bool)

(declare-fun e!18565 () Bool)

(assert (=> b!36293 (= e!18560 (not e!18565))))

(declare-fun c!7861 () Bool)

(declare-fun lt!7136 () Bool)

(assert (=> b!36293 (= c!7861 (or lt!7136 (is-Implies!6 lt!6971) (is-Not!6 lt!6971)))))

(declare-fun b!36294 () Bool)

(declare-fun e!18551 () Bool)

(declare-fun res!17053 () Bool)

(assert (=> b!36294 (= e!18551 res!17053)))

(assert (=> b!36294 true))

(declare-fun b!36295 () Bool)

(declare-fun e!18558 () Bool)

(assert (=> b!36295 (= e!18558 (exists!6 e!18549 lambda!4200))))

(declare-fun c!7862 () Bool)

(declare-fun lt!7135 () Bool)

(assert (=> b!36295 (= c!7862 lt!7135)))

(declare-fun b!36296 () Bool)

(assert (=> b!36296 (= e!18549 e!18556)))

(declare-fun c!7865 () Bool)

(assert (=> b!36296 (= c!7865 e!18560)))

(declare-fun res!17058 () Bool)

(assert (=> b!36296 (=> (not res!17058) (not e!18560))))

(assert (=> b!36296 (= res!17058 lt!7136)))

(assert (=> b!36296 (= lt!7136 (is-Or!6 lt!6971))))

(declare-fun b!36297 () Bool)

(declare-fun lt!7137 () Bool)

(assert (=> b!36297 (= e!18565 lt!7137)))

(declare-fun b!36298 () Bool)

(declare-fun e!18552 () Bool)

(declare-fun e!18566 () Bool)

(assert (=> b!36298 (= e!18552 e!18566)))

(declare-fun res!17047 () Bool)

(assert (=> b!36298 (=> (not res!17047) (not e!18566))))

(assert (=> b!36298 (= res!17047 (not lt!7143))))

(declare-fun b!36299 () Bool)

(assert (=> b!36299 (= e!18551 lt!7137)))

(declare-fun b!36300 () Bool)

(declare-fun res!17051 () Bool)

(assert (=> b!36300 (= e!18561 res!17051)))

(assert (=> b!36300 true))

(declare-fun b!36301 () Bool)

(assert (=> b!36301 (= e!18559 e!18562)))

(declare-fun res!17059 () Bool)

(assert (=> b!36301 (=> (not res!17059) (not e!18562))))

(assert (=> b!36301 (= res!17059 (not lt!7142))))

(declare-fun b!36302 () Bool)

(assert (=> b!36302 (= e!18567 lt!7133)))

(declare-fun b!36303 () Bool)

(declare-fun lt!7138 () Bool)

(assert (=> b!36303 (= e!18548 (or lt!7137 lt!7138))))

(declare-fun b!36304 () Bool)

(declare-fun res!17064 () Bool)

(assert (=> b!36304 (= e!18565 res!17064)))

(assert (=> b!36304 true))

(declare-fun b!36305 () Bool)

(declare-fun res!17052 () Bool)

(assert (=> b!36305 (= e!18564 res!17052)))

(assert (=> b!36305 true))

(declare-fun b!36306 () Bool)

(assert (=> b!36306 (= e!18564 lt!7137)))

(declare-fun d!18538 () Bool)

(declare-fun res!17049 () Bool)

(declare-fun e!18553 () Bool)

(assert (=> d!18538 (=> res!17049 e!18553)))

(assert (=> d!18538 (= res!17049 (dynLambda!647 lambda!4200 lt!6971))))

(assert (=> d!18538 (= (exists!6 lt!6971 lambda!4200) e!18553)))

(declare-fun b!36307 () Bool)

(declare-fun e!18554 () Bool)

(assert (=> b!36307 (= e!18554 lt!7133)))

(declare-fun b!36308 () Bool)

(declare-fun e!18555 () Bool)

(assert (=> b!36308 (= e!18566 e!18555)))

(declare-fun res!17056 () Bool)

(assert (=> b!36308 (=> res!17056 e!18555)))

(declare-fun lt!7140 () Bool)

(assert (=> b!36308 (= res!17056 (and lt!7140 (not lt!7134)))))

(assert (=> b!36308 (= lt!7134 e!18551)))

(declare-fun c!7872 () Bool)

(assert (=> b!36308 (= c!7872 (or lt!7140 (is-Implies!6 lt!6971) (is-Not!6 lt!6971)))))

(assert (=> b!36308 (= lt!7140 (is-Or!6 lt!6971))))

(declare-fun b!36309 () Bool)

(declare-fun e!18550 () Bool)

(declare-fun e!18547 () Bool)

(assert (=> b!36309 (= e!18550 e!18547)))

(declare-fun res!17062 () Bool)

(assert (=> b!36309 (=> (not res!17062) (not e!18547))))

(declare-fun lt!7144 () Bool)

(assert (=> b!36309 (= res!17062 lt!7144)))

(assert (=> b!36309 (= lt!7144 (is-Implies!6 lt!6971))))

(declare-fun b!36310 () Bool)

(declare-fun lt!7131 () Bool)

(declare-fun lt!7139 () Bool)

(assert (=> b!36310 (= e!18546 (ite lt!7131 (or lt!7139 lt!7132) (and (is-Not!6 lt!6971) lt!7139)))))

(assert (=> b!36310 (= lt!7139 e!18554)))

(declare-fun c!7873 () Bool)

(assert (=> b!36310 (= c!7873 (or lt!7131 (is-Not!6 lt!6971)))))

(assert (=> b!36310 (= lt!7131 (is-Implies!6 lt!6971))))

(declare-fun b!36311 () Bool)

(declare-fun res!17048 () Bool)

(assert (=> b!36311 (= e!18554 res!17048)))

(assert (=> b!36311 true))

(assert (=> b!36311 true))

(declare-fun b!36312 () Bool)

(declare-fun res!17055 () Bool)

(assert (=> b!36312 (= e!18567 res!17055)))

(assert (=> b!36312 true))

(declare-fun b!36313 () Bool)

(assert (=> b!36313 (= e!18553 e!18548)))

(declare-fun c!7871 () Bool)

(assert (=> b!36313 (= c!7871 lt!7143)))

(assert (=> b!36313 (= lt!7138 e!18558)))

(declare-fun c!7869 () Bool)

(assert (=> b!36313 (= c!7869 e!18552)))

(declare-fun res!17060 () Bool)

(assert (=> b!36313 (=> res!17060 e!18552)))

(assert (=> b!36313 (= res!17060 lt!7135)))

(assert (=> b!36313 (= lt!7135 (and lt!7143 (not lt!7137)))))

(assert (=> b!36313 (= lt!7137 e!18545)))

(declare-fun c!7866 () Bool)

(assert (=> b!36313 (= c!7866 (or lt!7143 (is-Or!6 lt!6971) (is-Implies!6 lt!6971) (is-Not!6 lt!6971)))))

(assert (=> b!36313 (= lt!7143 (is-And!6 lt!6971))))

(declare-fun b!36314 () Bool)

(declare-fun res!17050 () Bool)

(assert (=> b!36314 (= e!18563 res!17050)))

(assert (=> b!36314 true))

(declare-fun b!36315 () Bool)

(assert (=> b!36315 (= e!18556 (rhs!205 lt!6971))))

(declare-fun b!36316 () Bool)

(assert (=> b!36316 (= e!18555 e!18550)))

(declare-fun res!17065 () Bool)

(assert (=> b!36316 (=> (not res!17065) (not e!18550))))

(assert (=> b!36316 (= res!17065 (not lt!7140))))

(declare-fun b!36317 () Bool)

(declare-fun res!17054 () Bool)

(assert (=> b!36317 (= e!18558 res!17054)))

(assert (=> b!36317 true))

(declare-fun b!36318 () Bool)

(assert (=> b!36318 (= e!18561 lt!7138)))

(declare-fun b!36319 () Bool)

(assert (=> b!36319 (= e!18547 (not e!18563))))

(declare-fun c!7868 () Bool)

(assert (=> b!36319 (= c!7868 (or lt!7144 (is-Not!6 lt!6971)))))

(declare-fun b!36320 () Bool)

(declare-fun res!17061 () Bool)

(assert (=> b!36320 (= e!18545 res!17061)))

(assert (=> b!36320 true))

(assert (= (and d!18538 (not res!17049)) b!36313))

(assert (= (and b!36313 c!7866) b!36287))

(assert (= (and b!36313 (not c!7866)) b!36320))

(assert (= (and b!36313 (not res!17060)) b!36298))

(assert (= (and b!36298 res!17047) b!36308))

(assert (= (and b!36308 c!7872) b!36299))

(assert (= (and b!36308 (not c!7872)) b!36294))

(assert (= (and b!36308 (not res!17056)) b!36316))

(assert (= (and b!36316 res!17065) b!36309))

(assert (= (and b!36309 res!17062) b!36319))

(assert (= (and b!36319 c!7868) b!36285))

(assert (= (and b!36319 (not c!7868)) b!36314))

(assert (= (and b!36296 res!17058) b!36293))

(assert (= (and b!36293 c!7861) b!36297))

(assert (= (and b!36293 (not c!7861)) b!36304))

(assert (= (and b!36296 c!7865) b!36286))

(assert (= (and b!36296 (not c!7865)) b!36315))

(assert (= (and b!36295 c!7862) b!36289))

(assert (= (and b!36295 (not c!7862)) b!36296))

(assert (= (and b!36313 c!7869) b!36295))

(assert (= (and b!36313 (not c!7869)) b!36317))

(assert (= (and b!36290 c!7863) b!36306))

(assert (= (and b!36290 (not c!7863)) b!36305))

(assert (= (and b!36290 (not res!17057)) b!36301))

(assert (= (and b!36301 res!17059) b!36288))

(assert (= (and b!36288 res!17063) b!36292))

(assert (= (and b!36292 c!7867) b!36302))

(assert (= (and b!36292 (not c!7867)) b!36312))

(assert (= (and b!36290 c!7864) b!36318))

(assert (= (and b!36290 (not c!7864)) b!36300))

(assert (= (and b!36310 c!7873) b!36307))

(assert (= (and b!36310 (not c!7873)) b!36311))

(assert (= (and b!36290 c!7870) b!36291))

(assert (= (and b!36290 (not c!7870)) b!36310))

(assert (= (and b!36313 c!7871) b!36303))

(assert (= (and b!36313 (not c!7871)) b!36290))

(declare-fun b_lambda!9597 () Bool)

(assert (=> (not b_lambda!9597) (not d!18538)))

(declare-fun m!38213 () Bool)

(assert (=> b!36287 m!38213))

(declare-fun m!38215 () Bool)

(assert (=> b!36295 m!38215))

(declare-fun m!38217 () Bool)

(assert (=> d!18538 m!38217))

(assert (=> b!35914 d!18538))

(declare-fun bs!11321 () Bool)

(declare-fun b!36334 () Bool)

(assert (= bs!11321 (and b!36334 b!35914)))

(declare-fun lambda!4204 () Int)

(assert (=> bs!11321 (= lambda!4204 lambda!4200)))

(declare-fun bs!11322 () Bool)

(assert (= bs!11322 (and b!36334 b!36283)))

(assert (=> bs!11322 (= lambda!4204 lambda!4203)))

(declare-fun bs!11323 () Bool)

(assert (= bs!11323 (and b!36334 b!36160)))

(assert (=> bs!11323 (= lambda!4204 lambda!4202)))

(declare-fun bs!11324 () Bool)

(assert (= bs!11324 (and b!36334 b!35870)))

(assert (=> bs!11324 (= lambda!4204 lambda!4197)))

(declare-fun bs!11325 () Bool)

(assert (= bs!11325 (and b!36334 b!35929)))

(assert (=> bs!11325 (= lambda!4204 lambda!4201)))

(declare-fun b!36321 () Bool)

(declare-fun e!18575 () Expr!5)

(declare-fun lt!7153 () Expr!5)

(assert (=> b!36321 (= e!18575 lt!7153)))

(declare-fun b!36322 () Bool)

(declare-fun e!18568 () Expr!5)

(declare-fun lt!7150 () Expr!5)

(declare-fun lt!7152 () Expr!5)

(assert (=> b!36322 (= e!18568 (And!6 lt!7150 lt!7152))))

(declare-fun e!18572 () Expr!5)

(declare-fun lt!7149 () Bool)

(declare-fun b!36323 () Bool)

(assert (=> b!36323 (= e!18572 (desugar!0 (ite lt!7149 (lhs!204 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (ite (is-Or!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (lhs!206 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (ite (is-Implies!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (lhs!205 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (e!18286 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))))))))))

(declare-fun b!36324 () Bool)

(declare-fun e!18574 () Expr!5)

(declare-fun res!17071 () Expr!5)

(assert (=> b!36324 (= e!18574 res!17071)))

(assert (=> b!36324 true))

(declare-fun b!36325 () Bool)

(declare-fun res!17068 () Expr!5)

(assert (=> b!36325 (= e!18575 res!17068)))

(assert (=> b!36325 true))

(assert (=> b!36325 true))

(declare-fun b!36326 () Bool)

(assert (=> b!36326 (= e!18574 lt!7152)))

(declare-fun b!36327 () Bool)

(declare-fun res!17067 () Expr!5)

(assert (=> b!36327 (= e!18572 res!17067)))

(assert (=> b!36327 true))

(declare-fun b!36328 () Bool)

(declare-fun e!18571 () Expr!5)

(declare-fun res!17070 () Expr!5)

(assert (=> b!36328 (= e!18571 res!17070)))

(assert (=> b!36328 true))

(declare-fun lt!7151 () Expr!5)

(declare-fun lt!7148 () Bool)

(declare-fun b!36329 () Bool)

(declare-fun e!18570 () Expr!5)

(declare-fun lt!7146 () Expr!5)

(assert (=> b!36329 (= e!18570 (ite lt!7148 (Or!6 (Not!6 lt!7151) lt!7146) (ite (is-Not!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (Not!6 lt!7151) (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))

(assert (=> b!36329 (= lt!7151 e!18575)))

(declare-fun c!7879 () Bool)

(assert (=> b!36329 (= c!7879 (or lt!7148 (is-Not!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))

(assert (=> b!36329 (= lt!7148 (is-Implies!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))))))

(declare-fun b!36330 () Bool)

(declare-fun e!18569 () Expr!5)

(declare-fun res!17066 () Expr!5)

(assert (=> b!36330 (= e!18569 res!17066)))

(assert (=> b!36330 true))

(declare-fun b!36331 () Bool)

(assert (=> b!36331 (= e!18569 lt!7150)))

(declare-fun b!36332 () Bool)

(assert (=> b!36332 (= e!18568 e!18570)))

(declare-fun c!7877 () Bool)

(declare-fun lt!7145 () Bool)

(assert (=> b!36332 (= c!7877 lt!7145)))

(assert (=> b!36332 (= lt!7146 e!18574)))

(declare-fun c!7876 () Bool)

(assert (=> b!36332 (= c!7876 (or lt!7145 (is-Implies!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))

(assert (=> b!36332 (= lt!7153 e!18569)))

(declare-fun c!7875 () Bool)

(assert (=> b!36332 (= c!7875 (or lt!7145 (is-Implies!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (is-Not!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))

(assert (=> b!36332 (= lt!7145 (is-Or!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))))))

(declare-fun d!18540 () Bool)

(declare-fun e!18573 () Bool)

(assert (=> d!18540 e!18573))

(declare-fun res!17069 () Bool)

(assert (=> d!18540 (=> (not res!17069) (not e!18573))))

(declare-fun lt!7147 () Expr!5)

(assert (=> d!18540 (= res!17069 (not (existsImplies!0 lt!7147)))))

(assert (=> d!18540 (= lt!7147 e!18568)))

(declare-fun c!7878 () Bool)

(assert (=> d!18540 (= c!7878 lt!7149)))

(assert (=> d!18540 (= lt!7152 e!18571)))

(declare-fun c!7874 () Bool)

(assert (=> d!18540 (= c!7874 (or lt!7149 (is-Or!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (is-Implies!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))

(assert (=> d!18540 (= lt!7150 e!18572)))

(declare-fun c!7880 () Bool)

(assert (=> d!18540 (= c!7880 (or lt!7149 (is-Or!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (is-Implies!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (is-Not!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))

(assert (=> d!18540 (= lt!7149 (is-And!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))))))

(assert (=> d!18540 (= (desugar!0 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) lt!7147)))

(declare-fun b!36333 () Bool)

(assert (=> b!36333 (= e!18571 (desugar!0 (ite lt!7149 (rhs!204 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (ite (is-Or!6 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (rhs!206 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837)))))) (rhs!205 (ite lt!6982 (lhs!204 (rhs!205 e!17837)) (ite (is-Or!6 (rhs!205 e!17837)) (lhs!206 (rhs!205 e!17837)) (ite (is-Implies!6 (rhs!205 e!17837)) (lhs!205 (rhs!205 e!17837)) (e!18286 (rhs!205 e!17837))))))))))))

(assert (=> b!36334 (= e!18573 (not (exists!6 lt!7147 lambda!4204)))))

(declare-fun b!36335 () Bool)

(assert (=> b!36335 (= e!18570 (Or!6 lt!7153 lt!7146))))

(assert (= (and d!18540 c!7880) b!36323))

(assert (= (and d!18540 (not c!7880)) b!36327))

(assert (= (and d!18540 c!7874) b!36333))

(assert (= (and d!18540 (not c!7874)) b!36328))

(assert (= (and b!36332 c!7875) b!36331))

(assert (= (and b!36332 (not c!7875)) b!36330))

(assert (= (and b!36332 c!7876) b!36326))

(assert (= (and b!36332 (not c!7876)) b!36324))

(assert (= (and b!36329 c!7879) b!36321))

(assert (= (and b!36329 (not c!7879)) b!36325))

(assert (= (and b!36332 c!7877) b!36335))

(assert (= (and b!36332 (not c!7877)) b!36329))

(assert (= (and d!18540 c!7878) b!36322))

(assert (= (and d!18540 (not c!7878)) b!36332))

(assert (= (and d!18540 res!17069) b!36334))

(declare-fun m!38219 () Bool)

(assert (=> b!36323 m!38219))

(declare-fun m!38221 () Bool)

(assert (=> d!18540 m!38221))

(declare-fun m!38223 () Bool)

(assert (=> b!36333 m!38223))

(declare-fun m!38225 () Bool)

(assert (=> b!36334 m!38225))

(assert (=> b!35918 d!18540))

(declare-fun b!36336 () Bool)

(declare-fun e!18584 () Bool)

(declare-fun e!18593 () Bool)

(assert (=> b!36336 (= e!18584 e!18593)))

(declare-fun res!17078 () Bool)

(assert (=> b!36336 (=> (not res!17078) (not e!18593))))

(declare-fun lt!7154 () Bool)

(assert (=> b!36336 (= res!17078 (not lt!7154))))

(declare-fun b!36337 () Bool)

(declare-fun e!18581 () Bool)

(declare-fun e!18596 () Bool)

(assert (=> b!36337 (= e!18581 e!18596)))

(declare-fun res!17085 () Bool)

(assert (=> b!36337 (=> (not res!17085) (not e!18596))))

(declare-fun lt!7157 () Bool)

(assert (=> b!36337 (= res!17085 (not lt!7157))))

(declare-fun b!36338 () Bool)

(declare-fun e!18594 () Bool)

(declare-fun lt!7160 () Bool)

(assert (=> b!36338 (= e!18594 lt!7160)))

(declare-fun b!36339 () Bool)

(declare-fun e!18583 () Bool)

(declare-fun e!18597 () Bool)

(assert (=> b!36339 (= e!18583 (not e!18597))))

(declare-fun c!7886 () Bool)

(declare-fun lt!7162 () Bool)

(assert (=> b!36339 (= c!7886 (or lt!7162 (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(declare-fun b!36340 () Bool)

(declare-fun e!18592 () Bool)

(declare-fun lt!7163 () Bool)

(assert (=> b!36340 (= e!18592 lt!7163)))

(declare-fun b!36341 () Bool)

(declare-fun e!18577 () Bool)

(assert (=> b!36341 (= e!18593 e!18577)))

(declare-fun res!17084 () Bool)

(assert (=> b!36341 (=> res!17084 e!18577)))

(declare-fun lt!7156 () Bool)

(declare-fun lt!7165 () Bool)

(assert (=> b!36341 (= res!17084 (and lt!7156 (not lt!7165)))))

(declare-fun e!18579 () Bool)

(assert (=> b!36341 (= lt!7165 e!18579)))

(declare-fun c!7881 () Bool)

(assert (=> b!36341 (= c!7881 (or lt!7156 (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36341 (= lt!7156 (is-Or!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36342 () Bool)

(declare-fun e!18582 () Bool)

(declare-fun e!18598 () Bool)

(assert (=> b!36342 (= e!18582 e!18598)))

(declare-fun c!7890 () Bool)

(assert (=> b!36342 (= c!7890 lt!7157)))

(declare-fun lt!7159 () Bool)

(assert (=> b!36342 (= lt!7159 e!18592)))

(declare-fun c!7883 () Bool)

(assert (=> b!36342 (= c!7883 e!18581)))

(declare-fun res!17090 () Bool)

(assert (=> b!36342 (=> res!17090 e!18581)))

(declare-fun lt!7161 () Bool)

(assert (=> b!36342 (= res!17090 (and lt!7157 (not lt!7161)))))

(declare-fun e!18576 () Bool)

(assert (=> b!36342 (= lt!7161 e!18576)))

(declare-fun c!7888 () Bool)

(assert (=> b!36342 (= c!7888 (or lt!7157 (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36342 (= lt!7157 (is-Or!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36343 () Bool)

(declare-fun e!18587 () Bool)

(declare-fun e!18586 () Bool)

(assert (=> b!36343 (= e!18587 (not e!18586))))

(declare-fun lt!7167 () Bool)

(declare-fun c!7887 () Bool)

(assert (=> b!36343 (= c!7887 (or lt!7167 (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(declare-fun b!36344 () Bool)

(declare-fun e!18578 () Bool)

(assert (=> b!36344 (= e!18578 e!18587)))

(declare-fun res!17087 () Bool)

(assert (=> b!36344 (=> (not res!17087) (not e!18587))))

(assert (=> b!36344 (= res!17087 lt!7167)))

(assert (=> b!36344 (= lt!7167 false)))

(declare-fun b!36345 () Bool)

(declare-fun e!18589 () Expr!5)

(assert (=> b!36345 (= e!18589 (rhs!206 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36346 () Bool)

(declare-fun e!18588 () Bool)

(declare-fun e!18591 () Expr!5)

(assert (=> b!36346 (= e!18588 (existsImplies!0 e!18591))))

(declare-fun c!7882 () Bool)

(declare-fun lt!7166 () Bool)

(assert (=> b!36346 (= c!7882 lt!7166)))

(declare-fun e!18595 () Bool)

(declare-fun b!36347 () Bool)

(assert (=> b!36347 (= e!18595 (existsImplies!0 (ite lt!7154 (lhs!204 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) (ite (is-Or!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) (lhs!206 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) (ite false (lhs!205 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) (e!18286 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))))))

(declare-fun b!36348 () Bool)

(declare-fun e!18585 () Bool)

(assert (=> b!36348 (= e!18585 e!18582)))

(declare-fun c!7891 () Bool)

(assert (=> b!36348 (= c!7891 lt!7154)))

(assert (=> b!36348 (= lt!7163 e!18588)))

(declare-fun c!7884 () Bool)

(assert (=> b!36348 (= c!7884 e!18584)))

(declare-fun res!17075 () Bool)

(assert (=> b!36348 (=> res!17075 e!18584)))

(assert (=> b!36348 (= res!17075 lt!7166)))

(assert (=> b!36348 (= lt!7166 (and lt!7154 (not lt!7160)))))

(assert (=> b!36348 (= lt!7160 e!18595)))

(declare-fun c!7885 () Bool)

(assert (=> b!36348 (= c!7885 (or lt!7154 (is-Or!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36348 (= lt!7154 (is-And!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36349 () Bool)

(declare-fun res!17076 () Bool)

(assert (=> b!36349 (= e!18579 res!17076)))

(assert (=> b!36349 true))

(declare-fun b!36350 () Bool)

(assert (=> b!36350 (= e!18598 (or lt!7161 lt!7159))))

(declare-fun b!36351 () Bool)

(declare-fun e!18580 () Bool)

(declare-fun res!17079 () Bool)

(assert (=> b!36351 (= e!18580 res!17079)))

(assert (=> b!36351 true))

(assert (=> b!36351 true))

(declare-fun b!36352 () Bool)

(declare-fun e!18590 () Bool)

(assert (=> b!36352 (= e!18590 (not e!18594))))

(declare-fun c!7889 () Bool)

(declare-fun lt!7164 () Bool)

(assert (=> b!36352 (= c!7889 (or lt!7164 (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(declare-fun b!36353 () Bool)

(assert (=> b!36353 (= e!18580 lt!7161)))

(declare-fun b!36354 () Bool)

(assert (=> b!36354 (= e!18577 e!18578)))

(declare-fun res!17072 () Bool)

(assert (=> b!36354 (=> (not res!17072) (not e!18578))))

(assert (=> b!36354 (= res!17072 (not lt!7156))))

(declare-fun b!36355 () Bool)

(assert (=> b!36355 (= e!18591 e!18589)))

(declare-fun c!7892 () Bool)

(assert (=> b!36355 (= c!7892 e!18590)))

(declare-fun res!17074 () Bool)

(assert (=> b!36355 (=> (not res!17074) (not e!18590))))

(assert (=> b!36355 (= res!17074 lt!7164)))

(assert (=> b!36355 (= lt!7164 (is-Or!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36356 () Bool)

(declare-fun res!17081 () Bool)

(assert (=> b!36356 (= e!18576 res!17081)))

(assert (=> b!36356 true))

(declare-fun b!36357 () Bool)

(declare-fun res!17077 () Bool)

(assert (=> b!36357 (= e!18595 res!17077)))

(assert (=> b!36357 true))

(declare-fun b!36358 () Bool)

(declare-fun res!17086 () Bool)

(assert (=> b!36358 (= e!18594 res!17086)))

(assert (=> b!36358 true))

(declare-fun b!36359 () Bool)

(declare-fun res!17082 () Bool)

(assert (=> b!36359 (= e!18586 res!17082)))

(assert (=> b!36359 true))

(declare-fun b!36360 () Bool)

(declare-fun res!17088 () Bool)

(assert (=> b!36360 (= e!18597 res!17088)))

(assert (=> b!36360 true))

(declare-fun b!36361 () Bool)

(declare-fun res!17073 () Bool)

(assert (=> b!36361 (= e!18592 res!17073)))

(assert (=> b!36361 true))

(declare-fun b!36362 () Bool)

(assert (=> b!36362 (= e!18591 (rhs!204 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36363 () Bool)

(assert (=> b!36363 (= e!18596 e!18583)))

(declare-fun res!17083 () Bool)

(assert (=> b!36363 (=> (not res!17083) (not e!18583))))

(assert (=> b!36363 (= res!17083 lt!7162)))

(assert (=> b!36363 (= lt!7162 false)))

(declare-fun b!36364 () Bool)

(assert (=> b!36364 (= e!18597 lt!7161)))

(declare-fun b!36365 () Bool)

(assert (=> b!36365 (= e!18579 lt!7160)))

(declare-fun b!36366 () Bool)

(declare-fun res!17089 () Bool)

(assert (=> b!36366 (= e!18588 res!17089)))

(assert (=> b!36366 true))

(declare-fun b!36367 () Bool)

(assert (=> b!36367 (= e!18582 (or lt!7160 lt!7163))))

(declare-fun b!36368 () Bool)

(assert (=> b!36368 (= e!18586 lt!7165)))

(declare-fun lt!7158 () Bool)

(declare-fun lt!7155 () Bool)

(declare-fun b!36369 () Bool)

(assert (=> b!36369 (= e!18598 (ite lt!7158 (or lt!7155 lt!7159) (and (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) lt!7155)))))

(assert (=> b!36369 (= lt!7155 e!18580)))

(declare-fun c!7893 () Bool)

(assert (=> b!36369 (= c!7893 (or lt!7158 (is-Not!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36369 (= lt!7158 false)))

(declare-fun d!18542 () Bool)

(declare-fun res!17080 () Bool)

(assert (=> d!18542 (=> res!17080 e!18585)))

(assert (=> d!18542 (= res!17080 (is-Implies!6 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(assert (=> d!18542 (= (existsImplies!0 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))) e!18585)))

(declare-fun b!36370 () Bool)

(assert (=> b!36370 (= e!18576 lt!7160)))

(declare-fun b!36371 () Bool)

(assert (=> b!36371 (= e!18589 (rhs!205 (ite lt!7057 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite false (lhs!205 out!53) (e!18286 out!53))))))))

(assert (= (and d!18542 (not res!17080)) b!36348))

(assert (= (and b!36348 c!7885) b!36347))

(assert (= (and b!36348 (not c!7885)) b!36357))

(assert (= (and b!36348 (not res!17075)) b!36336))

(assert (= (and b!36336 res!17078) b!36341))

(assert (= (and b!36341 c!7881) b!36365))

(assert (= (and b!36341 (not c!7881)) b!36349))

(assert (= (and b!36341 (not res!17084)) b!36354))

(assert (= (and b!36354 res!17072) b!36344))

(assert (= (and b!36344 res!17087) b!36343))

(assert (= (and b!36343 c!7887) b!36368))

(assert (= (and b!36343 (not c!7887)) b!36359))

(assert (= (and b!36355 res!17074) b!36352))

(assert (= (and b!36352 c!7889) b!36338))

(assert (= (and b!36352 (not c!7889)) b!36358))

(assert (= (and b!36355 c!7892) b!36345))

(assert (= (and b!36355 (not c!7892)) b!36371))

(assert (= (and b!36346 c!7882) b!36362))

(assert (= (and b!36346 (not c!7882)) b!36355))

(assert (= (and b!36348 c!7884) b!36346))

(assert (= (and b!36348 (not c!7884)) b!36366))

(assert (= (and b!36342 c!7888) b!36370))

(assert (= (and b!36342 (not c!7888)) b!36356))

(assert (= (and b!36342 (not res!17090)) b!36337))

(assert (= (and b!36337 res!17085) b!36363))

(assert (= (and b!36363 res!17083) b!36339))

(assert (= (and b!36339 c!7886) b!36364))

(assert (= (and b!36339 (not c!7886)) b!36360))

(assert (= (and b!36342 c!7883) b!36340))

(assert (= (and b!36342 (not c!7883)) b!36361))

(assert (= (and b!36369 c!7893) b!36353))

(assert (= (and b!36369 (not c!7893)) b!36351))

(assert (= (and b!36342 c!7890) b!36350))

(assert (= (and b!36342 (not c!7890)) b!36369))

(assert (= (and b!36348 c!7891) b!36367))

(assert (= (and b!36348 (not c!7891)) b!36342))

(declare-fun m!38227 () Bool)

(assert (=> b!36346 m!38227))

(declare-fun m!38229 () Bool)

(assert (=> b!36347 m!38229))

(assert (=> b!36122 d!18542))

(declare-fun b!36372 () Bool)

(declare-fun e!18617 () Bool)

(declare-fun lt!7171 () Bool)

(assert (=> b!36372 (= e!18617 lt!7171)))

(declare-fun b!36373 () Bool)

(declare-fun e!18610 () Expr!5)

(assert (=> b!36373 (= e!18610 (rhs!206 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun lt!7180 () Bool)

(declare-fun b!36374 () Bool)

(declare-fun e!18599 () Bool)

(assert (=> b!36374 (= e!18599 (exists!6 (ite lt!7180 (lhs!204 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (ite (is-Or!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (lhs!206 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (ite (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (lhs!205 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (e!18286 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))) lambda!4197))))

(declare-fun b!36375 () Bool)

(declare-fun e!18616 () Bool)

(declare-fun e!18611 () Bool)

(assert (=> b!36375 (= e!18616 e!18611)))

(declare-fun res!17107 () Bool)

(assert (=> b!36375 (=> (not res!17107) (not e!18611))))

(declare-fun lt!7178 () Bool)

(assert (=> b!36375 (= res!17107 lt!7178)))

(assert (=> b!36375 (= lt!7178 (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36376 () Bool)

(declare-fun e!18603 () Expr!5)

(assert (=> b!36376 (= e!18603 (rhs!204 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36377 () Bool)

(declare-fun e!18602 () Bool)

(declare-fun e!18600 () Bool)

(assert (=> b!36377 (= e!18602 e!18600)))

(declare-fun c!7903 () Bool)

(declare-fun lt!7179 () Bool)

(assert (=> b!36377 (= c!7903 lt!7179)))

(declare-fun lt!7169 () Bool)

(declare-fun e!18615 () Bool)

(assert (=> b!36377 (= lt!7169 e!18615)))

(declare-fun c!7897 () Bool)

(declare-fun e!18613 () Bool)

(assert (=> b!36377 (= c!7897 e!18613)))

(declare-fun res!17101 () Bool)

(assert (=> b!36377 (=> res!17101 e!18613)))

(declare-fun lt!7170 () Bool)

(assert (=> b!36377 (= res!17101 (and lt!7179 (not lt!7170)))))

(declare-fun e!18618 () Bool)

(assert (=> b!36377 (= lt!7170 e!18618)))

(declare-fun c!7896 () Bool)

(assert (=> b!36377 (= c!7896 (or lt!7179 (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36377 (= lt!7179 (is-Or!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36378 () Bool)

(assert (=> b!36378 (= e!18600 (or lt!7170 lt!7169))))

(declare-fun b!36379 () Bool)

(declare-fun e!18621 () Bool)

(assert (=> b!36379 (= e!18611 (not e!18621))))

(declare-fun c!7900 () Bool)

(assert (=> b!36379 (= c!7900 (or lt!7178 (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(declare-fun b!36380 () Bool)

(declare-fun e!18614 () Bool)

(declare-fun e!18619 () Bool)

(assert (=> b!36380 (= e!18614 (not e!18619))))

(declare-fun c!7894 () Bool)

(declare-fun lt!7173 () Bool)

(assert (=> b!36380 (= c!7894 (or lt!7173 (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(declare-fun b!36381 () Bool)

(declare-fun e!18605 () Bool)

(declare-fun res!17097 () Bool)

(assert (=> b!36381 (= e!18605 res!17097)))

(assert (=> b!36381 true))

(declare-fun b!36382 () Bool)

(declare-fun e!18612 () Bool)

(assert (=> b!36382 (= e!18612 (exists!6 e!18603 lambda!4197))))

(declare-fun c!7895 () Bool)

(declare-fun lt!7172 () Bool)

(assert (=> b!36382 (= c!7895 lt!7172)))

(declare-fun b!36383 () Bool)

(assert (=> b!36383 (= e!18603 e!18610)))

(declare-fun c!7898 () Bool)

(assert (=> b!36383 (= c!7898 e!18614)))

(declare-fun res!17102 () Bool)

(assert (=> b!36383 (=> (not res!17102) (not e!18614))))

(assert (=> b!36383 (= res!17102 lt!7173)))

(assert (=> b!36383 (= lt!7173 (is-Or!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36384 () Bool)

(declare-fun lt!7174 () Bool)

(assert (=> b!36384 (= e!18619 lt!7174)))

(declare-fun b!36385 () Bool)

(declare-fun e!18606 () Bool)

(declare-fun e!18620 () Bool)

(assert (=> b!36385 (= e!18606 e!18620)))

(declare-fun res!17091 () Bool)

(assert (=> b!36385 (=> (not res!17091) (not e!18620))))

(assert (=> b!36385 (= res!17091 (not lt!7180))))

(declare-fun b!36386 () Bool)

(assert (=> b!36386 (= e!18605 lt!7174)))

(declare-fun b!36387 () Bool)

(declare-fun res!17095 () Bool)

(assert (=> b!36387 (= e!18615 res!17095)))

(assert (=> b!36387 true))

(declare-fun b!36388 () Bool)

(assert (=> b!36388 (= e!18613 e!18616)))

(declare-fun res!17103 () Bool)

(assert (=> b!36388 (=> (not res!17103) (not e!18616))))

(assert (=> b!36388 (= res!17103 (not lt!7179))))

(declare-fun b!36389 () Bool)

(assert (=> b!36389 (= e!18621 lt!7170)))

(declare-fun b!36390 () Bool)

(declare-fun lt!7175 () Bool)

(assert (=> b!36390 (= e!18602 (or lt!7174 lt!7175))))

(declare-fun b!36391 () Bool)

(declare-fun res!17108 () Bool)

(assert (=> b!36391 (= e!18619 res!17108)))

(assert (=> b!36391 true))

(declare-fun b!36392 () Bool)

(declare-fun res!17096 () Bool)

(assert (=> b!36392 (= e!18618 res!17096)))

(assert (=> b!36392 true))

(declare-fun b!36393 () Bool)

(assert (=> b!36393 (= e!18618 lt!7174)))

(declare-fun d!18544 () Bool)

(declare-fun res!17093 () Bool)

(declare-fun e!18607 () Bool)

(assert (=> d!18544 (=> res!17093 e!18607)))

(assert (=> d!18544 (= res!17093 (dynLambda!647 lambda!4197 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(assert (=> d!18544 (= (exists!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))) lambda!4197) e!18607)))

(declare-fun b!36394 () Bool)

(declare-fun e!18608 () Bool)

(assert (=> b!36394 (= e!18608 lt!7170)))

(declare-fun b!36395 () Bool)

(declare-fun e!18609 () Bool)

(assert (=> b!36395 (= e!18620 e!18609)))

(declare-fun res!17100 () Bool)

(assert (=> b!36395 (=> res!17100 e!18609)))

(declare-fun lt!7177 () Bool)

(assert (=> b!36395 (= res!17100 (and lt!7177 (not lt!7171)))))

(assert (=> b!36395 (= lt!7171 e!18605)))

(declare-fun c!7905 () Bool)

(assert (=> b!36395 (= c!7905 (or lt!7177 (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36395 (= lt!7177 (is-Or!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36396 () Bool)

(declare-fun e!18604 () Bool)

(declare-fun e!18601 () Bool)

(assert (=> b!36396 (= e!18604 e!18601)))

(declare-fun res!17106 () Bool)

(assert (=> b!36396 (=> (not res!17106) (not e!18601))))

(declare-fun lt!7181 () Bool)

(assert (=> b!36396 (= res!17106 lt!7181)))

(assert (=> b!36396 (= lt!7181 (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun lt!7176 () Bool)

(declare-fun b!36397 () Bool)

(declare-fun lt!7168 () Bool)

(assert (=> b!36397 (= e!18600 (ite lt!7168 (or lt!7176 lt!7169) (and (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) lt!7176)))))

(assert (=> b!36397 (= lt!7176 e!18608)))

(declare-fun c!7906 () Bool)

(assert (=> b!36397 (= c!7906 (or lt!7168 (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36397 (= lt!7168 (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36398 () Bool)

(declare-fun res!17092 () Bool)

(assert (=> b!36398 (= e!18608 res!17092)))

(assert (=> b!36398 true))

(assert (=> b!36398 true))

(declare-fun b!36399 () Bool)

(declare-fun res!17099 () Bool)

(assert (=> b!36399 (= e!18621 res!17099)))

(assert (=> b!36399 true))

(declare-fun b!36400 () Bool)

(assert (=> b!36400 (= e!18607 e!18602)))

(declare-fun c!7904 () Bool)

(assert (=> b!36400 (= c!7904 lt!7180)))

(assert (=> b!36400 (= lt!7175 e!18612)))

(declare-fun c!7902 () Bool)

(assert (=> b!36400 (= c!7902 e!18606)))

(declare-fun res!17104 () Bool)

(assert (=> b!36400 (=> res!17104 e!18606)))

(assert (=> b!36400 (= res!17104 lt!7172)))

(assert (=> b!36400 (= lt!7172 (and lt!7180 (not lt!7174)))))

(assert (=> b!36400 (= lt!7174 e!18599)))

(declare-fun c!7899 () Bool)

(assert (=> b!36400 (= c!7899 (or lt!7180 (is-Or!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(assert (=> b!36400 (= lt!7180 (is-And!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36401 () Bool)

(declare-fun res!17094 () Bool)

(assert (=> b!36401 (= e!18617 res!17094)))

(assert (=> b!36401 true))

(declare-fun b!36402 () Bool)

(assert (=> b!36402 (= e!18610 (rhs!205 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(declare-fun b!36403 () Bool)

(assert (=> b!36403 (= e!18609 e!18604)))

(declare-fun res!17109 () Bool)

(assert (=> b!36403 (=> (not res!17109) (not e!18604))))

(assert (=> b!36403 (= res!17109 (not lt!7177))))

(declare-fun b!36404 () Bool)

(declare-fun res!17098 () Bool)

(assert (=> b!36404 (= e!18612 res!17098)))

(assert (=> b!36404 true))

(declare-fun b!36405 () Bool)

(assert (=> b!36405 (= e!18615 lt!7175)))

(declare-fun b!36406 () Bool)

(assert (=> b!36406 (= e!18601 (not e!18617))))

(declare-fun c!7901 () Bool)

(assert (=> b!36406 (= c!7901 (or lt!7181 (is-Not!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53)))))))))

(declare-fun b!36407 () Bool)

(declare-fun res!17105 () Bool)

(assert (=> b!36407 (= e!18599 res!17105)))

(assert (=> b!36407 true))

(assert (= (and d!18544 (not res!17093)) b!36400))

(assert (= (and b!36400 c!7899) b!36374))

(assert (= (and b!36400 (not c!7899)) b!36407))

(assert (= (and b!36400 (not res!17104)) b!36385))

(assert (= (and b!36385 res!17091) b!36395))

(assert (= (and b!36395 c!7905) b!36386))

(assert (= (and b!36395 (not c!7905)) b!36381))

(assert (= (and b!36395 (not res!17100)) b!36403))

(assert (= (and b!36403 res!17109) b!36396))

(assert (= (and b!36396 res!17106) b!36406))

(assert (= (and b!36406 c!7901) b!36372))

(assert (= (and b!36406 (not c!7901)) b!36401))

(assert (= (and b!36383 res!17102) b!36380))

(assert (= (and b!36380 c!7894) b!36384))

(assert (= (and b!36380 (not c!7894)) b!36391))

(assert (= (and b!36383 c!7898) b!36373))

(assert (= (and b!36383 (not c!7898)) b!36402))

(assert (= (and b!36382 c!7895) b!36376))

(assert (= (and b!36382 (not c!7895)) b!36383))

(assert (= (and b!36400 c!7902) b!36382))

(assert (= (and b!36400 (not c!7902)) b!36404))

(assert (= (and b!36377 c!7896) b!36393))

(assert (= (and b!36377 (not c!7896)) b!36392))

(assert (= (and b!36377 (not res!17101)) b!36388))

(assert (= (and b!36388 res!17103) b!36375))

(assert (= (and b!36375 res!17107) b!36379))

(assert (= (and b!36379 c!7900) b!36389))

(assert (= (and b!36379 (not c!7900)) b!36399))

(assert (= (and b!36377 c!7897) b!36405))

(assert (= (and b!36377 (not c!7897)) b!36387))

(assert (= (and b!36397 c!7906) b!36394))

(assert (= (and b!36397 (not c!7906)) b!36398))

(assert (= (and b!36377 c!7903) b!36378))

(assert (= (and b!36377 (not c!7903)) b!36397))

(assert (= (and b!36400 c!7904) b!36390))

(assert (= (and b!36400 (not c!7904)) b!36377))

(declare-fun b_lambda!9599 () Bool)

(assert (=> (not b_lambda!9599) (not d!18544)))

(declare-fun m!38231 () Bool)

(assert (=> b!36374 m!38231))

(declare-fun m!38233 () Bool)

(assert (=> b!36382 m!38233))

(declare-fun m!38235 () Bool)

(assert (=> d!18544 m!38235))

(assert (=> b!36005 d!18544))

(declare-fun b!36408 () Bool)

(declare-fun e!18630 () Bool)

(declare-fun e!18639 () Bool)

(assert (=> b!36408 (= e!18630 e!18639)))

(declare-fun res!17116 () Bool)

(assert (=> b!36408 (=> (not res!17116) (not e!18639))))

(declare-fun lt!7182 () Bool)

(assert (=> b!36408 (= res!17116 (not lt!7182))))

(declare-fun b!36409 () Bool)

(declare-fun e!18627 () Bool)

(declare-fun e!18642 () Bool)

(assert (=> b!36409 (= e!18627 e!18642)))

(declare-fun res!17123 () Bool)

(assert (=> b!36409 (=> (not res!17123) (not e!18642))))

(declare-fun lt!7185 () Bool)

(assert (=> b!36409 (= res!17123 (not lt!7185))))

(declare-fun b!36410 () Bool)

(declare-fun e!18640 () Bool)

(declare-fun lt!7188 () Bool)

(assert (=> b!36410 (= e!18640 lt!7188)))

(declare-fun b!36411 () Bool)

(declare-fun e!18629 () Bool)

(declare-fun e!18643 () Bool)

(assert (=> b!36411 (= e!18629 (not e!18643))))

(declare-fun c!7912 () Bool)

(declare-fun lt!7190 () Bool)

(assert (=> b!36411 (= c!7912 (or lt!7190 (is-Not!6 lt!6971)))))

(declare-fun b!36412 () Bool)

(declare-fun e!18638 () Bool)

(declare-fun lt!7191 () Bool)

(assert (=> b!36412 (= e!18638 lt!7191)))

(declare-fun b!36413 () Bool)

(declare-fun e!18623 () Bool)

(assert (=> b!36413 (= e!18639 e!18623)))

(declare-fun res!17122 () Bool)

(assert (=> b!36413 (=> res!17122 e!18623)))

(declare-fun lt!7184 () Bool)

(declare-fun lt!7193 () Bool)

(assert (=> b!36413 (= res!17122 (and lt!7184 (not lt!7193)))))

(declare-fun e!18625 () Bool)

(assert (=> b!36413 (= lt!7193 e!18625)))

(declare-fun c!7907 () Bool)

(assert (=> b!36413 (= c!7907 (or lt!7184 (is-Not!6 lt!6971)))))

(assert (=> b!36413 (= lt!7184 (is-Or!6 lt!6971))))

(declare-fun b!36414 () Bool)

(declare-fun e!18628 () Bool)

(declare-fun e!18644 () Bool)

(assert (=> b!36414 (= e!18628 e!18644)))

(declare-fun c!7916 () Bool)

(assert (=> b!36414 (= c!7916 lt!7185)))

(declare-fun lt!7187 () Bool)

(assert (=> b!36414 (= lt!7187 e!18638)))

(declare-fun c!7909 () Bool)

(assert (=> b!36414 (= c!7909 e!18627)))

(declare-fun res!17128 () Bool)

(assert (=> b!36414 (=> res!17128 e!18627)))

(declare-fun lt!7189 () Bool)

(assert (=> b!36414 (= res!17128 (and lt!7185 (not lt!7189)))))

(declare-fun e!18622 () Bool)

(assert (=> b!36414 (= lt!7189 e!18622)))

(declare-fun c!7914 () Bool)

(assert (=> b!36414 (= c!7914 (or lt!7185 (is-Not!6 lt!6971)))))

(assert (=> b!36414 (= lt!7185 (is-Or!6 lt!6971))))

(declare-fun b!36415 () Bool)

(declare-fun e!18633 () Bool)

(declare-fun e!18632 () Bool)

(assert (=> b!36415 (= e!18633 (not e!18632))))

(declare-fun c!7913 () Bool)

(declare-fun lt!7195 () Bool)

(assert (=> b!36415 (= c!7913 (or lt!7195 (is-Not!6 lt!6971)))))

(declare-fun b!36416 () Bool)

(declare-fun e!18624 () Bool)

(assert (=> b!36416 (= e!18624 e!18633)))

(declare-fun res!17125 () Bool)

(assert (=> b!36416 (=> (not res!17125) (not e!18633))))

(assert (=> b!36416 (= res!17125 lt!7195)))

(assert (=> b!36416 (= lt!7195 false)))

(declare-fun b!36417 () Bool)

(declare-fun e!18635 () Expr!5)

(assert (=> b!36417 (= e!18635 (rhs!206 lt!6971))))

(declare-fun b!36418 () Bool)

(declare-fun e!18634 () Bool)

(declare-fun e!18637 () Expr!5)

(assert (=> b!36418 (= e!18634 (existsImplies!0 e!18637))))

(declare-fun c!7908 () Bool)

(declare-fun lt!7194 () Bool)

(assert (=> b!36418 (= c!7908 lt!7194)))

(declare-fun b!36419 () Bool)

(declare-fun e!18641 () Bool)

(assert (=> b!36419 (= e!18641 (existsImplies!0 (ite lt!7182 (lhs!204 lt!6971) (ite (is-Or!6 lt!6971) (lhs!206 lt!6971) (ite false (lhs!205 lt!6971) (e!18286 lt!6971))))))))

(declare-fun b!36420 () Bool)

(declare-fun e!18631 () Bool)

(assert (=> b!36420 (= e!18631 e!18628)))

(declare-fun c!7917 () Bool)

(assert (=> b!36420 (= c!7917 lt!7182)))

(assert (=> b!36420 (= lt!7191 e!18634)))

(declare-fun c!7910 () Bool)

(assert (=> b!36420 (= c!7910 e!18630)))

(declare-fun res!17113 () Bool)

(assert (=> b!36420 (=> res!17113 e!18630)))

(assert (=> b!36420 (= res!17113 lt!7194)))

(assert (=> b!36420 (= lt!7194 (and lt!7182 (not lt!7188)))))

(assert (=> b!36420 (= lt!7188 e!18641)))

(declare-fun c!7911 () Bool)

(assert (=> b!36420 (= c!7911 (or lt!7182 (is-Or!6 lt!6971) (is-Not!6 lt!6971)))))

(assert (=> b!36420 (= lt!7182 (is-And!6 lt!6971))))

(declare-fun b!36421 () Bool)

(declare-fun res!17114 () Bool)

(assert (=> b!36421 (= e!18625 res!17114)))

(assert (=> b!36421 true))

(declare-fun b!36422 () Bool)

(assert (=> b!36422 (= e!18644 (or lt!7189 lt!7187))))

(declare-fun b!36423 () Bool)

(declare-fun e!18626 () Bool)

(declare-fun res!17117 () Bool)

(assert (=> b!36423 (= e!18626 res!17117)))

(assert (=> b!36423 true))

(assert (=> b!36423 true))

(declare-fun b!36424 () Bool)

(declare-fun e!18636 () Bool)

(assert (=> b!36424 (= e!18636 (not e!18640))))

(declare-fun c!7915 () Bool)

(declare-fun lt!7192 () Bool)

(assert (=> b!36424 (= c!7915 (or lt!7192 (is-Not!6 lt!6971)))))

(declare-fun b!36425 () Bool)

(assert (=> b!36425 (= e!18626 lt!7189)))

(declare-fun b!36426 () Bool)

(assert (=> b!36426 (= e!18623 e!18624)))

(declare-fun res!17110 () Bool)

(assert (=> b!36426 (=> (not res!17110) (not e!18624))))

(assert (=> b!36426 (= res!17110 (not lt!7184))))

(declare-fun b!36427 () Bool)

(assert (=> b!36427 (= e!18637 e!18635)))

(declare-fun c!7918 () Bool)

(assert (=> b!36427 (= c!7918 e!18636)))

(declare-fun res!17112 () Bool)

(assert (=> b!36427 (=> (not res!17112) (not e!18636))))

(assert (=> b!36427 (= res!17112 lt!7192)))

(assert (=> b!36427 (= lt!7192 (is-Or!6 lt!6971))))

(declare-fun b!36428 () Bool)

(declare-fun res!17119 () Bool)

(assert (=> b!36428 (= e!18622 res!17119)))

(assert (=> b!36428 true))

(declare-fun b!36429 () Bool)

(declare-fun res!17115 () Bool)

(assert (=> b!36429 (= e!18641 res!17115)))

(assert (=> b!36429 true))

(declare-fun b!36430 () Bool)

(declare-fun res!17124 () Bool)

(assert (=> b!36430 (= e!18640 res!17124)))

(assert (=> b!36430 true))

(declare-fun b!36431 () Bool)

(declare-fun res!17120 () Bool)

(assert (=> b!36431 (= e!18632 res!17120)))

(assert (=> b!36431 true))

(declare-fun b!36432 () Bool)

(declare-fun res!17126 () Bool)

(assert (=> b!36432 (= e!18643 res!17126)))

(assert (=> b!36432 true))

(declare-fun b!36433 () Bool)

(declare-fun res!17111 () Bool)

(assert (=> b!36433 (= e!18638 res!17111)))

(assert (=> b!36433 true))

(declare-fun b!36434 () Bool)

(assert (=> b!36434 (= e!18637 (rhs!204 lt!6971))))

(declare-fun b!36435 () Bool)

(assert (=> b!36435 (= e!18642 e!18629)))

(declare-fun res!17121 () Bool)

(assert (=> b!36435 (=> (not res!17121) (not e!18629))))

(assert (=> b!36435 (= res!17121 lt!7190)))

(assert (=> b!36435 (= lt!7190 false)))

(declare-fun b!36436 () Bool)

(assert (=> b!36436 (= e!18643 lt!7189)))

(declare-fun b!36437 () Bool)

(assert (=> b!36437 (= e!18625 lt!7188)))

(declare-fun b!36438 () Bool)

(declare-fun res!17127 () Bool)

(assert (=> b!36438 (= e!18634 res!17127)))

(assert (=> b!36438 true))

(declare-fun b!36439 () Bool)

(assert (=> b!36439 (= e!18628 (or lt!7188 lt!7191))))

(declare-fun b!36440 () Bool)

(assert (=> b!36440 (= e!18632 lt!7193)))

(declare-fun lt!7186 () Bool)

(declare-fun lt!7183 () Bool)

(declare-fun b!36441 () Bool)

(assert (=> b!36441 (= e!18644 (ite lt!7186 (or lt!7183 lt!7187) (and (is-Not!6 lt!6971) lt!7183)))))

(assert (=> b!36441 (= lt!7183 e!18626)))

(declare-fun c!7919 () Bool)

(assert (=> b!36441 (= c!7919 (or lt!7186 (is-Not!6 lt!6971)))))

(assert (=> b!36441 (= lt!7186 false)))

(declare-fun d!18546 () Bool)

(declare-fun res!17118 () Bool)

(assert (=> d!18546 (=> res!17118 e!18631)))

(assert (=> d!18546 (= res!17118 (is-Implies!6 lt!6971))))

(assert (=> d!18546 (= (existsImplies!0 lt!6971) e!18631)))

(declare-fun b!36442 () Bool)

(assert (=> b!36442 (= e!18622 lt!7188)))

(declare-fun b!36443 () Bool)

(assert (=> b!36443 (= e!18635 (rhs!205 lt!6971))))

(assert (= (and d!18546 (not res!17118)) b!36420))

(assert (= (and b!36420 c!7911) b!36419))

(assert (= (and b!36420 (not c!7911)) b!36429))

(assert (= (and b!36420 (not res!17113)) b!36408))

(assert (= (and b!36408 res!17116) b!36413))

(assert (= (and b!36413 c!7907) b!36437))

(assert (= (and b!36413 (not c!7907)) b!36421))

(assert (= (and b!36413 (not res!17122)) b!36426))

(assert (= (and b!36426 res!17110) b!36416))

(assert (= (and b!36416 res!17125) b!36415))

(assert (= (and b!36415 c!7913) b!36440))

(assert (= (and b!36415 (not c!7913)) b!36431))

(assert (= (and b!36427 res!17112) b!36424))

(assert (= (and b!36424 c!7915) b!36410))

(assert (= (and b!36424 (not c!7915)) b!36430))

(assert (= (and b!36427 c!7918) b!36417))

(assert (= (and b!36427 (not c!7918)) b!36443))

(assert (= (and b!36418 c!7908) b!36434))

(assert (= (and b!36418 (not c!7908)) b!36427))

(assert (= (and b!36420 c!7910) b!36418))

(assert (= (and b!36420 (not c!7910)) b!36438))

(assert (= (and b!36414 c!7914) b!36442))

(assert (= (and b!36414 (not c!7914)) b!36428))

(assert (= (and b!36414 (not res!17128)) b!36409))

(assert (= (and b!36409 res!17123) b!36435))

(assert (= (and b!36435 res!17121) b!36411))

(assert (= (and b!36411 c!7912) b!36436))

(assert (= (and b!36411 (not c!7912)) b!36432))

(assert (= (and b!36414 c!7909) b!36412))

(assert (= (and b!36414 (not c!7909)) b!36433))

(assert (= (and b!36441 c!7919) b!36425))

(assert (= (and b!36441 (not c!7919)) b!36423))

(assert (= (and b!36414 c!7916) b!36422))

(assert (= (and b!36414 (not c!7916)) b!36441))

(assert (= (and b!36420 c!7917) b!36439))

(assert (= (and b!36420 (not c!7917)) b!36414))

(declare-fun m!38237 () Bool)

(assert (=> b!36418 m!38237))

(declare-fun m!38239 () Bool)

(assert (=> b!36419 m!38239))

(assert (=> d!18518 d!18546))

(declare-fun bs!11326 () Bool)

(declare-fun b!36457 () Bool)

(assert (= bs!11326 (and b!36457 b!35914)))

(declare-fun lambda!4205 () Int)

(assert (=> bs!11326 (= lambda!4205 lambda!4200)))

(declare-fun bs!11327 () Bool)

(assert (= bs!11327 (and b!36457 b!36283)))

(assert (=> bs!11327 (= lambda!4205 lambda!4203)))

(declare-fun bs!11328 () Bool)

(assert (= bs!11328 (and b!36457 b!36160)))

(assert (=> bs!11328 (= lambda!4205 lambda!4202)))

(declare-fun bs!11329 () Bool)

(assert (= bs!11329 (and b!36457 b!36334)))

(assert (=> bs!11329 (= lambda!4205 lambda!4204)))

(declare-fun bs!11330 () Bool)

(assert (= bs!11330 (and b!36457 b!35870)))

(assert (=> bs!11330 (= lambda!4205 lambda!4197)))

(declare-fun bs!11331 () Bool)

(assert (= bs!11331 (and b!36457 b!35929)))

(assert (=> bs!11331 (= lambda!4205 lambda!4201)))

(declare-fun b!36444 () Bool)

(declare-fun e!18652 () Expr!5)

(declare-fun lt!7204 () Expr!5)

(assert (=> b!36444 (= e!18652 lt!7204)))

(declare-fun b!36445 () Bool)

(declare-fun e!18645 () Expr!5)

(declare-fun lt!7201 () Expr!5)

(declare-fun lt!7203 () Expr!5)

(assert (=> b!36445 (= e!18645 (And!6 lt!7201 lt!7203))))

(declare-fun e!18649 () Expr!5)

(declare-fun b!36446 () Bool)

(declare-fun lt!7200 () Bool)

(assert (=> b!36446 (= e!18649 (desugar!0 (ite lt!7200 (lhs!204 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (ite (is-Or!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (lhs!206 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (ite (is-Implies!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (lhs!205 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (e!18286 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))))))))))

(declare-fun b!36447 () Bool)

(declare-fun e!18651 () Expr!5)

(declare-fun res!17134 () Expr!5)

(assert (=> b!36447 (= e!18651 res!17134)))

(assert (=> b!36447 true))

(declare-fun b!36448 () Bool)

(declare-fun res!17131 () Expr!5)

(assert (=> b!36448 (= e!18652 res!17131)))

(assert (=> b!36448 true))

(assert (=> b!36448 true))

(declare-fun b!36449 () Bool)

(assert (=> b!36449 (= e!18651 lt!7203)))

(declare-fun b!36450 () Bool)

(declare-fun res!17130 () Expr!5)

(assert (=> b!36450 (= e!18649 res!17130)))

(assert (=> b!36450 true))

(declare-fun b!36451 () Bool)

(declare-fun e!18648 () Expr!5)

(declare-fun res!17133 () Expr!5)

(assert (=> b!36451 (= e!18648 res!17133)))

(assert (=> b!36451 true))

(declare-fun b!36452 () Bool)

(declare-fun lt!7199 () Bool)

(declare-fun lt!7197 () Expr!5)

(declare-fun lt!7202 () Expr!5)

(declare-fun e!18647 () Expr!5)

(assert (=> b!36452 (= e!18647 (ite lt!7199 (Or!6 (Not!6 lt!7202) lt!7197) (ite (is-Not!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (Not!6 lt!7202) (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))

(assert (=> b!36452 (= lt!7202 e!18652)))

(declare-fun c!7925 () Bool)

(assert (=> b!36452 (= c!7925 (or lt!7199 (is-Not!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))

(assert (=> b!36452 (= lt!7199 (is-Implies!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))))))

(declare-fun b!36453 () Bool)

(declare-fun e!18646 () Expr!5)

(declare-fun res!17129 () Expr!5)

(assert (=> b!36453 (= e!18646 res!17129)))

(assert (=> b!36453 true))

(declare-fun b!36454 () Bool)

(assert (=> b!36454 (= e!18646 lt!7201)))

(declare-fun b!36455 () Bool)

(assert (=> b!36455 (= e!18645 e!18647)))

(declare-fun c!7923 () Bool)

(declare-fun lt!7196 () Bool)

(assert (=> b!36455 (= c!7923 lt!7196)))

(assert (=> b!36455 (= lt!7197 e!18651)))

(declare-fun c!7922 () Bool)

(assert (=> b!36455 (= c!7922 (or lt!7196 (is-Implies!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))

(assert (=> b!36455 (= lt!7204 e!18646)))

(declare-fun c!7921 () Bool)

(assert (=> b!36455 (= c!7921 (or lt!7196 (is-Implies!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (is-Not!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))

(assert (=> b!36455 (= lt!7196 (is-Or!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))))))

(declare-fun d!18548 () Bool)

(declare-fun e!18650 () Bool)

(assert (=> d!18548 e!18650))

(declare-fun res!17132 () Bool)

(assert (=> d!18548 (=> (not res!17132) (not e!18650))))

(declare-fun lt!7198 () Expr!5)

(assert (=> d!18548 (= res!17132 (not (existsImplies!0 lt!7198)))))

(assert (=> d!18548 (= lt!7198 e!18645)))

(declare-fun c!7924 () Bool)

(assert (=> d!18548 (= c!7924 lt!7200)))

(assert (=> d!18548 (= lt!7203 e!18648)))

(declare-fun c!7920 () Bool)

(assert (=> d!18548 (= c!7920 (or lt!7200 (is-Or!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (is-Implies!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))

(assert (=> d!18548 (= lt!7201 e!18649)))

(declare-fun c!7926 () Bool)

(assert (=> d!18548 (= c!7926 (or lt!7200 (is-Or!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (is-Implies!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (is-Not!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))

(assert (=> d!18548 (= lt!7200 (is-And!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))))))

(assert (=> d!18548 (= (desugar!0 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) lt!7198)))

(declare-fun b!36456 () Bool)

(assert (=> b!36456 (= e!18648 (desugar!0 (ite lt!7200 (rhs!204 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (ite (is-Or!6 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (rhs!206 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837)))))) (rhs!205 (ite lt!6973 (lhs!204 (lhs!205 e!17837)) (ite (is-Or!6 (lhs!205 e!17837)) (lhs!206 (lhs!205 e!17837)) (ite (is-Implies!6 (lhs!205 e!17837)) (lhs!205 (lhs!205 e!17837)) (e!18286 (lhs!205 e!17837))))))))))))

(assert (=> b!36457 (= e!18650 (not (exists!6 lt!7198 lambda!4205)))))

(declare-fun b!36458 () Bool)

(assert (=> b!36458 (= e!18647 (Or!6 lt!7204 lt!7197))))

(assert (= (and d!18548 c!7926) b!36446))

(assert (= (and d!18548 (not c!7926)) b!36450))

(assert (= (and d!18548 c!7920) b!36456))

(assert (= (and d!18548 (not c!7920)) b!36451))

(assert (= (and b!36455 c!7921) b!36454))

(assert (= (and b!36455 (not c!7921)) b!36453))

(assert (= (and b!36455 c!7922) b!36449))

(assert (= (and b!36455 (not c!7922)) b!36447))

(assert (= (and b!36452 c!7925) b!36444))

(assert (= (and b!36452 (not c!7925)) b!36448))

(assert (= (and b!36455 c!7923) b!36458))

(assert (= (and b!36455 (not c!7923)) b!36452))

(assert (= (and d!18548 c!7924) b!36445))

(assert (= (and d!18548 (not c!7924)) b!36455))

(assert (= (and d!18548 res!17132) b!36457))

(declare-fun m!38241 () Bool)

(assert (=> b!36446 m!38241))

(declare-fun m!38243 () Bool)

(assert (=> d!18548 m!38243))

(declare-fun m!38245 () Bool)

(assert (=> b!36456 m!38245))

(declare-fun m!38247 () Bool)

(assert (=> b!36457 m!38247))

(assert (=> b!35903 d!18548))

(declare-fun b!36459 () Bool)

(declare-fun e!18671 () Bool)

(declare-fun lt!7208 () Bool)

(assert (=> b!36459 (= e!18671 lt!7208)))

(declare-fun b!36460 () Bool)

(declare-fun e!18664 () Expr!5)

(assert (=> b!36460 (= e!18664 (rhs!206 lt!6980))))

(declare-fun lt!7217 () Bool)

(declare-fun e!18653 () Bool)

(declare-fun b!36461 () Bool)

(assert (=> b!36461 (= e!18653 (exists!6 (ite lt!7217 (lhs!204 lt!6980) (ite (is-Or!6 lt!6980) (lhs!206 lt!6980) (ite (is-Implies!6 lt!6980) (lhs!205 lt!6980) (e!18286 lt!6980)))) lambda!4201))))

(declare-fun b!36462 () Bool)

(declare-fun e!18670 () Bool)

(declare-fun e!18665 () Bool)

(assert (=> b!36462 (= e!18670 e!18665)))

(declare-fun res!17151 () Bool)

(assert (=> b!36462 (=> (not res!17151) (not e!18665))))

(declare-fun lt!7215 () Bool)

(assert (=> b!36462 (= res!17151 lt!7215)))

(assert (=> b!36462 (= lt!7215 (is-Implies!6 lt!6980))))

(declare-fun b!36463 () Bool)

(declare-fun e!18657 () Expr!5)

(assert (=> b!36463 (= e!18657 (rhs!204 lt!6980))))

(declare-fun b!36464 () Bool)

(declare-fun e!18656 () Bool)

(declare-fun e!18654 () Bool)

(assert (=> b!36464 (= e!18656 e!18654)))

(declare-fun c!7936 () Bool)

(declare-fun lt!7216 () Bool)

(assert (=> b!36464 (= c!7936 lt!7216)))

(declare-fun lt!7206 () Bool)

(declare-fun e!18669 () Bool)

(assert (=> b!36464 (= lt!7206 e!18669)))

(declare-fun c!7930 () Bool)

(declare-fun e!18667 () Bool)

(assert (=> b!36464 (= c!7930 e!18667)))

(declare-fun res!17145 () Bool)

(assert (=> b!36464 (=> res!17145 e!18667)))

(declare-fun lt!7207 () Bool)

(assert (=> b!36464 (= res!17145 (and lt!7216 (not lt!7207)))))

(declare-fun e!18672 () Bool)

(assert (=> b!36464 (= lt!7207 e!18672)))

(declare-fun c!7929 () Bool)

(assert (=> b!36464 (= c!7929 (or lt!7216 (is-Implies!6 lt!6980) (is-Not!6 lt!6980)))))

(assert (=> b!36464 (= lt!7216 (is-Or!6 lt!6980))))

(declare-fun b!36465 () Bool)

(assert (=> b!36465 (= e!18654 (or lt!7207 lt!7206))))

(declare-fun b!36466 () Bool)

(declare-fun e!18675 () Bool)

(assert (=> b!36466 (= e!18665 (not e!18675))))

(declare-fun c!7933 () Bool)

(assert (=> b!36466 (= c!7933 (or lt!7215 (is-Not!6 lt!6980)))))

(declare-fun b!36467 () Bool)

(declare-fun e!18668 () Bool)

(declare-fun e!18673 () Bool)

(assert (=> b!36467 (= e!18668 (not e!18673))))

(declare-fun c!7927 () Bool)

(declare-fun lt!7210 () Bool)

(assert (=> b!36467 (= c!7927 (or lt!7210 (is-Implies!6 lt!6980) (is-Not!6 lt!6980)))))

(declare-fun b!36468 () Bool)

(declare-fun e!18659 () Bool)

(declare-fun res!17141 () Bool)

(assert (=> b!36468 (= e!18659 res!17141)))

(assert (=> b!36468 true))

(declare-fun b!36469 () Bool)

(declare-fun e!18666 () Bool)

(assert (=> b!36469 (= e!18666 (exists!6 e!18657 lambda!4201))))

(declare-fun c!7928 () Bool)

(declare-fun lt!7209 () Bool)

(assert (=> b!36469 (= c!7928 lt!7209)))

(declare-fun b!36470 () Bool)

(assert (=> b!36470 (= e!18657 e!18664)))

(declare-fun c!7931 () Bool)

(assert (=> b!36470 (= c!7931 e!18668)))

(declare-fun res!17146 () Bool)

(assert (=> b!36470 (=> (not res!17146) (not e!18668))))

(assert (=> b!36470 (= res!17146 lt!7210)))

(assert (=> b!36470 (= lt!7210 (is-Or!6 lt!6980))))

(declare-fun b!36471 () Bool)

(declare-fun lt!7211 () Bool)

(assert (=> b!36471 (= e!18673 lt!7211)))

(declare-fun b!36472 () Bool)

(declare-fun e!18660 () Bool)

(declare-fun e!18674 () Bool)

(assert (=> b!36472 (= e!18660 e!18674)))

(declare-fun res!17135 () Bool)

(assert (=> b!36472 (=> (not res!17135) (not e!18674))))

(assert (=> b!36472 (= res!17135 (not lt!7217))))

(declare-fun b!36473 () Bool)

(assert (=> b!36473 (= e!18659 lt!7211)))

(declare-fun b!36474 () Bool)

(declare-fun res!17139 () Bool)

(assert (=> b!36474 (= e!18669 res!17139)))

(assert (=> b!36474 true))

(declare-fun b!36475 () Bool)

(assert (=> b!36475 (= e!18667 e!18670)))

(declare-fun res!17147 () Bool)

(assert (=> b!36475 (=> (not res!17147) (not e!18670))))

(assert (=> b!36475 (= res!17147 (not lt!7216))))

(declare-fun b!36476 () Bool)

(assert (=> b!36476 (= e!18675 lt!7207)))

(declare-fun b!36477 () Bool)

(declare-fun lt!7212 () Bool)

(assert (=> b!36477 (= e!18656 (or lt!7211 lt!7212))))

(declare-fun b!36478 () Bool)

(declare-fun res!17152 () Bool)

(assert (=> b!36478 (= e!18673 res!17152)))

(assert (=> b!36478 true))

(declare-fun b!36479 () Bool)

(declare-fun res!17140 () Bool)

(assert (=> b!36479 (= e!18672 res!17140)))

(assert (=> b!36479 true))

(declare-fun b!36480 () Bool)

(assert (=> b!36480 (= e!18672 lt!7211)))

(declare-fun d!18550 () Bool)

(declare-fun res!17137 () Bool)

(declare-fun e!18661 () Bool)

(assert (=> d!18550 (=> res!17137 e!18661)))

(assert (=> d!18550 (= res!17137 (dynLambda!647 lambda!4201 lt!6980))))

(assert (=> d!18550 (= (exists!6 lt!6980 lambda!4201) e!18661)))

(declare-fun b!36481 () Bool)

(declare-fun e!18662 () Bool)

(assert (=> b!36481 (= e!18662 lt!7207)))

(declare-fun b!36482 () Bool)

(declare-fun e!18663 () Bool)

(assert (=> b!36482 (= e!18674 e!18663)))

(declare-fun res!17144 () Bool)

(assert (=> b!36482 (=> res!17144 e!18663)))

(declare-fun lt!7214 () Bool)

(assert (=> b!36482 (= res!17144 (and lt!7214 (not lt!7208)))))

(assert (=> b!36482 (= lt!7208 e!18659)))

(declare-fun c!7938 () Bool)

(assert (=> b!36482 (= c!7938 (or lt!7214 (is-Implies!6 lt!6980) (is-Not!6 lt!6980)))))

(assert (=> b!36482 (= lt!7214 (is-Or!6 lt!6980))))

(declare-fun b!36483 () Bool)

(declare-fun e!18658 () Bool)

(declare-fun e!18655 () Bool)

(assert (=> b!36483 (= e!18658 e!18655)))

(declare-fun res!17150 () Bool)

(assert (=> b!36483 (=> (not res!17150) (not e!18655))))

(declare-fun lt!7218 () Bool)

(assert (=> b!36483 (= res!17150 lt!7218)))

(assert (=> b!36483 (= lt!7218 (is-Implies!6 lt!6980))))

(declare-fun b!36484 () Bool)

(declare-fun lt!7213 () Bool)

(declare-fun lt!7205 () Bool)

(assert (=> b!36484 (= e!18654 (ite lt!7205 (or lt!7213 lt!7206) (and (is-Not!6 lt!6980) lt!7213)))))

(assert (=> b!36484 (= lt!7213 e!18662)))

(declare-fun c!7939 () Bool)

(assert (=> b!36484 (= c!7939 (or lt!7205 (is-Not!6 lt!6980)))))

(assert (=> b!36484 (= lt!7205 (is-Implies!6 lt!6980))))

(declare-fun b!36485 () Bool)

(declare-fun res!17136 () Bool)

(assert (=> b!36485 (= e!18662 res!17136)))

(assert (=> b!36485 true))

(assert (=> b!36485 true))

(declare-fun b!36486 () Bool)

(declare-fun res!17143 () Bool)

(assert (=> b!36486 (= e!18675 res!17143)))

(assert (=> b!36486 true))

(declare-fun b!36487 () Bool)

(assert (=> b!36487 (= e!18661 e!18656)))

(declare-fun c!7937 () Bool)

(assert (=> b!36487 (= c!7937 lt!7217)))

(assert (=> b!36487 (= lt!7212 e!18666)))

(declare-fun c!7935 () Bool)

(assert (=> b!36487 (= c!7935 e!18660)))

(declare-fun res!17148 () Bool)

(assert (=> b!36487 (=> res!17148 e!18660)))

(assert (=> b!36487 (= res!17148 lt!7209)))

(assert (=> b!36487 (= lt!7209 (and lt!7217 (not lt!7211)))))

(assert (=> b!36487 (= lt!7211 e!18653)))

(declare-fun c!7932 () Bool)

(assert (=> b!36487 (= c!7932 (or lt!7217 (is-Or!6 lt!6980) (is-Implies!6 lt!6980) (is-Not!6 lt!6980)))))

(assert (=> b!36487 (= lt!7217 (is-And!6 lt!6980))))

(declare-fun b!36488 () Bool)

(declare-fun res!17138 () Bool)

(assert (=> b!36488 (= e!18671 res!17138)))

(assert (=> b!36488 true))

(declare-fun b!36489 () Bool)

(assert (=> b!36489 (= e!18664 (rhs!205 lt!6980))))

(declare-fun b!36490 () Bool)

(assert (=> b!36490 (= e!18663 e!18658)))

(declare-fun res!17153 () Bool)

(assert (=> b!36490 (=> (not res!17153) (not e!18658))))

(assert (=> b!36490 (= res!17153 (not lt!7214))))

(declare-fun b!36491 () Bool)

(declare-fun res!17142 () Bool)

(assert (=> b!36491 (= e!18666 res!17142)))

(assert (=> b!36491 true))

(declare-fun b!36492 () Bool)

(assert (=> b!36492 (= e!18669 lt!7212)))

(declare-fun b!36493 () Bool)

(assert (=> b!36493 (= e!18655 (not e!18671))))

(declare-fun c!7934 () Bool)

(assert (=> b!36493 (= c!7934 (or lt!7218 (is-Not!6 lt!6980)))))

(declare-fun b!36494 () Bool)

(declare-fun res!17149 () Bool)

(assert (=> b!36494 (= e!18653 res!17149)))

(assert (=> b!36494 true))

(assert (= (and d!18550 (not res!17137)) b!36487))

(assert (= (and b!36487 c!7932) b!36461))

(assert (= (and b!36487 (not c!7932)) b!36494))

(assert (= (and b!36487 (not res!17148)) b!36472))

(assert (= (and b!36472 res!17135) b!36482))

(assert (= (and b!36482 c!7938) b!36473))

(assert (= (and b!36482 (not c!7938)) b!36468))

(assert (= (and b!36482 (not res!17144)) b!36490))

(assert (= (and b!36490 res!17153) b!36483))

(assert (= (and b!36483 res!17150) b!36493))

(assert (= (and b!36493 c!7934) b!36459))

(assert (= (and b!36493 (not c!7934)) b!36488))

(assert (= (and b!36470 res!17146) b!36467))

(assert (= (and b!36467 c!7927) b!36471))

(assert (= (and b!36467 (not c!7927)) b!36478))

(assert (= (and b!36470 c!7931) b!36460))

(assert (= (and b!36470 (not c!7931)) b!36489))

(assert (= (and b!36469 c!7928) b!36463))

(assert (= (and b!36469 (not c!7928)) b!36470))

(assert (= (and b!36487 c!7935) b!36469))

(assert (= (and b!36487 (not c!7935)) b!36491))

(assert (= (and b!36464 c!7929) b!36480))

(assert (= (and b!36464 (not c!7929)) b!36479))

(assert (= (and b!36464 (not res!17145)) b!36475))

(assert (= (and b!36475 res!17147) b!36462))

(assert (= (and b!36462 res!17151) b!36466))

(assert (= (and b!36466 c!7933) b!36476))

(assert (= (and b!36466 (not c!7933)) b!36486))

(assert (= (and b!36464 c!7930) b!36492))

(assert (= (and b!36464 (not c!7930)) b!36474))

(assert (= (and b!36484 c!7939) b!36481))

(assert (= (and b!36484 (not c!7939)) b!36485))

(assert (= (and b!36464 c!7936) b!36465))

(assert (= (and b!36464 (not c!7936)) b!36484))

(assert (= (and b!36487 c!7937) b!36477))

(assert (= (and b!36487 (not c!7937)) b!36464))

(declare-fun b_lambda!9601 () Bool)

(assert (=> (not b_lambda!9601) (not d!18550)))

(declare-fun m!38249 () Bool)

(assert (=> b!36461 m!38249))

(declare-fun m!38251 () Bool)

(assert (=> b!36469 m!38251))

(declare-fun m!38253 () Bool)

(assert (=> d!18550 m!38253))

(assert (=> b!35929 d!18550))

(declare-fun b_lambda!9603 () Bool)

(assert (= b_lambda!9599 (or b!35870 b_lambda!9603)))

(declare-fun bs!11332 () Bool)

(declare-fun d!18552 () Bool)

(assert (= bs!11332 (and d!18552 b!35870)))

(assert (=> bs!11332 (= (dynLambda!647 lambda!4197 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))) (is-Implies!6 (ite lt!7027 (lhs!204 out!53) (ite (is-Or!6 out!53) (lhs!206 out!53) (ite (is-Implies!6 out!53) (lhs!205 out!53) (e!18286 out!53))))))))

(assert (=> d!18544 d!18552))

(declare-fun b_lambda!9605 () Bool)

(assert (= b_lambda!9595 (or b!35870 b_lambda!9605)))

(declare-fun bs!11333 () Bool)

(declare-fun d!18554 () Bool)

(assert (= bs!11333 (and d!18554 b!35870)))

(assert (=> bs!11333 (= (dynLambda!647 lambda!4197 e!18371) (is-Implies!6 e!18371))))

(assert (=> d!18532 d!18554))

(declare-fun b_lambda!9607 () Bool)

(assert (= b_lambda!9601 (or b!35929 b_lambda!9607)))

(declare-fun bs!11334 () Bool)

(declare-fun d!18556 () Bool)

(assert (= bs!11334 (and d!18556 b!35929)))

(assert (=> bs!11334 (= (dynLambda!647 lambda!4201 lt!6980) (is-Implies!6 lt!6980))))

(assert (=> d!18550 d!18556))

(declare-fun b_lambda!9609 () Bool)

(assert (= b_lambda!9597 (or b!35914 b_lambda!9609)))

(declare-fun bs!11335 () Bool)

(declare-fun d!18558 () Bool)

(assert (= bs!11335 (and d!18558 b!35914)))

(assert (=> bs!11335 (= (dynLambda!647 lambda!4200 lt!6971) (is-Implies!6 lt!6971))))

(assert (=> d!18538 d!18558))

(push 1)

(assert (not b_lambda!9603))

(assert (not d!18536))

(assert (not b!36418))

(assert (not b!36374))

(assert (not b!36283))

(assert (not b!36208))

(assert (not b!36347))

(assert (not b!36200))

(assert (not b!36160))

(assert (not b!36333))

(assert (not b!36382))

(assert (not b!36172))

(assert (not b!36245))

(assert (not b!36346))

(assert (not b!36334))

(assert (not b_lambda!9609))

(assert (not d!18528))

(assert (not b!36287))

(assert (not b!36159))

(assert (not d!18540))

(assert (not b!36173))

(assert (not b_lambda!9607))

(assert (not b!36272))

(assert (not b!36469))

(assert (not b!36419))

(assert (not b!36282))

(assert (not b!36461))

(assert (not b_lambda!9605))

(assert (not b!36456))

(assert (not b!36149))

(assert (not b!36446))

(assert (not b_lambda!9593))

(assert (not b!36457))

(assert (not b!36323))

(assert (not b!36295))

(assert (not d!18548))

(assert (not b!36244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

