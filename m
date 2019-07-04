Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF9E5FE31
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jul 2019 23:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXt5NsrK60LFwcHqlI0BfFOEBELFPsleO8VKi2ZyC2s=; b=YpK2c+kqrKK9pY
	+qruGUt+lLD6l2W3gvcA6sGFT6c0zEvgsyucWbt38s/dUjqk9jc1Z7qllTyiN30NVehYsIu34LbCS
	iEU5lDp3m5EJ6ZIt0gWFklboPQX2FPuTtZ85Iqg/DwAvjqSY6+s0aDwio0jjlbv9ouZAAzK4zClQX
	fLrGglFwOvdGzF9GgzuyqsvBgcx3sVhb6Y2y4ZyXGsS2c9tI0fkou4657ja5J4P6QFC7K0mCL5IKY
	SDKRyDl98vrzumqkTMPcYhnR3X8sbLGzUx5uTIvOLq+bLPZqyF9yPnNSVj8Fi+ODqe/7s3odAQ8oG
	ncFQj8SXM0CGxzDAL0fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj9I1-0001DK-M3; Thu, 04 Jul 2019 21:29:13 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj9Hh-0001CT-Vu
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jul 2019 21:28:55 +0000
Received: from localhost.localdomain ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MZTua-1i3PCb2Zvi-00WZvM for <openwrt-devel@lists.openwrt.org>; Thu, 04
 Jul 2019 23:28:47 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  4 Jul 2019 23:28:44 +0200
Message-Id: <20190704212844.4733-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:mYIDFImk3KaxaS+VfjRZiAS2GoSz1JsygDFr8hu6jrAksUu8xoa
 G3ukHpaw8pIvnSwQdBhS369EEMNlQLa/GMZxyOIAJORM1viiPyRscQqW+oS0PebCHRd/zz5
 RsLd5zq3RaV08GPxqVS1iObQHpnNAeiPZncpkpqN3DwRJwDnzN6zF8i5FgNpLhOmiPKrUYu
 8hk+xlVPUOtaqanR/q0Gw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cTgEB9ugp38=:ghyLkCBShnKdJOUsgtfd/e
 ZFGlZF+hOvUAFEpM4NyvyRTkXT9MCWxj8kFPQyObqBlI2K4rXen9V0OeAcZye4lX6cKfq+rHO
 iHazoVqTcEr7Jx4oOPVxxQguNa7gBrMLr60R/0NpFjI9xiuLDxfdDRvXoguYupcCwEtSZCWEb
 PwQ1FGB61cKntn+RF4yF8+2qXK7u6RqN7knKj4WP4TrAQ8nR3oz+33cu++zLa0ERFXFAkGtdO
 CaY2XxEaMcMpajpB7ELKnrf16PHurrlD/GOOEitLctfnuOTgtjQbBDO9O77cznntOgFa35lPq
 MB2ZBHslc23MtHGSSliigNMmpO+kcIf3ttpa5VrHdrbG3YJ+khibBHeXlPbYVy6sjL2FzCZCg
 L/VOW/maa3FX37z0/9/JcYLFOJvYFXVELqlBPCxXl6m5dbLrhjN2oUCcs278r2V47r0q6u/k2
 TaEFJfRrp391arl79o53HFVxSyb49zBqpETN0vFq0mT+GOqhi43mHiqzVqdiZY+7ug9o9Ha69
 0gjoSnSdOF0CB23gMDLw3jtpk03dsIGsMqYnrZQ4pwqWdw2C1CwZowwDbZvs+djdxp1JU9cop
 zo15DIpUm43WADpnswJ2M6ejbbEbfIhmxAWJuALXluT/3VOBFug2G6gI0XxA1sN+TZMzXBr3E
 j+gPZoLLxyop4nFRjtrti6XIUnaSAMnbUfCiOip/tb+kDN5SRXSLWOgrskxtRcpmskwVs1THc
 qJgQbCWfLjtOclPz2B+F+iAvhkKKHZ42kVK/q9Rd23/gtUivW2zk15FDmNU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_142854_328885_C0631D7F 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: Really check path in
 get_mac_binary
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

Currently, path argument is only checked for being not empty.

This changes behavior to actually check whether path exists.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/lib/functions/system.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index 7ed62804a0..df671465be 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -4,7 +4,7 @@ get_mac_binary() {
 	local path="$1"
 	local offset="$2"
 
-	if [ -z "$path" ]; then
+	if [ -e "$path" ]; then
 		echo "get_mac_binary: file $path not found!" >&2
 		return
 	fi
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
