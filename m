Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6C818CBCE
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fGo1NBrt8AXbOCN77N7IoFDxEbFn2BWR/t4a62Pi4Eo=; b=A/Xqqrm2A9sqj8J/ucx+TsDnok
	EsfOpVrI7LcFKId7s1ecMuNe0Bv3w/rrv9u9jXMKlbcNYnr2jkA1/iaF7m488kb7tyBK1kj9rEqB6
	SlmhGoiL7Pd0QjSCe0fmxY3M+iZaWWNwa+UjIRIom2VcqOVAaa4rdqiafuVnWOv34aex8A3yXeNLY
	NAAFCla38ykW6Ud0nFmICR1eN0cGXgB2+HoyxUNGF3vXT7U4t0QVccAetBczhqGeH41tevGrJD5OH
	qF29hH5jBN9ZXLNAmYwkuMONGSL+eskZCvgQJjP51RVw6xsXE/TA9NfhrRp0EITLBb/AOTgOorGXg
	MPIXqcnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF2l-0004oH-Ox; Fri, 20 Mar 2020 10:38:23 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1f-0003SS-C0
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:16 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9FE23FF80E;
 Fri, 20 Mar 2020 10:37:12 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:59 -1000
Message-Id: <20200320101059.19793-7-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320101059.19793-1-mail@aparcar.org>
References: <20200320101059.19793-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033715_647898_C7C107E1 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/6] scripts: fixup qemustart for new x86
 image names
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

qemustart allows easy testing of created images via `qemu`. The script
automatically selects created images and can setup e.g. networks.

As the x86 target now uses the generic image.mk the profile appears also
in the image name, this is *generic*.

Add the profile name to the qemustart script so it still finds the file.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 scripts/qemustart | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/qemustart b/scripts/qemustart
index dbb8deddaf..9ce03901aa 100755
--- a/scripts/qemustart
+++ b/scripts/qemustart
@@ -255,7 +255,7 @@ start_qemu_x86() {
 	local mach="${o_mach:-pc}"
 
 	[ -n "$rootfs" ] || {
-		rootfs="$o_bindir/openwrt-$o_target-${o_subtarget%-*}-combined-ext4.img"
+		rootfs="$o_bindir/openwrt-$o_target-${o_subtarget%-*}-generic-ext4-combined.img"
 		if [ ! -f "$rootfs" -a -s "$rootfs.gz" ]; then
 			gunzip "$rootfs.gz"
 		fi
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
