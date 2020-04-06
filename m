Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD22519EEC7
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 02:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5/h8NfMTd7SzK9JYf3S6js/CZjXH2PWSq6UgLlw4Abw=; b=dWdy4I6EAKlItJ
	vhNaoj2HuwCZfoc1+D49R+3wcf41lnOIJa3L0+OkRNHY2BRUO2qwbX6UpcfO1ytQMoYLkLY4BZ60k
	s27PGDt4TGlLR7dJLeuhNHh+EmDi9QU97Q5vuBf7VznrQvyPVtcsHMQRJ/pe654uEehQn7G1t8nb6
	bLD9YLrEd/kXD6JjIb6hsrYsJTSpkNKFdXIhWue/HnplixmiPdP8xnhdIWKmbP/IjFqs7PcLUqBd7
	EiUqqpmwQk59zc422jFHRP2O1NaJwgVyDjxJOlUfClNln9MDxHz/YpQkC6tr4vAPJKcSjuTn+24wT
	etgmanRDwsf2S7+33jsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLFHl-0000PV-Bx; Mon, 06 Apr 2020 00:06:41 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLFHe-0000Oo-TQ
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 00:06:36 +0000
Received: by mail-pj1-x1041.google.com with SMTP id cp9so2315377pjb.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 17:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZSN8yzUD4ATWYQBSIO1tXkKKxlLA3IEgBaBm85nGG00=;
 b=lkvIdwo14NDl7F4KLsKpaAglz98SaEjmijL7wB2tKTkb6P9jBKZFGcmf6STaFlS5m1
 ExVnzu5VA3sdv0Fazi9+nDd1KGg4PMutVvT1rizPuja2zG9LtX/P1u8dmkES+D/90TGO
 +1n2Ztb/U7Urbr/5HLY/NbQFbh32M179r7Q031+YlTAxfq+U0CtBZ/TV4dbYKZ6ZnArg
 QNeAuq22K14GPVrAzcs+l8zBLyoGD9mwMYg5nsiQFilw3XZmOZPON3tv2nt6GD43NCSE
 nigqGzM1yk94ymKEuCkqdQqAHSatpNkRJgybRsbPfsnofDtCcheg8LpsH7LAQaoi/oog
 a6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZSN8yzUD4ATWYQBSIO1tXkKKxlLA3IEgBaBm85nGG00=;
 b=OAN1M4k6oGEr8ASLjqfbIVde/YXSGwOQfGGSIgbEeCVmoNlevRtTc9avIdXwQOVu7L
 fwSYIwbYN0umIqfO64SrRZdRSpVsAhpB1vePvJ0lx3fplhK78Mglhuf6kLQfRE63sdfi
 GLQYwQ7qxFDRJqz/JRLG8dSSixsofkhCScCZBgBjIVJyQqkY1lNOch9RZ8c05xEdohLq
 Yhy+CqCaejKgSOmSXptWqg1C4B3PYCm2W8nfKjnRS8E/vETaKXKXaeAj2QvhD7LIUYRD
 hloL8TZdsVN5C7qH3p2AdTm6YhmlyoXWKYa8kFbyYEajETizZsasEgXTuhWq5I15C0h4
 PZTw==
X-Gm-Message-State: AGi0PuYPkGI6U0q4j1TLYDM7wrdsdKhVfNHMzYt4BxnYJ14bUufriwdQ
 bwMCgNyVjUewHhzQqjs5HXoQlEC01Ho=
X-Google-Smtp-Source: APiQypLHT60YAzUxNVrDOm9J17g462dBsc/jY9eqxNamaDntgMIITzUMHZKxhE4t7LQ1Dce6W2q6qA==
X-Received: by 2002:a17:902:9004:: with SMTP id
 a4mr16448356plp.275.1586131592819; 
 Sun, 05 Apr 2020 17:06:32 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id y3sm10150380pfy.158.2020.04.05.17.06.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 17:06:32 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 17:06:31 -0700
Message-Id: <20200406000631.674916-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_170634_971873_48AA47BB 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCHv2] procd/rcS: cast format string to int64_t
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

musl 1.2.0 turns time_t into a 64-bit value, even on 32-bit. This makes it
compatible.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Changed to PRId64
 rcS.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rcS.c b/rcS.c
index c2e1abb..f6d210c 100644
--- a/rcS.c
+++ b/rcS.c
@@ -118,7 +118,7 @@ static void q_initd_complete(struct runqueue *q, struct runqueue_task *p)
 		ts_res.tv_nsec += 1000000000;
 	}
 
-	DEBUG(2, "stop %s %s - took %lu.%09lus\n", s->file, s->param, ts_res.tv_sec, ts_res.tv_nsec);
+	DEBUG(2, "stop %s %s - took %" PRId64 ".%09" PRId64 "s\n", s->file, s->param, (int64_t)ts_res.tv_sec, (int64_t)ts_res.tv_nsec);
 	ustream_free(&s->fd.stream);
 	close(s->fd.fd.fd);
 	free(s);
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
