Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF5DDEF26
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 16:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Um8eWNCCXsg/jTBdykJdyWbV3oX76jPPQrJJIOxEEI=; b=Iw/fKKhkPkerTo
	dQ7dw1UB+HFMXeqzxa3U66zQ7SMIOIrP9IQVJfuwl/OUjLwG6Sfm2Ii9KoRFRMbZJ1n74170D9BQY
	zMFXIeladjTffVzpYwCFCk4IBc+QzHtrmvELqOmAa/uy2gwOKDpOT5HfJo6RTRgP8xAhPNiqIQodW
	ClBKKUU/mjc3g/a9jImbpjgyGxmdN1zZ7WSged16vlRFPq5PWxvRFSncCFgulqRFAajvL2+WzoOs6
	XXT4dUP91ykI3FXu0AlEzgpAFJ9HAUF3S//pynYmVcbo7BN4PazBoPbAtJcEaHekPqD8IXpsRfdiO
	8pWaIu+yJN87m30WuptQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYUk-0001Om-Fc; Mon, 21 Oct 2019 14:17:14 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYUd-0001OV-FR
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 14:17:09 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MsZeX-1i2xFD1tf9-00u2ya for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 16:17:04 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 16:17:01 +0200
Message-Id: <20191021141701.16447-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:FbULtbqqXTi0BKeD1pz8bfxh3FN0uMhy3OFmFmgsO/jWwzQgjuh
 Ugj6hPGvXpSqhMIFMFDnKTFZteYkCz1aUlbE7uyoXPb/VkPej1PwN4Q3YuPLFIjOfQC3KLi
 pq8IZnp6kOLBRGLGZlmUj4UAm2ugujOY7+bNTj6VrMAF3dzcuIRZM1zRXuB05O34V44/VU5
 JfREYTYzpMZZpStnWZd6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IXhR6GkgHYU=:5py/g1SnBJbSwu+zuP6xHI
 P2OoC2oNHbS5wfMjowxd91Cxec8BHix70rveWEfjI1OxmIuUf598gymhgjIRqVPZhW3P6yr6o
 zaF5Fm8C6y5Z1IbQmkjiY3RyC5DGxytpiDrsXAwvu2faZU4UzNdw44njT7z6hFc+FpoQQ5A/D
 ZY/Exbs+B+PejP0YZqZ17L9fyj3mqJpAPBVz8Wbvu6Iu0+wCeFqJsyuga5NiDSusp8Zeup3BV
 Dz5n+ntZ+ZJq+2vvIqjrIFgIE3V+JpCU8JLoZJOxqFxgD6QOwDP/Vp7lbUvRd7KWZSUaWhS/2
 +KCT+apYKnbDgcU3DylHG5FHa3mZ8IsZPp2pB6gv4WGDpoXMCWnT3T4mCd6Zh33pD2cpj9Tir
 wuul7gA8xoNib/fLn4Qg1kWLL2He9IFKbLVsKTGf6bZcHJvL98fhxKt00LCnCrUY5RDsnVUDK
 DbVeuXhyKnzlOj4kRSOCFzZ4/1HxTT3SfBYkUlUv77FWMePFfKF7SpDavRAowY0/LIZ/uHMJ9
 dcjRCFK7e4fDaZDXTROwj3irBEw9uke7mUEseHgsMW3pULfJFfDLh2HR7KKLroaSQzx84Mx5J
 4PIoJrmH7e7YxH3n4dZ8CwCM29zo8nGhW1NwOe0rB/cU3k5KWOa5/rZzU4gVwTBIajRUcwX4O
 vJFqYb40ePSGTsqd4LqFocS/NErLV2YUrW9ahNbgk9obeC7cVNv6swN4UGGxOaXt+HjsD4V78
 gQSg8jtIpN65Twee8p6/ADLHwjBicLdponSP8tb3XXM+G67EOjMMtQyryZ5Qzh0vQFEJnm+M6
 kWglIIftQh0+Hs9TZdYiQcxsjSIJ3UqcZ3Pl0JW4utBL0yyCacHgSBo8CqmUhxCckXrTDeWHP
 OXVu4WBZmQGy9xJOZD1fC5Z2RiFCQjs5vGPVojM1s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_071707_813640_51A08670 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] ath79: fix SUPPORTED_DEVICES for
 ubnt_nanostation-m
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

The ar71xx images for the Ubiquiti NanoStation M (XM) devices use
"nanostation-m" as board name, but the ath79 images are only
compatible with the "nano-m" board name, so sysupgrade complains.

By changing this additional supported device, sysupgrade smoothly
upgrades from ar71xx to ath79.

Ref: openwrt#2418

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit f473ce6f231bb9f8913be50e850c771b3463fa14)
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 97a479a14a..c51d743a35 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -109,7 +109,7 @@ TARGET_DEVICES += ubnt_rocket-m
 define Device/ubnt_nanostation-m
   $(Device/ubnt-xm)
   DEVICE_TITLE := Ubiquiti Nanostation M
-  SUPPORTED_DEVICES += nano-m
+  SUPPORTED_DEVICES += nanostation-m
 endef
 TARGET_DEVICES += ubnt_nanostation-m
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
