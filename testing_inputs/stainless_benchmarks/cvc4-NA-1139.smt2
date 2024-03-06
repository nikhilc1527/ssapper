; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8230 () Bool)

(assert start!8230)

(declare-fun res!26989 () Bool)

(declare-fun e!31044 () Bool)

(assert (=> start!8230 (=> (not res!26989) (not e!31044))))

(declare-datatypes () ((Monoid!16 (ListMonoid!8) (MonoidExt!8 (__x!240 Int)))))

(declare-fun thiss!8606 () Monoid!16)

(assert (=> start!8230 (= res!26989 (not (is-ListMonoid!8 thiss!8606)))))

(assert (=> start!8230 e!31044))

(assert (=> start!8230 true))

(declare-fun b!58339 () Bool)

(declare-fun res!26990 () Bool)

(assert (=> b!58339 (=> (not res!26990) (not e!31044))))

(declare-datatypes () ((List!477 (Cons!452 (h!691 Int) (t!47132 List!477)) (Nil!453))))

(declare-fun z!217 () List!477)

(declare-fun x!26078 () List!477)

(declare-fun y!1901 () List!477)

(declare-fun res!26936 () Bool)

(declare-fun law_associativity!11 (Monoid!16 List!477 List!477 List!477) Bool)

(assert (=> b!58339 (= res!26990 (= res!26936 (law_associativity!11 thiss!8606 x!26078 y!1901 z!217)))))

(declare-fun b!58340 () Bool)

(declare-fun e!31043 () Bool)

(assert (=> b!58340 (= e!31044 e!31043)))

(declare-fun res!26991 () Bool)

(assert (=> b!58340 (=> res!26991 e!31043)))

(assert (=> b!58340 (= res!26991 (not res!26936))))

(declare-fun b!58341 () Bool)

(declare-fun append!10 (Monoid!16 List!477 List!477) List!477)

(assert (=> b!58341 (= e!31043 (not (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))))))

(assert (= (and start!8230 res!26989) b!58339))

(assert (= (and b!58339 res!26990) b!58340))

(assert (= (and b!58340 (not res!26991)) b!58341))

(declare-fun m!62858 () Bool)

(assert (=> b!58339 m!62858))

(declare-fun m!62860 () Bool)

(assert (=> b!58341 m!62860))

(assert (=> b!58341 m!62860))

(declare-fun m!62862 () Bool)

(assert (=> b!58341 m!62862))

(declare-fun m!62864 () Bool)

(assert (=> b!58341 m!62864))

(assert (=> b!58341 m!62864))

(declare-fun m!62866 () Bool)

(assert (=> b!58341 m!62866))

(push 1)

(assert (not b!58339))

(assert (not b!58341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!50538 () Bool)

(declare-fun e!31047 () Bool)

(assert (=> d!50538 e!31047))

(declare-fun res!26997 () Bool)

(assert (=> d!50538 (=> (not res!26997) (not e!31047))))

(declare-fun res!26996 () Bool)

(assert (=> d!50538 (= res!26997 res!26996)))

(assert (=> d!50538 true))

(assert (=> d!50538 (= (law_associativity!11 thiss!8606 x!26078 y!1901 z!217) res!26996)))

(declare-fun b!58344 () Bool)

(assert (=> b!58344 (= e!31047 (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217))))))

(assert (= (and d!50538 res!26997) b!58344))

(assert (=> b!58344 m!62860))

(assert (=> b!58344 m!62860))

(assert (=> b!58344 m!62862))

(assert (=> b!58344 m!62864))

(assert (=> b!58344 m!62864))

(assert (=> b!58344 m!62866))

(assert (=> b!58339 d!50538))

(declare-fun d!50540 () Bool)

(declare-fun c!12490 () Bool)

(assert (=> d!50540 (= c!12490 (is-ListMonoid!8 thiss!8606))))

(declare-fun e!31050 () List!477)

(assert (=> d!50540 (= (append!10 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217) e!31050)))

(declare-fun b!58349 () Bool)

(declare-fun append!11 (Monoid!16 List!477 List!477) List!477)

(assert (=> b!58349 (= e!31050 (append!11 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217))))

(declare-fun b!58350 () Bool)

(declare-fun append!161 (Monoid!16 List!477 List!477) List!477)

(assert (=> b!58350 (= e!31050 (append!161 thiss!8606 (append!10 thiss!8606 x!26078 y!1901) z!217))))

(assert (= (and d!50540 c!12490) b!58349))

(assert (= (and d!50540 (not c!12490)) b!58350))

(assert (=> b!58349 m!62860))

(declare-fun m!62868 () Bool)

(assert (=> b!58349 m!62868))

(assert (=> b!58350 m!62860))

(declare-fun m!62870 () Bool)

(assert (=> b!58350 m!62870))

(assert (=> b!58341 d!50540))

(declare-fun d!50542 () Bool)

(declare-fun c!12491 () Bool)

(assert (=> d!50542 (= c!12491 (is-ListMonoid!8 thiss!8606))))

(declare-fun e!31051 () List!477)

(assert (=> d!50542 (= (append!10 thiss!8606 x!26078 y!1901) e!31051)))

(declare-fun b!58351 () Bool)

(assert (=> b!58351 (= e!31051 (append!11 thiss!8606 x!26078 y!1901))))

(declare-fun b!58352 () Bool)

(assert (=> b!58352 (= e!31051 (append!161 thiss!8606 x!26078 y!1901))))

(assert (= (and d!50542 c!12491) b!58351))

(assert (= (and d!50542 (not c!12491)) b!58352))

(declare-fun m!62872 () Bool)

(assert (=> b!58351 m!62872))

(declare-fun m!62874 () Bool)

(assert (=> b!58352 m!62874))

(assert (=> b!58341 d!50542))

(declare-fun d!50544 () Bool)

(declare-fun c!12492 () Bool)

(assert (=> d!50544 (= c!12492 (is-ListMonoid!8 thiss!8606))))

(declare-fun e!31052 () List!477)

(assert (=> d!50544 (= (append!10 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)) e!31052)))

(declare-fun b!58353 () Bool)

(assert (=> b!58353 (= e!31052 (append!11 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))))

(declare-fun b!58354 () Bool)

(assert (=> b!58354 (= e!31052 (append!161 thiss!8606 x!26078 (append!10 thiss!8606 y!1901 z!217)))))

(assert (= (and d!50544 c!12492) b!58353))

(assert (= (and d!50544 (not c!12492)) b!58354))

(assert (=> b!58353 m!62864))

(declare-fun m!62876 () Bool)

(assert (=> b!58353 m!62876))

(assert (=> b!58354 m!62864))

(declare-fun m!62878 () Bool)

(assert (=> b!58354 m!62878))

(assert (=> b!58341 d!50544))

(declare-fun d!50546 () Bool)

(declare-fun c!12493 () Bool)

(assert (=> d!50546 (= c!12493 (is-ListMonoid!8 thiss!8606))))

(declare-fun e!31053 () List!477)

(assert (=> d!50546 (= (append!10 thiss!8606 y!1901 z!217) e!31053)))

(declare-fun b!58355 () Bool)

(assert (=> b!58355 (= e!31053 (append!11 thiss!8606 y!1901 z!217))))

(declare-fun b!58356 () Bool)

(assert (=> b!58356 (= e!31053 (append!161 thiss!8606 y!1901 z!217))))

(assert (= (and d!50546 c!12493) b!58355))

(assert (= (and d!50546 (not c!12493)) b!58356))

(declare-fun m!62880 () Bool)

(assert (=> b!58355 m!62880))

(declare-fun m!62882 () Bool)

(assert (=> b!58356 m!62882))

(assert (=> b!58341 d!50546))

(push 1)

(assert (not b!58351))

(assert (not b!58352))

(assert (not b!58354))

(assert (not b!58355))

(assert (not b!58356))

(assert (not b!58344))

(assert (not b!58349))

(assert (not b!58350))

(assert (not b!58353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

