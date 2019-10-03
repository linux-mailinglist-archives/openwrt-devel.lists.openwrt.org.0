Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC48FCA43B
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 18:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	Message-ID:Date:To:From:Reply-To:Cc:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UJWmqvWSFGObW19pDttdE1wwsA4uXqkf5elSg3m7v7k=; b=aR7
	QaLJ1vBPBvmHZK52y6F44/R6HcbeSc7B0T8Prx27t8Kb7POO1NKy7x/gCpgI/NFZR1xdjcMP7LEXq
	uduKVsKBzsChuNoRehXXA/dY/NkC8/46U/YETzzs3DFe/yqQfqQ1pLnr5KqjIirI0lTAqXbFcqOrC
	SmfiV083YZTbpm5OMFSwn775dkR8gB9l74CJCwqDmXWePRAxM2mgh+csI2rzwHLMDcAUhqyFP70Xm
	3HZVGNhEtbJh32herYpQesWUSeNx80J9xLp7/kHvAkfyVO+h6WMMVoOSJYjpAo+enAxlsDIjLMZL8
	bkkVGcUuLXVWuLetBmL0UUguFnj0l2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3u2-0005Pi-IA; Thu, 03 Oct 2019 16:24:30 +0000
Received: from cas081-co-9.exch081.serverdata.net ([199.193.204.190]
 helo=out.west.exch081.serverdata.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3tw-0005P1-2R
 for openwrt-devel@lists.openwrt.org; Thu, 03 Oct 2019 16:24:25 +0000
Received: from MBX081-W6-CO-2.exch081.serverpod.net (10.224.129.190) by
 MBX081-W6-CO-5.exch081.serverpod.net (10.224.129.196) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Thu, 3 Oct 2019 09:24:22 -0700
Received: from MBX081-W6-CO-2.exch081.serverpod.net ([10.224.129.190]) by
 MBX081-W6-CO-2.exch081.serverpod.net ([10.224.129.190]) with mapi id
 15.00.1497.000; Thu, 3 Oct 2019 09:24:22 -0700
From: Dustin Lundquist <D.Lundquist@temperednetworks.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] procd sysupgrade: close input side of pipe before reading
Thread-Index: AQHVegcDI+QQs/nTFkWN/fc8+uoanQ==
Date: Thu, 3 Oct 2019 16:24:22 +0000
Message-ID: <EFB73C49-4DE9-4DF7-93FF-72318E9C4526@temperednetworks.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [216.168.34.194]
Content-ID: <33FE81FEC81418449150BF471B74F390@exch081.serverpod.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_092424_112750_F12134AA 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [199.193.204.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] procd sysupgrade: close input side of pipe
 before reading
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


When /usr/libexec/validate_firmware_image is not present on the system
procd will hang indefinitely on the read() since the input side of the
pipe is still open.

Signed-off-by: Dustin Lundquist <d.lundquist@temperednetworks.com>
---
system.c | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/system.c b/system.c
index 751a016..a7ada13 100644
--- a/system.c
+++ b/system.c
@@ -425,6 +425,7 @@ static int validate_firmware_image_call(const char *file)
	}

	/* Parent process */
+	close(fds[1]);

	tok = json_tokener_new();
	if (!tok) {
@@ -447,7 +448,6 @@ static int validate_firmware_image_call(const char *file)
	}

	close(fds[0]);
-	close(fds[1]);

	err = -ENOENT;
	if (jsobj) {
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
