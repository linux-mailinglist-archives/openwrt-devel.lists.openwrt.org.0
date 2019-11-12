Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353D9F9E39
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 00:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zilw/bfK1p1/Oq+sx1FQ3ap1oLAQXZs6YcZT9MPPHa0=; b=R2Po8RsTW2GIeN
	GWoWOhiiu9/dbgENNs0OBSodgBN/geYaW3YzGA3WtxBmrMf1irW6/Ci7sBh6APCJifqZBZCZaDdXq
	S3XZfmh+Rxa7qJmG1MSuxHDLPSHEslGdQoxdGh+qEY4PAoFQwuxhaRwdTbrmCahnvUhC8ynL/uAd+
	pbuW41yJNenEcw1ok+HLOnWwl2CfkmaH9Jriq5lNxlLjEQRJW1+MnkQ+eveuUprVLlQQBYMhujd0B
	Ij5l8vUmeBJ1Sr6k8eIWN+bY3drjQpDHzXFc3CBFta084cGpp0hgZwN1Kin/sWYcNMKiHP7g6+N2s
	VFjHV5oU/IkHdJ9iJG6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUffj-0000LI-4K; Tue, 12 Nov 2019 23:34:07 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUffV-0008Mk-2p
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 23:33:54 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 9FDACA611AB; Tue, 12 Nov 2019 15:33:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 94A3BA6118C;
 Tue, 12 Nov 2019 15:33:48 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 12 Nov 2019 15:33:48 -0800
Message-ID: <87bltgller.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_153353_174434_70EEE5CD 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] base-files: add /usr/share/libubox/jshn.sh
 to sysupgrade stage2
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


Discovered recent changes had broken sysupgrade for ar71xx mikrotik
rb-493g, traced the problem to missing /usr/share/libubox/jshn.sh after
switching to tmpfs.


Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 package/base-files/files/lib/upgrade/stage2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/upgrade/stage2 b/package/base-files/files/lib/upgrade/stage2
index 5d3d46ee80..41a3b2aeb3 100755
--- a/package/base-files/files/lib/upgrade/stage2
+++ b/package/base-files/files/lib/upgrade/stage2
@@ -48,7 +48,7 @@ switch_to_ramfs() {
 		local file="$(which "$binary" 2>/dev/null)"
 		[ -n "$file" ] && install_bin "$file"
 	done
-	install_file /etc/resolv.conf /lib/*.sh /lib/functions/*.sh /lib/upgrade/*.sh /lib/upgrade/do_stage2 $RAMFS_COPY_DATA
+	install_file /etc/resolv.conf /lib/*.sh /lib/functions/*.sh /lib/upgrade/*.sh /lib/upgrade/do_stage2 /usr/share/libubox/jshn.sh $RAMFS_COPY_DATA
 
 	[ -L "/lib64" ] && ln -s /lib $RAM_ROOT/lib64
 
-- 
2.24.0



-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
