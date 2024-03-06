; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!5654 () Bool)

(assert start!5654)

(declare-fun res!20583 () Bool)

(declare-fun e!22502 () Bool)

(assert (=> start!5654 (=> (not res!20583) (not e!22502))))

(declare-datatypes () ((Unit!408 (Unit!409))))

(declare-fun tmp!236 () Unit!408)

(declare-datatypes () ((Nat!107 (Zero!91) (Succ!88 (n!1228 Nat!107)))))

(declare-fun n!1048 () Nat!107)

(declare-fun times_two_plus_one_odd!0 (Nat!107) Unit!408)

(assert (=> start!5654 (= res!20583 (= tmp!236 (times_two_plus_one_odd!0 n!1048)))))

(assert (=> start!5654 e!22502))

(assert (=> start!5654 true))

(declare-fun b!43414 () Bool)

(declare-fun res!20584 () Bool)

(assert (=> b!43414 (=> (not res!20584) (not e!22502))))

(declare-fun x$75!2 () Unit!408)

(declare-fun commutative_plus!0 (Nat!107 Nat!107) Unit!408)

(declare-fun *!4 (Nat!107 Nat!107) Nat!107)

(assert (=> b!43414 (= res!20584 (= x$75!2 (commutative_plus!0 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))))))

(declare-fun b!43415 () Bool)

(declare-fun isEven!1 (Nat!107) Bool)

(assert (=> b!43415 (= e!22502 (isEven!1 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))

(assert (= (and start!5654 res!20583) b!43414))

(assert (= (and b!43414 res!20584) b!43415))

(declare-fun m!46641 () Bool)

(assert (=> start!5654 m!46641))

(declare-fun m!46643 () Bool)

(assert (=> b!43414 m!46643))

(assert (=> b!43414 m!46643))

(declare-fun m!46645 () Bool)

(assert (=> b!43414 m!46645))

(assert (=> b!43415 m!46643))

(declare-fun m!46647 () Bool)

(assert (=> b!43415 m!46647))

(push 1)

(assert (not b!43415))

(assert (not start!5654))

(assert (not b!43414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30854 () Bool)

(declare-fun res!20589 () Bool)

(declare-fun e!22507 () Bool)

(assert (=> d!30854 (=> res!20589 e!22507)))

(assert (=> d!30854 (= res!20589 (is-Zero!91 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))

(assert (=> d!30854 (= (isEven!1 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))) e!22507)))

(declare-fun b!43420 () Bool)

(declare-fun e!22508 () Bool)

(assert (=> b!43420 (= e!22507 e!22508)))

(declare-fun res!20590 () Bool)

(assert (=> b!43420 (=> (not res!20590) (not e!22508))))

(assert (=> b!43420 (= res!20590 (not (and (is-Succ!88 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))) (is-Zero!91 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))))))))

(declare-fun b!43421 () Bool)

(assert (=> b!43421 (= e!22508 (not (isEven!1 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))))

(assert (= (and d!30854 (not res!20589)) b!43420))

(assert (= (and b!43420 res!20590) b!43421))

(declare-fun m!46649 () Bool)

(assert (=> b!43421 m!46649))

(assert (=> b!43415 d!30854))

(declare-fun d!30856 () Bool)

(declare-fun c!9205 () Bool)

(assert (=> d!30856 (= c!9205 (is-Zero!91 (Succ!88 (Succ!88 Zero!91))))))

(declare-fun e!22511 () Nat!107)

(assert (=> d!30856 (= (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) e!22511)))

(declare-fun b!43426 () Bool)

(assert (=> b!43426 (= e!22511 Zero!91)))

(declare-fun b!43427 () Bool)

(declare-fun +!5 (Nat!107 Nat!107) Nat!107)

(assert (=> b!43427 (= e!22511 (+!5 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048) n!1048))))

(assert (= (and d!30856 c!9205) b!43426))

(assert (= (and d!30856 (not c!9205)) b!43427))

(declare-fun m!46651 () Bool)

(assert (=> b!43427 m!46651))

(assert (=> b!43427 m!46651))

(declare-fun m!46653 () Bool)

(assert (=> b!43427 m!46653))

(assert (=> b!43415 d!30856))

(declare-fun d!30858 () Bool)

(assert (=> d!30858 (not (isEven!1 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))))))

(assert (=> d!30858 true))

(declare-fun x$74!5 () Unit!408)

(assert (=> d!30858 (= (times_two_plus_one_odd!0 n!1048) x$74!5)))

(declare-fun bs!17706 () Bool)

(assert (= bs!17706 d!30858))

(assert (=> bs!17706 m!46643))

(assert (=> bs!17706 m!46643))

(declare-fun m!46655 () Bool)

(assert (=> bs!17706 m!46655))

(assert (=> bs!17706 m!46655))

(declare-fun m!46657 () Bool)

(assert (=> bs!17706 m!46657))

(assert (=> start!5654 d!30858))

(declare-fun d!30860 () Bool)

(assert (=> d!30860 (= (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)) (+!5 (Succ!88 Zero!91) (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))))

(assert (=> d!30860 true))

(declare-fun x$13!88 () Unit!408)

(assert (=> d!30860 (= (commutative_plus!0 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)) x$13!88)))

(declare-fun bs!17707 () Bool)

(assert (= bs!17707 d!30860))

(assert (=> bs!17707 m!46643))

(assert (=> bs!17707 m!46655))

(assert (=> bs!17707 m!46643))

(declare-fun m!46659 () Bool)

(assert (=> bs!17707 m!46659))

(assert (=> b!43414 d!30860))

(assert (=> b!43414 d!30856))

(push 1)

(assert (not b!43427))

(assert (not b!43421))

(assert (not d!30860))

(assert (not d!30858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30862 () Bool)

(declare-fun c!9208 () Bool)

(assert (=> d!30862 (= c!9208 (is-Zero!91 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048)))))

(declare-fun e!22514 () Nat!107)

(assert (=> d!30862 (= (+!5 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048) n!1048) e!22514)))

(declare-fun b!43432 () Bool)

(assert (=> b!43432 (= e!22514 n!1048)))

(declare-fun b!43433 () Bool)

(assert (=> b!43433 (= e!22514 (Succ!88 (+!5 (n!1228 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048)) n!1048)))))

(assert (= (and d!30862 c!9208) b!43432))

(assert (= (and d!30862 (not c!9208)) b!43433))

(declare-fun m!46661 () Bool)

(assert (=> b!43433 m!46661))

(assert (=> b!43427 d!30862))

(declare-fun d!30864 () Bool)

(declare-fun c!9209 () Bool)

(assert (=> d!30864 (= c!9209 (is-Zero!91 (n!1228 (Succ!88 (Succ!88 Zero!91)))))))

(declare-fun e!22515 () Nat!107)

(assert (=> d!30864 (= (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048) e!22515)))

(declare-fun b!43434 () Bool)

(assert (=> b!43434 (= e!22515 Zero!91)))

(declare-fun b!43435 () Bool)

(assert (=> b!43435 (= e!22515 (+!5 (*!4 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91)))) n!1048) n!1048))))

(assert (= (and d!30864 c!9209) b!43434))

(assert (= (and d!30864 (not c!9209)) b!43435))

(declare-fun m!46663 () Bool)

(assert (=> b!43435 m!46663))

(assert (=> b!43435 m!46663))

(declare-fun m!46665 () Bool)

(assert (=> b!43435 m!46665))

(assert (=> b!43427 d!30864))

(declare-fun d!30866 () Bool)

(declare-fun res!20591 () Bool)

(declare-fun e!22516 () Bool)

(assert (=> d!30866 (=> res!20591 e!22516)))

(assert (=> d!30866 (= res!20591 (is-Zero!91 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))))))

(assert (=> d!30866 (= (isEven!1 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))) e!22516)))

(declare-fun b!43436 () Bool)

(declare-fun e!22517 () Bool)

(assert (=> b!43436 (= e!22516 e!22517)))

(declare-fun res!20592 () Bool)

(assert (=> b!43436 (=> (not res!20592) (not e!22517))))

(assert (=> b!43436 (= res!20592 (not (and (is-Succ!88 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))) (is-Zero!91 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))))))

(declare-fun b!43437 () Bool)

(assert (=> b!43437 (= e!22517 (not (isEven!1 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))))))))

(assert (= (and d!30866 (not res!20591)) b!43436))

(assert (= (and b!43436 res!20592) b!43437))

(declare-fun m!46667 () Bool)

(assert (=> b!43437 m!46667))

(assert (=> b!43421 d!30866))

(declare-fun d!30868 () Bool)

(declare-fun c!9210 () Bool)

(assert (=> d!30868 (= c!9210 (is-Zero!91 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))))

(declare-fun e!22518 () Nat!107)

(assert (=> d!30868 (= (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)) e!22518)))

(declare-fun b!43438 () Bool)

(assert (=> b!43438 (= e!22518 (Succ!88 Zero!91))))

(declare-fun b!43439 () Bool)

(assert (=> b!43439 (= e!22518 (Succ!88 (+!5 (n!1228 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)) (Succ!88 Zero!91))))))

(assert (= (and d!30868 c!9210) b!43438))

(assert (= (and d!30868 (not c!9210)) b!43439))

(declare-fun m!46669 () Bool)

(assert (=> b!43439 m!46669))

(assert (=> d!30860 d!30868))

(declare-fun d!30870 () Bool)

(declare-fun c!9211 () Bool)

(assert (=> d!30870 (= c!9211 (is-Zero!91 (Succ!88 Zero!91)))))

(declare-fun e!22519 () Nat!107)

(assert (=> d!30870 (= (+!5 (Succ!88 Zero!91) (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)) e!22519)))

(declare-fun b!43440 () Bool)

(assert (=> b!43440 (= e!22519 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))

(declare-fun b!43441 () Bool)

(assert (=> b!43441 (= e!22519 (Succ!88 (+!5 (n!1228 (Succ!88 Zero!91)) (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))

(assert (= (and d!30870 c!9211) b!43440))

(assert (= (and d!30870 (not c!9211)) b!43441))

(assert (=> b!43441 m!46643))

(declare-fun m!46671 () Bool)

(assert (=> b!43441 m!46671))

(assert (=> d!30860 d!30870))

(declare-fun d!30872 () Bool)

(declare-fun res!20593 () Bool)

(declare-fun e!22520 () Bool)

(assert (=> d!30872 (=> res!20593 e!22520)))

(assert (=> d!30872 (= res!20593 (is-Zero!91 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))))))

(assert (=> d!30872 (= (isEven!1 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))) e!22520)))

(declare-fun b!43442 () Bool)

(declare-fun e!22521 () Bool)

(assert (=> b!43442 (= e!22520 e!22521)))

(declare-fun res!20594 () Bool)

(assert (=> b!43442 (=> (not res!20594) (not e!22521))))

(assert (=> b!43442 (= res!20594 (not (and (is-Succ!88 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))) (is-Zero!91 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)))))))))

(declare-fun b!43443 () Bool)

(assert (=> b!43443 (= e!22521 (not (isEven!1 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))))))))

(assert (= (and d!30872 (not res!20593)) b!43442))

(assert (= (and b!43442 res!20594) b!43443))

(declare-fun m!46673 () Bool)

(assert (=> b!43443 m!46673))

(assert (=> d!30858 d!30872))

(assert (=> d!30858 d!30868))

(assert (=> d!30858 d!30856))

(push 1)

(assert (not b!43433))

(assert (not b!43439))

(assert (not b!43435))

(assert (not b!43437))

(assert (not b!43441))

(assert (not b!43443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30874 () Bool)

(declare-fun res!20595 () Bool)

(declare-fun e!22522 () Bool)

(assert (=> d!30874 (=> res!20595 e!22522)))

(assert (=> d!30874 (= res!20595 (is-Zero!91 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)))))))

(assert (=> d!30874 (= (isEven!1 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)))) e!22522)))

(declare-fun b!43444 () Bool)

(declare-fun e!22523 () Bool)

(assert (=> b!43444 (= e!22522 e!22523)))

(declare-fun res!20596 () Bool)

(assert (=> b!43444 (=> (not res!20596) (not e!22523))))

(assert (=> b!43444 (= res!20596 (not (and (is-Succ!88 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)))) (is-Zero!91 (n!1228 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91))))))))))

(declare-fun b!43445 () Bool)

(assert (=> b!43445 (= e!22523 (not (isEven!1 (n!1228 (n!1228 (+!5 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048) (Succ!88 Zero!91)))))))))

(assert (= (and d!30874 (not res!20595)) b!43444))

(assert (= (and b!43444 res!20596) b!43445))

(declare-fun m!46675 () Bool)

(assert (=> b!43445 m!46675))

(assert (=> b!43443 d!30874))

(declare-fun d!30876 () Bool)

(declare-fun c!9212 () Bool)

(assert (=> d!30876 (= c!9212 (is-Zero!91 (*!4 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91)))) n!1048)))))

(declare-fun e!22524 () Nat!107)

(assert (=> d!30876 (= (+!5 (*!4 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91)))) n!1048) n!1048) e!22524)))

(declare-fun b!43446 () Bool)

(assert (=> b!43446 (= e!22524 n!1048)))

(declare-fun b!43447 () Bool)

(assert (=> b!43447 (= e!22524 (Succ!88 (+!5 (n!1228 (*!4 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91)))) n!1048)) n!1048)))))

(assert (= (and d!30876 c!9212) b!43446))

(assert (= (and d!30876 (not c!9212)) b!43447))

(declare-fun m!46677 () Bool)

(assert (=> b!43447 m!46677))

(assert (=> b!43435 d!30876))

(declare-fun d!30878 () Bool)

(declare-fun c!9213 () Bool)

(assert (=> d!30878 (= c!9213 (is-Zero!91 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91))))))))

(declare-fun e!22525 () Nat!107)

(assert (=> d!30878 (= (*!4 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91)))) n!1048) e!22525)))

(declare-fun b!43448 () Bool)

(assert (=> b!43448 (= e!22525 Zero!91)))

(declare-fun b!43449 () Bool)

(assert (=> b!43449 (= e!22525 (+!5 (*!4 (n!1228 (n!1228 (n!1228 (Succ!88 (Succ!88 Zero!91))))) n!1048) n!1048))))

(assert (= (and d!30878 c!9213) b!43448))

(assert (= (and d!30878 (not c!9213)) b!43449))

(declare-fun m!46679 () Bool)

(assert (=> b!43449 m!46679))

(assert (=> b!43449 m!46679))

(declare-fun m!46681 () Bool)

(assert (=> b!43449 m!46681))

(assert (=> b!43435 d!30878))

(declare-fun d!30880 () Bool)

(declare-fun c!9214 () Bool)

(assert (=> d!30880 (= c!9214 (is-Zero!91 (n!1228 (Succ!88 Zero!91))))))

(declare-fun e!22526 () Nat!107)

(assert (=> d!30880 (= (+!5 (n!1228 (Succ!88 Zero!91)) (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)) e!22526)))

(declare-fun b!43450 () Bool)

(assert (=> b!43450 (= e!22526 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))

(declare-fun b!43451 () Bool)

(assert (=> b!43451 (= e!22526 (Succ!88 (+!5 (n!1228 (n!1228 (Succ!88 Zero!91))) (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))

(assert (= (and d!30880 c!9214) b!43450))

(assert (= (and d!30880 (not c!9214)) b!43451))

(assert (=> b!43451 m!46643))

(declare-fun m!46683 () Bool)

(assert (=> b!43451 m!46683))

(assert (=> b!43441 d!30880))

(declare-fun d!30882 () Bool)

(declare-fun c!9215 () Bool)

(assert (=> d!30882 (= c!9215 (is-Zero!91 (n!1228 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048))))))

(declare-fun e!22527 () Nat!107)

(assert (=> d!30882 (= (+!5 (n!1228 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048)) n!1048) e!22527)))

(declare-fun b!43452 () Bool)

(assert (=> b!43452 (= e!22527 n!1048)))

(declare-fun b!43453 () Bool)

(assert (=> b!43453 (= e!22527 (Succ!88 (+!5 (n!1228 (n!1228 (*!4 (n!1228 (Succ!88 (Succ!88 Zero!91))) n!1048))) n!1048)))))

(assert (= (and d!30882 c!9215) b!43452))

(assert (= (and d!30882 (not c!9215)) b!43453))

(declare-fun m!46685 () Bool)

(assert (=> b!43453 m!46685))

(assert (=> b!43433 d!30882))

(declare-fun d!30884 () Bool)

(declare-fun res!20597 () Bool)

(declare-fun e!22528 () Bool)

(assert (=> d!30884 (=> res!20597 e!22528)))

(assert (=> d!30884 (= res!20597 (is-Zero!91 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))))

(assert (=> d!30884 (= (isEven!1 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))) e!22528)))

(declare-fun b!43454 () Bool)

(declare-fun e!22529 () Bool)

(assert (=> b!43454 (= e!22528 e!22529)))

(declare-fun res!20598 () Bool)

(assert (=> b!43454 (=> (not res!20598) (not e!22529))))

(assert (=> b!43454 (= res!20598 (not (and (is-Succ!88 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))) (is-Zero!91 (n!1228 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)))))))))))

(declare-fun b!43455 () Bool)

(assert (=> b!43455 (= e!22529 (not (isEven!1 (n!1228 (n!1228 (n!1228 (Succ!88 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))))))

(assert (= (and d!30884 (not res!20597)) b!43454))

(assert (= (and b!43454 res!20598) b!43455))

(declare-fun m!46687 () Bool)

(assert (=> b!43455 m!46687))

(assert (=> b!43437 d!30884))

(declare-fun d!30886 () Bool)

(declare-fun c!9216 () Bool)

(assert (=> d!30886 (= c!9216 (is-Zero!91 (n!1228 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))))))

(declare-fun e!22530 () Nat!107)

(assert (=> d!30886 (= (+!5 (n!1228 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048)) (Succ!88 Zero!91)) e!22530)))

(declare-fun b!43456 () Bool)

(assert (=> b!43456 (= e!22530 (Succ!88 Zero!91))))

(declare-fun b!43457 () Bool)

(assert (=> b!43457 (= e!22530 (Succ!88 (+!5 (n!1228 (n!1228 (*!4 (Succ!88 (Succ!88 Zero!91)) n!1048))) (Succ!88 Zero!91))))))

(assert (= (and d!30886 c!9216) b!43456))

(assert (= (and d!30886 (not c!9216)) b!43457))

(declare-fun m!46689 () Bool)

(assert (=> b!43457 m!46689))

(assert (=> b!43439 d!30886))

(push 1)

(assert (not b!43451))

(assert (not b!43453))

(assert (not b!43457))

(assert (not b!43447))

(assert (not b!43449))

(assert (not b!43455))

(assert (not b!43445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

