; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8224 () Bool)

(assert start!8224)

(declare-fun res!26975 () Bool)

(declare-fun e!31025 () Bool)

(assert (=> start!8224 (=> (not res!26975) (not e!31025))))

(declare-datatypes () ((Monoid!15 (ListMonoid!7) (MonoidExt!7 (__x!239 Int)))))

(declare-fun thiss!8606 () Monoid!15)

(assert (=> start!8224 (= res!26975 (is-ListMonoid!7 thiss!8606))))

(assert (=> start!8224 e!31025))

(assert (=> start!8224 true))

(declare-fun b!58312 () Bool)

(declare-fun res!26973 () Bool)

(assert (=> b!58312 (=> (not res!26973) (not e!31025))))

(declare-datatypes () ((List!476 (Cons!451 (h!690 Int) (t!47131 List!476)) (Nil!452))))

(declare-fun z!217 () List!476)

(declare-fun res!26934 () Bool)

(declare-fun x!26078 () List!476)

(declare-fun y!1901 () List!476)

(declare-fun law_associativity!5 (Monoid!15 List!476 List!476 List!476) Bool)

(assert (=> b!58312 (= res!26973 (= res!26934 (law_associativity!5 thiss!8606 x!26078 y!1901 z!217)))))

(declare-fun b!58313 () Bool)

(declare-fun e!31026 () Bool)

(assert (=> b!58313 (= e!31025 e!31026)))

(declare-fun res!26974 () Bool)

(assert (=> b!58313 (=> res!26974 e!31026)))

(assert (=> b!58313 (= res!26974 (not res!26934))))

(declare-fun b!58314 () Bool)

(declare-fun append!10 (Monoid!15 List!476 List!476) List!476)

(assert (=> b!58314 (= e!31026 (not (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))))))

(assert (= (and start!8224 res!26975) b!58312))

(assert (= (and b!58312 res!26973) b!58313))

(assert (= (and b!58313 (not res!26974)) b!58314))

(declare-fun m!62828 () Bool)

(assert (=> b!58312 m!62828))

(declare-fun m!62830 () Bool)

(assert (=> b!58314 m!62830))

(assert (=> b!58314 m!62830))

(declare-fun m!62832 () Bool)

(assert (=> b!58314 m!62832))

(declare-fun m!62834 () Bool)

(assert (=> b!58314 m!62834))

(assert (=> b!58314 m!62834))

(declare-fun m!62836 () Bool)

(assert (=> b!58314 m!62836))

(push 1)

(assert (not b!58312))

(assert (not b!58314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50528 () Bool)

(declare-fun e!31032 () Bool)

(assert (=> d!50528 e!31032))

(declare-fun res!26981 () Bool)

(assert (=> d!50528 (=> (not res!26981) (not e!31032))))

(declare-fun lt!10687 () Bool)

(assert (=> d!50528 (= res!26981 lt!10687)))

(declare-fun e!31031 () Bool)

(declare-datatypes () ((ProofOps!330 (ProofOps!331 (prop!388 Bool)))))

(declare-fun because!1 (ProofOps!330 Bool) Bool)

(assert (=> d!50528 (= lt!10687 (because!1 (ProofOps!331 (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))) e!31031))))

(declare-fun res!26982 () Bool)

(assert (=> d!50528 (=> res!26982 e!31031)))

(assert (=> d!50528 (= res!26982 (is-Nil!452 x!26078))))

(assert (=> d!50528 (= (law_associativity!5 thiss!8606 x!26078 y!1901 z!217) lt!10687)))

(declare-fun b!58319 () Bool)

(assert (=> b!58319 (= e!31031 (law_associativity!5 thiss!8606 (t!47131 x!26078) y!1901 z!217))))

(declare-fun b!58320 () Bool)

(assert (=> b!58320 (= e!31032 (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217))))))

(assert (= (and d!50528 (not res!26982)) b!58319))

(assert (= (and d!50528 res!26981) b!58320))

(assert (=> d!50528 m!62834))

(assert (=> d!50528 m!62836))

(assert (=> d!50528 m!62830))

(assert (=> d!50528 m!62832))

(assert (=> d!50528 m!62830))

(declare-fun m!62838 () Bool)

(assert (=> d!50528 m!62838))

(assert (=> d!50528 m!62834))

(declare-fun m!62840 () Bool)

(assert (=> b!58319 m!62840))

(assert (=> b!58320 m!62830))

(assert (=> b!58320 m!62830))

(assert (=> b!58320 m!62832))

(assert (=> b!58320 m!62834))

(assert (=> b!58320 m!62834))

(assert (=> b!58320 m!62836))

(assert (=> b!58312 d!50528))

(declare-fun d!50530 () Bool)

(declare-fun c!12484 () Bool)

(assert (=> d!50530 (= c!12484 (is-ListMonoid!7 thiss!8606))))

(declare-fun e!31035 () List!476)

(assert (=> d!50530 (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) e!31035)))

(declare-fun b!58325 () Bool)

(declare-fun append!11 (Monoid!15 List!476 List!476) List!476)

(assert (=> b!58325 (= e!31035 (append!11 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217))))

(declare-fun b!58326 () Bool)

(declare-fun append!161 (Monoid!15 List!476 List!476) List!476)

(assert (=> b!58326 (= e!31035 (append!161 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217))))

(assert (= (and d!50530 c!12484) b!58325))

(assert (= (and d!50530 (not c!12484)) b!58326))

(assert (=> b!58325 m!62830))

(declare-fun m!62842 () Bool)

(assert (=> b!58325 m!62842))

(assert (=> b!58326 m!62830))

(declare-fun m!62844 () Bool)

(assert (=> b!58326 m!62844))

(assert (=> b!58314 d!50530))

(declare-fun d!50532 () Bool)

(declare-fun c!12485 () Bool)

(assert (=> d!50532 (= c!12485 (is-ListMonoid!7 thiss!8606))))

(declare-fun e!31036 () List!476)

(assert (=> d!50532 (= (append!10 thiss!8606 x!26078 y!1901) e!31036)))

(declare-fun b!58327 () Bool)

(assert (=> b!58327 (= e!31036 (append!11 thiss!8606 x!26078 y!1901))))

(declare-fun b!58328 () Bool)

(assert (=> b!58328 (= e!31036 (append!161 thiss!8606 x!26078 y!1901))))

(assert (= (and d!50532 c!12485) b!58327))

(assert (= (and d!50532 (not c!12485)) b!58328))

(declare-fun m!62846 () Bool)

(assert (=> b!58327 m!62846))

(declare-fun m!62848 () Bool)

(assert (=> b!58328 m!62848))

(assert (=> b!58314 d!50532))

(declare-fun d!50534 () Bool)

(declare-fun c!12486 () Bool)

(assert (=> d!50534 (= c!12486 (is-ListMonoid!7 thiss!8606))))

(declare-fun e!31037 () List!476)

(assert (=> d!50534 (= (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)) e!31037)))

(declare-fun b!58329 () Bool)

(assert (=> b!58329 (= e!31037 (append!11 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))))

(declare-fun b!58330 () Bool)

(assert (=> b!58330 (= e!31037 (append!161 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))))

(assert (= (and d!50534 c!12486) b!58329))

(assert (= (and d!50534 (not c!12486)) b!58330))

(assert (=> b!58329 m!62834))

(declare-fun m!62850 () Bool)

(assert (=> b!58329 m!62850))

(assert (=> b!58330 m!62834))

(declare-fun m!62852 () Bool)

(assert (=> b!58330 m!62852))

(assert (=> b!58314 d!50534))

(declare-fun d!50536 () Bool)

(declare-fun c!12487 () Bool)

(assert (=> d!50536 (= c!12487 (is-ListMonoid!7 thiss!8606))))

(declare-fun e!31038 () List!476)

(assert (=> d!50536 (= (append!10 thiss!8606 y!1901 z!217) e!31038)))

(declare-fun b!58331 () Bool)

(assert (=> b!58331 (= e!31038 (append!11 thiss!8606 y!1901 z!217))))

(declare-fun b!58332 () Bool)

(assert (=> b!58332 (= e!31038 (append!161 thiss!8606 y!1901 z!217))))

(assert (= (and d!50536 c!12487) b!58331))

(assert (= (and d!50536 (not c!12487)) b!58332))

(declare-fun m!62854 () Bool)

(assert (=> b!58331 m!62854))

(declare-fun m!62856 () Bool)

(assert (=> b!58332 m!62856))

(assert (=> b!58314 d!50536))

(push 1)

(assert (not b!58329))

(assert (not b!58327))

(assert (not b!58332))

(assert (not b!58319))

(assert (not b!58320))

(assert (not b!58328))

(assert (not b!58325))

(assert (not b!58326))

(assert (not d!50528))

(assert (not b!58331))

(assert (not b!58330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

