Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369AD18F2C3
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 11:26:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vx4VpxloPVsUNPdm8OzEmhNxHdlCBVgbabP9MSHcANk=; b=lNtiTnEXpZ3oPT
	PN7ikhUaFH1mXkAqfObQObEAq2GxhR0Bumd0lQDoBF97YJX5gzWV+VOnNqddgcdzKQwkE0zXsH5of
	9fj3OEywY+SriyCETgCrA6BFverSkp6vnmJakde1wthyaIyS71lXSUU2xaWy2wdVKDJ4rGPR7ncIe
	9bVW2ofK3ihxfwN8FmQCUxmeVlIGKDY7CzLj1LOuEoAwYIKoX6LxNXdy38Zs+lfs34LIcWXvSWmvl
	M8q5iscYVP05XU2/S0+NLdqhZJYUTH7SAE+/b+XYFshVUo+rZd3uYBknGSjTHjp/FTG/OymF3K6Er
	MSIlcnXbkWBuinx9cNtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKHU-00076E-Ny; Mon, 23 Mar 2020 10:26:04 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKHL-00074x-Cf
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 10:25:58 +0000
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id AFE9A100011;
 Mon, 23 Mar 2020 10:25:48 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Mar 2020 00:25:33 -1000
Message-Id: <20200323102533.1338669-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_032555_567340_07643DC3 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] x86/geode: add missing include after rebase
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

The x86 image generation was refacted via cb007a7bf6 and accidently not
included `geode.mk` when selected as subtarget.

Now the file is included and image compilation for x86/geode works
again.

Thanks to Russell Senior <russell@personaltelco.net> for reporting the
problem and suggesting a patch!

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/x86/image/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index c01065f8e6..c2961e5b9c 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -128,6 +128,10 @@ ifeq ($(SUBTARGET),generic)
   include generic.mk
 endif
 
+ifeq ($(SUBTARGET),geode)
+  include geode.mk
+endif
+
 ifeq ($(SUBTARGET),legacy)
   include legacy.mk
 endif
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
