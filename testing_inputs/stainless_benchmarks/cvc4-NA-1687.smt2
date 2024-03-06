; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11776 () Bool)

(assert start!11776)

(declare-fun res!47014 () Bool)

(declare-fun e!49027 () Bool)

(assert (=> start!11776 (=> (not res!47014) (not e!49027))))

(declare-datatypes () ((MyLetter!6 (L1!4) (L2!4))))

(declare-datatypes () ((MyState!8 (A!3577) (B!621))))

(declare-datatypes () ((Object!471 (MyMachine!4) (MyLetter!7 (value!7191 MyLetter!6)) (MyState!9 (value!7192 MyState!8)) (Open!471 (value!7193 Int)))))

(declare-fun thiss!10033 () Object!471)

(declare-fun isMyMachine!0 (Object!471) Bool)

(assert (=> start!11776 (= res!47014 (isMyMachine!0 thiss!10033))))

(assert (=> start!11776 e!49027))

(declare-fun lt!20443 () Object!471)

(assert (=> start!11776 (= lt!20443 thiss!10033)))

(assert (=> start!11776 (isMyMachine!0 lt!20443)))

(assert (=> start!11776 true))

(declare-fun b!89832 () Bool)

(declare-fun inlined!6977 () MyState!8)

(declare-fun v!2663 () MyState!8)

(assert (=> b!89832 (= e!49027 (and (= inlined!6977 A!3577) (= v!2663 inlined!6977) (not (is-A!3577 v!2663))))))

(assert (= (and start!11776 res!47014) b!89832))

(declare-fun m!85882 () Bool)

(assert (=> start!11776 m!85882))

(declare-fun m!85884 () Bool)

(assert (=> start!11776 m!85884))

(push 1)

(assert (not start!11776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

