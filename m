Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9115B168E0A
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 10:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oEdsPOeZyCW4AEbSEXHS+vRw0oS0pg5Mv7HdkFWpqE8=; b=lH6q0YnuCT8Qaq
	lE64hMnqBQuAd/Evf37nv9elhdvqd3k7gqojMIbeOwwxx5BJHmLHUgHz3gXUuRHxb794fOX49K8tH
	pB35pq7Qhe73MKahSWtLtBqWLrVMmegP0MUdEv5Dy6qrGtxHP5A21feYUMM70mV0bzo1eD+sJRrtD
	/KSMbP3CgNuC9Am3YgrNKPz81GQX6hoU5IUF/0IcvWJHFJOs3UOvyXhYo/jvINDNOtsgZDPD4DUGe
	4qTRoCr9d7En8VBvdVlG41HCzWUniMumxXsdK6rSdIu4C+Fxe40YQhjKoP7zrAfUVht6lCxbDIauD
	Lpfzfk5rVSA7+d/YA2Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5RH5-0005fa-Pf; Sat, 22 Feb 2020 09:40:39 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5RGx-0005ew-SR
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 09:40:33 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 15CF04709AEE;
 Sat, 22 Feb 2020 10:40:29 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 3BwjeTcBYm1r; Sat, 22 Feb 2020 10:40:28 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id EAFE94745D6F;
 Sat, 22 Feb 2020 10:40:27 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu EAFE94745D6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1582364428;
 bh=ovkzreV+uUmFVygnVxSw1j/2d3sjc1G0143q1qjK2jU=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=v3P88jAzfavyqs7sg3cLSbBPdnM8s3Bhds+JFYZtV4HTEgdDglGuxaO1o5HATbWG+
 U5skfgdzz18W0mbt20h5KkZcPnqXA73mtrnMkBqUz2/ss8/lQg/tHdYuIp5xuinQBw
 hB8MGazrjaWBP/gj/ku2Ntet/bY+1HBocvbZSGOM=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id XuUcuxpbUb5v; Sat, 22 Feb 2020 10:40:27 +0100 (CET)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:24:c8cd:6e8e:8b92:ac96])
 by mail.tintel.eu (Postfix) with SMTP id 0D8FB4709AEE;
 Sat, 22 Feb 2020 10:40:26 +0100 (CET)
Received: (nullmailer pid 808174 invoked by uid 1000);
 Sat, 22 Feb 2020 09:40:26 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 11:40:26 +0200
Message-Id: <20200222094026.808128-1-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0D8FB4709AEE
X-Spamd-Result: default: False [0.00 / 15.00];
 IP_WHITELIST(0.00)[2001:67c:21bc:24:c8cd:6e8e:8b92:ac96];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG]
X-Rspamd-Server: musltoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_014032_207000_0491A760 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH] libpcap: activate PIE ASLR by default
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
Cc: ynezz@true.cz, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This activates PIE ASLR support by default when the regular option is
selected. This is required to enable PIE ASLR support by default in ppp,
as it fails to build without it, on x86/64.

The .so file size stays identical.

Suggested-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 package/libs/libpcap/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/libs/libpcap/Makefile b/package/libs/libpcap/Makefile
index 69af9d0700..1a2cdcdd98 100644
--- a/package/libs/libpcap/Makefile
+++ b/package/libs/libpcap/Makefile
@@ -19,6 +19,7 @@ PKG_HASH:=635237637c5b619bcceba91900666b64d56ecb7be63f298f601ec786ce087094
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
 CMAKE_INSTALL:=1
+PKG_ASLR_PIE_REGULAR:=1
 PKG_BUILD_PARALLEL:=1
 
 PKG_LICENSE:=BSD-3-Clause
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
