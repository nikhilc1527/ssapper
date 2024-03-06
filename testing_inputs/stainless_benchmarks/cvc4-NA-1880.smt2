; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12606 () Bool)

(assert start!12606)

(declare-fun res!48837 () Bool)

(declare-fun e!50791 () Bool)

(assert (=> start!12606 (=> (not res!48837) (not e!50791))))

(declare-datatypes () ((List!797 (Cons!739 (head!1169 (_ BitVec 32)) (tail!1165 List!797)) (Nil!741))))

(declare-fun l1!498 () List!797)

(declare-fun l2!490 () List!797)

(assert (=> start!12606 (= res!48837 (and (not (is-Cons!739 l1!498)) (is-Nil!741 l2!490)))))

(assert (=> start!12606 e!50791))

(assert (=> start!12606 true))

(declare-fun b!92839 () Bool)

(declare-fun res!48838 () Bool)

(assert (=> b!92839 (=> (not res!48838) (not e!50791))))

(declare-fun x$8!107 () List!797)

(declare-fun l3!58 () List!797)

(declare-fun reverse!7 (List!797) List!797)

(assert (=> b!92839 (= res!48838 (= x$8!107 (reverse!7 l3!58)))))

(declare-fun b!92840 () Bool)

(declare-fun content!31 (List!797) (Set (_ BitVec 32)))

(assert (=> b!92840 (= e!50791 (not (= (content!31 x$8!107) (union (union (content!31 l1!498) (content!31 l2!490)) (content!31 l3!58)))))))

(assert (= (and start!12606 res!48837) b!92839))

(assert (= (and b!92839 res!48838) b!92840))

(declare-fun m!88434 () Bool)

(assert (=> b!92839 m!88434))

(declare-fun m!88436 () Bool)

(assert (=> b!92840 m!88436))

(declare-fun m!88438 () Bool)

(assert (=> b!92840 m!88438))

(declare-fun m!88440 () Bool)

(assert (=> b!92840 m!88440))

(declare-fun m!88442 () Bool)

(assert (=> b!92840 m!88442))

(push 1)

(assert (not b!92840))

(assert (not b!92839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60714 () Bool)

(declare-fun c!22669 () Bool)

(assert (=> d!60714 (= c!22669 (is-Nil!741 x$8!107))))

(declare-fun e!50794 () (Set (_ BitVec 32)))

(assert (=> d!60714 (= (content!31 x$8!107) e!50794)))

(declare-fun b!92845 () Bool)

(assert (=> b!92845 (= e!50794 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92846 () Bool)

(assert (=> b!92846 (= e!50794 (union (insert (head!1169 x$8!107) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1165 x$8!107))))))

(assert (= (and d!60714 c!22669) b!92845))

(assert (= (and d!60714 (not c!22669)) b!92846))

(declare-fun m!88444 () Bool)

(assert (=> b!92846 m!88444))

(declare-fun m!88446 () Bool)

(assert (=> b!92846 m!88446))

(assert (=> b!92840 d!60714))

(declare-fun d!60716 () Bool)

(declare-fun c!22670 () Bool)

(assert (=> d!60716 (= c!22670 (is-Nil!741 l1!498))))

(declare-fun e!50795 () (Set (_ BitVec 32)))

(assert (=> d!60716 (= (content!31 l1!498) e!50795)))

(declare-fun b!92847 () Bool)

(assert (=> b!92847 (= e!50795 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92848 () Bool)

(assert (=> b!92848 (= e!50795 (union (insert (head!1169 l1!498) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1165 l1!498))))))

(assert (= (and d!60716 c!22670) b!92847))

(assert (= (and d!60716 (not c!22670)) b!92848))

(declare-fun m!88448 () Bool)

(assert (=> b!92848 m!88448))

(declare-fun m!88450 () Bool)

(assert (=> b!92848 m!88450))

(assert (=> b!92840 d!60716))

(declare-fun d!60718 () Bool)

(declare-fun c!22671 () Bool)

(assert (=> d!60718 (= c!22671 (is-Nil!741 l2!490))))

(declare-fun e!50796 () (Set (_ BitVec 32)))

(assert (=> d!60718 (= (content!31 l2!490) e!50796)))

(declare-fun b!92849 () Bool)

(assert (=> b!92849 (= e!50796 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92850 () Bool)

(assert (=> b!92850 (= e!50796 (union (insert (head!1169 l2!490) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1165 l2!490))))))

(assert (= (and d!60718 c!22671) b!92849))

(assert (= (and d!60718 (not c!22671)) b!92850))

(declare-fun m!88452 () Bool)

(assert (=> b!92850 m!88452))

(declare-fun m!88454 () Bool)

(assert (=> b!92850 m!88454))

(assert (=> b!92840 d!60718))

(declare-fun d!60720 () Bool)

(declare-fun c!22672 () Bool)

(assert (=> d!60720 (= c!22672 (is-Nil!741 l3!58))))

(declare-fun e!50797 () (Set (_ BitVec 32)))

(assert (=> d!60720 (= (content!31 l3!58) e!50797)))

(declare-fun b!92851 () Bool)

(assert (=> b!92851 (= e!50797 (as emptyset (Set (_ BitVec 32))))))

(declare-fun b!92852 () Bool)

(assert (=> b!92852 (= e!50797 (union (insert (head!1169 l3!58) (as emptyset (Set (_ BitVec 32)))) (content!31 (tail!1165 l3!58))))))

(assert (= (and d!60720 c!22672) b!92851))

(assert (= (and d!60720 (not c!22672)) b!92852))

(declare-fun m!88456 () Bool)

(assert (=> b!92852 m!88456))

(declare-fun m!88458 () Bool)

(assert (=> b!92852 m!88458))

(assert (=> b!92840 d!60720))

(declare-fun d!60722 () Bool)

(declare-fun lt!21031 () List!797)

(assert (=> d!60722 (= (content!31 lt!21031) (content!31 l3!58))))

(declare-fun reverse0!3 (List!797 List!797) List!797)

(assert (=> d!60722 (= lt!21031 (reverse0!3 l3!58 Nil!741))))

(assert (=> d!60722 (= (reverse!7 l3!58) lt!21031)))

(declare-fun bs!41978 () Bool)

(assert (= bs!41978 d!60722))

(declare-fun m!88460 () Bool)

(assert (=> bs!41978 m!88460))

(assert (=> bs!41978 m!88442))

(declare-fun m!88462 () Bool)

(assert (=> bs!41978 m!88462))

(assert (=> b!92839 d!60722))

(push 1)

(assert (not b!92846))

(assert (not b!92852))

(assert (not d!60722))

(assert (not b!92850))

(assert (not b!92848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

