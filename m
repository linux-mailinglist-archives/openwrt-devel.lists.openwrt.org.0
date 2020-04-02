Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E26019C327
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 15:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7wCNQgKc8DzhlMgiMFkSGM00iVvfjgEVAUS0vZjodi8=; b=cGbomktksW/iU1
	pH8jQqM7Ht5Wyog7K+butA8wHQXfTbp7DLof7cyOmQGqc4kcJ5siaOwPhtAPY3GjzUrrK6qCoZmJd
	peRDfDo3OWActuJdj9msheQmhc4YLMFodtXAqEPcBYb0oyxuxR7e6uUqRp6mq+UPzV+RNywcRlRgU
	N84BZ91vrax5qmQ3K5PeL2fk+zK6KWeRPJ5mTnw9gSuLP6uuYhCZkKqUFkvAHoLLN2Gay/OmJBZeM
	DZAC1c6GCqxOYdsqVWi8/tOBC3gRvOJbmm6cG6rtGa+b01QsnznMJkatxUoweVxgTfNYnm9Sietfj
	OF/mu2IiOQa0Ak7cxKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0GI-0006fw-OA; Thu, 02 Apr 2020 13:52:02 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0GB-0006fV-3M
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 13:51:56 +0000
Received: from buildfff.adridolf.com ([188.192.134.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MzTCy-1j6c8W2O6C-00vQr2 for <openwrt-devel@lists.openwrt.org>; Thu, 02
 Apr 2020 15:51:52 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 15:50:58 +0200
Message-Id: <20200402135059.33253-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ntGQzgM5hSz4AVoWNljb4hwKidGIikLOGvy+424NTL4Wdg484Qs
 yfYxDlI9fjB/hPliaJN1ccdvfwYMV1TceWQqe34BJgW951YzLIC+EdVaIVFdhTTP6YIzDjt
 8p6AKi1sur7gJ6ZIHRX+Q2ffwpszNdHd0u/pZeyUAJ3Zv0+EptJKeeELrWo4MGMHX7nP1AY
 W9PYcUmxcqDZ3x0Tq1oNA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d9KYBLjf9Js=:Lpzlqt5FCoG/X2sznPWhOB
 8J7Z/3p04pBPIdWiDFGdM/KeW0oC+Nb2rbdyeHmZYnKM+tPQAI+M9piHhS9lCdcbZ7qO9Xg4x
 eMWOKZIXGd+pHNnVyNMo88l+/y1dVTX08V5v60NSL6ojm5pW0XlOW9lsGZrBV17Rruwq2imR+
 mI2zSBwTc4NwAaFgvccn8h9V+IKaqdHaxVk7O+fNH+tEh2fBWO0hUuPlE6RnoJw/oq0NcrIeI
 eWoLqq6+7ztmuAFpd+qSz/471IAcVaD37t6CkwnIl9iOqkikaOsb9/3J2m+jfQIFTHGofTIm0
 jlIHRY1+6LmYWv173Q3+LY86n9VV+CY97i60Mxb2s/JCdMwd5cnpUTblDSqulAYDodqn+u0L9
 AaW7jxfBbOyrIzxO/jeplA34UbYs2JBBfDjpQ42ag7PZEw+P5JobsQ/kd+8gDdOruIG2EpLzs
 f1qigkbaFgcqOuYizvZ80wyByOzBzeOZ+EH7K7veklr0m+xb/wre1lV+GGuAFFolX8pl08EOj
 gQEP2YBYCKz940Tbr3P4ef0eIsCacgmqAYzpNjjBBJFfXv4qG5Q6nb4oKoqyNtUdteM635KPL
 wzvsbaas243A8cNlCEoe3TYdP9NGiWsB+knkpvlJgJKAADW89KDtQWnQGZJn2paLfEwU/V7Qf
 LjuB8leL3DJYCEcuak1Y0hVWmtc1ypYT6ZjDb+jdxDe3LKMYlvsqKSuXbAMlE7aAGsuaAzJjw
 bYftUG7izUBWvcR0EHaA3M3l5HKds4e8FjQjIc52OGmg7SEokFI33c3XF29QZ4xDa5uvnjkay
 ZPgeyjE7gpQg1Fu17keuRAKTDxj179l9MmIPQYBtKasEY74g98B6b4RXHBInfBJTkXThsPc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065155_433643_62005CD4 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] buildscript: copy all squashfs images for
 one device
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

So far, we are selecting specific squashfs images to be copied
from openwrt bin folder to our "final" bin directory. This has
the disadvantage that additional image types/names have to be
added explicitly, bloating the relevant code in buildscript.

With this patch, this behavior is changed in order to copy all
squashfs images for a particular device. As before, this will
_not_ copy initramfs images.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---

This has been tested with my firmware, but not after porting to official.

---
 buildscript | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/buildscript b/buildscript
index b0935a4c..bbfb2f92 100755
--- a/buildscript
+++ b/buildscript
@@ -292,18 +292,23 @@ cp_firmware() {
 
     mkdir -p "bin/$variant"
 
+    imagesrcpath="$builddir/bin/targets/${chipset}/${subtarget}"
+    imagedestpath="./bin/$variant"
+
     for image in ${images[@]}; do
-        filename_build=${image//openwrt/fff-${version}}
-        filename_build=${filename_build//squashfs-/}
-        filename_build=${filename_build//${chipset}-${subtarget}-/}
-        cp "$builddir/bin/targets/${chipset}/${subtarget}/$image" "./bin/$variant/$filename_build"
-
-        for region in "" "-eu" "-us"; do
-            image_factory=${image/sysupgrade/factory$region}
-            if [[ -f "$builddir/bin/targets/${chipset}/${subtarget}/$image_factory" ]]; then
-              filename_build_factory=${filename_build/sysupgrade/factory$region}
-              cp "$builddir/bin/targets/${chipset}/${subtarget}/$image_factory" "./bin/$variant/$filename_build_factory"
-            fi
+        # the following line is no mistake, since the first expression
+        # is evaluated, while the second is used literally
+        fullsrcpath=$imagesrcpath/${image//squashfs-*/squashfs-*}
+        if ! ls $fullsrcpath >/dev/null 2>/dev/null; then
+            echo "Warning: $image not found."
+            continue
+        fi
+        for f in $fullsrcpath; do
+            filename_build=${f##*/}
+            filename_build=${filename_build//openwrt/fff-${version}}
+            filename_build=${filename_build//squashfs-/}
+            filename_build=${filename_build//${chipset}-${subtarget}-/}
+            cp "$f" "$imagedestpath/$filename_build"
         done
     done
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
