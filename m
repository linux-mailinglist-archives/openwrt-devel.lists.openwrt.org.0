Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0C91B788B
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 16:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nEvtsvRe7a3JOh4FViRq55boD9cydIFWl7jh1CVf8uI=; b=SoU/qJ5VHKHGte
	JvJg3qFhtfybVP6oo+rbBR4LpXYntClOzSQ3Fhph/jzy8Uu68vneN4mf52HC/DsvAoc8Abv2Z9uQP
	xASEeM6PvYHeezmB20b0tHmODHeXYKiODjbWvjtNnM5cuioa4c7VLnwh3X5SLODthwu429Tqia3Cm
	DyTWQbrlWYaqLNVMZ7R+5jmO43STjQTjGHE4e6SahPXnJM2bxwONfTelWSvW1CSscPgOv7cpZnUKF
	gBAezHulzRRx/sTbfipW6ahNTa17mMhNXJPnQApjOV2RT9fz0ER/B+IeKsgKiiUN5wRGvvlzMFD5r
	cJj/OdSCCx9jtFx1+vUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzeo-0003cH-9E; Fri, 24 Apr 2020 14:50:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzeV-0003Sj-NU
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 14:50:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so11098517wmg.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 07:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=MfCFOTI+vezB1SrRo3LNWg8bN8owcPhM1RfqlqruQsk=;
 b=axtLqZGPT7nNs8frIUVjPblUkZocURY6qd3RKgvgZzAydU7UozpRuMs+WAL1K5eAEI
 HH+nBYNEcEvFs0ewEokR3/rdvCdu9Ie8ixg9NsD8lAcbTc/QwDuf6IXnwZ7EG2oEYncJ
 gaL/zeae+OIGcKUq1h3yq/wuFzEMeklVDzNTp9VqytXhq7H8wRr2U6DGQy7mKHhhtVr4
 UBlSt2EkjEiqfgq/vpwrSupH1WRmqYLyPD3p6TU9WkNpUP05wH4EqHD/LIUILsb3vRqL
 h9XtIGOB+ogrKYD6gqRVrxt05AVWdA2YcBAFU/f3SlMf5bKfD96K2KhJIT5eM70n52k2
 Akzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=MfCFOTI+vezB1SrRo3LNWg8bN8owcPhM1RfqlqruQsk=;
 b=ql7m27WdgHZ/NN2oBvAx9EGaHkk+PGNt1HQ1tq9WDkMgvAPlHev/lfI6nRGo8rUHU+
 rtoCzVWFt6wySPDbi4DkurEyWzj8V/6+BSB7pNrxB4beP2M8jl+NQ5TdkLScncerw+76
 nHr3Kr1kjFq/VhreE1Na35OfMmAFr31Y/HVxtJC/Hn5rHlHqTIdCqDplh7hMkI8xdNLI
 i6dYbA6XpXJPrfZi17ovodelysiCcViekFq++XccdoKDBKGHals/7oJzLqX5lSV6s8xn
 QQE6pJoOAu6/08fpCns62w7DU6Fqfn0GXjQkA2vkaLWSHJnnXI9NCgcZsIcdzJiGZGFL
 Arzg==
X-Gm-Message-State: AGi0PuasdupieY3TiyFmBgRKo67Ld2jm1u+u3OgBKEd1f8d65S7BHsaS
 TUhE2Fj65yDgXwnlxGG1J1g=
X-Google-Smtp-Source: APiQypJn/Eo8IH6yAHq9636Vder2nW4gpOep01iXcAS5Y5bNOnmu7w1V/CnYTiqbMB4uOi94lGjJ0w==
X-Received: by 2002:a7b:c8cc:: with SMTP id f12mr10032800wml.7.1587739801682; 
 Fri, 24 Apr 2020 07:50:01 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com (14.125.146.82.ipv4.evonet.be.
 [82.146.125.14])
 by smtp.gmail.com with ESMTPSA id k184sm3162160wmf.9.2020.04.24.07.50.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:50:01 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
To: Felix Fietkau <nbd@nbd.name>,
	openwrt-devel@lists.openwrt.org
Date: Fri, 24 Apr 2020 16:49:55 +0200
Message-Id: <1587739795-12473-1-git-send-email-alin.nastac@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_075003_766644_05259126 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH][uci] file: preserve original file mode
 after commit
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Because mkstemp() create a file with mode 0600, only user doing
the commit (typically root) will be allowed to inspect the content
of the file after uci commit.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 file.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/file.c b/file.c
index 3ac49c6..6486de9 100644
--- a/file.c
+++ b/file.c
@@ -724,6 +724,7 @@ static void uci_file_commit(struct uci_context *ctx, struct uci_package **packag
 	char *volatile name = NULL;
 	char *volatile path = NULL;
 	char *filename = NULL;
+	struct stat statbuf;
 	volatile bool do_rename = false;
 	int fd;
 
@@ -801,7 +802,7 @@ done:
 	uci_close_stream(f1);
 	if (do_rename) {
 		path = realpath(p->path, NULL);
-		if (!path || rename(filename, path)) {
+		if (!path || stat(path, &statbuf) || chmod(filename, statbuf.st_mode) || rename(filename, path)) {
 			unlink(filename);
 			UCI_THROW(ctx, UCI_ERR_IO);
 		}
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
