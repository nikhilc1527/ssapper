; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6178 () Bool)

(assert start!6178)

(declare-fun res!21672 () Bool)

(declare-fun e!23792 () Bool)

(assert (=> start!6178 (=> (not res!21672) (not e!23792))))

(declare-datatypes () ((Unit!569 (Unit!570))))

(declare-fun tmp!200 () Unit!569)

(declare-datatypes () ((Nat!182 (Zero!166) (Succ!163 (n!1315 Nat!182)))))

(declare-fun n2!248 () Nat!182)

(declare-fun n1!236 () Nat!182)

(declare-fun associative_plus_minus!0 (Nat!182 Nat!182 Nat!182) Unit!569)

(assert (=> start!6178 (= res!21672 (= tmp!200 (associative_plus_minus!0 n1!236 n2!248 n2!248)))))

(assert (=> start!6178 e!23792))

(assert (=> start!6178 true))

(declare-fun b!45861 () Bool)

(declare-fun res!21673 () Bool)

(assert (=> b!45861 (=> (not res!21673) (not e!23792))))

(declare-fun tmp!201 () Unit!569)

(declare-fun minus_identity!0 (Nat!182) Unit!569)

(assert (=> b!45861 (= res!21673 (= tmp!201 (minus_identity!0 n2!248)))))

(declare-fun b!45862 () Bool)

(declare-fun res!21674 () Bool)

(assert (=> b!45862 (=> (not res!21674) (not e!23792))))

(declare-fun x$58!58 () Unit!569)

(declare-fun plus_zero!0 (Nat!182) Unit!569)

(assert (=> b!45862 (= res!21674 (= x$58!58 (plus_zero!0 n1!236)))))

(declare-fun b!45863 () Bool)

(declare-fun -!4 (Nat!182 Nat!182) Nat!182)

(declare-fun +!5 (Nat!182 Nat!182) Nat!182)

(assert (=> b!45863 (= e!23792 (not (= (-!4 (+!5 n1!236 n2!248) n2!248) n1!236)))))

(assert (= (and start!6178 res!21672) b!45861))

(assert (= (and b!45861 res!21673) b!45862))

(assert (= (and b!45862 res!21674) b!45863))

(declare-fun m!48763 () Bool)

(assert (=> start!6178 m!48763))

(declare-fun m!48765 () Bool)

(assert (=> b!45861 m!48765))

(declare-fun m!48767 () Bool)

(assert (=> b!45862 m!48767))

(declare-fun m!48769 () Bool)

(assert (=> b!45863 m!48769))

(assert (=> b!45863 m!48769))

(declare-fun m!48771 () Bool)

(assert (=> b!45863 m!48771))

(push 1)

(assert (not b!45863))

(assert (not b!45862))

(assert (not start!6178))

(assert (not b!45861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45874 () Bool)

(declare-fun e!23801 () Bool)

(declare-fun lt!8348 () Nat!182)

(declare-fun repr!0 (Nat!182) Int)

(assert (=> b!45874 (= e!23801 (< (repr!0 lt!8348) (repr!0 (+!5 n1!236 n2!248))))))

(declare-fun b!45875 () Bool)

(declare-fun e!23799 () Nat!182)

(assert (=> b!45875 (= e!23799 (-!4 (n!1315 (+!5 n1!236 n2!248)) (n!1315 n2!248)))))

(declare-fun b!45876 () Bool)

(declare-fun res!21683 () Bool)

(assert (=> b!45876 (=> res!21683 e!23801)))

(declare-fun >!2 (Nat!182 Nat!182) Bool)

(assert (=> b!45876 (= res!21683 (not (>!2 n2!248 Zero!166)))))

(declare-fun b!45877 () Bool)

(declare-fun e!23800 () Bool)

(assert (=> b!45877 (= e!23800 e!23801)))

(declare-fun res!21682 () Bool)

(assert (=> b!45877 (=> res!21682 e!23801)))

(assert (=> b!45877 (= res!21682 (not (>!2 (+!5 n1!236 n2!248) Zero!166)))))

(declare-fun d!32052 () Bool)

(assert (=> d!32052 e!23800))

(declare-fun res!21684 () Bool)

(assert (=> d!32052 (=> (not res!21684) (not e!23800))))

(assert (=> d!32052 (= res!21684 (<= (repr!0 lt!8348) (repr!0 (+!5 n1!236 n2!248))))))

(assert (=> d!32052 (= lt!8348 e!23799)))

(declare-fun c!9692 () Bool)

(assert (=> d!32052 (= c!9692 (and (is-Succ!163 (+!5 n1!236 n2!248)) (is-Succ!163 n2!248)))))

(assert (=> d!32052 (= (-!4 (+!5 n1!236 n2!248) n2!248) lt!8348)))

(declare-fun b!45878 () Bool)

(assert (=> b!45878 (= e!23799 (+!5 n1!236 n2!248))))

(assert (= (and d!32052 c!9692) b!45875))

(assert (= (and d!32052 (not c!9692)) b!45878))

(assert (= (and d!32052 res!21684) b!45877))

(assert (= (and b!45877 (not res!21682)) b!45876))

(assert (= (and b!45876 (not res!21683)) b!45874))

(declare-fun m!48773 () Bool)

(assert (=> b!45876 m!48773))

(declare-fun m!48775 () Bool)

(assert (=> b!45875 m!48775))

(declare-fun m!48777 () Bool)

(assert (=> d!32052 m!48777))

(assert (=> d!32052 m!48769))

(declare-fun m!48779 () Bool)

(assert (=> d!32052 m!48779))

(assert (=> b!45877 m!48769))

(declare-fun m!48781 () Bool)

(assert (=> b!45877 m!48781))

(assert (=> b!45874 m!48777))

(assert (=> b!45874 m!48769))

(assert (=> b!45874 m!48779))

(assert (=> b!45863 d!32052))

(declare-fun d!32054 () Bool)

(declare-fun c!9695 () Bool)

(assert (=> d!32054 (= c!9695 (is-Zero!166 n1!236))))

(declare-fun e!23804 () Nat!182)

(assert (=> d!32054 (= (+!5 n1!236 n2!248) e!23804)))

(declare-fun b!45883 () Bool)

(assert (=> b!45883 (= e!23804 n2!248)))

(declare-fun b!45884 () Bool)

(assert (=> b!45884 (= e!23804 (Succ!163 (+!5 (n!1315 n1!236) n2!248)))))

(assert (= (and d!32054 c!9695) b!45883))

(assert (= (and d!32054 (not c!9695)) b!45884))

(declare-fun m!48783 () Bool)

(assert (=> b!45884 m!48783))

(assert (=> b!45863 d!32054))

(declare-fun b!45890 () Bool)

(declare-fun e!23807 () Unit!569)

(declare-fun Unit!571 () Unit!569)

(assert (=> b!45890 (= e!23807 Unit!571)))

(declare-fun lt!8354 () Unit!569)

(assert (=> b!45890 (= lt!8354 (plus_zero!0 (n!1315 n1!236)))))

(declare-fun d!32056 () Bool)

(assert (=> d!32056 (= (+!5 n1!236 Zero!166) n1!236)))

(declare-fun lt!8353 () Unit!569)

(assert (=> d!32056 (= lt!8353 e!23807)))

(declare-fun c!9698 () Bool)

(assert (=> d!32056 (= c!9698 (is-Zero!166 n1!236))))

(assert (=> d!32056 (= (plus_zero!0 n1!236) lt!8353)))

(declare-fun b!45889 () Bool)

(declare-fun Unit!572 () Unit!569)

(assert (=> b!45889 (= e!23807 Unit!572)))

(assert (= (and d!32056 c!9698) b!45889))

(assert (= (and d!32056 (not c!9698)) b!45890))

(declare-fun m!48785 () Bool)

(assert (=> b!45890 m!48785))

(declare-fun m!48787 () Bool)

(assert (=> d!32056 m!48787))

(assert (=> b!45862 d!32056))

(declare-fun d!32058 () Bool)

(assert (=> d!32058 (= (-!4 (+!5 n1!236 n2!248) n2!248) (+!5 n1!236 (-!4 n2!248 n2!248)))))

(assert (=> d!32058 true))

(declare-fun x$57!68 () Unit!569)

(assert (=> d!32058 (= (associative_plus_minus!0 n1!236 n2!248 n2!248) x$57!68)))

(declare-fun bs!18095 () Bool)

(assert (= bs!18095 d!32058))

(assert (=> bs!18095 m!48769))

(assert (=> bs!18095 m!48769))

(assert (=> bs!18095 m!48771))

(declare-fun m!48789 () Bool)

(assert (=> bs!18095 m!48789))

(assert (=> bs!18095 m!48789))

(declare-fun m!48791 () Bool)

(assert (=> bs!18095 m!48791))

(assert (=> start!6178 d!32058))

(declare-fun b!45896 () Bool)

(declare-fun e!23810 () Unit!569)

(declare-fun Unit!573 () Unit!569)

(assert (=> b!45896 (= e!23810 Unit!573)))

(declare-fun lt!8360 () Unit!569)

(assert (=> b!45896 (= lt!8360 (minus_identity!0 (n!1315 n2!248)))))

(declare-fun d!32060 () Bool)

(assert (=> d!32060 (= (-!4 n2!248 n2!248) Zero!166)))

(declare-fun lt!8359 () Unit!569)

(assert (=> d!32060 (= lt!8359 e!23810)))

(declare-fun c!9701 () Bool)

(assert (=> d!32060 (= c!9701 (is-Zero!166 n2!248))))

(assert (=> d!32060 (= (minus_identity!0 n2!248) lt!8359)))

(declare-fun b!45895 () Bool)

(declare-fun Unit!574 () Unit!569)

(assert (=> b!45895 (= e!23810 Unit!574)))

(assert (= (and d!32060 c!9701) b!45895))

(assert (= (and d!32060 (not c!9701)) b!45896))

(declare-fun m!48793 () Bool)

(assert (=> b!45896 m!48793))

(assert (=> d!32060 m!48789))

(assert (=> b!45861 d!32060))

(push 1)

(assert (not b!45890))

(assert (not d!32060))

(assert (not b!45876))

(assert (not b!45877))

(assert (not b!45896))

(assert (not b!45884))

(assert (not d!32058))

(assert (not d!32052))

(assert (not b!45874))

(assert (not b!45875))

(assert (not d!32056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

