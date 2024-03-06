; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12150 () Bool)

(assert start!12150)

(declare-fun res!47653 () Bool)

(declare-fun e!49610 () Bool)

(assert (=> start!12150 (=> (not res!47653) (not e!49610))))

(declare-fun res!47650 () Bool)

(declare-fun y!2236 () Int)

(assert (=> start!12150 (= res!47653 (= res!47650 (>= y!2236 0)))))

(assert (=> start!12150 e!49610))

(assert (=> start!12150 true))

(declare-datatypes () ((List!766 (Cons!716 (h!1136 Int) (t!49019 List!766)) (Nil!718))))

(declare-datatypes () ((array!1538 (array!1539 (arr!532 (Array (_ BitVec 32) List!766)) (size!775 (_ BitVec 32))))))

(declare-datatypes () ((B!670 (B!671 (content!175 array!1538)))))

(declare-fun thiss!10483 () B!670)

(declare-fun e!49611 () Bool)

(declare-fun inv!37 (B!670) Bool)

(assert (=> start!12150 (and (inv!37 thiss!10483) e!49611)))

(declare-fun b!90834 () Bool)

(declare-fun contains!63 (List!766 Int) Bool)

(assert (=> b!90834 (= e!49610 (not (= res!47650 (contains!63 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000) y!2236))))))

(declare-fun b!90835 () Bool)

(declare-fun array_inv!522 (array!1538) Bool)

(assert (=> b!90835 (= e!49611 (array_inv!522 (content!175 thiss!10483)))))

(assert (= (and start!12150 res!47653) b!90834))

(assert (= start!12150 b!90835))

(declare-fun m!86686 () Bool)

(assert (=> start!12150 m!86686))

(declare-fun m!86688 () Bool)

(assert (=> b!90834 m!86688))

(assert (=> b!90834 m!86688))

(declare-fun m!86690 () Bool)

(assert (=> b!90834 m!86690))

(declare-fun m!86692 () Bool)

(assert (=> b!90835 m!86692))

(push 1)

(assert (not start!12150))

(assert (not b!90835))

(assert (not b!90834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59746 () Bool)

(assert (=> d!59746 (= (inv!37 thiss!10483) (and (bvsgt (size!775 (content!175 thiss!10483)) #b00000000000000000000000000000000) (bvslt (size!775 (content!175 thiss!10483)) #b00000000000000000000000001100100)))))

(assert (=> start!12150 d!59746))

(declare-fun d!59748 () Bool)

(assert (=> d!59748 (= (array_inv!522 (content!175 thiss!10483)) (bvsge (size!775 (content!175 thiss!10483)) #b00000000000000000000000000000000))))

(assert (=> b!90835 d!59748))

(declare-fun d!59750 () Bool)

(declare-fun lt!20516 () Bool)

(declare-fun content!176 (List!766) (Set Int))

(assert (=> d!59750 (= lt!20516 (member y!2236 (content!176 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000))))))

(declare-fun e!49618 () Bool)

(assert (=> d!59750 (= lt!20516 e!49618)))

(declare-fun res!47658 () Bool)

(assert (=> d!59750 (=> (not res!47658) (not e!49618))))

(assert (=> d!59750 (= res!47658 (is-Cons!716 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)))))

(assert (=> d!59750 (= (contains!63 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000) y!2236) lt!20516)))

(declare-fun b!90840 () Bool)

(declare-fun e!49617 () Bool)

(assert (=> b!90840 (= e!49618 e!49617)))

(declare-fun res!47659 () Bool)

(assert (=> b!90840 (=> res!47659 e!49617)))

(assert (=> b!90840 (= res!47659 (= (h!1136 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)) y!2236))))

(declare-fun b!90841 () Bool)

(assert (=> b!90841 (= e!49617 (contains!63 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)) y!2236))))

(assert (= (and d!59750 res!47658) b!90840))

(assert (= (and b!90840 (not res!47659)) b!90841))

(assert (=> d!59750 m!86688))

(declare-fun m!86694 () Bool)

(assert (=> d!59750 m!86694))

(declare-fun m!86696 () Bool)

(assert (=> d!59750 m!86696))

(declare-fun m!86698 () Bool)

(assert (=> b!90841 m!86698))

(assert (=> b!90834 d!59750))

(push 1)

(assert (not d!59750))

(assert (not b!90841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59752 () Bool)

(declare-fun c!22163 () Bool)

(assert (=> d!59752 (= c!22163 (is-Nil!718 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)))))

(declare-fun e!49621 () (Set Int))

(assert (=> d!59752 (= (content!176 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)) e!49621)))

(declare-fun b!90846 () Bool)

(assert (=> b!90846 (= e!49621 (as emptyset (Set Int)))))

(declare-fun b!90847 () Bool)

(assert (=> b!90847 (= e!49621 (union (insert (h!1136 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)) (as emptyset (Set Int))) (content!176 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)))))))

(assert (= (and d!59752 c!22163) b!90846))

(assert (= (and d!59752 (not c!22163)) b!90847))

(declare-fun m!86700 () Bool)

(assert (=> b!90847 m!86700))

(declare-fun m!86702 () Bool)

(assert (=> b!90847 m!86702))

(assert (=> d!59750 d!59752))

(declare-fun d!59754 () Bool)

(declare-fun lt!20517 () Bool)

(assert (=> d!59754 (= lt!20517 (member y!2236 (content!176 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)))))))

(declare-fun e!49623 () Bool)

(assert (=> d!59754 (= lt!20517 e!49623)))

(declare-fun res!47660 () Bool)

(assert (=> d!59754 (=> (not res!47660) (not e!49623))))

(assert (=> d!59754 (= res!47660 (is-Cons!716 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000))))))

(assert (=> d!59754 (= (contains!63 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000)) y!2236) lt!20517)))

(declare-fun b!90848 () Bool)

(declare-fun e!49622 () Bool)

(assert (=> b!90848 (= e!49623 e!49622)))

(declare-fun res!47661 () Bool)

(assert (=> b!90848 (=> res!47661 e!49622)))

(assert (=> b!90848 (= res!47661 (= (h!1136 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000))) y!2236))))

(declare-fun b!90849 () Bool)

(assert (=> b!90849 (= e!49622 (contains!63 (t!49019 (t!49019 (select (arr!532 (content!175 thiss!10483)) #b00000000000000000000000000000000))) y!2236))))

(assert (= (and d!59754 res!47660) b!90848))

(assert (= (and b!90848 (not res!47661)) b!90849))

(assert (=> d!59754 m!86702))

(declare-fun m!86704 () Bool)

(assert (=> d!59754 m!86704))

(declare-fun m!86706 () Bool)

(assert (=> b!90849 m!86706))

(assert (=> b!90841 d!59754))

(push 1)

(assert (not b!90849))

(assert (not b!90847))

(assert (not d!59754))

(check-sat)

(get-model)

(pop 1)

