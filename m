Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01891168F49
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 15:21:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMv8fuCXgqv8/wbOARfLE7DL+/1PPQLRCBmDfeKBQ1g=; b=Lie4zix7PCFU2o
	WWh26eaCWNZ5Hm64EOdQCP1PYFHGGiVC0TuSPtXIh98YSjGEZrfEDyG55DufxysJCwdiXS9grd33i
	dqZhFPzX4AH01V2v8sc3Q65xSkF3XjRLo+CJXde+eCIYsV+kRMFjstnqbpClmlb+n/YCOfgpfucyO
	ObBofQllNJEgSHlkOYnZlxEjv07KVPMJrc2w0eOtRB5Wjpe/FwqgsUOgEn3svBO0gXNJD2KzuO/Uh
	3q9oJ+ropT4Hj6lBr3fnqMPYdOwQ64K8gXYmpar9SNIajxaRaLx0EQkcjb4XvYLA1ff19e1fdHdmz
	b2d54xXaFhNOkeqV4hAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5VeX-0007PP-0Y; Sat, 22 Feb 2020 14:21:09 +0000
Received: from email6.maximasystems.com ([109.70.45.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5VeN-0007Oe-KO
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 14:21:01 +0000
Received: from OpenWRTBuild.lan (host-084-246-200-006-adsl.wimanx.com
 [84.246.200.6] (may be forged))
 by email6.maximasystems.com (8.14.4/8.14.4) with ESMTP id 01MEKoWl007253;
 Sat, 22 Feb 2020 14:20:50 GMT
From: michael@turf.org
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 14:20:49 +0000
Message-Id: <20200222142049.31119-1-michael@turf.org>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=1.6 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
 SPF_HELO_NONE,SPF_PASS,TO_NO_BRKTS_DYNIP autolearn=no autolearn_force=no
 version=3.4.1
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on
 email6.maximasystems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_062059_945251_369CFA33 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mkrasimage: fix segmentation fault
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
Cc: Michael T Farnworth <michael@turf.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Code was attempting to determine the size of the file
before it was actually known and allocating insufficient
memory space.  Images above a certain size caused a
segmentation fault.  Moving the calloc() ensured ensured
that large images didn't result in a buffer overflow on
memcpy().
    
Signed-off-by: Michael T Farnworth <michael@turf.org>

diff --git a/tools/firmware-utils/src/mkrasimage.c b/tools/firmware-utils/src/mkrasimage.c
index cff3a533d1..d8cec527fb 100644
--- a/tools/firmware-utils/src/mkrasimage.c
+++ b/tools/firmware-utils/src/mkrasimage.c
@@ -317,6 +317,16 @@ int build_image()
         map_file(&kernel);
     map_file(&rootfs);
 
+    /* As ZyXEL Web-GUI only accept images with a rootfs equal or larger than the first firmware shipped
+     * for the device, we need to pad rootfs partition to this size. To perform further calculations, we
+     * decide the size of this part here. In case the rootfs we want to integrate in our image is larger,
+     * take it's size, otherwise the supplied size.
+     *
+     * Be careful! We rely on assertion of correct size to be performed beforehand. It is unknown if images
+     * with a to large rootfs are accepted or not.
+     */
+    rootfs_out.size = rootfs_size < rootfs.size ? rootfs.size : rootfs_size;
+
     /*
      * Allocate memory and copy input rootfs for temporary output rootfs.
      * This is important as we have to generate the rootfs checksum over the
@@ -451,14 +461,5 @@ int main(int argc, char *argv[])
     if (ret)
         usage(EXIT_FAILURE);
 
-    /* As ZyXEL Web-GUI only accept images with a rootfs equal or larger than the first firmware shipped
-     * for the device, we need to pad rootfs partition to this size. To perform further calculations, we
-     * decide the size of this part here. In case the rootfs we want to integrate in our image is larger,
-     * take it's size, otherwise the supplied size.
-     *
-     * Be careful! We rely on assertion of correct size to be performed beforehand. It is unknown if images
-     * with a to large rootfs are accepted or not.
-     */
-    rootfs_out.size = rootfs_size < rootfs.size ? rootfs.size : rootfs_size;
     return build_image();
 }

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
