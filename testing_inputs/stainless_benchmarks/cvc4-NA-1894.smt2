; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12676 () Bool)

(assert start!12676)

(declare-fun res!48957 () Bool)

(declare-fun e!50955 () Bool)

(assert (=> start!12676 (=> (not res!48957) (not e!50955))))

(declare-datatypes () ((A!4640 (A!4641 (val!255 Int)))))

(declare-datatypes () ((List!807 (Cons!746 (h!1180 A!4640) (t!49225 List!807)) (Nil!748))))

(declare-fun n!1878 () List!807)

(declare-fun i!658 () List!807)

(assert (=> start!12676 (= res!48957 (= n!1878 i!658))))

(assert (=> start!12676 e!50955))

(declare-fun e!50953 () Bool)

(assert (=> start!12676 e!50953))

(declare-fun e!50954 () Bool)

(assert (=> start!12676 e!50954))

(assert (=> start!12676 true))

(declare-fun b!93118 () Bool)

(declare-fun res!48956 () Bool)

(assert (=> b!93118 (=> (not res!48956) (not e!50955))))

(declare-fun x$2!581 () Int)

(declare-datatypes () ((List!808 (Cons!747 (h!1181 (_ BitVec 32)) (t!49226 List!808)) (Nil!749))))

(declare-fun rec2!13 (List!807 List!808 Int) Int)

(assert (=> b!93118 (= res!48956 (= x$2!581 (rec2!13 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) 2)))))

(declare-fun b!93119 () Bool)

(declare-fun size!916 (List!807) Int)

(assert (=> b!93119 (= e!50955 (not (= x$2!581 (+ (size!916 i!658) 9))))))

(declare-fun b!93121 () Bool)

(declare-fun tp_is_empty!515 () Bool)

(declare-fun tp!18027 () Bool)

(assert (=> b!93121 (= e!50954 (and tp_is_empty!515 tp!18027))))

(declare-fun b!93120 () Bool)

(declare-fun tp!18026 () Bool)

(assert (=> b!93120 (= e!50953 (and tp_is_empty!515 tp!18026))))

(assert (= (and start!12676 res!48957) b!93118))

(assert (= (and b!93118 res!48956) b!93119))

(assert (= (and start!12676 (is-Cons!746 n!1878)) b!93120))

(assert (= (and start!12676 (is-Cons!746 i!658)) b!93121))

(declare-fun m!88771 () Bool)

(assert (=> b!93118 m!88771))

(declare-fun m!88773 () Bool)

(assert (=> b!93119 m!88773))

(push 1)

(assert (not b!93119))

(assert tp_is_empty!515)

(assert (not b!93121))

(assert (not b!93120))

(assert (not b!93118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60876 () Bool)

(declare-fun lt!21109 () Int)

(assert (=> d!60876 (>= lt!21109 0)))

(declare-fun e!50958 () Int)

(assert (=> d!60876 (= lt!21109 e!50958)))

(declare-fun c!22771 () Bool)

(assert (=> d!60876 (= c!22771 (is-Nil!748 i!658))))

(assert (=> d!60876 (= (size!916 i!658) lt!21109)))

(declare-fun b!93126 () Bool)

(assert (=> b!93126 (= e!50958 0)))

(declare-fun b!93127 () Bool)

(assert (=> b!93127 (= e!50958 (+ 1 (size!916 (t!49225 i!658))))))

(assert (= (and d!60876 c!22771) b!93126))

(assert (= (and d!60876 (not c!22771)) b!93127))

(declare-fun m!88775 () Bool)

(assert (=> b!93127 m!88775))

(assert (=> b!93119 d!60876))

(declare-fun d!60878 () Bool)

(declare-fun size!917 (List!808) Int)

(declare-fun rec3!7 (List!807 List!808 (_ BitVec 32)) List!808)

(declare-fun head!1185 (List!808) (_ BitVec 32))

(assert (=> d!60878 (= (rec2!13 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) 2) (+ (+ (+ (size!917 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) 2) (size!916 i!658)) (size!916 i!658)))))

(declare-fun bs!42007 () Bool)

(assert (= bs!42007 d!60878))

(declare-fun m!88777 () Bool)

(assert (=> bs!42007 m!88777))

(declare-fun m!88779 () Bool)

(assert (=> bs!42007 m!88779))

(declare-fun m!88781 () Bool)

(assert (=> bs!42007 m!88781))

(assert (=> bs!42007 m!88773))

(assert (=> bs!42007 m!88777))

(assert (=> bs!42007 m!88779))

(assert (=> b!93118 d!60878))

(declare-fun b!93132 () Bool)

(declare-fun e!50961 () Bool)

(declare-fun tp!18030 () Bool)

(assert (=> b!93132 (= e!50961 (and tp_is_empty!515 tp!18030))))

(assert (=> b!93121 (= tp!18027 e!50961)))

(assert (= (and b!93121 (is-Cons!746 (t!49225 i!658))) b!93132))

(declare-fun b!93133 () Bool)

(declare-fun e!50962 () Bool)

(declare-fun tp!18031 () Bool)

(assert (=> b!93133 (= e!50962 (and tp_is_empty!515 tp!18031))))

(assert (=> b!93120 (= tp!18026 e!50962)))

(assert (= (and b!93120 (is-Cons!746 (t!49225 n!1878))) b!93133))

(push 1)

(assert (not b!93132))

(assert (not d!60878))

(assert tp_is_empty!515)

(assert (not b!93127))

(assert (not b!93133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60880 () Bool)

(declare-fun lt!21112 () Int)

(assert (=> d!60880 (>= lt!21112 0)))

(declare-fun e!50965 () Int)

(assert (=> d!60880 (= lt!21112 e!50965)))

(declare-fun c!22774 () Bool)

(assert (=> d!60880 (= c!22774 (is-Nil!749 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60880 (= (size!917 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) lt!21112)))

(declare-fun b!93138 () Bool)

(assert (=> b!93138 (= e!50965 0)))

(declare-fun b!93139 () Bool)

(assert (=> b!93139 (= e!50965 (+ 1 (size!917 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))

(assert (= (and d!60880 c!22774) b!93138))

(assert (= (and d!60880 (not c!22774)) b!93139))

(declare-fun m!88783 () Bool)

(assert (=> b!93139 m!88783))

(assert (=> d!60878 d!60880))

(declare-fun d!60882 () Bool)

(declare-fun $colon$colon!29 (List!808 (_ BitVec 32)) List!808)

(declare-fun rec1!15 (List!807 List!808) List!808)

(assert (=> d!60882 (= (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) ($colon$colon!29 (rec1!15 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(declare-fun bs!42008 () Bool)

(assert (= bs!42008 d!60882))

(declare-fun m!88785 () Bool)

(assert (=> bs!42008 m!88785))

(assert (=> bs!42008 m!88785))

(assert (=> bs!42008 m!88777))

(declare-fun m!88787 () Bool)

(assert (=> bs!42008 m!88787))

(assert (=> d!60878 d!60882))

(assert (=> d!60878 d!60876))

(declare-fun d!60884 () Bool)

(assert (=> d!60884 (= (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) #b00000000000000000000000000000001)))

(assert (=> d!60878 d!60884))

(declare-fun d!60886 () Bool)

(declare-fun lt!21113 () Int)

(assert (=> d!60886 (>= lt!21113 0)))

(declare-fun e!50966 () Int)

(assert (=> d!60886 (= lt!21113 e!50966)))

(declare-fun c!22775 () Bool)

(assert (=> d!60886 (= c!22775 (is-Nil!748 (t!49225 i!658)))))

(assert (=> d!60886 (= (size!916 (t!49225 i!658)) lt!21113)))

(declare-fun b!93140 () Bool)

(assert (=> b!93140 (= e!50966 0)))

(declare-fun b!93141 () Bool)

(assert (=> b!93141 (= e!50966 (+ 1 (size!916 (t!49225 (t!49225 i!658)))))))

(assert (= (and d!60886 c!22775) b!93140))

(assert (= (and d!60886 (not c!22775)) b!93141))

(declare-fun m!88789 () Bool)

(assert (=> b!93141 m!88789))

(assert (=> b!93127 d!60886))

(declare-fun b!93142 () Bool)

(declare-fun e!50967 () Bool)

(declare-fun tp!18032 () Bool)

(assert (=> b!93142 (= e!50967 (and tp_is_empty!515 tp!18032))))

(assert (=> b!93132 (= tp!18030 e!50967)))

(assert (= (and b!93132 (is-Cons!746 (t!49225 (t!49225 i!658)))) b!93142))

(declare-fun b!93143 () Bool)

(declare-fun e!50968 () Bool)

(declare-fun tp!18033 () Bool)

(assert (=> b!93143 (= e!50968 (and tp_is_empty!515 tp!18033))))

(assert (=> b!93133 (= tp!18031 e!50968)))

(assert (= (and b!93133 (is-Cons!746 (t!49225 (t!49225 n!1878)))) b!93143))

(push 1)

(assert (not d!60882))

(assert (not b!93143))

(assert tp_is_empty!515)

(assert (not b!93139))

(assert (not b!93141))

(assert (not b!93142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60888 () Bool)

(assert (=> d!60888 (= ($colon$colon!29 (rec1!15 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (Cons!747 (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (rec1!15 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(assert (=> d!60882 d!60888))

(declare-fun d!60890 () Bool)

(declare-fun ++!95 (List!808 List!808) List!808)

(assert (=> d!60890 (= (rec1!15 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (++!95 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))

(declare-fun bs!42009 () Bool)

(assert (= bs!42009 d!60890))

(declare-fun m!88791 () Bool)

(assert (=> bs!42009 m!88791))

(assert (=> d!60882 d!60890))

(declare-fun d!60892 () Bool)

(declare-fun lt!21114 () Int)

(assert (=> d!60892 (>= lt!21114 0)))

(declare-fun e!50969 () Int)

(assert (=> d!60892 (= lt!21114 e!50969)))

(declare-fun c!22776 () Bool)

(assert (=> d!60892 (= c!22776 (is-Nil!749 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))

(assert (=> d!60892 (= (size!917 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) lt!21114)))

(declare-fun b!93144 () Bool)

(assert (=> b!93144 (= e!50969 0)))

(declare-fun b!93145 () Bool)

(assert (=> b!93145 (= e!50969 (+ 1 (size!917 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))

(assert (= (and d!60892 c!22776) b!93144))

(assert (= (and d!60892 (not c!22776)) b!93145))

(declare-fun m!88793 () Bool)

(assert (=> b!93145 m!88793))

(assert (=> b!93139 d!60892))

(declare-fun d!60894 () Bool)

(declare-fun lt!21115 () Int)

(assert (=> d!60894 (>= lt!21115 0)))

(declare-fun e!50970 () Int)

(assert (=> d!60894 (= lt!21115 e!50970)))

(declare-fun c!22777 () Bool)

(assert (=> d!60894 (= c!22777 (is-Nil!748 (t!49225 (t!49225 i!658))))))

(assert (=> d!60894 (= (size!916 (t!49225 (t!49225 i!658))) lt!21115)))

(declare-fun b!93146 () Bool)

(assert (=> b!93146 (= e!50970 0)))

(declare-fun b!93147 () Bool)

(assert (=> b!93147 (= e!50970 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 i!658))))))))

(assert (= (and d!60894 c!22777) b!93146))

(assert (= (and d!60894 (not c!22777)) b!93147))

(declare-fun m!88795 () Bool)

(assert (=> b!93147 m!88795))

(assert (=> b!93141 d!60894))

(declare-fun b!93148 () Bool)

(declare-fun e!50971 () Bool)

(declare-fun tp!18034 () Bool)

(assert (=> b!93148 (= e!50971 (and tp_is_empty!515 tp!18034))))

(assert (=> b!93143 (= tp!18033 e!50971)))

(assert (= (and b!93143 (is-Cons!746 (t!49225 (t!49225 (t!49225 n!1878))))) b!93148))

(declare-fun b!93149 () Bool)

(declare-fun e!50972 () Bool)

(declare-fun tp!18035 () Bool)

(assert (=> b!93149 (= e!50972 (and tp_is_empty!515 tp!18035))))

(assert (=> b!93142 (= tp!18032 e!50972)))

(assert (= (and b!93142 (is-Cons!746 (t!49225 (t!49225 (t!49225 i!658))))) b!93149))

(push 1)

(assert (not d!60890))

(assert (not b!93145))

(assert tp_is_empty!515)

(assert (not b!93147))

(assert (not b!93148))

(assert (not b!93149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60896 () Bool)

(declare-fun lt!21116 () Int)

(assert (=> d!60896 (>= lt!21116 0)))

(declare-fun e!50973 () Int)

(assert (=> d!60896 (= lt!21116 e!50973)))

(declare-fun c!22778 () Bool)

(assert (=> d!60896 (= c!22778 (is-Nil!748 (t!49225 (t!49225 (t!49225 i!658)))))))

(assert (=> d!60896 (= (size!916 (t!49225 (t!49225 (t!49225 i!658)))) lt!21116)))

(declare-fun b!93150 () Bool)

(assert (=> b!93150 (= e!50973 0)))

(declare-fun b!93151 () Bool)

(assert (=> b!93151 (= e!50973 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))

(assert (= (and d!60896 c!22778) b!93150))

(assert (= (and d!60896 (not c!22778)) b!93151))

(declare-fun m!88797 () Bool)

(assert (=> b!93151 m!88797))

(assert (=> b!93147 d!60896))

(declare-fun b!93160 () Bool)

(declare-fun e!50978 () List!808)

(assert (=> b!93160 (= e!50978 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))

(declare-fun b!93161 () Bool)

(assert (=> b!93161 (= e!50978 (Cons!747 (h!1181 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (++!95 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(declare-fun b!93162 () Bool)

(declare-fun res!48964 () Bool)

(declare-fun e!50979 () Bool)

(assert (=> b!93162 (=> (not res!48964) (not e!50979))))

(declare-fun lt!21119 () List!808)

(assert (=> b!93162 (= res!48964 (= (size!917 lt!21119) (+ (size!917 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (size!917 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(declare-fun d!60898 () Bool)

(assert (=> d!60898 e!50979))

(declare-fun res!48963 () Bool)

(assert (=> d!60898 (=> (not res!48963) (not e!50979))))

(declare-fun content!183 (List!808) (Set (_ BitVec 32)))

(assert (=> d!60898 (= res!48963 (= (content!183 lt!21119) (union (content!183 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (content!183 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60898 (= lt!21119 e!50978)))

(declare-fun c!22781 () Bool)

(assert (=> d!60898 (= c!22781 (is-Nil!749 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))

(assert (=> d!60898 (= (++!95 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) lt!21119)))

(declare-fun b!93163 () Bool)

(assert (=> b!93163 (= e!50979 (or (not (= (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) Nil!749)) (= lt!21119 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(assert (= (and d!60898 c!22781) b!93160))

(assert (= (and d!60898 (not c!22781)) b!93161))

(assert (= (and d!60898 res!48963) b!93162))

(assert (= (and b!93162 res!48964) b!93163))

(declare-fun m!88799 () Bool)

(assert (=> b!93161 m!88799))

(declare-fun m!88801 () Bool)

(assert (=> b!93162 m!88801))

(declare-fun m!88803 () Bool)

(assert (=> b!93162 m!88803))

(assert (=> b!93162 m!88803))

(declare-fun m!88805 () Bool)

(assert (=> d!60898 m!88805))

(declare-fun m!88807 () Bool)

(assert (=> d!60898 m!88807))

(assert (=> d!60898 m!88807))

(assert (=> d!60890 d!60898))

(declare-fun d!60900 () Bool)

(declare-fun lt!21120 () Int)

(assert (=> d!60900 (>= lt!21120 0)))

(declare-fun e!50980 () Int)

(assert (=> d!60900 (= lt!21120 e!50980)))

(declare-fun c!22782 () Bool)

(assert (=> d!60900 (= c!22782 (is-Nil!749 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))

(assert (=> d!60900 (= (size!917 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))) lt!21120)))

(declare-fun b!93164 () Bool)

(assert (=> b!93164 (= e!50980 0)))

(declare-fun b!93165 () Bool)

(assert (=> b!93165 (= e!50980 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))

(assert (= (and d!60900 c!22782) b!93164))

(assert (= (and d!60900 (not c!22782)) b!93165))

(declare-fun m!88809 () Bool)

(assert (=> b!93165 m!88809))

(assert (=> b!93145 d!60900))

(declare-fun b!93166 () Bool)

(declare-fun e!50981 () Bool)

(declare-fun tp!18036 () Bool)

(assert (=> b!93166 (= e!50981 (and tp_is_empty!515 tp!18036))))

(assert (=> b!93149 (= tp!18035 e!50981)))

(assert (= (and b!93149 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))) b!93166))

(declare-fun b!93167 () Bool)

(declare-fun e!50982 () Bool)

(declare-fun tp!18037 () Bool)

(assert (=> b!93167 (= e!50982 (and tp_is_empty!515 tp!18037))))

(assert (=> b!93148 (= tp!18034 e!50982)))

(assert (= (and b!93148 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 n!1878)))))) b!93167))

(push 1)

(assert (not b!93151))

(assert (not b!93166))

(assert (not b!93161))

(assert (not b!93165))

(assert tp_is_empty!515)

(assert (not b!93167))

(assert (not d!60898))

(assert (not b!93162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60902 () Bool)

(declare-fun lt!21121 () Int)

(assert (=> d!60902 (>= lt!21121 0)))

(declare-fun e!50983 () Int)

(assert (=> d!60902 (= lt!21121 e!50983)))

(declare-fun c!22783 () Bool)

(assert (=> d!60902 (= c!22783 (is-Nil!749 lt!21119))))

(assert (=> d!60902 (= (size!917 lt!21119) lt!21121)))

(declare-fun b!93168 () Bool)

(assert (=> b!93168 (= e!50983 0)))

(declare-fun b!93169 () Bool)

(assert (=> b!93169 (= e!50983 (+ 1 (size!917 (t!49226 lt!21119))))))

(assert (= (and d!60902 c!22783) b!93168))

(assert (= (and d!60902 (not c!22783)) b!93169))

(declare-fun m!88811 () Bool)

(assert (=> b!93169 m!88811))

(assert (=> b!93162 d!60902))

(declare-fun d!60904 () Bool)

(declare-fun lt!21122 () Int)

(assert (=> d!60904 (>= lt!21122 0)))

(declare-fun e!50984 () Int)

(assert (=> d!60904 (= lt!21122 e!50984)))

(declare-fun c!22784 () Bool)

(assert (=> d!60904 (= c!22784 (is-Nil!749 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))

(assert (=> d!60904 (= (size!917 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) lt!21122)))

(declare-fun b!93170 () Bool)

(assert (=> b!93170 (= e!50984 0)))

(declare-fun b!93171 () Bool)

(assert (=> b!93171 (= e!50984 (+ 1 (size!917 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (= (and d!60904 c!22784) b!93170))

(assert (= (and d!60904 (not c!22784)) b!93171))

(declare-fun m!88813 () Bool)

(assert (=> b!93171 m!88813))

(assert (=> b!93162 d!60904))

(declare-fun b!93172 () Bool)

(declare-fun e!50985 () List!808)

(assert (=> b!93172 (= e!50985 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))

(declare-fun b!93173 () Bool)

(assert (=> b!93173 (= e!50985 (Cons!747 (h!1181 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (++!95 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(declare-fun b!93174 () Bool)

(declare-fun res!48966 () Bool)

(declare-fun e!50986 () Bool)

(assert (=> b!93174 (=> (not res!48966) (not e!50986))))

(declare-fun lt!21123 () List!808)

(assert (=> b!93174 (= res!48966 (= (size!917 lt!21123) (+ (size!917 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (size!917 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(declare-fun d!60906 () Bool)

(assert (=> d!60906 e!50986))

(declare-fun res!48965 () Bool)

(assert (=> d!60906 (=> (not res!48965) (not e!50986))))

(assert (=> d!60906 (= res!48965 (= (content!183 lt!21123) (union (content!183 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (content!183 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60906 (= lt!21123 e!50985)))

(declare-fun c!22785 () Bool)

(assert (=> d!60906 (= c!22785 (is-Nil!749 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(assert (=> d!60906 (= (++!95 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) lt!21123)))

(declare-fun b!93175 () Bool)

(assert (=> b!93175 (= e!50986 (or (not (= (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) Nil!749)) (= lt!21123 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (= (and d!60906 c!22785) b!93172))

(assert (= (and d!60906 (not c!22785)) b!93173))

(assert (= (and d!60906 res!48965) b!93174))

(assert (= (and b!93174 res!48966) b!93175))

(declare-fun m!88815 () Bool)

(assert (=> b!93173 m!88815))

(declare-fun m!88817 () Bool)

(assert (=> b!93174 m!88817))

(assert (=> b!93174 m!88813))

(assert (=> b!93174 m!88803))

(declare-fun m!88819 () Bool)

(assert (=> d!60906 m!88819))

(declare-fun m!88821 () Bool)

(assert (=> d!60906 m!88821))

(assert (=> d!60906 m!88807))

(assert (=> b!93161 d!60906))

(declare-fun d!60908 () Bool)

(declare-fun c!22788 () Bool)

(assert (=> d!60908 (= c!22788 (is-Nil!749 lt!21119))))

(declare-fun e!50989 () (Set (_ BitVec 32)))

(assert (=> d!60908 (= (content!183 lt!21119) e!50989)))

(declare-fun b!93180 () Bool)

(assert (=> b!93180 (= e!50989 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93181 () Bool)

(assert (=> b!93181 (= e!50989 (union (insert (h!1181 lt!21119) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 lt!21119))))))

(assert (= (and d!60908 c!22788) b!93180))

(assert (= (and d!60908 (not c!22788)) b!93181))

(declare-fun m!88823 () Bool)

(assert (=> b!93181 m!88823))

(declare-fun m!88825 () Bool)

(assert (=> b!93181 m!88825))

(assert (=> d!60898 d!60908))

(declare-fun d!60910 () Bool)

(assert (=> d!60910 (= (content!183 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) (insert #b00000000000000000000000000000010 #b00000000000000000000000000000011 (singleton #b00000000000000000000000000000001)))))

(assert (=> d!60898 d!60910))

(declare-fun d!60912 () Bool)

(declare-fun lt!21124 () Int)

(assert (=> d!60912 (>= lt!21124 0)))

(declare-fun e!50990 () Int)

(assert (=> d!60912 (= lt!21124 e!50990)))

(declare-fun c!22789 () Bool)

(assert (=> d!60912 (= c!22789 (is-Nil!749 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))

(assert (=> d!60912 (= (size!917 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))) lt!21124)))

(declare-fun b!93182 () Bool)

(assert (=> b!93182 (= e!50990 0)))

(declare-fun b!93183 () Bool)

(assert (=> b!93183 (= e!50990 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))

(assert (= (and d!60912 c!22789) b!93182))

(assert (= (and d!60912 (not c!22789)) b!93183))

(declare-fun m!88827 () Bool)

(assert (=> b!93183 m!88827))

(assert (=> b!93165 d!60912))

(declare-fun d!60914 () Bool)

(declare-fun lt!21125 () Int)

(assert (=> d!60914 (>= lt!21125 0)))

(declare-fun e!50991 () Int)

(assert (=> d!60914 (= lt!21125 e!50991)))

(declare-fun c!22790 () Bool)

(assert (=> d!60914 (= c!22790 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))

(assert (=> d!60914 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))) lt!21125)))

(declare-fun b!93184 () Bool)

(assert (=> b!93184 (= e!50991 0)))

(declare-fun b!93185 () Bool)

(assert (=> b!93185 (= e!50991 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))

(assert (= (and d!60914 c!22790) b!93184))

(assert (= (and d!60914 (not c!22790)) b!93185))

(declare-fun m!88829 () Bool)

(assert (=> b!93185 m!88829))

(assert (=> b!93151 d!60914))

(declare-fun b!93186 () Bool)

(declare-fun e!50992 () Bool)

(declare-fun tp!18038 () Bool)

(assert (=> b!93186 (= e!50992 (and tp_is_empty!515 tp!18038))))

(assert (=> b!93167 (= tp!18037 e!50992)))

(assert (= (and b!93167 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878))))))) b!93186))

(declare-fun b!93187 () Bool)

(declare-fun e!50993 () Bool)

(declare-fun tp!18039 () Bool)

(assert (=> b!93187 (= e!50993 (and tp_is_empty!515 tp!18039))))

(assert (=> b!93166 (= tp!18036 e!50993)))

(assert (= (and b!93166 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))) b!93187))

(push 1)

(assert (not b!93185))

(assert (not b!93181))

(assert (not b!93169))

(assert (not b!93187))

(assert (not b!93171))

(assert (not d!60906))

(assert (not b!93186))

(assert tp_is_empty!515)

(assert (not b!93183))

(assert (not b!93174))

(assert (not b!93173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60916 () Bool)

(declare-fun lt!21126 () Int)

(assert (=> d!60916 (>= lt!21126 0)))

(declare-fun e!50994 () Int)

(assert (=> d!60916 (= lt!21126 e!50994)))

(declare-fun c!22791 () Bool)

(assert (=> d!60916 (= c!22791 (is-Nil!749 lt!21123))))

(assert (=> d!60916 (= (size!917 lt!21123) lt!21126)))

(declare-fun b!93188 () Bool)

(assert (=> b!93188 (= e!50994 0)))

(declare-fun b!93189 () Bool)

(assert (=> b!93189 (= e!50994 (+ 1 (size!917 (t!49226 lt!21123))))))

(assert (= (and d!60916 c!22791) b!93188))

(assert (= (and d!60916 (not c!22791)) b!93189))

(declare-fun m!88831 () Bool)

(assert (=> b!93189 m!88831))

(assert (=> b!93174 d!60916))

(declare-fun d!60918 () Bool)

(declare-fun lt!21127 () Int)

(assert (=> d!60918 (>= lt!21127 0)))

(declare-fun e!50995 () Int)

(assert (=> d!60918 (= lt!21127 e!50995)))

(declare-fun c!22792 () Bool)

(assert (=> d!60918 (= c!22792 (is-Nil!749 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(assert (=> d!60918 (= (size!917 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) lt!21127)))

(declare-fun b!93190 () Bool)

(assert (=> b!93190 (= e!50995 0)))

(declare-fun b!93191 () Bool)

(assert (=> b!93191 (= e!50995 (+ 1 (size!917 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))

(assert (= (and d!60918 c!22792) b!93190))

(assert (= (and d!60918 (not c!22792)) b!93191))

(declare-fun m!88833 () Bool)

(assert (=> b!93191 m!88833))

(assert (=> b!93174 d!60918))

(assert (=> b!93174 d!60904))

(declare-fun d!60920 () Bool)

(declare-fun c!22793 () Bool)

(assert (=> d!60920 (= c!22793 (is-Nil!749 lt!21123))))

(declare-fun e!50996 () (Set (_ BitVec 32)))

(assert (=> d!60920 (= (content!183 lt!21123) e!50996)))

(declare-fun b!93192 () Bool)

(assert (=> b!93192 (= e!50996 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93193 () Bool)

(assert (=> b!93193 (= e!50996 (union (insert (h!1181 lt!21123) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 lt!21123))))))

(assert (= (and d!60920 c!22793) b!93192))

(assert (= (and d!60920 (not c!22793)) b!93193))

(declare-fun m!88835 () Bool)

(assert (=> b!93193 m!88835))

(declare-fun m!88837 () Bool)

(assert (=> b!93193 m!88837))

(assert (=> d!60906 d!60920))

(declare-fun d!60922 () Bool)

(assert (=> d!60922 (= (content!183 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (insert #b00000000000000000000000000000011 (singleton #b00000000000000000000000000000010)))))

(assert (=> d!60906 d!60922))

(assert (=> d!60906 d!60910))

(declare-fun d!60924 () Bool)

(declare-fun c!22794 () Bool)

(assert (=> d!60924 (= c!22794 (is-Nil!749 (t!49226 lt!21119)))))

(declare-fun e!50997 () (Set (_ BitVec 32)))

(assert (=> d!60924 (= (content!183 (t!49226 lt!21119)) e!50997)))

(declare-fun b!93194 () Bool)

(assert (=> b!93194 (= e!50997 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93195 () Bool)

(assert (=> b!93195 (= e!50997 (union (insert (h!1181 (t!49226 lt!21119)) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 lt!21119)))))))

(assert (= (and d!60924 c!22794) b!93194))

(assert (= (and d!60924 (not c!22794)) b!93195))

(declare-fun m!88839 () Bool)

(assert (=> b!93195 m!88839))

(declare-fun m!88841 () Bool)

(assert (=> b!93195 m!88841))

(assert (=> b!93181 d!60924))

(declare-fun d!60926 () Bool)

(declare-fun lt!21128 () Int)

(assert (=> d!60926 (>= lt!21128 0)))

(declare-fun e!50998 () Int)

(assert (=> d!60926 (= lt!21128 e!50998)))

(declare-fun c!22795 () Bool)

(assert (=> d!60926 (= c!22795 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))

(assert (=> d!60926 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))) lt!21128)))

(declare-fun b!93196 () Bool)

(assert (=> b!93196 (= e!50998 0)))

(declare-fun b!93197 () Bool)

(assert (=> b!93197 (= e!50998 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))))

(assert (= (and d!60926 c!22795) b!93196))

(assert (= (and d!60926 (not c!22795)) b!93197))

(declare-fun m!88843 () Bool)

(assert (=> b!93197 m!88843))

(assert (=> b!93185 d!60926))

(declare-fun d!60928 () Bool)

(declare-fun lt!21129 () Int)

(assert (=> d!60928 (>= lt!21129 0)))

(declare-fun e!50999 () Int)

(assert (=> d!60928 (= lt!21129 e!50999)))

(declare-fun c!22796 () Bool)

(assert (=> d!60928 (= c!22796 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))

(assert (=> d!60928 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))) lt!21129)))

(declare-fun b!93198 () Bool)

(assert (=> b!93198 (= e!50999 0)))

(declare-fun b!93199 () Bool)

(assert (=> b!93199 (= e!50999 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))))

(assert (= (and d!60928 c!22796) b!93198))

(assert (= (and d!60928 (not c!22796)) b!93199))

(declare-fun m!88845 () Bool)

(assert (=> b!93199 m!88845))

(assert (=> b!93183 d!60928))

(assert (=> b!93171 d!60918))

(declare-fun d!60930 () Bool)

(declare-fun lt!21130 () Int)

(assert (=> d!60930 (>= lt!21130 0)))

(declare-fun e!51000 () Int)

(assert (=> d!60930 (= lt!21130 e!51000)))

(declare-fun c!22797 () Bool)

(assert (=> d!60930 (= c!22797 (is-Nil!749 (t!49226 lt!21119)))))

(assert (=> d!60930 (= (size!917 (t!49226 lt!21119)) lt!21130)))

(declare-fun b!93200 () Bool)

(assert (=> b!93200 (= e!51000 0)))

(declare-fun b!93201 () Bool)

(assert (=> b!93201 (= e!51000 (+ 1 (size!917 (t!49226 (t!49226 lt!21119)))))))

(assert (= (and d!60930 c!22797) b!93200))

(assert (= (and d!60930 (not c!22797)) b!93201))

(declare-fun m!88847 () Bool)

(assert (=> b!93201 m!88847))

(assert (=> b!93169 d!60930))

(declare-fun b!93202 () Bool)

(declare-fun e!51001 () List!808)

(assert (=> b!93202 (= e!51001 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))

(declare-fun b!93203 () Bool)

(assert (=> b!93203 (= e!51001 (Cons!747 (h!1181 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) (++!95 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(declare-fun b!93204 () Bool)

(declare-fun res!48968 () Bool)

(declare-fun e!51002 () Bool)

(assert (=> b!93204 (=> (not res!48968) (not e!51002))))

(declare-fun lt!21131 () List!808)

(assert (=> b!93204 (= res!48968 (= (size!917 lt!21131) (+ (size!917 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) (size!917 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(declare-fun d!60932 () Bool)

(assert (=> d!60932 e!51002))

(declare-fun res!48967 () Bool)

(assert (=> d!60932 (=> (not res!48967) (not e!51002))))

(assert (=> d!60932 (= res!48967 (= (content!183 lt!21131) (union (content!183 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) (content!183 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60932 (= lt!21131 e!51001)))

(declare-fun c!22798 () Bool)

(assert (=> d!60932 (= c!22798 (is-Nil!749 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60932 (= (++!95 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) lt!21131)))

(declare-fun b!93205 () Bool)

(assert (=> b!93205 (= e!51002 (or (not (= (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) Nil!749)) (= lt!21131 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))

(assert (= (and d!60932 c!22798) b!93202))

(assert (= (and d!60932 (not c!22798)) b!93203))

(assert (= (and d!60932 res!48967) b!93204))

(assert (= (and b!93204 res!48968) b!93205))

(declare-fun m!88849 () Bool)

(assert (=> b!93203 m!88849))

(declare-fun m!88851 () Bool)

(assert (=> b!93204 m!88851))

(assert (=> b!93204 m!88833))

(assert (=> b!93204 m!88803))

(declare-fun m!88853 () Bool)

(assert (=> d!60932 m!88853))

(declare-fun m!88855 () Bool)

(assert (=> d!60932 m!88855))

(assert (=> d!60932 m!88807))

(assert (=> b!93173 d!60932))

(declare-fun b!93206 () Bool)

(declare-fun e!51003 () Bool)

(declare-fun tp!18040 () Bool)

(assert (=> b!93206 (= e!51003 (and tp_is_empty!515 tp!18040))))

(assert (=> b!93187 (= tp!18039 e!51003)))

(assert (= (and b!93187 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))) b!93206))

(declare-fun b!93207 () Bool)

(declare-fun e!51004 () Bool)

(declare-fun tp!18041 () Bool)

(assert (=> b!93207 (= e!51004 (and tp_is_empty!515 tp!18041))))

(assert (=> b!93186 (= tp!18038 e!51004)))

(assert (= (and b!93186 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878)))))))) b!93207))

(push 1)

(assert (not b!93189))

(assert (not d!60932))

(assert (not b!93197))

(assert (not b!93204))

(assert (not b!93193))

(assert tp_is_empty!515)

(assert (not b!93201))

(assert (not b!93207))

(assert (not b!93199))

(assert (not b!93203))

(assert (not b!93191))

(assert (not b!93206))

(assert (not b!93195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60934 () Bool)

(declare-fun lt!21132 () Int)

(assert (=> d!60934 (>= lt!21132 0)))

(declare-fun e!51005 () Int)

(assert (=> d!60934 (= lt!21132 e!51005)))

(declare-fun c!22799 () Bool)

(assert (=> d!60934 (= c!22799 (is-Nil!749 (t!49226 lt!21123)))))

(assert (=> d!60934 (= (size!917 (t!49226 lt!21123)) lt!21132)))

(declare-fun b!93208 () Bool)

(assert (=> b!93208 (= e!51005 0)))

(declare-fun b!93209 () Bool)

(assert (=> b!93209 (= e!51005 (+ 1 (size!917 (t!49226 (t!49226 lt!21123)))))))

(assert (= (and d!60934 c!22799) b!93208))

(assert (= (and d!60934 (not c!22799)) b!93209))

(declare-fun m!88857 () Bool)

(assert (=> b!93209 m!88857))

(assert (=> b!93189 d!60934))

(declare-fun d!60936 () Bool)

(declare-fun c!22800 () Bool)

(assert (=> d!60936 (= c!22800 (is-Nil!749 lt!21131))))

(declare-fun e!51006 () (Set (_ BitVec 32)))

(assert (=> d!60936 (= (content!183 lt!21131) e!51006)))

(declare-fun b!93210 () Bool)

(assert (=> b!93210 (= e!51006 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93211 () Bool)

(assert (=> b!93211 (= e!51006 (union (insert (h!1181 lt!21131) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 lt!21131))))))

(assert (= (and d!60936 c!22800) b!93210))

(assert (= (and d!60936 (not c!22800)) b!93211))

(declare-fun m!88859 () Bool)

(assert (=> b!93211 m!88859))

(declare-fun m!88861 () Bool)

(assert (=> b!93211 m!88861))

(assert (=> d!60932 d!60936))

(declare-fun d!60938 () Bool)

(assert (=> d!60938 (= (content!183 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) (singleton #b00000000000000000000000000000011))))

(assert (=> d!60932 d!60938))

(assert (=> d!60932 d!60910))

(declare-fun d!60940 () Bool)

(declare-fun lt!21133 () Int)

(assert (=> d!60940 (>= lt!21133 0)))

(declare-fun e!51007 () Int)

(assert (=> d!60940 (= lt!21133 e!51007)))

(declare-fun c!22801 () Bool)

(assert (=> d!60940 (= c!22801 (is-Nil!749 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60940 (= (size!917 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) lt!21133)))

(declare-fun b!93212 () Bool)

(assert (=> b!93212 (= e!51007 0)))

(declare-fun b!93213 () Bool)

(assert (=> b!93213 (= e!51007 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))

(assert (= (and d!60940 c!22801) b!93212))

(assert (= (and d!60940 (not c!22801)) b!93213))

(declare-fun m!88863 () Bool)

(assert (=> b!93213 m!88863))

(assert (=> b!93191 d!60940))

(declare-fun d!60942 () Bool)

(declare-fun lt!21134 () Int)

(assert (=> d!60942 (>= lt!21134 0)))

(declare-fun e!51008 () Int)

(assert (=> d!60942 (= lt!21134 e!51008)))

(declare-fun c!22802 () Bool)

(assert (=> d!60942 (= c!22802 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))

(assert (=> d!60942 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))) lt!21134)))

(declare-fun b!93214 () Bool)

(assert (=> b!93214 (= e!51008 0)))

(declare-fun b!93215 () Bool)

(assert (=> b!93215 (= e!51008 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))))

(assert (= (and d!60942 c!22802) b!93214))

(assert (= (and d!60942 (not c!22802)) b!93215))

(declare-fun m!88865 () Bool)

(assert (=> b!93215 m!88865))

(assert (=> b!93197 d!60942))

(declare-fun d!60944 () Bool)

(declare-fun lt!21135 () Int)

(assert (=> d!60944 (>= lt!21135 0)))

(declare-fun e!51009 () Int)

(assert (=> d!60944 (= lt!21135 e!51009)))

(declare-fun c!22803 () Bool)

(assert (=> d!60944 (= c!22803 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))

(assert (=> d!60944 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))) lt!21135)))

(declare-fun b!93216 () Bool)

(assert (=> b!93216 (= e!51009 0)))

(declare-fun b!93217 () Bool)

(assert (=> b!93217 (= e!51009 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))))

(assert (= (and d!60944 c!22803) b!93216))

(assert (= (and d!60944 (not c!22803)) b!93217))

(declare-fun m!88867 () Bool)

(assert (=> b!93217 m!88867))

(assert (=> b!93199 d!60944))

(declare-fun d!60946 () Bool)

(declare-fun c!22804 () Bool)

(assert (=> d!60946 (= c!22804 (is-Nil!749 (t!49226 lt!21123)))))

(declare-fun e!51010 () (Set (_ BitVec 32)))

(assert (=> d!60946 (= (content!183 (t!49226 lt!21123)) e!51010)))

(declare-fun b!93218 () Bool)

(assert (=> b!93218 (= e!51010 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93219 () Bool)

(assert (=> b!93219 (= e!51010 (union (insert (h!1181 (t!49226 lt!21123)) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 lt!21123)))))))

(assert (= (and d!60946 c!22804) b!93218))

(assert (= (and d!60946 (not c!22804)) b!93219))

(declare-fun m!88869 () Bool)

(assert (=> b!93219 m!88869))

(declare-fun m!88871 () Bool)

(assert (=> b!93219 m!88871))

(assert (=> b!93193 d!60946))

(declare-fun b!93220 () Bool)

(declare-fun e!51011 () List!808)

(assert (=> b!93220 (= e!51011 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))

(declare-fun b!93221 () Bool)

(assert (=> b!93221 (= e!51011 (Cons!747 (h!1181 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) (++!95 (t!49226 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))

(declare-fun b!93222 () Bool)

(declare-fun res!48970 () Bool)

(declare-fun e!51012 () Bool)

(assert (=> b!93222 (=> (not res!48970) (not e!51012))))

(declare-fun lt!21136 () List!808)

(assert (=> b!93222 (= res!48970 (= (size!917 lt!21136) (+ (size!917 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) (size!917 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(declare-fun d!60948 () Bool)

(assert (=> d!60948 e!51012))

(declare-fun res!48969 () Bool)

(assert (=> d!60948 (=> (not res!48969) (not e!51012))))

(assert (=> d!60948 (= res!48969 (= (content!183 lt!21136) (union (content!183 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) (content!183 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))

(assert (=> d!60948 (= lt!21136 e!51011)))

(declare-fun c!22805 () Bool)

(assert (=> d!60948 (= c!22805 (is-Nil!749 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))

(assert (=> d!60948 (= (++!95 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))) (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))) lt!21136)))

(declare-fun b!93223 () Bool)

(assert (=> b!93223 (= e!51012 (or (not (= (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) Nil!749)) (= lt!21136 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))

(assert (= (and d!60948 c!22805) b!93220))

(assert (= (and d!60948 (not c!22805)) b!93221))

(assert (= (and d!60948 res!48969) b!93222))

(assert (= (and b!93222 res!48970) b!93223))

(declare-fun m!88873 () Bool)

(assert (=> b!93221 m!88873))

(declare-fun m!88875 () Bool)

(assert (=> b!93222 m!88875))

(assert (=> b!93222 m!88863))

(assert (=> b!93222 m!88803))

(declare-fun m!88877 () Bool)

(assert (=> d!60948 m!88877))

(declare-fun m!88879 () Bool)

(assert (=> d!60948 m!88879))

(assert (=> d!60948 m!88807))

(assert (=> b!93203 d!60948))

(declare-fun d!60950 () Bool)

(declare-fun lt!21137 () Int)

(assert (=> d!60950 (>= lt!21137 0)))

(declare-fun e!51013 () Int)

(assert (=> d!60950 (= lt!21137 e!51013)))

(declare-fun c!22806 () Bool)

(assert (=> d!60950 (= c!22806 (is-Nil!749 (t!49226 (t!49226 lt!21119))))))

(assert (=> d!60950 (= (size!917 (t!49226 (t!49226 lt!21119))) lt!21137)))

(declare-fun b!93224 () Bool)

(assert (=> b!93224 (= e!51013 0)))

(declare-fun b!93225 () Bool)

(assert (=> b!93225 (= e!51013 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 lt!21119))))))))

(assert (= (and d!60950 c!22806) b!93224))

(assert (= (and d!60950 (not c!22806)) b!93225))

(declare-fun m!88881 () Bool)

(assert (=> b!93225 m!88881))

(assert (=> b!93201 d!60950))

(declare-fun d!60952 () Bool)

(declare-fun c!22807 () Bool)

(assert (=> d!60952 (= c!22807 (is-Nil!749 (t!49226 (t!49226 lt!21119))))))

(declare-fun e!51014 () (Set (_ BitVec 32)))

(assert (=> d!60952 (= (content!183 (t!49226 (t!49226 lt!21119))) e!51014)))

(declare-fun b!93226 () Bool)

(assert (=> b!93226 (= e!51014 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93227 () Bool)

(assert (=> b!93227 (= e!51014 (union (insert (h!1181 (t!49226 (t!49226 lt!21119))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 lt!21119))))))))

(assert (= (and d!60952 c!22807) b!93226))

(assert (= (and d!60952 (not c!22807)) b!93227))

(declare-fun m!88883 () Bool)

(assert (=> b!93227 m!88883))

(declare-fun m!88885 () Bool)

(assert (=> b!93227 m!88885))

(assert (=> b!93195 d!60952))

(declare-fun d!60954 () Bool)

(declare-fun lt!21138 () Int)

(assert (=> d!60954 (>= lt!21138 0)))

(declare-fun e!51015 () Int)

(assert (=> d!60954 (= lt!21138 e!51015)))

(declare-fun c!22808 () Bool)

(assert (=> d!60954 (= c!22808 (is-Nil!749 lt!21131))))

(assert (=> d!60954 (= (size!917 lt!21131) lt!21138)))

(declare-fun b!93228 () Bool)

(assert (=> b!93228 (= e!51015 0)))

(declare-fun b!93229 () Bool)

(assert (=> b!93229 (= e!51015 (+ 1 (size!917 (t!49226 lt!21131))))))

(assert (= (and d!60954 c!22808) b!93228))

(assert (= (and d!60954 (not c!22808)) b!93229))

(declare-fun m!88887 () Bool)

(assert (=> b!93229 m!88887))

(assert (=> b!93204 d!60954))

(assert (=> b!93204 d!60940))

(assert (=> b!93204 d!60904))

(declare-fun b!93230 () Bool)

(declare-fun e!51016 () Bool)

(declare-fun tp!18042 () Bool)

(assert (=> b!93230 (= e!51016 (and tp_is_empty!515 tp!18042))))

(assert (=> b!93207 (= tp!18041 e!51016)))

(assert (= (and b!93207 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878))))))))) b!93230))

(declare-fun b!93231 () Bool)

(declare-fun e!51017 () Bool)

(declare-fun tp!18043 () Bool)

(assert (=> b!93231 (= e!51017 (and tp_is_empty!515 tp!18043))))

(assert (=> b!93206 (= tp!18040 e!51017)))

(assert (= (and b!93206 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))) b!93231))

(push 1)

(assert (not b!93219))

(assert (not b!93222))

(assert (not b!93230))

(assert (not d!60948))

(assert (not b!93211))

(assert (not b!93209))

(assert (not b!93229))

(assert tp_is_empty!515)

(assert (not b!93217))

(assert (not b!93213))

(assert (not b!93231))

(assert (not b!93215))

(assert (not b!93221))

(assert (not b!93225))

(assert (not b!93227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60956 () Bool)

(declare-fun lt!21139 () Int)

(assert (=> d!60956 (>= lt!21139 0)))

(declare-fun e!51018 () Int)

(assert (=> d!60956 (= lt!21139 e!51018)))

(declare-fun c!22809 () Bool)

(assert (=> d!60956 (= c!22809 (is-Nil!749 (t!49226 (t!49226 lt!21123))))))

(assert (=> d!60956 (= (size!917 (t!49226 (t!49226 lt!21123))) lt!21139)))

(declare-fun b!93232 () Bool)

(assert (=> b!93232 (= e!51018 0)))

(declare-fun b!93233 () Bool)

(assert (=> b!93233 (= e!51018 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 lt!21123))))))))

(assert (= (and d!60956 c!22809) b!93232))

(assert (= (and d!60956 (not c!22809)) b!93233))

(declare-fun m!88889 () Bool)

(assert (=> b!93233 m!88889))

(assert (=> b!93209 d!60956))

(declare-fun d!60958 () Bool)

(declare-fun lt!21140 () Int)

(assert (=> d!60958 (>= lt!21140 0)))

(declare-fun e!51019 () Int)

(assert (=> d!60958 (= lt!21140 e!51019)))

(declare-fun c!22810 () Bool)

(assert (=> d!60958 (= c!22810 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))))

(assert (=> d!60958 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))) lt!21140)))

(declare-fun b!93234 () Bool)

(assert (=> b!93234 (= e!51019 0)))

(declare-fun b!93235 () Bool)

(assert (=> b!93235 (= e!51019 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))))))

(assert (= (and d!60958 c!22810) b!93234))

(assert (= (and d!60958 (not c!22810)) b!93235))

(declare-fun m!88891 () Bool)

(assert (=> b!93235 m!88891))

(assert (=> b!93215 d!60958))

(declare-fun d!60960 () Bool)

(declare-fun c!22811 () Bool)

(assert (=> d!60960 (= c!22811 (is-Nil!749 (t!49226 lt!21131)))))

(declare-fun e!51020 () (Set (_ BitVec 32)))

(assert (=> d!60960 (= (content!183 (t!49226 lt!21131)) e!51020)))

(declare-fun b!93236 () Bool)

(assert (=> b!93236 (= e!51020 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93237 () Bool)

(assert (=> b!93237 (= e!51020 (union (insert (h!1181 (t!49226 lt!21131)) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 lt!21131)))))))

(assert (= (and d!60960 c!22811) b!93236))

(assert (= (and d!60960 (not c!22811)) b!93237))

(declare-fun m!88893 () Bool)

(assert (=> b!93237 m!88893))

(declare-fun m!88895 () Bool)

(assert (=> b!93237 m!88895))

(assert (=> b!93211 d!60960))

(declare-fun d!60962 () Bool)

(assert (not d!60962))

(assert (=> b!93221 d!60962))

(declare-fun d!60964 () Bool)

(declare-fun lt!21141 () Int)

(assert (=> d!60964 (>= lt!21141 0)))

(declare-fun e!51021 () Int)

(assert (=> d!60964 (= lt!21141 e!51021)))

(declare-fun c!22812 () Bool)

(assert (=> d!60964 (= c!22812 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21119)))))))

(assert (=> d!60964 (= (size!917 (t!49226 (t!49226 (t!49226 lt!21119)))) lt!21141)))

(declare-fun b!93238 () Bool)

(assert (=> b!93238 (= e!51021 0)))

(declare-fun b!93239 () Bool)

(assert (=> b!93239 (= e!51021 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))))))

(assert (= (and d!60964 c!22812) b!93238))

(assert (= (and d!60964 (not c!22812)) b!93239))

(declare-fun m!88897 () Bool)

(assert (=> b!93239 m!88897))

(assert (=> b!93225 d!60964))

(declare-fun d!60966 () Bool)

(declare-fun lt!21142 () Int)

(assert (=> d!60966 (>= lt!21142 0)))

(declare-fun e!51022 () Int)

(assert (=> d!60966 (= lt!21142 e!51022)))

(declare-fun c!22813 () Bool)

(assert (=> d!60966 (= c!22813 (is-Nil!749 (t!49226 lt!21131)))))

(assert (=> d!60966 (= (size!917 (t!49226 lt!21131)) lt!21142)))

(declare-fun b!93240 () Bool)

(assert (=> b!93240 (= e!51022 0)))

(declare-fun b!93241 () Bool)

(assert (=> b!93241 (= e!51022 (+ 1 (size!917 (t!49226 (t!49226 lt!21131)))))))

(assert (= (and d!60966 c!22813) b!93240))

(assert (= (and d!60966 (not c!22813)) b!93241))

(declare-fun m!88899 () Bool)

(assert (=> b!93241 m!88899))

(assert (=> b!93229 d!60966))

(declare-fun d!60968 () Bool)

(declare-fun lt!21143 () Int)

(assert (=> d!60968 (>= lt!21143 0)))

(declare-fun e!51023 () Int)

(assert (=> d!60968 (= lt!21143 e!51023)))

(declare-fun c!22814 () Bool)

(assert (=> d!60968 (= c!22814 (is-Nil!749 lt!21136))))

(assert (=> d!60968 (= (size!917 lt!21136) lt!21143)))

(declare-fun b!93242 () Bool)

(assert (=> b!93242 (= e!51023 0)))

(declare-fun b!93243 () Bool)

(assert (=> b!93243 (= e!51023 (+ 1 (size!917 (t!49226 lt!21136))))))

(assert (= (and d!60968 c!22814) b!93242))

(assert (= (and d!60968 (not c!22814)) b!93243))

(declare-fun m!88901 () Bool)

(assert (=> b!93243 m!88901))

(assert (=> b!93222 d!60968))

(declare-fun d!60970 () Bool)

(declare-fun lt!21144 () Int)

(assert (=> d!60970 (>= lt!21144 0)))

(declare-fun e!51024 () Int)

(assert (=> d!60970 (= lt!21144 e!51024)))

(declare-fun c!22815 () Bool)

(assert (=> d!60970 (= c!22815 (is-Nil!749 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))

(assert (=> d!60970 (= (size!917 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) lt!21144)))

(declare-fun b!93244 () Bool)

(assert (=> b!93244 (= e!51024 0)))

(declare-fun b!93245 () Bool)

(assert (=> b!93245 (= e!51024 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))

(assert (= (and d!60970 c!22815) b!93244))

(assert (= (and d!60970 (not c!22815)) b!93245))

(declare-fun m!88903 () Bool)

(assert (=> b!93245 m!88903))

(assert (=> b!93222 d!60970))

(assert (=> b!93222 d!60904))

(assert (=> b!93213 d!60970))

(declare-fun d!60972 () Bool)

(declare-fun c!22816 () Bool)

(assert (=> d!60972 (= c!22816 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21119)))))))

(declare-fun e!51025 () (Set (_ BitVec 32)))

(assert (=> d!60972 (= (content!183 (t!49226 (t!49226 (t!49226 lt!21119)))) e!51025)))

(declare-fun b!93246 () Bool)

(assert (=> b!93246 (= e!51025 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93247 () Bool)

(assert (=> b!93247 (= e!51025 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 lt!21119)))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))))))

(assert (= (and d!60972 c!22816) b!93246))

(assert (= (and d!60972 (not c!22816)) b!93247))

(declare-fun m!88905 () Bool)

(assert (=> b!93247 m!88905))

(declare-fun m!88907 () Bool)

(assert (=> b!93247 m!88907))

(assert (=> b!93227 d!60972))

(declare-fun d!60974 () Bool)

(declare-fun c!22817 () Bool)

(assert (=> d!60974 (= c!22817 (is-Nil!749 (t!49226 (t!49226 lt!21123))))))

(declare-fun e!51026 () (Set (_ BitVec 32)))

(assert (=> d!60974 (= (content!183 (t!49226 (t!49226 lt!21123))) e!51026)))

(declare-fun b!93248 () Bool)

(assert (=> b!93248 (= e!51026 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93249 () Bool)

(assert (=> b!93249 (= e!51026 (union (insert (h!1181 (t!49226 (t!49226 lt!21123))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 lt!21123))))))))

(assert (= (and d!60974 c!22817) b!93248))

(assert (= (and d!60974 (not c!22817)) b!93249))

(declare-fun m!88909 () Bool)

(assert (=> b!93249 m!88909))

(declare-fun m!88911 () Bool)

(assert (=> b!93249 m!88911))

(assert (=> b!93219 d!60974))

(declare-fun d!60976 () Bool)

(declare-fun c!22818 () Bool)

(assert (=> d!60976 (= c!22818 (is-Nil!749 lt!21136))))

(declare-fun e!51027 () (Set (_ BitVec 32)))

(assert (=> d!60976 (= (content!183 lt!21136) e!51027)))

(declare-fun b!93250 () Bool)

(assert (=> b!93250 (= e!51027 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93251 () Bool)

(assert (=> b!93251 (= e!51027 (union (insert (h!1181 lt!21136) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 lt!21136))))))

(assert (= (and d!60976 c!22818) b!93250))

(assert (= (and d!60976 (not c!22818)) b!93251))

(declare-fun m!88913 () Bool)

(assert (=> b!93251 m!88913))

(declare-fun m!88915 () Bool)

(assert (=> b!93251 m!88915))

(assert (=> d!60948 d!60976))

(declare-fun d!60978 () Bool)

(assert (=> d!60978 (= (content!183 (t!49226 (t!49226 (t!49226 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))) (as emptyset (Set (_ BitVec 32))))))

(assert (=> d!60948 d!60978))

(assert (=> d!60948 d!60910))

(declare-fun d!60980 () Bool)

(declare-fun lt!21145 () Int)

(assert (=> d!60980 (>= lt!21145 0)))

(declare-fun e!51028 () Int)

(assert (=> d!60980 (= lt!21145 e!51028)))

(declare-fun c!22819 () Bool)

(assert (=> d!60980 (= c!22819 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))))

(assert (=> d!60980 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))) lt!21145)))

(declare-fun b!93252 () Bool)

(assert (=> b!93252 (= e!51028 0)))

(declare-fun b!93253 () Bool)

(assert (=> b!93253 (= e!51028 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))))))

(assert (= (and d!60980 c!22819) b!93252))

(assert (= (and d!60980 (not c!22819)) b!93253))

(declare-fun m!88917 () Bool)

(assert (=> b!93253 m!88917))

(assert (=> b!93217 d!60980))

(declare-fun b!93254 () Bool)

(declare-fun e!51029 () Bool)

(declare-fun tp!18044 () Bool)

(assert (=> b!93254 (= e!51029 (and tp_is_empty!515 tp!18044))))

(assert (=> b!93230 (= tp!18042 e!51029)))

(assert (= (and b!93230 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878)))))))))) b!93254))

(declare-fun b!93255 () Bool)

(declare-fun e!51030 () Bool)

(declare-fun tp!18045 () Bool)

(assert (=> b!93255 (= e!51030 (and tp_is_empty!515 tp!18045))))

(assert (=> b!93231 (= tp!18043 e!51030)))

(assert (= (and b!93231 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))) b!93255))

(push 1)

(assert (not b!93251))

(assert (not b!93254))

(assert (not b!93243))

(assert (not b!93249))

(assert (not b!93235))

(assert (not b!93253))

(assert (not b!93255))

(assert tp_is_empty!515)

(assert (not b!93247))

(assert (not b!93239))

(assert (not b!93233))

(assert (not b!93241))

(assert (not b!93237))

(assert (not b!93245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60982 () Bool)

(declare-fun lt!21146 () Int)

(assert (=> d!60982 (>= lt!21146 0)))

(declare-fun e!51031 () Int)

(assert (=> d!60982 (= lt!21146 e!51031)))

(declare-fun c!22820 () Bool)

(assert (=> d!60982 (= c!22820 (is-Nil!749 (t!49226 (t!49226 lt!21131))))))

(assert (=> d!60982 (= (size!917 (t!49226 (t!49226 lt!21131))) lt!21146)))

(declare-fun b!93256 () Bool)

(assert (=> b!93256 (= e!51031 0)))

(declare-fun b!93257 () Bool)

(assert (=> b!93257 (= e!51031 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 lt!21131))))))))

(assert (= (and d!60982 c!22820) b!93256))

(assert (= (and d!60982 (not c!22820)) b!93257))

(declare-fun m!88919 () Bool)

(assert (=> b!93257 m!88919))

(assert (=> b!93241 d!60982))

(declare-fun d!60984 () Bool)

(declare-fun lt!21147 () Int)

(assert (=> d!60984 (>= lt!21147 0)))

(declare-fun e!51032 () Int)

(assert (=> d!60984 (= lt!21147 e!51032)))

(declare-fun c!22821 () Bool)

(assert (=> d!60984 (= c!22821 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21123)))))))

(assert (=> d!60984 (= (size!917 (t!49226 (t!49226 (t!49226 lt!21123)))) lt!21147)))

(declare-fun b!93258 () Bool)

(assert (=> b!93258 (= e!51032 0)))

(declare-fun b!93259 () Bool)

(assert (=> b!93259 (= e!51032 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))))))

(assert (= (and d!60984 c!22821) b!93258))

(assert (= (and d!60984 (not c!22821)) b!93259))

(declare-fun m!88921 () Bool)

(assert (=> b!93259 m!88921))

(assert (=> b!93233 d!60984))

(declare-fun d!60986 () Bool)

(declare-fun lt!21148 () Int)

(assert (=> d!60986 (>= lt!21148 0)))

(declare-fun e!51033 () Int)

(assert (=> d!60986 (= lt!21148 e!51033)))

(declare-fun c!22822 () Bool)

(assert (=> d!60986 (= c!22822 (is-Nil!749 (t!49226 lt!21136)))))

(assert (=> d!60986 (= (size!917 (t!49226 lt!21136)) lt!21148)))

(declare-fun b!93260 () Bool)

(assert (=> b!93260 (= e!51033 0)))

(declare-fun b!93261 () Bool)

(assert (=> b!93261 (= e!51033 (+ 1 (size!917 (t!49226 (t!49226 lt!21136)))))))

(assert (= (and d!60986 c!22822) b!93260))

(assert (= (and d!60986 (not c!22822)) b!93261))

(declare-fun m!88923 () Bool)

(assert (=> b!93261 m!88923))

(assert (=> b!93243 d!60986))

(declare-fun d!60988 () Bool)

(declare-fun c!22823 () Bool)

(assert (=> d!60988 (= c!22823 (is-Nil!749 (t!49226 (t!49226 lt!21131))))))

(declare-fun e!51034 () (Set (_ BitVec 32)))

(assert (=> d!60988 (= (content!183 (t!49226 (t!49226 lt!21131))) e!51034)))

(declare-fun b!93262 () Bool)

(assert (=> b!93262 (= e!51034 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93263 () Bool)

(assert (=> b!93263 (= e!51034 (union (insert (h!1181 (t!49226 (t!49226 lt!21131))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 lt!21131))))))))

(assert (= (and d!60988 c!22823) b!93262))

(assert (= (and d!60988 (not c!22823)) b!93263))

(declare-fun m!88925 () Bool)

(assert (=> b!93263 m!88925))

(declare-fun m!88927 () Bool)

(assert (=> b!93263 m!88927))

(assert (=> b!93237 d!60988))

(declare-fun d!60990 () Bool)

(declare-fun lt!21149 () Int)

(assert (=> d!60990 (>= lt!21149 0)))

(declare-fun e!51035 () Int)

(assert (=> d!60990 (= lt!21149 e!51035)))

(declare-fun c!22824 () Bool)

(assert (=> d!60990 (= c!22824 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))))

(assert (=> d!60990 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))) lt!21149)))

(declare-fun b!93264 () Bool)

(assert (=> b!93264 (= e!51035 0)))

(declare-fun b!93265 () Bool)

(assert (=> b!93265 (= e!51035 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))))))

(assert (= (and d!60990 c!22824) b!93264))

(assert (= (and d!60990 (not c!22824)) b!93265))

(declare-fun m!88929 () Bool)

(assert (=> b!93265 m!88929))

(assert (=> b!93253 d!60990))

(declare-fun d!60992 () Bool)

(declare-fun lt!21150 () Int)

(assert (=> d!60992 (>= lt!21150 0)))

(declare-fun e!51036 () Int)

(assert (=> d!60992 (= lt!21150 e!51036)))

(declare-fun c!22825 () Bool)

(assert (=> d!60992 (= c!22825 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))))

(assert (=> d!60992 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))) lt!21150)))

(declare-fun b!93266 () Bool)

(assert (=> b!93266 (= e!51036 0)))

(declare-fun b!93267 () Bool)

(assert (=> b!93267 (= e!51036 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))))))

(assert (= (and d!60992 c!22825) b!93266))

(assert (= (and d!60992 (not c!22825)) b!93267))

(declare-fun m!88931 () Bool)

(assert (=> b!93267 m!88931))

(assert (=> b!93235 d!60992))

(declare-fun d!60994 () Bool)

(declare-fun c!22826 () Bool)

(assert (=> d!60994 (= c!22826 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21123)))))))

(declare-fun e!51037 () (Set (_ BitVec 32)))

(assert (=> d!60994 (= (content!183 (t!49226 (t!49226 (t!49226 lt!21123)))) e!51037)))

(declare-fun b!93268 () Bool)

(assert (=> b!93268 (= e!51037 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93269 () Bool)

(assert (=> b!93269 (= e!51037 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 lt!21123)))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))))))

(assert (= (and d!60994 c!22826) b!93268))

(assert (= (and d!60994 (not c!22826)) b!93269))

(declare-fun m!88933 () Bool)

(assert (=> b!93269 m!88933))

(declare-fun m!88935 () Bool)

(assert (=> b!93269 m!88935))

(assert (=> b!93249 d!60994))

(declare-fun d!60996 () Bool)

(assert (not d!60996))

(assert (=> b!93245 d!60996))

(declare-fun d!60998 () Bool)

(declare-fun c!22827 () Bool)

(assert (=> d!60998 (= c!22827 (is-Nil!749 (t!49226 lt!21136)))))

(declare-fun e!51038 () (Set (_ BitVec 32)))

(assert (=> d!60998 (= (content!183 (t!49226 lt!21136)) e!51038)))

(declare-fun b!93270 () Bool)

(assert (=> b!93270 (= e!51038 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93271 () Bool)

(assert (=> b!93271 (= e!51038 (union (insert (h!1181 (t!49226 lt!21136)) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 lt!21136)))))))

(assert (= (and d!60998 c!22827) b!93270))

(assert (= (and d!60998 (not c!22827)) b!93271))

(declare-fun m!88937 () Bool)

(assert (=> b!93271 m!88937))

(declare-fun m!88939 () Bool)

(assert (=> b!93271 m!88939))

(assert (=> b!93251 d!60998))

(declare-fun d!61000 () Bool)

(declare-fun c!22828 () Bool)

(assert (=> d!61000 (= c!22828 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))

(declare-fun e!51039 () (Set (_ BitVec 32)))

(assert (=> d!61000 (= (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))) e!51039)))

(declare-fun b!93272 () Bool)

(assert (=> b!93272 (= e!51039 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93273 () Bool)

(assert (=> b!93273 (= e!51039 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))))

(assert (= (and d!61000 c!22828) b!93272))

(assert (= (and d!61000 (not c!22828)) b!93273))

(declare-fun m!88941 () Bool)

(assert (=> b!93273 m!88941))

(declare-fun m!88943 () Bool)

(assert (=> b!93273 m!88943))

(assert (=> b!93247 d!61000))

(declare-fun d!61002 () Bool)

(declare-fun lt!21151 () Int)

(assert (=> d!61002 (>= lt!21151 0)))

(declare-fun e!51040 () Int)

(assert (=> d!61002 (= lt!21151 e!51040)))

(declare-fun c!22829 () Bool)

(assert (=> d!61002 (= c!22829 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))

(assert (=> d!61002 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))) lt!21151)))

(declare-fun b!93274 () Bool)

(assert (=> b!93274 (= e!51040 0)))

(declare-fun b!93275 () Bool)

(assert (=> b!93275 (= e!51040 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))))

(assert (= (and d!61002 c!22829) b!93274))

(assert (= (and d!61002 (not c!22829)) b!93275))

(declare-fun m!88945 () Bool)

(assert (=> b!93275 m!88945))

(assert (=> b!93239 d!61002))

(declare-fun b!93276 () Bool)

(declare-fun e!51041 () Bool)

(declare-fun tp!18046 () Bool)

(assert (=> b!93276 (= e!51041 (and tp_is_empty!515 tp!18046))))

(assert (=> b!93255 (= tp!18045 e!51041)))

(assert (= (and b!93255 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))) b!93276))

(declare-fun b!93277 () Bool)

(declare-fun e!51042 () Bool)

(declare-fun tp!18047 () Bool)

(assert (=> b!93277 (= e!51042 (and tp_is_empty!515 tp!18047))))

(assert (=> b!93254 (= tp!18044 e!51042)))

(assert (= (and b!93254 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878))))))))))) b!93277))

(push 1)

(assert (not b!93269))

(assert (not b!93259))

(assert (not b!93277))

(assert (not b!93265))

(assert (not b!93257))

(assert (not b!93275))

(assert tp_is_empty!515)

(assert (not b!93273))

(assert (not b!93261))

(assert (not b!93271))

(assert (not b!93276))

(assert (not b!93267))

(assert (not b!93263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61004 () Bool)

(declare-fun c!22830 () Bool)

(assert (=> d!61004 (= c!22830 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))))))

(declare-fun e!51043 () (Set (_ BitVec 32)))

(assert (=> d!61004 (= (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))) e!51043)))

(declare-fun b!93278 () Bool)

(assert (=> b!93278 (= e!51043 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93279 () Bool)

(assert (=> b!93279 (= e!51043 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))))))))

(assert (= (and d!61004 c!22830) b!93278))

(assert (= (and d!61004 (not c!22830)) b!93279))

(declare-fun m!88947 () Bool)

(assert (=> b!93279 m!88947))

(declare-fun m!88949 () Bool)

(assert (=> b!93279 m!88949))

(assert (=> b!93269 d!61004))

(declare-fun d!61006 () Bool)

(declare-fun lt!21152 () Int)

(assert (=> d!61006 (>= lt!21152 0)))

(declare-fun e!51044 () Int)

(assert (=> d!61006 (= lt!21152 e!51044)))

(declare-fun c!22831 () Bool)

(assert (=> d!61006 (= c!22831 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))))))

(assert (=> d!61006 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))) lt!21152)))

(declare-fun b!93280 () Bool)

(assert (=> b!93280 (= e!51044 0)))

(declare-fun b!93281 () Bool)

(assert (=> b!93281 (= e!51044 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749)))))))))))))))))))

(assert (= (and d!61006 c!22831) b!93280))

(assert (= (and d!61006 (not c!22831)) b!93281))

(declare-fun m!88951 () Bool)

(assert (=> b!93281 m!88951))

(assert (=> b!93265 d!61006))

(declare-fun d!61008 () Bool)

(declare-fun lt!21153 () Int)

(assert (=> d!61008 (>= lt!21153 0)))

(declare-fun e!51045 () Int)

(assert (=> d!61008 (= lt!21153 e!51045)))

(declare-fun c!22832 () Bool)

(assert (=> d!61008 (= c!22832 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))))))

(assert (=> d!61008 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))) lt!21153)))

(declare-fun b!93282 () Bool)

(assert (=> b!93282 (= e!51045 0)))

(declare-fun b!93283 () Bool)

(assert (=> b!93283 (= e!51045 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))))))))

(assert (= (and d!61008 c!22832) b!93282))

(assert (= (and d!61008 (not c!22832)) b!93283))

(declare-fun m!88953 () Bool)

(assert (=> b!93283 m!88953))

(assert (=> b!93267 d!61008))

(declare-fun d!61010 () Bool)

(declare-fun c!22833 () Bool)

(assert (=> d!61010 (= c!22833 (is-Nil!749 (t!49226 (t!49226 lt!21136))))))

(declare-fun e!51046 () (Set (_ BitVec 32)))

(assert (=> d!61010 (= (content!183 (t!49226 (t!49226 lt!21136))) e!51046)))

(declare-fun b!93284 () Bool)

(assert (=> b!93284 (= e!51046 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93285 () Bool)

(assert (=> b!93285 (= e!51046 (union (insert (h!1181 (t!49226 (t!49226 lt!21136))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 lt!21136))))))))

(assert (= (and d!61010 c!22833) b!93284))

(assert (= (and d!61010 (not c!22833)) b!93285))

(declare-fun m!88955 () Bool)

(assert (=> b!93285 m!88955))

(declare-fun m!88957 () Bool)

(assert (=> b!93285 m!88957))

(assert (=> b!93271 d!61010))

(declare-fun d!61012 () Bool)

(declare-fun lt!21154 () Int)

(assert (=> d!61012 (>= lt!21154 0)))

(declare-fun e!51047 () Int)

(assert (=> d!61012 (= lt!21154 e!51047)))

(declare-fun c!22834 () Bool)

(assert (=> d!61012 (= c!22834 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))))))

(assert (=> d!61012 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))) lt!21154)))

(declare-fun b!93286 () Bool)

(assert (=> b!93286 (= e!51047 0)))

(declare-fun b!93287 () Bool)

(assert (=> b!93287 (= e!51047 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123))))))))))

(assert (= (and d!61012 c!22834) b!93286))

(assert (= (and d!61012 (not c!22834)) b!93287))

(declare-fun m!88959 () Bool)

(assert (=> b!93287 m!88959))

(assert (=> b!93259 d!61012))

(declare-fun d!61014 () Bool)

(declare-fun lt!21155 () Int)

(assert (=> d!61014 (>= lt!21155 0)))

(declare-fun e!51048 () Int)

(assert (=> d!61014 (= lt!21155 e!51048)))

(declare-fun c!22835 () Bool)

(assert (=> d!61014 (= c!22835 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21131)))))))

(assert (=> d!61014 (= (size!917 (t!49226 (t!49226 (t!49226 lt!21131)))) lt!21155)))

(declare-fun b!93288 () Bool)

(assert (=> b!93288 (= e!51048 0)))

(declare-fun b!93289 () Bool)

(assert (=> b!93289 (= e!51048 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131)))))))))

(assert (= (and d!61014 c!22835) b!93288))

(assert (= (and d!61014 (not c!22835)) b!93289))

(declare-fun m!88961 () Bool)

(assert (=> b!93289 m!88961))

(assert (=> b!93257 d!61014))

(declare-fun d!61016 () Bool)

(declare-fun c!22836 () Bool)

(assert (=> d!61016 (= c!22836 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21131)))))))

(declare-fun e!51049 () (Set (_ BitVec 32)))

(assert (=> d!61016 (= (content!183 (t!49226 (t!49226 (t!49226 lt!21131)))) e!51049)))

(declare-fun b!93290 () Bool)

(assert (=> b!93290 (= e!51049 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93291 () Bool)

(assert (=> b!93291 (= e!51049 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 lt!21131)))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131)))))))))

(assert (= (and d!61016 c!22836) b!93290))

(assert (= (and d!61016 (not c!22836)) b!93291))

(declare-fun m!88963 () Bool)

(assert (=> b!93291 m!88963))

(declare-fun m!88965 () Bool)

(assert (=> b!93291 m!88965))

(assert (=> b!93263 d!61016))

(declare-fun d!61018 () Bool)

(declare-fun lt!21156 () Int)

(assert (=> d!61018 (>= lt!21156 0)))

(declare-fun e!51050 () Int)

(assert (=> d!61018 (= lt!21156 e!51050)))

(declare-fun c!22837 () Bool)

(assert (=> d!61018 (= c!22837 (is-Nil!749 (t!49226 (t!49226 lt!21136))))))

(assert (=> d!61018 (= (size!917 (t!49226 (t!49226 lt!21136))) lt!21156)))

(declare-fun b!93292 () Bool)

(assert (=> b!93292 (= e!51050 0)))

(declare-fun b!93293 () Bool)

(assert (=> b!93293 (= e!51050 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 lt!21136))))))))

(assert (= (and d!61018 c!22837) b!93292))

(assert (= (and d!61018 (not c!22837)) b!93293))

(declare-fun m!88967 () Bool)

(assert (=> b!93293 m!88967))

(assert (=> b!93261 d!61018))

(declare-fun d!61020 () Bool)

(declare-fun c!22838 () Bool)

(assert (=> d!61020 (= c!22838 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))))))

(declare-fun e!51051 () (Set (_ BitVec 32)))

(assert (=> d!61020 (= (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))) e!51051)))

(declare-fun b!93294 () Bool)

(assert (=> b!93294 (= e!51051 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93295 () Bool)

(assert (=> b!93295 (= e!51051 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))))))))

(assert (= (and d!61020 c!22838) b!93294))

(assert (= (and d!61020 (not c!22838)) b!93295))

(declare-fun m!88969 () Bool)

(assert (=> b!93295 m!88969))

(declare-fun m!88971 () Bool)

(assert (=> b!93295 m!88971))

(assert (=> b!93273 d!61020))

(declare-fun d!61022 () Bool)

(declare-fun lt!21157 () Int)

(assert (=> d!61022 (>= lt!21157 0)))

(declare-fun e!51052 () Int)

(assert (=> d!61022 (= lt!21157 e!51052)))

(declare-fun c!22839 () Bool)

(assert (=> d!61022 (= c!22839 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))))))

(assert (=> d!61022 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))) lt!21157)))

(declare-fun b!93296 () Bool)

(assert (=> b!93296 (= e!51052 0)))

(declare-fun b!93297 () Bool)

(assert (=> b!93297 (= e!51052 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119)))))))))))

(assert (= (and d!61022 c!22839) b!93296))

(assert (= (and d!61022 (not c!22839)) b!93297))

(declare-fun m!88973 () Bool)

(assert (=> b!93297 m!88973))

(assert (=> b!93275 d!61022))

(declare-fun b!93298 () Bool)

(declare-fun e!51053 () Bool)

(declare-fun tp!18048 () Bool)

(assert (=> b!93298 (= e!51053 (and tp_is_empty!515 tp!18048))))

(assert (=> b!93277 (= tp!18047 e!51053)))

(assert (= (and b!93277 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878)))))))))))) b!93298))

(declare-fun b!93299 () Bool)

(declare-fun e!51054 () Bool)

(declare-fun tp!18049 () Bool)

(assert (=> b!93299 (= e!51054 (and tp_is_empty!515 tp!18049))))

(assert (=> b!93276 (= tp!18046 e!51054)))

(assert (= (and b!93276 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658)))))))))))) b!93299))

(push 1)

(assert (not b!93285))

(assert (not b!93283))

(assert (not b!93289))

(assert (not b!93291))

(assert (not b!93298))

(assert (not b!93293))

(assert (not b!93297))

(assert (not b!93299))

(assert tp_is_empty!515)

(assert (not b!93287))

(assert (not b!93281))

(assert (not b!93279))

(assert (not b!93295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!61024 () Bool)

(declare-fun lt!21158 () Int)

(assert (=> d!61024 (>= lt!21158 0)))

(declare-fun e!51055 () Int)

(assert (=> d!61024 (= lt!21158 e!51055)))

(declare-fun c!22840 () Bool)

(assert (=> d!61024 (= c!22840 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))))))

(assert (=> d!61024 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))) lt!21158)))

(declare-fun b!93300 () Bool)

(assert (=> b!93300 (= e!51055 0)))

(declare-fun b!93301 () Bool)

(assert (=> b!93301 (= e!51055 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))))))))

(assert (= (and d!61024 c!22840) b!93300))

(assert (= (and d!61024 (not c!22840)) b!93301))

(declare-fun m!88975 () Bool)

(assert (=> b!93301 m!88975))

(assert (=> b!93287 d!61024))

(declare-fun d!61026 () Bool)

(declare-fun lt!21159 () Int)

(assert (=> d!61026 (>= lt!21159 0)))

(declare-fun e!51056 () Int)

(assert (=> d!61026 (= lt!21159 e!51056)))

(declare-fun c!22841 () Bool)

(assert (=> d!61026 (= c!22841 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))))

(assert (=> d!61026 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))) lt!21159)))

(declare-fun b!93302 () Bool)

(assert (=> b!93302 (= e!51056 0)))

(declare-fun b!93303 () Bool)

(assert (=> b!93303 (= e!51056 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))))))

(assert (= (and d!61026 c!22841) b!93302))

(assert (= (and d!61026 (not c!22841)) b!93303))

(declare-fun m!88977 () Bool)

(assert (=> b!93303 m!88977))

(assert (=> b!93297 d!61026))

(declare-fun d!61028 () Bool)

(declare-fun lt!21160 () Int)

(assert (=> d!61028 (>= lt!21160 0)))

(declare-fun e!51057 () Int)

(assert (=> d!61028 (= lt!21160 e!51057)))

(declare-fun c!22842 () Bool)

(assert (=> d!61028 (= c!22842 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21136)))))))

(assert (=> d!61028 (= (size!917 (t!49226 (t!49226 (t!49226 lt!21136)))) lt!21160)))

(declare-fun b!93304 () Bool)

(assert (=> b!93304 (= e!51057 0)))

(declare-fun b!93305 () Bool)

(assert (=> b!93305 (= e!51057 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21136)))))))))

(assert (= (and d!61028 c!22842) b!93304))

(assert (= (and d!61028 (not c!22842)) b!93305))

(declare-fun m!88979 () Bool)

(assert (=> b!93305 m!88979))

(assert (=> b!93293 d!61028))

(declare-fun d!61030 () Bool)

(declare-fun lt!21161 () Int)

(assert (=> d!61030 (>= lt!21161 0)))

(declare-fun e!51058 () Int)

(assert (=> d!61030 (= lt!21161 e!51058)))

(declare-fun c!22843 () Bool)

(assert (=> d!61030 (= c!22843 (is-Nil!748 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))))))

(assert (=> d!61030 (= (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))) lt!21161)))

(declare-fun b!93306 () Bool)

(assert (=> b!93306 (= e!51058 0)))

(declare-fun b!93307 () Bool)

(assert (=> b!93307 (= e!51058 (+ 1 (size!916 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))))))))

(assert (= (and d!61030 c!22843) b!93306))

(assert (= (and d!61030 (not c!22843)) b!93307))

(declare-fun m!88981 () Bool)

(assert (=> b!93307 m!88981))

(assert (=> b!93283 d!61030))

(declare-fun d!61032 () Bool)

(declare-fun lt!21162 () Int)

(assert (=> d!61032 (>= lt!21162 0)))

(declare-fun e!51059 () Int)

(assert (=> d!61032 (= lt!21162 e!51059)))

(declare-fun c!22844 () Bool)

(assert (=> d!61032 (= c!22844 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))))))

(assert (=> d!61032 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))) lt!21162)))

(declare-fun b!93308 () Bool)

(assert (=> b!93308 (= e!51059 0)))

(declare-fun b!93309 () Bool)

(assert (=> b!93309 (= e!51059 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (rec3!7 i!658 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))) (head!1185 (Cons!747 #b00000000000000000000000000000001 (Cons!747 #b00000000000000000000000000000010 (Cons!747 #b00000000000000000000000000000011 Nil!749))))))))))))))))))))

(assert (= (and d!61032 c!22844) b!93308))

(assert (= (and d!61032 (not c!22844)) b!93309))

(declare-fun m!88983 () Bool)

(assert (=> b!93309 m!88983))

(assert (=> b!93281 d!61032))

(declare-fun d!61034 () Bool)

(declare-fun c!22845 () Bool)

(assert (=> d!61034 (= c!22845 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))))))

(declare-fun e!51060 () (Set (_ BitVec 32)))

(assert (=> d!61034 (= (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))) e!51060)))

(declare-fun b!93310 () Bool)

(assert (=> b!93310 (= e!51060 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93311 () Bool)

(assert (=> b!93311 (= e!51060 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21123)))))))))))

(assert (= (and d!61034 c!22845) b!93310))

(assert (= (and d!61034 (not c!22845)) b!93311))

(declare-fun m!88985 () Bool)

(assert (=> b!93311 m!88985))

(declare-fun m!88987 () Bool)

(assert (=> b!93311 m!88987))

(assert (=> b!93279 d!61034))

(declare-fun d!61036 () Bool)

(declare-fun c!22846 () Bool)

(assert (=> d!61036 (= c!22846 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))))))

(declare-fun e!51061 () (Set (_ BitVec 32)))

(assert (=> d!61036 (= (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))) e!51061)))

(declare-fun b!93312 () Bool)

(assert (=> b!93312 (= e!51061 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93313 () Bool)

(assert (=> b!93313 (= e!51061 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))))))))

(assert (= (and d!61036 c!22846) b!93312))

(assert (= (and d!61036 (not c!22846)) b!93313))

(declare-fun m!88989 () Bool)

(assert (=> b!93313 m!88989))

(declare-fun m!88991 () Bool)

(assert (=> b!93313 m!88991))

(assert (=> b!93291 d!61036))

(declare-fun d!61038 () Bool)

(declare-fun c!22847 () Bool)

(assert (=> d!61038 (= c!22847 (is-Nil!749 (t!49226 (t!49226 (t!49226 lt!21136)))))))

(declare-fun e!51062 () (Set (_ BitVec 32)))

(assert (=> d!61038 (= (content!183 (t!49226 (t!49226 (t!49226 lt!21136)))) e!51062)))

(declare-fun b!93314 () Bool)

(assert (=> b!93314 (= e!51062 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93315 () Bool)

(assert (=> b!93315 (= e!51062 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 lt!21136)))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 lt!21136)))))))))

(assert (= (and d!61038 c!22847) b!93314))

(assert (= (and d!61038 (not c!22847)) b!93315))

(declare-fun m!88993 () Bool)

(assert (=> b!93315 m!88993))

(declare-fun m!88995 () Bool)

(assert (=> b!93315 m!88995))

(assert (=> b!93285 d!61038))

(declare-fun d!61040 () Bool)

(declare-fun c!22848 () Bool)

(assert (=> d!61040 (= c!22848 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))))

(declare-fun e!51063 () (Set (_ BitVec 32)))

(assert (=> d!61040 (= (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))) e!51063)))

(declare-fun b!93316 () Bool)

(assert (=> b!93316 (= e!51063 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!93317 () Bool)

(assert (=> b!93317 (= e!51063 (union (insert (h!1181 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))) (as emptyset (Set (_ BitVec 32)))) (content!183 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21119))))))))))))

(assert (= (and d!61040 c!22848) b!93316))

(assert (= (and d!61040 (not c!22848)) b!93317))

(declare-fun m!88997 () Bool)

(assert (=> b!93317 m!88997))

(declare-fun m!88999 () Bool)

(assert (=> b!93317 m!88999))

(assert (=> b!93295 d!61040))

(declare-fun d!61042 () Bool)

(declare-fun lt!21163 () Int)

(assert (=> d!61042 (>= lt!21163 0)))

(declare-fun e!51064 () Int)

(assert (=> d!61042 (= lt!21163 e!51064)))

(declare-fun c!22849 () Bool)

(assert (=> d!61042 (= c!22849 (is-Nil!749 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))))))

(assert (=> d!61042 (= (size!917 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))) lt!21163)))

(declare-fun b!93318 () Bool)

(assert (=> b!93318 (= e!51064 0)))

(declare-fun b!93319 () Bool)

(assert (=> b!93319 (= e!51064 (+ 1 (size!917 (t!49226 (t!49226 (t!49226 (t!49226 (t!49226 lt!21131))))))))))

(assert (= (and d!61042 c!22849) b!93318))

(assert (= (and d!61042 (not c!22849)) b!93319))

(declare-fun m!89001 () Bool)

(assert (=> b!93319 m!89001))

(assert (=> b!93289 d!61042))

(declare-fun b!93320 () Bool)

(declare-fun e!51065 () Bool)

(declare-fun tp!18050 () Bool)

(assert (=> b!93320 (= e!51065 (and tp_is_empty!515 tp!18050))))

(assert (=> b!93299 (= tp!18049 e!51065)))

(assert (= (and b!93299 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 i!658))))))))))))) b!93320))

(declare-fun b!93321 () Bool)

(declare-fun e!51066 () Bool)

(declare-fun tp!18051 () Bool)

(assert (=> b!93321 (= e!51066 (and tp_is_empty!515 tp!18051))))

(assert (=> b!93298 (= tp!18048 e!51066)))

(assert (= (and b!93298 (is-Cons!746 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 (t!49225 n!1878))))))))))))) b!93321))

(push 1)

(assert (not b!93317))

(assert (not b!93301))

(assert (not b!93305))

(assert (not b!93319))

(assert (not b!93311))

(assert (not b!93321))

(assert (not b!93320))

(assert (not b!93315))

(assert tp_is_empty!515)

(assert (not b!93313))

(assert (not b!93309))

(assert (not b!93307))

(assert (not b!93303))

(check-sat)

(get-model)

(pop 1)

