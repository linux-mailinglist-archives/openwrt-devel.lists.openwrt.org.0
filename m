Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51905197F68
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Mar 2020 17:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k9O7pJPiU7s8SPE/gKCPWkvsUroNHN+Q8k+ke3exRpQ=; b=EWFHhElm2NCP6e
	Mtood8YBkkl1XLMm6u1EGW8MISY/l3i7wTKB86kDxSjC6W292zUyj2IED9QjsJmG+suqUew+IzwKV
	VftErFn8Kyh2Hu+xcS9+8IP7KQa1nWFN2l20vFbPBx05Uc0qz7ZJpkTwE4hTNHB3sVl0nE+8A+oT+
	Q/tukZQYheTao/X7XelP4EMb3I3IH60OUMznFlZwnkmKGHeXpFr2I4ZCSxvLhifyYBvzsfFmvmr6r
	hvIvRV1lIlVdHui5e1diTJ9q2fBWlCijgSDgJl9eBpOGVOLv+41TFUEUYqZyShMV28vMIBQt2+CHV
	hzzrfQFXOlWyjhPsBKsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIwBJ-0000I0-30; Mon, 30 Mar 2020 15:18:29 +0000
Received: from outbound01.mx-relay.com ([5.39.185.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIwBA-0000HW-S9
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 15:18:22 +0000
X-ASG-Debug-ID: 1585581493-11d26b0cc23c670001-eePSu5
Received: from [145.131.171.178] (rt171bb131-145-178.routit.net
 [145.131.171.178]) by outbound01.mx-relay.com with ESMTP id d0laLLxQRy5juWmq
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO) for
 <openwrt-devel@lists.openwrt.org>; Mon, 30 Mar 2020 17:18:13 +0200 (CEST)
X-Barracuda-Envelope-From: nvbolhuis@aimvalley.nl
X-Barracuda-Effective-Source-IP: rt171bb131-145-178.routit.net[145.131.171.178]
X-Barracuda-Apparent-Source-IP: 145.131.171.178
Received: from localhost (localhost.localhost [127.0.0.1])
 by router38.aimvalley.nl (Postfix) with ESMTP id 93119639F6
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Mar 2020 17:18:13 +0200 (CEST)
X-Virus-Scanned: by Endian Firewall
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-20 required=9 tests=[ALL_TRUSTED=-1]
 autolearn=unavailable
X-Spam-CTCH-RefID: 
Received: from mail5.aimvalley.nl (mail5.aimsys.nl [10.10.0.115])
 by router38.aimvalley.nl (Postfix) with ESMTPS id 33C39639F5
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Mar 2020 17:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by mail5.aimvalley.nl (Postfix) with ESMTP id 133F51848E6A
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Mar 2020 17:18:13 +0200 (CEST)
Received: from mail5.aimvalley.nl ([127.0.0.1])
 by localhost (mail5.aimvalley.nl [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 5errX7IY7mrV; Mon, 30 Mar 2020 17:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by mail5.aimvalley.nl (Postfix) with ESMTP id BA4BA1848E66;
 Mon, 30 Mar 2020 17:18:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at aimvalley.nl
Received: from mail5.aimvalley.nl ([127.0.0.1])
 by localhost (mail5.aimvalley.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id TsgD5X4EmU2b; Mon, 30 Mar 2020 17:18:12 +0200 (CEST)
Received: from linvm580.aimsys.nl (unknown [10.10.25.80])
 by mail5.aimvalley.nl (Postfix) with ESMTPSA id A373B1848E63;
 Mon, 30 Mar 2020 17:18:12 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: Norbert van Bolhuis <nvbolhuis@aimvalley.nl>
Message-ID: <976ee2b6-3f1c-fae8-f39b-bb2cc361ba7d@aimvalley.nl>
X-ASG-Orig-Subj: [PATCH] Include linux/sockios.h for SIOCGSTAMP
Date: Mon, 30 Mar 2020 17:18:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Barracuda-Connect: rt171bb131-145-178.routit.net[145.131.171.178]
X-Barracuda-Start-Time: 1585581493
X-Barracuda-Encrypted: DHE-RSA-AES256-SHA
X-Barracuda-URL: https://outbound01.mx-relay.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1258
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.80898
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_081821_190488_16D34145 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.39.185.33 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
Subject: [OpenWrt-Devel] [PATCH] Include linux/sockios.h for SIOCGSTAMP
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

linux-atm saaldump.c/atmdump.c need to include linux/sockios.h for SIOCGSTAMP

Signed-off-by: Norbert van Bolhuis <nvbolhuis@aimvalley.nl>
---
  package/network/utils/linux-atm/patches/800-include_sockios.patch         | 21 +++++++++++++++++++
  1 file changed, 21 insertions(+)
  create mode 100644 package/network/utils/linux-atm/patches/800-include_sockios.patch

diff --git a/package/network/utils/linux-atm/patches/800-include_sockios.patch b/package/network/utils/linux-atm/patches/800-include_sockios.patch
new file mode 100644
index 0000000000..2501f17d17
--- /dev/null
+++ b/package/network/utils/linux-atm/patches/800-include_sockios.patch
@@ -0,0 +1,21 @@
+--- a/src/maint/saaldump.c	2020-03-29 22:58:01.089711789 +0200
++++ b/src/maint/saaldump.c	2020-03-29 22:59:17.564639387 +0200
+@@ -6,6 +6,7 @@
+ #include <config.h>
+ #endif
+
++#include <linux/sockios.h>
+ #include <stdlib.h>
+ #include <stdarg.h>
+ #include <stdio.h>
+--- a/src/maint/atmdump.c	2020-03-29 22:58:18.573694469 +0200
++++ b/src/maint/atmdump.c	2020-03-29 22:58:49.956729365 +0200
+@@ -6,6 +6,7 @@
+ #include <config.h>
+ #endif
+
++#include <linux/sockios.h>
+ #include <stdlib.h>
+ #include <stdio.h>
+ #include <unistd.h>
+
--
2.20.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
