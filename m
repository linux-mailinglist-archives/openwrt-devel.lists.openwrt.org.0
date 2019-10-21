Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A0BDE474
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 08:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ql7T8TC11dPkjTDSgd+7wkdDfF9DEB6Asr1M6qbtxv0=; b=m2qsZjZAnIZIlK
	nfxLq+Tlx7R0NatAHeWtjFwaHaA9H7Y1TEf8ieNjKHeOCQjVCz9Ix8qmigzVVXOXWJfWIBYEkSxjs
	nZHQPzEOXa0r/dWFpr/Bm3AEl2j95ThmMWi0U1ojr9gtpQhNL9RKZMQnIT7Hz4Fm09JnA63s2kqk4
	553MpaBlOdgOsCC2goCdnQ/6P9lxbotWg0fL0so5cqhL454eFMRlIyRDtom56L2bA9GwqiwhJd+4d
	A/jYvUgc3BrbulmsqV+q6jZ7lPk5gyqo8lZcNTBuEu/YvDzuh8PI8sfrpyKB/EHWBRbdehm0rw/5a
	VOewo3syxt/Zvs1/pfWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR3w-0003p7-EP; Mon, 21 Oct 2019 06:21:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR32-00025o-DF
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 06:20:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id c8so2300393pgb.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 23:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejY+PPDeC6zoFnTQsHsb6CWTJLNp3GAskceRPkj6Yh4=;
 b=ndPIFLNZsZzo+12jhDWsC1NvTnDQDCuExWlcWFamJfJ4gmp2gbQIAgF6oIFlyZItCK
 6r+tlY5VnIywK3ML6RJ6AiiHz12aW36ZX7zRWSREkS4aif1numYRtD/EpjECSWw9EZJ+
 eA3bME+1bxVt9igdueN6CyD7h30aPsdAjq1qZRN6gsu0/w44Zq78EI9S9aQ0NOqEawwr
 /SUO69l5BtPE9d7Iek8rGSLT7zAQZ3Pj2zjEma/pzaA+FZPD3fburCSeq+TAEm9Yl1ME
 mLODTXC5BPWE+Pltiw+oerjYGCiI/yUXa5yAScZ+/aOwlqFllD1ds2E648XgSw+SmYrc
 gLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejY+PPDeC6zoFnTQsHsb6CWTJLNp3GAskceRPkj6Yh4=;
 b=XGCTGcdHhsqT6zJ2OaxXqGAcux4Iage8nDO6qXPpcHQS0tRpAyC0TPMDU5zxhiKGmc
 bPwmBhmYWGhowH1wIRvsGT1FcGRTFX/SSplstADte2eoNI2VNxhvRyeW5mlrPGUBlNlL
 77KMHZ+W/rWthelNSu3rQ6g49MxAWGj8PGHPRL7hGoy4lzmidXWsh/RrxMVPX+KSLdfP
 YdsmSTrgAkzSdcL/RjmmdKsBZvpEVDc9inXW+5WDooUq6GNHpeULB0sUDIMHu/jbzGal
 p/J6UWeZ9MtG4p75jUFdqtRYZ7SzqAqQsUIE+/kvWm3a6bqYi3xyJXl6jZQFRY3DbsfW
 rdxA==
X-Gm-Message-State: APjAAAX0o5nHtDTZ+e4Pb4Cm024Pe5F2+uLx0u4GoRJdSsW1OVqoMTMY
 RQnt09rg5ueGVmTlnq6fQkI=
X-Google-Smtp-Source: APXvYqzQdyRbknJRahgm19QeOpPvEeSTBMZIagXAytocz8NQcjYliJ1ysDuoaYKo/XSQ2UTNmlOLQw==
X-Received: by 2002:a62:a504:: with SMTP id v4mr20340079pfm.243.1571638805812; 
 Sun, 20 Oct 2019 23:20:05 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id b22sm13524784pfo.85.2019.10.20.23.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 23:20:04 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 06:10:28 +0000
Message-Id: <20191021061031.81230-4-yszhou4tech@gmail.com>
In-Reply-To: <20191021061031.81230-1-yszhou4tech@gmail.com>
References: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_232008_787704_8EB74258 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH rpcd v2 3/6] exec: alway call finish_cb to
 allow plugin to free up memory
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, ynezz@true.cz,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 exec.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/exec.c b/exec.c
index f490ad7..1b05a91 100644
--- a/exec.c
+++ b/exec.c
@@ -131,13 +131,12 @@ rpc_exec_reply(struct rpc_exec_context *c, int rv)
 			rpc_ustream_to_blobmsg(&c->blob, &c->opipe.stream, "stdout");
 			rpc_ustream_to_blobmsg(&c->blob, &c->epipe.stream, "stderr");
 		}
-
-		if (c->finish_cb)
-			rv = c->finish_cb(&c->blob, c->stat, c->priv);
-
-		if (rv == UBUS_STATUS_OK)
-			ubus_send_reply(c->context, &c->request, c->blob.head);
 	}
+	if (c->finish_cb)
+		rv = c->finish_cb(&c->blob, c->stat, c->priv);
+
+	if (rv == UBUS_STATUS_OK)
+		ubus_send_reply(c->context, &c->request, c->blob.head);
 
 	ubus_complete_deferred_request(c->context, &c->request, rv);
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
