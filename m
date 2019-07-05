Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8713360AAD
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 18:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zSjMQw2eVXtaZyepKbGagq+Szdptib4YVUGggBR1wd8=; b=E/t7gk//JUO75F
	s+yWwFqLy0NT8qXNPAUFyP/am1P7NMeMh68U/Na8y7HjFpaCFy97C94j5Cu0Rlw0HP0F7HbtS4GBn
	MwBDXjwZdw3ocM5/asdo9GKRvCsZH2LrlHz1B/1DwPHqQ3XC8jgfIdd9mDizEcia2S37/fvELSb+m
	y1kE9DKH1flf30W04EfQVnfl4/FwljWxspftTUYGwWMM7cjjTsEsP9PFZDaO9WR/oAsvQgUF23gpw
	yxdpPqoH/42qY4awFI/DdQfuJYr4rlI3yIghHFNOAnjCBPvu4Z8Ihe+5HZbH7cuf4CuG6X8n2lA6w
	jMCrY1Pt2q+yq1Smo5Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjRVa-0000GA-PA; Fri, 05 Jul 2019 16:56:27 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjRVR-0000FM-3n
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 16:56:18 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MIMXC-1hmnYA2GCS-00EOW1 for <openwrt-devel@lists.openwrt.org>; Fri, 05
 Jul 2019 18:56:14 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jul 2019 18:56:06 +0200
Message-Id: <20190705165606.2716-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Gb1r7s4mowENcpzbdiPUq7mPCJwR4wlZpEiYbbCY5rcH1uPQUoS
 A+FVauBgiiyvlxFZ1IyrMsOkUvny0lDX2o5cU08pLPeF0a0hBYiEJlW5FLODAJFnSykg36f
 42WIB2V+h20npYaUhAxhwOOgCQLOCjkCLlwyF9qpy50tCYzrfIt1i2LL+nk+oNg9Npx/Xep
 IER9JNk6DzwlDxKyHf+Hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YILGLFY31Wo=:1Dy7TvXzBgfFuwNq/q5WfE
 26zAuVaOXms126Jl7ccGCply4HG/IDPU8Snn2JDFQ9KidOILF87KZI39yA11mMlFssCQcHPnG
 zjB6Aryav3XNfweyzOwt70GydDI6olU6rvHu4iinRVPReod1rlVCk5HP+R9bG4Eg0QyEIUJ82
 0HnbaXQ8hW9oAclPgRHwFdKDk2cc0WAN38+jCvH44TsGVTk4TAhfzIvTJuqjTpYVIXYk5sLBh
 fqf7VHGHDZAAZ134lPYg/b9fTwBH224ZwrybDZaEGl9/lKBprp1kjzkaYrrDkMApl/83yJL/U
 yBcxjlrOvJQAMGljWSD9ttcSEyaoWwP/a04lKQnI2BRJ0YYYgttVtMQemi6GvU7nspHGQhcRb
 PuriTKDcH7QxZieOTlMBjJ1mW4g1qwH39l1vYhcadQa+e0O1AYU96BVwg7xgfdulFk17mlnD5
 xWcI70XjuoaqzwSef3Aq65mSDysLJKqJ4a8DjmZ0TGxje7iKUmyKowpD5iVC4/sG2+odC/RtZ
 0ZsoyJketnhDPU9kkcwB18+a44wVQcGYeav1WQUTOi+3lXOxJ2bl9pWI87GTM2kr40WV1crvC
 vmsQVP8sl9POWdXVCTWAL+ZP25Bq8dZtY0ZHCPbR7XLlXep1dFsaz1VgLPXRtiFZa3+EmLnQ4
 QKTkKe21N5XBYe19R5qnJpTM4a2fqjxIQhGYW+gSJfhWpXObQTX3BVpL5Y+1lk6n/VJCzaXCP
 N+2ghhJIfCUR43kb6eWaAXnj2QzgE7w76aIVUyKapwWGIJN4uFRrMlf2Hx4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_095617_447359_50C3D3B2 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] gemini: Fix device name for StorLink
 SL93512r
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

This has been reported by Chen Minqiang (@ptpt52).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/gemini/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index 7b5faa04fd..ebcff633ea 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -187,7 +187,7 @@ define Device/raidsonic_ib-4220-b
 endef
 TARGET_DEVICES += raidsonic_ib-4220-b
 
-define Device/storlink-sl93512r
+define Device/storlink_sl93512r
 	$(Device/storlink-reference)
 	DEVICE_TITLE := StorLink SL93512r
 	DEVICE_DTS := gemini-sl93512r
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
