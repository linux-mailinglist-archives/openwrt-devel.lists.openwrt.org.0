Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DC4ED277
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 09:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F7wpKeLeonQU85oa6xWW4r1U0lXkN3d8VdvCVXMpP4Y=; b=hA2xzKLikU3PAq
	glmM29zmTRK62/vLdUmZly1CR1/0bo0rQEX8Jq/ft5iDFQ91Ms6wZ96sSyGPOtsK+0igOoPb40cvm
	JDHt+y+yY17XRER7v9ruH4FHJoYy1ax35VHcFmXeJG9nAYyv68yDrKVPPTQtHERWJa1edx1cCwxhZ
	4KqIqSDFny4Dp/glcp9MTf/K05SiuK3ap4x9OKjVxpYbP+Gqb/Lx6BXQR4llNs49ZrqNY2l9L2GHH
	M2fegMH34Ly3sgB46UlsPemYwMb0MdADqj7YGDezkeGWAURP+9FZUbP0iBS2uACBYhFojaLYr8NdQ
	F7K+wem3n+dGm8LNPvUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRAtS-0007J1-Dw; Sun, 03 Nov 2019 08:05:50 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRAtL-0007IX-1L
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 08:05:45 +0000
Received: by mail-wm1-x331.google.com with SMTP id z19so8743570wmk.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 01:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=MlxxgDw5rF8q9+ccGXW2suZLkRE+AJ8N32rx7DNynzo=;
 b=XjL4yLSuGAzzYt2lrD5EpFL078bJ6pmq+TW/y2vfNRpgZQjYVSZzpLxERuiPhbkf5q
 MiKY4Uy/1/qtHqHzxkpuKU66Nmt1YFI0rKGkvLPR9zQ0s5OSHpHR9oQrdspasiGw6D5j
 bLzqTXc4UMTungcWSMBvHiRftggh8QwDuThVIK6kpjzADLk/eiPLiK9ymEcY7vANVKYE
 OalOncM/qSkQJxPzW5eolUqtdkvm9W1ZJ3IfRLrmWI8udC5srskATtKuPNfXUa2Njnh6
 kmYem5u0B75QSlDexSBamJWNiY8maAi5LJpMjJqGkdA9nAsTC+1slsg573Laty1S1qoJ
 bNrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=MlxxgDw5rF8q9+ccGXW2suZLkRE+AJ8N32rx7DNynzo=;
 b=kFmnhuUntGEs9mR4uMSgAiWbIXdOTIQqcr4onHl/+7wiHCFUiAiA8SfOkIORsq20/A
 EpIq1BQ7VQ+wyb32ohABJOzPulIZsdzopIXVv2XszR7QctCdUde0empYqxDzqxHFETDB
 Q5N6hdSYXGf01R786BHTALKJqshr4WmGn/rIY+uua6ENdvKOoO1WhjVDG4q3Fvd6i7UQ
 EBSVyI38OuEUHMMOFrgxyei3J56ykmnIEt67eE1MA2OEKM945fVH0BcklyxiEez6i4X6
 Gk3gg4rFFEOUKNVsJDITcTZ9EA5ZTOHsRbatPtxJSEZvL6piDZJ/vy1W3eavQi01kmfl
 wJng==
X-Gm-Message-State: APjAAAVeElzrmDi8q7mmrjQOsQ56/rE6WAfwIHtBPWO+csFwk2Oa9eZQ
 H7a7Oz8XIQQPV0zzOmr7LU8Dy9aA
X-Google-Smtp-Source: APXvYqwXGFZqwKZQRheXoGHznBUuqHHOuquknRR9lX7FvcaP0VQchGNYcWw4EgMbE5+ZE2N4W1Z6tQ==
X-Received: by 2002:a1c:a751:: with SMTP id q78mr18943600wme.129.1572768340947; 
 Sun, 03 Nov 2019 01:05:40 -0700 (PDT)
Received: from localhost
 (p200300F6671CA0AC71B47AED4D0BCA45.dip0.t-ipconnect.de.
 [2003:f6:671c:a0ac:71b4:7aed:4d0b:ca45])
 by smtp.gmail.com with ESMTPSA id j63sm16344531wmj.46.2019.11.03.01.05.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 03 Nov 2019 01:05:40 -0700 (PDT)
From: e9hack <e9hack@gmail.com>
To: jo@mein.io
Message-ID: <8199acc3-4c3b-f5d3-52be-896220b4da42@gmail.com>
Date: Sun, 3 Nov 2019 09:05:37 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_010543_101231_98EF3ACD 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] luci: dhcpv6 leases
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

Luci doesn't show dhcpv6 leases from a dnsmasq lease file. For dhcpv6, the second entry of a lease is the IAID. The
parsing code expects a MAC instead of a IAID. I did fix this for me. I'm not sure, if there is any influence, if the MAC
of a lease entry is zero.

Regards,
Hartmut

diff --git a/libs/rpcd-mod-luci/src/luci.c b/libs/rpcd-mod-luci/src/luci.c
index 245ca636b..b94772be4 100644
--- a/libs/rpcd-mod-luci/src/luci.c
+++ b/libs/rpcd-mod-luci/src/luci.c
@@ -435,9 +435,6 @@ lease_next(void)

 			ea = ether_aton(p);

-			if (!ea)
-				continue;
-
 			p = strtok(NULL, " \t\n");

 			if (p && inet_pton(AF_INET6, p, &e.addr.in6))
@@ -446,6 +443,9 @@ lease_next(void)
 				e.af = AF_INET;
 			else
 				continue;
+			
+			if (!ea && e.af != AF_INET6)
+				continue;

 			e.hostname = strtok(NULL, " \t\n");
 			e.duid     = strtok(NULL, " \t\n");
@@ -459,7 +459,8 @@ lease_next(void)
 			if (!strcmp(e.duid, "*"))
 				e.duid = NULL;

-			e.mac = *ea;
+			if (ea)
+				e.mac = *ea;

 			return &e;
 		}

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
