Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ADFABBAE
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 17:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sn/RMiT4yeftrqDWt+cxg9k1oszD3EQwZbpmbig0fvM=; b=Eyb0VydHXiR52EwG7uZqenimth
	rLiRVgsLxhpmTvhKhEnV8H+uZMNt7u2yrpQGtNEWeeEEwDVP7v9C53Dgs77PbkpptmA2fkCyWPVKM
	9qTOch/OSSYy7kh89irLNS47srCIT7XiwaVfOpwvNV54qzDGvSu7/4bYyD5sdvt20izGz6KDXg8gX
	EOsCyNwOODJNhPbzbhGfqOZXhJGGVkilNW9MkqdTXLxGqFs5nXjJiB+8Y6mLxIiWcE4/f6+WML3yi
	0KaC3m7yrYkFbNk51ZS5rlMS7bw09bsYJIBplWPTUdvsQ7DTHH93TmImWrR5yOxY6JwXLoviZxFGD
	x/QNFtug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FkB-0003O5-3d; Fri, 06 Sep 2019 15:01:47 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fjm-0003BD-Ha
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 15:01:24 +0000
Received: (wp-smtpd smtp.tlen.pl 27027 invoked from network);
 6 Sep 2019 17:01:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1567782077; bh=goX0dmZLvht6eFO+9N+UMZ8tCObQZAJfV5R0S2Qy/tg=;
 h=From:To:Subject;
 b=RsxKH3jogPhL/v0CAB+FDQD25M5zaVhG2Z0HPmTGw7Pb1WcFsZoaUBhJNlFVe8W1F
 lDwz05A75Nx/2v4kiOkdaJcCNVBWL6tpjIJr3SIl9p5834Xzf8FW+0C4PgSzZTZt4t
 P/6Le6PukmrZxIxV0flZ5MSDIjVC/sCVAwsi4VHE=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Sep 2019 17:01:17 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 17:01:06 +0200
Message-Id: <20190906150108.31098-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906150108.31098-1-tomek_n@o2.pl>
References: <20190906150108.31098-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: a6a6ddfc852d98104c2f0814b7e40787
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [4XOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080122_908368_D4FF123C 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/4 openwrt-19.07] ar71xx: sysupgrade:
 accept ath79 combined-image
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

There is md5 sum of whole image embedded in combined-image header which
is checked on sysupgrade. The check will fail for ath79 images which
may have embedded metadata. This is because metadata are appended after
the combined image is created. To allow smooth transition from ar71xx to
ath79, strip metadata before calculating md5 sum for whole image.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
(cherry picked from commit 8b4109c2b4d60495d046157d1baca9b1cdbf8dc8)
---
 target/linux/ar71xx/base-files/lib/upgrade/platform.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
index 49d9bab959..f42d53ec5d 100755
--- a/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ar71xx/base-files/lib/upgrade/platform.sh
@@ -394,7 +394,7 @@ platform_check_image() {
 		}
 
 		local md5_img=$(dd if="$1" bs=2 skip=9 count=16 2>/dev/null)
-		local md5_chk=$(dd if="$1" bs=$CI_BLKSZ skip=1 2>/dev/null | md5sum -); md5_chk="${md5_chk%% *}"
+		local md5_chk=$(fwtool -q -t -i /dev/null "$1"; dd if="$1" bs=$CI_BLKSZ skip=1 2>/dev/null | md5sum -); md5_chk="${md5_chk%% *}"
 
 		if [ -n "$md5_img" -a -n "$md5_chk" ] && [ "$md5_img" = "$md5_chk" ]; then
 			return 0
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
