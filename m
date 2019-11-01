Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC1DEC67D
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 17:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OlTA5wYDaPizrc+Ima7UfT6VFblbde5qWhCIL/4b+nY=; b=oeQELbVUqEn8XV
	dgc96qtUISMpefi18CM4IMLfNewYX94bdrLS68GnG4qXAwB4ezbHUEwTbcYv72Wt0haZQWGshzMKt
	9PJJkYXq4roR4R/Ol8U9+s6fPbDOp21BNqR3KIFAK7ZvNWz1aleUcTnXhfSI9ek0UFqJe5UYLP7CH
	quctXFyj62fR4pY+5K2T28Q16p5Erv52bE1WvRNVxIUTUrBsab+1AgRKosoKF8dt7dI43NxodSFtA
	l3bdchM8iQvuqWYG3c6n1DITPqSMmR3Fd44FODPhCHqLvg4EXXhtTg0N80SvtlhaCMoSvCqFBsEiP
	c0qJG4XGobYkI4ZhMjFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZbx-0004yL-H1; Fri, 01 Nov 2019 16:17:17 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZbb-0004pr-3z
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 16:16:56 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474S4j6mWCzKnhc;
 Fri,  1 Nov 2019 17:16:53 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 4XQxE5k748B9; Fri,  1 Nov 2019 17:16:50 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 17:16:38 +0100
Message-Id: <20191101161639.26034-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_091655_311631_EE57795C 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH procd 1/2] instance: ujail: Fix allocated
 size for no_new_privs parameter
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Etienne CHAMPETIER <champetier.etienne@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When the no_new_privs parameter is given, thei size of the  array which
contains the argv pointers is not increased in instance_jail_parse()
which causes a buffer overflow. Fix this by requesting one more entry in
instance_jail_parse() for the allocation.

Fixes: dfd5816bcbef ("instance, ujail: wire no_new_privs (-c) option")
Cc: Etienne CHAMPETIER <champetier.etienne@gmail.com>
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 service/instance.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/service/instance.c b/service/instance.c
index b4284e7..4bb2207 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -829,6 +829,9 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 	if (in->seccomp)
 		jail->argc += 2;
 
+	if (in->no_new_privs)
+		jail->argc++;
+
 	return 1;
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
