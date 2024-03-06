; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!3948 () Bool)

(assert start!3948)

(declare-fun b!29071 () Bool)

(declare-fun e!14844 () Bool)

(declare-fun tp!6182 () Bool)

(declare-fun tp!6183 () Bool)

(assert (=> b!29071 (= e!14844 (and tp!6182 tp!6183))))

(declare-fun res!13294 () Bool)

(declare-fun e!14846 () Bool)

(assert (=> start!3948 (=> (not res!13294) (not e!14846))))

(declare-datatypes () ((T!1833 (T!1834 (val!89 Int)))))

(declare-datatypes () ((Conc!66 (CC!65 (left!710 Conc!66) (right!713 Conc!66)) (Single!65 (x!8945 T!1833)) (Empty!76))))

(declare-fun xs!533 () Conc!66)

(declare-fun concInv!60 (Conc!66) Bool)

(assert (=> start!3948 (= res!13294 (concInv!60 xs!533))))

(assert (=> start!3948 e!14846))

(assert (=> start!3948 e!14844))

(declare-fun e!14845 () Bool)

(assert (=> start!3948 e!14845))

(assert (=> start!3948 true))

(declare-fun e!14843 () Bool)

(assert (=> start!3948 e!14843))

(declare-fun b!29072 () Bool)

(declare-fun res!13296 () Bool)

(assert (=> b!29072 (=> (not res!13296) (not e!14846))))

(declare-fun ys!77 () Conc!66)

(declare-fun balanced!61 (Conc!66) Bool)

(assert (=> b!29072 (= res!13296 (balanced!61 ys!77))))

(declare-fun b!29073 () Bool)

(declare-fun res!13299 () Bool)

(declare-fun e!14842 () Bool)

(assert (=> b!29073 (=> (not res!13299) (not e!14842))))

(declare-fun appendAssocInst!14 (Conc!66 Conc!66) Bool)

(assert (=> b!29073 (= res!13299 (appendAssocInst!14 xs!533 ys!77))))

(declare-fun b!29074 () Bool)

(declare-fun res!13301 () Bool)

(assert (=> b!29074 (=> (not res!13301) (not e!14842))))

(declare-fun lt!5152 () Int)

(declare-fun lt!5154 () Int)

(declare-fun lt!5153 () Int)

(assert (=> b!29074 (= res!13301 (>= lt!5152 (ite (>= lt!5153 lt!5154) lt!5153 lt!5154)))))

(declare-fun level!54 (Conc!66) Int)

(assert (=> b!29074 (= lt!5154 (level!54 ys!77))))

(assert (=> b!29074 (= lt!5153 (level!54 xs!533))))

(declare-fun res!5539 () Conc!66)

(assert (=> b!29074 (= lt!5152 (level!54 res!5539))))

(declare-fun b!29075 () Bool)

(declare-fun tp_is_empty!177 () Bool)

(assert (=> b!29075 (= e!14844 tp_is_empty!177)))

(declare-fun b!29076 () Bool)

(assert (=> b!29076 (= e!14843 tp_is_empty!177)))

(declare-fun b!29077 () Bool)

(declare-fun res!13295 () Bool)

(assert (=> b!29077 (=> (not res!13295) (not e!14846))))

(assert (=> b!29077 (= res!13295 (concInv!60 ys!77))))

(declare-fun b!29078 () Bool)

(declare-fun res!13297 () Bool)

(assert (=> b!29078 (=> (not res!13297) (not e!14842))))

(assert (=> b!29078 (= res!13297 (concInv!60 res!5539))))

(declare-fun b!29079 () Bool)

(declare-fun res!13288 () Bool)

(assert (=> b!29079 (=> (not res!13288) (not e!14846))))

(declare-fun isEmpty!322 (Conc!66) Bool)

(assert (=> b!29079 (= res!13288 (not (isEmpty!322 ys!77)))))

(declare-fun b!29080 () Bool)

(declare-fun res!13300 () Bool)

(assert (=> b!29080 (=> (not res!13300) (not e!14846))))

(assert (=> b!29080 (= res!13300 (not (isEmpty!322 xs!533)))))

(declare-fun b!29081 () Bool)

(declare-fun concatCorrectness!14 (Conc!66 Conc!66 Conc!66) Bool)

(assert (=> b!29081 (= e!14842 (concatCorrectness!14 res!5539 xs!533 ys!77))))

(declare-fun b!29082 () Bool)

(declare-fun res!13291 () Bool)

(assert (=> b!29082 (=> (not res!13291) (not e!14846))))

(assert (=> b!29082 (= res!13291 (balanced!61 xs!533))))

(declare-fun b!29083 () Bool)

(declare-fun res!13293 () Bool)

(assert (=> b!29083 (=> (not res!13293) (not e!14846))))

(declare-fun diff!6 () Int)

(assert (=> b!29083 (= res!13293 (and (or (< diff!6 (- 1)) (> diff!6 1)) (>= diff!6 (- 1))))))

(declare-fun b!29084 () Bool)

(declare-fun tp!6184 () Bool)

(declare-fun tp!6185 () Bool)

(assert (=> b!29084 (= e!14843 (and tp!6184 tp!6185))))

(declare-fun b!29085 () Bool)

(assert (=> b!29085 (= e!14845 tp_is_empty!177)))

(declare-fun b!29086 () Bool)

(declare-fun res!13292 () Bool)

(assert (=> b!29086 (=> (not res!13292) (not e!14842))))

(assert (=> b!29086 (= res!13292 (balanced!61 res!5539))))

(declare-fun b!29087 () Bool)

(declare-fun tp!6186 () Bool)

(declare-fun tp!6187 () Bool)

(assert (=> b!29087 (= e!14845 (and tp!6186 tp!6187))))

(declare-fun b!29088 () Bool)

(declare-fun res!13289 () Bool)

(assert (=> b!29088 (=> (not res!13289) (not e!14846))))

(assert (=> b!29088 (= res!13289 (>= (level!54 (right!713 ys!77)) (level!54 (left!710 ys!77))))))

(declare-fun b!29089 () Bool)

(declare-fun res!13302 () Bool)

(assert (=> b!29089 (=> (not res!13302) (not e!14846))))

(assert (=> b!29089 (= res!13302 (= diff!6 (- (level!54 ys!77) (level!54 xs!533))))))

(declare-fun b!29090 () Bool)

(declare-fun res!13290 () Bool)

(assert (=> b!29090 (=> (not res!13290) (not e!14846))))

(declare-fun concatNonEmpty!17 (Conc!66 Conc!66) Conc!66)

(assert (=> b!29090 (= res!13290 (= res!5539 (CC!65 (concatNonEmpty!17 xs!533 (left!710 ys!77)) (right!713 ys!77))))))

(declare-fun b!29091 () Bool)

(assert (=> b!29091 (= e!14846 (not e!14842))))

(declare-fun res!13298 () Bool)

(assert (=> b!29091 (=> (not res!13298) (not e!14842))))

(declare-fun lt!5151 () Int)

(declare-fun lt!5149 () Int)

(declare-fun lt!5150 () Int)

(assert (=> b!29091 (= res!13298 (<= lt!5149 (+ (ite (>= lt!5150 lt!5151) lt!5150 lt!5151) 1)))))

(assert (=> b!29091 (= lt!5151 (level!54 ys!77))))

(assert (=> b!29091 (= lt!5150 (level!54 xs!533))))

(assert (=> b!29091 (= lt!5149 (level!54 res!5539))))

(assert (=> b!29091 (is-CC!65 res!5539)))

(assert (= (and start!3948 res!13294) b!29082))

(assert (= (and b!29082 res!13291) b!29077))

(assert (= (and b!29077 res!13295) b!29072))

(assert (= (and b!29072 res!13296) b!29080))

(assert (= (and b!29080 res!13300) b!29079))

(assert (= (and b!29079 res!13288) b!29089))

(assert (= (and b!29089 res!13302) b!29083))

(assert (= (and b!29083 res!13293) b!29088))

(assert (= (and b!29088 res!13289) b!29090))

(assert (= (and b!29090 res!13290) b!29091))

(assert (= (and b!29091 res!13298) b!29074))

(assert (= (and b!29074 res!13301) b!29078))

(assert (= (and b!29078 res!13297) b!29086))

(assert (= (and b!29086 res!13292) b!29073))

(assert (= (and b!29073 res!13299) b!29081))

(assert (= (and start!3948 (is-CC!65 xs!533)) b!29071))

(assert (= (and start!3948 (is-Single!65 xs!533)) b!29075))

(assert (= (and start!3948 (is-CC!65 ys!77)) b!29087))

(assert (= (and start!3948 (is-Single!65 ys!77)) b!29085))

(assert (= (and start!3948 (is-CC!65 res!5539)) b!29084))

(assert (= (and start!3948 (is-Single!65 res!5539)) b!29076))

(declare-fun m!30941 () Bool)

(assert (=> b!29079 m!30941))

(declare-fun m!30943 () Bool)

(assert (=> b!29086 m!30943))

(declare-fun m!30945 () Bool)

(assert (=> b!29074 m!30945))

(declare-fun m!30947 () Bool)

(assert (=> b!29074 m!30947))

(declare-fun m!30949 () Bool)

(assert (=> b!29074 m!30949))

(declare-fun m!30951 () Bool)

(assert (=> b!29088 m!30951))

(declare-fun m!30953 () Bool)

(assert (=> b!29088 m!30953))

(declare-fun m!30955 () Bool)

(assert (=> b!29081 m!30955))

(declare-fun m!30957 () Bool)

(assert (=> b!29077 m!30957))

(declare-fun m!30959 () Bool)

(assert (=> b!29072 m!30959))

(assert (=> b!29091 m!30945))

(assert (=> b!29091 m!30947))

(assert (=> b!29091 m!30949))

(declare-fun m!30961 () Bool)

(assert (=> b!29080 m!30961))

(declare-fun m!30963 () Bool)

(assert (=> start!3948 m!30963))

(declare-fun m!30965 () Bool)

(assert (=> b!29082 m!30965))

(declare-fun m!30967 () Bool)

(assert (=> b!29073 m!30967))

(declare-fun m!30969 () Bool)

(assert (=> b!29078 m!30969))

(declare-fun m!30971 () Bool)

(assert (=> b!29090 m!30971))

(assert (=> b!29089 m!30945))

(assert (=> b!29089 m!30947))

(push 1)

(assert (not b!29074))

(assert (not start!3948))

(assert (not b!29089))

(assert (not b!29071))

(assert (not b!29072))

(assert (not b!29073))

(assert (not b!29084))

(assert (not b!29078))

(assert (not b!29087))

(assert (not b!29088))

(assert (not b!29079))

(assert tp_is_empty!177)

(assert (not b!29081))

(assert (not b!29091))

(assert (not b!29080))

(assert (not b!29086))

(assert (not b!29082))

(assert (not b!29077))

(assert (not b!29090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!29110 () Bool)

(declare-fun e!14872 () Bool)

(declare-fun e!14873 () Bool)

(assert (=> b!29110 (= e!14872 e!14873)))

(declare-fun res!13327 () Bool)

(assert (=> b!29110 (=> (not res!13327) (not e!14873))))

(declare-datatypes () ((List!362 (Cons!356 (h!273 T!1833) (t!4376 List!362)) (Nil!357))))

(declare-fun appendAssoc!10 (List!362 List!362 List!362) Bool)

(declare-fun toList!117 (Conc!66) List!362)

(assert (=> b!29110 (= res!13327 (appendAssoc!10 (toList!117 (left!710 xs!533)) (toList!117 (right!713 xs!533)) (toList!117 ys!77)))))

(declare-fun b!29111 () Bool)

(declare-fun e!14867 () Bool)

(assert (=> b!29111 (= e!14873 e!14867)))

(declare-fun res!13324 () Bool)

(assert (=> b!29111 (=> res!13324 e!14867)))

(assert (=> b!29111 (= res!13324 (not (is-CC!65 (right!713 xs!533))))))

(declare-fun d!15303 () Bool)

(declare-fun e!14869 () Bool)

(assert (=> d!15303 e!14869))

(declare-fun res!13326 () Bool)

(assert (=> d!15303 (=> (not res!13326) (not e!14869))))

(assert (=> d!15303 (= res!13326 e!14872)))

(declare-fun res!13329 () Bool)

(assert (=> d!15303 (=> res!13329 e!14872)))

(assert (=> d!15303 (= res!13329 (not (is-CC!65 xs!533)))))

(assert (=> d!15303 (= (appendAssocInst!14 xs!533 ys!77) true)))

(declare-fun b!29112 () Bool)

(declare-fun e!14868 () Bool)

(declare-fun e!14866 () Bool)

(assert (=> b!29112 (= e!14868 e!14866)))

(declare-fun res!13328 () Bool)

(assert (=> b!29112 (=> res!13328 e!14866)))

(assert (=> b!29112 (= res!13328 (not (is-CC!65 (left!710 ys!77))))))

(declare-fun b!29113 () Bool)

(declare-fun e!14871 () Bool)

(assert (=> b!29113 (= e!14871 e!14868)))

(declare-fun res!13321 () Bool)

(assert (=> b!29113 (=> (not res!13321) (not e!14868))))

(assert (=> b!29113 (= res!13321 (appendAssoc!10 (toList!117 xs!533) (toList!117 (left!710 ys!77)) (toList!117 (right!713 ys!77))))))

(declare-fun b!29114 () Bool)

(declare-fun e!14870 () Bool)

(assert (=> b!29114 (= e!14866 e!14870)))

(declare-fun res!13325 () Bool)

(assert (=> b!29114 (=> (not res!13325) (not e!14870))))

(assert (=> b!29114 (= res!13325 (appendAssoc!10 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))))))

(declare-fun b!29115 () Bool)

(declare-fun e!14865 () Bool)

(assert (=> b!29115 (= e!14867 e!14865)))

(declare-fun res!13323 () Bool)

(assert (=> b!29115 (=> (not res!13323) (not e!14865))))

(assert (=> b!29115 (= res!13323 (appendAssoc!10 (toList!117 (left!710 (right!713 xs!533))) (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77)))))

(declare-fun b!29116 () Bool)

(declare-fun ++!42 (List!362 List!362) List!362)

(assert (=> b!29116 (= e!14865 (appendAssoc!10 (toList!117 (left!710 xs!533)) (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))))))

(declare-fun b!29117 () Bool)

(assert (=> b!29117 (= e!14869 e!14871)))

(declare-fun res!13322 () Bool)

(assert (=> b!29117 (=> res!13322 e!14871)))

(assert (=> b!29117 (= res!13322 (not (is-CC!65 ys!77)))))

(declare-fun b!29118 () Bool)

(assert (=> b!29118 (= e!14870 (appendAssoc!10 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77))) (toList!117 (right!713 ys!77))))))

(assert (= (and d!15303 (not res!13329)) b!29110))

(assert (= (and b!29110 res!13327) b!29111))

(assert (= (and b!29111 (not res!13324)) b!29115))

(assert (= (and b!29115 res!13323) b!29116))

(assert (= (and d!15303 res!13326) b!29117))

(assert (= (and b!29117 (not res!13322)) b!29113))

(assert (= (and b!29113 res!13321) b!29112))

(assert (= (and b!29112 (not res!13328)) b!29114))

(assert (= (and b!29114 res!13325) b!29118))

(declare-fun m!30973 () Bool)

(assert (=> b!29118 m!30973))

(declare-fun m!30975 () Bool)

(assert (=> b!29118 m!30975))

(declare-fun m!30977 () Bool)

(assert (=> b!29118 m!30977))

(assert (=> b!29118 m!30973))

(assert (=> b!29118 m!30977))

(declare-fun m!30979 () Bool)

(assert (=> b!29118 m!30979))

(declare-fun m!30981 () Bool)

(assert (=> b!29118 m!30981))

(declare-fun m!30983 () Bool)

(assert (=> b!29118 m!30983))

(assert (=> b!29118 m!30981))

(assert (=> b!29118 m!30979))

(assert (=> b!29118 m!30975))

(declare-fun m!30985 () Bool)

(assert (=> b!29110 m!30985))

(declare-fun m!30987 () Bool)

(assert (=> b!29110 m!30987))

(declare-fun m!30989 () Bool)

(assert (=> b!29110 m!30989))

(assert (=> b!29110 m!30985))

(assert (=> b!29110 m!30987))

(assert (=> b!29110 m!30989))

(declare-fun m!30991 () Bool)

(assert (=> b!29110 m!30991))

(assert (=> b!29114 m!30973))

(assert (=> b!29114 m!30975))

(assert (=> b!29114 m!30979))

(assert (=> b!29114 m!30973))

(assert (=> b!29114 m!30975))

(assert (=> b!29114 m!30979))

(declare-fun m!30993 () Bool)

(assert (=> b!29114 m!30993))

(declare-fun m!30995 () Bool)

(assert (=> b!29116 m!30995))

(assert (=> b!29116 m!30985))

(assert (=> b!29116 m!30989))

(declare-fun m!30997 () Bool)

(assert (=> b!29116 m!30997))

(assert (=> b!29116 m!30985))

(assert (=> b!29116 m!30995))

(declare-fun m!30999 () Bool)

(assert (=> b!29116 m!30999))

(declare-fun m!31001 () Bool)

(assert (=> b!29116 m!31001))

(assert (=> b!29116 m!30997))

(assert (=> b!29116 m!30989))

(assert (=> b!29116 m!30999))

(assert (=> b!29115 m!30995))

(assert (=> b!29115 m!30997))

(assert (=> b!29115 m!30989))

(assert (=> b!29115 m!30995))

(assert (=> b!29115 m!30997))

(assert (=> b!29115 m!30989))

(declare-fun m!31003 () Bool)

(assert (=> b!29115 m!31003))

(assert (=> b!29113 m!30973))

(declare-fun m!31005 () Bool)

(assert (=> b!29113 m!31005))

(assert (=> b!29113 m!30981))

(assert (=> b!29113 m!30973))

(assert (=> b!29113 m!31005))

(assert (=> b!29113 m!30981))

(declare-fun m!31007 () Bool)

(assert (=> b!29113 m!31007))

(assert (=> b!29073 d!15303))

(declare-fun b!29124 () Bool)

(declare-fun e!14876 () Int)

(declare-fun lt!5161 () Int)

(declare-fun lt!5162 () Int)

(assert (=> b!29124 (= e!14876 (+ 1 (ite (>= lt!5161 lt!5162) lt!5161 lt!5162)))))

(assert (=> b!29124 (= lt!5162 (level!54 (right!713 ys!77)))))

(assert (=> b!29124 (= lt!5161 (level!54 (left!710 ys!77)))))

(declare-fun d!15305 () Bool)

(declare-fun lt!5163 () Int)

(assert (=> d!15305 (>= lt!5163 0)))

(assert (=> d!15305 (= lt!5163 e!14876)))

(declare-fun c!6383 () Bool)

(assert (=> d!15305 (= c!6383 (or (is-Empty!76 ys!77) (is-Single!65 ys!77)))))

(assert (=> d!15305 (= (level!54 ys!77) lt!5163)))

(declare-fun b!29123 () Bool)

(assert (=> b!29123 (= e!14876 0)))

(assert (= (and d!15305 c!6383) b!29123))

(assert (= (and d!15305 (not c!6383)) b!29124))

(assert (=> b!29124 m!30951))

(assert (=> b!29124 m!30953))

(assert (=> b!29089 d!15305))

(declare-fun b!29126 () Bool)

(declare-fun e!14877 () Int)

(declare-fun lt!5164 () Int)

(declare-fun lt!5165 () Int)

(assert (=> b!29126 (= e!14877 (+ 1 (ite (>= lt!5164 lt!5165) lt!5164 lt!5165)))))

(assert (=> b!29126 (= lt!5165 (level!54 (right!713 xs!533)))))

(assert (=> b!29126 (= lt!5164 (level!54 (left!710 xs!533)))))

(declare-fun d!15307 () Bool)

(declare-fun lt!5166 () Int)

(assert (=> d!15307 (>= lt!5166 0)))

(assert (=> d!15307 (= lt!5166 e!14877)))

(declare-fun c!6384 () Bool)

(assert (=> d!15307 (= c!6384 (or (is-Empty!76 xs!533) (is-Single!65 xs!533)))))

(assert (=> d!15307 (= (level!54 xs!533) lt!5166)))

(declare-fun b!29125 () Bool)

(assert (=> b!29125 (= e!14877 0)))

(assert (= (and d!15307 c!6384) b!29125))

(assert (= (and d!15307 (not c!6384)) b!29126))

(declare-fun m!31009 () Bool)

(assert (=> b!29126 m!31009))

(declare-fun m!31011 () Bool)

(assert (=> b!29126 m!31011))

(assert (=> b!29089 d!15307))

(declare-fun b!29137 () Bool)

(declare-fun res!13339 () Bool)

(declare-fun e!14882 () Bool)

(assert (=> b!29137 (=> (not res!13339) (not e!14882))))

(assert (=> b!29137 (= res!13339 (concInv!60 (left!710 ys!77)))))

(declare-fun b!29135 () Bool)

(declare-fun e!14883 () Bool)

(assert (=> b!29135 (= e!14883 e!14882)))

(declare-fun res!13340 () Bool)

(assert (=> b!29135 (=> (not res!13340) (not e!14882))))

(assert (=> b!29135 (= res!13340 (not (isEmpty!322 (left!710 ys!77))))))

(declare-fun d!15309 () Bool)

(declare-fun res!13341 () Bool)

(assert (=> d!15309 (=> res!13341 e!14883)))

(assert (=> d!15309 (= res!13341 (not (is-CC!65 ys!77)))))

(assert (=> d!15309 (= (concInv!60 ys!77) e!14883)))

(declare-fun b!29136 () Bool)

(declare-fun res!13338 () Bool)

(assert (=> b!29136 (=> (not res!13338) (not e!14882))))

(assert (=> b!29136 (= res!13338 (not (isEmpty!322 (right!713 ys!77))))))

(declare-fun b!29138 () Bool)

(assert (=> b!29138 (= e!14882 (concInv!60 (right!713 ys!77)))))

(assert (= (and d!15309 (not res!13341)) b!29135))

(assert (= (and b!29135 res!13340) b!29136))

(assert (= (and b!29136 res!13338) b!29137))

(assert (= (and b!29137 res!13339) b!29138))

(declare-fun m!31013 () Bool)

(assert (=> b!29137 m!31013))

(declare-fun m!31015 () Bool)

(assert (=> b!29135 m!31015))

(declare-fun m!31017 () Bool)

(assert (=> b!29136 m!31017))

(declare-fun m!31019 () Bool)

(assert (=> b!29138 m!31019))

(assert (=> b!29077 d!15309))

(assert (=> b!29074 d!15305))

(assert (=> b!29074 d!15307))

(declare-fun b!29140 () Bool)

(declare-fun e!14884 () Int)

(declare-fun lt!5167 () Int)

(declare-fun lt!5168 () Int)

(assert (=> b!29140 (= e!14884 (+ 1 (ite (>= lt!5167 lt!5168) lt!5167 lt!5168)))))

(assert (=> b!29140 (= lt!5168 (level!54 (right!713 res!5539)))))

(assert (=> b!29140 (= lt!5167 (level!54 (left!710 res!5539)))))

(declare-fun d!15311 () Bool)

(declare-fun lt!5169 () Int)

(assert (=> d!15311 (>= lt!5169 0)))

(assert (=> d!15311 (= lt!5169 e!14884)))

(declare-fun c!6385 () Bool)

(assert (=> d!15311 (= c!6385 (or (is-Empty!76 res!5539) (is-Single!65 res!5539)))))

(assert (=> d!15311 (= (level!54 res!5539) lt!5169)))

(declare-fun b!29139 () Bool)

(assert (=> b!29139 (= e!14884 0)))

(assert (= (and d!15311 c!6385) b!29139))

(assert (= (and d!15311 (not c!6385)) b!29140))

(declare-fun m!31021 () Bool)

(assert (=> b!29140 m!31021))

(declare-fun m!31023 () Bool)

(assert (=> b!29140 m!31023))

(assert (=> b!29074 d!15311))

(declare-fun d!15313 () Bool)

(assert (=> d!15313 (= (concatCorrectness!14 res!5539 xs!533 ys!77) (= (toList!117 res!5539) (++!42 (toList!117 xs!533) (toList!117 ys!77))))))

(declare-fun bs!5101 () Bool)

(assert (= bs!5101 d!15313))

(assert (=> bs!5101 m!30973))

(assert (=> bs!5101 m!30989))

(declare-fun m!31025 () Bool)

(assert (=> bs!5101 m!31025))

(declare-fun m!31027 () Bool)

(assert (=> bs!5101 m!31027))

(assert (=> bs!5101 m!30989))

(assert (=> bs!5101 m!30973))

(assert (=> b!29081 d!15313))

(declare-fun b!29152 () Bool)

(declare-fun e!14889 () Bool)

(assert (=> b!29152 (= e!14889 (balanced!61 (right!713 res!5539)))))

(declare-fun b!29149 () Bool)

(declare-fun e!14890 () Bool)

(assert (=> b!29149 (= e!14890 e!14889)))

(declare-fun res!13353 () Bool)

(assert (=> b!29149 (=> (not res!13353) (not e!14889))))

(assert (=> b!29149 (= res!13353 (>= (- (level!54 (left!710 res!5539)) (level!54 (right!713 res!5539))) (- 1)))))

(declare-fun d!15315 () Bool)

(declare-fun res!13352 () Bool)

(assert (=> d!15315 (=> res!13352 e!14890)))

(assert (=> d!15315 (= res!13352 (not (is-CC!65 res!5539)))))

(assert (=> d!15315 (= (balanced!61 res!5539) e!14890)))

(declare-fun b!29151 () Bool)

(declare-fun res!13351 () Bool)

(assert (=> b!29151 (=> (not res!13351) (not e!14889))))

(assert (=> b!29151 (= res!13351 (balanced!61 (left!710 res!5539)))))

(declare-fun b!29150 () Bool)

(declare-fun res!13354 () Bool)

(assert (=> b!29150 (=> (not res!13354) (not e!14889))))

(assert (=> b!29150 (= res!13354 (<= (- (level!54 (left!710 res!5539)) (level!54 (right!713 res!5539))) 1))))

(assert (= (and d!15315 (not res!13352)) b!29149))

(assert (= (and b!29149 res!13353) b!29150))

(assert (= (and b!29150 res!13354) b!29151))

(assert (= (and b!29151 res!13351) b!29152))

(declare-fun m!31029 () Bool)

(assert (=> b!29152 m!31029))

(assert (=> b!29149 m!31023))

(assert (=> b!29149 m!31021))

(declare-fun m!31031 () Bool)

(assert (=> b!29151 m!31031))

(assert (=> b!29150 m!31023))

(assert (=> b!29150 m!31021))

(assert (=> b!29086 d!15315))

(declare-fun b!29155 () Bool)

(declare-fun res!13356 () Bool)

(declare-fun e!14891 () Bool)

(assert (=> b!29155 (=> (not res!13356) (not e!14891))))

(assert (=> b!29155 (= res!13356 (concInv!60 (left!710 xs!533)))))

(declare-fun b!29153 () Bool)

(declare-fun e!14892 () Bool)

(assert (=> b!29153 (= e!14892 e!14891)))

(declare-fun res!13357 () Bool)

(assert (=> b!29153 (=> (not res!13357) (not e!14891))))

(assert (=> b!29153 (= res!13357 (not (isEmpty!322 (left!710 xs!533))))))

(declare-fun d!15317 () Bool)

(declare-fun res!13358 () Bool)

(assert (=> d!15317 (=> res!13358 e!14892)))

(assert (=> d!15317 (= res!13358 (not (is-CC!65 xs!533)))))

(assert (=> d!15317 (= (concInv!60 xs!533) e!14892)))

(declare-fun b!29154 () Bool)

(declare-fun res!13355 () Bool)

(assert (=> b!29154 (=> (not res!13355) (not e!14891))))

(assert (=> b!29154 (= res!13355 (not (isEmpty!322 (right!713 xs!533))))))

(declare-fun b!29156 () Bool)

(assert (=> b!29156 (= e!14891 (concInv!60 (right!713 xs!533)))))

(assert (= (and d!15317 (not res!13358)) b!29153))

(assert (= (and b!29153 res!13357) b!29154))

(assert (= (and b!29154 res!13355) b!29155))

(assert (= (and b!29155 res!13356) b!29156))

(declare-fun m!31033 () Bool)

(assert (=> b!29155 m!31033))

(declare-fun m!31035 () Bool)

(assert (=> b!29153 m!31035))

(declare-fun m!31037 () Bool)

(assert (=> b!29154 m!31037))

(declare-fun m!31039 () Bool)

(assert (=> b!29156 m!31039))

(assert (=> start!3948 d!15317))

(assert (=> b!29091 d!15305))

(assert (=> b!29091 d!15307))

(assert (=> b!29091 d!15311))

(declare-fun b!29199 () Bool)

(declare-fun e!14914 () Int)

(declare-fun lt!5206 () Bool)

(assert (=> b!29199 (= e!14914 (level!54 (ite lt!5206 xs!533 (left!710 ys!77))))))

(declare-fun b!29200 () Bool)

(declare-fun e!14911 () Int)

(declare-fun lt!5207 () Conc!66)

(assert (=> b!29200 (= e!14911 (level!54 lt!5207))))

(declare-fun b!29201 () Bool)

(declare-fun res!13425 () Int)

(assert (=> b!29201 (= e!14914 res!13425)))

(assert (=> b!29201 true))

(assert (=> b!29201 true))

(declare-fun b!29202 () Bool)

(declare-fun res!13414 () Int)

(assert (=> b!29202 (= e!14911 res!13414)))

(assert (=> b!29202 true))

(declare-fun b!29203 () Bool)

(declare-fun res!13422 () Bool)

(declare-fun e!14915 () Bool)

(assert (=> b!29203 (=> (not res!13422) (not e!14915))))

(assert (=> b!29203 (= res!13422 (concInv!60 (left!710 ys!77)))))

(declare-fun b!29204 () Bool)

(declare-fun res!13423 () Bool)

(assert (=> b!29204 (=> (not res!13423) (not e!14915))))

(assert (=> b!29204 (= res!13423 (balanced!61 (left!710 ys!77)))))

(declare-fun b!29205 () Bool)

(declare-fun e!14916 () Conc!66)

(declare-fun res!13420 () Conc!66)

(assert (=> b!29205 (= e!14916 res!13420)))

(assert (=> b!29205 true))

(declare-fun e!14913 () Bool)

(assert (=> b!29205 e!14913))

(declare-fun b!29206 () Bool)

(declare-fun lt!5203 () Bool)

(declare-fun lt!5205 () Int)

(declare-fun lt!5214 () Int)

(assert (=> b!29206 (= e!14916 (concatNonEmpty!17 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533) (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(declare-fun b!29207 () Bool)

(declare-fun tp!6193 () Bool)

(declare-fun tp!6192 () Bool)

(assert (=> b!29207 (= e!14913 (and tp!6193 tp!6192))))

(declare-fun b!29208 () Bool)

(declare-fun e!14918 () Bool)

(assert (=> b!29208 (= e!14918 (balanced!61 xs!533))))

(declare-fun b!29209 () Bool)

(declare-fun res!13418 () Bool)

(declare-fun e!14919 () Bool)

(assert (=> b!29209 (=> (not res!13418) (not e!14919))))

(declare-fun lt!5211 () Conc!66)

(assert (=> b!29209 (= res!13418 (balanced!61 lt!5211))))

(declare-fun b!29210 () Bool)

(assert (=> b!29210 (= e!14915 (not (isEmpty!322 (left!710 ys!77))))))

(declare-fun lt!5215 () Int)

(declare-fun b!29211 () Bool)

(declare-fun lt!5204 () Bool)

(declare-fun e!14917 () Conc!66)

(declare-fun lt!5212 () Int)

(assert (=> b!29211 (= e!14917 (ite lt!5204 (let ((res!13362 lt!5207)) (ite (>= lt!5205 lt!5214) (CC!65 (left!710 xs!533) res!13362) (ite (= lt!5215 (- lt!5212 3)) (CC!65 (left!710 xs!533) (CC!65 (left!710 (right!713 xs!533)) res!13362)) (CC!65 (CC!65 (left!710 xs!533) (left!710 (right!713 xs!533))) res!13362)))) (let ((res!13365 lt!5207)) (ite (>= lt!5205 lt!5214) (CC!65 res!13365 (right!713 (left!710 ys!77))) (ite (= lt!5215 (- lt!5212 3)) (CC!65 (CC!65 res!13365 (right!713 (left!710 (left!710 ys!77)))) (right!713 (left!710 ys!77))) (CC!65 res!13365 (CC!65 (right!713 (left!710 (left!710 ys!77))) (right!713 (left!710 ys!77)))))))))))

(assert (=> b!29211 (= lt!5212 e!14914)))

(declare-fun c!6397 () Bool)

(assert (=> b!29211 (= c!6397 (or lt!5206 (and (not lt!5204) (not (>= lt!5205 lt!5214)))))))

(assert (=> b!29211 (= lt!5206 (and lt!5204 (not (>= lt!5205 lt!5214))))))

(assert (=> b!29211 (= lt!5215 e!14911)))

(declare-fun c!6396 () Bool)

(assert (=> b!29211 (= c!6396 (or (and lt!5204 (not (>= lt!5205 lt!5214))) (and (not lt!5204) (not (>= lt!5205 lt!5214)))))))

(assert (=> b!29211 (= lt!5207 e!14916)))

(declare-fun c!6394 () Bool)

(assert (=> b!29211 (= c!6394 (or lt!5203 (not lt!5204)))))

(assert (=> b!29211 (= lt!5203 lt!5204)))

(assert (=> b!29211 (= lt!5214 (level!54 (ite lt!5204 (right!713 xs!533) (left!710 (left!710 ys!77)))))))

(assert (=> b!29211 (= lt!5205 (level!54 (ite lt!5204 (left!710 xs!533) (right!713 (left!710 ys!77)))))))

(declare-fun lt!5210 () Int)

(assert (=> b!29211 (= lt!5204 (< lt!5210 (- 1)))))

(declare-fun b!29212 () Bool)

(declare-fun res!13417 () Bool)

(assert (=> b!29212 (=> (not res!13417) (not e!14915))))

(assert (=> b!29212 (= res!13417 (not (isEmpty!322 xs!533)))))

(declare-fun b!29213 () Bool)

(declare-fun res!13424 () Bool)

(assert (=> b!29213 (=> (not res!13424) (not e!14919))))

(assert (=> b!29213 (= res!13424 (concInv!60 lt!5211))))

(declare-fun b!29214 () Bool)

(declare-fun res!13419 () Bool)

(assert (=> b!29214 (=> (not res!13419) (not e!14919))))

(assert (=> b!29214 (= res!13419 (appendAssocInst!14 xs!533 (left!710 ys!77)))))

(declare-fun b!29215 () Bool)

(assert (=> b!29215 (= e!14919 (concatCorrectness!14 lt!5211 xs!533 (left!710 ys!77)))))

(declare-fun d!15319 () Bool)

(declare-fun e!14912 () Bool)

(assert (=> d!15319 e!14912))

(declare-fun res!13421 () Bool)

(assert (=> d!15319 (=> (not res!13421) (not e!14912))))

(assert (=> d!15319 (= res!13421 (is-CC!65 lt!5211))))

(assert (=> d!15319 (= lt!5211 e!14917)))

(declare-fun c!6395 () Bool)

(assert (=> d!15319 (= c!6395 (and (>= lt!5210 (- 1)) (<= lt!5210 1)))))

(assert (=> d!15319 (= lt!5210 (- (level!54 (left!710 ys!77)) (level!54 xs!533)))))

(assert (=> d!15319 e!14915))

(declare-fun res!13426 () Bool)

(assert (=> d!15319 (=> (not res!13426) (not e!14915))))

(assert (=> d!15319 (= res!13426 e!14918)))

(declare-fun res!13416 () Bool)

(assert (=> d!15319 (=> (not res!13416) (not e!14918))))

(assert (=> d!15319 (= res!13416 (concInv!60 xs!533))))

(assert (=> d!15319 (= (concatNonEmpty!17 xs!533 (left!710 ys!77)) lt!5211)))

(declare-fun b!29216 () Bool)

(assert (=> b!29216 (= e!14917 (CC!65 xs!533 (left!710 ys!77)))))

(declare-fun b!29217 () Bool)

(declare-fun res!13415 () Bool)

(assert (=> b!29217 (=> (not res!13415) (not e!14919))))

(declare-fun lt!5209 () Int)

(declare-fun lt!5202 () Int)

(declare-fun lt!5216 () Int)

(assert (=> b!29217 (= res!13415 (>= lt!5209 (ite (>= lt!5216 lt!5202) lt!5216 lt!5202)))))

(assert (=> b!29217 (= lt!5202 (level!54 (left!710 ys!77)))))

(assert (=> b!29217 (= lt!5216 (level!54 xs!533))))

(assert (=> b!29217 (= lt!5209 (level!54 lt!5211))))

(declare-fun b!29218 () Bool)

(assert (=> b!29218 (= e!14912 e!14919)))

(declare-fun res!13413 () Bool)

(assert (=> b!29218 (=> (not res!13413) (not e!14919))))

(declare-fun lt!5217 () Int)

(declare-fun lt!5208 () Int)

(declare-fun lt!5213 () Int)

(assert (=> b!29218 (= res!13413 (<= lt!5208 (+ (ite (>= lt!5213 lt!5217) lt!5213 lt!5217) 1)))))

(assert (=> b!29218 (= lt!5217 (level!54 (left!710 ys!77)))))

(assert (=> b!29218 (= lt!5213 (level!54 xs!533))))

(assert (=> b!29218 (= lt!5208 (level!54 lt!5211))))

(declare-fun b!29219 () Bool)

(assert (=> b!29219 (= e!14913 tp_is_empty!177)))

(assert (= (and d!15319 res!13416) b!29208))

(assert (= (and d!15319 res!13426) b!29203))

(assert (= (and b!29203 res!13422) b!29204))

(assert (= (and b!29204 res!13423) b!29212))

(assert (= (and b!29212 res!13417) b!29210))

(assert (= (and b!29205 (is-CC!65 res!13420)) b!29207))

(assert (= (and b!29205 (is-Single!65 res!13420)) b!29219))

(assert (= (and b!29211 c!6394) b!29206))

(assert (= (and b!29211 (not c!6394)) b!29205))

(assert (= (and b!29211 c!6396) b!29200))

(assert (= (and b!29211 (not c!6396)) b!29202))

(assert (= (and b!29211 c!6397) b!29199))

(assert (= (and b!29211 (not c!6397)) b!29201))

(assert (= (and d!15319 c!6395) b!29216))

(assert (= (and d!15319 (not c!6395)) b!29211))

(assert (= (and d!15319 res!13421) b!29218))

(assert (= (and b!29218 res!13413) b!29217))

(assert (= (and b!29217 res!13415) b!29213))

(assert (= (and b!29213 res!13424) b!29209))

(assert (= (and b!29209 res!13418) b!29214))

(assert (= (and b!29214 res!13419) b!29215))

(assert (=> d!15319 m!30953))

(assert (=> d!15319 m!30947))

(assert (=> d!15319 m!30963))

(assert (=> b!29208 m!30965))

(assert (=> b!29218 m!30953))

(assert (=> b!29218 m!30947))

(declare-fun m!31041 () Bool)

(assert (=> b!29218 m!31041))

(declare-fun m!31043 () Bool)

(assert (=> b!29204 m!31043))

(declare-fun m!31045 () Bool)

(assert (=> b!29211 m!31045))

(declare-fun m!31047 () Bool)

(assert (=> b!29211 m!31047))

(declare-fun m!31049 () Bool)

(assert (=> b!29199 m!31049))

(assert (=> b!29217 m!30953))

(assert (=> b!29217 m!30947))

(assert (=> b!29217 m!31041))

(declare-fun m!31051 () Bool)

(assert (=> b!29206 m!31051))

(declare-fun m!31053 () Bool)

(assert (=> b!29200 m!31053))

(declare-fun m!31055 () Bool)

(assert (=> b!29214 m!31055))

(declare-fun m!31057 () Bool)

(assert (=> b!29209 m!31057))

(assert (=> b!29210 m!31015))

(declare-fun m!31059 () Bool)

(assert (=> b!29215 m!31059))

(declare-fun m!31061 () Bool)

(assert (=> b!29213 m!31061))

(assert (=> b!29212 m!30961))

(assert (=> b!29203 m!31013))

(assert (=> b!29090 d!15319))

(declare-fun b!29223 () Bool)

(declare-fun e!14920 () Bool)

(assert (=> b!29223 (= e!14920 (balanced!61 (right!713 xs!533)))))

(declare-fun b!29220 () Bool)

(declare-fun e!14921 () Bool)

(assert (=> b!29220 (= e!14921 e!14920)))

(declare-fun res!13429 () Bool)

(assert (=> b!29220 (=> (not res!13429) (not e!14920))))

(assert (=> b!29220 (= res!13429 (>= (- (level!54 (left!710 xs!533)) (level!54 (right!713 xs!533))) (- 1)))))

(declare-fun d!15321 () Bool)

(declare-fun res!13428 () Bool)

(assert (=> d!15321 (=> res!13428 e!14921)))

(assert (=> d!15321 (= res!13428 (not (is-CC!65 xs!533)))))

(assert (=> d!15321 (= (balanced!61 xs!533) e!14921)))

(declare-fun b!29222 () Bool)

(declare-fun res!13427 () Bool)

(assert (=> b!29222 (=> (not res!13427) (not e!14920))))

(assert (=> b!29222 (= res!13427 (balanced!61 (left!710 xs!533)))))

(declare-fun b!29221 () Bool)

(declare-fun res!13430 () Bool)

(assert (=> b!29221 (=> (not res!13430) (not e!14920))))

(assert (=> b!29221 (= res!13430 (<= (- (level!54 (left!710 xs!533)) (level!54 (right!713 xs!533))) 1))))

(assert (= (and d!15321 (not res!13428)) b!29220))

(assert (= (and b!29220 res!13429) b!29221))

(assert (= (and b!29221 res!13430) b!29222))

(assert (= (and b!29222 res!13427) b!29223))

(declare-fun m!31063 () Bool)

(assert (=> b!29223 m!31063))

(assert (=> b!29220 m!31011))

(assert (=> b!29220 m!31009))

(declare-fun m!31065 () Bool)

(assert (=> b!29222 m!31065))

(assert (=> b!29221 m!31011))

(assert (=> b!29221 m!31009))

(assert (=> b!29082 d!15321))

(declare-fun b!29225 () Bool)

(declare-fun e!14922 () Int)

(declare-fun lt!5218 () Int)

(declare-fun lt!5219 () Int)

(assert (=> b!29225 (= e!14922 (+ 1 (ite (>= lt!5218 lt!5219) lt!5218 lt!5219)))))

(assert (=> b!29225 (= lt!5219 (level!54 (right!713 (right!713 ys!77))))))

(assert (=> b!29225 (= lt!5218 (level!54 (left!710 (right!713 ys!77))))))

(declare-fun d!15323 () Bool)

(declare-fun lt!5220 () Int)

(assert (=> d!15323 (>= lt!5220 0)))

(assert (=> d!15323 (= lt!5220 e!14922)))

(declare-fun c!6398 () Bool)

(assert (=> d!15323 (= c!6398 (or (is-Empty!76 (right!713 ys!77)) (is-Single!65 (right!713 ys!77))))))

(assert (=> d!15323 (= (level!54 (right!713 ys!77)) lt!5220)))

(declare-fun b!29224 () Bool)

(assert (=> b!29224 (= e!14922 0)))

(assert (= (and d!15323 c!6398) b!29224))

(assert (= (and d!15323 (not c!6398)) b!29225))

(declare-fun m!31067 () Bool)

(assert (=> b!29225 m!31067))

(declare-fun m!31069 () Bool)

(assert (=> b!29225 m!31069))

(assert (=> b!29088 d!15323))

(declare-fun b!29227 () Bool)

(declare-fun e!14923 () Int)

(declare-fun lt!5221 () Int)

(declare-fun lt!5222 () Int)

(assert (=> b!29227 (= e!14923 (+ 1 (ite (>= lt!5221 lt!5222) lt!5221 lt!5222)))))

(assert (=> b!29227 (= lt!5222 (level!54 (right!713 (left!710 ys!77))))))

(assert (=> b!29227 (= lt!5221 (level!54 (left!710 (left!710 ys!77))))))

(declare-fun d!15325 () Bool)

(declare-fun lt!5223 () Int)

(assert (=> d!15325 (>= lt!5223 0)))

(assert (=> d!15325 (= lt!5223 e!14923)))

(declare-fun c!6399 () Bool)

(assert (=> d!15325 (= c!6399 (or (is-Empty!76 (left!710 ys!77)) (is-Single!65 (left!710 ys!77))))))

(assert (=> d!15325 (= (level!54 (left!710 ys!77)) lt!5223)))

(declare-fun b!29226 () Bool)

(assert (=> b!29226 (= e!14923 0)))

(assert (= (and d!15325 c!6399) b!29226))

(assert (= (and d!15325 (not c!6399)) b!29227))

(declare-fun m!31071 () Bool)

(assert (=> b!29227 m!31071))

(declare-fun m!31073 () Bool)

(assert (=> b!29227 m!31073))

(assert (=> b!29088 d!15325))

(declare-fun b!29231 () Bool)

(declare-fun e!14924 () Bool)

(assert (=> b!29231 (= e!14924 (balanced!61 (right!713 ys!77)))))

(declare-fun b!29228 () Bool)

(declare-fun e!14925 () Bool)

(assert (=> b!29228 (= e!14925 e!14924)))

(declare-fun res!13433 () Bool)

(assert (=> b!29228 (=> (not res!13433) (not e!14924))))

(assert (=> b!29228 (= res!13433 (>= (- (level!54 (left!710 ys!77)) (level!54 (right!713 ys!77))) (- 1)))))

(declare-fun d!15327 () Bool)

(declare-fun res!13432 () Bool)

(assert (=> d!15327 (=> res!13432 e!14925)))

(assert (=> d!15327 (= res!13432 (not (is-CC!65 ys!77)))))

(assert (=> d!15327 (= (balanced!61 ys!77) e!14925)))

(declare-fun b!29230 () Bool)

(declare-fun res!13431 () Bool)

(assert (=> b!29230 (=> (not res!13431) (not e!14924))))

(assert (=> b!29230 (= res!13431 (balanced!61 (left!710 ys!77)))))

(declare-fun b!29229 () Bool)

(declare-fun res!13434 () Bool)

(assert (=> b!29229 (=> (not res!13434) (not e!14924))))

(assert (=> b!29229 (= res!13434 (<= (- (level!54 (left!710 ys!77)) (level!54 (right!713 ys!77))) 1))))

(assert (= (and d!15327 (not res!13432)) b!29228))

(assert (= (and b!29228 res!13433) b!29229))

(assert (= (and b!29229 res!13434) b!29230))

(assert (= (and b!29230 res!13431) b!29231))

(declare-fun m!31075 () Bool)

(assert (=> b!29231 m!31075))

(assert (=> b!29228 m!30953))

(assert (=> b!29228 m!30951))

(assert (=> b!29230 m!31043))

(assert (=> b!29229 m!30953))

(assert (=> b!29229 m!30951))

(assert (=> b!29072 d!15327))

(declare-fun b!29234 () Bool)

(declare-fun res!13436 () Bool)

(declare-fun e!14926 () Bool)

(assert (=> b!29234 (=> (not res!13436) (not e!14926))))

(assert (=> b!29234 (= res!13436 (concInv!60 (left!710 res!5539)))))

(declare-fun b!29232 () Bool)

(declare-fun e!14927 () Bool)

(assert (=> b!29232 (= e!14927 e!14926)))

(declare-fun res!13437 () Bool)

(assert (=> b!29232 (=> (not res!13437) (not e!14926))))

(assert (=> b!29232 (= res!13437 (not (isEmpty!322 (left!710 res!5539))))))

(declare-fun d!15329 () Bool)

(declare-fun res!13438 () Bool)

(assert (=> d!15329 (=> res!13438 e!14927)))

(assert (=> d!15329 (= res!13438 (not (is-CC!65 res!5539)))))

(assert (=> d!15329 (= (concInv!60 res!5539) e!14927)))

(declare-fun b!29233 () Bool)

(declare-fun res!13435 () Bool)

(assert (=> b!29233 (=> (not res!13435) (not e!14926))))

(assert (=> b!29233 (= res!13435 (not (isEmpty!322 (right!713 res!5539))))))

(declare-fun b!29235 () Bool)

(assert (=> b!29235 (= e!14926 (concInv!60 (right!713 res!5539)))))

(assert (= (and d!15329 (not res!13438)) b!29232))

(assert (= (and b!29232 res!13437) b!29233))

(assert (= (and b!29233 res!13435) b!29234))

(assert (= (and b!29234 res!13436) b!29235))

(declare-fun m!31077 () Bool)

(assert (=> b!29234 m!31077))

(declare-fun m!31079 () Bool)

(assert (=> b!29232 m!31079))

(declare-fun m!31081 () Bool)

(assert (=> b!29233 m!31081))

(declare-fun m!31083 () Bool)

(assert (=> b!29235 m!31083))

(assert (=> b!29078 d!15329))

(declare-fun d!15331 () Bool)

(assert (=> d!15331 (= (isEmpty!322 ys!77) (= ys!77 Empty!76))))

(assert (=> b!29079 d!15331))

(declare-fun d!15333 () Bool)

(assert (=> d!15333 (= (isEmpty!322 xs!533) (= xs!533 Empty!76))))

(assert (=> b!29080 d!15333))

(declare-fun b!29242 () Bool)

(declare-fun e!14930 () Bool)

(declare-fun tp!6198 () Bool)

(declare-fun tp!6199 () Bool)

(assert (=> b!29242 (= e!14930 (and tp!6198 tp!6199))))

(declare-fun b!29243 () Bool)

(assert (=> b!29243 (= e!14930 tp_is_empty!177)))

(assert (=> b!29087 (= tp!6186 e!14930)))

(assert (= (and b!29087 (is-CC!65 (left!710 ys!77))) b!29242))

(assert (= (and b!29087 (is-Single!65 (left!710 ys!77))) b!29243))

(declare-fun b!29244 () Bool)

(declare-fun e!14931 () Bool)

(declare-fun tp!6200 () Bool)

(declare-fun tp!6201 () Bool)

(assert (=> b!29244 (= e!14931 (and tp!6200 tp!6201))))

(declare-fun b!29245 () Bool)

(assert (=> b!29245 (= e!14931 tp_is_empty!177)))

(assert (=> b!29087 (= tp!6187 e!14931)))

(assert (= (and b!29087 (is-CC!65 (right!713 ys!77))) b!29244))

(assert (= (and b!29087 (is-Single!65 (right!713 ys!77))) b!29245))

(declare-fun b!29246 () Bool)

(declare-fun e!14932 () Bool)

(declare-fun tp!6202 () Bool)

(declare-fun tp!6203 () Bool)

(assert (=> b!29246 (= e!14932 (and tp!6202 tp!6203))))

(declare-fun b!29247 () Bool)

(assert (=> b!29247 (= e!14932 tp_is_empty!177)))

(assert (=> b!29084 (= tp!6184 e!14932)))

(assert (= (and b!29084 (is-CC!65 (left!710 res!5539))) b!29246))

(assert (= (and b!29084 (is-Single!65 (left!710 res!5539))) b!29247))

(declare-fun b!29248 () Bool)

(declare-fun e!14933 () Bool)

(declare-fun tp!6204 () Bool)

(declare-fun tp!6205 () Bool)

(assert (=> b!29248 (= e!14933 (and tp!6204 tp!6205))))

(declare-fun b!29249 () Bool)

(assert (=> b!29249 (= e!14933 tp_is_empty!177)))

(assert (=> b!29084 (= tp!6185 e!14933)))

(assert (= (and b!29084 (is-CC!65 (right!713 res!5539))) b!29248))

(assert (= (and b!29084 (is-Single!65 (right!713 res!5539))) b!29249))

(declare-fun b!29250 () Bool)

(declare-fun e!14934 () Bool)

(declare-fun tp!6206 () Bool)

(declare-fun tp!6207 () Bool)

(assert (=> b!29250 (= e!14934 (and tp!6206 tp!6207))))

(declare-fun b!29251 () Bool)

(assert (=> b!29251 (= e!14934 tp_is_empty!177)))

(assert (=> b!29071 (= tp!6182 e!14934)))

(assert (= (and b!29071 (is-CC!65 (left!710 xs!533))) b!29250))

(assert (= (and b!29071 (is-Single!65 (left!710 xs!533))) b!29251))

(declare-fun b!29252 () Bool)

(declare-fun e!14935 () Bool)

(declare-fun tp!6208 () Bool)

(declare-fun tp!6209 () Bool)

(assert (=> b!29252 (= e!14935 (and tp!6208 tp!6209))))

(declare-fun b!29253 () Bool)

(assert (=> b!29253 (= e!14935 tp_is_empty!177)))

(assert (=> b!29071 (= tp!6183 e!14935)))

(assert (= (and b!29071 (is-CC!65 (right!713 xs!533))) b!29252))

(assert (= (and b!29071 (is-Single!65 (right!713 xs!533))) b!29253))

(push 1)

(assert (not b!29218))

(assert (not b!29206))

(assert (not b!29110))

(assert (not b!29208))

(assert (not b!29138))

(assert (not b!29230))

(assert (not b!29137))

(assert (not b!29221))

(assert (not d!15319))

(assert (not b!29234))

(assert (not b!29214))

(assert (not b!29217))

(assert (not b!29213))

(assert (not b!29235))

(assert (not b!29229))

(assert (not b!29135))

(assert (not b!29232))

(assert (not b!29252))

(assert (not b!29244))

(assert (not b!29114))

(assert (not b!29115))

(assert (not b!29211))

(assert (not b!29150))

(assert (not b!29136))

(assert (not b!29222))

(assert (not b!29220))

(assert (not b!29248))

(assert (not d!15313))

(assert (not b!29246))

(assert (not b!29231))

(assert (not b!29151))

(assert (not b!29203))

(assert (not b!29140))

(assert (not b!29126))

(assert (not b!29233))

(assert (not b!29215))

(assert (not b!29113))

(assert (not b!29124))

(assert (not b!29250))

(assert (not b!29118))

(assert tp_is_empty!177)

(assert (not b!29204))

(assert (not b!29209))

(assert (not b!29227))

(assert (not b!29156))

(assert (not b!29225))

(assert (not b!29116))

(assert (not b!29212))

(assert (not b!29154))

(assert (not b!29200))

(assert (not b!29155))

(assert (not b!29242))

(assert (not b!29228))

(assert (not b!29199))

(assert (not b!29207))

(assert (not b!29223))

(assert (not b!29153))

(assert (not b!29152))

(assert (not b!29210))

(assert (not b!29149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!29255 () Bool)

(declare-fun e!14936 () Int)

(declare-fun lt!5224 () Int)

(declare-fun lt!5225 () Int)

(assert (=> b!29255 (= e!14936 (+ 1 (ite (>= lt!5224 lt!5225) lt!5224 lt!5225)))))

(assert (=> b!29255 (= lt!5225 (level!54 (right!713 lt!5207)))))

(assert (=> b!29255 (= lt!5224 (level!54 (left!710 lt!5207)))))

(declare-fun d!15335 () Bool)

(declare-fun lt!5226 () Int)

(assert (=> d!15335 (>= lt!5226 0)))

(assert (=> d!15335 (= lt!5226 e!14936)))

(declare-fun c!6400 () Bool)

(assert (=> d!15335 (= c!6400 (or (is-Empty!76 lt!5207) (is-Single!65 lt!5207)))))

(assert (=> d!15335 (= (level!54 lt!5207) lt!5226)))

(declare-fun b!29254 () Bool)

(assert (=> b!29254 (= e!14936 0)))

(assert (= (and d!15335 c!6400) b!29254))

(assert (= (and d!15335 (not c!6400)) b!29255))

(declare-fun m!31085 () Bool)

(assert (=> b!29255 m!31085))

(declare-fun m!31087 () Bool)

(assert (=> b!29255 m!31087))

(assert (=> b!29200 d!15335))

(assert (=> b!29208 d!15321))

(declare-fun b!29259 () Bool)

(declare-fun e!14937 () Bool)

(assert (=> b!29259 (= e!14937 (balanced!61 (right!713 (left!710 xs!533))))))

(declare-fun b!29256 () Bool)

(declare-fun e!14938 () Bool)

(assert (=> b!29256 (= e!14938 e!14937)))

(declare-fun res!13441 () Bool)

(assert (=> b!29256 (=> (not res!13441) (not e!14937))))

(assert (=> b!29256 (= res!13441 (>= (- (level!54 (left!710 (left!710 xs!533))) (level!54 (right!713 (left!710 xs!533)))) (- 1)))))

(declare-fun d!15337 () Bool)

(declare-fun res!13440 () Bool)

(assert (=> d!15337 (=> res!13440 e!14938)))

(assert (=> d!15337 (= res!13440 (not (is-CC!65 (left!710 xs!533))))))

(assert (=> d!15337 (= (balanced!61 (left!710 xs!533)) e!14938)))

(declare-fun b!29258 () Bool)

(declare-fun res!13439 () Bool)

(assert (=> b!29258 (=> (not res!13439) (not e!14937))))

(assert (=> b!29258 (= res!13439 (balanced!61 (left!710 (left!710 xs!533))))))

(declare-fun b!29257 () Bool)

(declare-fun res!13442 () Bool)

(assert (=> b!29257 (=> (not res!13442) (not e!14937))))

(assert (=> b!29257 (= res!13442 (<= (- (level!54 (left!710 (left!710 xs!533))) (level!54 (right!713 (left!710 xs!533)))) 1))))

(assert (= (and d!15337 (not res!13440)) b!29256))

(assert (= (and b!29256 res!13441) b!29257))

(assert (= (and b!29257 res!13442) b!29258))

(assert (= (and b!29258 res!13439) b!29259))

(declare-fun m!31089 () Bool)

(assert (=> b!29259 m!31089))

(declare-fun m!31091 () Bool)

(assert (=> b!29256 m!31091))

(declare-fun m!31093 () Bool)

(assert (=> b!29256 m!31093))

(declare-fun m!31095 () Bool)

(assert (=> b!29258 m!31095))

(assert (=> b!29257 m!31091))

(assert (=> b!29257 m!31093))

(assert (=> b!29222 d!15337))

(assert (=> b!29228 d!15325))

(assert (=> b!29228 d!15323))

(declare-fun lt!5231 () Bool)

(declare-fun b!29260 () Bool)

(declare-fun e!14942 () Int)

(assert (=> b!29260 (= e!14942 (level!54 (ite lt!5231 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533) (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77))))))))))

(declare-fun b!29261 () Bool)

(declare-fun e!14939 () Int)

(declare-fun lt!5232 () Conc!66)

(assert (=> b!29261 (= e!14939 (level!54 lt!5232))))

(declare-fun b!29262 () Bool)

(declare-fun res!13455 () Int)

(assert (=> b!29262 (= e!14942 res!13455)))

(assert (=> b!29262 true))

(assert (=> b!29262 true))

(declare-fun b!29263 () Bool)

(declare-fun res!13444 () Int)

(assert (=> b!29263 (= e!14939 res!13444)))

(assert (=> b!29263 true))

(declare-fun b!29264 () Bool)

(declare-fun res!13452 () Bool)

(declare-fun e!14943 () Bool)

(assert (=> b!29264 (=> (not res!13452) (not e!14943))))

(assert (=> b!29264 (= res!13452 (concInv!60 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(declare-fun b!29265 () Bool)

(declare-fun res!13453 () Bool)

(assert (=> b!29265 (=> (not res!13453) (not e!14943))))

(assert (=> b!29265 (= res!13453 (balanced!61 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(declare-fun b!29266 () Bool)

(declare-fun e!14944 () Conc!66)

(declare-fun res!13450 () Conc!66)

(assert (=> b!29266 (= e!14944 res!13450)))

(assert (=> b!29266 true))

(declare-fun e!14941 () Bool)

(assert (=> b!29266 e!14941))

(declare-fun lt!5230 () Int)

(declare-fun b!29267 () Bool)

(declare-fun lt!5239 () Int)

(declare-fun lt!5228 () Bool)

(assert (=> b!29267 (= e!14944 (concatNonEmpty!17 (ite lt!5228 (ite (>= lt!5230 lt!5239) (right!713 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) (right!713 (right!713 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)))) (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) (ite lt!5228 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77))))) (ite (>= lt!5230 lt!5239) (left!710 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))) (left!710 (left!710 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))))))

(declare-fun b!29268 () Bool)

(declare-fun tp!6211 () Bool)

(declare-fun tp!6210 () Bool)

(assert (=> b!29268 (= e!14941 (and tp!6211 tp!6210))))

(declare-fun e!14946 () Bool)

(declare-fun b!29269 () Bool)

(assert (=> b!29269 (= e!14946 (balanced!61 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)))))

(declare-fun b!29270 () Bool)

(declare-fun res!13448 () Bool)

(declare-fun e!14947 () Bool)

(assert (=> b!29270 (=> (not res!13448) (not e!14947))))

(declare-fun lt!5236 () Conc!66)

(assert (=> b!29270 (= res!13448 (balanced!61 lt!5236))))

(declare-fun b!29271 () Bool)

(assert (=> b!29271 (= e!14943 (not (isEmpty!322 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77))))))))))

(declare-fun b!29272 () Bool)

(declare-fun lt!5240 () Int)

(declare-fun lt!5237 () Int)

(declare-fun lt!5229 () Bool)

(declare-fun e!14945 () Conc!66)

(assert (=> b!29272 (= e!14945 (ite lt!5229 (let ((res!13362 lt!5232)) (ite (>= lt!5230 lt!5239) (CC!65 (left!710 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) res!13362) (ite (= lt!5240 (- lt!5237 3)) (CC!65 (left!710 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) (CC!65 (left!710 (right!713 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533))) res!13362)) (CC!65 (CC!65 (left!710 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) (left!710 (right!713 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)))) res!13362)))) (let ((res!13365 lt!5232)) (ite (>= lt!5230 lt!5239) (CC!65 res!13365 (right!713 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77))))))) (ite (= lt!5240 (- lt!5237 3)) (CC!65 (CC!65 res!13365 (right!713 (left!710 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))) (right!713 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77))))))) (CC!65 res!13365 (CC!65 (right!713 (left!710 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77))))))) (right!713 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))))))))

(assert (=> b!29272 (= lt!5237 e!14942)))

(declare-fun c!6404 () Bool)

(assert (=> b!29272 (= c!6404 (or lt!5231 (and (not lt!5229) (not (>= lt!5230 lt!5239)))))))

(assert (=> b!29272 (= lt!5231 (and lt!5229 (not (>= lt!5230 lt!5239))))))

(assert (=> b!29272 (= lt!5240 e!14939)))

(declare-fun c!6403 () Bool)

(assert (=> b!29272 (= c!6403 (or (and lt!5229 (not (>= lt!5230 lt!5239))) (and (not lt!5229) (not (>= lt!5230 lt!5239)))))))

(assert (=> b!29272 (= lt!5232 e!14944)))

(declare-fun c!6401 () Bool)

(assert (=> b!29272 (= c!6401 (or lt!5228 (not lt!5229)))))

(assert (=> b!29272 (= lt!5228 lt!5229)))

(assert (=> b!29272 (= lt!5239 (level!54 (ite lt!5229 (right!713 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) (left!710 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))))

(assert (=> b!29272 (= lt!5230 (level!54 (ite lt!5229 (left!710 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)) (right!713 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))))

(declare-fun lt!5235 () Int)

(assert (=> b!29272 (= lt!5229 (< lt!5235 (- 1)))))

(declare-fun b!29273 () Bool)

(declare-fun res!13447 () Bool)

(assert (=> b!29273 (=> (not res!13447) (not e!14943))))

(assert (=> b!29273 (= res!13447 (not (isEmpty!322 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533))))))

(declare-fun b!29274 () Bool)

(declare-fun res!13454 () Bool)

(assert (=> b!29274 (=> (not res!13454) (not e!14947))))

(assert (=> b!29274 (= res!13454 (concInv!60 lt!5236))))

(declare-fun b!29275 () Bool)

(declare-fun res!13449 () Bool)

(assert (=> b!29275 (=> (not res!13449) (not e!14947))))

(assert (=> b!29275 (= res!13449 (appendAssocInst!14 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533) (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(declare-fun b!29276 () Bool)

(assert (=> b!29276 (= e!14947 (concatCorrectness!14 lt!5236 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533) (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(declare-fun d!15339 () Bool)

(declare-fun e!14940 () Bool)

(assert (=> d!15339 e!14940))

(declare-fun res!13451 () Bool)

(assert (=> d!15339 (=> (not res!13451) (not e!14940))))

(assert (=> d!15339 (= res!13451 (is-CC!65 lt!5236))))

(assert (=> d!15339 (= lt!5236 e!14945)))

(declare-fun c!6402 () Bool)

(assert (=> d!15339 (= c!6402 (and (>= lt!5235 (- 1)) (<= lt!5235 1)))))

(assert (=> d!15339 (= lt!5235 (- (level!54 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))) (level!54 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533))))))

(assert (=> d!15339 e!14943))

(declare-fun res!13456 () Bool)

(assert (=> d!15339 (=> (not res!13456) (not e!14943))))

(assert (=> d!15339 (= res!13456 e!14946)))

(declare-fun res!13446 () Bool)

(assert (=> d!15339 (=> (not res!13446) (not e!14946))))

(assert (=> d!15339 (= res!13446 (concInv!60 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)))))

(assert (=> d!15339 (= (concatNonEmpty!17 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533) (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))) lt!5236)))

(declare-fun b!29277 () Bool)

(assert (=> b!29277 (= e!14945 (CC!65 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533) (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(declare-fun b!29278 () Bool)

(declare-fun res!13445 () Bool)

(assert (=> b!29278 (=> (not res!13445) (not e!14947))))

(declare-fun lt!5241 () Int)

(declare-fun lt!5234 () Int)

(declare-fun lt!5227 () Int)

(assert (=> b!29278 (= res!13445 (>= lt!5234 (ite (>= lt!5241 lt!5227) lt!5241 lt!5227)))))

(assert (=> b!29278 (= lt!5227 (level!54 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(assert (=> b!29278 (= lt!5241 (level!54 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)))))

(assert (=> b!29278 (= lt!5234 (level!54 lt!5236))))

(declare-fun b!29279 () Bool)

(assert (=> b!29279 (= e!14940 e!14947)))

(declare-fun res!13443 () Bool)

(assert (=> b!29279 (=> (not res!13443) (not e!14947))))

(declare-fun lt!5238 () Int)

(declare-fun lt!5242 () Int)

(declare-fun lt!5233 () Int)

(assert (=> b!29279 (= res!13443 (<= lt!5233 (+ (ite (>= lt!5238 lt!5242) lt!5238 lt!5242) 1)))))

(assert (=> b!29279 (= lt!5242 (level!54 (ite lt!5203 (left!710 ys!77) (ite (>= lt!5205 lt!5214) (left!710 (left!710 ys!77)) (left!710 (left!710 (left!710 ys!77)))))))))

(assert (=> b!29279 (= lt!5238 (level!54 (ite lt!5203 (ite (>= lt!5205 lt!5214) (right!713 xs!533) (right!713 (right!713 xs!533))) xs!533)))))

(assert (=> b!29279 (= lt!5233 (level!54 lt!5236))))

(declare-fun b!29280 () Bool)

(assert (=> b!29280 (= e!14941 tp_is_empty!177)))

(assert (= (and d!15339 res!13446) b!29269))

(assert (= (and d!15339 res!13456) b!29264))

(assert (= (and b!29264 res!13452) b!29265))

(assert (= (and b!29265 res!13453) b!29273))

(assert (= (and b!29273 res!13447) b!29271))

(assert (= (and b!29266 (is-CC!65 res!13450)) b!29268))

(assert (= (and b!29266 (is-Single!65 res!13450)) b!29280))

(assert (= (and b!29272 c!6401) b!29267))

(assert (= (and b!29272 (not c!6401)) b!29266))

(assert (= (and b!29272 c!6403) b!29261))

(assert (= (and b!29272 (not c!6403)) b!29263))

(assert (= (and b!29272 c!6404) b!29260))

(assert (= (and b!29272 (not c!6404)) b!29262))

(assert (= (and d!15339 c!6402) b!29277))

(assert (= (and d!15339 (not c!6402)) b!29272))

(assert (= (and d!15339 res!13451) b!29279))

(assert (= (and b!29279 res!13443) b!29278))

(assert (= (and b!29278 res!13445) b!29274))

(assert (= (and b!29274 res!13454) b!29270))

(assert (= (and b!29270 res!13448) b!29275))

(assert (= (and b!29275 res!13449) b!29276))

(declare-fun m!31097 () Bool)

(assert (=> d!15339 m!31097))

(declare-fun m!31099 () Bool)

(assert (=> d!15339 m!31099))

(declare-fun m!31101 () Bool)

(assert (=> d!15339 m!31101))

(declare-fun m!31103 () Bool)

(assert (=> b!29269 m!31103))

(assert (=> b!29279 m!31097))

(assert (=> b!29279 m!31099))

(declare-fun m!31105 () Bool)

(assert (=> b!29279 m!31105))

(declare-fun m!31107 () Bool)

(assert (=> b!29265 m!31107))

(declare-fun m!31109 () Bool)

(assert (=> b!29272 m!31109))

(declare-fun m!31111 () Bool)

(assert (=> b!29272 m!31111))

(declare-fun m!31113 () Bool)

(assert (=> b!29260 m!31113))

(assert (=> b!29278 m!31097))

(assert (=> b!29278 m!31099))

(assert (=> b!29278 m!31105))

(declare-fun m!31115 () Bool)

(assert (=> b!29267 m!31115))

(declare-fun m!31117 () Bool)

(assert (=> b!29261 m!31117))

(declare-fun m!31119 () Bool)

(assert (=> b!29275 m!31119))

(declare-fun m!31121 () Bool)

(assert (=> b!29270 m!31121))

(declare-fun m!31123 () Bool)

(assert (=> b!29271 m!31123))

(declare-fun m!31125 () Bool)

(assert (=> b!29276 m!31125))

(declare-fun m!31127 () Bool)

(assert (=> b!29274 m!31127))

(declare-fun m!31129 () Bool)

(assert (=> b!29273 m!31129))

(declare-fun m!31131 () Bool)

(assert (=> b!29264 m!31131))

(assert (=> b!29206 d!15339))

(declare-fun d!15341 () Bool)

(assert (=> d!15341 (= (isEmpty!322 (left!710 xs!533)) (= (left!710 xs!533) Empty!76))))

(assert (=> b!29153 d!15341))

(declare-fun b!29283 () Bool)

(declare-fun res!13458 () Bool)

(declare-fun e!14948 () Bool)

(assert (=> b!29283 (=> (not res!13458) (not e!14948))))

(assert (=> b!29283 (= res!13458 (concInv!60 (left!710 (left!710 xs!533))))))

(declare-fun b!29281 () Bool)

(declare-fun e!14949 () Bool)

(assert (=> b!29281 (= e!14949 e!14948)))

(declare-fun res!13459 () Bool)

(assert (=> b!29281 (=> (not res!13459) (not e!14948))))

(assert (=> b!29281 (= res!13459 (not (isEmpty!322 (left!710 (left!710 xs!533)))))))

(declare-fun d!15343 () Bool)

(declare-fun res!13460 () Bool)

(assert (=> d!15343 (=> res!13460 e!14949)))

(assert (=> d!15343 (= res!13460 (not (is-CC!65 (left!710 xs!533))))))

(assert (=> d!15343 (= (concInv!60 (left!710 xs!533)) e!14949)))

(declare-fun b!29282 () Bool)

(declare-fun res!13457 () Bool)

(assert (=> b!29282 (=> (not res!13457) (not e!14948))))

(assert (=> b!29282 (= res!13457 (not (isEmpty!322 (right!713 (left!710 xs!533)))))))

(declare-fun b!29284 () Bool)

(assert (=> b!29284 (= e!14948 (concInv!60 (right!713 (left!710 xs!533))))))

(assert (= (and d!15343 (not res!13460)) b!29281))

(assert (= (and b!29281 res!13459) b!29282))

(assert (= (and b!29282 res!13457) b!29283))

(assert (= (and b!29283 res!13458) b!29284))

(declare-fun m!31133 () Bool)

(assert (=> b!29283 m!31133))

(declare-fun m!31135 () Bool)

(assert (=> b!29281 m!31135))

(declare-fun m!31137 () Bool)

(assert (=> b!29282 m!31137))

(declare-fun m!31139 () Bool)

(assert (=> b!29284 m!31139))

(assert (=> b!29155 d!15343))

(declare-fun b!29295 () Bool)

(declare-fun e!14955 () List!362)

(assert (=> b!29295 (= e!14955 (Cons!356 (x!8945 (left!710 (left!710 ys!77))) Nil!357))))

(declare-fun b!29296 () Bool)

(assert (=> b!29296 (= e!14955 (++!42 (toList!117 (left!710 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 (left!710 ys!77))))))))

(declare-fun d!15345 () Bool)

(declare-fun lt!5245 () List!362)

(declare-fun size!273 (List!362) Int)

(declare-fun size!274 (Conc!66) Int)

(assert (=> d!15345 (= (size!273 lt!5245) (size!274 (left!710 (left!710 ys!77))))))

(declare-fun e!14954 () List!362)

(assert (=> d!15345 (= lt!5245 e!14954)))

(declare-fun c!6409 () Bool)

(assert (=> d!15345 (= c!6409 (is-Empty!76 (left!710 (left!710 ys!77))))))

(assert (=> d!15345 (= (toList!117 (left!710 (left!710 ys!77))) lt!5245)))

(declare-fun b!29294 () Bool)

(assert (=> b!29294 (= e!14954 e!14955)))

(declare-fun c!6410 () Bool)

(assert (=> b!29294 (= c!6410 (is-Single!65 (left!710 (left!710 ys!77))))))

(declare-fun b!29293 () Bool)

(assert (=> b!29293 (= e!14954 Nil!357)))

(assert (= (and b!29294 c!6410) b!29295))

(assert (= (and b!29294 (not c!6410)) b!29296))

(assert (= (and d!15345 c!6409) b!29293))

(assert (= (and d!15345 (not c!6409)) b!29294))

(declare-fun m!31141 () Bool)

(assert (=> b!29296 m!31141))

(declare-fun m!31143 () Bool)

(assert (=> b!29296 m!31143))

(assert (=> b!29296 m!31141))

(assert (=> b!29296 m!31143))

(declare-fun m!31145 () Bool)

(assert (=> b!29296 m!31145))

(declare-fun m!31147 () Bool)

(assert (=> d!15345 m!31147))

(declare-fun m!31149 () Bool)

(assert (=> d!15345 m!31149))

(assert (=> b!29118 d!15345))

(declare-fun b!29299 () Bool)

(declare-fun e!14957 () List!362)

(assert (=> b!29299 (= e!14957 (Cons!356 (x!8945 (right!713 ys!77)) Nil!357))))

(declare-fun b!29300 () Bool)

(assert (=> b!29300 (= e!14957 (++!42 (toList!117 (left!710 (right!713 ys!77))) (toList!117 (right!713 (right!713 ys!77)))))))

(declare-fun d!15347 () Bool)

(declare-fun lt!5246 () List!362)

(assert (=> d!15347 (= (size!273 lt!5246) (size!274 (right!713 ys!77)))))

(declare-fun e!14956 () List!362)

(assert (=> d!15347 (= lt!5246 e!14956)))

(declare-fun c!6411 () Bool)

(assert (=> d!15347 (= c!6411 (is-Empty!76 (right!713 ys!77)))))

(assert (=> d!15347 (= (toList!117 (right!713 ys!77)) lt!5246)))

(declare-fun b!29298 () Bool)

(assert (=> b!29298 (= e!14956 e!14957)))

(declare-fun c!6412 () Bool)

(assert (=> b!29298 (= c!6412 (is-Single!65 (right!713 ys!77)))))

(declare-fun b!29297 () Bool)

(assert (=> b!29297 (= e!14956 Nil!357)))

(assert (= (and b!29298 c!6412) b!29299))

(assert (= (and b!29298 (not c!6412)) b!29300))

(assert (= (and d!15347 c!6411) b!29297))

(assert (= (and d!15347 (not c!6411)) b!29298))

(declare-fun m!31151 () Bool)

(assert (=> b!29300 m!31151))

(declare-fun m!31153 () Bool)

(assert (=> b!29300 m!31153))

(assert (=> b!29300 m!31151))

(assert (=> b!29300 m!31153))

(declare-fun m!31155 () Bool)

(assert (=> b!29300 m!31155))

(declare-fun m!31157 () Bool)

(assert (=> d!15347 m!31157))

(declare-fun m!31159 () Bool)

(assert (=> d!15347 m!31159))

(assert (=> b!29118 d!15347))

(declare-fun b!29303 () Bool)

(declare-fun e!14959 () List!362)

(assert (=> b!29303 (= e!14959 (Cons!356 (x!8945 (right!713 (left!710 ys!77))) Nil!357))))

(declare-fun b!29304 () Bool)

(assert (=> b!29304 (= e!14959 (++!42 (toList!117 (left!710 (right!713 (left!710 ys!77)))) (toList!117 (right!713 (right!713 (left!710 ys!77))))))))

(declare-fun d!15349 () Bool)

(declare-fun lt!5247 () List!362)

(assert (=> d!15349 (= (size!273 lt!5247) (size!274 (right!713 (left!710 ys!77))))))

(declare-fun e!14958 () List!362)

(assert (=> d!15349 (= lt!5247 e!14958)))

(declare-fun c!6413 () Bool)

(assert (=> d!15349 (= c!6413 (is-Empty!76 (right!713 (left!710 ys!77))))))

(assert (=> d!15349 (= (toList!117 (right!713 (left!710 ys!77))) lt!5247)))

(declare-fun b!29302 () Bool)

(assert (=> b!29302 (= e!14958 e!14959)))

(declare-fun c!6414 () Bool)

(assert (=> b!29302 (= c!6414 (is-Single!65 (right!713 (left!710 ys!77))))))

(declare-fun b!29301 () Bool)

(assert (=> b!29301 (= e!14958 Nil!357)))

(assert (= (and b!29302 c!6414) b!29303))

(assert (= (and b!29302 (not c!6414)) b!29304))

(assert (= (and d!15349 c!6413) b!29301))

(assert (= (and d!15349 (not c!6413)) b!29302))

(declare-fun m!31161 () Bool)

(assert (=> b!29304 m!31161))

(declare-fun m!31163 () Bool)

(assert (=> b!29304 m!31163))

(assert (=> b!29304 m!31161))

(assert (=> b!29304 m!31163))

(declare-fun m!31165 () Bool)

(assert (=> b!29304 m!31165))

(declare-fun m!31167 () Bool)

(assert (=> d!15349 m!31167))

(declare-fun m!31169 () Bool)

(assert (=> d!15349 m!31169))

(assert (=> b!29118 d!15349))

(declare-fun b!29307 () Bool)

(declare-fun e!14961 () List!362)

(assert (=> b!29307 (= e!14961 (Cons!356 (x!8945 xs!533) Nil!357))))

(declare-fun b!29308 () Bool)

(assert (=> b!29308 (= e!14961 (++!42 (toList!117 (left!710 xs!533)) (toList!117 (right!713 xs!533))))))

(declare-fun d!15351 () Bool)

(declare-fun lt!5248 () List!362)

(assert (=> d!15351 (= (size!273 lt!5248) (size!274 xs!533))))

(declare-fun e!14960 () List!362)

(assert (=> d!15351 (= lt!5248 e!14960)))

(declare-fun c!6415 () Bool)

(assert (=> d!15351 (= c!6415 (is-Empty!76 xs!533))))

(assert (=> d!15351 (= (toList!117 xs!533) lt!5248)))

(declare-fun b!29306 () Bool)

(assert (=> b!29306 (= e!14960 e!14961)))

(declare-fun c!6416 () Bool)

(assert (=> b!29306 (= c!6416 (is-Single!65 xs!533))))

(declare-fun b!29305 () Bool)

(assert (=> b!29305 (= e!14960 Nil!357)))

(assert (= (and b!29306 c!6416) b!29307))

(assert (= (and b!29306 (not c!6416)) b!29308))

(assert (= (and d!15351 c!6415) b!29305))

(assert (= (and d!15351 (not c!6415)) b!29306))

(assert (=> b!29308 m!30985))

(assert (=> b!29308 m!30987))

(assert (=> b!29308 m!30985))

(assert (=> b!29308 m!30987))

(declare-fun m!31171 () Bool)

(assert (=> b!29308 m!31171))

(declare-fun m!31173 () Bool)

(assert (=> d!15351 m!31173))

(declare-fun m!31175 () Bool)

(assert (=> d!15351 m!31175))

(assert (=> b!29118 d!15351))

(declare-fun b!29318 () Bool)

(declare-fun e!14966 () List!362)

(assert (=> b!29318 (= e!14966 (Cons!356 (h!273 (toList!117 xs!533)) (++!42 (t!4376 (toList!117 xs!533)) (toList!117 (left!710 (left!710 ys!77))))))))

(declare-fun b!29317 () Bool)

(assert (=> b!29317 (= e!14966 (toList!117 (left!710 (left!710 ys!77))))))

(declare-fun d!15353 () Bool)

(declare-fun e!14967 () Bool)

(assert (=> d!15353 e!14967))

(declare-fun res!13467 () Bool)

(assert (=> d!15353 (=> (not res!13467) (not e!14967))))

(declare-fun lt!5251 () List!362)

(declare-fun content!72 (List!362) (Set T!1833))

(assert (=> d!15353 (= res!13467 (= (content!72 lt!5251) (union (content!72 (toList!117 xs!533)) (content!72 (toList!117 (left!710 (left!710 ys!77)))))))))

(assert (=> d!15353 (= lt!5251 e!14966)))

(declare-fun c!6419 () Bool)

(assert (=> d!15353 (= c!6419 (is-Nil!357 (toList!117 xs!533)))))

(assert (=> d!15353 (= (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) lt!5251)))

(declare-fun b!29320 () Bool)

(assert (=> b!29320 (= e!14967 (or (not (= (toList!117 (left!710 (left!710 ys!77))) Nil!357)) (= lt!5251 (toList!117 xs!533))))))

(declare-fun b!29319 () Bool)

(declare-fun res!13468 () Bool)

(assert (=> b!29319 (=> (not res!13468) (not e!14967))))

(assert (=> b!29319 (= res!13468 (= (size!273 lt!5251) (+ (size!273 (toList!117 xs!533)) (size!273 (toList!117 (left!710 (left!710 ys!77)))))))))

(assert (= (and d!15353 c!6419) b!29317))

(assert (= (and d!15353 (not c!6419)) b!29318))

(assert (= (and d!15353 res!13467) b!29319))

(assert (= (and b!29319 res!13468) b!29320))

(assert (=> b!29318 m!30975))

(declare-fun m!31177 () Bool)

(assert (=> b!29318 m!31177))

(declare-fun m!31179 () Bool)

(assert (=> d!15353 m!31179))

(assert (=> d!15353 m!30973))

(declare-fun m!31181 () Bool)

(assert (=> d!15353 m!31181))

(assert (=> d!15353 m!30975))

(declare-fun m!31183 () Bool)

(assert (=> d!15353 m!31183))

(declare-fun m!31185 () Bool)

(assert (=> b!29319 m!31185))

(assert (=> b!29319 m!30973))

(declare-fun m!31187 () Bool)

(assert (=> b!29319 m!31187))

(assert (=> b!29319 m!30975))

(declare-fun m!31189 () Bool)

(assert (=> b!29319 m!31189))

(assert (=> b!29118 d!15353))

(declare-fun b!29325 () Bool)

(declare-fun e!14970 () Bool)

(assert (=> b!29325 (= e!14970 (= (++!42 (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77)))) (toList!117 (right!713 ys!77))) (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (++!42 (toList!117 (right!713 (left!710 ys!77))) (toList!117 (right!713 ys!77))))))))

(declare-fun lt!5254 () Bool)

(assert (=> b!29325 (= lt!5254 (appendAssoc!10 (t!4376 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77))))) (toList!117 (right!713 (left!710 ys!77))) (toList!117 (right!713 ys!77))))))

(declare-fun d!15355 () Bool)

(assert (=> d!15355 e!14970))

(declare-fun c!6422 () Bool)

(assert (=> d!15355 (= c!6422 (is-Cons!356 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77))))))))

(assert (=> d!15355 (= (appendAssoc!10 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77))) (toList!117 (right!713 ys!77))) true)))

(declare-fun b!29326 () Bool)

(assert (=> b!29326 (= e!14970 (= (++!42 (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77)))) (toList!117 (right!713 ys!77))) (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (++!42 (toList!117 (right!713 (left!710 ys!77))) (toList!117 (right!713 ys!77))))))))

(assert (= (and d!15355 c!6422) b!29325))

(assert (= (and d!15355 (not c!6422)) b!29326))

(assert (=> b!29325 m!30977))

(declare-fun m!31191 () Bool)

(assert (=> b!29325 m!31191))

(declare-fun m!31193 () Bool)

(assert (=> b!29325 m!31193))

(assert (=> b!29325 m!30977))

(assert (=> b!29325 m!30979))

(declare-fun m!31195 () Bool)

(assert (=> b!29325 m!31195))

(assert (=> b!29325 m!31195))

(assert (=> b!29325 m!30981))

(declare-fun m!31197 () Bool)

(assert (=> b!29325 m!31197))

(assert (=> b!29325 m!30979))

(assert (=> b!29325 m!30981))

(declare-fun m!31199 () Bool)

(assert (=> b!29325 m!31199))

(assert (=> b!29325 m!30979))

(assert (=> b!29325 m!30981))

(assert (=> b!29325 m!31191))

(assert (=> b!29326 m!30977))

(assert (=> b!29326 m!30979))

(assert (=> b!29326 m!31195))

(assert (=> b!29326 m!31195))

(assert (=> b!29326 m!30981))

(assert (=> b!29326 m!31197))

(assert (=> b!29326 m!30979))

(assert (=> b!29326 m!30981))

(assert (=> b!29326 m!31191))

(assert (=> b!29326 m!30977))

(assert (=> b!29326 m!31191))

(assert (=> b!29326 m!31193))

(assert (=> b!29118 d!15355))

(declare-fun b!29328 () Bool)

(declare-fun e!14971 () Int)

(declare-fun lt!5255 () Int)

(declare-fun lt!5256 () Int)

(assert (=> b!29328 (= e!14971 (+ 1 (ite (>= lt!5255 lt!5256) lt!5255 lt!5256)))))

(assert (=> b!29328 (= lt!5256 (level!54 (right!713 (ite lt!5204 (right!713 xs!533) (left!710 (left!710 ys!77))))))))

(assert (=> b!29328 (= lt!5255 (level!54 (left!710 (ite lt!5204 (right!713 xs!533) (left!710 (left!710 ys!77))))))))

(declare-fun d!15357 () Bool)

(declare-fun lt!5257 () Int)

(assert (=> d!15357 (>= lt!5257 0)))

(assert (=> d!15357 (= lt!5257 e!14971)))

(declare-fun c!6423 () Bool)

(assert (=> d!15357 (= c!6423 (or (is-Empty!76 (ite lt!5204 (right!713 xs!533) (left!710 (left!710 ys!77)))) (is-Single!65 (ite lt!5204 (right!713 xs!533) (left!710 (left!710 ys!77))))))))

(assert (=> d!15357 (= (level!54 (ite lt!5204 (right!713 xs!533) (left!710 (left!710 ys!77)))) lt!5257)))

(declare-fun b!29327 () Bool)

(assert (=> b!29327 (= e!14971 0)))

(assert (= (and d!15357 c!6423) b!29327))

(assert (= (and d!15357 (not c!6423)) b!29328))

(declare-fun m!31201 () Bool)

(assert (=> b!29328 m!31201))

(declare-fun m!31203 () Bool)

(assert (=> b!29328 m!31203))

(assert (=> b!29211 d!15357))

(declare-fun b!29330 () Bool)

(declare-fun e!14972 () Int)

(declare-fun lt!5258 () Int)

(declare-fun lt!5259 () Int)

(assert (=> b!29330 (= e!14972 (+ 1 (ite (>= lt!5258 lt!5259) lt!5258 lt!5259)))))

(assert (=> b!29330 (= lt!5259 (level!54 (right!713 (ite lt!5204 (left!710 xs!533) (right!713 (left!710 ys!77))))))))

(assert (=> b!29330 (= lt!5258 (level!54 (left!710 (ite lt!5204 (left!710 xs!533) (right!713 (left!710 ys!77))))))))

(declare-fun d!15359 () Bool)

(declare-fun lt!5260 () Int)

(assert (=> d!15359 (>= lt!5260 0)))

(assert (=> d!15359 (= lt!5260 e!14972)))

(declare-fun c!6424 () Bool)

(assert (=> d!15359 (= c!6424 (or (is-Empty!76 (ite lt!5204 (left!710 xs!533) (right!713 (left!710 ys!77)))) (is-Single!65 (ite lt!5204 (left!710 xs!533) (right!713 (left!710 ys!77))))))))

(assert (=> d!15359 (= (level!54 (ite lt!5204 (left!710 xs!533) (right!713 (left!710 ys!77)))) lt!5260)))

(declare-fun b!29329 () Bool)

(assert (=> b!29329 (= e!14972 0)))

(assert (= (and d!15359 c!6424) b!29329))

(assert (= (and d!15359 (not c!6424)) b!29330))

(declare-fun m!31205 () Bool)

(assert (=> b!29330 m!31205))

(declare-fun m!31207 () Bool)

(assert (=> b!29330 m!31207))

(assert (=> b!29211 d!15359))

(declare-fun b!29332 () Bool)

(declare-fun e!14973 () Int)

(declare-fun lt!5261 () Int)

(declare-fun lt!5262 () Int)

(assert (=> b!29332 (= e!14973 (+ 1 (ite (>= lt!5261 lt!5262) lt!5261 lt!5262)))))

(assert (=> b!29332 (= lt!5262 (level!54 (right!713 (right!713 (right!713 ys!77)))))))

(assert (=> b!29332 (= lt!5261 (level!54 (left!710 (right!713 (right!713 ys!77)))))))

(declare-fun d!15361 () Bool)

(declare-fun lt!5263 () Int)

(assert (=> d!15361 (>= lt!5263 0)))

(assert (=> d!15361 (= lt!5263 e!14973)))

(declare-fun c!6425 () Bool)

(assert (=> d!15361 (= c!6425 (or (is-Empty!76 (right!713 (right!713 ys!77))) (is-Single!65 (right!713 (right!713 ys!77)))))))

(assert (=> d!15361 (= (level!54 (right!713 (right!713 ys!77))) lt!5263)))

(declare-fun b!29331 () Bool)

(assert (=> b!29331 (= e!14973 0)))

(assert (= (and d!15361 c!6425) b!29331))

(assert (= (and d!15361 (not c!6425)) b!29332))

(declare-fun m!31209 () Bool)

(assert (=> b!29332 m!31209))

(declare-fun m!31211 () Bool)

(assert (=> b!29332 m!31211))

(assert (=> b!29225 d!15361))

(declare-fun b!29334 () Bool)

(declare-fun e!14974 () Int)

(declare-fun lt!5264 () Int)

(declare-fun lt!5265 () Int)

(assert (=> b!29334 (= e!14974 (+ 1 (ite (>= lt!5264 lt!5265) lt!5264 lt!5265)))))

(assert (=> b!29334 (= lt!5265 (level!54 (right!713 (left!710 (right!713 ys!77)))))))

(assert (=> b!29334 (= lt!5264 (level!54 (left!710 (left!710 (right!713 ys!77)))))))

(declare-fun d!15363 () Bool)

(declare-fun lt!5266 () Int)

(assert (=> d!15363 (>= lt!5266 0)))

(assert (=> d!15363 (= lt!5266 e!14974)))

(declare-fun c!6426 () Bool)

(assert (=> d!15363 (= c!6426 (or (is-Empty!76 (left!710 (right!713 ys!77))) (is-Single!65 (left!710 (right!713 ys!77)))))))

(assert (=> d!15363 (= (level!54 (left!710 (right!713 ys!77))) lt!5266)))

(declare-fun b!29333 () Bool)

(assert (=> b!29333 (= e!14974 0)))

(assert (= (and d!15363 c!6426) b!29333))

(assert (= (and d!15363 (not c!6426)) b!29334))

(declare-fun m!31213 () Bool)

(assert (=> b!29334 m!31213))

(declare-fun m!31215 () Bool)

(assert (=> b!29334 m!31215))

(assert (=> b!29225 d!15363))

(declare-fun b!29338 () Bool)

(declare-fun e!14975 () Bool)

(assert (=> b!29338 (= e!14975 (balanced!61 (right!713 (right!713 res!5539))))))

(declare-fun b!29335 () Bool)

(declare-fun e!14976 () Bool)

(assert (=> b!29335 (= e!14976 e!14975)))

(declare-fun res!13471 () Bool)

(assert (=> b!29335 (=> (not res!13471) (not e!14975))))

(assert (=> b!29335 (= res!13471 (>= (- (level!54 (left!710 (right!713 res!5539))) (level!54 (right!713 (right!713 res!5539)))) (- 1)))))

(declare-fun d!15365 () Bool)

(declare-fun res!13470 () Bool)

(assert (=> d!15365 (=> res!13470 e!14976)))

(assert (=> d!15365 (= res!13470 (not (is-CC!65 (right!713 res!5539))))))

(assert (=> d!15365 (= (balanced!61 (right!713 res!5539)) e!14976)))

(declare-fun b!29337 () Bool)

(declare-fun res!13469 () Bool)

(assert (=> b!29337 (=> (not res!13469) (not e!14975))))

(assert (=> b!29337 (= res!13469 (balanced!61 (left!710 (right!713 res!5539))))))

(declare-fun b!29336 () Bool)

(declare-fun res!13472 () Bool)

(assert (=> b!29336 (=> (not res!13472) (not e!14975))))

(assert (=> b!29336 (= res!13472 (<= (- (level!54 (left!710 (right!713 res!5539))) (level!54 (right!713 (right!713 res!5539)))) 1))))

(assert (= (and d!15365 (not res!13470)) b!29335))

(assert (= (and b!29335 res!13471) b!29336))

(assert (= (and b!29336 res!13472) b!29337))

(assert (= (and b!29337 res!13469) b!29338))

(declare-fun m!31217 () Bool)

(assert (=> b!29338 m!31217))

(declare-fun m!31219 () Bool)

(assert (=> b!29335 m!31219))

(declare-fun m!31221 () Bool)

(assert (=> b!29335 m!31221))

(declare-fun m!31223 () Bool)

(assert (=> b!29337 m!31223))

(assert (=> b!29336 m!31219))

(assert (=> b!29336 m!31221))

(assert (=> b!29152 d!15365))

(declare-fun b!29340 () Bool)

(declare-fun e!14977 () Int)

(declare-fun lt!5267 () Int)

(declare-fun lt!5268 () Int)

(assert (=> b!29340 (= e!14977 (+ 1 (ite (>= lt!5267 lt!5268) lt!5267 lt!5268)))))

(assert (=> b!29340 (= lt!5268 (level!54 (right!713 (left!710 res!5539))))))

(assert (=> b!29340 (= lt!5267 (level!54 (left!710 (left!710 res!5539))))))

(declare-fun d!15367 () Bool)

(declare-fun lt!5269 () Int)

(assert (=> d!15367 (>= lt!5269 0)))

(assert (=> d!15367 (= lt!5269 e!14977)))

(declare-fun c!6427 () Bool)

(assert (=> d!15367 (= c!6427 (or (is-Empty!76 (left!710 res!5539)) (is-Single!65 (left!710 res!5539))))))

(assert (=> d!15367 (= (level!54 (left!710 res!5539)) lt!5269)))

(declare-fun b!29339 () Bool)

(assert (=> b!29339 (= e!14977 0)))

(assert (= (and d!15367 c!6427) b!29339))

(assert (= (and d!15367 (not c!6427)) b!29340))

(declare-fun m!31225 () Bool)

(assert (=> b!29340 m!31225))

(declare-fun m!31227 () Bool)

(assert (=> b!29340 m!31227))

(assert (=> b!29150 d!15367))

(declare-fun b!29342 () Bool)

(declare-fun e!14978 () Int)

(declare-fun lt!5270 () Int)

(declare-fun lt!5271 () Int)

(assert (=> b!29342 (= e!14978 (+ 1 (ite (>= lt!5270 lt!5271) lt!5270 lt!5271)))))

(assert (=> b!29342 (= lt!5271 (level!54 (right!713 (right!713 res!5539))))))

(assert (=> b!29342 (= lt!5270 (level!54 (left!710 (right!713 res!5539))))))

(declare-fun d!15369 () Bool)

(declare-fun lt!5272 () Int)

(assert (=> d!15369 (>= lt!5272 0)))

(assert (=> d!15369 (= lt!5272 e!14978)))

(declare-fun c!6428 () Bool)

(assert (=> d!15369 (= c!6428 (or (is-Empty!76 (right!713 res!5539)) (is-Single!65 (right!713 res!5539))))))

(assert (=> d!15369 (= (level!54 (right!713 res!5539)) lt!5272)))

(declare-fun b!29341 () Bool)

(assert (=> b!29341 (= e!14978 0)))

(assert (= (and d!15369 c!6428) b!29341))

(assert (= (and d!15369 (not c!6428)) b!29342))

(assert (=> b!29342 m!31221))

(assert (=> b!29342 m!31219))

(assert (=> b!29150 d!15369))

(assert (=> b!29124 d!15323))

(assert (=> b!29124 d!15325))

(declare-fun b!29344 () Bool)

(declare-fun e!14979 () Int)

(declare-fun lt!5273 () Int)

(declare-fun lt!5274 () Int)

(assert (=> b!29344 (= e!14979 (+ 1 (ite (>= lt!5273 lt!5274) lt!5273 lt!5274)))))

(assert (=> b!29344 (= lt!5274 (level!54 (right!713 (ite lt!5206 xs!533 (left!710 ys!77)))))))

(assert (=> b!29344 (= lt!5273 (level!54 (left!710 (ite lt!5206 xs!533 (left!710 ys!77)))))))

(declare-fun d!15371 () Bool)

(declare-fun lt!5275 () Int)

(assert (=> d!15371 (>= lt!5275 0)))

(assert (=> d!15371 (= lt!5275 e!14979)))

(declare-fun c!6429 () Bool)

(assert (=> d!15371 (= c!6429 (or (is-Empty!76 (ite lt!5206 xs!533 (left!710 ys!77))) (is-Single!65 (ite lt!5206 xs!533 (left!710 ys!77)))))))

(assert (=> d!15371 (= (level!54 (ite lt!5206 xs!533 (left!710 ys!77))) lt!5275)))

(declare-fun b!29343 () Bool)

(assert (=> b!29343 (= e!14979 0)))

(assert (= (and d!15371 c!6429) b!29343))

(assert (= (and d!15371 (not c!6429)) b!29344))

(declare-fun m!31229 () Bool)

(assert (=> b!29344 m!31229))

(declare-fun m!31231 () Bool)

(assert (=> b!29344 m!31231))

(assert (=> b!29199 d!15371))

(declare-fun b!29346 () Bool)

(declare-fun e!14980 () List!362)

(assert (=> b!29346 (= e!14980 (Cons!356 (h!273 (toList!117 xs!533)) (++!42 (t!4376 (toList!117 xs!533)) (toList!117 ys!77))))))

(declare-fun b!29345 () Bool)

(assert (=> b!29345 (= e!14980 (toList!117 ys!77))))

(declare-fun d!15373 () Bool)

(declare-fun e!14981 () Bool)

(assert (=> d!15373 e!14981))

(declare-fun res!13473 () Bool)

(assert (=> d!15373 (=> (not res!13473) (not e!14981))))

(declare-fun lt!5276 () List!362)

(assert (=> d!15373 (= res!13473 (= (content!72 lt!5276) (union (content!72 (toList!117 xs!533)) (content!72 (toList!117 ys!77)))))))

(assert (=> d!15373 (= lt!5276 e!14980)))

(declare-fun c!6430 () Bool)

(assert (=> d!15373 (= c!6430 (is-Nil!357 (toList!117 xs!533)))))

(assert (=> d!15373 (= (++!42 (toList!117 xs!533) (toList!117 ys!77)) lt!5276)))

(declare-fun b!29348 () Bool)

(assert (=> b!29348 (= e!14981 (or (not (= (toList!117 ys!77) Nil!357)) (= lt!5276 (toList!117 xs!533))))))

(declare-fun b!29347 () Bool)

(declare-fun res!13474 () Bool)

(assert (=> b!29347 (=> (not res!13474) (not e!14981))))

(assert (=> b!29347 (= res!13474 (= (size!273 lt!5276) (+ (size!273 (toList!117 xs!533)) (size!273 (toList!117 ys!77)))))))

(assert (= (and d!15373 c!6430) b!29345))

(assert (= (and d!15373 (not c!6430)) b!29346))

(assert (= (and d!15373 res!13473) b!29347))

(assert (= (and b!29347 res!13474) b!29348))

(assert (=> b!29346 m!30989))

(declare-fun m!31233 () Bool)

(assert (=> b!29346 m!31233))

(declare-fun m!31235 () Bool)

(assert (=> d!15373 m!31235))

(assert (=> d!15373 m!30973))

(assert (=> d!15373 m!31181))

(assert (=> d!15373 m!30989))

(declare-fun m!31237 () Bool)

(assert (=> d!15373 m!31237))

(declare-fun m!31239 () Bool)

(assert (=> b!29347 m!31239))

(assert (=> b!29347 m!30973))

(assert (=> b!29347 m!31187))

(assert (=> b!29347 m!30989))

(declare-fun m!31241 () Bool)

(assert (=> b!29347 m!31241))

(assert (=> d!15313 d!15373))

(declare-fun b!29351 () Bool)

(declare-fun e!14983 () List!362)

(assert (=> b!29351 (= e!14983 (Cons!356 (x!8945 ys!77) Nil!357))))

(declare-fun b!29352 () Bool)

(assert (=> b!29352 (= e!14983 (++!42 (toList!117 (left!710 ys!77)) (toList!117 (right!713 ys!77))))))

(declare-fun d!15375 () Bool)

(declare-fun lt!5277 () List!362)

(assert (=> d!15375 (= (size!273 lt!5277) (size!274 ys!77))))

(declare-fun e!14982 () List!362)

(assert (=> d!15375 (= lt!5277 e!14982)))

(declare-fun c!6431 () Bool)

(assert (=> d!15375 (= c!6431 (is-Empty!76 ys!77))))

(assert (=> d!15375 (= (toList!117 ys!77) lt!5277)))

(declare-fun b!29350 () Bool)

(assert (=> b!29350 (= e!14982 e!14983)))

(declare-fun c!6432 () Bool)

(assert (=> b!29350 (= c!6432 (is-Single!65 ys!77))))

(declare-fun b!29349 () Bool)

(assert (=> b!29349 (= e!14982 Nil!357)))

(assert (= (and b!29350 c!6432) b!29351))

(assert (= (and b!29350 (not c!6432)) b!29352))

(assert (= (and d!15375 c!6431) b!29349))

(assert (= (and d!15375 (not c!6431)) b!29350))

(assert (=> b!29352 m!31005))

(assert (=> b!29352 m!30981))

(assert (=> b!29352 m!31005))

(assert (=> b!29352 m!30981))

(declare-fun m!31243 () Bool)

(assert (=> b!29352 m!31243))

(declare-fun m!31245 () Bool)

(assert (=> d!15375 m!31245))

(declare-fun m!31247 () Bool)

(assert (=> d!15375 m!31247))

(assert (=> d!15313 d!15375))

(assert (=> d!15313 d!15351))

(declare-fun b!29355 () Bool)

(declare-fun e!14985 () List!362)

(assert (=> b!29355 (= e!14985 (Cons!356 (x!8945 res!5539) Nil!357))))

(declare-fun b!29356 () Bool)

(assert (=> b!29356 (= e!14985 (++!42 (toList!117 (left!710 res!5539)) (toList!117 (right!713 res!5539))))))

(declare-fun d!15377 () Bool)

(declare-fun lt!5278 () List!362)

(assert (=> d!15377 (= (size!273 lt!5278) (size!274 res!5539))))

(declare-fun e!14984 () List!362)

(assert (=> d!15377 (= lt!5278 e!14984)))

(declare-fun c!6433 () Bool)

(assert (=> d!15377 (= c!6433 (is-Empty!76 res!5539))))

(assert (=> d!15377 (= (toList!117 res!5539) lt!5278)))

(declare-fun b!29354 () Bool)

(assert (=> b!29354 (= e!14984 e!14985)))

(declare-fun c!6434 () Bool)

(assert (=> b!29354 (= c!6434 (is-Single!65 res!5539))))

(declare-fun b!29353 () Bool)

(assert (=> b!29353 (= e!14984 Nil!357)))

(assert (= (and b!29354 c!6434) b!29355))

(assert (= (and b!29354 (not c!6434)) b!29356))

(assert (= (and d!15377 c!6433) b!29353))

(assert (= (and d!15377 (not c!6433)) b!29354))

(declare-fun m!31249 () Bool)

(assert (=> b!29356 m!31249))

(declare-fun m!31251 () Bool)

(assert (=> b!29356 m!31251))

(assert (=> b!29356 m!31249))

(assert (=> b!29356 m!31251))

(declare-fun m!31253 () Bool)

(assert (=> b!29356 m!31253))

(declare-fun m!31255 () Bool)

(assert (=> d!15377 m!31255))

(declare-fun m!31257 () Bool)

(assert (=> d!15377 m!31257))

(assert (=> d!15313 d!15377))

(declare-fun d!15379 () Bool)

(assert (=> d!15379 (= (isEmpty!322 (left!710 ys!77)) (= (left!710 ys!77) Empty!76))))

(assert (=> b!29210 d!15379))

(assert (=> b!29116 d!15375))

(declare-fun b!29359 () Bool)

(declare-fun e!14987 () List!362)

(assert (=> b!29359 (= e!14987 (Cons!356 (x!8945 (right!713 (right!713 xs!533))) Nil!357))))

(declare-fun b!29360 () Bool)

(assert (=> b!29360 (= e!14987 (++!42 (toList!117 (left!710 (right!713 (right!713 xs!533)))) (toList!117 (right!713 (right!713 (right!713 xs!533))))))))

(declare-fun d!15381 () Bool)

(declare-fun lt!5279 () List!362)

(assert (=> d!15381 (= (size!273 lt!5279) (size!274 (right!713 (right!713 xs!533))))))

(declare-fun e!14986 () List!362)

(assert (=> d!15381 (= lt!5279 e!14986)))

(declare-fun c!6435 () Bool)

(assert (=> d!15381 (= c!6435 (is-Empty!76 (right!713 (right!713 xs!533))))))

(assert (=> d!15381 (= (toList!117 (right!713 (right!713 xs!533))) lt!5279)))

(declare-fun b!29358 () Bool)

(assert (=> b!29358 (= e!14986 e!14987)))

(declare-fun c!6436 () Bool)

(assert (=> b!29358 (= c!6436 (is-Single!65 (right!713 (right!713 xs!533))))))

(declare-fun b!29357 () Bool)

(assert (=> b!29357 (= e!14986 Nil!357)))

(assert (= (and b!29358 c!6436) b!29359))

(assert (= (and b!29358 (not c!6436)) b!29360))

(assert (= (and d!15381 c!6435) b!29357))

(assert (= (and d!15381 (not c!6435)) b!29358))

(declare-fun m!31259 () Bool)

(assert (=> b!29360 m!31259))

(declare-fun m!31261 () Bool)

(assert (=> b!29360 m!31261))

(assert (=> b!29360 m!31259))

(assert (=> b!29360 m!31261))

(declare-fun m!31263 () Bool)

(assert (=> b!29360 m!31263))

(declare-fun m!31265 () Bool)

(assert (=> d!15381 m!31265))

(declare-fun m!31267 () Bool)

(assert (=> d!15381 m!31267))

(assert (=> b!29116 d!15381))

(declare-fun b!29363 () Bool)

(declare-fun e!14989 () List!362)

(assert (=> b!29363 (= e!14989 (Cons!356 (x!8945 (left!710 (right!713 xs!533))) Nil!357))))

(declare-fun b!29364 () Bool)

(assert (=> b!29364 (= e!14989 (++!42 (toList!117 (left!710 (left!710 (right!713 xs!533)))) (toList!117 (right!713 (left!710 (right!713 xs!533))))))))

(declare-fun d!15383 () Bool)

(declare-fun lt!5280 () List!362)

(assert (=> d!15383 (= (size!273 lt!5280) (size!274 (left!710 (right!713 xs!533))))))

(declare-fun e!14988 () List!362)

(assert (=> d!15383 (= lt!5280 e!14988)))

(declare-fun c!6437 () Bool)

(assert (=> d!15383 (= c!6437 (is-Empty!76 (left!710 (right!713 xs!533))))))

(assert (=> d!15383 (= (toList!117 (left!710 (right!713 xs!533))) lt!5280)))

(declare-fun b!29362 () Bool)

(assert (=> b!29362 (= e!14988 e!14989)))

(declare-fun c!6438 () Bool)

(assert (=> b!29362 (= c!6438 (is-Single!65 (left!710 (right!713 xs!533))))))

(declare-fun b!29361 () Bool)

(assert (=> b!29361 (= e!14988 Nil!357)))

(assert (= (and b!29362 c!6438) b!29363))

(assert (= (and b!29362 (not c!6438)) b!29364))

(assert (= (and d!15383 c!6437) b!29361))

(assert (= (and d!15383 (not c!6437)) b!29362))

(declare-fun m!31269 () Bool)

(assert (=> b!29364 m!31269))

(declare-fun m!31271 () Bool)

(assert (=> b!29364 m!31271))

(assert (=> b!29364 m!31269))

(assert (=> b!29364 m!31271))

(declare-fun m!31273 () Bool)

(assert (=> b!29364 m!31273))

(declare-fun m!31275 () Bool)

(assert (=> d!15383 m!31275))

(declare-fun m!31277 () Bool)

(assert (=> d!15383 m!31277))

(assert (=> b!29116 d!15383))

(declare-fun b!29366 () Bool)

(declare-fun e!14990 () List!362)

(assert (=> b!29366 (= e!14990 (Cons!356 (h!273 (toList!117 (right!713 (right!713 xs!533)))) (++!42 (t!4376 (toList!117 (right!713 (right!713 xs!533)))) (toList!117 ys!77))))))

(declare-fun b!29365 () Bool)

(assert (=> b!29365 (= e!14990 (toList!117 ys!77))))

(declare-fun d!15385 () Bool)

(declare-fun e!14991 () Bool)

(assert (=> d!15385 e!14991))

(declare-fun res!13475 () Bool)

(assert (=> d!15385 (=> (not res!13475) (not e!14991))))

(declare-fun lt!5281 () List!362)

(assert (=> d!15385 (= res!13475 (= (content!72 lt!5281) (union (content!72 (toList!117 (right!713 (right!713 xs!533)))) (content!72 (toList!117 ys!77)))))))

(assert (=> d!15385 (= lt!5281 e!14990)))

(declare-fun c!6439 () Bool)

(assert (=> d!15385 (= c!6439 (is-Nil!357 (toList!117 (right!713 (right!713 xs!533)))))))

(assert (=> d!15385 (= (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77)) lt!5281)))

(declare-fun b!29368 () Bool)

(assert (=> b!29368 (= e!14991 (or (not (= (toList!117 ys!77) Nil!357)) (= lt!5281 (toList!117 (right!713 (right!713 xs!533))))))))

(declare-fun b!29367 () Bool)

(declare-fun res!13476 () Bool)

(assert (=> b!29367 (=> (not res!13476) (not e!14991))))

(assert (=> b!29367 (= res!13476 (= (size!273 lt!5281) (+ (size!273 (toList!117 (right!713 (right!713 xs!533)))) (size!273 (toList!117 ys!77)))))))

(assert (= (and d!15385 c!6439) b!29365))

(assert (= (and d!15385 (not c!6439)) b!29366))

(assert (= (and d!15385 res!13475) b!29367))

(assert (= (and b!29367 res!13476) b!29368))

(assert (=> b!29366 m!30989))

(declare-fun m!31279 () Bool)

(assert (=> b!29366 m!31279))

(declare-fun m!31281 () Bool)

(assert (=> d!15385 m!31281))

(assert (=> d!15385 m!30997))

(declare-fun m!31283 () Bool)

(assert (=> d!15385 m!31283))

(assert (=> d!15385 m!30989))

(assert (=> d!15385 m!31237))

(declare-fun m!31285 () Bool)

(assert (=> b!29367 m!31285))

(assert (=> b!29367 m!30997))

(declare-fun m!31287 () Bool)

(assert (=> b!29367 m!31287))

(assert (=> b!29367 m!30989))

(assert (=> b!29367 m!31241))

(assert (=> b!29116 d!15385))

(declare-fun b!29369 () Bool)

(declare-fun e!14992 () Bool)

(assert (=> b!29369 (= e!14992 (= (++!42 (++!42 (toList!117 (left!710 xs!533)) (toList!117 (left!710 (right!713 xs!533)))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))) (++!42 (toList!117 (left!710 xs!533)) (++!42 (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))))))))

(declare-fun lt!5282 () Bool)

(assert (=> b!29369 (= lt!5282 (appendAssoc!10 (t!4376 (toList!117 (left!710 xs!533))) (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))))))

(declare-fun d!15387 () Bool)

(assert (=> d!15387 e!14992))

(declare-fun c!6440 () Bool)

(assert (=> d!15387 (= c!6440 (is-Cons!356 (toList!117 (left!710 xs!533))))))

(assert (=> d!15387 (= (appendAssoc!10 (toList!117 (left!710 xs!533)) (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))) true)))

(declare-fun b!29370 () Bool)

(assert (=> b!29370 (= e!14992 (= (++!42 (++!42 (toList!117 (left!710 xs!533)) (toList!117 (left!710 (right!713 xs!533)))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))) (++!42 (toList!117 (left!710 xs!533)) (++!42 (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77))))))))

(assert (= (and d!15387 c!6440) b!29369))

(assert (= (and d!15387 (not c!6440)) b!29370))

(assert (=> b!29369 m!30985))

(declare-fun m!31289 () Bool)

(assert (=> b!29369 m!31289))

(declare-fun m!31291 () Bool)

(assert (=> b!29369 m!31291))

(assert (=> b!29369 m!30985))

(assert (=> b!29369 m!30995))

(declare-fun m!31293 () Bool)

(assert (=> b!29369 m!31293))

(assert (=> b!29369 m!31293))

(assert (=> b!29369 m!30999))

(declare-fun m!31295 () Bool)

(assert (=> b!29369 m!31295))

(assert (=> b!29369 m!30995))

(assert (=> b!29369 m!30999))

(declare-fun m!31297 () Bool)

(assert (=> b!29369 m!31297))

(assert (=> b!29369 m!30995))

(assert (=> b!29369 m!30999))

(assert (=> b!29369 m!31289))

(assert (=> b!29370 m!30985))

(assert (=> b!29370 m!30995))

(assert (=> b!29370 m!31293))

(assert (=> b!29370 m!31293))

(assert (=> b!29370 m!30999))

(assert (=> b!29370 m!31295))

(assert (=> b!29370 m!30995))

(assert (=> b!29370 m!30999))

(assert (=> b!29370 m!31289))

(assert (=> b!29370 m!30985))

(assert (=> b!29370 m!31289))

(assert (=> b!29370 m!31291))

(assert (=> b!29116 d!15387))

(declare-fun b!29373 () Bool)

(declare-fun e!14994 () List!362)

(assert (=> b!29373 (= e!14994 (Cons!356 (x!8945 (left!710 xs!533)) Nil!357))))

(declare-fun b!29374 () Bool)

(assert (=> b!29374 (= e!14994 (++!42 (toList!117 (left!710 (left!710 xs!533))) (toList!117 (right!713 (left!710 xs!533)))))))

(declare-fun d!15389 () Bool)

(declare-fun lt!5283 () List!362)

(assert (=> d!15389 (= (size!273 lt!5283) (size!274 (left!710 xs!533)))))

(declare-fun e!14993 () List!362)

(assert (=> d!15389 (= lt!5283 e!14993)))

(declare-fun c!6441 () Bool)

(assert (=> d!15389 (= c!6441 (is-Empty!76 (left!710 xs!533)))))

(assert (=> d!15389 (= (toList!117 (left!710 xs!533)) lt!5283)))

(declare-fun b!29372 () Bool)

(assert (=> b!29372 (= e!14993 e!14994)))

(declare-fun c!6442 () Bool)

(assert (=> b!29372 (= c!6442 (is-Single!65 (left!710 xs!533)))))

(declare-fun b!29371 () Bool)

(assert (=> b!29371 (= e!14993 Nil!357)))

(assert (= (and b!29372 c!6442) b!29373))

(assert (= (and b!29372 (not c!6442)) b!29374))

(assert (= (and d!15389 c!6441) b!29371))

(assert (= (and d!15389 (not c!6441)) b!29372))

(declare-fun m!31299 () Bool)

(assert (=> b!29374 m!31299))

(declare-fun m!31301 () Bool)

(assert (=> b!29374 m!31301))

(assert (=> b!29374 m!31299))

(assert (=> b!29374 m!31301))

(declare-fun m!31303 () Bool)

(assert (=> b!29374 m!31303))

(declare-fun m!31305 () Bool)

(assert (=> d!15389 m!31305))

(declare-fun m!31307 () Bool)

(assert (=> d!15389 m!31307))

(assert (=> b!29116 d!15389))

(assert (=> b!29217 d!15325))

(assert (=> b!29217 d!15307))

(declare-fun b!29376 () Bool)

(declare-fun e!14995 () Int)

(declare-fun lt!5284 () Int)

(declare-fun lt!5285 () Int)

(assert (=> b!29376 (= e!14995 (+ 1 (ite (>= lt!5284 lt!5285) lt!5284 lt!5285)))))

(assert (=> b!29376 (= lt!5285 (level!54 (right!713 lt!5211)))))

(assert (=> b!29376 (= lt!5284 (level!54 (left!710 lt!5211)))))

(declare-fun d!15391 () Bool)

(declare-fun lt!5286 () Int)

(assert (=> d!15391 (>= lt!5286 0)))

(assert (=> d!15391 (= lt!5286 e!14995)))

(declare-fun c!6443 () Bool)

(assert (=> d!15391 (= c!6443 (or (is-Empty!76 lt!5211) (is-Single!65 lt!5211)))))

(assert (=> d!15391 (= (level!54 lt!5211) lt!5286)))

(declare-fun b!29375 () Bool)

(assert (=> b!29375 (= e!14995 0)))

(assert (= (and d!15391 c!6443) b!29375))

(assert (= (and d!15391 (not c!6443)) b!29376))

(declare-fun m!31309 () Bool)

(assert (=> b!29376 m!31309))

(declare-fun m!31311 () Bool)

(assert (=> b!29376 m!31311))

(assert (=> b!29217 d!15391))

(assert (=> b!29149 d!15367))

(assert (=> b!29149 d!15369))

(declare-fun d!15393 () Bool)

(assert (=> d!15393 (= (concatCorrectness!14 lt!5211 xs!533 (left!710 ys!77)) (= (toList!117 lt!5211) (++!42 (toList!117 xs!533) (toList!117 (left!710 ys!77)))))))

(declare-fun bs!5102 () Bool)

(assert (= bs!5102 d!15393))

(assert (=> bs!5102 m!30973))

(assert (=> bs!5102 m!31005))

(declare-fun m!31313 () Bool)

(assert (=> bs!5102 m!31313))

(declare-fun m!31315 () Bool)

(assert (=> bs!5102 m!31315))

(assert (=> bs!5102 m!31005))

(assert (=> bs!5102 m!30973))

(assert (=> b!29215 d!15393))

(declare-fun b!29379 () Bool)

(declare-fun res!13478 () Bool)

(declare-fun e!14996 () Bool)

(assert (=> b!29379 (=> (not res!13478) (not e!14996))))

(assert (=> b!29379 (= res!13478 (concInv!60 (left!710 (left!710 res!5539))))))

(declare-fun b!29377 () Bool)

(declare-fun e!14997 () Bool)

(assert (=> b!29377 (= e!14997 e!14996)))

(declare-fun res!13479 () Bool)

(assert (=> b!29377 (=> (not res!13479) (not e!14996))))

(assert (=> b!29377 (= res!13479 (not (isEmpty!322 (left!710 (left!710 res!5539)))))))

(declare-fun d!15395 () Bool)

(declare-fun res!13480 () Bool)

(assert (=> d!15395 (=> res!13480 e!14997)))

(assert (=> d!15395 (= res!13480 (not (is-CC!65 (left!710 res!5539))))))

(assert (=> d!15395 (= (concInv!60 (left!710 res!5539)) e!14997)))

(declare-fun b!29378 () Bool)

(declare-fun res!13477 () Bool)

(assert (=> b!29378 (=> (not res!13477) (not e!14996))))

(assert (=> b!29378 (= res!13477 (not (isEmpty!322 (right!713 (left!710 res!5539)))))))

(declare-fun b!29380 () Bool)

(assert (=> b!29380 (= e!14996 (concInv!60 (right!713 (left!710 res!5539))))))

(assert (= (and d!15395 (not res!13480)) b!29377))

(assert (= (and b!29377 res!13479) b!29378))

(assert (= (and b!29378 res!13477) b!29379))

(assert (= (and b!29379 res!13478) b!29380))

(declare-fun m!31317 () Bool)

(assert (=> b!29379 m!31317))

(declare-fun m!31319 () Bool)

(assert (=> b!29377 m!31319))

(declare-fun m!31321 () Bool)

(assert (=> b!29378 m!31321))

(declare-fun m!31323 () Bool)

(assert (=> b!29380 m!31323))

(assert (=> b!29234 d!15395))

(declare-fun b!29381 () Bool)

(declare-fun e!14998 () Bool)

(assert (=> b!29381 (= e!14998 (= (++!42 (++!42 (toList!117 (left!710 xs!533)) (toList!117 (right!713 xs!533))) (toList!117 ys!77)) (++!42 (toList!117 (left!710 xs!533)) (++!42 (toList!117 (right!713 xs!533)) (toList!117 ys!77)))))))

(declare-fun lt!5287 () Bool)

(assert (=> b!29381 (= lt!5287 (appendAssoc!10 (t!4376 (toList!117 (left!710 xs!533))) (toList!117 (right!713 xs!533)) (toList!117 ys!77)))))

(declare-fun d!15397 () Bool)

(assert (=> d!15397 e!14998))

(declare-fun c!6444 () Bool)

(assert (=> d!15397 (= c!6444 (is-Cons!356 (toList!117 (left!710 xs!533))))))

(assert (=> d!15397 (= (appendAssoc!10 (toList!117 (left!710 xs!533)) (toList!117 (right!713 xs!533)) (toList!117 ys!77)) true)))

(declare-fun b!29382 () Bool)

(assert (=> b!29382 (= e!14998 (= (++!42 (++!42 (toList!117 (left!710 xs!533)) (toList!117 (right!713 xs!533))) (toList!117 ys!77)) (++!42 (toList!117 (left!710 xs!533)) (++!42 (toList!117 (right!713 xs!533)) (toList!117 ys!77)))))))

(assert (= (and d!15397 c!6444) b!29381))

(assert (= (and d!15397 (not c!6444)) b!29382))

(assert (=> b!29381 m!30985))

(declare-fun m!31325 () Bool)

(assert (=> b!29381 m!31325))

(declare-fun m!31327 () Bool)

(assert (=> b!29381 m!31327))

(assert (=> b!29381 m!30985))

(assert (=> b!29381 m!30987))

(assert (=> b!29381 m!31171))

(assert (=> b!29381 m!31171))

(assert (=> b!29381 m!30989))

(declare-fun m!31329 () Bool)

(assert (=> b!29381 m!31329))

(assert (=> b!29381 m!30987))

(assert (=> b!29381 m!30989))

(declare-fun m!31331 () Bool)

(assert (=> b!29381 m!31331))

(assert (=> b!29381 m!30987))

(assert (=> b!29381 m!30989))

(assert (=> b!29381 m!31325))

(assert (=> b!29382 m!30985))

(assert (=> b!29382 m!30987))

(assert (=> b!29382 m!31171))

(assert (=> b!29382 m!31171))

(assert (=> b!29382 m!30989))

(assert (=> b!29382 m!31329))

(assert (=> b!29382 m!30987))

(assert (=> b!29382 m!30989))

(assert (=> b!29382 m!31325))

(assert (=> b!29382 m!30985))

(assert (=> b!29382 m!31325))

(assert (=> b!29382 m!31327))

(assert (=> b!29110 d!15397))

(assert (=> b!29110 d!15389))

(declare-fun b!29385 () Bool)

(declare-fun e!15000 () List!362)

(assert (=> b!29385 (= e!15000 (Cons!356 (x!8945 (right!713 xs!533)) Nil!357))))

(declare-fun b!29386 () Bool)

(assert (=> b!29386 (= e!15000 (++!42 (toList!117 (left!710 (right!713 xs!533))) (toList!117 (right!713 (right!713 xs!533)))))))

(declare-fun d!15399 () Bool)

(declare-fun lt!5288 () List!362)

(assert (=> d!15399 (= (size!273 lt!5288) (size!274 (right!713 xs!533)))))

(declare-fun e!14999 () List!362)

(assert (=> d!15399 (= lt!5288 e!14999)))

(declare-fun c!6445 () Bool)

(assert (=> d!15399 (= c!6445 (is-Empty!76 (right!713 xs!533)))))

(assert (=> d!15399 (= (toList!117 (right!713 xs!533)) lt!5288)))

(declare-fun b!29384 () Bool)

(assert (=> b!29384 (= e!14999 e!15000)))

(declare-fun c!6446 () Bool)

(assert (=> b!29384 (= c!6446 (is-Single!65 (right!713 xs!533)))))

(declare-fun b!29383 () Bool)

(assert (=> b!29383 (= e!14999 Nil!357)))

(assert (= (and b!29384 c!6446) b!29385))

(assert (= (and b!29384 (not c!6446)) b!29386))

(assert (= (and d!15399 c!6445) b!29383))

(assert (= (and d!15399 (not c!6445)) b!29384))

(assert (=> b!29386 m!30995))

(assert (=> b!29386 m!30997))

(assert (=> b!29386 m!30995))

(assert (=> b!29386 m!30997))

(declare-fun m!31333 () Bool)

(assert (=> b!29386 m!31333))

(declare-fun m!31335 () Bool)

(assert (=> d!15399 m!31335))

(declare-fun m!31337 () Bool)

(assert (=> d!15399 m!31337))

(assert (=> b!29110 d!15399))

(assert (=> b!29110 d!15375))

(declare-fun b!29389 () Bool)

(declare-fun res!13482 () Bool)

(declare-fun e!15001 () Bool)

(assert (=> b!29389 (=> (not res!13482) (not e!15001))))

(assert (=> b!29389 (= res!13482 (concInv!60 (left!710 (right!713 res!5539))))))

(declare-fun b!29387 () Bool)

(declare-fun e!15002 () Bool)

(assert (=> b!29387 (= e!15002 e!15001)))

(declare-fun res!13483 () Bool)

(assert (=> b!29387 (=> (not res!13483) (not e!15001))))

(assert (=> b!29387 (= res!13483 (not (isEmpty!322 (left!710 (right!713 res!5539)))))))

(declare-fun d!15401 () Bool)

(declare-fun res!13484 () Bool)

(assert (=> d!15401 (=> res!13484 e!15002)))

(assert (=> d!15401 (= res!13484 (not (is-CC!65 (right!713 res!5539))))))

(assert (=> d!15401 (= (concInv!60 (right!713 res!5539)) e!15002)))

(declare-fun b!29388 () Bool)

(declare-fun res!13481 () Bool)

(assert (=> b!29388 (=> (not res!13481) (not e!15001))))

(assert (=> b!29388 (= res!13481 (not (isEmpty!322 (right!713 (right!713 res!5539)))))))

(declare-fun b!29390 () Bool)

(assert (=> b!29390 (= e!15001 (concInv!60 (right!713 (right!713 res!5539))))))

(assert (= (and d!15401 (not res!13484)) b!29387))

(assert (= (and b!29387 res!13483) b!29388))

(assert (= (and b!29388 res!13481) b!29389))

(assert (= (and b!29389 res!13482) b!29390))

(declare-fun m!31339 () Bool)

(assert (=> b!29389 m!31339))

(declare-fun m!31341 () Bool)

(assert (=> b!29387 m!31341))

(declare-fun m!31343 () Bool)

(assert (=> b!29388 m!31343))

(declare-fun m!31345 () Bool)

(assert (=> b!29390 m!31345))

(assert (=> b!29235 d!15401))

(declare-fun b!29394 () Bool)

(declare-fun e!15003 () Bool)

(assert (=> b!29394 (= e!15003 (balanced!61 (right!713 (right!713 xs!533))))))

(declare-fun b!29391 () Bool)

(declare-fun e!15004 () Bool)

(assert (=> b!29391 (= e!15004 e!15003)))

(declare-fun res!13487 () Bool)

(assert (=> b!29391 (=> (not res!13487) (not e!15003))))

(assert (=> b!29391 (= res!13487 (>= (- (level!54 (left!710 (right!713 xs!533))) (level!54 (right!713 (right!713 xs!533)))) (- 1)))))

(declare-fun d!15403 () Bool)

(declare-fun res!13486 () Bool)

(assert (=> d!15403 (=> res!13486 e!15004)))

(assert (=> d!15403 (= res!13486 (not (is-CC!65 (right!713 xs!533))))))

(assert (=> d!15403 (= (balanced!61 (right!713 xs!533)) e!15004)))

(declare-fun b!29393 () Bool)

(declare-fun res!13485 () Bool)

(assert (=> b!29393 (=> (not res!13485) (not e!15003))))

(assert (=> b!29393 (= res!13485 (balanced!61 (left!710 (right!713 xs!533))))))

(declare-fun b!29392 () Bool)

(declare-fun res!13488 () Bool)

(assert (=> b!29392 (=> (not res!13488) (not e!15003))))

(assert (=> b!29392 (= res!13488 (<= (- (level!54 (left!710 (right!713 xs!533))) (level!54 (right!713 (right!713 xs!533)))) 1))))

(assert (= (and d!15403 (not res!13486)) b!29391))

(assert (= (and b!29391 res!13487) b!29392))

(assert (= (and b!29392 res!13488) b!29393))

(assert (= (and b!29393 res!13485) b!29394))

(declare-fun m!31347 () Bool)

(assert (=> b!29394 m!31347))

(declare-fun m!31349 () Bool)

(assert (=> b!29391 m!31349))

(declare-fun m!31351 () Bool)

(assert (=> b!29391 m!31351))

(declare-fun m!31353 () Bool)

(assert (=> b!29393 m!31353))

(assert (=> b!29392 m!31349))

(assert (=> b!29392 m!31351))

(assert (=> b!29223 d!15403))

(declare-fun b!29398 () Bool)

(declare-fun e!15005 () Bool)

(assert (=> b!29398 (= e!15005 (balanced!61 (right!713 (right!713 ys!77))))))

(declare-fun b!29395 () Bool)

(declare-fun e!15006 () Bool)

(assert (=> b!29395 (= e!15006 e!15005)))

(declare-fun res!13491 () Bool)

(assert (=> b!29395 (=> (not res!13491) (not e!15005))))

(assert (=> b!29395 (= res!13491 (>= (- (level!54 (left!710 (right!713 ys!77))) (level!54 (right!713 (right!713 ys!77)))) (- 1)))))

(declare-fun d!15405 () Bool)

(declare-fun res!13490 () Bool)

(assert (=> d!15405 (=> res!13490 e!15006)))

(assert (=> d!15405 (= res!13490 (not (is-CC!65 (right!713 ys!77))))))

(assert (=> d!15405 (= (balanced!61 (right!713 ys!77)) e!15006)))

(declare-fun b!29397 () Bool)

(declare-fun res!13489 () Bool)

(assert (=> b!29397 (=> (not res!13489) (not e!15005))))

(assert (=> b!29397 (= res!13489 (balanced!61 (left!710 (right!713 ys!77))))))

(declare-fun b!29396 () Bool)

(declare-fun res!13492 () Bool)

(assert (=> b!29396 (=> (not res!13492) (not e!15005))))

(assert (=> b!29396 (= res!13492 (<= (- (level!54 (left!710 (right!713 ys!77))) (level!54 (right!713 (right!713 ys!77)))) 1))))

(assert (= (and d!15405 (not res!13490)) b!29395))

(assert (= (and b!29395 res!13491) b!29396))

(assert (= (and b!29396 res!13492) b!29397))

(assert (= (and b!29397 res!13489) b!29398))

(declare-fun m!31355 () Bool)

(assert (=> b!29398 m!31355))

(assert (=> b!29395 m!31069))

(assert (=> b!29395 m!31067))

(declare-fun m!31357 () Bool)

(assert (=> b!29397 m!31357))

(assert (=> b!29396 m!31069))

(assert (=> b!29396 m!31067))

(assert (=> b!29231 d!15405))

(declare-fun b!29400 () Bool)

(declare-fun e!15007 () Int)

(declare-fun lt!5289 () Int)

(declare-fun lt!5290 () Int)

(assert (=> b!29400 (= e!15007 (+ 1 (ite (>= lt!5289 lt!5290) lt!5289 lt!5290)))))

(assert (=> b!29400 (= lt!5290 (level!54 (right!713 (right!713 xs!533))))))

(assert (=> b!29400 (= lt!5289 (level!54 (left!710 (right!713 xs!533))))))

(declare-fun d!15407 () Bool)

(declare-fun lt!5291 () Int)

(assert (=> d!15407 (>= lt!5291 0)))

(assert (=> d!15407 (= lt!5291 e!15007)))

(declare-fun c!6447 () Bool)

(assert (=> d!15407 (= c!6447 (or (is-Empty!76 (right!713 xs!533)) (is-Single!65 (right!713 xs!533))))))

(assert (=> d!15407 (= (level!54 (right!713 xs!533)) lt!5291)))

(declare-fun b!29399 () Bool)

(assert (=> b!29399 (= e!15007 0)))

(assert (= (and d!15407 c!6447) b!29399))

(assert (= (and d!15407 (not c!6447)) b!29400))

(assert (=> b!29400 m!31351))

(assert (=> b!29400 m!31349))

(assert (=> b!29126 d!15407))

(declare-fun b!29402 () Bool)

(declare-fun e!15008 () Int)

(declare-fun lt!5292 () Int)

(declare-fun lt!5293 () Int)

(assert (=> b!29402 (= e!15008 (+ 1 (ite (>= lt!5292 lt!5293) lt!5292 lt!5293)))))

(assert (=> b!29402 (= lt!5293 (level!54 (right!713 (left!710 xs!533))))))

(assert (=> b!29402 (= lt!5292 (level!54 (left!710 (left!710 xs!533))))))

(declare-fun d!15409 () Bool)

(declare-fun lt!5294 () Int)

(assert (=> d!15409 (>= lt!5294 0)))

(assert (=> d!15409 (= lt!5294 e!15008)))

(declare-fun c!6448 () Bool)

(assert (=> d!15409 (= c!6448 (or (is-Empty!76 (left!710 xs!533)) (is-Single!65 (left!710 xs!533))))))

(assert (=> d!15409 (= (level!54 (left!710 xs!533)) lt!5294)))

(declare-fun b!29401 () Bool)

(assert (=> b!29401 (= e!15008 0)))

(assert (= (and d!15409 c!6448) b!29401))

(assert (= (and d!15409 (not c!6448)) b!29402))

(assert (=> b!29402 m!31093))

(assert (=> b!29402 m!31091))

(assert (=> b!29126 d!15409))

(declare-fun b!29403 () Bool)

(declare-fun e!15009 () Bool)

(assert (=> b!29403 (= e!15009 (= (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 ys!77))) (toList!117 (right!713 ys!77))) (++!42 (toList!117 xs!533) (++!42 (toList!117 (left!710 ys!77)) (toList!117 (right!713 ys!77))))))))

(declare-fun lt!5295 () Bool)

(assert (=> b!29403 (= lt!5295 (appendAssoc!10 (t!4376 (toList!117 xs!533)) (toList!117 (left!710 ys!77)) (toList!117 (right!713 ys!77))))))

(declare-fun d!15411 () Bool)

(assert (=> d!15411 e!15009))

(declare-fun c!6449 () Bool)

(assert (=> d!15411 (= c!6449 (is-Cons!356 (toList!117 xs!533)))))

(assert (=> d!15411 (= (appendAssoc!10 (toList!117 xs!533) (toList!117 (left!710 ys!77)) (toList!117 (right!713 ys!77))) true)))

(declare-fun b!29404 () Bool)

(assert (=> b!29404 (= e!15009 (= (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 ys!77))) (toList!117 (right!713 ys!77))) (++!42 (toList!117 xs!533) (++!42 (toList!117 (left!710 ys!77)) (toList!117 (right!713 ys!77))))))))

(assert (= (and d!15411 c!6449) b!29403))

(assert (= (and d!15411 (not c!6449)) b!29404))

(assert (=> b!29403 m!30973))

(assert (=> b!29403 m!31243))

(declare-fun m!31359 () Bool)

(assert (=> b!29403 m!31359))

(assert (=> b!29403 m!30973))

(assert (=> b!29403 m!31005))

(assert (=> b!29403 m!31313))

(assert (=> b!29403 m!31313))

(assert (=> b!29403 m!30981))

(declare-fun m!31361 () Bool)

(assert (=> b!29403 m!31361))

(assert (=> b!29403 m!31005))

(assert (=> b!29403 m!30981))

(declare-fun m!31363 () Bool)

(assert (=> b!29403 m!31363))

(assert (=> b!29403 m!31005))

(assert (=> b!29403 m!30981))

(assert (=> b!29403 m!31243))

(assert (=> b!29404 m!30973))

(assert (=> b!29404 m!31005))

(assert (=> b!29404 m!31313))

(assert (=> b!29404 m!31313))

(assert (=> b!29404 m!30981))

(assert (=> b!29404 m!31361))

(assert (=> b!29404 m!31005))

(assert (=> b!29404 m!30981))

(assert (=> b!29404 m!31243))

(assert (=> b!29404 m!30973))

(assert (=> b!29404 m!31243))

(assert (=> b!29404 m!31359))

(assert (=> b!29113 d!15411))

(assert (=> b!29113 d!15351))

(declare-fun b!29407 () Bool)

(declare-fun e!15011 () List!362)

(assert (=> b!29407 (= e!15011 (Cons!356 (x!8945 (left!710 ys!77)) Nil!357))))

(declare-fun b!29408 () Bool)

(assert (=> b!29408 (= e!15011 (++!42 (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))))))

(declare-fun d!15413 () Bool)

(declare-fun lt!5296 () List!362)

(assert (=> d!15413 (= (size!273 lt!5296) (size!274 (left!710 ys!77)))))

(declare-fun e!15010 () List!362)

(assert (=> d!15413 (= lt!5296 e!15010)))

(declare-fun c!6450 () Bool)

(assert (=> d!15413 (= c!6450 (is-Empty!76 (left!710 ys!77)))))

(assert (=> d!15413 (= (toList!117 (left!710 ys!77)) lt!5296)))

(declare-fun b!29406 () Bool)

(assert (=> b!29406 (= e!15010 e!15011)))

(declare-fun c!6451 () Bool)

(assert (=> b!29406 (= c!6451 (is-Single!65 (left!710 ys!77)))))

(declare-fun b!29405 () Bool)

(assert (=> b!29405 (= e!15010 Nil!357)))

(assert (= (and b!29406 c!6451) b!29407))

(assert (= (and b!29406 (not c!6451)) b!29408))

(assert (= (and d!15413 c!6450) b!29405))

(assert (= (and d!15413 (not c!6450)) b!29406))

(assert (=> b!29408 m!30975))

(assert (=> b!29408 m!30979))

(assert (=> b!29408 m!30975))

(assert (=> b!29408 m!30979))

(declare-fun m!31365 () Bool)

(assert (=> b!29408 m!31365))

(declare-fun m!31367 () Bool)

(assert (=> d!15413 m!31367))

(declare-fun m!31369 () Bool)

(assert (=> d!15413 m!31369))

(assert (=> b!29113 d!15413))

(assert (=> b!29113 d!15347))

(assert (=> b!29221 d!15409))

(assert (=> b!29221 d!15407))

(declare-fun d!15415 () Bool)

(assert (=> d!15415 (= (isEmpty!322 (right!713 res!5539)) (= (right!713 res!5539) Empty!76))))

(assert (=> b!29233 d!15415))

(declare-fun b!29411 () Bool)

(declare-fun res!13494 () Bool)

(declare-fun e!15012 () Bool)

(assert (=> b!29411 (=> (not res!13494) (not e!15012))))

(assert (=> b!29411 (= res!13494 (concInv!60 (left!710 (right!713 xs!533))))))

(declare-fun b!29409 () Bool)

(declare-fun e!15013 () Bool)

(assert (=> b!29409 (= e!15013 e!15012)))

(declare-fun res!13495 () Bool)

(assert (=> b!29409 (=> (not res!13495) (not e!15012))))

(assert (=> b!29409 (= res!13495 (not (isEmpty!322 (left!710 (right!713 xs!533)))))))

(declare-fun d!15417 () Bool)

(declare-fun res!13496 () Bool)

(assert (=> d!15417 (=> res!13496 e!15013)))

(assert (=> d!15417 (= res!13496 (not (is-CC!65 (right!713 xs!533))))))

(assert (=> d!15417 (= (concInv!60 (right!713 xs!533)) e!15013)))

(declare-fun b!29410 () Bool)

(declare-fun res!13493 () Bool)

(assert (=> b!29410 (=> (not res!13493) (not e!15012))))

(assert (=> b!29410 (= res!13493 (not (isEmpty!322 (right!713 (right!713 xs!533)))))))

(declare-fun b!29412 () Bool)

(assert (=> b!29412 (= e!15012 (concInv!60 (right!713 (right!713 xs!533))))))

(assert (= (and d!15417 (not res!13496)) b!29409))

(assert (= (and b!29409 res!13495) b!29410))

(assert (= (and b!29410 res!13493) b!29411))

(assert (= (and b!29411 res!13494) b!29412))

(declare-fun m!31371 () Bool)

(assert (=> b!29411 m!31371))

(declare-fun m!31373 () Bool)

(assert (=> b!29409 m!31373))

(declare-fun m!31375 () Bool)

(assert (=> b!29410 m!31375))

(declare-fun m!31377 () Bool)

(assert (=> b!29412 m!31377))

(assert (=> b!29156 d!15417))

(declare-fun b!29415 () Bool)

(declare-fun res!13498 () Bool)

(declare-fun e!15014 () Bool)

(assert (=> b!29415 (=> (not res!13498) (not e!15014))))

(assert (=> b!29415 (= res!13498 (concInv!60 (left!710 (right!713 ys!77))))))

(declare-fun b!29413 () Bool)

(declare-fun e!15015 () Bool)

(assert (=> b!29413 (= e!15015 e!15014)))

(declare-fun res!13499 () Bool)

(assert (=> b!29413 (=> (not res!13499) (not e!15014))))

(assert (=> b!29413 (= res!13499 (not (isEmpty!322 (left!710 (right!713 ys!77)))))))

(declare-fun d!15419 () Bool)

(declare-fun res!13500 () Bool)

(assert (=> d!15419 (=> res!13500 e!15015)))

(assert (=> d!15419 (= res!13500 (not (is-CC!65 (right!713 ys!77))))))

(assert (=> d!15419 (= (concInv!60 (right!713 ys!77)) e!15015)))

(declare-fun b!29414 () Bool)

(declare-fun res!13497 () Bool)

(assert (=> b!29414 (=> (not res!13497) (not e!15014))))

(assert (=> b!29414 (= res!13497 (not (isEmpty!322 (right!713 (right!713 ys!77)))))))

(declare-fun b!29416 () Bool)

(assert (=> b!29416 (= e!15014 (concInv!60 (right!713 (right!713 ys!77))))))

(assert (= (and d!15419 (not res!13500)) b!29413))

(assert (= (and b!29413 res!13499) b!29414))

(assert (= (and b!29414 res!13497) b!29415))

(assert (= (and b!29415 res!13498) b!29416))

(declare-fun m!31379 () Bool)

(assert (=> b!29415 m!31379))

(declare-fun m!31381 () Bool)

(assert (=> b!29413 m!31381))

(declare-fun m!31383 () Bool)

(assert (=> b!29414 m!31383))

(declare-fun m!31385 () Bool)

(assert (=> b!29416 m!31385))

(assert (=> b!29138 d!15419))

(assert (=> b!29135 d!15379))

(declare-fun b!29419 () Bool)

(declare-fun res!13502 () Bool)

(declare-fun e!15016 () Bool)

(assert (=> b!29419 (=> (not res!13502) (not e!15016))))

(assert (=> b!29419 (= res!13502 (concInv!60 (left!710 (left!710 ys!77))))))

(declare-fun b!29417 () Bool)

(declare-fun e!15017 () Bool)

(assert (=> b!29417 (= e!15017 e!15016)))

(declare-fun res!13503 () Bool)

(assert (=> b!29417 (=> (not res!13503) (not e!15016))))

(assert (=> b!29417 (= res!13503 (not (isEmpty!322 (left!710 (left!710 ys!77)))))))

(declare-fun d!15421 () Bool)

(declare-fun res!13504 () Bool)

(assert (=> d!15421 (=> res!13504 e!15017)))

(assert (=> d!15421 (= res!13504 (not (is-CC!65 (left!710 ys!77))))))

(assert (=> d!15421 (= (concInv!60 (left!710 ys!77)) e!15017)))

(declare-fun b!29418 () Bool)

(declare-fun res!13501 () Bool)

(assert (=> b!29418 (=> (not res!13501) (not e!15016))))

(assert (=> b!29418 (= res!13501 (not (isEmpty!322 (right!713 (left!710 ys!77)))))))

(declare-fun b!29420 () Bool)

(assert (=> b!29420 (= e!15016 (concInv!60 (right!713 (left!710 ys!77))))))

(assert (= (and d!15421 (not res!13504)) b!29417))

(assert (= (and b!29417 res!13503) b!29418))

(assert (= (and b!29418 res!13501) b!29419))

(assert (= (and b!29419 res!13502) b!29420))

(declare-fun m!31387 () Bool)

(assert (=> b!29419 m!31387))

(declare-fun m!31389 () Bool)

(assert (=> b!29417 m!31389))

(declare-fun m!31391 () Bool)

(assert (=> b!29418 m!31391))

(declare-fun m!31393 () Bool)

(assert (=> b!29420 m!31393))

(assert (=> b!29203 d!15421))

(assert (=> b!29137 d!15421))

(declare-fun d!15423 () Bool)

(assert (=> d!15423 (= (isEmpty!322 (right!713 xs!533)) (= (right!713 xs!533) Empty!76))))

(assert (=> b!29154 d!15423))

(declare-fun b!29424 () Bool)

(declare-fun e!15018 () Bool)

(assert (=> b!29424 (= e!15018 (balanced!61 (right!713 lt!5211)))))

(declare-fun b!29421 () Bool)

(declare-fun e!15019 () Bool)

(assert (=> b!29421 (= e!15019 e!15018)))

(declare-fun res!13507 () Bool)

(assert (=> b!29421 (=> (not res!13507) (not e!15018))))

(assert (=> b!29421 (= res!13507 (>= (- (level!54 (left!710 lt!5211)) (level!54 (right!713 lt!5211))) (- 1)))))

(declare-fun d!15425 () Bool)

(declare-fun res!13506 () Bool)

(assert (=> d!15425 (=> res!13506 e!15019)))

(assert (=> d!15425 (= res!13506 (not (is-CC!65 lt!5211)))))

(assert (=> d!15425 (= (balanced!61 lt!5211) e!15019)))

(declare-fun b!29423 () Bool)

(declare-fun res!13505 () Bool)

(assert (=> b!29423 (=> (not res!13505) (not e!15018))))

(assert (=> b!29423 (= res!13505 (balanced!61 (left!710 lt!5211)))))

(declare-fun b!29422 () Bool)

(declare-fun res!13508 () Bool)

(assert (=> b!29422 (=> (not res!13508) (not e!15018))))

(assert (=> b!29422 (= res!13508 (<= (- (level!54 (left!710 lt!5211)) (level!54 (right!713 lt!5211))) 1))))

(assert (= (and d!15425 (not res!13506)) b!29421))

(assert (= (and b!29421 res!13507) b!29422))

(assert (= (and b!29422 res!13508) b!29423))

(assert (= (and b!29423 res!13505) b!29424))

(declare-fun m!31395 () Bool)

(assert (=> b!29424 m!31395))

(assert (=> b!29421 m!31311))

(assert (=> b!29421 m!31309))

(declare-fun m!31397 () Bool)

(assert (=> b!29423 m!31397))

(assert (=> b!29422 m!31311))

(assert (=> b!29422 m!31309))

(assert (=> b!29209 d!15425))

(declare-fun b!29428 () Bool)

(declare-fun e!15020 () Bool)

(assert (=> b!29428 (= e!15020 (balanced!61 (right!713 (left!710 ys!77))))))

(declare-fun b!29425 () Bool)

(declare-fun e!15021 () Bool)

(assert (=> b!29425 (= e!15021 e!15020)))

(declare-fun res!13511 () Bool)

(assert (=> b!29425 (=> (not res!13511) (not e!15020))))

(assert (=> b!29425 (= res!13511 (>= (- (level!54 (left!710 (left!710 ys!77))) (level!54 (right!713 (left!710 ys!77)))) (- 1)))))

(declare-fun d!15427 () Bool)

(declare-fun res!13510 () Bool)

(assert (=> d!15427 (=> res!13510 e!15021)))

(assert (=> d!15427 (= res!13510 (not (is-CC!65 (left!710 ys!77))))))

(assert (=> d!15427 (= (balanced!61 (left!710 ys!77)) e!15021)))

(declare-fun b!29427 () Bool)

(declare-fun res!13509 () Bool)

(assert (=> b!29427 (=> (not res!13509) (not e!15020))))

(assert (=> b!29427 (= res!13509 (balanced!61 (left!710 (left!710 ys!77))))))

(declare-fun b!29426 () Bool)

(declare-fun res!13512 () Bool)

(assert (=> b!29426 (=> (not res!13512) (not e!15020))))

(assert (=> b!29426 (= res!13512 (<= (- (level!54 (left!710 (left!710 ys!77))) (level!54 (right!713 (left!710 ys!77)))) 1))))

(assert (= (and d!15427 (not res!13510)) b!29425))

(assert (= (and b!29425 res!13511) b!29426))

(assert (= (and b!29426 res!13512) b!29427))

(assert (= (and b!29427 res!13509) b!29428))

(declare-fun m!31399 () Bool)

(assert (=> b!29428 m!31399))

(assert (=> b!29425 m!31073))

(assert (=> b!29425 m!31071))

(declare-fun m!31401 () Bool)

(assert (=> b!29427 m!31401))

(assert (=> b!29426 m!31073))

(assert (=> b!29426 m!31071))

(assert (=> b!29204 d!15427))

(declare-fun d!15429 () Bool)

(assert (=> d!15429 (= (isEmpty!322 (right!713 ys!77)) (= (right!713 ys!77) Empty!76))))

(assert (=> b!29136 d!15429))

(declare-fun b!29429 () Bool)

(declare-fun e!15029 () Bool)

(declare-fun e!15030 () Bool)

(assert (=> b!29429 (= e!15029 e!15030)))

(declare-fun res!13519 () Bool)

(assert (=> b!29429 (=> (not res!13519) (not e!15030))))

(assert (=> b!29429 (= res!13519 (appendAssoc!10 (toList!117 (left!710 xs!533)) (toList!117 (right!713 xs!533)) (toList!117 (left!710 ys!77))))))

(declare-fun b!29430 () Bool)

(declare-fun e!15024 () Bool)

(assert (=> b!29430 (= e!15030 e!15024)))

(declare-fun res!13516 () Bool)

(assert (=> b!29430 (=> res!13516 e!15024)))

(assert (=> b!29430 (= res!13516 (not (is-CC!65 (right!713 xs!533))))))

(declare-fun d!15431 () Bool)

(declare-fun e!15026 () Bool)

(assert (=> d!15431 e!15026))

(declare-fun res!13518 () Bool)

(assert (=> d!15431 (=> (not res!13518) (not e!15026))))

(assert (=> d!15431 (= res!13518 e!15029)))

(declare-fun res!13521 () Bool)

(assert (=> d!15431 (=> res!13521 e!15029)))

(assert (=> d!15431 (= res!13521 (not (is-CC!65 xs!533)))))

(assert (=> d!15431 (= (appendAssocInst!14 xs!533 (left!710 ys!77)) true)))

(declare-fun b!29431 () Bool)

(declare-fun e!15025 () Bool)

(declare-fun e!15023 () Bool)

(assert (=> b!29431 (= e!15025 e!15023)))

(declare-fun res!13520 () Bool)

(assert (=> b!29431 (=> res!13520 e!15023)))

(assert (=> b!29431 (= res!13520 (not (is-CC!65 (left!710 (left!710 ys!77)))))))

(declare-fun b!29432 () Bool)

(declare-fun e!15028 () Bool)

(assert (=> b!29432 (= e!15028 e!15025)))

(declare-fun res!13513 () Bool)

(assert (=> b!29432 (=> (not res!13513) (not e!15025))))

(assert (=> b!29432 (= res!13513 (appendAssoc!10 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))))))

(declare-fun b!29433 () Bool)

(declare-fun e!15027 () Bool)

(assert (=> b!29433 (= e!15023 e!15027)))

(declare-fun res!13517 () Bool)

(assert (=> b!29433 (=> (not res!13517) (not e!15027))))

(assert (=> b!29433 (= res!13517 (appendAssoc!10 (toList!117 xs!533) (toList!117 (left!710 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 (left!710 ys!77))))))))

(declare-fun b!29434 () Bool)

(declare-fun e!15022 () Bool)

(assert (=> b!29434 (= e!15024 e!15022)))

(declare-fun res!13515 () Bool)

(assert (=> b!29434 (=> (not res!13515) (not e!15022))))

(assert (=> b!29434 (= res!13515 (appendAssoc!10 (toList!117 (left!710 (right!713 xs!533))) (toList!117 (right!713 (right!713 xs!533))) (toList!117 (left!710 ys!77))))))

(declare-fun b!29435 () Bool)

(assert (=> b!29435 (= e!15022 (appendAssoc!10 (toList!117 (left!710 xs!533)) (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 (left!710 ys!77)))))))

(declare-fun b!29436 () Bool)

(assert (=> b!29436 (= e!15026 e!15028)))

(declare-fun res!13514 () Bool)

(assert (=> b!29436 (=> res!13514 e!15028)))

(assert (=> b!29436 (= res!13514 (not (is-CC!65 (left!710 ys!77))))))

(declare-fun b!29437 () Bool)

(assert (=> b!29437 (= e!15027 (appendAssoc!10 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 (left!710 ys!77))))) (toList!117 (right!713 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77)))))))

(assert (= (and d!15431 (not res!13521)) b!29429))

(assert (= (and b!29429 res!13519) b!29430))

(assert (= (and b!29430 (not res!13516)) b!29434))

(assert (= (and b!29434 res!13515) b!29435))

(assert (= (and d!15431 res!13518) b!29436))

(assert (= (and b!29436 (not res!13514)) b!29432))

(assert (= (and b!29432 res!13513) b!29431))

(assert (= (and b!29431 (not res!13520)) b!29433))

(assert (= (and b!29433 res!13517) b!29437))

(assert (=> b!29437 m!30973))

(assert (=> b!29437 m!31141))

(declare-fun m!31403 () Bool)

(assert (=> b!29437 m!31403))

(assert (=> b!29437 m!30973))

(assert (=> b!29437 m!31403))

(assert (=> b!29437 m!31143))

(assert (=> b!29437 m!30979))

(declare-fun m!31405 () Bool)

(assert (=> b!29437 m!31405))

(assert (=> b!29437 m!30979))

(assert (=> b!29437 m!31143))

(assert (=> b!29437 m!31141))

(assert (=> b!29429 m!30985))

(assert (=> b!29429 m!30987))

(assert (=> b!29429 m!31005))

(assert (=> b!29429 m!30985))

(assert (=> b!29429 m!30987))

(assert (=> b!29429 m!31005))

(declare-fun m!31407 () Bool)

(assert (=> b!29429 m!31407))

(assert (=> b!29433 m!30973))

(assert (=> b!29433 m!31141))

(assert (=> b!29433 m!31143))

(assert (=> b!29433 m!30973))

(assert (=> b!29433 m!31141))

(assert (=> b!29433 m!31143))

(declare-fun m!31409 () Bool)

(assert (=> b!29433 m!31409))

(assert (=> b!29435 m!30995))

(assert (=> b!29435 m!30985))

(assert (=> b!29435 m!31005))

(assert (=> b!29435 m!30997))

(assert (=> b!29435 m!30985))

(assert (=> b!29435 m!30995))

(declare-fun m!31411 () Bool)

(assert (=> b!29435 m!31411))

(declare-fun m!31413 () Bool)

(assert (=> b!29435 m!31413))

(assert (=> b!29435 m!30997))

(assert (=> b!29435 m!31005))

(assert (=> b!29435 m!31411))

(assert (=> b!29434 m!30995))

(assert (=> b!29434 m!30997))

(assert (=> b!29434 m!31005))

(assert (=> b!29434 m!30995))

(assert (=> b!29434 m!30997))

(assert (=> b!29434 m!31005))

(declare-fun m!31415 () Bool)

(assert (=> b!29434 m!31415))

(assert (=> b!29432 m!30973))

(assert (=> b!29432 m!30975))

(assert (=> b!29432 m!30979))

(assert (=> b!29432 m!30973))

(assert (=> b!29432 m!30975))

(assert (=> b!29432 m!30979))

(assert (=> b!29432 m!30993))

(assert (=> b!29214 d!15431))

(assert (=> b!29218 d!15325))

(assert (=> b!29218 d!15307))

(assert (=> b!29218 d!15391))

(declare-fun b!29440 () Bool)

(declare-fun res!13523 () Bool)

(declare-fun e!15031 () Bool)

(assert (=> b!29440 (=> (not res!13523) (not e!15031))))

(assert (=> b!29440 (= res!13523 (concInv!60 (left!710 lt!5211)))))

(declare-fun b!29438 () Bool)

(declare-fun e!15032 () Bool)

(assert (=> b!29438 (= e!15032 e!15031)))

(declare-fun res!13524 () Bool)

(assert (=> b!29438 (=> (not res!13524) (not e!15031))))

(assert (=> b!29438 (= res!13524 (not (isEmpty!322 (left!710 lt!5211))))))

(declare-fun d!15433 () Bool)

(declare-fun res!13525 () Bool)

(assert (=> d!15433 (=> res!13525 e!15032)))

(assert (=> d!15433 (= res!13525 (not (is-CC!65 lt!5211)))))

(assert (=> d!15433 (= (concInv!60 lt!5211) e!15032)))

(declare-fun b!29439 () Bool)

(declare-fun res!13522 () Bool)

(assert (=> b!29439 (=> (not res!13522) (not e!15031))))

(assert (=> b!29439 (= res!13522 (not (isEmpty!322 (right!713 lt!5211))))))

(declare-fun b!29441 () Bool)

(assert (=> b!29441 (= e!15031 (concInv!60 (right!713 lt!5211)))))

(assert (= (and d!15433 (not res!13525)) b!29438))

(assert (= (and b!29438 res!13524) b!29439))

(assert (= (and b!29439 res!13522) b!29440))

(assert (= (and b!29440 res!13523) b!29441))

(declare-fun m!31417 () Bool)

(assert (=> b!29440 m!31417))

(declare-fun m!31419 () Bool)

(assert (=> b!29438 m!31419))

(declare-fun m!31421 () Bool)

(assert (=> b!29439 m!31421))

(declare-fun m!31423 () Bool)

(assert (=> b!29441 m!31423))

(assert (=> b!29213 d!15433))

(declare-fun d!15435 () Bool)

(assert (=> d!15435 (= (isEmpty!322 (left!710 res!5539)) (= (left!710 res!5539) Empty!76))))

(assert (=> b!29232 d!15435))

(declare-fun b!29445 () Bool)

(declare-fun e!15033 () Bool)

(assert (=> b!29445 (= e!15033 (balanced!61 (right!713 (left!710 res!5539))))))

(declare-fun b!29442 () Bool)

(declare-fun e!15034 () Bool)

(assert (=> b!29442 (= e!15034 e!15033)))

(declare-fun res!13528 () Bool)

(assert (=> b!29442 (=> (not res!13528) (not e!15033))))

(assert (=> b!29442 (= res!13528 (>= (- (level!54 (left!710 (left!710 res!5539))) (level!54 (right!713 (left!710 res!5539)))) (- 1)))))

(declare-fun d!15437 () Bool)

(declare-fun res!13527 () Bool)

(assert (=> d!15437 (=> res!13527 e!15034)))

(assert (=> d!15437 (= res!13527 (not (is-CC!65 (left!710 res!5539))))))

(assert (=> d!15437 (= (balanced!61 (left!710 res!5539)) e!15034)))

(declare-fun b!29444 () Bool)

(declare-fun res!13526 () Bool)

(assert (=> b!29444 (=> (not res!13526) (not e!15033))))

(assert (=> b!29444 (= res!13526 (balanced!61 (left!710 (left!710 res!5539))))))

(declare-fun b!29443 () Bool)

(declare-fun res!13529 () Bool)

(assert (=> b!29443 (=> (not res!13529) (not e!15033))))

(assert (=> b!29443 (= res!13529 (<= (- (level!54 (left!710 (left!710 res!5539))) (level!54 (right!713 (left!710 res!5539)))) 1))))

(assert (= (and d!15437 (not res!13527)) b!29442))

(assert (= (and b!29442 res!13528) b!29443))

(assert (= (and b!29443 res!13529) b!29444))

(assert (= (and b!29444 res!13526) b!29445))

(declare-fun m!31425 () Bool)

(assert (=> b!29445 m!31425))

(assert (=> b!29442 m!31227))

(assert (=> b!29442 m!31225))

(declare-fun m!31427 () Bool)

(assert (=> b!29444 m!31427))

(assert (=> b!29443 m!31227))

(assert (=> b!29443 m!31225))

(assert (=> b!29151 d!15437))

(assert (=> d!15319 d!15325))

(assert (=> d!15319 d!15307))

(assert (=> d!15319 d!15317))

(assert (=> b!29230 d!15427))

(assert (=> b!29220 d!15409))

(assert (=> b!29220 d!15407))

(assert (=> b!29229 d!15325))

(assert (=> b!29229 d!15323))

(declare-fun b!29446 () Bool)

(declare-fun e!15035 () Bool)

(assert (=> b!29446 (= e!15035 (= (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77)))) (++!42 (toList!117 xs!533) (++!42 (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))))))))

(declare-fun lt!5297 () Bool)

(assert (=> b!29446 (= lt!5297 (appendAssoc!10 (t!4376 (toList!117 xs!533)) (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))))))

(declare-fun d!15439 () Bool)

(assert (=> d!15439 e!15035))

(declare-fun c!6452 () Bool)

(assert (=> d!15439 (= c!6452 (is-Cons!356 (toList!117 xs!533)))))

(assert (=> d!15439 (= (appendAssoc!10 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))) true)))

(declare-fun b!29447 () Bool)

(assert (=> b!29447 (= e!15035 (= (++!42 (++!42 (toList!117 xs!533) (toList!117 (left!710 (left!710 ys!77)))) (toList!117 (right!713 (left!710 ys!77)))) (++!42 (toList!117 xs!533) (++!42 (toList!117 (left!710 (left!710 ys!77))) (toList!117 (right!713 (left!710 ys!77)))))))))

(assert (= (and d!15439 c!6452) b!29446))

(assert (= (and d!15439 (not c!6452)) b!29447))

(assert (=> b!29446 m!30973))

(assert (=> b!29446 m!31365))

(declare-fun m!31429 () Bool)

(assert (=> b!29446 m!31429))

(assert (=> b!29446 m!30973))

(assert (=> b!29446 m!30975))

(assert (=> b!29446 m!30977))

(assert (=> b!29446 m!30977))

(assert (=> b!29446 m!30979))

(assert (=> b!29446 m!31195))

(assert (=> b!29446 m!30975))

(assert (=> b!29446 m!30979))

(declare-fun m!31431 () Bool)

(assert (=> b!29446 m!31431))

(assert (=> b!29446 m!30975))

(assert (=> b!29446 m!30979))

(assert (=> b!29446 m!31365))

(assert (=> b!29447 m!30973))

(assert (=> b!29447 m!30975))

(assert (=> b!29447 m!30977))

(assert (=> b!29447 m!30977))

(assert (=> b!29447 m!30979))

(assert (=> b!29447 m!31195))

(assert (=> b!29447 m!30975))

(assert (=> b!29447 m!30979))

(assert (=> b!29447 m!31365))

(assert (=> b!29447 m!30973))

(assert (=> b!29447 m!31365))

(assert (=> b!29447 m!31429))

(assert (=> b!29114 d!15439))

(assert (=> b!29114 d!15351))

(assert (=> b!29114 d!15345))

(assert (=> b!29114 d!15349))

(declare-fun b!29448 () Bool)

(declare-fun e!15036 () Bool)

(assert (=> b!29448 (= e!15036 (= (++!42 (++!42 (toList!117 (left!710 (right!713 xs!533))) (toList!117 (right!713 (right!713 xs!533)))) (toList!117 ys!77)) (++!42 (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77)))))))

(declare-fun lt!5298 () Bool)

(assert (=> b!29448 (= lt!5298 (appendAssoc!10 (t!4376 (toList!117 (left!710 (right!713 xs!533)))) (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77)))))

(declare-fun d!15441 () Bool)

(assert (=> d!15441 e!15036))

(declare-fun c!6453 () Bool)

(assert (=> d!15441 (= c!6453 (is-Cons!356 (toList!117 (left!710 (right!713 xs!533)))))))

(assert (=> d!15441 (= (appendAssoc!10 (toList!117 (left!710 (right!713 xs!533))) (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77)) true)))

(declare-fun b!29449 () Bool)

(assert (=> b!29449 (= e!15036 (= (++!42 (++!42 (toList!117 (left!710 (right!713 xs!533))) (toList!117 (right!713 (right!713 xs!533)))) (toList!117 ys!77)) (++!42 (toList!117 (left!710 (right!713 xs!533))) (++!42 (toList!117 (right!713 (right!713 xs!533))) (toList!117 ys!77)))))))

(assert (= (and d!15441 c!6453) b!29448))

(assert (= (and d!15441 (not c!6453)) b!29449))

(assert (=> b!29448 m!30995))

(assert (=> b!29448 m!30999))

(assert (=> b!29448 m!31289))

(assert (=> b!29448 m!30995))

(assert (=> b!29448 m!30997))

(assert (=> b!29448 m!31333))

(assert (=> b!29448 m!31333))

(assert (=> b!29448 m!30989))

(declare-fun m!31433 () Bool)

(assert (=> b!29448 m!31433))

(assert (=> b!29448 m!30997))

(assert (=> b!29448 m!30989))

(declare-fun m!31435 () Bool)

(assert (=> b!29448 m!31435))

(assert (=> b!29448 m!30997))

(assert (=> b!29448 m!30989))

(assert (=> b!29448 m!30999))

(assert (=> b!29449 m!30995))

(assert (=> b!29449 m!30997))

(assert (=> b!29449 m!31333))

(assert (=> b!29449 m!31333))

(assert (=> b!29449 m!30989))

(assert (=> b!29449 m!31433))

(assert (=> b!29449 m!30997))

(assert (=> b!29449 m!30989))

(assert (=> b!29449 m!30999))

(assert (=> b!29449 m!30995))

(assert (=> b!29449 m!30999))

(assert (=> b!29449 m!31289))

(assert (=> b!29115 d!15441))

(assert (=> b!29115 d!15383))

(assert (=> b!29115 d!15381))

(assert (=> b!29115 d!15375))

(assert (=> b!29140 d!15369))

(assert (=> b!29140 d!15367))

(declare-fun b!29451 () Bool)

(declare-fun e!15037 () Int)

(declare-fun lt!5299 () Int)

(declare-fun lt!5300 () Int)

(assert (=> b!29451 (= e!15037 (+ 1 (ite (>= lt!5299 lt!5300) lt!5299 lt!5300)))))

(assert (=> b!29451 (= lt!5300 (level!54 (right!713 (right!713 (left!710 ys!77)))))))

(assert (=> b!29451 (= lt!5299 (level!54 (left!710 (right!713 (left!710 ys!77)))))))

(declare-fun d!15443 () Bool)

(declare-fun lt!5301 () Int)

(assert (=> d!15443 (>= lt!5301 0)))

(assert (=> d!15443 (= lt!5301 e!15037)))

(declare-fun c!6454 () Bool)

(assert (=> d!15443 (= c!6454 (or (is-Empty!76 (right!713 (left!710 ys!77))) (is-Single!65 (right!713 (left!710 ys!77)))))))

(assert (=> d!15443 (= (level!54 (right!713 (left!710 ys!77))) lt!5301)))

(declare-fun b!29450 () Bool)

(assert (=> b!29450 (= e!15037 0)))

(assert (= (and d!15443 c!6454) b!29450))

(assert (= (and d!15443 (not c!6454)) b!29451))

(declare-fun m!31437 () Bool)

(assert (=> b!29451 m!31437))

(declare-fun m!31439 () Bool)

(assert (=> b!29451 m!31439))

(assert (=> b!29227 d!15443))

(declare-fun b!29453 () Bool)

(declare-fun e!15038 () Int)

(declare-fun lt!5302 () Int)

(declare-fun lt!5303 () Int)

(assert (=> b!29453 (= e!15038 (+ 1 (ite (>= lt!5302 lt!5303) lt!5302 lt!5303)))))

(assert (=> b!29453 (= lt!5303 (level!54 (right!713 (left!710 (left!710 ys!77)))))))

(assert (=> b!29453 (= lt!5302 (level!54 (left!710 (left!710 (left!710 ys!77)))))))

(declare-fun d!15445 () Bool)

(declare-fun lt!5304 () Int)

(assert (=> d!15445 (>= lt!5304 0)))

(assert (=> d!15445 (= lt!5304 e!15038)))

(declare-fun c!6455 () Bool)

(assert (=> d!15445 (= c!6455 (or (is-Empty!76 (left!710 (left!710 ys!77))) (is-Single!65 (left!710 (left!710 ys!77)))))))

(assert (=> d!15445 (= (level!54 (left!710 (left!710 ys!77))) lt!5304)))

(declare-fun b!29452 () Bool)

(assert (=> b!29452 (= e!15038 0)))

(assert (= (and d!15445 c!6455) b!29452))

(assert (= (and d!15445 (not c!6455)) b!29453))

(declare-fun m!31441 () Bool)

(assert (=> b!29453 m!31441))

(declare-fun m!31443 () Bool)

(assert (=> b!29453 m!31443))

(assert (=> b!29227 d!15445))

(assert (=> b!29212 d!15333))

(declare-fun b!29454 () Bool)

(declare-fun e!15039 () Bool)

(declare-fun tp!6212 () Bool)

(declare-fun tp!6213 () Bool)

(assert (=> b!29454 (= e!15039 (and tp!6212 tp!6213))))

(declare-fun b!29455 () Bool)

(assert (=> b!29455 (= e!15039 tp_is_empty!177)))

(assert (=> b!29207 (= tp!6193 e!15039)))

(assert (= (and b!29207 (is-CC!65 (left!710 res!13420))) b!29454))

(assert (= (and b!29207 (is-Single!65 (left!710 res!13420))) b!29455))

(declare-fun b!29456 () Bool)

(declare-fun e!15040 () Bool)

(declare-fun tp!6214 () Bool)

(declare-fun tp!6215 () Bool)

(assert (=> b!29456 (= e!15040 (and tp!6214 tp!6215))))

(declare-fun b!29457 () Bool)

(assert (=> b!29457 (= e!15040 tp_is_empty!177)))

(assert (=> b!29207 (= tp!6192 e!15040)))

(assert (= (and b!29207 (is-CC!65 (right!713 res!13420))) b!29456))

(assert (= (and b!29207 (is-Single!65 (right!713 res!13420))) b!29457))

(declare-fun b!29458 () Bool)

(declare-fun e!15041 () Bool)

(declare-fun tp!6216 () Bool)

(declare-fun tp!6217 () Bool)

(assert (=> b!29458 (= e!15041 (and tp!6216 tp!6217))))

(declare-fun b!29459 () Bool)

(assert (=> b!29459 (= e!15041 tp_is_empty!177)))

(assert (=> b!29252 (= tp!6208 e!15041)))

(assert (= (and b!29252 (is-CC!65 (left!710 (right!713 xs!533)))) b!29458))

(assert (= (and b!29252 (is-Single!65 (left!710 (right!713 xs!533)))) b!29459))

(declare-fun b!29460 () Bool)

(declare-fun e!15042 () Bool)

(declare-fun tp!6218 () Bool)

(declare-fun tp!6219 () Bool)

(assert (=> b!29460 (= e!15042 (and tp!6218 tp!6219))))

(declare-fun b!29461 () Bool)

(assert (=> b!29461 (= e!15042 tp_is_empty!177)))

(assert (=> b!29252 (= tp!6209 e!15042)))

(assert (= (and b!29252 (is-CC!65 (right!713 (right!713 xs!533)))) b!29460))

(assert (= (and b!29252 (is-Single!65 (right!713 (right!713 xs!533)))) b!29461))

(declare-fun b!29462 () Bool)

(declare-fun e!15043 () Bool)

(declare-fun tp!6220 () Bool)

(declare-fun tp!6221 () Bool)

(assert (=> b!29462 (= e!15043 (and tp!6220 tp!6221))))

(declare-fun b!29463 () Bool)

(assert (=> b!29463 (= e!15043 tp_is_empty!177)))

(assert (=> b!29248 (= tp!6204 e!15043)))

(assert (= (and b!29248 (is-CC!65 (left!710 (right!713 res!5539)))) b!29462))

(assert (= (and b!29248 (is-Single!65 (left!710 (right!713 res!5539)))) b!29463))

(declare-fun b!29464 () Bool)

(declare-fun e!15044 () Bool)

(declare-fun tp!6222 () Bool)

(declare-fun tp!6223 () Bool)

(assert (=> b!29464 (= e!15044 (and tp!6222 tp!6223))))

(declare-fun b!29465 () Bool)

(assert (=> b!29465 (= e!15044 tp_is_empty!177)))

(assert (=> b!29248 (= tp!6205 e!15044)))

(assert (= (and b!29248 (is-CC!65 (right!713 (right!713 res!5539)))) b!29464))

(assert (= (and b!29248 (is-Single!65 (right!713 (right!713 res!5539)))) b!29465))

(declare-fun b!29466 () Bool)

(declare-fun e!15045 () Bool)

(declare-fun tp!6224 () Bool)

(declare-fun tp!6225 () Bool)

(assert (=> b!29466 (= e!15045 (and tp!6224 tp!6225))))

(declare-fun b!29467 () Bool)

(assert (=> b!29467 (= e!15045 tp_is_empty!177)))

(assert (=> b!29244 (= tp!6200 e!15045)))

(assert (= (and b!29244 (is-CC!65 (left!710 (right!713 ys!77)))) b!29466))

(assert (= (and b!29244 (is-Single!65 (left!710 (right!713 ys!77)))) b!29467))

(declare-fun b!29468 () Bool)

(declare-fun e!15046 () Bool)

(declare-fun tp!6226 () Bool)

(declare-fun tp!6227 () Bool)

(assert (=> b!29468 (= e!15046 (and tp!6226 tp!6227))))

(declare-fun b!29469 () Bool)

(assert (=> b!29469 (= e!15046 tp_is_empty!177)))

(assert (=> b!29244 (= tp!6201 e!15046)))

(assert (= (and b!29244 (is-CC!65 (right!713 (right!713 ys!77)))) b!29468))

(assert (= (and b!29244 (is-Single!65 (right!713 (right!713 ys!77)))) b!29469))

(declare-fun b!29470 () Bool)

(declare-fun e!15047 () Bool)

(declare-fun tp!6228 () Bool)

(declare-fun tp!6229 () Bool)

(assert (=> b!29470 (= e!15047 (and tp!6228 tp!6229))))

(declare-fun b!29471 () Bool)

(assert (=> b!29471 (= e!15047 tp_is_empty!177)))

(assert (=> b!29242 (= tp!6198 e!15047)))

(assert (= (and b!29242 (is-CC!65 (left!710 (left!710 ys!77)))) b!29470))

(assert (= (and b!29242 (is-Single!65 (left!710 (left!710 ys!77)))) b!29471))

(declare-fun b!29472 () Bool)

(declare-fun e!15048 () Bool)

(declare-fun tp!6230 () Bool)

(declare-fun tp!6231 () Bool)

(assert (=> b!29472 (= e!15048 (and tp!6230 tp!6231))))

(declare-fun b!29473 () Bool)

(assert (=> b!29473 (= e!15048 tp_is_empty!177)))

(assert (=> b!29242 (= tp!6199 e!15048)))

(assert (= (and b!29242 (is-CC!65 (right!713 (left!710 ys!77)))) b!29472))

(assert (= (and b!29242 (is-Single!65 (right!713 (left!710 ys!77)))) b!29473))

(declare-fun b!29474 () Bool)

(declare-fun e!15049 () Bool)

(declare-fun tp!6232 () Bool)

(declare-fun tp!6233 () Bool)

(assert (=> b!29474 (= e!15049 (and tp!6232 tp!6233))))

(declare-fun b!29475 () Bool)

(assert (=> b!29475 (= e!15049 tp_is_empty!177)))

(assert (=> b!29246 (= tp!6202 e!15049)))

(assert (= (and b!29246 (is-CC!65 (left!710 (left!710 res!5539)))) b!29474))

(assert (= (and b!29246 (is-Single!65 (left!710 (left!710 res!5539)))) b!29475))

(declare-fun b!29476 () Bool)

(declare-fun e!15050 () Bool)

(declare-fun tp!6234 () Bool)

(declare-fun tp!6235 () Bool)

(assert (=> b!29476 (= e!15050 (and tp!6234 tp!6235))))

(declare-fun b!29477 () Bool)

(assert (=> b!29477 (= e!15050 tp_is_empty!177)))

(assert (=> b!29246 (= tp!6203 e!15050)))

(assert (= (and b!29246 (is-CC!65 (right!713 (left!710 res!5539)))) b!29476))

(assert (= (and b!29246 (is-Single!65 (right!713 (left!710 res!5539)))) b!29477))

(declare-fun b!29478 () Bool)

(declare-fun e!15051 () Bool)

(declare-fun tp!6236 () Bool)

(declare-fun tp!6237 () Bool)

(assert (=> b!29478 (= e!15051 (and tp!6236 tp!6237))))

(declare-fun b!29479 () Bool)

(assert (=> b!29479 (= e!15051 tp_is_empty!177)))

(assert (=> b!29250 (= tp!6206 e!15051)))

(assert (= (and b!29250 (is-CC!65 (left!710 (left!710 xs!533)))) b!29478))

(assert (= (and b!29250 (is-Single!65 (left!710 (left!710 xs!533)))) b!29479))

(declare-fun b!29480 () Bool)

(declare-fun e!15052 () Bool)

(declare-fun tp!6238 () Bool)

(declare-fun tp!6239 () Bool)

(assert (=> b!29480 (= e!15052 (and tp!6238 tp!6239))))

(declare-fun b!29481 () Bool)

(assert (=> b!29481 (= e!15052 tp_is_empty!177)))

(assert (=> b!29250 (= tp!6207 e!15052)))

(assert (= (and b!29250 (is-CC!65 (right!713 (left!710 xs!533)))) b!29480))

(assert (= (and b!29250 (is-Single!65 (right!713 (left!710 xs!533)))) b!29481))

(push 1)

(assert (not b!29364))

(assert (not b!29370))

(assert (not b!29261))

(assert (not b!29414))

(assert (not d!15353))

(assert (not b!29462))

(assert (not b!29421))

(assert (not b!29256))

(assert (not b!29340))

(assert (not b!29260))

(assert (not d!15373))

(assert (not b!29438))

(assert (not b!29412))

(assert (not b!29428))

(assert (not b!29332))

(assert (not d!15393))

(assert (not b!29281))

(assert (not b!29265))

(assert (not b!29476))

(assert (not b!29422))

(assert (not b!29308))

(assert (not b!29413))

(assert (not b!29446))

(assert (not b!29268))

(assert (not b!29408))

(assert (not b!29344))

(assert (not b!29454))

(assert (not b!29282))

(assert (not b!29417))

(assert (not b!29440))

(assert (not b!29448))

(assert (not b!29429))

(assert (not b!29391))

(assert (not d!15381))

(assert (not b!29270))

(assert (not b!29466))

(assert (not b!29337))

(assert (not b!29449))

(assert (not b!29325))

(assert (not b!29380))

(assert (not b!29447))

(assert (not b!29445))

(assert (not b!29366))

(assert (not b!29460))

(assert (not b!29427))

(assert (not b!29275))

(assert (not b!29273))

(assert (not b!29435))

(assert (not b!29304))

(assert (not b!29278))

(assert (not b!29404))

(assert (not d!15351))

(assert (not b!29272))

(assert (not b!29257))

(assert (not b!29284))

(assert (not b!29379))

(assert (not d!15375))

(assert (not b!29396))

(assert (not b!29411))

(assert (not b!29403))

(assert (not b!29276))

(assert (not b!29274))

(assert (not d!15347))

(assert (not b!29410))

(assert (not b!29388))

(assert (not d!15339))

(assert (not b!29395))

(assert (not b!29376))

(assert (not b!29439))

(assert (not b!29382))

(assert (not b!29374))

(assert (not b!29378))

(assert (not b!29394))

(assert (not b!29397))

(assert (not b!29342))

(assert (not b!29390))

(assert (not b!29393))

(assert (not b!29352))

(assert (not b!29437))

(assert (not b!29258))

(assert (not b!29259))

(assert (not b!29415))

(assert (not b!29367))

(assert (not b!29369))

(assert (not b!29334))

(assert (not b!29418))

(assert (not b!29269))

(assert (not b!29400))

(assert (not d!15349))

(assert (not d!15389))

(assert (not b!29328))

(assert (not b!29330))

(assert (not b!29326))

(assert (not b!29409))

(assert tp_is_empty!177)

(assert (not b!29360))

(assert (not b!29356))

(assert (not b!29472))

(assert (not b!29402))

(assert (not b!29296))

(assert (not b!29319))

(assert (not b!29470))

(assert (not b!29318))

(assert (not b!29433))

(assert (not b!29480))

(assert (not b!29377))

(assert (not b!29453))

(assert (not b!29432))

(assert (not b!29442))

(assert (not b!29478))

(assert (not b!29424))

(assert (not b!29444))

(assert (not d!15345))

(assert (not b!29425))

(assert (not b!29434))

(assert (not b!29392))

(assert (not d!15413))

(assert (not b!29271))

(assert (not b!29387))

(assert (not b!29336))

(assert (not b!29464))

(assert (not b!29443))

(assert (not b!29255))

(assert (not d!15399))

(assert (not b!29389))

(assert (not b!29338))

(assert (not b!29346))

(assert (not b!29386))

(assert (not d!15377))

(assert (not b!29474))

(assert (not b!29279))

(assert (not b!29458))

(assert (not b!29283))

(assert (not b!29416))

(assert (not b!29423))

(assert (not b!29420))

(assert (not b!29267))

(assert (not b!29335))

(assert (not b!29426))

(assert (not b!29441))

(assert (not b!29468))

(assert (not b!29381))

(assert (not b!29264))

(assert (not b!29300))

(assert (not d!15385))

(assert (not b!29398))

(assert (not b!29419))

(assert (not b!29451))

(assert (not b!29456))

(assert (not b!29347))

(assert (not d!15383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

