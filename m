Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6561E1F8828
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 11:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ihjnF4zYjbJqKo6PrpiQe41JeSnxom4r2w3vY3Tni2s=; b=IyMWo5mZDRjlGS
	tFFs17E3KULWoS8Om7mNaP3v01/3Dj/Xc4QSTDUUGot6z+kvdai6VkjLVdbV/SBtj5kU9e46iK5gE
	BLMgrXycapvEnn2dTQik47MM3CNJZL4Ntsqta4y3nii4ejCY6D5UyOl2UQDncICRlsTAyDcqDwIBa
	c00Uee2a/s8WfpiknMpqfs9Cyo9G+ROmek1tZU+PyZR86/dtoZfr++xpMQeqOYsZpWLvCyQmhJIWg
	DoyeSPbIYthY8RPAi+Epvb/t/IvjoP3oNcIZOjMmOf8leJPD7nNFem4XHZdWzVFo3KTRpBKjOwAsj
	GlygjReToFwh7f5M+dIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkP3T-0007OZ-BK; Sun, 14 Jun 2020 09:35:55 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkP3J-0007Nt-9x
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 09:35:47 +0000
X-Originating-IP: 72.234.141.215
Received: from localhost.localdomain (udp224251uds.hawaiiantel.net
 [72.234.141.215]) (Authenticated sender: mail@aparcar.org)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 3D6E2C0002;
 Sun, 14 Jun 2020 09:35:37 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jun 2020 23:33:31 -1000
Message-Id: <20200614093330.17516-1-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_023545_617441_9C73B1D6 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in image
 filename
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

The target/subtarget information in image filenames is barely of any use
for developers or end users.

A developer reads the profile name and the target is either obvious due
to previous work or `cd targets/ && grep -r <profile>` tells the target
within 3ms. If no buildroot is available `cat <image> | tail -c 200`
allows a look at the attached metadata which includes the
target/subtarget.

For users the information is entirely useless and maybe even harmful.
Target names like `cortexa9` could easily be mistaken as an actual
device name while the only relevant information would be
`linksys_wrt3200acm`. Images are more realistically downloaded via a
Wiki entry or a firmware wizard.

This commit therefore adds the new image option called
CONFIG_TARGET_FILENAMES to make the target/subtarget filename part
optional. It is disabled by default.

As the profile name `generic` appears multiple times in the x86 target
as well as in oceton and ath25, the proposed patch on GitHub should be
merged first:
* treewide: use unique profile names #3082
https://github.com/openwrt/openwrt/pull/3082

Newly produced files would look like the following:
* openwrt-linksys_wrt3200acm-initramfs-kernel.bin
* openwrt-linksys_wrt3200acm.manifest
* openwrt-linksys_wrt3200acm-squashfs-factory.img
* openwrt-linksys_wrt3200acm-squashfs-sysupgrade.bin

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
It's been a while since I made a controversial patch[0] so it feels
about time.

[0]: https://github.com/openwrt/openwrt/pull/2107

 include/image.mk                   | 9 +++++----
 package/base-files/image-config.in | 9 +++++++++
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/include/image.mk b/include/image.mk
index 984b64fb9c..c6fc467c9e 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -37,11 +37,12 @@ KDIR=$(KERNEL_BUILD_DIR)
 KDIR_TMP=$(KDIR)/tmp
 DTS_DIR:=$(LINUX_DIR)/arch/$(LINUX_KARCH)/boot/dts
 
+IMG_PREFIX_TARGET:=$(if $(CONFIG_TARGET_FILENAMES),$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))-)
 IMG_PREFIX_EXTRA:=$(if $(EXTRA_IMAGE_NAME),$(call sanitize,$(EXTRA_IMAGE_NAME))-)
 IMG_PREFIX_VERNUM:=$(if $(CONFIG_VERSION_FILENAMES),$(call sanitize,$(VERSION_NUMBER))-)
 IMG_PREFIX_VERCODE:=$(if $(CONFIG_VERSION_CODE_FILENAMES),$(call sanitize,$(VERSION_CODE))-)
 
-IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))
+IMG_PREFIX:=$(VERSION_DIST_SANITIZED)-$(IMG_PREFIX_VERNUM)$(IMG_PREFIX_VERCODE)$(IMG_PREFIX_EXTRA)$(IMG_PREFIX_TARGET)
 IMG_ROOTFS:=$(IMG_PREFIX)-rootfs
 IMG_COMBINED:=$(IMG_PREFIX)-combined
 IMG_PART_SIGNATURE:=$(shell echo $(SOURCE_DATE_EPOCH)$(LINUX_VERMAGIC) | mkhash md5 | cut -b1-8)
@@ -293,7 +294,7 @@ endef
 
 define Image/Manifest
 	$(call opkg,$(TARGET_DIR_ORIG)) list-installed > \
-		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED)).manifest
+		$(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),$(PROFILE_SANITIZED)).manifest
 endef
 
 define Image/gzip-ext4-padded-squashfs
@@ -317,7 +318,7 @@ ifdef CONFIG_TARGET_ROOTFS_TARGZ
   define Image/Build/targz
 	$(TAR) -cp --numeric-owner --owner=0 --group=0 --mode=a-s --sort=name \
 		$(if $(SOURCE_DATE_EPOCH),--mtime="@$(SOURCE_DATE_EPOCH)") \
-		-C $(TARGET_DIR)/ . | gzip -9n > $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),-$(PROFILE_SANITIZED))-rootfs.tar.gz
+		-C $(TARGET_DIR)/ . | gzip -9n > $(BIN_DIR)/$(IMG_PREFIX)$(if $(PROFILE_SANITIZED),$(PROFILE_SANITIZED))-rootfs.tar.gz
   endef
 endif
 
@@ -385,7 +386,7 @@ define Device/Init
 
   IMAGES :=
   ARTIFACTS :=
-  IMAGE_PREFIX := $(IMG_PREFIX)-$(1)
+  IMAGE_PREFIX := $(IMG_PREFIX)$(1)
   IMAGE_NAME = $$(IMAGE_PREFIX)-$$(1)-$$(2)
   IMAGE_SIZE :=
   KERNEL_PREFIX = $$(IMAGE_PREFIX)
diff --git a/package/base-files/image-config.in b/package/base-files/image-config.in
index 3432db525a..5a70d51a7a 100644
--- a/package/base-files/image-config.in
+++ b/package/base-files/image-config.in
@@ -264,6 +264,15 @@ if VERSIONOPT
 			Enable this to include the revision identifier or the configured
 			version code into the firmware image, SDK- and Image Builder archive
 			file names
+
+	config TARGET_FILENAMES
+		bool
+		prompt "Target and subtarget in filenames"
+		default n
+		help
+			Enable this to include the target (and subtarget) in
+			firmware image, SDK- and Image Builder archive file names
+
 endif
 
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
