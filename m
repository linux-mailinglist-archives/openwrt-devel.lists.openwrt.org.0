Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA9C6D341
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 19:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r3UgGzFgmffgQjLdaZ8Qw/ilZxsOuZRLtJ56e219Iro=; b=F1N2SW0X22stz7
	XIhzwudttt/eZ6SUVdARbNqsZYe+lVMjiSxRb087BWxWy6YPFY4vLBwJOQ6raDglT4nOjVfX1sNhq
	RR2dfw1v0D5BJxz9iM9vBK7iJnvFlVOJt6AOKfgPpIJWaRsM9S6PNtALQOwqUaqHQW3kgVRR6kBhj
	FzOj6hFBNQvrOqwOlG4vqVTrTo3nFObZiI8Q7Nw7lztSs9X4IqMzW6lR7nYWC7xPZ38LiqBmKIr/U
	gukjJRhvQ9t0U9rC8pbrzbHI2X3Emxv1hna2lZhlQfioo8BwD965UNNCQdlQPDTgnKDmNLYG7DAfH
	WGsObeLsrU4FN6FUEKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAb6-0000IK-Ez; Thu, 18 Jul 2019 17:53:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAaj-00009V-3y
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 17:53:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so14272006plt.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jul 2019 10:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=Hdxi5RRQTke18f2LVaUfUB/LtuqCT5hVTdjZ/vIl5zQ=;
 b=tjDBgwAAWVWuTccxohFtl8oOXV6FxUZCvgFFrFqKQtjb9fX58IL7DFk1A6zpIn3ubZ
 VoNJOsJMLdNQEqEnGbDaNsl2njDdVoBjZCIEQUVgotKSEeJBug1rR1oH3H6kLWoIy9K8
 M4AOicrpRYfjLM7Lev9zBJsBu8gfLxSK8NLPQ7AYbOtN4NqRB+txFNNvGlQRBZX0rsXM
 jWcUTQwJCF1hz4jAJivOzsGCqyEVMp2rEbLqir4TfaFcFN8kMaZDieWwXdgssk38X5CJ
 tBvnSgAdwQeWDAulkxMykrrT+C0rLKbwYkAZAPz6uyV0eMxJXZHwzdPMgL01T1RHeMaX
 QbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=Hdxi5RRQTke18f2LVaUfUB/LtuqCT5hVTdjZ/vIl5zQ=;
 b=KhhZ0AVYBWhdtjlh2BWlNfCjJKsVpWIICDmIE3sC9MbSoRaGbHtqU8YpNL2zyGk4GC
 0ePMS64GVfSxDJ4uUKu987tJSo/KWjJrVfPRxZ3OQX39m+8Vy7zDCEL9EkBJ7i84CMsG
 Snj43puIUYCPl7P7C9kDbYoSYk++2H1Nn8t4lpBhsmmVbYQADVVYoPQ6Dy/8zcXEJ5ix
 PoOmLSHHHBZqWU76AuDcTCHavPN+fGsBB03RhXtVPfAEfadeJmTEEJVA67zgd38iY8+o
 1qU38lgceP0RaRKe3kGP8oo/lWRaX1F42D85kIEHULFFUFNVW/0Lq8x5FyW6wanrByZN
 DIcg==
X-Gm-Message-State: APjAAAW3uUTbdLCTJNxpiciCJm60yu16xIfqL9OU5DWrn8mkIUTBL1Gv
 v/pAWUbgYtt/SoNAAh+uKSdsTz/mEcw=
X-Google-Smtp-Source: APXvYqxo02n+4GM3C3YIcp5SZLECZZs7JQsF1arbMVD9YwO6DPaI/MgwDkrKV2/qwrSQwyvtDgDX1w==
X-Received: by 2002:a17:902:e210:: with SMTP id
 ce16mr52016566plb.335.1563472395596; 
 Thu, 18 Jul 2019 10:53:15 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id u134sm26706770pfc.19.2019.07.18.10.53.14
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:53:14 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 10:53:13 -0700
Message-Id: <20190718175313.32657-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105317_345196_519370BB 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] procd: Switch to nanosleep
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

usleep has been deprecated by POSIX.1-2001 and removed in POSIX.1-2008.
Fixes compilation when libc does not include usleep (optional with
uClibc-ng).

nanosleep also has the advantage of being more accurate.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 initd/init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/initd/init.c b/initd/init.c
index 29eee50..e1c3da2 100644
--- a/initd/init.c
+++ b/initd/init.c
@@ -97,12 +97,13 @@ main(int argc, char **argv)
 	if (pid <= 0) {
 		ERROR("Failed to start kmodloader instance: %m\n");
 	} else {
+		const struct timespec req = {0, 10 * 1000 * 1000}
 		int i;
 
 		for (i = 0; i < 1200; i++) {
 			if (waitpid(pid, NULL, WNOHANG) > 0)
 				break;
-			usleep(10 * 1000);
+			nanosleep(&req, NULL);
 			watchdog_ping();
 		}
 	}
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
