; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!6168 () Bool)

(assert start!6168)

(declare-fun b!45792 () Bool)

(declare-fun b_free!5001 () Bool)

(declare-fun b_next!23431 () Bool)

(assert (=> b!45792 (= b_free!5001 (not b_next!23431))))

(declare-fun tp!11580 () Bool)

(declare-fun b_and!34649 () Bool)

(assert (=> b!45792 (= tp!11580 b_and!34649)))

(declare-fun b_free!5003 () Bool)

(declare-fun b_next!23433 () Bool)

(assert (=> b!45792 (= b_free!5003 (not b_next!23433))))

(declare-fun tp!11589 () Bool)

(declare-fun b_and!34651 () Bool)

(assert (=> b!45792 (= tp!11589 b_and!34651)))

(declare-fun b_free!5005 () Bool)

(declare-fun b_next!23435 () Bool)

(assert (=> b!45792 (= b_free!5005 (not b_next!23435))))

(declare-fun tp!11584 () Bool)

(declare-fun b_and!34653 () Bool)

(assert (=> b!45792 (= tp!11584 b_and!34653)))

(declare-fun b!45795 () Bool)

(declare-fun b_free!5007 () Bool)

(declare-fun b_next!23437 () Bool)

(assert (=> b!45795 (= b_free!5007 (not b_next!23437))))

(declare-fun tp!11579 () Bool)

(declare-fun b_and!34655 () Bool)

(assert (=> b!45795 (= tp!11579 b_and!34655)))

(declare-fun b_free!5009 () Bool)

(declare-fun b_next!23439 () Bool)

(assert (=> b!45795 (= b_free!5009 (not b_next!23439))))

(declare-fun tp!11582 () Bool)

(declare-fun b_and!34657 () Bool)

(assert (=> b!45795 (= tp!11582 b_and!34657)))

(declare-fun b_free!5011 () Bool)

(declare-fun b_next!23441 () Bool)

(assert (=> b!45795 (= b_free!5011 (not b_next!23441))))

(declare-fun tp!11583 () Bool)

(declare-fun b_and!34659 () Bool)

(assert (=> b!45795 (= tp!11583 b_and!34659)))

(declare-fun b!45796 () Bool)

(declare-fun b_free!5013 () Bool)

(declare-fun b_next!23443 () Bool)

(assert (=> b!45796 (= b_free!5013 (not b_next!23443))))

(declare-fun tp!11581 () Bool)

(declare-fun b_and!34661 () Bool)

(assert (=> b!45796 (= tp!11581 b_and!34661)))

(declare-fun b_free!5015 () Bool)

(declare-fun b_next!23445 () Bool)

(assert (=> b!45796 (= b_free!5015 (not b_next!23445))))

(declare-fun tp!11587 () Bool)

(declare-fun b_and!34663 () Bool)

(assert (=> b!45796 (= tp!11587 b_and!34663)))

(declare-fun b_free!5017 () Bool)

(declare-fun b_next!23447 () Bool)

(assert (=> b!45796 (= b_free!5017 (not b_next!23447))))

(declare-fun tp!11588 () Bool)

(declare-fun b_and!34665 () Bool)

(assert (=> b!45796 (= tp!11588 b_and!34665)))

(declare-fun b!45791 () Bool)

(declare-fun b_free!5019 () Bool)

(declare-fun b_next!23449 () Bool)

(assert (=> b!45791 (= b_free!5019 (not b_next!23449))))

(declare-fun tp!11586 () Bool)

(declare-fun b_and!34667 () Bool)

(assert (=> b!45791 (= tp!11586 b_and!34667)))

(declare-fun b_free!5021 () Bool)

(declare-fun b_next!23451 () Bool)

(assert (=> b!45791 (= b_free!5021 (not b_next!23451))))

(declare-fun tp!11585 () Bool)

(declare-fun b_and!34669 () Bool)

(assert (=> b!45791 (= tp!11585 b_and!34669)))

(declare-fun b_free!5023 () Bool)

(declare-fun b_next!23453 () Bool)

(assert (=> b!45791 (= b_free!5023 (not b_next!23453))))

(declare-fun tp!11590 () Bool)

(declare-fun b_and!34671 () Bool)

(assert (=> b!45791 (= tp!11590 b_and!34671)))

(declare-fun b!45793 () Bool)

(assert (=> b!45793 true))

(declare-fun b_next!23455 () Bool)

(declare-datatypes () ((RAEqEvidence!278 (RAEqEvidence!279 (x!16960 Int) (y!1478 Int) (evidence!591 Int)))))

(declare-fun x$71!28 () RAEqEvidence!278)

(declare-fun lambda!6528 () Int)

(assert (=> b!45792 (= b_next!23435 (or (and b!45793 (= lambda!6528 (evidence!591 x$71!28))) b_next!23455))))

(declare-fun b_next!23457 () Bool)

(declare-fun prev!599 () RAEqEvidence!278)

(assert (=> b!45795 (= b_next!23441 (or (and b!45793 (= lambda!6528 (evidence!591 prev!599))) b_next!23457))))

(declare-fun b_next!23459 () Bool)

(assert (=> b!45792 (= b_next!23433 (or (and b!45793 (= lambda!6528 (y!1478 x$71!28))) b_next!23459))))

(declare-fun b_next!23461 () Bool)

(assert (=> b!45795 (= b_next!23437 (or (and b!45793 (= lambda!6528 (x!16960 prev!599))) b_next!23461))))

(declare-datatypes () ((Unit!562 (Unit!563))))

(declare-datatypes () ((RAEqEvidence!280 (RAEqEvidence!281 (x!16961 Int) (y!1479 Int) (evidence!592 Int)))))

(declare-fun thiss!5678 () RAEqEvidence!280)

(declare-fun b_next!23463 () Bool)

(assert (=> b!45796 (= b_next!23445 (or (and b!45793 (= lambda!6528 (y!1479 thiss!5678))) b_next!23463))))

(declare-fun b_next!23465 () Bool)

(declare-fun x$72!18 () RAEqEvidence!280)

(assert (=> b!45791 (= b_next!23451 (or (and b!45793 (= lambda!6528 (y!1479 x$72!18))) b_next!23465))))

(declare-fun b_next!23467 () Bool)

(assert (=> b!45792 (= b_next!23431 (or (and b!45793 (= lambda!6528 (x!16960 x$71!28))) b_next!23467))))

(declare-fun b_next!23469 () Bool)

(assert (=> b!45796 (= b_next!23443 (or (and b!45793 (= lambda!6528 (x!16961 thiss!5678))) b_next!23469))))

(declare-fun b_next!23471 () Bool)

(assert (=> b!45795 (= b_next!23439 (or (and b!45793 (= lambda!6528 (y!1478 prev!599))) b_next!23471))))

(declare-fun b_next!23473 () Bool)

(assert (=> b!45791 (= b_next!23449 (or (and b!45793 (= lambda!6528 (x!16961 x$72!18))) b_next!23473))))

(assert (=> b!45793 true))

(declare-fun b_next!23475 () Bool)

(declare-fun lambda!6529 () Int)

(assert (=> b!45796 (= b_next!23447 (or (and b!45793 (= lambda!6529 (evidence!592 thiss!5678))) b_next!23475))))

(declare-fun b_next!23477 () Bool)

(assert (=> b!45791 (= b_next!23453 (or (and b!45793 (= lambda!6529 (evidence!592 x$72!18))) b_next!23477))))

(declare-fun bs!18087 () Bool)

(declare-fun b!45788 () Bool)

(assert (= bs!18087 (and b!45788 b!45793)))

(declare-datatypes () ((Nat!178 (Zero!162) (Succ!159 (n!1311 Nat!178)))))

(declare-fun n!723 () Nat!178)

(declare-fun lambda!6530 () Int)

(assert (=> bs!18087 (= (and (= n!723 (Succ!159 (Succ!159 Zero!162))) (= (Succ!159 (Succ!159 Zero!162)) n!723)) (= lambda!6530 lambda!6528))))

(assert (=> b!45788 true))

(declare-fun b_next!23479 () Bool)

(assert (=> b!45792 (= b_next!23455 (or (and b!45788 (= lambda!6530 (evidence!591 x$71!28))) b_next!23479))))

(declare-fun b_next!23481 () Bool)

(assert (=> b!45795 (= b_next!23457 (or (and b!45788 (= lambda!6530 (evidence!591 prev!599))) b_next!23481))))

(declare-fun b_next!23483 () Bool)

(assert (=> b!45792 (= b_next!23459 (or (and b!45788 (= lambda!6530 (y!1478 x$71!28))) b_next!23483))))

(declare-fun b_next!23485 () Bool)

(assert (=> b!45795 (= b_next!23461 (or (and b!45788 (= lambda!6530 (x!16960 prev!599))) b_next!23485))))

(declare-fun b_next!23487 () Bool)

(assert (=> b!45796 (= b_next!23463 (or (and b!45788 (= lambda!6530 (y!1479 thiss!5678))) b_next!23487))))

(declare-fun b_next!23489 () Bool)

(assert (=> b!45791 (= b_next!23465 (or (and b!45788 (= lambda!6530 (y!1479 x$72!18))) b_next!23489))))

(declare-fun b_next!23491 () Bool)

(assert (=> b!45792 (= b_next!23467 (or (and b!45788 (= lambda!6530 (x!16960 x$71!28))) b_next!23491))))

(declare-fun b_next!23493 () Bool)

(assert (=> b!45796 (= b_next!23469 (or (and b!45788 (= lambda!6530 (x!16961 thiss!5678))) b_next!23493))))

(declare-fun b_next!23495 () Bool)

(assert (=> b!45795 (= b_next!23471 (or (and b!45788 (= lambda!6530 (y!1478 prev!599))) b_next!23495))))

(declare-fun b_next!23497 () Bool)

(assert (=> b!45791 (= b_next!23473 (or (and b!45788 (= lambda!6530 (x!16961 x$72!18))) b_next!23497))))

(declare-fun m!48715 () Bool)

(assert (=> b!45788 m!48715))

(declare-fun lambda!6531 () Int)

(assert (=> bs!18087 (not (= lambda!6531 lambda!6528))))

(assert (=> b!45788 (not (= lambda!6531 lambda!6530))))

(declare-fun dynLambda!776 (Int) Bool)

(assert (=> (and b!45792 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (evidence!591 x$71!28)))) (= lambda!6531 (evidence!591 x$71!28))))

(assert (=> (and b!45795 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (evidence!591 prev!599)))) (= lambda!6531 (evidence!591 prev!599))))

(assert (=> (and b!45792 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (y!1478 x$71!28)))) (= lambda!6531 (y!1478 x$71!28))))

(assert (=> (and b!45795 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (x!16960 prev!599)))) (= lambda!6531 (x!16960 prev!599))))

(assert (=> (and b!45796 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (y!1479 thiss!5678)))) (= lambda!6531 (y!1479 thiss!5678))))

(assert (=> (and b!45791 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (y!1479 x$72!18)))) (= lambda!6531 (y!1479 x$72!18))))

(assert (=> (and b!45792 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (x!16960 x$71!28)))) (= lambda!6531 (x!16960 x$71!28))))

(assert (=> (and b!45796 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (x!16961 thiss!5678)))) (= lambda!6531 (x!16961 thiss!5678))))

(assert (=> (and b!45795 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (y!1478 prev!599)))) (= lambda!6531 (y!1478 prev!599))))

(assert (=> (and b!45791 b!45788 (= (dynLambda!776 lambda!6531) (dynLambda!776 (x!16961 x$72!18)))) (= lambda!6531 (x!16961 x$72!18))))

(declare-fun b_next!23499 () Bool)

(assert (=> b!45792 (= b_next!23479 (or (and b!45788 (= lambda!6531 (evidence!591 x$71!28))) b_next!23499))))

(declare-fun b_next!23501 () Bool)

(assert (=> b!45795 (= b_next!23481 (or (and b!45788 (= lambda!6531 (evidence!591 prev!599))) b_next!23501))))

(declare-fun b_next!23503 () Bool)

(assert (=> b!45792 (= b_next!23483 (or (and b!45788 (= lambda!6531 (y!1478 x$71!28))) b_next!23503))))

(declare-fun b_next!23505 () Bool)

(assert (=> b!45795 (= b_next!23485 (or (and b!45788 (= lambda!6531 (x!16960 prev!599))) b_next!23505))))

(declare-fun b_next!23507 () Bool)

(assert (=> b!45796 (= b_next!23487 (or (and b!45788 (= lambda!6531 (y!1479 thiss!5678))) b_next!23507))))

(declare-fun b_next!23509 () Bool)

(assert (=> b!45791 (= b_next!23489 (or (and b!45788 (= lambda!6531 (y!1479 x$72!18))) b_next!23509))))

(declare-fun b_next!23511 () Bool)

(assert (=> b!45792 (= b_next!23491 (or (and b!45788 (= lambda!6531 (x!16960 x$71!28))) b_next!23511))))

(declare-fun b_next!23513 () Bool)

(assert (=> b!45796 (= b_next!23493 (or (and b!45788 (= lambda!6531 (x!16961 thiss!5678))) b_next!23513))))

(declare-fun b_next!23515 () Bool)

(assert (=> b!45795 (= b_next!23495 (or (and b!45788 (= lambda!6531 (y!1478 prev!599))) b_next!23515))))

(declare-fun b_next!23517 () Bool)

(assert (=> b!45791 (= b_next!23497 (or (and b!45788 (= lambda!6531 (x!16961 x$72!18))) b_next!23517))))

(declare-fun bs!18088 () Bool)

(declare-fun b!45790 () Bool)

(assert (= bs!18088 (and b!45790 b!45793)))

(declare-fun lambda!6532 () Int)

(assert (=> bs!18088 (not (= lambda!6532 lambda!6528))))

(declare-fun bs!18089 () Bool)

(assert (= bs!18089 (and b!45790 b!45788)))

(assert (=> bs!18089 (not (= lambda!6532 lambda!6530))))

(assert (=> bs!18089 (not (= lambda!6532 lambda!6531))))

(assert (=> b!45790 true))

(declare-fun b_next!23519 () Bool)

(assert (=> b!45792 (= b_next!23499 (or (and b!45790 (= lambda!6532 (evidence!591 x$71!28))) b_next!23519))))

(declare-fun b_next!23521 () Bool)

(assert (=> b!45795 (= b_next!23501 (or (and b!45790 (= lambda!6532 (evidence!591 prev!599))) b_next!23521))))

(declare-fun b_next!23523 () Bool)

(assert (=> b!45792 (= b_next!23503 (or (and b!45790 (= lambda!6532 (y!1478 x$71!28))) b_next!23523))))

(declare-fun b_next!23525 () Bool)

(assert (=> b!45795 (= b_next!23505 (or (and b!45790 (= lambda!6532 (x!16960 prev!599))) b_next!23525))))

(declare-fun b_next!23527 () Bool)

(assert (=> b!45796 (= b_next!23507 (or (and b!45790 (= lambda!6532 (y!1479 thiss!5678))) b_next!23527))))

(declare-fun b_next!23529 () Bool)

(assert (=> b!45791 (= b_next!23509 (or (and b!45790 (= lambda!6532 (y!1479 x$72!18))) b_next!23529))))

(declare-fun b_next!23531 () Bool)

(assert (=> b!45792 (= b_next!23511 (or (and b!45790 (= lambda!6532 (x!16960 x$71!28))) b_next!23531))))

(declare-fun b_next!23533 () Bool)

(assert (=> b!45796 (= b_next!23513 (or (and b!45790 (= lambda!6532 (x!16961 thiss!5678))) b_next!23533))))

(declare-fun b_next!23535 () Bool)

(assert (=> b!45795 (= b_next!23515 (or (and b!45790 (= lambda!6532 (y!1478 prev!599))) b_next!23535))))

(declare-fun b_next!23537 () Bool)

(assert (=> b!45791 (= b_next!23517 (or (and b!45790 (= lambda!6532 (x!16961 x$72!18))) b_next!23537))))

(declare-fun lambda!6533 () Int)

(assert (=> bs!18088 (not (= lambda!6533 lambda!6528))))

(assert (=> bs!18089 (not (= lambda!6533 lambda!6530))))

(declare-fun trivial!1 () Bool)

(assert (=> bs!18089 (= (= true trivial!1) (= lambda!6533 lambda!6531))))

(assert (=> b!45790 (not (= lambda!6533 lambda!6532))))

(assert (=> (and b!45792 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (evidence!591 x$71!28)))) (= lambda!6533 (evidence!591 x$71!28))))

(assert (=> (and b!45795 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (evidence!591 prev!599)))) (= lambda!6533 (evidence!591 prev!599))))

(assert (=> (and b!45792 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (y!1478 x$71!28)))) (= lambda!6533 (y!1478 x$71!28))))

(assert (=> (and b!45795 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (x!16960 prev!599)))) (= lambda!6533 (x!16960 prev!599))))

(assert (=> (and b!45796 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (y!1479 thiss!5678)))) (= lambda!6533 (y!1479 thiss!5678))))

(assert (=> (and b!45791 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (y!1479 x$72!18)))) (= lambda!6533 (y!1479 x$72!18))))

(assert (=> (and b!45792 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (x!16960 x$71!28)))) (= lambda!6533 (x!16960 x$71!28))))

(assert (=> (and b!45796 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (x!16961 thiss!5678)))) (= lambda!6533 (x!16961 thiss!5678))))

(assert (=> (and b!45795 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (y!1478 prev!599)))) (= lambda!6533 (y!1478 prev!599))))

(assert (=> (and b!45791 b!45790 (= (dynLambda!776 lambda!6533) (dynLambda!776 (x!16961 x$72!18)))) (= lambda!6533 (x!16961 x$72!18))))

(declare-fun b_next!23539 () Bool)

(assert (=> b!45792 (= b_next!23519 (or (and b!45790 (= lambda!6533 (evidence!591 x$71!28))) b_next!23539))))

(declare-fun b_next!23541 () Bool)

(assert (=> b!45795 (= b_next!23521 (or (and b!45790 (= lambda!6533 (evidence!591 prev!599))) b_next!23541))))

(declare-fun b_next!23543 () Bool)

(assert (=> b!45792 (= b_next!23523 (or (and b!45790 (= lambda!6533 (y!1478 x$71!28))) b_next!23543))))

(declare-fun b_next!23545 () Bool)

(assert (=> b!45795 (= b_next!23525 (or (and b!45790 (= lambda!6533 (x!16960 prev!599))) b_next!23545))))

(declare-fun b_next!23547 () Bool)

(assert (=> b!45796 (= b_next!23527 (or (and b!45790 (= lambda!6533 (y!1479 thiss!5678))) b_next!23547))))

(declare-fun b_next!23549 () Bool)

(assert (=> b!45791 (= b_next!23529 (or (and b!45790 (= lambda!6533 (y!1479 x$72!18))) b_next!23549))))

(declare-fun b_next!23551 () Bool)

(assert (=> b!45792 (= b_next!23531 (or (and b!45790 (= lambda!6533 (x!16960 x$71!28))) b_next!23551))))

(declare-fun b_next!23553 () Bool)

(assert (=> b!45796 (= b_next!23533 (or (and b!45790 (= lambda!6533 (x!16961 thiss!5678))) b_next!23553))))

(declare-fun b_next!23555 () Bool)

(assert (=> b!45795 (= b_next!23535 (or (and b!45790 (= lambda!6533 (y!1478 prev!599))) b_next!23555))))

(declare-fun b_next!23557 () Bool)

(assert (=> b!45791 (= b_next!23537 (or (and b!45790 (= lambda!6533 (x!16961 x$72!18))) b_next!23557))))

(declare-fun lambda!6534 () Int)

(assert (=> bs!18088 (not (= lambda!6534 lambda!6529))))

(assert (=> b!45790 true))

(declare-fun b_next!23559 () Bool)

(assert (=> b!45796 (= b_next!23475 (or (and b!45790 (= lambda!6534 (evidence!592 thiss!5678))) b_next!23559))))

(declare-fun b_next!23561 () Bool)

(assert (=> b!45791 (= b_next!23477 (or (and b!45790 (= lambda!6534 (evidence!592 x$72!18))) b_next!23561))))

(declare-fun res!21628 () Bool)

(declare-fun e!23762 () Bool)

(assert (=> b!45788 (=> (not res!21628) (not e!23762))))

(assert (=> b!45788 (= res!21628 (= x$71!28 (RAEqEvidence!279 lambda!6530 lambda!6530 lambda!6531)))))

(declare-fun b!45789 () Bool)

(assert (=> b!45789 (= e!23762 (not (= (dynLambda!776 (y!1478 prev!599)) (dynLambda!776 (x!16961 thiss!5678)))))))

(declare-fun res!21629 () Bool)

(assert (=> b!45790 (=> (not res!21629) (not e!23762))))

(assert (=> b!45790 (= res!21629 (= thiss!5678 (RAEqEvidence!281 lambda!6532 lambda!6533 lambda!6534)))))

(declare-fun e!23763 () Bool)

(assert (=> b!45791 (= e!23763 (and tp!11586 tp!11585 tp!11590))))

(declare-fun e!23761 () Bool)

(assert (=> b!45792 (= e!23761 (and tp!11580 tp!11589 tp!11584))))

(declare-fun res!21627 () Bool)

(assert (=> b!45793 (=> (not res!21627) (not e!23762))))

(assert (=> b!45793 (= res!21627 (= x$72!18 (RAEqEvidence!281 lambda!6528 lambda!6528 lambda!6529)))))

(declare-fun res!21631 () Bool)

(assert (=> start!6168 (=> (not res!21631) (not e!23762))))

(assert (=> start!6168 (= res!21631 (not (is-Zero!162 n!723)))))

(assert (=> start!6168 e!23762))

(declare-fun inv!788 (RAEqEvidence!278) Bool)

(assert (=> start!6168 (and (inv!788 x$71!28) e!23761)))

(declare-fun e!23765 () Bool)

(assert (=> start!6168 (and (inv!788 prev!599) e!23765)))

(declare-fun e!23764 () Bool)

(declare-fun inv!789 (RAEqEvidence!280) Bool)

(assert (=> start!6168 (and (inv!789 thiss!5678) e!23764)))

(assert (=> start!6168 true))

(assert (=> start!6168 (and (inv!789 x$72!18) e!23763)))

(declare-fun b!45794 () Bool)

(declare-fun res!21632 () Bool)

(assert (=> b!45794 (=> (not res!21632) (not e!23762))))

(declare-fun keepEvidence!37 (Bool) Bool)

(assert (=> b!45794 (= res!21632 (keepEvidence!37 (dynLambda!776 (evidence!591 prev!599))))))

(assert (=> b!45795 (= e!23765 (and tp!11579 tp!11582 tp!11583))))

(assert (=> b!45796 (= e!23764 (and tp!11581 tp!11587 tp!11588))))

(declare-fun b!45797 () Bool)

(declare-fun res!21630 () Bool)

(assert (=> b!45797 (=> (not res!21630) (not e!23762))))

(assert (=> b!45797 (= res!21630 (= prev!599 x$71!28))))

(assert (= (and start!6168 res!21631) b!45793))

(assert (= (and b!45793 res!21627) b!45788))

(assert (= (and b!45788 res!21628) b!45790))

(assert (= (and b!45790 res!21629) b!45797))

(assert (= (and b!45797 res!21630) b!45794))

(assert (= (and b!45794 res!21632) b!45789))

(assert (= start!6168 b!45792))

(assert (= start!6168 b!45795))

(assert (= start!6168 b!45796))

(assert (= start!6168 b!45791))

(declare-fun b_lambda!12193 () Bool)

(assert (=> (not b_lambda!12193) (not b!45789)))

(declare-fun tb!26355 () Bool)

(declare-fun t!27177 () Bool)

(assert (=> (and b!45796 (= (x!16961 thiss!5678) (y!1478 prev!599)) t!27177) tb!26355))

(declare-fun result!26631 () Bool)

(assert (=> tb!26355 (= result!26631 true)))

(assert (=> b!45789 t!27177))

(declare-fun b_and!34673 () Bool)

(assert (= b_and!34661 (and (=> t!27177 result!26631) b_and!34673)))

(declare-fun t!27179 () Bool)

(declare-fun tb!26357 () Bool)

(assert (=> (and b!45796 (= (y!1479 thiss!5678) (y!1478 prev!599)) t!27179) tb!26357))

(declare-fun result!26633 () Bool)

(assert (=> tb!26357 (= result!26633 true)))

(assert (=> b!45789 t!27179))

(declare-fun b_and!34675 () Bool)

(assert (= b_and!34663 (and (=> t!27179 result!26633) b_and!34675)))

(declare-fun t!27181 () Bool)

(declare-fun tb!26359 () Bool)

(assert (=> (and b!45795 (= (x!16960 prev!599) (y!1478 prev!599)) t!27181) tb!26359))

(declare-fun result!26635 () Bool)

(assert (=> tb!26359 (= result!26635 true)))

(assert (=> b!45789 t!27181))

(declare-fun b_and!34677 () Bool)

(assert (= b_and!34655 (and (=> t!27181 result!26635) b_and!34677)))

(declare-fun t!27183 () Bool)

(declare-fun tb!26361 () Bool)

(assert (=> (and b!45791 (= (x!16961 x$72!18) (y!1478 prev!599)) t!27183) tb!26361))

(declare-fun result!26637 () Bool)

(assert (=> tb!26361 (= result!26637 true)))

(assert (=> b!45789 t!27183))

(declare-fun b_and!34679 () Bool)

(assert (= b_and!34667 (and (=> t!27183 result!26637) b_and!34679)))

(declare-fun tb!26363 () Bool)

(declare-fun t!27185 () Bool)

(assert (=> (and b!45792 (= (x!16960 x$71!28) (y!1478 prev!599)) t!27185) tb!26363))

(declare-fun result!26639 () Bool)

(assert (=> tb!26363 (= result!26639 true)))

(assert (=> b!45789 t!27185))

(declare-fun b_and!34681 () Bool)

(assert (= b_and!34649 (and (=> t!27185 result!26639) b_and!34681)))

(declare-fun t!27187 () Bool)

(declare-fun tb!26365 () Bool)

(assert (=> (and b!45795 (= (y!1478 prev!599) (y!1478 prev!599)) t!27187) tb!26365))

(declare-fun result!26641 () Bool)

(assert (=> tb!26365 (= result!26641 true)))

(assert (=> b!45789 t!27187))

(declare-fun b_and!34683 () Bool)

(assert (= b_and!34657 (and (=> t!27187 result!26641) b_and!34683)))

(declare-fun t!27189 () Bool)

(declare-fun tb!26367 () Bool)

(assert (=> (and b!45792 (= (y!1478 x$71!28) (y!1478 prev!599)) t!27189) tb!26367))

(declare-fun result!26643 () Bool)

(assert (=> tb!26367 (= result!26643 true)))

(assert (=> b!45789 t!27189))

(declare-fun b_and!34685 () Bool)

(assert (= b_and!34651 (and (=> t!27189 result!26643) b_and!34685)))

(declare-fun tb!26369 () Bool)

(declare-fun t!27191 () Bool)

(assert (=> (and b!45791 (= (y!1479 x$72!18) (y!1478 prev!599)) t!27191) tb!26369))

(declare-fun result!26645 () Bool)

(assert (=> tb!26369 (= result!26645 true)))

(assert (=> b!45789 t!27191))

(declare-fun b_and!34687 () Bool)

(assert (= b_and!34669 (and (=> t!27191 result!26645) b_and!34687)))

(declare-fun tb!26371 () Bool)

(declare-fun t!27193 () Bool)

(assert (=> (and b!45792 (= (evidence!591 x$71!28) (y!1478 prev!599)) t!27193) tb!26371))

(declare-fun result!26647 () Bool)

(assert (=> tb!26371 (= result!26647 true)))

(assert (=> b!45789 t!27193))

(declare-fun b_and!34689 () Bool)

(assert (= b_and!34653 (and (=> t!27193 result!26647) b_and!34689)))

(declare-fun t!27195 () Bool)

(declare-fun tb!26373 () Bool)

(assert (=> (and b!45795 (= (evidence!591 prev!599) (y!1478 prev!599)) t!27195) tb!26373))

(declare-fun result!26649 () Bool)

(assert (=> tb!26373 (= result!26649 true)))

(assert (=> b!45789 t!27195))

(declare-fun b_and!34691 () Bool)

(assert (= b_and!34659 (and (=> t!27195 result!26649) b_and!34691)))

(declare-fun b_lambda!12195 () Bool)

(assert (=> (not b_lambda!12195) (not b!45789)))

(declare-fun tb!26375 () Bool)

(declare-fun t!27197 () Bool)

(assert (=> (and b!45792 (= (x!16960 x$71!28) (x!16961 thiss!5678)) t!27197) tb!26375))

(declare-fun result!26651 () Bool)

(assert (=> tb!26375 (= result!26651 true)))

(assert (=> b!45789 t!27197))

(declare-fun b_and!34693 () Bool)

(assert (= b_and!34681 (and (=> t!27197 result!26651) b_and!34693)))

(declare-fun t!27199 () Bool)

(declare-fun tb!26377 () Bool)

(assert (=> (and b!45791 (= (y!1479 x$72!18) (x!16961 thiss!5678)) t!27199) tb!26377))

(declare-fun result!26653 () Bool)

(assert (=> tb!26377 (= result!26653 true)))

(assert (=> b!45789 t!27199))

(declare-fun b_and!34695 () Bool)

(assert (= b_and!34687 (and (=> t!27199 result!26653) b_and!34695)))

(declare-fun t!27201 () Bool)

(declare-fun tb!26379 () Bool)

(assert (=> (and b!45796 (= (y!1479 thiss!5678) (x!16961 thiss!5678)) t!27201) tb!26379))

(declare-fun result!26655 () Bool)

(assert (=> tb!26379 (= result!26655 true)))

(assert (=> b!45789 t!27201))

(declare-fun b_and!34697 () Bool)

(assert (= b_and!34675 (and (=> t!27201 result!26655) b_and!34697)))

(declare-fun t!27203 () Bool)

(declare-fun tb!26381 () Bool)

(assert (=> (and b!45795 (= (evidence!591 prev!599) (x!16961 thiss!5678)) t!27203) tb!26381))

(declare-fun result!26657 () Bool)

(assert (=> tb!26381 (= result!26657 true)))

(assert (=> b!45789 t!27203))

(declare-fun b_and!34699 () Bool)

(assert (= b_and!34691 (and (=> t!27203 result!26657) b_and!34699)))

(declare-fun tb!26383 () Bool)

(declare-fun t!27205 () Bool)

(assert (=> (and b!45791 (= (x!16961 x$72!18) (x!16961 thiss!5678)) t!27205) tb!26383))

(declare-fun result!26659 () Bool)

(assert (=> tb!26383 (= result!26659 true)))

(assert (=> b!45789 t!27205))

(declare-fun b_and!34701 () Bool)

(assert (= b_and!34679 (and (=> t!27205 result!26659) b_and!34701)))

(declare-fun t!27207 () Bool)

(declare-fun tb!26385 () Bool)

(assert (=> (and b!45796 (= (x!16961 thiss!5678) (x!16961 thiss!5678)) t!27207) tb!26385))

(declare-fun result!26661 () Bool)

(assert (=> tb!26385 (= result!26661 true)))

(assert (=> b!45789 t!27207))

(declare-fun b_and!34703 () Bool)

(assert (= b_and!34673 (and (=> t!27207 result!26661) b_and!34703)))

(declare-fun t!27209 () Bool)

(declare-fun tb!26387 () Bool)

(assert (=> (and b!45792 (= (evidence!591 x$71!28) (x!16961 thiss!5678)) t!27209) tb!26387))

(declare-fun result!26663 () Bool)

(assert (=> tb!26387 (= result!26663 true)))

(assert (=> b!45789 t!27209))

(declare-fun b_and!34705 () Bool)

(assert (= b_and!34689 (and (=> t!27209 result!26663) b_and!34705)))

(declare-fun t!27211 () Bool)

(declare-fun tb!26389 () Bool)

(assert (=> (and b!45792 (= (y!1478 x$71!28) (x!16961 thiss!5678)) t!27211) tb!26389))

(declare-fun result!26665 () Bool)

(assert (=> tb!26389 (= result!26665 true)))

(assert (=> b!45789 t!27211))

(declare-fun b_and!34707 () Bool)

(assert (= b_and!34685 (and (=> t!27211 result!26665) b_and!34707)))

(declare-fun tb!26391 () Bool)

(declare-fun t!27213 () Bool)

(assert (=> (and b!45795 (= (y!1478 prev!599) (x!16961 thiss!5678)) t!27213) tb!26391))

(declare-fun result!26667 () Bool)

(assert (=> tb!26391 (= result!26667 true)))

(assert (=> b!45789 t!27213))

(declare-fun b_and!34709 () Bool)

(assert (= b_and!34683 (and (=> t!27213 result!26667) b_and!34709)))

(declare-fun tb!26393 () Bool)

(declare-fun t!27215 () Bool)

(assert (=> (and b!45795 (= (x!16960 prev!599) (x!16961 thiss!5678)) t!27215) tb!26393))

(declare-fun result!26669 () Bool)

(assert (=> tb!26393 (= result!26669 true)))

(assert (=> b!45789 t!27215))

(declare-fun b_and!34711 () Bool)

(assert (= b_and!34677 (and (=> t!27215 result!26669) b_and!34711)))

(declare-fun b_lambda!12197 () Bool)

(assert (=> (not b_lambda!12197) (not b!45794)))

(declare-fun t!27217 () Bool)

(declare-fun tb!26395 () Bool)

(assert (=> (and b!45795 (= (x!16960 prev!599) (evidence!591 prev!599)) t!27217) tb!26395))

(declare-fun result!26671 () Bool)

(assert (=> tb!26395 (= result!26671 true)))

(assert (=> b!45794 t!27217))

(declare-fun b_and!34713 () Bool)

(assert (= b_and!34711 (and (=> t!27217 result!26671) b_and!34713)))

(declare-fun tb!26397 () Bool)

(declare-fun t!27219 () Bool)

(assert (=> (and b!45796 (= (y!1479 thiss!5678) (evidence!591 prev!599)) t!27219) tb!26397))

(declare-fun result!26673 () Bool)

(assert (=> tb!26397 (= result!26673 true)))

(assert (=> b!45794 t!27219))

(declare-fun b_and!34715 () Bool)

(assert (= b_and!34697 (and (=> t!27219 result!26673) b_and!34715)))

(declare-fun tb!26399 () Bool)

(declare-fun t!27221 () Bool)

(assert (=> (and b!45791 (= (x!16961 x$72!18) (evidence!591 prev!599)) t!27221) tb!26399))

(declare-fun result!26675 () Bool)

(assert (=> tb!26399 (= result!26675 true)))

(assert (=> b!45794 t!27221))

(declare-fun b_and!34717 () Bool)

(assert (= b_and!34701 (and (=> t!27221 result!26675) b_and!34717)))

(declare-fun tb!26401 () Bool)

(declare-fun t!27223 () Bool)

(assert (=> (and b!45792 (= (evidence!591 x$71!28) (evidence!591 prev!599)) t!27223) tb!26401))

(declare-fun result!26677 () Bool)

(assert (=> tb!26401 (= result!26677 true)))

(assert (=> b!45794 t!27223))

(declare-fun b_and!34719 () Bool)

(assert (= b_and!34705 (and (=> t!27223 result!26677) b_and!34719)))

(declare-fun t!27225 () Bool)

(declare-fun tb!26403 () Bool)

(assert (=> (and b!45796 (= (x!16961 thiss!5678) (evidence!591 prev!599)) t!27225) tb!26403))

(declare-fun result!26679 () Bool)

(assert (=> tb!26403 (= result!26679 true)))

(assert (=> b!45794 t!27225))

(declare-fun b_and!34721 () Bool)

(assert (= b_and!34703 (and (=> t!27225 result!26679) b_and!34721)))

(declare-fun t!27227 () Bool)

(declare-fun tb!26405 () Bool)

(assert (=> (and b!45792 (= (x!16960 x$71!28) (evidence!591 prev!599)) t!27227) tb!26405))

(declare-fun result!26681 () Bool)

(assert (=> tb!26405 (= result!26681 true)))

(assert (=> b!45794 t!27227))

(declare-fun b_and!34723 () Bool)

(assert (= b_and!34693 (and (=> t!27227 result!26681) b_and!34723)))

(declare-fun t!27229 () Bool)

(declare-fun tb!26407 () Bool)

(assert (=> (and b!45795 (= (evidence!591 prev!599) (evidence!591 prev!599)) t!27229) tb!26407))

(declare-fun result!26683 () Bool)

(assert (=> tb!26407 (= result!26683 true)))

(assert (=> b!45794 t!27229))

(declare-fun b_and!34725 () Bool)

(assert (= b_and!34699 (and (=> t!27229 result!26683) b_and!34725)))

(declare-fun t!27231 () Bool)

(declare-fun tb!26409 () Bool)

(assert (=> (and b!45791 (= (y!1479 x$72!18) (evidence!591 prev!599)) t!27231) tb!26409))

(declare-fun result!26685 () Bool)

(assert (=> tb!26409 (= result!26685 true)))

(assert (=> b!45794 t!27231))

(declare-fun b_and!34727 () Bool)

(assert (= b_and!34695 (and (=> t!27231 result!26685) b_and!34727)))

(declare-fun t!27233 () Bool)

(declare-fun tb!26411 () Bool)

(assert (=> (and b!45795 (= (y!1478 prev!599) (evidence!591 prev!599)) t!27233) tb!26411))

(declare-fun result!26687 () Bool)

(assert (=> tb!26411 (= result!26687 true)))

(assert (=> b!45794 t!27233))

(declare-fun b_and!34729 () Bool)

(assert (= b_and!34709 (and (=> t!27233 result!26687) b_and!34729)))

(declare-fun tb!26413 () Bool)

(declare-fun t!27235 () Bool)

(assert (=> (and b!45792 (= (y!1478 x$71!28) (evidence!591 prev!599)) t!27235) tb!26413))

(declare-fun result!26689 () Bool)

(assert (=> tb!26413 (= result!26689 true)))

(assert (=> b!45794 t!27235))

(declare-fun b_and!34731 () Bool)

(assert (= b_and!34707 (and (=> t!27235 result!26689) b_and!34731)))

(declare-fun m!48717 () Bool)

(assert (=> b!45789 m!48717))

(declare-fun m!48719 () Bool)

(assert (=> b!45789 m!48719))

(declare-fun m!48721 () Bool)

(assert (=> start!6168 m!48721))

(declare-fun m!48723 () Bool)

(assert (=> start!6168 m!48723))

(declare-fun m!48725 () Bool)

(assert (=> start!6168 m!48725))

(declare-fun m!48727 () Bool)

(assert (=> start!6168 m!48727))

(declare-fun m!48729 () Bool)

(assert (=> b!45794 m!48729))

(assert (=> b!45794 m!48729))

(declare-fun m!48731 () Bool)

(assert (=> b!45794 m!48731))

(push 1)

(assert b_and!34671)

(assert (not b!45788))

(assert (not b_lambda!12197))

(assert (not b_next!23547))

(assert (not b_next!23543))

(assert b_and!34727)

(assert (not b_lambda!12195))

(assert (not b!45794))

(assert b_and!34721)

(assert (not b_next!23551))

(assert b_and!34713)

(assert b_and!34729)

(assert (not b_next!23557))

(assert (not b_next!23539))

(assert b_and!34665)

(assert b_and!34717)

(assert b_and!34723)

(assert (not b_next!23553))

(assert (not b_next!23549))

(assert (not b_next!23555))

(assert b_and!34731)

(assert b_and!34715)

(assert b_and!34725)

(assert (not b_next!23541))

(assert (not b_next!23559))

(assert b_and!34719)

(assert (not start!6168))

(assert (not b_next!23545))

(assert (not b_next!23561))

(assert (not b_lambda!12193))

(check-sat)

(pop 1)

(push 1)

(assert b_and!34671)

(assert (not b_next!23547))

(assert (not b_next!23543))

(assert b_and!34727)

(assert b_and!34721)

(assert (not b_next!23551))

(assert b_and!34713)

(assert b_and!34729)

(assert (not b_next!23557))

(assert (not b_next!23539))

(assert b_and!34665)

(assert b_and!34717)

(assert b_and!34723)

(assert (not b_next!23553))

(assert (not b_next!23549))

(assert (not b_next!23555))

(assert b_and!34731)

(assert b_and!34715)

(assert b_and!34725)

(assert (not b_next!23541))

(assert (not b_next!23559))

(assert b_and!34719)

(assert (not b_next!23545))

(assert (not b_next!23561))

(check-sat)

(pop 1)

