; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5724 () Bool)

(assert start!5724)

(declare-fun b!43734 () Bool)

(declare-fun res!20684 () Bool)

(declare-fun e!22676 () Bool)

(assert (=> b!43734 (=> (not res!20684) (not e!22676))))

(declare-datatypes () ((Nat!112 (Zero!96) (Succ!93 (n!1237 Nat!112)))))

(declare-fun n!813 () Nat!112)

(declare-fun n2!229 () Nat!112)

(declare-datatypes () ((Unit!416 (Unit!417))))

(declare-fun x$79!1 () Unit!416)

(declare-fun associative_plus_minus!0 (Nat!112 Nat!112 Nat!112) Unit!416)

(declare-fun *!4 (Nat!112 Nat!112) Nat!112)

(declare-fun pow!0 (Nat!112 Nat!112) Nat!112)

(declare-fun +!5 (Nat!112 Nat!112) Nat!112)

(assert (=> b!43734 (= res!20684 (= x$79!1 (associative_plus_minus!0 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96))))))

(declare-fun res!20683 () Bool)

(assert (=> start!5724 (=> (not res!20683) (not e!22676))))

(declare-fun tmp!191 () Unit!416)

(declare-fun pow_positive!0 (Nat!112 Nat!112) Unit!416)

(assert (=> start!5724 (= res!20683 (= tmp!191 (pow_positive!0 (Succ!93 (Succ!93 Zero!96)) n!813)))))

(assert (=> start!5724 e!22676))

(assert (=> start!5724 true))

(declare-fun b!43733 () Bool)

(declare-fun res!20681 () Bool)

(assert (=> b!43733 (=> (not res!20681) (not e!22676))))

(declare-fun tmp!194 () Unit!416)

(declare-fun increasing_times!0 (Nat!112 Nat!112) Unit!416)

(assert (=> b!43733 (= res!20681 (= tmp!194 (increasing_times!0 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))))))

(declare-fun b!43732 () Bool)

(declare-fun res!20682 () Bool)

(assert (=> b!43732 (=> (not res!20682) (not e!22676))))

(declare-fun tmp!193 () Unit!416)

(declare-fun commutative_plus!0 (Nat!112 Nat!112) Unit!416)

(assert (=> b!43732 (= res!20682 (= tmp!193 (commutative_plus!0 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))

(declare-fun b!43735 () Bool)

(declare-fun -!4 (Nat!112 Nat!112) Nat!112)

(assert (=> b!43735 (= e!22676 (not (= (+!5 (Succ!93 Zero!96) (-!4 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96))) (-!4 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) (Succ!93 Zero!96)))))))

(assert (= (and start!5724 res!20683) b!43732))

(assert (= (and b!43732 res!20682) b!43733))

(assert (= (and b!43733 res!20681) b!43734))

(assert (= (and b!43734 res!20684) b!43735))

(declare-fun m!46987 () Bool)

(assert (=> start!5724 m!46987))

(declare-fun m!46989 () Bool)

(assert (=> b!43733 m!46989))

(declare-fun m!46991 () Bool)

(assert (=> b!43733 m!46991))

(assert (=> b!43733 m!46991))

(declare-fun m!46993 () Bool)

(assert (=> b!43733 m!46993))

(assert (=> b!43733 m!46989))

(assert (=> b!43733 m!46993))

(declare-fun m!46995 () Bool)

(assert (=> b!43733 m!46995))

(assert (=> b!43734 m!46991))

(assert (=> b!43734 m!46993))

(declare-fun m!46997 () Bool)

(assert (=> b!43734 m!46997))

(declare-fun m!46999 () Bool)

(assert (=> b!43734 m!46999))

(assert (=> b!43734 m!46989))

(assert (=> b!43734 m!46991))

(assert (=> b!43734 m!46989))

(assert (=> b!43734 m!46993))

(assert (=> b!43734 m!46997))

(assert (=> b!43732 m!46991))

(assert (=> b!43732 m!46991))

(declare-fun m!47001 () Bool)

(assert (=> b!43732 m!47001))

(assert (=> b!43735 m!46991))

(assert (=> b!43735 m!46993))

(declare-fun m!47003 () Bool)

(assert (=> b!43735 m!47003))

(declare-fun m!47005 () Bool)

(assert (=> b!43735 m!47005))

(declare-fun m!47007 () Bool)

(assert (=> b!43735 m!47007))

(declare-fun m!47009 () Bool)

(assert (=> b!43735 m!47009))

(assert (=> b!43735 m!46989))

(assert (=> b!43735 m!46991))

(assert (=> b!43735 m!46989))

(assert (=> b!43735 m!46993))

(assert (=> b!43735 m!46997))

(assert (=> b!43735 m!46997))

(assert (=> b!43735 m!47003))

(assert (=> b!43735 m!46997))

(assert (=> b!43735 m!47007))

(push 1)

(assert (not b!43733))

(assert (not start!5724))

(assert (not b!43735))

(assert (not b!43732))

(assert (not b!43734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!31078 () Bool)

(assert (=> d!31078 (= (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)) (+!5 (Succ!93 Zero!96) (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229)))))

(assert (=> d!31078 true))

(declare-fun x$13!100 () Unit!416)

(assert (=> d!31078 (= (commutative_plus!0 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)) x$13!100)))

(declare-fun bs!17720 () Bool)

(assert (= bs!17720 d!31078))

(assert (=> bs!17720 m!46991))

(assert (=> bs!17720 m!46993))

(assert (=> bs!17720 m!46991))

(declare-fun m!47011 () Bool)

(assert (=> bs!17720 m!47011))

(assert (=> b!43732 d!31078))

(declare-fun d!31080 () Bool)

(declare-fun c!9315 () Bool)

(assert (=> d!31080 (= c!9315 (is-Zero!96 (Succ!93 (Succ!93 Zero!96))))))

(declare-fun e!22679 () Nat!112)

(assert (=> d!31080 (= (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) e!22679)))

(declare-fun b!43740 () Bool)

(assert (=> b!43740 (= e!22679 Zero!96)))

(declare-fun b!43741 () Bool)

(assert (=> b!43741 (= e!22679 (+!5 (*!4 (n!1237 (Succ!93 (Succ!93 Zero!96))) n2!229) n2!229))))

(assert (= (and d!31080 c!9315) b!43740))

(assert (= (and d!31080 (not c!9315)) b!43741))

(declare-fun m!47013 () Bool)

(assert (=> b!43741 m!47013))

(assert (=> b!43741 m!47013))

(declare-fun m!47015 () Bool)

(assert (=> b!43741 m!47015))

(assert (=> b!43732 d!31080))

(declare-fun d!31082 () Bool)

(declare-fun >!2 (Nat!112 Nat!112) Bool)

(assert (=> d!31082 (>!2 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) Zero!96)))

(assert (=> d!31082 true))

(declare-fun x$67!31 () Unit!416)

(assert (=> d!31082 (= (pow_positive!0 (Succ!93 (Succ!93 Zero!96)) n!813) x$67!31)))

(declare-fun bs!17721 () Bool)

(assert (= bs!17721 d!31082))

(assert (=> bs!17721 m!46989))

(assert (=> bs!17721 m!46989))

(declare-fun m!47017 () Bool)

(assert (=> bs!17721 m!47017))

(assert (=> start!5724 d!31082))

(declare-fun d!31084 () Bool)

(declare-fun <=!2 (Nat!112 Nat!112) Bool)

(assert (=> d!31084 (<=!2 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))

(assert (=> d!31084 true))

(declare-fun x$66!29 () Unit!416)

(assert (=> d!31084 (= (increasing_times!0 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) x$66!29)))

(declare-fun bs!17722 () Bool)

(assert (= bs!17722 d!31084))

(assert (=> bs!17722 m!46989))

(assert (=> bs!17722 m!46993))

(assert (=> bs!17722 m!46997))

(assert (=> bs!17722 m!46989))

(assert (=> bs!17722 m!46997))

(declare-fun m!47019 () Bool)

(assert (=> bs!17722 m!47019))

(assert (=> b!43733 d!31084))

(declare-fun d!31086 () Bool)

(declare-fun c!9318 () Bool)

(assert (=> d!31086 (= c!9318 (is-Succ!93 n!813))))

(declare-fun e!22682 () Nat!112)

(assert (=> d!31086 (= (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) e!22682)))

(declare-fun b!43746 () Bool)

(assert (=> b!43746 (= e!22682 (*!4 (Succ!93 (Succ!93 Zero!96)) (pow!0 (Succ!93 (Succ!93 Zero!96)) (n!1237 n!813))))))

(declare-fun b!43747 () Bool)

(assert (=> b!43747 (= e!22682 (Succ!93 Zero!96))))

(assert (= (and d!31086 c!9318) b!43746))

(assert (= (and d!31086 (not c!9318)) b!43747))

(declare-fun m!47021 () Bool)

(assert (=> b!43746 m!47021))

(assert (=> b!43746 m!47021))

(declare-fun m!47023 () Bool)

(assert (=> b!43746 m!47023))

(assert (=> b!43733 d!31086))

(declare-fun d!31088 () Bool)

(declare-fun c!9321 () Bool)

(assert (=> d!31088 (= c!9321 (is-Zero!96 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229)))))

(declare-fun e!22685 () Nat!112)

(assert (=> d!31088 (= (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)) e!22685)))

(declare-fun b!43752 () Bool)

(assert (=> b!43752 (= e!22685 (Succ!93 Zero!96))))

(declare-fun b!43753 () Bool)

(assert (=> b!43753 (= e!22685 (Succ!93 (+!5 (n!1237 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229)) (Succ!93 Zero!96))))))

(assert (= (and d!31088 c!9321) b!43752))

(assert (= (and d!31088 (not c!9321)) b!43753))

(declare-fun m!47025 () Bool)

(assert (=> b!43753 m!47025))

(assert (=> b!43733 d!31088))

(assert (=> b!43733 d!31080))

(declare-fun d!31090 () Bool)

(declare-fun c!9322 () Bool)

(assert (=> d!31090 (= c!9322 (is-Zero!96 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813)))))

(declare-fun e!22686 () Nat!112)

(assert (=> d!31090 (= (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) e!22686)))

(declare-fun b!43754 () Bool)

(assert (=> b!43754 (= e!22686 Zero!96)))

(declare-fun b!43755 () Bool)

(assert (=> b!43755 (= e!22686 (+!5 (*!4 (n!1237 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813)) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))

(assert (= (and d!31090 c!9322) b!43754))

(assert (= (and d!31090 (not c!9322)) b!43755))

(assert (=> b!43755 m!46993))

(declare-fun m!47027 () Bool)

(assert (=> b!43755 m!47027))

(assert (=> b!43755 m!47027))

(assert (=> b!43755 m!46993))

(declare-fun m!47029 () Bool)

(assert (=> b!43755 m!47029))

(assert (=> b!43735 d!31090))

(declare-fun b!43766 () Bool)

(declare-fun e!22695 () Bool)

(declare-fun e!22694 () Bool)

(assert (=> b!43766 (= e!22695 e!22694)))

(declare-fun res!20694 () Bool)

(assert (=> b!43766 (=> res!20694 e!22694)))

(assert (=> b!43766 (= res!20694 (not (>!2 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) Zero!96)))))

(declare-fun b!43767 () Bool)

(declare-fun e!22693 () Nat!112)

(assert (=> b!43767 (= e!22693 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))))))

(declare-fun b!43768 () Bool)

(declare-fun res!20693 () Bool)

(assert (=> b!43768 (=> res!20693 e!22694)))

(assert (=> b!43768 (= res!20693 (not (>!2 (Succ!93 Zero!96) Zero!96)))))

(declare-fun b!43769 () Bool)

(declare-fun lt!7969 () Nat!112)

(declare-fun repr!0 (Nat!112) Int)

(assert (=> b!43769 (= e!22694 (< (repr!0 lt!7969) (repr!0 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))))))))

(declare-fun b!43770 () Bool)

(assert (=> b!43770 (= e!22693 (-!4 (n!1237 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))) (n!1237 (Succ!93 Zero!96))))))

(declare-fun d!31092 () Bool)

(assert (=> d!31092 e!22695))

(declare-fun res!20692 () Bool)

(assert (=> d!31092 (=> (not res!20692) (not e!22695))))

(assert (=> d!31092 (= res!20692 (<= (repr!0 lt!7969) (repr!0 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))))))))

(assert (=> d!31092 (= lt!7969 e!22693)))

(declare-fun c!9325 () Bool)

(assert (=> d!31092 (= c!9325 (and (is-Succ!93 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))) (is-Succ!93 (Succ!93 Zero!96))))))

(assert (=> d!31092 (= (-!4 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) (Succ!93 Zero!96)) lt!7969)))

(assert (= (and d!31092 c!9325) b!43770))

(assert (= (and d!31092 (not c!9325)) b!43767))

(assert (= (and d!31092 res!20692) b!43766))

(assert (= (and b!43766 (not res!20694)) b!43768))

(assert (= (and b!43768 (not res!20693)) b!43769))

(declare-fun m!47031 () Bool)

(assert (=> d!31092 m!47031))

(assert (=> d!31092 m!47003))

(declare-fun m!47033 () Bool)

(assert (=> d!31092 m!47033))

(declare-fun m!47035 () Bool)

(assert (=> b!43770 m!47035))

(declare-fun m!47037 () Bool)

(assert (=> b!43768 m!47037))

(assert (=> b!43766 m!47003))

(declare-fun m!47039 () Bool)

(assert (=> b!43766 m!47039))

(assert (=> b!43769 m!47031))

(assert (=> b!43769 m!47003))

(assert (=> b!43769 m!47033))

(assert (=> b!43735 d!31092))

(assert (=> b!43735 d!31088))

(assert (=> b!43735 d!31080))

(assert (=> b!43735 d!31086))

(declare-fun d!31094 () Bool)

(declare-fun c!9326 () Bool)

(assert (=> d!31094 (= c!9326 (is-Zero!96 (Succ!93 Zero!96)))))

(declare-fun e!22696 () Nat!112)

(assert (=> d!31094 (= (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) e!22696)))

(declare-fun b!43771 () Bool)

(assert (=> b!43771 (= e!22696 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))

(declare-fun b!43772 () Bool)

(assert (=> b!43772 (= e!22696 (Succ!93 (+!5 (n!1237 (Succ!93 Zero!96)) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))))

(assert (= (and d!31094 c!9326) b!43771))

(assert (= (and d!31094 (not c!9326)) b!43772))

(assert (=> b!43772 m!46997))

(declare-fun m!47041 () Bool)

(assert (=> b!43772 m!47041))

(assert (=> b!43735 d!31094))

(declare-fun d!31096 () Bool)

(declare-fun c!9327 () Bool)

(assert (=> d!31096 (= c!9327 (is-Zero!96 (Succ!93 Zero!96)))))

(declare-fun e!22697 () Nat!112)

(assert (=> d!31096 (= (+!5 (Succ!93 Zero!96) (-!4 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96))) e!22697)))

(declare-fun b!43773 () Bool)

(assert (=> b!43773 (= e!22697 (-!4 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96)))))

(declare-fun b!43774 () Bool)

(assert (=> b!43774 (= e!22697 (Succ!93 (+!5 (n!1237 (Succ!93 Zero!96)) (-!4 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96)))))))

(assert (= (and d!31096 c!9327) b!43773))

(assert (= (and d!31096 (not c!9327)) b!43774))

(assert (=> b!43774 m!47007))

(declare-fun m!47043 () Bool)

(assert (=> b!43774 m!47043))

(assert (=> b!43735 d!31096))

(declare-fun b!43775 () Bool)

(declare-fun e!22700 () Bool)

(declare-fun e!22699 () Bool)

(assert (=> b!43775 (= e!22700 e!22699)))

(declare-fun res!20697 () Bool)

(assert (=> b!43775 (=> res!20697 e!22699)))

(assert (=> b!43775 (= res!20697 (not (>!2 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) Zero!96)))))

(declare-fun b!43776 () Bool)

(declare-fun e!22698 () Nat!112)

(assert (=> b!43776 (= e!22698 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))

(declare-fun b!43777 () Bool)

(declare-fun res!20696 () Bool)

(assert (=> b!43777 (=> res!20696 e!22699)))

(assert (=> b!43777 (= res!20696 (not (>!2 (Succ!93 Zero!96) Zero!96)))))

(declare-fun lt!7970 () Nat!112)

(declare-fun b!43778 () Bool)

(assert (=> b!43778 (= e!22699 (< (repr!0 lt!7970) (repr!0 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))))

(declare-fun b!43779 () Bool)

(assert (=> b!43779 (= e!22698 (-!4 (n!1237 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) (n!1237 (Succ!93 Zero!96))))))

(declare-fun d!31098 () Bool)

(assert (=> d!31098 e!22700))

(declare-fun res!20695 () Bool)

(assert (=> d!31098 (=> (not res!20695) (not e!22700))))

(assert (=> d!31098 (= res!20695 (<= (repr!0 lt!7970) (repr!0 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))))))))

(assert (=> d!31098 (= lt!7970 e!22698)))

(declare-fun c!9328 () Bool)

(assert (=> d!31098 (= c!9328 (and (is-Succ!93 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) (is-Succ!93 (Succ!93 Zero!96))))))

(assert (=> d!31098 (= (-!4 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96)) lt!7970)))

(assert (= (and d!31098 c!9328) b!43779))

(assert (= (and d!31098 (not c!9328)) b!43776))

(assert (= (and d!31098 res!20695) b!43775))

(assert (= (and b!43775 (not res!20697)) b!43777))

(assert (= (and b!43777 (not res!20696)) b!43778))

(declare-fun m!47045 () Bool)

(assert (=> d!31098 m!47045))

(assert (=> d!31098 m!46997))

(declare-fun m!47047 () Bool)

(assert (=> d!31098 m!47047))

(declare-fun m!47049 () Bool)

(assert (=> b!43779 m!47049))

(assert (=> b!43777 m!47037))

(assert (=> b!43775 m!46997))

(declare-fun m!47051 () Bool)

(assert (=> b!43775 m!47051))

(assert (=> b!43778 m!47045))

(assert (=> b!43778 m!46997))

(assert (=> b!43778 m!47047))

(assert (=> b!43735 d!31098))

(assert (=> b!43734 d!31090))

(assert (=> b!43734 d!31088))

(declare-fun d!31100 () Bool)

(assert (=> d!31100 (= (-!4 (+!5 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96)))) (Succ!93 Zero!96)) (+!5 (Succ!93 Zero!96) (-!4 (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96))))))

(assert (=> d!31100 true))

(declare-fun x$57!65 () Unit!416)

(assert (=> d!31100 (= (associative_plus_minus!0 (Succ!93 Zero!96) (*!4 (pow!0 (Succ!93 (Succ!93 Zero!96)) n!813) (+!5 (*!4 (Succ!93 (Succ!93 Zero!96)) n2!229) (Succ!93 Zero!96))) (Succ!93 Zero!96)) x$57!65)))

(declare-fun bs!17723 () Bool)

(assert (= bs!17723 d!31100))

(assert (=> bs!17723 m!46997))

(assert (=> bs!17723 m!47003))

(assert (=> bs!17723 m!47003))

(assert (=> bs!17723 m!47005))

(assert (=> bs!17723 m!46997))

(assert (=> bs!17723 m!47007))

(assert (=> bs!17723 m!47007))

(assert (=> bs!17723 m!47009))

(assert (=> b!43734 d!31100))

(assert (=> b!43734 d!31080))

(assert (=> b!43734 d!31086))

(push 1)

(assert (not b!43766))

(assert (not d!31098))

(assert (not d!31092))

(assert (not b!43779))

(assert (not b!43741))

(assert (not d!31078))

(assert (not b!43777))

(assert (not b!43772))

(assert (not b!43770))

(assert (not d!31100))

(assert (not b!43753))

(assert (not b!43774))

(assert (not b!43755))

(assert (not b!43778))

(assert (not d!31082))

(assert (not d!31084))

(assert (not b!43769))

(assert (not b!43775))

(assert (not b!43746))

(assert (not b!43768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

