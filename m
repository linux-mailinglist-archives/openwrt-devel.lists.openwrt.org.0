Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB071EF6B3
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 13:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lH6kLFkdiPKttntxpV2/rgc2mj9HXjbMafcv9KhCgzs=; b=JVphvo/IX8TOa7
	u1Qh9j7rzQN7ufGCqtRIPNQeK05b9xP7S9kmsPL2iKr2SbyJzolJXk+1vW5G4YFmoD4DXfb2BIbYS
	QcLd0XPRWlqA+IJkpertSIj1F7LlDrxnhEGk5gSd4uZb3Q4EwRuG7GsYmPPo0Kh9h9bJw5TaxcZiO
	mLKH2jQZi9St3gTn8wqWS62YlDx52VNzwjBNARTju6JqITknpE2+XJV5hryejp2dZXaxdXydKXfjl
	nITIQxbzz9544jfny4ASm4H0rvWcpW0PLPG0zicCGlEAXWor+2+hCGgUAt+Omv31jeFGDDZGBC2DB
	GpJ65rDt5mwqrW9dfw9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAqA-0006aH-5N; Fri, 05 Jun 2020 11:48:50 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAq2-0006Zn-Q7
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 11:48:44 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MTzjI-1jXrSn0X3a-00R2Jj for <openwrt-devel@lists.openwrt.org>; Fri, 05
 Jun 2020 13:48:39 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jun 2020 13:47:36 +0200
Message-Id: <20200605114736.63933-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:N0GOqmwMdbItQLgzZoyv4XdLV7Bp+D0mlx/Qag9N19HjlMFSGOI
 tJkjPxftpTm+ic1t09xInq7GvIukcKdUkdwags6xlVH+UY3wqCWbc1Nl4vvZj/IqliWlsCm
 BLwqk/RJRhiiCg2+cwMB7b++HuyizTpEYcPLEtpAa4Skz6C23GN7vo/2VnddSQtHDwUPzXA
 hus+dWBmDM5kMvQT53J3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uSEz4Po/Fd8=:+aHIQ6xah1xP5GeRH+YP6r
 xhfDmRHzRYlucmaumYhIUQhae+ZVJI2QvB8BMruvF+VbzNDgeGMZc2axCtAYKyrf3r8y0rPt2
 2XnA6Me8qx2cvI0okwzg3vJMBRbtT66wZvV5iKaKzIY7qdHToTOVYKr8DX/EqLEtq7SDej7PG
 JObYO524gxG3TKwb1KSbzkY5LEnE1cSV7cu/HaYhrdVzKwY+43oO2Fczirn+OFbcst4s9anQE
 i++TNQZ7O1Ht6lBHl1N7Z8+0U917gbF0NUyStcn53Kpe9CNPKf+3etYNwj/aI9GvAcheIQoNU
 oGjckvcg0I17KhvA5cS5OT4sPxot9AMVBH4d2XmKEV+r/OLVUeEvkc8tjF4KqnPJzK6lyStj5
 KIU61R4deFJ+26WkKoUHjqmrXTP9db8GeHwlak8DWUiXPLtrwG3+YrVFxUj31bvxz/llVP42f
 gIC0StJ9bJCCLx7d+w8tC5DxmWYHZ9YQFTK+AiV4DJUDlWgk+ctI3ttqyLEzsb1cB1CBkxm8n
 nyBClJ6CNQGWaj+CqZBYamz4Fw+V1SDTmqtNkrlqstlT4Oilaqg1lr4/9nWCXvwRYhKJABB1h
 3c1A+3QhMaVQz2BIbV3yRDMvY2adV9MHUNankSTSHRaYpMaLz7INB3IxnWN7K03RMPfSCVhE1
 GkNp7uhMAGpYJv6z93qYcOZe323AFdvPzU8cVzmPS3z0aqllZx4GImPsyxndCNyV60rgFdRgw
 hHSDHpiQOLOICFv8Qzw864X3ENfkImhnVGUbqMymGa3K97oHy2ynPVTZ2WmTKuJ9Xc9uo/UZ0
 WlujCXIT0pLG7Jl2ZmP25ewGvrFhWBYDYW9TqSLAL2jPspF1LclLkZ4H51Z1tz7mIFb0pda
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_044843_138036_1C9C393A 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH] sysupgrade: introduce compatibility
 version for devices
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

We regularly encounter the situation that devices are subject to
changes that will make them incompatible to previous versions.
Removing SUPPORTED_DEVICES will not really be helpful in most of these
cases, as this only helps after a rename.

To solve this situation, this patch introduces a compatibility
version for devices. It will be implemented via a per-device
Make variable DEVICE_COMPAT_VERSION, which will be set to 1.0
globally by default and then can be overwritten as needed.
The value for "old" devices/images without it is assumed to be
1.0 as well.

If an incompatible change is introduced, one can now increase
either the minor version (1.0->1.1) or the major version (1.0->2.0).

The former will still allow sysupgrade and only require to have
-n set to wipe existing config. The latter is meant for cases
where sysupgrade will break entirely, and a new installation should
be performed. Both can still be forced as usual (-F).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

** HELP NEEDED **

This patch is completely untested and won't work right now due to the
following problem:

The major obstacle (not implemented at all) currently is how to
get the compat version (on)to the running device. Including it into
image metadata is easy, but how to properly transform the Make
variable into a variable on the device? (Of course, I can just
create a separate file and write to it, but maybe there are
better ways I don't see right now.)

Of course, the current draft will only work after the second upgrade,
i.e. when upgrading from the new firmware to an even newer one.
I'm currently trying to work around that and provide compatibility
with older images as well, e.g. by renaming the supported_devices
in metadata based on the compat_version.
---
 include/image-commands.mk                      |  5 +++--
 include/image.mk                               |  3 ++-
 package/base-files/files/lib/upgrade/fwtool.sh | 17 +++++++++++++++++
 3 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index e7db7128b4..53ee24aa36 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -390,7 +390,8 @@ metadata_devices=$(if $(1),$(subst "$(space)","$(comma)",$(strip $(foreach v,$(1
 metadata_json = \
 	'{ $(if $(IMAGE_METADATA),$(IMAGE_METADATA)$(comma)) \
 		"metadata_version": "1.0", \
-		"supported_devices":[$(call metadata_devices,$(1))], \
+		"compat_version": "$(call json_quote,$(if $(DEVICE_COMPAT_VERSION),$(DEVICE_COMPAT_VERSION),1.0))", \
+		"supported_devices":[$(call metadata_devices,$(SUPPORTED_DEVICES))], \
 		"version": { \
 			"dist": "$(call json_quote,$(VERSION_DIST))", \
 			"version": "$(call json_quote,$(VERSION_NUMBER))", \
@@ -401,7 +402,7 @@ metadata_json = \
 	}'
 
 define Build/append-metadata
-	$(if $(SUPPORTED_DEVICES),-echo $(call metadata_json,$(SUPPORTED_DEVICES)) | fwtool -I - $@)
+	$(if $(SUPPORTED_DEVICES),-echo $(call metadata_json) | fwtool -I - $@)
 	[ ! -s "$(BUILD_KEY)" -o ! -s "$(BUILD_KEY).ucert" -o ! -s "$@" ] || { \
 		cp "$(BUILD_KEY).ucert" "$@.ucert" ;\
 		usign -S -m "$@" -s "$(BUILD_KEY)" -x "$@.sig" ;\
diff --git a/include/image.mk b/include/image.mk
index 984b64fb9c..346ab0d5d3 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -419,6 +419,7 @@ define Device/Init
 
   BOARD_NAME :=
   UIMAGE_NAME :=
+  DEVICE_COMPAT_VERSION := 1.0
   SUPPORTED_DEVICES :=
   IMAGE_METADATA :=
 
@@ -435,7 +436,7 @@ DEFAULT_DEVICE_VARS := \
   VID_HDR_OFFSET UBINIZE_OPTS UBINIZE_PARTS MKUBIFS_OPTS DEVICE_DTS \
   DEVICE_DTS_CONFIG DEVICE_DTS_DIR SOC BOARD_NAME UIMAGE_NAME SUPPORTED_DEVICES \
   IMAGE_METADATA KERNEL_ENTRY KERNEL_LOADADDR UBOOT_PATH IMAGE_SIZE \
-  DEVICE_VENDOR DEVICE_MODEL DEVICE_VARIANT \
+  DEVICE_COMPAT_VERSION DEVICE_VENDOR DEVICE_MODEL DEVICE_VARIANT \
   DEVICE_ALT0_VENDOR DEVICE_ALT0_MODEL DEVICE_ALT0_VARIANT \
   DEVICE_ALT1_VENDOR DEVICE_ALT1_MODEL DEVICE_ALT1_VARIANT \
   DEVICE_ALT2_VENDOR DEVICE_ALT2_MODEL DEVICE_ALT2_VARIANT
diff --git a/package/base-files/files/lib/upgrade/fwtool.sh b/package/base-files/files/lib/upgrade/fwtool.sh
index a0b3fb0a04..b887408f7e 100644
--- a/package/base-files/files/lib/upgrade/fwtool.sh
+++ b/package/base-files/files/lib/upgrade/fwtool.sh
@@ -44,6 +44,23 @@ fwtool_check_image() {
 	}
 
 	device="$(cat /tmp/sysinfo/board_name)"
+	compat="$(cat somewherelocal)"
+	[ -n "$compat" ] || compat="1.0"
+
+	json_get_var imagecompat compat_version
+	[ -n "$imagecompat" ] || imagecompat="1.0"
+
+	# major compat version -> no sysupgrade
+	if [ "${compat%.*}" != "${imagecompat%.*}" ]; then
+		echo "This image is incompatible for sysupgrading based on the image version."
+		return 1
+	fi
+
+	# minor compat version -> sysupgrade with -n required
+	if [ "${compat#.*}" != "${imagecompat#.*}" ] && [ "$SAVE_CONFIG" = "1" ]; then
+		echo "This config is incompatible to the new image. Please upgrade with -n"
+		return 1
+	fi
 
 	json_select supported_devices || return 1
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
