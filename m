Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917AC73019
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wP/TAPxeqXnANhLSx7UNJRmMvUTCbLriJEVPSzzHpdU=; b=YtmrJ8XZRbs/Ua
	1YpV9Z/Sf7UpAaWTJwzDVoBOdk7Y4xvluocv/0KPGayEobSYBEd2mfh/v0+IDgoR1SW7MJULdws7n
	OuSWxLddQohUyrqJs33HPzGVYx0X0+0jsJ7MJuVSIUwN4ZjUi0AOGs6CBg9ISjM9pPAjMCEuvAIgp
	XjCCL+l8dfrneRXWBd0Ca9bL02bJMGCTgmJru7C3R6wMAFdIq5e6fP0cJuP9viDtpoYvCrNonGIFd
	Kkc/UtGSN3iVRWMP7xFbjuHypqUne/ZCfOkU+ypRGn130LIKOL+LkQfaG44eCbaKvzTJ8ind+Hztq
	iqrBPuuNDxMuGcLKFpLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHW3-0004HU-Pu; Wed, 24 Jul 2019 13:41:11 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHVs-0004Gl-Tw
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:41:02 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MybCV-1ibtG13z49-00z07F for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:40:57 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:40:35 +0200
Message-Id: <20190724134035.3066-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:kDS3QQ8OtcrSXxyY2N145yu2i6ZYFANF93u2fZs37RLNs9Gncsf
 HFri41NPKCYWT5N/J5efcQhs+L8n3G0gqWDCMsxXoxd6kIdx934Ax5PT9uxpUFBwaOL6JTv
 B9we0+OcdbZXuNwBvzdbP0UWzGo238tKkZdPftpSkI6DIHsSjPqf6xMCmdj5wyFM+xP+v0A
 6Tim/4lam1C2Y8KiUakxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t7+hQlQBtnY=:EZheTp8adDFzC/Gq6CQBFq
 6rdYY7mmFZIrWBi9f6laC+sPAL3ByOAly2IqLq928au9yAoHUazAb1gQt22vHvbK3+ih6TIvq
 XuGoqLa7IoglOkVkN6wWejJe0MR4qGLQ97A9poZ8d6b+Jwt2yyH9Gv0PAE71uMx67j7Btjbmb
 utPXlv65ib2SH8yGqj+sTFHCxymKeR4z0O7xDyh5DrPcLH54HTYVhq94bZYyPdHk0mlw2ZkKf
 4HAJqVWlrq+I3oNU0aei6yxKsOcD40L8IQClnBY8L2H+vU3HcNgYzvSSbxwURmn6a7/PxN0BI
 ItSw0/fQrd6kig0Idx30dAVq3rSco5HsBNFAFg0Sf/eE2EzV0Yap5pG1W2noygdqod6bNACm9
 NDJM7NbUCcihXnGOAP51NPdPrZBoLM6CarTFMr3JR86PbzkDGAFcspT/hib8TI5Vlwd/y6eOL
 46f0VGvIVCn7fXS1p/4McOa1SAnTaF9Flf0vIK15+KWsz+UMx8rnVRGQlyzg9cGdpKaYYBK7B
 CBIsN69O6yDP+3oHbWnET2cCJsF/1GbONdLWa5yH+Duh55tOz7uveqKpPn3/BvFBLMn547AQN
 8XK3XuhkOypDH3TUS2rV0rB3uDALicierYqIf8+xqZckDSk5LZHDulkU8OH+KP9bBvQLxRflf
 xT9PBab5UV0K0eB+M/dAfgMKfe8M6UgIN2mCQvaT6NaB1MLWY1zF6WrH02QVNX7er+uWUpOYI
 HVLwLRVPI3XsvZsjvMR+K6w68WRsaxD8K3K/XQjLN9VW9paHKX59WMj4iUU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_064101_255668_086BBE59 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] octeon: Replace backticks by $(...)
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/octeon/base-files/lib/upgrade/platform.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/octeon/base-files/lib/upgrade/platform.sh b/target/linux/octeon/base-files/lib/upgrade/platform.sh
index 0e4ca37629..5d1a53a196 100755
--- a/target/linux/octeon/base-files/lib/upgrade/platform.sh
+++ b/target/linux/octeon/base-files/lib/upgrade/platform.sh
@@ -85,8 +85,8 @@ platform_check_image() {
 	er | \
 	erlite)
 		local tar_file="$1"
-		local kernel_length=`(tar xf $tar_file sysupgrade-$board/kernel -O | wc -c) 2> /dev/null`
-		local rootfs_length=`(tar xf $tar_file sysupgrade-$board/root -O | wc -c) 2> /dev/null`
+		local kernel_length=$(tar xf $tar_file sysupgrade-$board/kernel -O | wc -c 2> /dev/null)
+		local rootfs_length=$(tar xf $tar_file sysupgrade-$board/root -O | wc -c 2> /dev/null)
 		[ "$kernel_length" = 0 -o "$rootfs_length" = 0 ] && {
 			echo "The upgrade image is corrupt."
 			return 1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
