Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F50741AE
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 00:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZsoCfqzI1ImcYfxtVopxX6AOuLwiFxFwYYXJQnYzTfs=; b=ppMf4jDLV0aGQf
	2YC73RjNW6ByG5dzw+Vc3E80SrGaJSQxo1uKgI5WGMaHliN630UG6sIyDRoJr9YHgjql60KYui+dp
	397+OSzVnQCrsA7ZefzXyMUfd4YO8f7aRg/Kfj65X+lnQc5f9hWT9uf0nXYaPoFFl3bFlxwpY+ebC
	cmL2ug7xztBnDmQbAtfpLnwf6I9yMkxjlJxPGK58JhhC+29rJ1clf6E3NYBM+O9Qug0tB4q/i+9sR
	Rw6O1aKJ14S5+7GfjbDJHVDRo7HMD6FN4VJvLo6fSiGurCoN9mfZIOgSyA7zMIAkyh1vmTPbZR8cd
	iIlBiPzhWiN/Yvu1OHMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqQ3O-0002cE-JA; Wed, 24 Jul 2019 22:48:10 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqQ3C-0002bY-DK
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 22:47:59 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MjPYI-1iF0V93pnO-00l04k for <openwrt-devel@lists.openwrt.org>; Thu, 25
 Jul 2019 00:47:53 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 25 Jul 2019 00:47:13 +0200
Message-Id: <20190724224713.35555-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:FEaIyMcTeAdwiV7qQkOGNRCmQaissLK7uLgjs5IBKTrFMPySlpu
 JXRq3kFqO/P2OaSojuOl1RXb3VyIOwC2YgZV8ZWpxhYj89u/t7NCCKZO93wPm4ubtrEiLd/
 8lHq49F7ILZHMiqutKvSacKE6BVkxJDWX9BJxBVhko5G00d1bMbVyNdsrXNMvV9KO6hNVoM
 aorPbrpMbmcPMYRv326zQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CtmxAyx1Bt4=:WZLkKhH98+6K/v+K1E5QxK
 dTlt/3yDvl/elYZZbRu7qzpVXi0BwF7xztSExAFOLQUoskPM8AeEj7y3/S3Jyv0I88JkxI/h6
 jsR9vrA+AzmBtgv3Tp+SSEOFpaTstbDZDWQfYeDCav7W99/4xXx1E66HfS43JlIatiuTpyXoP
 stmdhQiiYQiI+kiSA84JAp1Jb7Q5MELY5yiWf7+oJACVbGYT+q14Wq8VnCYLNwGSVsllSTTft
 P/fZKQWgp/TDJR5OEQNa59slKZA7jozVk6nGyNDV+LHgMVV8R0kteYoRgtjSxUCBFDrlJI+/J
 5Pozij3EsqurVVpPFC/0owyzp2gNesZzlqmAXvMcRfeN8S0MCqvbofCIng2DtO4PKltOAwCic
 EKw7PQIg6idVaprGACpOvWNn66kAtzMcS87568tDF8FMD0AA7stz1yf4TCWhuHTYQ1Nj0xFqW
 bx4RXRx6BB1pL3rvXJ4h9vOhdCsnXnQ1F7/cfCpO+yEWGPWDr22TZVv28F3OBG/01wVzFVDUL
 6Yv1WwmWnSm78QHsihAv3SgOy4hSvghrXg7UgTGYIdYl4APj0TED9UqQ6XNA6AybWGZIORoI5
 zWHPRJ07CK3btZgvnGhdDeFwfAtIPI4HIHVYfTbEC7AGxGwgqmPDxPY240rAhepJtZLbs05NM
 JIx6uHa1qNaSvGa2aWLPEc6Blzy/KwUS0e+P2NblaSJIDOoedo+e+gFARqodFx1gL98bETV6X
 Fe+sOPsALrD5WsmdOAER8ZPtAPzQv6a/F/1v+e+Q/C3MUtgXQ3Urr9ScrdY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_154758_743374_BB2E1EB3 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] lantiq: Replace backticks by $(...) and
 remove useless echo
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh | 2 +-
 .../linux/lantiq/base-files/lib/functions/lantiq_dsl.sh   | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh b/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh
index b9a3313c83..4506737672 100755
--- a/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh
@@ -8,7 +8,7 @@
 include /lib/network
 scan_interfaces
 
-interfaces=`ubus list network.interface.\* | cut -d"." -f3`
+interfaces=$(ubus list network.interface.\* | cut -d"." -f3)
 for ifc in $interfaces; do
 
 	json_load "$(ifstatus $ifc)"
diff --git a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
index 8665240da4..bd01339fff 100755
--- a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
+++ b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
@@ -290,8 +290,8 @@ xtse() {
 		annex_s="$annex_s M,"
 	fi
 
-	annex_s=`echo ${annex_s:1}`
-	annex_s=`echo ${annex_s%?}`
+	annex_s=${annex_s:1}
+	annex_s=${annex_s%?}
 
 	# Evaluate Line Mode (according to G.997.1, 7.3.1.1.1)
 
@@ -346,8 +346,8 @@ xtse() {
 		line_mode_s="$line_mode_s G.993.1 (VDSL),"
 	fi
 
-	line_mode_s=`echo ${line_mode_s:1}`
-	line_mode_s=`echo ${line_mode_s%?}`
+	line_mode_s=${line_mode_s:1}
+	line_mode_s=${line_mode_s%?}
 
 	xtse_s="${xtse1}, ${xtse2}, ${xtse3}, ${xtse4}, ${xtse5}, ${xtse6}, ${xtse7}, ${xtse8}"
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
