; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11728 () Bool)

(assert start!11728)

(declare-datatypes () ((MyLetter!2 (L1!2) (L2!2))))

(declare-datatypes () ((MyState!4 (A!3575) (B!619))))

(declare-datatypes () ((Object!469 (MyMachine!2) (MyLetter!3 (value!7183 MyLetter!2)) (MyState!5 (value!7184 MyState!4)) (Open!469 (value!7185 Int)))))

(declare-datatypes () ((List!756 (Cons!709 (h!1126 Object!469) (t!48877 List!756)) (Nil!711))))

(declare-fun contains!4 (Object!469 List!756) Bool)

(assert (=> start!11728 (not (contains!4 MyMachine!2 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))

(declare-fun bs!41510 () Bool)

(assert (= bs!41510 start!11728))

(declare-fun m!85646 () Bool)

(assert (=> bs!41510 m!85646))

(push 1)

(assert (not start!11728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59257 () Bool)

(declare-fun rec!3 (Object!469 Object!469 List!756) Bool)

(declare-fun initial!0 (Object!469) Object!469)

(assert (=> d!59257 (= (contains!4 MyMachine!2 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))) (rec!3 MyMachine!2 (initial!0 MyMachine!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))

(declare-fun bs!41511 () Bool)

(assert (= bs!41511 d!59257))

(declare-fun m!85648 () Bool)

(assert (=> bs!41511 m!85648))

(assert (=> bs!41511 m!85648))

(declare-fun m!85650 () Bool)

(assert (=> bs!41511 m!85650))

(assert (=> start!11728 d!59257))

(push 1)

(assert (not d!59257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!89708 () Bool)

(declare-fun e!48939 () Bool)

(declare-fun e!48938 () Bool)

(assert (=> b!89708 (= e!48939 e!48938)))

(declare-fun res!46959 () Bool)

(assert (=> b!89708 (=> (not res!46959) (not e!48938))))

(declare-fun e!48937 () Bool)

(assert (=> b!89708 (= res!46959 e!48937)))

(declare-fun res!46960 () Bool)

(assert (=> b!89708 (=> (not res!46960) (not e!48937))))

(declare-fun lambda!10944 () Int)

(declare-fun lambda!10946 () Int)

(declare-datatypes () ((Option!572 (Some!546 (v!2672 Object!469)) (None!547))))

(declare-datatypes () ((Option!573 (Some!547 (value!7186 Option!572)) (None!548))))

(declare-fun isEmpty!729 (Option!573) Bool)

(declare-fun InstanceOf!216 (Int Int Option!572) Option!573)

(declare-fun next!1 (Object!469 Object!469 Object!469) Option!572)

(assert (=> b!89708 (= res!46960 (not (isEmpty!729 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))

(declare-fun b!89707 () Bool)

(declare-fun isFinal!0 (Object!469 Object!469) Bool)

(assert (=> b!89707 (= e!48939 (isFinal!0 MyMachine!2 (initial!0 MyMachine!2)))))

(declare-fun d!59259 () Bool)

(declare-fun c!21970 () Bool)

(assert (=> d!59259 (= c!21970 (is-Nil!711 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))

(assert (=> d!59259 (= (rec!3 MyMachine!2 (initial!0 MyMachine!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))) e!48939)))

(declare-fun b!89709 () Bool)

(declare-fun get!896 (Option!573) Option!572)

(assert (=> b!89709 (= e!48937 (is-Some!546 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))

(declare-fun b!89710 () Bool)

(assert (=> b!89710 (= e!48938 (rec!3 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))

(assert (= (and b!89708 res!46960) b!89709))

(assert (= (and b!89708 res!46959) b!89710))

(assert (= (and d!59259 c!21970) b!89707))

(assert (= (and d!59259 (not c!21970)) b!89708))

(assert (=> b!89708 m!85648))

(declare-fun m!85652 () Bool)

(assert (=> b!89708 m!85652))

(assert (=> b!89708 m!85652))

(declare-fun m!85654 () Bool)

(assert (=> b!89708 m!85654))

(assert (=> b!89708 m!85654))

(declare-fun m!85656 () Bool)

(assert (=> b!89708 m!85656))

(assert (=> b!89707 m!85648))

(declare-fun m!85658 () Bool)

(assert (=> b!89707 m!85658))

(assert (=> b!89709 m!85648))

(assert (=> b!89709 m!85652))

(assert (=> b!89709 m!85652))

(assert (=> b!89709 m!85654))

(assert (=> b!89709 m!85654))

(declare-fun m!85660 () Bool)

(assert (=> b!89709 m!85660))

(assert (=> b!89710 m!85648))

(assert (=> b!89710 m!85652))

(assert (=> b!89710 m!85652))

(assert (=> b!89710 m!85654))

(assert (=> b!89710 m!85654))

(assert (=> b!89710 m!85660))

(declare-fun m!85662 () Bool)

(assert (=> b!89710 m!85662))

(assert (=> d!59257 d!59259))

(declare-fun d!59261 () Bool)

(assert (=> d!59261 (= (initial!0 MyMachine!2) (MyState!5 A!3575))))

(assert (=> d!59257 d!59261))

(push 1)

(assert (not b!89710))

(assert (not b!89707))

(assert (not b!89709))

(assert (not b!89708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!41512 () Bool)

(declare-fun b!89712 () Bool)

(assert (= bs!41512 (and b!89712 b!89708)))

(declare-fun lambda!10948 () Int)

(declare-fun lambda!10945 () Int)

(assert (=> bs!41512 (= lambda!10948 lambda!10945)))

(declare-fun lambda!10949 () Int)

(assert (=> bs!41512 (= (= lambda!10948 lambda!10945) (= lambda!10949 lambda!10944))))

(declare-fun lambda!10950 () Int)

(declare-fun lambda!10947 () Int)

(assert (=> bs!41512 (= lambda!10950 lambda!10947)))

(declare-fun lambda!10951 () Int)

(assert (=> bs!41512 (= (= lambda!10950 lambda!10947) (= lambda!10951 lambda!10946))))

(declare-fun e!48942 () Bool)

(declare-fun e!48941 () Bool)

(assert (=> b!89712 (= e!48942 e!48941)))

(declare-fun res!46961 () Bool)

(assert (=> b!89712 (=> (not res!46961) (not e!48941))))

(declare-fun e!48940 () Bool)

(assert (=> b!89712 (= res!46961 e!48940)))

(declare-fun res!46962 () Bool)

(assert (=> b!89712 (=> (not res!46962) (not e!48940))))

(assert (=> b!89712 (= res!46962 (not (isEmpty!729 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))))

(declare-fun b!89711 () Bool)

(assert (=> b!89711 (= e!48942 (isFinal!0 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))))

(declare-fun d!59263 () Bool)

(declare-fun c!21971 () Bool)

(assert (=> d!59263 (= c!21971 (is-Nil!711 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))

(assert (=> d!59263 (= (rec!3 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))) e!48942)))

(declare-fun b!89713 () Bool)

(assert (=> b!89713 (= e!48940 (is-Some!546 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))))

(declare-fun b!89714 () Bool)

(assert (=> b!89714 (= e!48941 (rec!3 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(assert (= (and b!89712 res!46962) b!89713))

(assert (= (and b!89712 res!46961) b!89714))

(assert (= (and d!59263 c!21971) b!89711))

(assert (= (and d!59263 (not c!21971)) b!89712))

(declare-fun m!85664 () Bool)

(assert (=> b!89712 m!85664))

(assert (=> b!89712 m!85664))

(declare-fun m!85666 () Bool)

(assert (=> b!89712 m!85666))

(assert (=> b!89712 m!85666))

(declare-fun m!85668 () Bool)

(assert (=> b!89712 m!85668))

(declare-fun m!85670 () Bool)

(assert (=> b!89711 m!85670))

(assert (=> b!89713 m!85664))

(assert (=> b!89713 m!85664))

(assert (=> b!89713 m!85666))

(assert (=> b!89713 m!85666))

(declare-fun m!85672 () Bool)

(assert (=> b!89713 m!85672))

(assert (=> b!89714 m!85664))

(assert (=> b!89714 m!85664))

(assert (=> b!89714 m!85666))

(assert (=> b!89714 m!85666))

(assert (=> b!89714 m!85672))

(declare-fun m!85674 () Bool)

(assert (=> b!89714 m!85674))

(assert (=> b!89710 d!59263))

(declare-fun d!59265 () Bool)

(assert (=> d!59265 (= (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) (value!7186 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(assert (=> b!89710 d!59265))

(declare-fun d!59267 () Bool)

(declare-fun c!21974 () Bool)

(declare-fun dynLambda!1072 (Int Option!572) Bool)

(assert (=> d!59267 (= c!21974 (dynLambda!1072 lambda!10944 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(declare-fun e!48945 () Option!573)

(assert (=> d!59267 (= (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) e!48945)))

(declare-fun b!89719 () Bool)

(declare-fun dynLambda!1073 (Int Option!572) Option!572)

(assert (=> b!89719 (= e!48945 (Some!547 (dynLambda!1073 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(declare-fun b!89720 () Bool)

(assert (=> b!89720 (= e!48945 None!548)))

(assert (= (and d!59267 c!21974) b!89719))

(assert (= (and d!59267 (not c!21974)) b!89720))

(declare-fun b_lambda!18307 () Bool)

(assert (=> (not b_lambda!18307) (not d!59267)))

(declare-fun b_lambda!18309 () Bool)

(assert (=> (not b_lambda!18309) (not b!89719)))

(assert (=> d!59267 m!85652))

(declare-fun m!85676 () Bool)

(assert (=> d!59267 m!85676))

(assert (=> b!89719 m!85652))

(declare-fun m!85678 () Bool)

(assert (=> b!89719 m!85678))

(assert (=> b!89710 d!59267))

(declare-fun d!59269 () Bool)

(declare-datatypes () ((Option!574 (Some!548 (v!2673 MyState!4)) (None!549))))

(declare-fun lt!20433 () Option!574)

(declare-fun lambda!10958 () Int)

(declare-fun isOption!33 (Option!574 Int) Bool)

(assert (=> d!59269 (isOption!33 lt!20433 lambda!10958)))

(declare-fun next!2 (Object!469 MyState!4 MyLetter!2) Option!574)

(assert (=> d!59269 (= lt!20433 (next!2 MyMachine!2 (value!7184 (initial!0 MyMachine!2)) (value!7183 (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(declare-fun lambda!10959 () Int)

(declare-fun lambda!10960 () Int)

(declare-fun asOption!24 (Option!574 Int Int) Option!572)

(assert (=> d!59269 (= (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))) (asOption!24 lt!20433 lambda!10959 lambda!10960))))

(declare-fun bs!41513 () Bool)

(assert (= bs!41513 d!59269))

(declare-fun m!85680 () Bool)

(assert (=> bs!41513 m!85680))

(declare-fun m!85682 () Bool)

(assert (=> bs!41513 m!85682))

(declare-fun m!85684 () Bool)

(assert (=> bs!41513 m!85684))

(assert (=> b!89710 d!59269))

(declare-fun d!59271 () Bool)

(assert (=> d!59271 (= (isFinal!0 MyMachine!2 (initial!0 MyMachine!2)) false)))

(assert (=> b!89707 d!59271))

(assert (=> b!89709 d!59265))

(assert (=> b!89709 d!59267))

(assert (=> b!89709 d!59269))

(declare-fun d!59273 () Bool)

(assert (=> d!59273 (= (isEmpty!729 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) (is-None!548 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(assert (=> b!89708 d!59273))

(assert (=> b!89708 d!59267))

(assert (=> b!89708 d!59269))

(declare-fun b_lambda!18311 () Bool)

(assert (= b_lambda!18307 (or b!89708 b_lambda!18311)))

(declare-fun bs!41514 () Bool)

(declare-fun d!59275 () Bool)

(assert (= bs!41514 (and d!59275 b!89708)))

(declare-fun isOption!34 (Option!572 Int) Bool)

(assert (=> bs!41514 (= (dynLambda!1072 lambda!10944 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) (isOption!34 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))) lambda!10945))))

(assert (=> bs!41514 m!85652))

(declare-fun m!85686 () Bool)

(assert (=> bs!41514 m!85686))

(assert (=> d!59267 d!59275))

(declare-fun b_lambda!18313 () Bool)

(assert (= b_lambda!18309 (or b!89708 b_lambda!18313)))

(declare-fun bs!41515 () Bool)

(declare-fun d!59277 () Bool)

(assert (= bs!41515 (and d!59277 b!89708)))

(declare-fun asOption!25 (Option!572 Int Int) Option!572)

(assert (=> bs!41515 (= (dynLambda!1073 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) (asOption!25 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))) lambda!10947 lambda!10947))))

(assert (=> bs!41515 m!85652))

(declare-fun m!85688 () Bool)

(assert (=> bs!41515 m!85688))

(assert (=> b!89719 d!59277))

(push 1)

(assert (not b!89711))

(assert (not bs!41515))

(assert (not b_lambda!18311))

(assert (not bs!41514))

(assert (not d!59269))

(assert (not b!89712))

(assert (not b_lambda!18313))

(assert (not b!89713))

(assert (not b!89714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59279 () Bool)

(assert (=> d!59279 (= (isEmpty!729 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (is-None!548 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))

(assert (=> b!89712 d!59279))

(declare-fun c!21975 () Bool)

(declare-fun d!59281 () Bool)

(assert (=> d!59281 (= c!21975 (dynLambda!1072 lambda!10949 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(declare-fun e!48946 () Option!573)

(assert (=> d!59281 (= (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) e!48946)))

(declare-fun b!89721 () Bool)

(assert (=> b!89721 (= e!48946 (Some!547 (dynLambda!1073 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))

(declare-fun b!89722 () Bool)

(assert (=> b!89722 (= e!48946 None!548)))

(assert (= (and d!59281 c!21975) b!89721))

(assert (= (and d!59281 (not c!21975)) b!89722))

(declare-fun b_lambda!18315 () Bool)

(assert (=> (not b_lambda!18315) (not d!59281)))

(declare-fun b_lambda!18317 () Bool)

(assert (=> (not b_lambda!18317) (not b!89721)))

(assert (=> d!59281 m!85664))

(declare-fun m!85690 () Bool)

(assert (=> d!59281 m!85690))

(assert (=> b!89721 m!85664))

(declare-fun m!85692 () Bool)

(assert (=> b!89721 m!85692))

(assert (=> b!89712 d!59281))

(declare-fun bs!41516 () Bool)

(declare-fun d!59283 () Bool)

(assert (= bs!41516 (and d!59283 d!59269)))

(declare-fun lambda!10961 () Int)

(assert (=> bs!41516 (= lambda!10961 lambda!10958)))

(declare-fun lambda!10962 () Int)

(assert (=> bs!41516 (= lambda!10962 lambda!10959)))

(declare-fun lambda!10963 () Int)

(assert (=> bs!41516 (= lambda!10963 lambda!10960)))

(declare-fun lt!20434 () Option!574)

(assert (=> d!59283 (isOption!33 lt!20434 lambda!10961)))

(assert (=> d!59283 (= lt!20434 (next!2 MyMachine!2 (value!7184 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (value!7183 (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(assert (=> d!59283 (= (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) (asOption!24 lt!20434 lambda!10962 lambda!10963))))

(declare-fun bs!41517 () Bool)

(assert (= bs!41517 d!59283))

(declare-fun m!85694 () Bool)

(assert (=> bs!41517 m!85694))

(declare-fun m!85696 () Bool)

(assert (=> bs!41517 m!85696))

(declare-fun m!85698 () Bool)

(assert (=> bs!41517 m!85698))

(assert (=> b!89712 d!59283))

(declare-fun d!59285 () Bool)

(declare-fun c!21978 () Bool)

(assert (=> d!59285 (= c!21978 (is-Some!546 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(declare-fun e!48949 () Option!572)

(assert (=> d!59285 (= (asOption!25 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))) lambda!10947 lambda!10947) e!48949)))

(declare-fun b!89727 () Bool)

(declare-fun dynLambda!1074 (Int Object!469) Object!469)

(assert (=> b!89727 (= e!48949 (Some!546 (dynLambda!1074 lambda!10947 (v!2672 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))

(declare-fun b!89728 () Bool)

(assert (=> b!89728 (= e!48949 None!547)))

(assert (= (and d!59285 c!21978) b!89727))

(assert (= (and d!59285 (not c!21978)) b!89728))

(declare-fun b_lambda!18319 () Bool)

(assert (=> (not b_lambda!18319) (not b!89727)))

(declare-fun m!85700 () Bool)

(assert (=> b!89727 m!85700))

(assert (=> bs!41515 d!59285))

(declare-fun d!59287 () Bool)

(assert (=> d!59287 (= (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (value!7186 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))

(assert (=> b!89713 d!59287))

(assert (=> b!89713 d!59281))

(assert (=> b!89713 d!59283))

(declare-fun d!59289 () Bool)

(declare-fun res!46967 () Bool)

(declare-fun e!48954 () Bool)

(assert (=> d!59289 (=> res!46967 e!48954)))

(declare-fun e!48955 () Bool)

(assert (=> d!59289 (= res!46967 e!48955)))

(declare-fun res!46968 () Bool)

(assert (=> d!59289 (=> (not res!46968) (not e!48955))))

(assert (=> d!59289 (= res!46968 (is-Some!546 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(assert (=> d!59289 (= (isOption!34 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))) lambda!10945) e!48954)))

(declare-fun b!89733 () Bool)

(declare-fun dynLambda!1075 (Int Object!469) Bool)

(assert (=> b!89733 (= e!48955 (dynLambda!1075 lambda!10945 (v!2672 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(declare-fun b!89734 () Bool)

(assert (=> b!89734 (= e!48954 (is-None!547 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(assert (= (and d!59289 res!46968) b!89733))

(assert (= (and d!59289 (not res!46967)) b!89734))

(declare-fun b_lambda!18321 () Bool)

(assert (=> (not b_lambda!18321) (not b!89733)))

(declare-fun m!85702 () Bool)

(assert (=> b!89733 m!85702))

(assert (=> bs!41514 d!59289))

(declare-fun d!59291 () Bool)

(declare-fun res!46973 () Bool)

(declare-fun e!48960 () Bool)

(assert (=> d!59291 (=> res!46973 e!48960)))

(declare-fun e!48961 () Bool)

(assert (=> d!59291 (= res!46973 e!48961)))

(declare-fun res!46974 () Bool)

(assert (=> d!59291 (=> (not res!46974) (not e!48961))))

(assert (=> d!59291 (= res!46974 (is-Some!548 lt!20433))))

(assert (=> d!59291 (= (isOption!33 lt!20433 lambda!10958) e!48960)))

(declare-fun b!89739 () Bool)

(declare-fun dynLambda!1076 (Int MyState!4) Bool)

(assert (=> b!89739 (= e!48961 (dynLambda!1076 lambda!10958 (v!2673 lt!20433)))))

(declare-fun b!89740 () Bool)

(assert (=> b!89740 (= e!48960 (is-None!549 lt!20433))))

(assert (= (and d!59291 res!46974) b!89739))

(assert (= (and d!59291 (not res!46973)) b!89740))

(declare-fun b_lambda!18323 () Bool)

(assert (=> (not b_lambda!18323) (not b!89739)))

(declare-fun m!85704 () Bool)

(assert (=> b!89739 m!85704))

(assert (=> d!59269 d!59291))

(declare-fun d!59293 () Bool)

(assert (=> d!59293 (= (next!2 MyMachine!2 (value!7184 (initial!0 MyMachine!2)) (value!7183 (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) (Some!548 A!3575))))

(assert (=> d!59269 d!59293))

(declare-fun d!59295 () Bool)

(declare-fun c!21981 () Bool)

(assert (=> d!59295 (= c!21981 (is-Some!548 lt!20433))))

(declare-fun e!48964 () Option!572)

(assert (=> d!59295 (= (asOption!24 lt!20433 lambda!10959 lambda!10960) e!48964)))

(declare-fun b!89745 () Bool)

(declare-fun dynLambda!1077 (Int MyState!4) Object!469)

(assert (=> b!89745 (= e!48964 (Some!546 (dynLambda!1077 lambda!10959 (v!2673 lt!20433))))))

(declare-fun b!89746 () Bool)

(assert (=> b!89746 (= e!48964 None!547)))

(assert (= (and d!59295 c!21981) b!89745))

(assert (= (and d!59295 (not c!21981)) b!89746))

(declare-fun b_lambda!18325 () Bool)

(assert (=> (not b_lambda!18325) (not b!89745)))

(declare-fun m!85706 () Bool)

(assert (=> b!89745 m!85706))

(assert (=> d!59269 d!59295))

(declare-fun d!59297 () Bool)

(declare-fun isFinal!1 (Object!469 MyState!4) Bool)

(assert (=> d!59297 (= (isFinal!0 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (isFinal!1 MyMachine!2 (value!7184 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))))

(declare-fun bs!41518 () Bool)

(assert (= bs!41518 d!59297))

(declare-fun m!85708 () Bool)

(assert (=> bs!41518 m!85708))

(assert (=> b!89711 d!59297))

(declare-fun bs!41519 () Bool)

(declare-fun b!89748 () Bool)

(assert (= bs!41519 (and b!89748 b!89708)))

(declare-fun lambda!10964 () Int)

(assert (=> bs!41519 (= lambda!10964 lambda!10945)))

(declare-fun bs!41520 () Bool)

(assert (= bs!41520 (and b!89748 b!89712)))

(assert (=> bs!41520 (= lambda!10964 lambda!10948)))

(declare-fun lambda!10965 () Int)

(assert (=> bs!41519 (= (= lambda!10964 lambda!10945) (= lambda!10965 lambda!10944))))

(assert (=> bs!41520 (= (= lambda!10964 lambda!10948) (= lambda!10965 lambda!10949))))

(declare-fun lambda!10966 () Int)

(assert (=> bs!41519 (= lambda!10966 lambda!10947)))

(assert (=> bs!41520 (= lambda!10966 lambda!10950)))

(declare-fun lambda!10967 () Int)

(assert (=> bs!41519 (= (= lambda!10966 lambda!10947) (= lambda!10967 lambda!10946))))

(assert (=> bs!41520 (= (= lambda!10966 lambda!10950) (= lambda!10967 lambda!10951))))

(declare-fun e!48967 () Bool)

(declare-fun e!48966 () Bool)

(assert (=> b!89748 (= e!48967 e!48966)))

(declare-fun res!46975 () Bool)

(assert (=> b!89748 (=> (not res!46975) (not e!48966))))

(declare-fun e!48965 () Bool)

(assert (=> b!89748 (= res!46975 e!48965)))

(declare-fun res!46976 () Bool)

(assert (=> b!89748 (=> (not res!46976) (not e!48965))))

(assert (=> b!89748 (= res!46976 (not (isEmpty!729 (InstanceOf!216 lambda!10965 lambda!10967 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (h!1126 (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))))

(declare-fun b!89747 () Bool)

(assert (=> b!89747 (= e!48967 (isFinal!0 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))))

(declare-fun d!59299 () Bool)

(declare-fun c!21982 () Bool)

(assert (=> d!59299 (= c!21982 (is-Nil!711 (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(assert (=> d!59299 (= (rec!3 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) e!48967)))

(declare-fun b!89749 () Bool)

(assert (=> b!89749 (= e!48965 (is-Some!546 (get!896 (InstanceOf!216 lambda!10965 lambda!10967 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (h!1126 (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))))))

(declare-fun b!89750 () Bool)

(assert (=> b!89750 (= e!48966 (rec!3 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10965 lambda!10967 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10949 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))) (h!1126 (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))) (t!48877 (t!48877 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))))))

(assert (= (and b!89748 res!46976) b!89749))

(assert (= (and b!89748 res!46975) b!89750))

(assert (= (and d!59299 c!21982) b!89747))

(assert (= (and d!59299 (not c!21982)) b!89748))

(declare-fun m!85710 () Bool)

(assert (=> b!89748 m!85710))

(assert (=> b!89748 m!85710))

(declare-fun m!85712 () Bool)

(assert (=> b!89748 m!85712))

(assert (=> b!89748 m!85712))

(declare-fun m!85714 () Bool)

(assert (=> b!89748 m!85714))

(declare-fun m!85716 () Bool)

(assert (=> b!89747 m!85716))

(assert (=> b!89749 m!85710))

(assert (=> b!89749 m!85710))

(assert (=> b!89749 m!85712))

(assert (=> b!89749 m!85712))

(declare-fun m!85718 () Bool)

(assert (=> b!89749 m!85718))

(assert (=> b!89750 m!85710))

(assert (=> b!89750 m!85710))

(assert (=> b!89750 m!85712))

(assert (=> b!89750 m!85712))

(assert (=> b!89750 m!85718))

(declare-fun m!85720 () Bool)

(assert (=> b!89750 m!85720))

(assert (=> b!89714 d!59299))

(assert (=> b!89714 d!59287))

(assert (=> b!89714 d!59281))

(assert (=> b!89714 d!59283))

(declare-fun b_lambda!18327 () Bool)

(assert (= b_lambda!18323 (or d!59269 b_lambda!18327)))

(declare-fun bs!41521 () Bool)

(declare-fun d!59301 () Bool)

(assert (= bs!41521 (and d!59301 d!59269)))

(assert (=> bs!41521 (= (dynLambda!1076 lambda!10958 (v!2673 lt!20433)) false)))

(assert (=> b!89739 d!59301))

(declare-fun b_lambda!18329 () Bool)

(assert (= b_lambda!18321 (or b!89708 b_lambda!18329)))

(declare-fun bs!41522 () Bool)

(declare-fun d!59303 () Bool)

(assert (= bs!41522 (and d!59303 b!89708)))

(assert (=> bs!41522 (= (dynLambda!1075 lambda!10945 (v!2672 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) false)))

(assert (=> b!89733 d!59303))

(declare-fun b_lambda!18331 () Bool)

(assert (= b_lambda!18317 (or b!89712 b_lambda!18331)))

(declare-fun bs!41523 () Bool)

(declare-fun d!59305 () Bool)

(assert (= bs!41523 (and d!59305 b!89712)))

(assert (=> bs!41523 (= (dynLambda!1073 lambda!10951 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) (asOption!25 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) lambda!10950 lambda!10950))))

(assert (=> bs!41523 m!85664))

(declare-fun m!85722 () Bool)

(assert (=> bs!41523 m!85722))

(assert (=> b!89721 d!59305))

(declare-fun b_lambda!18333 () Bool)

(assert (= b_lambda!18325 (or d!59269 b_lambda!18333)))

(declare-fun bs!41524 () Bool)

(declare-fun d!59307 () Bool)

(assert (= bs!41524 (and d!59307 d!59269)))

(assert (=> bs!41524 (= (dynLambda!1077 lambda!10959 (v!2673 lt!20433)) (MyState!5 (v!2673 lt!20433)))))

(assert (=> b!89745 d!59307))

(declare-fun b_lambda!18335 () Bool)

(assert (= b_lambda!18319 (or b!89708 b_lambda!18335)))

(declare-fun bs!41525 () Bool)

(declare-fun d!59309 () Bool)

(assert (= bs!41525 (and d!59309 b!89708)))

(assert (=> bs!41525 (= (dynLambda!1074 lambda!10947 (v!2672 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) (v!2672 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))))

(assert (=> b!89727 d!59309))

(declare-fun b_lambda!18337 () Bool)

(assert (= b_lambda!18315 (or b!89712 b_lambda!18337)))

(declare-fun bs!41526 () Bool)

(declare-fun d!59311 () Bool)

(assert (= bs!41526 (and d!59311 b!89712)))

(assert (=> bs!41526 (= (dynLambda!1072 lambda!10949 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711)))))))))) (isOption!34 (next!1 MyMachine!2 (v!2672 (get!896 (InstanceOf!216 lambda!10944 lambda!10946 (next!1 MyMachine!2 (initial!0 MyMachine!2) (h!1126 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))))) (h!1126 (t!48877 (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L2!2) (Cons!709 (MyLetter!3 L1!2) (Cons!709 (MyLetter!3 L2!2) Nil!711))))))))) lambda!10948))))

(assert (=> bs!41526 m!85664))

(declare-fun m!85724 () Bool)

(assert (=> bs!41526 m!85724))

(assert (=> d!59281 d!59311))

(push 1)

(assert (not b_lambda!18333))

(assert (not b_lambda!18331))

(assert (not b!89747))

(assert (not b_lambda!18329))

(assert (not d!59297))

(assert (not bs!41523))

(assert (not b_lambda!18311))

(assert (not b_lambda!18327))

(assert (not b_lambda!18337))

(assert (not b!89749))

(assert (not b!89750))

(assert (not b!89748))

(assert (not b_lambda!18313))

(assert (not b_lambda!18335))

(assert (not d!59283))

(assert (not bs!41526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

