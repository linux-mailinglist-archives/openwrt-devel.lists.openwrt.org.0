Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F1F1F6126
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 07:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mwXPVr3ECLKRgwoRAUdi0rXRwh1MOulDDMZUbfErxQ=; b=RZgTQMjaKUtoIT
	hGYfeHxP5h+sRFFMw2RTYP471DdSwTWWqX6AzW0cpJGyiwmrnGE68ITmkZqXmCGWy+3/GlCZim6oE
	fa4FCGggcidtMQcYZoJEKa7/ULBvzN2B65SjlZrtHYcwxirYTbIFysT5k/U+OQqUIXBd78/Hqmjzg
	SRlUokK/e3LwWpNkIFo1JxmgQXTy1UtDJdAySeg7CyNGpl1c0GY3anTVZR5kqW8XG469EBFaRqP3i
	F+x5NTq074HAIXD/Y1JQqNVeNc+tp5aeWtPnXnbupR1JnmSw3P8gUN/3EDzGe+LyTnwJWjEGOaEvu
	fYDoPwkbvfM3xK3N201Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFK7-0002FA-OP; Thu, 11 Jun 2020 05:00:19 +0000
Received: from mail.tintel.eu ([2001:41d0:a:6e77:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFJx-00016F-IN
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 05:00:11 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id AB9EF4495F92;
 Thu, 11 Jun 2020 07:00:02 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 9h3iSb6-JokN; Thu, 11 Jun 2020 07:00:02 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id D6FA444881EA;
 Thu, 11 Jun 2020 07:00:01 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu D6FA444881EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591851601;
 bh=FVifDDN42dgO+9VLPIrTi7V5PK64Hs5UxG6BqS0bBR8=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=LDJMiTn2t1TJvvBfAKdD8VhPH7/n/UtK5k/h5BukJ4+LOeavM+URAaXjFFCR7zQzd
 HrE2Ebj2Ta8xzsoC5gLOgF8bEBK7WUYdpHEXakqoVYtLAF0OyydSZn3vCO21ujg57F
 NrYL/D2ipbAUHr3o58pg5rqRphBL8qjOo1H7R5qk=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id dvGYNxGOWnIf; Thu, 11 Jun 2020 07:00:01 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id 720E540F9360;
 Thu, 11 Jun 2020 07:00:01 +0200 (CEST)
Received: (nullmailer pid 206773 invoked by uid 1000);
 Thu, 11 Jun 2020 04:59:58 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 11 Jun 2020 07:59:56 +0300
Message-Id: <20200611045958.206718-2-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611045958.206718-1-stijn@linux-ipv6.be>
References: <20200611045958.206718-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 720E540F9360
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_220009_913840_FB5DF12D 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH v3 1/3] mtd: enable wrgg support for ath79
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
Cc: mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is required for the D-Link DAP-2695-A1.

Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 package/system/mtd/src/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/system/mtd/src/Makefile b/package/system/mtd/src/Makefile
index e504a04478..6da31a04a4 100644
--- a/package/system/mtd/src/Makefile
+++ b/package/system/mtd/src/Makefile
@@ -8,7 +8,7 @@ obj.wrg = wrg.o md5.o
 obj.wrgg = wrgg.o md5.o
 obj.tpl = tpl_ramips_recoveryflag.o
 obj.ar71xx = trx.o $(obj.seama) $(obj.wrgg)
-obj.ath79 = $(obj.seama)
+obj.ath79 = $(obj.seama) $(obj.wrgg)
 obj.gemini = $(obj.wrgg)
 obj.brcm = trx.o
 obj.bcm47xx = $(obj.brcm)
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
