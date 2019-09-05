Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC61BAAE31
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 00:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C5H4lfWsqyIw/67N2+sc9F344/kQ1ASxA7S3iAeXrzM=; b=m+FNdgfZxC+5Jh
	kPJFzNPLB59qk/RHL5M0Op1ZuPsET7qVMt5ahnlmNscqD2XtZSub6DGVDiPXMzMrD8SbzcMHki3/J
	6q9VHSpRYW93xu8r8D7JsHw5YwvlPe1WE24AZ4yAThsZTEebCcKqjmwWuEuh7i/XMAUaIcettLbrt
	/lt+ngSYq5Liiny9P6MGrh2dlp4e5bn+Pp13VNoDgrB8A0Tw37z/09kNj8jJvvf73QTbDQg43ykYB
	/jBtTnqEnWyGkDWTcrQvArxwjpRXUI6SgAIlIJqRheMyPZRTqO9o2wkGUQPbMddk19Rz/wf8sQyoo
	PcNyFjbmqnq3tW743QPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5zql-0001D6-1E; Thu, 05 Sep 2019 22:03:31 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5zqe-0001Cl-4G
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 22:03:25 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M9W78-1i2i442bEi-005Wxu for <openwrt-devel@lists.openwrt.org>; Fri, 06
 Sep 2019 00:03:20 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 00:03:17 +0200
Message-Id: <20190905220317.5060-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:1nYhxCY8+gmbQp7v8Aa3cMoS2aALVKB2L7YYo6sJhB3Ri3wUjIk
 L+C3j2H4E6JZQBl2FcEyPPbNNr+0P87QIA3cVvC1dfCpck7DDFvkLASdW78qv/laexaPXuw
 YqSAPko9Px6+dipJAhRMqRfT6iUaTWvZ5NF99SGtkry5uaWvOl7e9vcig4dmTpK6pp9JQEK
 q92HQHRvgz3cSvsKqbH1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:txmyozlieos=:hhQhH/PG9ItIlvXB79wHZY
 HkLGtBSUQaryv1wNMEwAi+CjD2rYqSiJ9w9uHkq6vKo3GMCUZuOemsz4YJiJoAIltWxoLbzW9
 2miEN0CC1cZp+mst+RyTWjYY0W/juzvJosASacKr3V7FuAGe+ipmeAhV0WIrnJfyQRKrr2PHp
 Rs/0UKiqZcdfUDLpuUxt4XYsOSGK/dbVRtlIs+hUNco4GHxFvkoI3cssLFTUxiytRbtZ3ULQJ
 e6t+ww+j6PiIXrExVT0bdlQjklpOrkeiLxiEmrcNpz8ZUGlJoWAcpqLWUwc30YaHBGIqPCNKH
 rZMfHPLz/JSx9WhYF34r4MM50jHZC1eedM+745JnmlKYLw6Yh1xkPC1MgHglorvVuXa7Xzg9B
 fwRaND+Zhv4EIA+Y6xxTbDs1Q6ypkiDEDQrR9CughNmipxH9jSJBClD7i97l3sx1P3pdExbH8
 PzhvSWFqBR4Roxe43Rxgl02eKskoi2AWkqqNuvH1G+dbNQlVMddm9fUX5zC9XS1CKXnEtsER4
 3AOiiALVqcrp8Gx2jqd5j4QsOs7w85Fxf1Ernf1jhKvIpiyA+OSMJySzCgbofMhPMMbyKe5ox
 iu16JoUNAmbBSKwkpo4AxjSePHXR3T9FRXAek36IWKgLesMkP3Ow87kS1zFDldhODmEcBS37q
 R4SJ2+6TP30OfBpBKN0MKI568BrwyAr1+X5LAZW27sa0wF4jKhzFLY7RBGR4F0puRqGGtS2l6
 3wUdQ4RnVVewKDcIqk4PL0qXOttzz0BDhYNihu5eKRXYsV9wNgemJCaNesloGW5WIKvP+TcQ3
 JxvmoX4w+/lIhbxg0sCvsYYIPqQSo2x77iq7fIJ9pBHln1QlQJ9P/5QeeS7P+MsYsgerpHC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_150324_467469_1BCDD4FE 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: really fix invalid
 UPGRADE_OPT_SAVE_CONFIG spellings
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

This fixes two cases were the prefix UPGRADE_OPT_ has been added
three times, so it remained wrong after removing one prefix in
1078de96e315 ("treewide: fix invalid UPGRADE_OPT_SAVE_CONFIG
spellings").

Fixes: 1078de9 ("treewide: fix invalid UPGRADE_OPT_SAVE_CONFIG spellings")
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This fix and previous patches need to be backported to 19.07, since
the initial introduction of the UPGRADE_OPT_SAVE_CONFIG variable
has already been backported there.
---
 target/linux/ath79/base-files/lib/upgrade/platform.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upgrade/platform.sh
index f7e62143e7..be2eb40b79 100644
--- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
@@ -14,7 +14,7 @@ redboot_fis_do_upgrade() {
 	if [ "$magic" = "4349" ]; then
 		local kern_length=0x$(dd if="$sysup_file" bs=2 skip=1 count=4 2>/dev/null)
 
-		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append="-j $UPGRADE_BACKUP"
+		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append="-j $UPGRADE_BACKUP"
 		dd if="$sysup_file" bs=64k skip=1 2>/dev/null | \
 			mtd -r $append -F$kern_part:$kern_length:0x80060000,rootfs write - $kern_part:rootfs
 
@@ -22,7 +22,7 @@ redboot_fis_do_upgrade() {
 		local board_dir=$(tar tf $sysup_file | grep -m 1 '^sysupgrade-.*/$')
 		local kern_length=$(tar xf $sysup_file ${board_dir}kernel -O | wc -c)
 
-		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append="-j $UPGRADE_BACKUP"
+		[ -f "$UPGRADE_BACKUP" -a "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && append="-j $UPGRADE_BACKUP"
 		tar xf $sysup_file ${board_dir}kernel ${board_dir}root -O | \
 			mtd -r $append -F$kern_part:$kern_length:0x80060000,rootfs write - $kern_part:rootfs
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
