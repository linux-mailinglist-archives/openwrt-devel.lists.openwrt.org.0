Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CEEAA0C4
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 13:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XxTmnpJi6GURXyk1b164g9/heG31W0WeRQCrVypnvbE=; b=iTG8XSNVzXXh+A
	DJaFG+GPv49mKhDKkwV+IXyIF/YLeaavn7tZeE9DQGGqotuc9pa52vvpbZL9AA3nJcRgDrlX7SH1O
	ojjvYSmKIpzwwxzkJ6jcBuDjIsJP226UDVfB/EzAl6zNUlsxlwzi/HrAieEXqUazQy7bqDYvHTflx
	L0LG7UsOMogyi2TZOpMN6iBSiIO1p5O/+cgGZNqhQj/oH+kpfE81AVk67+jp4LUs4Id49vXNQX5lo
	ltj+4Zr9B44PCz2JDWCIHUogIufkeeGTHBCQB/QO7VFiEGoogvWfOb9EEvI+gEXNtpVcjuDAIPLEl
	KqPVCAWDO6IeaDfQdySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pWC-0003Xy-Sk; Thu, 05 Sep 2019 11:01:37 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pW0-0003XD-EW
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 11:01:26 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MVvCn-1hghyd1EXt-00RuOL for <openwrt-devel@lists.openwrt.org>; Thu, 05
 Sep 2019 13:01:18 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 13:01:12 +0200
Message-Id: <20190905110113.1041-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:NL/y5OZfmoAggIjNw7Iy3mtOlCsoBSwMXj7Gw/LHq7sMf11pOVt
 LOjEPSG772034jpSTtyB/Kpst6j7fXoFkBcNokqUDlKgVUZewx/MuowQTEFgwu6jH2Mp5GP
 d3urf7ejdic8urzdfubhdDDLrSEhpJrzScCkXx+sbMlUmHepkQaUgiiqxfQerb6qwl+GHZs
 Od+zTf2GTSyazEag/iiPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0LerHycLB/w=:mc1/FlcbRTtQk0i6KINP2l
 nBQo0zpNUbqk8AwJPChVG/eYwO70PX4IxEJsaja3oLjX1pWV+N8OJJ9/Bt0RMCSL6YQ+ylXXa
 SLsocNsW1FAUIluYLVn0lhn/ZJ+F3aFGHQIOvHalm6o0RafonULwlxEQMDfIyTr6Imq19pvPd
 K4Ez17ev6M5BYYcQenI0N6Eh+uxoaULQhczTHK05pLA1GKdlF7x/UXcpfguQI0e5VK6gvYjkB
 8jlUI60MycneqCkar+hKjwe5zesCPSzj7lO1O0CnJb+CRuuWW6FS7s7E84czsjWizspujNXHr
 Zz9tDXUS/R7EbHb78Oqlfyne5OBPQR/RDYjLMWG4KnEP26F48Ner2whi5AJf9uk+ExScqpKsa
 +VrnhwxYZ9OLnDi+kYcaRK4I6WhgU/q1DDhdXXIYSW1Q9BFKW6+6rbAH0bjY7EaLYKUVffAis
 UsAqyFBqV3VpM6j0PbkIWQEtuIpoijwjsUVrPC1bHAMGGQq0g7S/7nDX6DfiVaEkO2VRVgzkl
 iG7whr2LBH0qph3Q3qPIrzV4CUxPPKBwKnBbps2lHfrT2k90HOTin3wWLZwZrM8xH3mria3Xh
 YcpFJP9hKug9mxER/og6e3sqwHojeVBp16fdMwNzO2a2cv75azmDR8nUFvZJKt5acjBTleaQv
 Iq9+s/CBPrTIRc7SYBZaBzS1UFPzAMwObQunp8tXU0WUtHpPqY1t+wM2n2g5qztHeiwuvZ9Pr
 pfhNLNTwhyZRMr+pPjz4JWlgeSEjO2stuPDXCtUiqc4+Kdl3f+iiwB+rVsX6PMdmdYBm5jwN6
 PwFGc8wTaj7CHWxtgUxYZ7iS0LVhqNpgXYmsb6KdRcOcT1w6FPTBROILRqNq6Cp5QHCMIHR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_040124_788036_2227BC54 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: remove duplicate case for MAC
 setup of freestation5
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

ARC FreeStation5 is present twice in MAC address setup.

From older commits/changes, it is not possible to reconstruct
the correct choice only by reading the annotations.

Thus, remove the second case and keep the first one, so behavior
stays the same (as nobody seems to have complained about it).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This should be backported to 19.07 and 18.06.
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index e19a618389..92067ac7da 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -516,7 +516,6 @@ ramips_setup_macs()
 	netgear,wnce2001)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
 		;;
-	arcwireless,freestation5|\
 	dlink,dir-300-b7|\
 	dlink,dir-320-b1|\
 	dlink,dir-620-a1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
