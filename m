Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3CE15590A
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 15:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W3AwLtzy9vzreDgEYIxaGANNt5tF45gIMDft/oyQXqI=; b=umZgGSAlC/2xH5
	YK85R8g2WwWSaA4B229Fu5So5lXyi3k+9SwqrzZWkl3K9TBIpSKrqCY2iXgDOYUQ0U8K4cv90vpxi
	rOvAsIlr1zrmfytwV/MGZXsdTpVan2WAmHHm2kYKn5JDJBkZPFp3w9tN+7j53eGD/dykMPeoFiweV
	wBoCU5AENEsv7cK3rfcbapiIw6923zNoF9OIAyBYcGeyNMRhaI4z3h5vQtWa4ry8J1+Yw+jJRm50z
	mSkWHw9LdNIdoTUJ5t85Os+7ogwUH5yrufoKkaXs30Rlr0/zxOJVOzHmTXvaBQuhwWJgew0NTsSh8
	TPUbAuPO5qVtJ97BR/Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j04NA-0007DD-7C; Fri, 07 Feb 2020 14:12:44 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j04N1-0007Cm-Hr
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 14:12:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MfpGR-1jSWV51b4L-00gGUA
 for
 <openwrt-devel@lists.openwrt.org>; Fri, 07 Feb 2020 15:12:30 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 7 Feb 2020 15:12:29 +0100
Message-ID: <017401d5ddc0$a25ad9e0$e7108da0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdXdv0CM0C48VuLgQFO3ReRroxaS1A==
Content-Language: de
X-Provags-ID: V03:K1:YCnfDqGLnj3osdF50+gPuRezSJN8vC4gJZS9K3iwjJ5UUTxkHyr
 lnKb//ETjhYSHgk3ZzDIsXv2rtZkFufE03rBmhAWcuckanTX2Cmwk1q7Ueh34Z+UTvpdkqA
 WLus+Jzb1SBCyemWWRvMCAbNfWbj1uvcpC3PS/WndJesIYRrXc0pwzwIhacX+OU/CvobosG
 CxJM6zGqTU1tbWjNfIWJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/fLRryTy0qo=:cP4rc2+WSL+eXLtTTqWQDr
 MlOeoIM35UNslwgzJY000d5T2uyNDIG+OtkE11Ba35fngO3S+Bi/88NYn9GRMHBi7IpfEjqKY
 J0YzhijuwNL47WH6DL1kOGybOMcYw31XokKl6xMEoQ/hbwUfDrkOSW8R34pnR51niwiWeB/zL
 Y0dn+mL2P9OSUnuHrR5/Lb6yTKGhYbanwDhSvrP0qnbf2XKtR2CiikuV7CDeajkwLFG6/GABh
 /u2nW1SBYYNNHW3jPN/IcNuxxCA/WzaSG/ay6+MbdEmADhW9BSspWXjFoddoQY5EHAVvkItRK
 Rp/sGsbiBfCEdsZmE9vPQrlcSVNQKqyxQHWqx2EZEcmrCFK5n/ymqAf3vtO54TWwmyHXhkqI5
 IQNuAHi7DMAY2onr1xHsl8Q4ZvIhe9c++RzuAJemIB862/xVf8zRhueIUThUYiOj3TZvv+f2p
 CZ5kgv6EXv1EjGLhwZ8QsOLzI7xm/k996Ve0/YXQqi0BiFMkqJpXtmi/H6AcoTca2ICCz3e0g
 dHbiLL4NXXVEfpmhHtRVDYGDlV5YHGISpaJrf7aDsyoeYDdRXjD1UOX9o3JED1EveY9RwDRGP
 A2zym2bcFpx8SB0iZzhv2gNh/lvFx1lZu6Ro3XwNw/nTm4e5/7Fr9x3ePybRPm26qFmDxNI+U
 h+hA2DX2vuKHm0VQwEE0Yb4GXvUPeH+MvoiZtn73x1NLc9yEyKULL6PO/XK1QBqL7CiA6k77k
 1jgBsQAdtJw/xhWQZ+d/JPPQbmuwm1ANA4nOuuaguGVX+BoGuAitFeTZymRSb38DNTsZ7uC9C
 JRA9Pya+9T3rzLfpc/wkSy7eH1KhXcEoWEsha/nVnjXw3N8x6my8faWXxh7bg2wPZSxhNPv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_061235_888027_8A1B4268 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Harmonize brcm/bcm target names
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

Hi,

currently we have several Broadcom based targets named after that:
- bcm53xx
- brcm47xx
- brcm63xx
- brcm2708

As you can see, the names are inconsistent with respect to bcm vs. brcm.

While kernel has codified "brcm" for the vendor name in compatible [1], the
target names are about the hardware and we use "bcm" for SOC/CPU ID inside those
targets anyway (so, typical compatible would be brcm,bcm96328avng).

I'd thus like to make this consistent and name the targets:
- bcm53xx
- bcm47xx
- bcm63xx
- bcm2708

This would mean to always use bcm when referring to board/SOC/CPU, and only use
brcm for the vendor in compatible/device node name.

So, please stop me if there is some reason for not touching it.

Best

Adrian

[1]
https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/
vendor-prefixes.yaml#L156



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
