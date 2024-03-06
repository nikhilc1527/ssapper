; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4048 () Bool)

(assert start!4048)

(declare-fun b!32094 () Bool)

(declare-fun e!16349 () Bool)

(declare-fun tp_is_empty!191 () Bool)

(declare-fun tp!6663 () Bool)

(assert (=> b!32094 (= e!16349 (and tp_is_empty!191 tp!6663))))

(declare-fun b!32095 () Bool)

(declare-fun e!16347 () Bool)

(declare-fun tp!6662 () Bool)

(declare-fun tp!6661 () Bool)

(assert (=> b!32095 (= e!16347 (and tp!6662 tp!6661))))

(declare-fun b!32096 () Bool)

(declare-fun res!14720 () Bool)

(declare-fun e!16348 () Bool)

(assert (=> b!32096 (=> (not res!14720) (not e!16348))))

(declare-datatypes () ((T!1847 (T!1848 (val!96 Int)))))

(declare-datatypes () ((Conc!73 (CC!72 (left!717 Conc!73) (right!720 Conc!73)) (Single!72 (x!8976 T!1847)) (Empty!83))))

(declare-fun res!5575 () Conc!73)

(declare-fun xs!586 () Conc!73)

(declare-fun level!58 (Conc!73) Int)

(assert (=> b!32096 (= res!14720 (= (level!58 res!5575) (level!58 xs!586)))))

(declare-fun b!32097 () Bool)

(declare-fun res!14723 () Bool)

(assert (=> b!32097 (=> (not res!14723) (not e!16348))))

(declare-fun concInv!65 (Conc!73) Bool)

(assert (=> b!32097 (= res!14723 (concInv!65 res!5575))))

(declare-fun b!32098 () Bool)

(declare-fun res!14726 () Bool)

(assert (=> b!32098 (=> (not res!14726) (not e!16348))))

(declare-fun isEmpty!327 (Conc!73) Bool)

(assert (=> b!32098 (= res!14726 (not (isEmpty!327 xs!586)))))

(declare-fun b!32099 () Bool)

(declare-fun res!14727 () Bool)

(assert (=> b!32099 (=> (not res!14727) (not e!16348))))

(declare-fun i!263 () Int)

(assert (=> b!32099 (= res!14727 (>= i!263 0))))

(declare-fun res!14719 () Bool)

(assert (=> start!4048 (=> (not res!14719) (not e!16348))))

(assert (=> start!4048 (= res!14719 (concInv!65 xs!586))))

(assert (=> start!4048 e!16348))

(assert (=> start!4048 e!16347))

(declare-fun e!16350 () Bool)

(assert (=> start!4048 e!16350))

(assert (=> start!4048 tp_is_empty!191))

(assert (=> start!4048 true))

(assert (=> start!4048 e!16349))

(declare-fun b!32100 () Bool)

(declare-fun res!14724 () Bool)

(assert (=> b!32100 (=> (not res!14724) (not e!16348))))

(declare-fun y!790 () T!1847)

(declare-fun y!785 () T!1847)

(declare-fun i!266 () Int)

(assert (=> b!32100 (= res!14724 (and (= i!266 i!263) (= y!790 y!785)))))

(declare-fun b!32101 () Bool)

(declare-fun res!14718 () Bool)

(assert (=> b!32101 (=> (not res!14718) (not e!16348))))

(declare-fun instAppendUpdateAxiom!3 (Conc!73 Int T!1847) Bool)

(assert (=> b!32101 (= res!14718 (instAppendUpdateAxiom!3 xs!586 i!263 y!785))))

(declare-fun b!32102 () Bool)

(assert (=> b!32102 (= e!16350 tp_is_empty!191)))

(declare-fun b!32103 () Bool)

(declare-fun res!14716 () Bool)

(assert (=> b!32103 (=> (not res!14716) (not e!16348))))

(assert (=> b!32103 (= res!14716 (and (is-Single!72 xs!586) (= res!5575 (Single!72 y!785))))))

(declare-fun b!32104 () Bool)

(declare-fun res!14728 () Bool)

(assert (=> b!32104 (=> (not res!14728) (not e!16348))))

(declare-fun balanced!66 (Conc!73) Bool)

(assert (=> b!32104 (= res!14728 (balanced!66 xs!586))))

(declare-fun b!32105 () Bool)

(declare-fun e!16351 () Bool)

(assert (=> b!32105 (= e!16348 e!16351)))

(declare-fun res!14721 () Bool)

(assert (=> b!32105 (=> res!14721 e!16351)))

(assert (=> b!32105 (= res!14721 (> 0 i!266))))

(declare-fun b!32106 () Bool)

(declare-fun res!14725 () Bool)

(assert (=> b!32106 (=> (not res!14725) (not e!16348))))

(declare-fun size!282 (Conc!73) Int)

(assert (=> b!32106 (= res!14725 (< i!263 (size!282 xs!586)))))

(declare-fun b!32107 () Bool)

(declare-fun tp!6664 () Bool)

(declare-fun tp!6660 () Bool)

(assert (=> b!32107 (= e!16350 (and tp!6664 tp!6660))))

(declare-fun b!32108 () Bool)

(declare-fun res!14722 () Bool)

(assert (=> b!32108 (=> (not res!14722) (not e!16348))))

(declare-datatypes () ((List!367 (Cons!361 (h!278 T!1847) (t!4381 List!367)) (Nil!362))))

(declare-fun thiss!2779 () List!367)

(declare-fun toList!122 (Conc!73) List!367)

(assert (=> b!32108 (= res!14722 (= thiss!2779 (toList!122 xs!586)))))

(declare-fun b!32109 () Bool)

(assert (=> b!32109 (= e!16347 tp_is_empty!191)))

(declare-fun b!32110 () Bool)

(declare-fun res!14717 () Bool)

(assert (=> b!32110 (=> (not res!14717) (not e!16348))))

(assert (=> b!32110 (= res!14717 (balanced!66 res!5575))))

(declare-fun b!32111 () Bool)

(declare-fun size!283 (List!367) Int)

(assert (=> b!32111 (= e!16351 (>= i!266 (size!283 thiss!2779)))))

(assert (= (and start!4048 res!14719) b!32104))

(assert (= (and b!32104 res!14728) b!32098))

(assert (= (and b!32098 res!14726) b!32099))

(assert (= (and b!32099 res!14727) b!32106))

(assert (= (and b!32106 res!14725) b!32103))

(assert (= (and b!32103 res!14716) b!32101))

(assert (= (and b!32101 res!14718) b!32096))

(assert (= (and b!32096 res!14720) b!32097))

(assert (= (and b!32097 res!14723) b!32110))

(assert (= (and b!32110 res!14717) b!32108))

(assert (= (and b!32108 res!14722) b!32100))

(assert (= (and b!32100 res!14724) b!32105))

(assert (= (and b!32105 (not res!14721)) b!32111))

(assert (= (and start!4048 (is-CC!72 res!5575)) b!32095))

(assert (= (and start!4048 (is-Single!72 res!5575)) b!32109))

(assert (= (and start!4048 (is-CC!72 xs!586)) b!32107))

(assert (= (and start!4048 (is-Single!72 xs!586)) b!32102))

(assert (= (and start!4048 (is-Cons!361 thiss!2779)) b!32094))

(declare-fun m!34905 () Bool)

(assert (=> b!32098 m!34905))

(declare-fun m!34907 () Bool)

(assert (=> b!32110 m!34907))

(declare-fun m!34909 () Bool)

(assert (=> b!32108 m!34909))

(declare-fun m!34911 () Bool)

(assert (=> b!32111 m!34911))

(declare-fun m!34913 () Bool)

(assert (=> start!4048 m!34913))

(declare-fun m!34915 () Bool)

(assert (=> b!32104 m!34915))

(declare-fun m!34917 () Bool)

(assert (=> b!32096 m!34917))

(declare-fun m!34919 () Bool)

(assert (=> b!32096 m!34919))

(declare-fun m!34921 () Bool)

(assert (=> b!32097 m!34921))

(declare-fun m!34923 () Bool)

(assert (=> b!32101 m!34923))

(declare-fun m!34925 () Bool)

(assert (=> b!32106 m!34925))

(push 1)

(assert (not b!32096))

(assert (not b!32104))

(assert (not b!32101))

(assert (not start!4048))

(assert tp_is_empty!191)

(assert (not b!32097))

(assert (not b!32098))

(assert (not b!32111))

(assert (not b!32094))

(assert (not b!32095))

(assert (not b!32106))

(assert (not b!32110))

(assert (not b!32108))

(assert (not b!32107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!16571 () Bool)

(declare-fun lt!6139 () Int)

(assert (=> d!16571 (>= lt!6139 0)))

(declare-fun e!16354 () Int)

(assert (=> d!16571 (= lt!6139 e!16354)))

(declare-fun c!7002 () Bool)

(assert (=> d!16571 (= c!7002 (is-Nil!362 thiss!2779))))

(assert (=> d!16571 (= (size!283 thiss!2779) lt!6139)))

(declare-fun b!32116 () Bool)

(assert (=> b!32116 (= e!16354 0)))

(declare-fun b!32117 () Bool)

(assert (=> b!32117 (= e!16354 (+ 1 (size!283 (t!4381 thiss!2779))))))

(assert (= (and d!16571 c!7002) b!32116))

(assert (= (and d!16571 (not c!7002)) b!32117))

(declare-fun m!34927 () Bool)

(assert (=> b!32117 m!34927))

(assert (=> b!32111 d!16571))

(declare-fun b!32128 () Bool)

(declare-fun e!16360 () List!367)

(assert (=> b!32128 (= e!16360 (Cons!361 (x!8976 xs!586) Nil!362))))

(declare-fun d!16573 () Bool)

(declare-fun lt!6142 () List!367)

(assert (=> d!16573 (= (size!283 lt!6142) (size!282 xs!586))))

(declare-fun e!16359 () List!367)

(assert (=> d!16573 (= lt!6142 e!16359)))

(declare-fun c!7008 () Bool)

(assert (=> d!16573 (= c!7008 (is-Empty!83 xs!586))))

(assert (=> d!16573 (= (toList!122 xs!586) lt!6142)))

(declare-fun b!32127 () Bool)

(assert (=> b!32127 (= e!16359 e!16360)))

(declare-fun c!7007 () Bool)

(assert (=> b!32127 (= c!7007 (is-Single!72 xs!586))))

(declare-fun b!32129 () Bool)

(declare-fun ++!47 (List!367 List!367) List!367)

(assert (=> b!32129 (= e!16360 (++!47 (toList!122 (left!717 xs!586)) (toList!122 (right!720 xs!586))))))

(declare-fun b!32126 () Bool)

(assert (=> b!32126 (= e!16359 Nil!362)))

(assert (= (and b!32127 c!7007) b!32128))

(assert (= (and b!32127 (not c!7007)) b!32129))

(assert (= (and d!16573 c!7008) b!32126))

(assert (= (and d!16573 (not c!7008)) b!32127))

(declare-fun m!34929 () Bool)

(assert (=> d!16573 m!34929))

(assert (=> d!16573 m!34925))

(declare-fun m!34931 () Bool)

(assert (=> b!32129 m!34931))

(declare-fun m!34933 () Bool)

(assert (=> b!32129 m!34933))

(assert (=> b!32129 m!34931))

(assert (=> b!32129 m!34933))

(declare-fun m!34935 () Bool)

(assert (=> b!32129 m!34935))

(assert (=> b!32108 d!16573))

(declare-fun d!16575 () Bool)

(declare-fun res!14741 () Bool)

(declare-fun e!16365 () Bool)

(assert (=> d!16575 (=> res!14741 e!16365)))

(assert (=> d!16575 (= res!14741 (not (is-CC!72 xs!586)))))

(assert (=> d!16575 (= (balanced!66 xs!586) e!16365)))

(declare-fun b!32139 () Bool)

(declare-fun res!14738 () Bool)

(declare-fun e!16366 () Bool)

(assert (=> b!32139 (=> (not res!14738) (not e!16366))))

(assert (=> b!32139 (= res!14738 (<= (- (level!58 (left!717 xs!586)) (level!58 (right!720 xs!586))) 1))))

(declare-fun b!32140 () Bool)

(declare-fun res!14739 () Bool)

(assert (=> b!32140 (=> (not res!14739) (not e!16366))))

(assert (=> b!32140 (= res!14739 (balanced!66 (left!717 xs!586)))))

(declare-fun b!32138 () Bool)

(assert (=> b!32138 (= e!16365 e!16366)))

(declare-fun res!14740 () Bool)

(assert (=> b!32138 (=> (not res!14740) (not e!16366))))

(assert (=> b!32138 (= res!14740 (>= (- (level!58 (left!717 xs!586)) (level!58 (right!720 xs!586))) (- 1)))))

(declare-fun b!32141 () Bool)

(assert (=> b!32141 (= e!16366 (balanced!66 (right!720 xs!586)))))

(assert (= (and d!16575 (not res!14741)) b!32138))

(assert (= (and b!32138 res!14740) b!32139))

(assert (= (and b!32139 res!14738) b!32140))

(assert (= (and b!32140 res!14739) b!32141))

(declare-fun m!34937 () Bool)

(assert (=> b!32139 m!34937))

(declare-fun m!34939 () Bool)

(assert (=> b!32139 m!34939))

(declare-fun m!34941 () Bool)

(assert (=> b!32140 m!34941))

(assert (=> b!32138 m!34937))

(assert (=> b!32138 m!34939))

(declare-fun m!34943 () Bool)

(assert (=> b!32141 m!34943))

(assert (=> b!32104 d!16575))

(declare-fun b!32152 () Bool)

(declare-fun e!16372 () Int)

(assert (=> b!32152 (= e!16372 1)))

(declare-fun b!32150 () Bool)

(declare-fun e!16371 () Int)

(assert (=> b!32150 (= e!16371 0)))

(declare-fun b!32153 () Bool)

(assert (=> b!32153 (= e!16372 (+ (size!282 (left!717 xs!586)) (size!282 (right!720 xs!586))))))

(declare-fun d!16577 () Bool)

(declare-fun lt!6145 () Int)

(assert (=> d!16577 (>= lt!6145 0)))

(assert (=> d!16577 (= lt!6145 e!16371)))

(declare-fun c!7014 () Bool)

(assert (=> d!16577 (= c!7014 (is-Empty!83 xs!586))))

(assert (=> d!16577 (= (size!282 xs!586) lt!6145)))

(declare-fun b!32151 () Bool)

(assert (=> b!32151 (= e!16371 e!16372)))

(declare-fun c!7013 () Bool)

(assert (=> b!32151 (= c!7013 (is-Single!72 xs!586))))

(assert (= (and b!32151 c!7013) b!32152))

(assert (= (and b!32151 (not c!7013)) b!32153))

(assert (= (and d!16577 c!7014) b!32150))

(assert (= (and d!16577 (not c!7014)) b!32151))

(declare-fun m!34945 () Bool)

(assert (=> b!32153 m!34945))

(declare-fun m!34947 () Bool)

(assert (=> b!32153 m!34947))

(assert (=> b!32106 d!16577))

(declare-fun d!16579 () Bool)

(declare-fun res!14745 () Bool)

(declare-fun e!16373 () Bool)

(assert (=> d!16579 (=> res!14745 e!16373)))

(assert (=> d!16579 (= res!14745 (not (is-CC!72 res!5575)))))

(assert (=> d!16579 (= (balanced!66 res!5575) e!16373)))

(declare-fun b!32155 () Bool)

(declare-fun res!14742 () Bool)

(declare-fun e!16374 () Bool)

(assert (=> b!32155 (=> (not res!14742) (not e!16374))))

(assert (=> b!32155 (= res!14742 (<= (- (level!58 (left!717 res!5575)) (level!58 (right!720 res!5575))) 1))))

(declare-fun b!32156 () Bool)

(declare-fun res!14743 () Bool)

(assert (=> b!32156 (=> (not res!14743) (not e!16374))))

(assert (=> b!32156 (= res!14743 (balanced!66 (left!717 res!5575)))))

(declare-fun b!32154 () Bool)

(assert (=> b!32154 (= e!16373 e!16374)))

(declare-fun res!14744 () Bool)

(assert (=> b!32154 (=> (not res!14744) (not e!16374))))

(assert (=> b!32154 (= res!14744 (>= (- (level!58 (left!717 res!5575)) (level!58 (right!720 res!5575))) (- 1)))))

(declare-fun b!32157 () Bool)

(assert (=> b!32157 (= e!16374 (balanced!66 (right!720 res!5575)))))

(assert (= (and d!16579 (not res!14745)) b!32154))

(assert (= (and b!32154 res!14744) b!32155))

(assert (= (and b!32155 res!14742) b!32156))

(assert (= (and b!32156 res!14743) b!32157))

(declare-fun m!34949 () Bool)

(assert (=> b!32155 m!34949))

(declare-fun m!34951 () Bool)

(assert (=> b!32155 m!34951))

(declare-fun m!34953 () Bool)

(assert (=> b!32156 m!34953))

(assert (=> b!32154 m!34949))

(assert (=> b!32154 m!34951))

(declare-fun m!34955 () Bool)

(assert (=> b!32157 m!34955))

(assert (=> b!32110 d!16579))

(declare-fun d!16581 () Bool)

(declare-fun res!14757 () Bool)

(declare-fun e!16379 () Bool)

(assert (=> d!16581 (=> res!14757 e!16379)))

(assert (=> d!16581 (= res!14757 (not (is-CC!72 xs!586)))))

(assert (=> d!16581 (= (concInv!65 xs!586) e!16379)))

(declare-fun b!32169 () Bool)

(declare-fun e!16380 () Bool)

(assert (=> b!32169 (= e!16380 (concInv!65 (right!720 xs!586)))))

(declare-fun b!32166 () Bool)

(assert (=> b!32166 (= e!16379 e!16380)))

(declare-fun res!14755 () Bool)

(assert (=> b!32166 (=> (not res!14755) (not e!16380))))

(assert (=> b!32166 (= res!14755 (not (isEmpty!327 (left!717 xs!586))))))

(declare-fun b!32167 () Bool)

(declare-fun res!14754 () Bool)

(assert (=> b!32167 (=> (not res!14754) (not e!16380))))

(assert (=> b!32167 (= res!14754 (not (isEmpty!327 (right!720 xs!586))))))

(declare-fun b!32168 () Bool)

(declare-fun res!14756 () Bool)

(assert (=> b!32168 (=> (not res!14756) (not e!16380))))

(assert (=> b!32168 (= res!14756 (concInv!65 (left!717 xs!586)))))

(assert (= (and d!16581 (not res!14757)) b!32166))

(assert (= (and b!32166 res!14755) b!32167))

(assert (= (and b!32167 res!14754) b!32168))

(assert (= (and b!32168 res!14756) b!32169))

(declare-fun m!34957 () Bool)

(assert (=> b!32169 m!34957))

(declare-fun m!34959 () Bool)

(assert (=> b!32166 m!34959))

(declare-fun m!34961 () Bool)

(assert (=> b!32167 m!34961))

(declare-fun m!34963 () Bool)

(assert (=> b!32168 m!34963))

(assert (=> start!4048 d!16581))

(declare-fun d!16583 () Bool)

(declare-fun e!16386 () Bool)

(assert (=> d!16583 e!16386))

(declare-fun res!14763 () Bool)

(assert (=> d!16583 (=> res!14763 e!16386)))

(assert (=> d!16583 (= res!14763 (not (is-CC!72 xs!586)))))

(declare-fun e!16385 () Bool)

(assert (=> d!16583 e!16385))

(declare-fun res!14762 () Bool)

(assert (=> d!16583 (=> (not res!14762) (not e!16385))))

(assert (=> d!16583 (= res!14762 (>= i!263 0))))

(assert (=> d!16583 (= (instAppendUpdateAxiom!3 xs!586 i!263 y!785) true)))

(declare-fun b!32174 () Bool)

(assert (=> b!32174 (= e!16385 (< i!263 (size!282 xs!586)))))

(declare-fun b!32175 () Bool)

(declare-fun appendUpdate!2 (List!367 List!367 Int T!1847) Bool)

(assert (=> b!32175 (= e!16386 (appendUpdate!2 (toList!122 (left!717 xs!586)) (toList!122 (right!720 xs!586)) i!263 y!785))))

(assert (= (and d!16583 res!14762) b!32174))

(assert (= (and d!16583 (not res!14763)) b!32175))

(assert (=> b!32174 m!34925))

(assert (=> b!32175 m!34931))

(assert (=> b!32175 m!34933))

(assert (=> b!32175 m!34931))

(assert (=> b!32175 m!34933))

(declare-fun m!34965 () Bool)

(assert (=> b!32175 m!34965))

(assert (=> b!32101 d!16583))

(declare-fun b!32181 () Bool)

(declare-fun e!16389 () Int)

(declare-fun lt!6152 () Int)

(declare-fun lt!6153 () Int)

(assert (=> b!32181 (= e!16389 (+ 1 (ite (>= lt!6152 lt!6153) lt!6152 lt!6153)))))

(assert (=> b!32181 (= lt!6153 (level!58 (right!720 res!5575)))))

(assert (=> b!32181 (= lt!6152 (level!58 (left!717 res!5575)))))

(declare-fun d!16585 () Bool)

(declare-fun lt!6154 () Int)

(assert (=> d!16585 (>= lt!6154 0)))

(assert (=> d!16585 (= lt!6154 e!16389)))

(declare-fun c!7017 () Bool)

(assert (=> d!16585 (= c!7017 (or (is-Empty!83 res!5575) (is-Single!72 res!5575)))))

(assert (=> d!16585 (= (level!58 res!5575) lt!6154)))

(declare-fun b!32180 () Bool)

(assert (=> b!32180 (= e!16389 0)))

(assert (= (and d!16585 c!7017) b!32180))

(assert (= (and d!16585 (not c!7017)) b!32181))

(assert (=> b!32181 m!34951))

(assert (=> b!32181 m!34949))

(assert (=> b!32096 d!16585))

(declare-fun b!32183 () Bool)

(declare-fun e!16390 () Int)

(declare-fun lt!6155 () Int)

(declare-fun lt!6156 () Int)

(assert (=> b!32183 (= e!16390 (+ 1 (ite (>= lt!6155 lt!6156) lt!6155 lt!6156)))))

(assert (=> b!32183 (= lt!6156 (level!58 (right!720 xs!586)))))

(assert (=> b!32183 (= lt!6155 (level!58 (left!717 xs!586)))))

(declare-fun d!16587 () Bool)

(declare-fun lt!6157 () Int)

(assert (=> d!16587 (>= lt!6157 0)))

(assert (=> d!16587 (= lt!6157 e!16390)))

(declare-fun c!7018 () Bool)

(assert (=> d!16587 (= c!7018 (or (is-Empty!83 xs!586) (is-Single!72 xs!586)))))

(assert (=> d!16587 (= (level!58 xs!586) lt!6157)))

(declare-fun b!32182 () Bool)

(assert (=> b!32182 (= e!16390 0)))

(assert (= (and d!16587 c!7018) b!32182))

(assert (= (and d!16587 (not c!7018)) b!32183))

(assert (=> b!32183 m!34939))

(assert (=> b!32183 m!34937))

(assert (=> b!32096 d!16587))

(declare-fun d!16589 () Bool)

(declare-fun res!14767 () Bool)

(declare-fun e!16391 () Bool)

(assert (=> d!16589 (=> res!14767 e!16391)))

(assert (=> d!16589 (= res!14767 (not (is-CC!72 res!5575)))))

(assert (=> d!16589 (= (concInv!65 res!5575) e!16391)))

(declare-fun b!32187 () Bool)

(declare-fun e!16392 () Bool)

(assert (=> b!32187 (= e!16392 (concInv!65 (right!720 res!5575)))))

(declare-fun b!32184 () Bool)

(assert (=> b!32184 (= e!16391 e!16392)))

(declare-fun res!14765 () Bool)

(assert (=> b!32184 (=> (not res!14765) (not e!16392))))

(assert (=> b!32184 (= res!14765 (not (isEmpty!327 (left!717 res!5575))))))

(declare-fun b!32185 () Bool)

(declare-fun res!14764 () Bool)

(assert (=> b!32185 (=> (not res!14764) (not e!16392))))

(assert (=> b!32185 (= res!14764 (not (isEmpty!327 (right!720 res!5575))))))

(declare-fun b!32186 () Bool)

(declare-fun res!14766 () Bool)

(assert (=> b!32186 (=> (not res!14766) (not e!16392))))

(assert (=> b!32186 (= res!14766 (concInv!65 (left!717 res!5575)))))

(assert (= (and d!16589 (not res!14767)) b!32184))

(assert (= (and b!32184 res!14765) b!32185))

(assert (= (and b!32185 res!14764) b!32186))

(assert (= (and b!32186 res!14766) b!32187))

(declare-fun m!34967 () Bool)

(assert (=> b!32187 m!34967))

(declare-fun m!34969 () Bool)

(assert (=> b!32184 m!34969))

(declare-fun m!34971 () Bool)

(assert (=> b!32185 m!34971))

(declare-fun m!34973 () Bool)

(assert (=> b!32186 m!34973))

(assert (=> b!32097 d!16589))

(declare-fun d!16591 () Bool)

(assert (=> d!16591 (= (isEmpty!327 xs!586) (= xs!586 Empty!83))))

(assert (=> b!32098 d!16591))

(declare-fun b!32192 () Bool)

(declare-fun e!16395 () Bool)

(declare-fun tp!6667 () Bool)

(assert (=> b!32192 (= e!16395 (and tp_is_empty!191 tp!6667))))

(assert (=> b!32094 (= tp!6663 e!16395)))

(assert (= (and b!32094 (is-Cons!361 (t!4381 thiss!2779))) b!32192))

(declare-fun b!32199 () Bool)

(declare-fun e!16398 () Bool)

(declare-fun tp!6672 () Bool)

(declare-fun tp!6673 () Bool)

(assert (=> b!32199 (= e!16398 (and tp!6672 tp!6673))))

(declare-fun b!32200 () Bool)

(assert (=> b!32200 (= e!16398 tp_is_empty!191)))

(assert (=> b!32095 (= tp!6662 e!16398)))

(assert (= (and b!32095 (is-CC!72 (left!717 res!5575))) b!32199))

(assert (= (and b!32095 (is-Single!72 (left!717 res!5575))) b!32200))

(declare-fun b!32201 () Bool)

(declare-fun e!16399 () Bool)

(declare-fun tp!6674 () Bool)

(declare-fun tp!6675 () Bool)

(assert (=> b!32201 (= e!16399 (and tp!6674 tp!6675))))

(declare-fun b!32202 () Bool)

(assert (=> b!32202 (= e!16399 tp_is_empty!191)))

(assert (=> b!32095 (= tp!6661 e!16399)))

(assert (= (and b!32095 (is-CC!72 (right!720 res!5575))) b!32201))

(assert (= (and b!32095 (is-Single!72 (right!720 res!5575))) b!32202))

(declare-fun b!32203 () Bool)

(declare-fun e!16400 () Bool)

(declare-fun tp!6676 () Bool)

(declare-fun tp!6677 () Bool)

(assert (=> b!32203 (= e!16400 (and tp!6676 tp!6677))))

(declare-fun b!32204 () Bool)

(assert (=> b!32204 (= e!16400 tp_is_empty!191)))

(assert (=> b!32107 (= tp!6664 e!16400)))

(assert (= (and b!32107 (is-CC!72 (left!717 xs!586))) b!32203))

(assert (= (and b!32107 (is-Single!72 (left!717 xs!586))) b!32204))

(declare-fun b!32205 () Bool)

(declare-fun e!16401 () Bool)

(declare-fun tp!6678 () Bool)

(declare-fun tp!6679 () Bool)

(assert (=> b!32205 (= e!16401 (and tp!6678 tp!6679))))

(declare-fun b!32206 () Bool)

(assert (=> b!32206 (= e!16401 tp_is_empty!191)))

(assert (=> b!32107 (= tp!6660 e!16401)))

(assert (= (and b!32107 (is-CC!72 (right!720 xs!586))) b!32205))

(assert (= (and b!32107 (is-Single!72 (right!720 xs!586))) b!32206))

(push 1)

(assert (not b!32140))

(assert (not b!32185))

(assert (not b!32187))

(assert (not b!32181))

(assert (not b!32183))

(assert (not b!32141))

(assert tp_is_empty!191)

(assert (not d!16573))

(assert (not b!32168))

(assert (not b!32184))

(assert (not b!32157))

(assert (not b!32155))

(assert (not b!32138))

(assert (not b!32205))

(assert (not b!32203))

(assert (not b!32175))

(assert (not b!32192))

(assert (not b!32166))

(assert (not b!32154))

(assert (not b!32129))

(assert (not b!32156))

(assert (not b!32169))

(assert (not b!32139))

(assert (not b!32117))

(assert (not b!32186))

(assert (not b!32174))

(assert (not b!32199))

(assert (not b!32167))

(assert (not b!32153))

(assert (not b!32201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

