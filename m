Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CD11162F0
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 17:15:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3165csOtk1wELeqwjhQBTybE51ixCEUAVDr6ZmAX48w=; b=DH6JN9bkGeTLGQ
	BOx31zfdKPC6hxQMUUlp0S5e54+mZ51GJhvsQRBKsecy6ijufyiHGKaf8Vh/uP3/GAFfN5DcQDjQz
	ui42cvDvp295n1D3wihLH7FP+A7+UcQJdumYQJboWrXYMjhpPci/4OH4CfViUC8LB5qpzutqXA7iQ
	d7LKsJIfw72bjvtkJOfQvtWTdI6Mg+R9Wt5ftB2hmqe/J91ykdoduLZarrbG6mfjZlAHOfcK4+mR1
	yn3q3A2i0gApfiMIpwMim9n7y9lpLPgyUKgf4CEX1nJSHfw1MU9zQUD3vHkJSHpG3ndARFcq3eBGA
	Oa2jh+SsQjhLk+e/AGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idzD1-0007i8-Jh; Sun, 08 Dec 2019 16:14:59 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idzCf-0007YS-1s
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 16:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=DSysEYWw3FnhVKb0+/2QCTLhlHlq9SXbwFVbTEtYvTA=; 
 b=kSy6xTgeF3RvQy+LDVXButObAWCjgYyDxLJVur4tuacOA0pDeVTl9JUNAf11iheMUR6MJcNokqbIVTZ+Vr3sDAabvmetJJrcDPaRCY7UY0CMxyviw799C7xk6fqQ6Wxf6aesaM91uIIhtrOUF91P7No8C2jFFyCk35URQomUEV0=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 17:14:18 +0100
Message-Id: <20191208161419.124991-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:840f:e4b6:a243:a02
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1idzBE-0003r4-BQ
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:840f:e4b6:a243:a02]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1idzBE-0003r4-BQ; Sun, 08 Dec 2019 17:13:08 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_081437_403371_95E3A9E1 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ustream-ssl: mbedtls: fix net_sockets.h
 include warning
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 ustream-mbedtls.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/ustream-mbedtls.h b/ustream-mbedtls.h
index 70bd4ea..0e5988a 100644
--- a/ustream-mbedtls.h
+++ b/ustream-mbedtls.h
@@ -19,7 +19,7 @@
 #ifndef __USTREAM_POLARSSL_H
 #define __USTREAM_POLARSSL_H
 
-#include <mbedtls/net.h>
+#include <mbedtls/net_sockets.h>
 #include <mbedtls/ssl.h>
 #include <mbedtls/certs.h>
 #include <mbedtls/x509.h>
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
