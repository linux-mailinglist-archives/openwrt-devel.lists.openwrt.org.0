Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EB219DAFC
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 18:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q8OS8JjfktuhLSSbHcEMB16xMhR4V/23r9dAMFYLf9o=; b=lzgFYUjMfMn5Pq
	v5CvqruzEL9DnOXzWOwijZPjJTPJ9gvWg1t3kVS5brh4mbC3jTTp58gO3gi/2UDPCfTGMDt/Rlk5o
	zKoyY+P9gVBNPbaGahvB8u5HCghSavStBnAfSXeEjPCLjtGBAQixJ7yLeOBHzkUNcHlgLIIYviq5x
	Bgs1ssyyiRuHSUxf4E7s51gij/52xLoPJN5yohFC9vj7xioA1BkIZQCt59eNX86jDaU474cluKJ+6
	QhP7IcAsmYVyB78Yt/LTbmr7NmzIP/cpnfDhDpTECGg6r3DTf6Gb0BjtcYRfMZXHUMoZuUqIg16Iy
	gRSdU4nhVcX5ja53/n8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOwJ-0003Iw-Nn; Fri, 03 Apr 2020 16:13:03 +0000
Received: from outbound01.mx-relay.com ([5.39.185.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOwC-0003Hj-I6
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 16:12:58 +0000
X-ASG-Debug-ID: 1585930368-122d823d1d9bbc0001-eePSu5
Received: from [145.131.171.178] (rt171bb131-145-178.routit.net
 [145.131.171.178]) by outbound01.mx-relay.com with ESMTP id 2ZBhcf5wxyBh1e19
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO) for
 <openwrt-devel@lists.openwrt.org>; Fri, 03 Apr 2020 18:12:48 +0200 (CEST)
X-Barracuda-Envelope-From: nvbolhuis@aimvalley.nl
X-Barracuda-Effective-Source-IP: rt171bb131-145-178.routit.net[145.131.171.178]
X-Barracuda-Apparent-Source-IP: 145.131.171.178
Received: from localhost (localhost.localhost [127.0.0.1])
 by router38.aimvalley.nl (Postfix) with ESMTP id 5CA61639F6
 for <openwrt-devel@lists.openwrt.org>; Fri,  3 Apr 2020 18:12:48 +0200 (CEST)
X-Virus-Scanned: by Endian Firewall
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-20 required=9 tests=[ALL_TRUSTED=-1]
 autolearn=unavailable
X-Spam-CTCH-RefID: 
Received: from mail5.aimvalley.nl (mail5.aimsys.nl [10.10.0.115])
 by router38.aimvalley.nl (Postfix) with ESMTPS id E6AB0639F5
 for <openwrt-devel@lists.openwrt.org>; Fri,  3 Apr 2020 18:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by mail5.aimvalley.nl (Postfix) with ESMTP id CCDE81860FB1
 for <openwrt-devel@lists.openwrt.org>; Fri,  3 Apr 2020 18:12:47 +0200 (CEST)
Received: from mail5.aimvalley.nl ([127.0.0.1])
 by localhost (mail5.aimvalley.nl [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id d-3hSN4YVgPE; Fri,  3 Apr 2020 18:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by mail5.aimvalley.nl (Postfix) with ESMTP id 34CDC1860F93;
 Fri,  3 Apr 2020 18:12:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at aimvalley.nl
Received: from mail5.aimvalley.nl ([127.0.0.1])
 by localhost (mail5.aimvalley.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id w5qwaLbjLDGA; Fri,  3 Apr 2020 18:12:47 +0200 (CEST)
Received: from linvm580.aimsys.nl (unknown [10.10.25.80])
 by mail5.aimvalley.nl (Postfix) with ESMTPSA id 1B70B18602D4;
 Fri,  3 Apr 2020 18:12:47 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: Norbert van Bolhuis <nvbolhuis@aimvalley.nl>
Message-ID: <6af6e55b-6f89-d2da-05b0-e015a5c0ccde@aimvalley.nl>
X-ASG-Orig-Subj: [PATCHv2] linux-atm: Include linux/sockios.h for SIOCGSTAMP
Date: Fri, 3 Apr 2020 18:12:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Barracuda-Connect: rt171bb131-145-178.routit.net[145.131.171.178]
X-Barracuda-Start-Time: 1585930368
X-Barracuda-Encrypted: DHE-RSA-AES256-SHA
X-Barracuda-URL: https://outbound01.mx-relay.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1532
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.80987
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_091256_874202_AFBDB5CC 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.39.185.33 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCHv2] linux-atm: Include linux/sockios.h for
 SIOCGSTAMP
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


Since linux kernel commit 0768e17073dc527ccd18ed5f96ce85f9985e9115
(2019-04-19) the asm-generic/sockios.h header no longer defines
SIOCGSTAMP. Instead it provides only SIOCGSTAMP_OLD.

The linux/sockios.h header now defines SIOCGSTAMP using either
SIOCGSTAMP_OLD or SIOCGSTAMP_NEW as appropriate. This linux only
header file is not included so we get a build failure.


Signed-off-by: Norbert van Bolhuis <nvbolhuis@aimvalley.nl>

---
  .../patches/800-include_sockios.patch         | 21 +++++++++++++++++++
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
