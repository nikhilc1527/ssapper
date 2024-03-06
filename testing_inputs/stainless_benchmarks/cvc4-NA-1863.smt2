; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12496 () Bool)

(assert start!12496)

(declare-fun res!48390 () Bool)

(declare-fun e!50374 () Bool)

(assert (=> start!12496 (=> (not res!48390) (not e!50374))))

(declare-datatypes () ((List!788 (Cons!732 (head!1121 (_ BitVec 32)) (tail!1117 List!788)) (Nil!734) (ListExt!3 (__x!356 Int)))))

(declare-fun l!1760 () List!788)

(declare-fun l!1759 () List!788)

(assert (=> start!12496 (= res!48390 (= l!1760 l!1759))))

(assert (=> start!12496 e!50374))

(assert (=> start!12496 true))

(declare-fun b!92031 () Bool)

(declare-fun size!881 (List!788) Int)

(assert (=> b!92031 (= e!50374 (>= (size!881 l!1760) 2))))

(assert (= (and start!12496 res!48390) b!92031))

(declare-fun m!87776 () Bool)

(assert (=> b!92031 m!87776))

(push 1)

(assert (not b!92031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60412 () Bool)

(declare-fun lt!20791 () Int)

(assert (=> d!60412 (>= lt!20791 0)))

(declare-fun e!50377 () Int)

(assert (=> d!60412 (= lt!20791 e!50377)))

(declare-fun c!22377 () Bool)

(assert (=> d!60412 (= c!22377 (is-Nil!734 l!1760))))

(assert (=> d!60412 (= (size!881 l!1760) lt!20791)))

(declare-fun b!92036 () Bool)

(assert (=> b!92036 (= e!50377 0)))

(declare-fun b!92037 () Bool)

(assert (=> b!92037 (= e!50377 (+ 1 (size!881 (tail!1117 l!1760))))))

(assert (= (and d!60412 c!22377) b!92036))

(assert (= (and d!60412 (not c!22377)) b!92037))

(declare-fun m!87778 () Bool)

(assert (=> b!92037 m!87778))

(assert (=> b!92031 d!60412))

(push 1)

(assert (not b!92037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60414 () Bool)

(declare-fun lt!20792 () Int)

(assert (=> d!60414 (>= lt!20792 0)))

(declare-fun e!50378 () Int)

(assert (=> d!60414 (= lt!20792 e!50378)))

(declare-fun c!22378 () Bool)

(assert (=> d!60414 (= c!22378 (is-Nil!734 (tail!1117 l!1760)))))

(assert (=> d!60414 (= (size!881 (tail!1117 l!1760)) lt!20792)))

(declare-fun b!92038 () Bool)

(assert (=> b!92038 (= e!50378 0)))

(declare-fun b!92039 () Bool)

(assert (=> b!92039 (= e!50378 (+ 1 (size!881 (tail!1117 (tail!1117 l!1760)))))))

(assert (= (and d!60414 c!22378) b!92038))

(assert (= (and d!60414 (not c!22378)) b!92039))

(declare-fun m!87780 () Bool)

(assert (=> b!92039 m!87780))

(assert (=> b!92037 d!60414))

(push 1)

(assert (not b!92039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60416 () Bool)

(declare-fun lt!20793 () Int)

(assert (=> d!60416 (>= lt!20793 0)))

(declare-fun e!50379 () Int)

(assert (=> d!60416 (= lt!20793 e!50379)))

(declare-fun c!22379 () Bool)

(assert (=> d!60416 (= c!22379 (is-Nil!734 (tail!1117 (tail!1117 l!1760))))))

(assert (=> d!60416 (= (size!881 (tail!1117 (tail!1117 l!1760))) lt!20793)))

(declare-fun b!92040 () Bool)

(assert (=> b!92040 (= e!50379 0)))

(declare-fun b!92041 () Bool)

(assert (=> b!92041 (= e!50379 (+ 1 (size!881 (tail!1117 (tail!1117 (tail!1117 l!1760))))))))

(assert (= (and d!60416 c!22379) b!92040))

(assert (= (and d!60416 (not c!22379)) b!92041))

(declare-fun m!87782 () Bool)

(assert (=> b!92041 m!87782))

(assert (=> b!92039 d!60416))

(push 1)

(assert (not b!92041))

(check-sat)

(get-model)

(pop 1)

