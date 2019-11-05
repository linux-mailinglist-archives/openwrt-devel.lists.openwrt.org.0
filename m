Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C4AEFCF0
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 13:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RAWlwFUPWy9ep7FvUwo6giNbbSVlCBAnlNDz1c+8IB4=; b=mfd0ONtDacdoRr
	Gmhm7JqYY7z7aeWEIoyl9GnsKyQxsMrqr7MvdMf3g/d7WetQMjBbZN5s2O47LlPPLOYF0djs+K2qG
	Q99WUPnXFkWAH2+zYaCPcVZSiSpJc3FQJGkQSXRwOVSma5rbV9yEIEsxgNRqLJamNllFJJ7qhljjX
	Z8ZyjtIpEd6MrS9ETGs1gUpA4ZS/4QKZm1W8sDrpyqDVH7MJlQ2Wfxm6KjQCN83WN2rDplCGW5ryz
	XFWa/Lw+d0a7ToH8EtbVtDIHCaA3RDgkkY+WVe8nyECEb6QPqF54wbnud/wMDxptBMAr4HlP2JbYT
	3+jF7zU0KPmNJLArkMPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRxcL-0004JL-NY; Tue, 05 Nov 2019 12:07:25 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRxcE-0004Ip-OF
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 12:07:20 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MXp1Q-1iQmKa3qeK-00YAgq for <openwrt-devel@lists.openwrt.org>; Tue, 05
 Nov 2019 13:07:13 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 13:07:09 +0100
Message-Id: <20191105120709.1457-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:rV1gB/rtEqQmqmD3/CV5HkfC7aNjIb4T5lF0bOhJoxfGE+zbwvT
 Llpc9f8lStHr4dzE0f9f7uw6Y6c1Qydy0G/7ndOF2zLqOI1hdgICvqEvOpkUAXZaN0m1YBP
 bn/vFLFU22o4VhZWiIKFNWne6+IRmwrx9Zc6rTVShu17rbl1DZ6SK9DoWL4aKlqFoy74kE4
 3ZeLEc418h4hnjkzXMgfw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YL9i6i5pAM0=:uZE3wf4gmRCOp9UcD4GaYL
 XX2f9Stle0n0lehrUb8FLy/pglb18l2IGkyuCOBZVDgu4fSW5ZwcpBSR/VMDA3YjODMjtiF7q
 HL+nl62L7OSJzqrVKsy+Mnnfsfhf6aCW/N3UHXJhiXlGr9gAJznXPCClURga06PgQUAplrBSi
 2VuxtJEkkJ2yILtoBUBe+TM0AeNWfPjVf9y6vlIQYDFE1ZRqbXao/YEWlPUxJ/EGgYgT06m3c
 aEUzebouJf1HrWZfplDkjf69bFBILezGSEggANUWpX63g1VvF9LhQZAOGV4JrPAft+fAODV2R
 V6cIc6SyAlRjQzIoOzSvUJZFI1mt8Hx31FOnOU7bcULndvw5EpQAHLIYO/BFFuNrv6zut4FSi
 j9NRawSMJ+0XUYmECweOfOT1iYnG4t3GHYzqscvxgjkDNRscQQuja4U8tRDaSMwVn0ObhUbym
 zwpmRgRTtq1Tw2vT3rBuaywh3IeOW2Ny3NTA8FlkPu2RbbJN6yxNtaT9260MMs4hMlGR2QxWs
 qKX8u3iMeT5h5gb38Tw382YEx0qvNHAa8iIRFfFRhmEggz9gs3Ai6RTIuO0prNdJoWh6Zb5Qr
 R0kL6YK5yxuLkUjczWJ+Atzwzq8XZrzB+yBzy0plcD24V4dv1qa0SZnYHM5N7+y+41kOE919C
 0iM/zasBkQLR5uHZwhIU9/yXOTlKKy7NHxpJRQE87PrGDI/KLIpwQhI3xfg78S0Hh0f4K8wUL
 MA89jHkyQSnupNhe5MTv1I8s2FLfK9ZygvNl1H5DuYhSrcKYblwrdYXkgVoZswQpPS98MX9Qb
 IF/KAnpK2wt5nEo+xSBj4seculPtwzmQxxUUlofb2kRgXAS2sExCTIix89MGvMBxUVfeWPGLR
 vtpM6GQ9I+YYehWScBYtmbeAUvd7DWU3DI4/3DwsA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_040719_079743_7CD75010 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] gitignore: ignore patches in OpenWrt root
 directory
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

This will have GIT ignore patches in root directory, as created
when using "git format-patch".

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 84e1a9d6d1..6549af83be 100644
--- a/.gitignore
+++ b/.gitignore
@@ -16,6 +16,7 @@
 /overlay
 /package/feeds
 /package/openwrt-packages
+/*.patch
 key-build*
 *.orig
 *.rej
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
