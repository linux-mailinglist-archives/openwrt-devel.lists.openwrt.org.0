Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3DACBABE
	for <lists+openwrt-devel@lfdr.de>; Fri,  4 Oct 2019 14:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IUHOT5lhO9+UvxB/FGe/Gxgi0H0XnpQ6FcZel08HKzI=; b=o0kjVYxjqo+0Lh
	XFje+dxl27sJO2LqyyScWKpKyowKheCy0ZRYM6pESTgHyBQCmLC+fMD1wjCHtk+6RTGLjjTpH0vyD
	GZDm/I1vkpBceIpNqx+e83iIyA4sEHdoSjmeomJZebCJ6bNVu8pDCPLjDETZOJ012PQP1aX/l3UZv
	X8088liiA+GcAJGe9F12xDH3ghmfT3Ywmli6FQ2GPdFeAd2WXQcLm7FIxiKvErxdxI2QhbSqcTyCw
	CiOJ5wHXbRvDLNFrmmFoTKXRpM/Z1t5YMTlwPec9Ktg86Jjw731ALgchVN6MA0uU3BG5l/p6bNMEn
	/sCEClMbvGANJkBjK/rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMwZ-0000DC-7W; Fri, 04 Oct 2019 12:44:23 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMwR-0000CK-No
 for openwrt-devel@lists.openwrt.org; Fri, 04 Oct 2019 12:44:17 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MacWq-1hiwnW3GxO-00cAyv for <openwrt-devel@lists.openwrt.org>; Fri, 04
 Oct 2019 14:44:12 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  4 Oct 2019 14:44:07 +0200
Message-Id: <20191004124407.4282-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:UYr/bp5Zy31aNZ5v+zdBUZhNz2NX7cOiY5hGuyB/NuQNJcbig3D
 1twXfNwaUGiFXzbzmL/gVSRpLNQPxZYfl9gb9/mhS1pGGAHyvm1/cs0XDhEP1jbRNRUezoY
 VfiN8A8x5FVuSQ3FiofzVRMU1no7sqspYqnFMEdN/iz0QyWsUaHM0j6KVIfMiPtlr7FL3lb
 7L2rE3cIqjMt2IQ7v9G0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bkIOsCCuJA4=:GezBafGtoovHe0Cy8GonoU
 kkCtY7aCUy5GsQ9goVsS34CawNqXQyXqa13+MjTzdJ4u1Fm6iZVumZsnMXim0A/jCiF9xJiiT
 ect93VyTk5UCujEOgCmPUMbb6R/e7vq5ctpOVwbxfTEu3nKjptqbdGF8/18o9/yYm6kM+WOL0
 EqkVV670PfddJodB2qtankZmRS5GWEMSROLDkUh9kuMKbXIVw4UV4+Jh+v91x5ms/FgxPS1ER
 3DSifDdHEi4CUOoUJ+yKyYF1AjBAUZ+iA/raer22vm2rqtfwOlhEuiHYFMhoUXHd3ZkeTATqS
 6v1Hzgw1Kt93wgqFxeJP1pdmj7WItlRYFz0GPterBd5U7N74ozxUmQ4a3WKI0Eo5v2kIcdGVm
 6LjGYmwchlJerFDSRKN0mHxiTvh912JVX0UguCYDBNq5gMSI+xyseNCbWzQU5aXulWFGTVQN4
 Hbj1hR0Dk+vQtSg3V2c+OzAPq5E0U+vwXKy8p+zIU+x2c/CCiWNuC679NakTOlOyrMaENzGrN
 HLEoAV2e2hNtyAhS9aMov8aM/wutcpfWka23hYcXfmzeeiPG/ZNozx/nLqSoY0KVqoNGfNQvN
 4nRyO7Z3vDAy4cMsHgZxHsS/R3Ar3hv+Z83q+PIxoebLHZhSShxxFMp71u5zyTAtsGy4xxDN7
 YfcSAiqBHDJAuo6QUnmzTlcPV4yZpfyOP3ri9CxpLZ5V6PPaKUdUPqOxkbsp93zXtTt1dMtnv
 iKPE3UoXXw4PqIthFLyXClgJa4G96/NJ+j9H35xxgM4ZVW/+of9JD85SPnnf9dJ8wvQstmVEy
 cxfTuFTs/1dXvOFW42cWA3cnbVmRNuvHDkaXVs6OkdyvHtn8vfO1BcHgPCB0aWFAUXbStuQEv
 4EquRC+gCT3Y4DiaHRQnYSIFNbpLSoTVD6TqcgDKA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_054416_065868_EBE2AF82 
X-CRM114-Status: UNSURE (   9.04  )
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ath79: fix SUPPORTED_DEVICES for
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
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 4b2cee215c..09d8d90d2e 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -154,7 +154,7 @@ TARGET_DEVICES += ubnt_nanostation-ac-loco
 define Device/ubnt_nanostation-m
   $(Device/ubnt-xm)
   DEVICE_MODEL := Nanostation M
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
