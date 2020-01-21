Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB43143FE0
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 15:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0obq4k9TXW/dnUAVEz8OdHBLdPn4aOTvcyzc2I/MPkY=; b=RWNuM+uVvg82Zn
	UYE8N+JuhJ3Y6zGkGF7UJnia06sK14WzhTIhF6p47kpGdyfAZ5n7RHPr+P8G5Nxto8ZKxrN1N8GeX
	ytqHyp2BwsxB2AF/NECpt3kOo00nNLL2yXsWMRQ9XLMmTsBjwL5cuU1gJVAKML1E0vK9mDeI0a9Sv
	KAnt8PofNHu0gMtulOwu23FMFzbc5yDr1P2hTl2v9Rt0xUvvMbEGJ0vR2AddKzn70g/bMMCh5tEbY
	iLACIQGEcDtvIyNSm+XAqTdTrnH+eYv4yTQNDg1rwI+ucTWGuRfZzhHuLe+/v8Xm97qgt1gbCH6jm
	CYq33ra5MmKuRbjTH2Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itul6-0003vi-Sn; Tue, 21 Jan 2020 14:44:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituka-0003m4-Qm
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 14:43:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id d73so3232603wmd.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 06:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qMvPvDIDRh91DsGoRCAqTOujJC4d88kuxcHpKSzavSU=;
 b=MTDbDBNdsyVvC1wBGSPIbvGdJFvshf7j0ScPCO8Eqve8kGl7YbKuYicL/9tYSMTQge
 Jj72O41n6MXSz3XKi/HC7qW+wzIxtEgfSkpDjQS+xR4SnqvdvSHkuBrhF0RU9Thl95iE
 9VKrTzyGtPG3uijEgG0oHEiW9ZRbQQwDYmU+JDTJb2p3SJcO8UTFEp7hAiLA4kF2Etj5
 NcD7dZv6PxWQq0WKg6Z02LmhYGO98NJIUourHMvPDW5yFVayoG5J0WdDo2LUIztgT+xy
 LUE4+81Fqv7XVm02LOIi0O12E76CXhjQKgz9cxNaPGVNmxPxugn5lss1KGmtLUthl9Aj
 bqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qMvPvDIDRh91DsGoRCAqTOujJC4d88kuxcHpKSzavSU=;
 b=k+VSVpnCj5FwdkLwYplaoXq9ZG5U6hvh+hPhMslwFqlsZ1cw00tIpHIsWFoA1jQx+K
 hV5JWmrmGlWk+5elwkcuQLLdTpMil7GZmGWjIpn18QvS/0wY6iizdFPFYZAIqAseNUMe
 +5rC6GfyCErlmIkkQVuYInJAxObkhEj4MZLOAz7i97OYbEVlxTsyAg55XZTnWtdxH3V8
 4kKj0aF+70rf6arIKeGhsRwnBLI/tr/xJuLLR4QfW7ouzL0bJGb0ADHyQcq/+cV17EAc
 Z6uqQqWz+8lw7TXxyb3vAw2v32sIOdbU+amPsD6Get725O8EuZOtt/WEyl9tX9CWuhKx
 BWEw==
X-Gm-Message-State: APjAAAW19aM5gOR7QVEQzgvF96aEj+ZRgCMoNtSo1UMyaetLozd/Naec
 HL+Wrl9Stun/JQxbBD8qNpMsnm2S
X-Google-Smtp-Source: APXvYqxC19jbW2bkPidmcl6m4enAkphE0cMXNpKt/58hoLb0/Lfh63DMREk5ZvJfZm8qJ5R/XwFf1A==
X-Received: by 2002:a7b:c38c:: with SMTP id s12mr4603257wmj.96.1579617805623; 
 Tue, 21 Jan 2020 06:43:25 -0800 (PST)
Received: from BV030612LT.esp.local ([195.93.136.32])
 by smtp.gmail.com with ESMTPSA id q3sm53905525wrn.33.2020.01.21.06.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 06:43:25 -0800 (PST)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
X-Google-Original-From: Cristian Ciocaltea <cristian.ciocaltea@iquestgroup.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 16:43:24 +0200
Message-Id: <00a3c4d681d3fa8ebfd15446df08643de5eb1adf.1579615562.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_064328_891549_9AB398ED 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] urngd: Fix entropy provider daemon
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

The OpenWrt Jitter RNG daemon is currently unable to continuously
provide entropy, except once on process startup.

This patch brings the following fixes:
- poll /dev/random for unblocking write operations, instead of read
- register the low entropy callback after uloop initialization, not
  before

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 urngd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/urngd.c b/urngd.c
index d8ed159..91dc72c 100644
--- a/urngd.c
+++ b/urngd.c
@@ -180,7 +180,7 @@ static bool urngd_init(struct urngd *u)
 		return false;
 	}
 
-	uloop_fd_add(&u->rnd_fd, ULOOP_READ);
+	uloop_fd_add(&u->rnd_fd, ULOOP_WRITE);
 
 	return true;
 }
@@ -227,6 +227,7 @@ int main(int argc, char **argv)
 
 	ulog_open(ulog_channels, LOG_DAEMON, "urngd");
 
+	uloop_init();
 	if (!urngd_init(&urngd_service))
 		return -1;
 
@@ -234,7 +235,6 @@ int main(int argc, char **argv)
 
 	gather_entropy(&urngd_service);
 
-	uloop_init();
 	uloop_run();
 	uloop_done();
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
