Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47EF10570B
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nimLcTrrGIOaOpePhvbLRUImoIMvDxix/5fLpAxEEus=; b=lNYQs86duf5KrL
	rb7kClGXh2FJR51jCX2iOoACndZi4PUKGW/M8TtFD98NAvRnwUGnuJqChDpp8fOO1GKhhJbqQYCje
	wIxpZ/qIfwF3YVTSEQg0xeGE82+KEO9A8uj8b5GxeCtLNTtIwWOK2IhTWGtnEd7xc/CR4K3Cautw0
	u4Xi8MAoPe+kKoApmR7b52SUdfXVozYQQg5uJTLYVspXT4XBDnHOqL0wpg/Kf6MQwQ8vcXowvQyNe
	UgwIF5EkXwEu8wcCQ4kE7J+DO/JudERtXBES+BvbeTwfcgnaHkpoz4pW0Wc6vzi93cIofdY0PLqS9
	1ZfDZygIxUgwcIKZaT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpHo-0007DE-Ix; Thu, 21 Nov 2019 16:26:28 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF2-0002nK-J5
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:46 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 473481BF20C;
 Thu, 21 Nov 2019 16:23:31 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:20 +0100
Message-Id: <20191121162322.671035-11-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082337_054538_F278FFF3 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 10/12] target/linux/generic: backport
 patches adding DM_INIT functionality
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The new DM_INIT functionality, merged in upstream Linux 5.1, allows to
setup a device mapper target at boot time. It avoids the need to use
an initramfs to setup a device mapper target. This is useful in the
context of supporting dm-verity in OpenWRT.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 ...-to-directly-boot-to-a-mapped-device.patch | 668 ++++++++++++++++++
 ...-init-fix-max-devices-targets-checks.patch |  48 ++
 ...hang-in-early-create-error-condition.patch |  49 ++
 ...ion-dm-init-fix-multi-device-example.patch |  45 ++
 ...-to-directly-boot-to-a-mapped-device.patch | 668 ++++++++++++++++++
 ...-init-fix-max-devices-targets-checks.patch |  48 ++
 ...hang-in-early-create-error-condition.patch |  49 ++
 ...ion-dm-init-fix-multi-device-example.patch |  45 ++
 8 files changed, 1620 insertions(+)
 create mode 100644 target/linux/generic/backport-4.14/390-dm-add-support-to-directly-boot-to-a-mapped-device.patch
 create mode 100644 target/linux/generic/backport-4.14/391-dm-init-fix-max-devices-targets-checks.patch
 create mode 100644 target/linux/generic/backport-4.14/392-dm-ioctl-fix-hang-in-early-create-error-condition.patch
 create mode 100644 target/linux/generic/backport-4.14/393-Documentation-dm-init-fix-multi-device-example.patch
 create mode 100644 target/linux/generic/backport-4.19/400-dm-add-support-to-directly-boot-to-a-mapped-device.patch
 create mode 100644 target/linux/generic/backport-4.19/401-dm-init-fix-max-devices-targets-checks.patch
 create mode 100644 target/linux/generic/backport-4.19/402-dm-ioctl-fix-hang-in-early-create-error-condition.patch
 create mode 100644 target/linux/generic/backport-4.19/403-Documentation-dm-init-fix-multi-device-example.patch

diff --git a/target/linux/generic/backport-4.14/390-dm-add-support-to-directly-boot-to-a-mapped-device.patch b/target/linux/generic/backport-4.14/390-dm-add-support-to-directly-boot-to-a-mapped-device.patch
new file mode 100644
index 0000000000..291dbd783d
--- /dev/null
+++ b/target/linux/generic/backport-4.14/390-dm-add-support-to-directly-boot-to-a-mapped-device.patch
@@ -0,0 +1,668 @@
+From d2f5bf5f2df9c9993564e4a03187f6aa79b58cc4 Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Thu, 21 Feb 2019 17:33:34 -0300
+Subject: [PATCH 1/4] dm: add support to directly boot to a mapped device
+
+Add a "create" module parameter, which allows device-mapper targets to
+be configured at boot time. This enables early use of DM targets in the
+boot process (as the root device or otherwise) without the need of an
+initramfs.
+
+The syntax used in the boot param is based on the concise format from
+the dmsetup tool to follow the rule of least surprise:
+
+	dmsetup table --concise /dev/mapper/lroot
+
+Which is:
+	dm-mod.create=<name>,<uuid>,<minor>,<flags>,<table>[,<table>+][;<name>,<uuid>,<minor>,<flags>,<table>[,<table>+]+]
+
+Where,
+	<name>		::= The device name.
+	<uuid>		::= xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx | ""
+	<minor>		::= The device minor number | ""
+	<flags>		::= "ro" | "rw"
+	<table>		::= <start_sector> <num_sectors> <target_type> <target_args>
+	<target_type>	::= "verity" | "linear" | ...
+
+For example, the following could be added in the boot parameters:
+dm-mod.create="lroot,,,rw, 0 4096 linear 98:16 0, 4096 4096 linear 98:32 0" root=/dev/dm-0
+
+Only the targets that were tested are allowed and the ones that don't
+change any block device when the device is create as read-only. For
+example, mirror and cache targets are not allowed. The rationale behind
+this is that if the user makes a mistake, choosing the wrong device to
+be the mirror or the cache can corrupt data.
+
+The only targets initially allowed are:
+* crypt
+* delay
+* linear
+* snapshot-origin
+* striped
+* verity
+
+Co-developed-by: Will Drewry <wad@chromium.org>
+Co-developed-by: Kees Cook <keescook@chromium.org>
+Co-developed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Reviewed-by: Kees Cook <keescook@chromium.org>
+Signed-off-by: Mike Snitzer <snitzer@redhat.com>
+---
+ Documentation/device-mapper/dm-init.txt | 114 +++++++++
+ drivers/md/Kconfig                      |  12 +
+ drivers/md/Makefile                     |   4 +
+ drivers/md/dm-init.c                    | 303 ++++++++++++++++++++++++
+ drivers/md/dm-ioctl.c                   | 103 ++++++++
+ include/linux/device-mapper.h           |   9 +
+ 6 files changed, 545 insertions(+)
+ create mode 100644 Documentation/device-mapper/dm-init.txt
+ create mode 100644 drivers/md/dm-init.c
+
+diff --git a/Documentation/device-mapper/dm-init.txt b/Documentation/device-mapper/dm-init.txt
+new file mode 100644
+index 000000000000..8464ee7c01b8
+--- /dev/null
++++ b/Documentation/device-mapper/dm-init.txt
+@@ -0,0 +1,114 @@
++Early creation of mapped devices
++====================================
++
++It is possible to configure a device-mapper device to act as the root device for
++your system in two ways.
++
++The first is to build an initial ramdisk which boots to a minimal userspace
++which configures the device, then pivot_root(8) in to it.
++
++The second is to create one or more device-mappers using the module parameter
++"dm-mod.create=" through the kernel boot command line argument.
++
++The format is specified as a string of data separated by commas and optionally
++semi-colons, where:
++ - a comma is used to separate fields like name, uuid, flags and table
++   (specifies one device)
++ - a semi-colon is used to separate devices.
++
++So the format will look like this:
++
++ dm-mod.create=<name>,<uuid>,<minor>,<flags>,<table>[,<table>+][;<name>,<uuid>,<minor>,<flags>,<table>[,<table>+]+]
++
++Where,
++	<name>		::= The device name.
++	<uuid>		::= xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx | ""
++	<minor>		::= The device minor number | ""
++	<flags>		::= "ro" | "rw"
++	<table>		::= <start_sector> <num_sectors> <target_type> <target_args>
++	<target_type>	::= "verity" | "linear" | ... (see list below)
++
++The dm line should be equivalent to the one used by the dmsetup tool with the
++--concise argument.
++
++Target types
++============
++
++Not all target types are available as there are serious risks in allowing
++activation of certain DM targets without first using userspace tools to check
++the validity of associated metadata.
++
++	"cache":		constrained, userspace should verify cache device
++	"crypt":		allowed
++	"delay":		allowed
++	"era":			constrained, userspace should verify metadata device
++	"flakey":		constrained, meant for test
++	"linear":		allowed
++	"log-writes":		constrained, userspace should verify metadata device
++	"mirror":		constrained, userspace should verify main/mirror device
++	"raid":			constrained, userspace should verify metadata device
++	"snapshot":		constrained, userspace should verify src/dst device
++	"snapshot-origin":	allowed
++	"snapshot-merge":	constrained, userspace should verify src/dst device
++	"striped":		allowed
++	"switch":		constrained, userspace should verify dev path
++	"thin":			constrained, requires dm target message from userspace
++	"thin-pool":		constrained, requires dm target message from userspace
++	"verity":		allowed
++	"writecache":		constrained, userspace should verify cache device
++	"zero":			constrained, not meant for rootfs
++
++If the target is not listed above, it is constrained by default (not tested).
++
++Examples
++========
++An example of booting to a linear array made up of user-mode linux block
++devices:
++
++  dm-mod.create="lroot,,,rw, 0 4096 linear 98:16 0, 4096 4096 linear 98:32 0" root=/dev/dm-0
++
++This will boot to a rw dm-linear target of 8192 sectors split across two block
++devices identified by their major:minor numbers.  After boot, udev will rename
++this target to /dev/mapper/lroot (depending on the rules). No uuid was assigned.
++
++An example of multiple device-mappers, with the dm-mod.create="..." contents is shown here
++split on multiple lines for readability:
++
++  vroot,,,ro,
++    0 1740800 verity 254:0 254:0 1740800 sha1
++      76e9be054b15884a9fa85973e9cb274c93afadb6
++      5b3549d54d6c7a3837b9b81ed72e49463a64c03680c47835bef94d768e5646fe;
++  vram,,,rw,
++    0 32768 linear 1:0 0,
++    32768 32768 linear 1:1 0
++
++Other examples (per target):
++
++"crypt":
++  dm-crypt,,8,ro,
++    0 1048576 crypt aes-xts-plain64
++    babebabebabebabebabebabebabebabebabebabebabebabebabebabebabebabe 0
++    /dev/sda 0 1 allow_discards
++
++"delay":
++  dm-delay,,4,ro,0 409600 delay /dev/sda1 0 500
++
++"linear":
++  dm-linear,,,rw,
++    0 32768 linear /dev/sda1 0,
++    32768 1024000 linear /dev/sda2 0,
++    1056768 204800 linear /dev/sda3 0,
++    1261568 512000 linear /dev/sda4 0
++
++"snapshot-origin":
++  dm-snap-orig,,4,ro,0 409600 snapshot-origin 8:2
++
++"striped":
++  dm-striped,,4,ro,0 1638400 striped 4 4096
++  /dev/sda1 0 /dev/sda2 0 /dev/sda3 0 /dev/sda4 0
++
++"verity":
++  dm-verity,,4,ro,
++    0 1638400 verity 1 8:1 8:2 4096 4096 204800 1 sha256
++    fb1a5a0f00deb908d8b53cb270858975e76cf64105d412ce764225d53b8f3cfd
++    51934789604d1b92399c52e7cb149d1b3a1b74bbbcb103b2a0aaacbed5c08584
+diff --git a/drivers/md/Kconfig b/drivers/md/Kconfig
+index 4a249ee86364..4ea706f7790b 100644
+--- a/drivers/md/Kconfig
++++ b/drivers/md/Kconfig
+@@ -428,6 +428,18 @@ config DM_DELAY
+ 
+ 	If unsure, say N.
+ 
++config DM_INIT
++	bool "DM \"dm-mod.create=\" parameter support"
++	depends on BLK_DEV_DM=y
++	---help---
++	Enable "dm-mod.create=" parameter to create mapped devices at init time.
++	This option is useful to allow mounting rootfs without requiring an
++	initramfs.
++	See Documentation/device-mapper/dm-init.txt for dm-mod.create="..."
++	format.
++
++	If unsure, say N.
++
+ config DM_UEVENT
+ 	bool "DM uevents"
+ 	depends on BLK_DEV_DM
+diff --git a/drivers/md/Makefile b/drivers/md/Makefile
+index e94b6f9be941..d56331fbd895 100644
+--- a/drivers/md/Makefile
++++ b/drivers/md/Makefile
+@@ -64,6 +64,10 @@ obj-$(CONFIG_DM_LOG_WRITES)	+= dm-log-writes.o
+ obj-$(CONFIG_DM_INTEGRITY)	+= dm-integrity.o
+ obj-$(CONFIG_DM_ZONED)		+= dm-zoned.o
+ 
++ifeq ($(CONFIG_DM_INIT),y)
++dm-mod-objs			+= dm-init.o
++endif
++
+ ifeq ($(CONFIG_DM_UEVENT),y)
+ dm-mod-objs			+= dm-uevent.o
+ endif
+diff --git a/drivers/md/dm-init.c b/drivers/md/dm-init.c
+new file mode 100644
+index 000000000000..b53f30f16b4d
+--- /dev/null
++++ b/drivers/md/dm-init.c
+@@ -0,0 +1,303 @@
++// SPDX-License-Identifier: GPL-2.0
++
++/*
++ * dm-init.c
++ * Copyright (C) 2017 The Chromium OS Authors <chromium-os-dev@chromium.org>
++ *
++ * This file is released under the GPLv2.
++ */
++
++#include <linux/ctype.h>
++#include <linux/device.h>
++#include <linux/device-mapper.h>
++#include <linux/init.h>
++#include <linux/list.h>
++#include <linux/moduleparam.h>
++
++#define DM_MSG_PREFIX "init"
++#define DM_MAX_DEVICES 256
++#define DM_MAX_TARGETS 256
++#define DM_MAX_STR_SIZE 4096
++
++static char *create;
++
++/*
++ * Format: dm-mod.create=<name>,<uuid>,<minor>,<flags>,<table>[,<table>+][;<name>,<uuid>,<minor>,<flags>,<table>[,<table>+]+]
++ * Table format: <start_sector> <num_sectors> <target_type> <target_args>
++ *
++ * See Documentation/device-mapper/dm-init.txt for dm-mod.create="..." format
++ * details.
++ */
++
++struct dm_device {
++	struct dm_ioctl dmi;
++	struct dm_target_spec *table[DM_MAX_TARGETS];
++	char *target_args_array[DM_MAX_TARGETS];
++	struct list_head list;
++};
++
++const char *dm_allowed_targets[] __initconst = {
++	"crypt",
++	"delay",
++	"linear",
++	"snapshot-origin",
++	"striped",
++	"verity",
++};
++
++static int __init dm_verify_target_type(const char *target)
++{
++	unsigned int i;
++
++	for (i = 0; i < ARRAY_SIZE(dm_allowed_targets); i++) {
++		if (!strcmp(dm_allowed_targets[i], target))
++			return 0;
++	}
++	return -EINVAL;
++}
++
++static void __init dm_setup_cleanup(struct list_head *devices)
++{
++	struct dm_device *dev, *tmp;
++	unsigned int i;
++
++	list_for_each_entry_safe(dev, tmp, devices, list) {
++		list_del(&dev->list);
++		for (i = 0; i < dev->dmi.target_count; i++) {
++			kfree(dev->table[i]);
++			kfree(dev->target_args_array[i]);
++		}
++		kfree(dev);
++	}
++}
++
++/**
++ * str_field_delimit - delimit a string based on a separator char.
++ * @str: the pointer to the string to delimit.
++ * @separator: char that delimits the field
++ *
++ * Find a @separator and replace it by '\0'.
++ * Remove leading and trailing spaces.
++ * Return the remainder string after the @separator.
++ */
++static char __init *str_field_delimit(char **str, char separator)
++{
++	char *s;
++
++	/* TODO: add support for escaped characters */
++	*str = skip_spaces(*str);
++	s = strchr(*str, separator);
++	/* Delimit the field and remove trailing spaces */
++	if (s)
++		*s = '\0';
++	*str = strim(*str);
++	return s ? ++s : NULL;
++}
++
++/**
++ * dm_parse_table_entry - parse a table entry
++ * @dev: device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	<start_sector> <num_sectors> <target_type> <target_args>[, ...]
++ *
++ * Return the remainder string after the table entry, i.e, after the comma which
++ * delimits the entry or NULL if reached the end of the string.
++ */
++static char __init *dm_parse_table_entry(struct dm_device *dev, char *str)
++{
++	const unsigned int n = dev->dmi.target_count - 1;
++	struct dm_target_spec *sp;
++	unsigned int i;
++	/* fields:  */
++	char *field[4];
++	char *next;
++
++	field[0] = str;
++	/* Delimit first 3 fields that are separated by space */
++	for (i = 0; i < ARRAY_SIZE(field) - 1; i++) {
++		field[i + 1] = str_field_delimit(&field[i], ' ');
++		if (!field[i + 1])
++			return ERR_PTR(-EINVAL);
++	}
++	/* Delimit last field that can be terminated by comma */
++	next = str_field_delimit(&field[i], ',');
++
++	sp = kzalloc(sizeof(*sp), GFP_KERNEL);
++	if (!sp)
++		return ERR_PTR(-ENOMEM);
++	dev->table[n] = sp;
++
++	/* start_sector */
++	if (kstrtoull(field[0], 0, &sp->sector_start))
++		return ERR_PTR(-EINVAL);
++	/* num_sector */
++	if (kstrtoull(field[1], 0, &sp->length))
++		return ERR_PTR(-EINVAL);
++	/* target_type */
++	strscpy(sp->target_type, field[2], sizeof(sp->target_type));
++	if (dm_verify_target_type(sp->target_type)) {
++		DMERR("invalid type \"%s\"", sp->target_type);
++		return ERR_PTR(-EINVAL);
++	}
++	/* target_args */
++	dev->target_args_array[n] = kstrndup(field[3], GFP_KERNEL,
++					     DM_MAX_STR_SIZE);
++	if (!dev->target_args_array[n])
++		return ERR_PTR(-ENOMEM);
++
++	return next;
++}
++
++/**
++ * dm_parse_table - parse "dm-mod.create=" table field
++ * @dev: device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	<table>[,<table>+]
++ */
++static int __init dm_parse_table(struct dm_device *dev, char *str)
++{
++	char *table_entry = str;
++
++	while (table_entry) {
++		DMDEBUG("parsing table \"%s\"", str);
++		if (++dev->dmi.target_count >= DM_MAX_TARGETS) {
++			DMERR("too many targets %u > %d",
++			      dev->dmi.target_count, DM_MAX_TARGETS);
++			return -EINVAL;
++		}
++		table_entry = dm_parse_table_entry(dev, table_entry);
++		if (IS_ERR(table_entry)) {
++			DMERR("couldn't parse table");
++			return PTR_ERR(table_entry);
++		}
++	}
++
++	return 0;
++}
++
++/**
++ * dm_parse_device_entry - parse a device entry
++ * @dev: device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	name,uuid,minor,flags,table[; ...]
++ *
++ * Return the remainder string after the table entry, i.e, after the semi-colon
++ * which delimits the entry or NULL if reached the end of the string.
++ */
++static char __init *dm_parse_device_entry(struct dm_device *dev, char *str)
++{
++	/* There are 5 fields: name,uuid,minor,flags,table; */
++	char *field[5];
++	unsigned int i;
++	char *next;
++
++	field[0] = str;
++	/* Delimit first 4 fields that are separated by comma */
++	for (i = 0; i < ARRAY_SIZE(field) - 1; i++) {
++		field[i+1] = str_field_delimit(&field[i], ',');
++		if (!field[i+1])
++			return ERR_PTR(-EINVAL);
++	}
++	/* Delimit last field that can be delimited by semi-colon */
++	next = str_field_delimit(&field[i], ';');
++
++	/* name */
++	strscpy(dev->dmi.name, field[0], sizeof(dev->dmi.name));
++	/* uuid */
++	strscpy(dev->dmi.uuid, field[1], sizeof(dev->dmi.uuid));
++	/* minor */
++	if (strlen(field[2])) {
++		if (kstrtoull(field[2], 0, &dev->dmi.dev))
++			return ERR_PTR(-EINVAL);
++		dev->dmi.flags |= DM_PERSISTENT_DEV_FLAG;
++	}
++	/* flags */
++	if (!strcmp(field[3], "ro"))
++		dev->dmi.flags |= DM_READONLY_FLAG;
++	else if (strcmp(field[3], "rw"))
++		return ERR_PTR(-EINVAL);
++	/* table */
++	if (dm_parse_table(dev, field[4]))
++		return ERR_PTR(-EINVAL);
++
++	return next;
++}
++
++/**
++ * dm_parse_devices - parse "dm-mod.create=" argument
++ * @devices: list of struct dm_device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	<device>[;<device>+]
++ */
++static int __init dm_parse_devices(struct list_head *devices, char *str)
++{
++	unsigned long ndev = 0;
++	struct dm_device *dev;
++	char *device = str;
++
++	DMDEBUG("parsing \"%s\"", str);
++	while (device) {
++		dev = kzalloc(sizeof(*dev), GFP_KERNEL);
++		if (!dev)
++			return -ENOMEM;
++		list_add_tail(&dev->list, devices);
++
++		if (++ndev >= DM_MAX_DEVICES) {
++			DMERR("too many targets %u > %d",
++			      dev->dmi.target_count, DM_MAX_TARGETS);
++			return -EINVAL;
++		}
++
++		device = dm_parse_device_entry(dev, device);
++		if (IS_ERR(device)) {
++			DMERR("couldn't parse device");
++			return PTR_ERR(device);
++		}
++	}
++
++	return 0;
++}
++
++/**
++ * dm_init_init - parse "dm-mod.create=" argument and configure drivers
++ */
++static int __init dm_init_init(void)
++{
++	struct dm_device *dev;
++	LIST_HEAD(devices);
++	char *str;
++	int r;
++
++	if (!create)
++		return 0;
++
++	if (strlen(create) >= DM_MAX_STR_SIZE) {
++		DMERR("Argument is too big. Limit is %d\n", DM_MAX_STR_SIZE);
++		return -EINVAL;
++	}
++	str = kstrndup(create, GFP_KERNEL, DM_MAX_STR_SIZE);
++	if (!str)
++		return -ENOMEM;
++
++	r = dm_parse_devices(&devices, str);
++	if (r)
++		goto out;
++
++	DMINFO("waiting for all devices to be available before creating mapped devices\n");
++	wait_for_device_probe();
++
++	list_for_each_entry(dev, &devices, list) {
++		if (dm_early_create(&dev->dmi, dev->table,
++				    dev->target_args_array))
++			break;
++	}
++out:
++	kfree(str);
++	dm_setup_cleanup(&devices);
++	return r;
++}
++
++late_initcall(dm_init_init);
++
++module_param(create, charp, 0);
++MODULE_PARM_DESC(create, "Create a mapped device in early boot");
+diff --git a/drivers/md/dm-ioctl.c b/drivers/md/dm-ioctl.c
+index ca948155191a..b7e6c7311a93 100644
+--- a/drivers/md/dm-ioctl.c
++++ b/drivers/md/dm-ioctl.c
+@@ -2017,3 +2017,106 @@ int dm_copy_name_and_uuid(struct mapped_device *md, char *name, char *uuid)
+ 
+ 	return r;
+ }
++
++
++/**
++ * dm_early_create - create a mapped device in early boot.
++ *
++ * @dmi: Contains main information of the device mapping to be created.
++ * @spec_array: array of pointers to struct dm_target_spec. Describes the
++ * mapping table of the device.
++ * @target_params_array: array of strings with the parameters to a specific
++ * target.
++ *
++ * Instead of having the struct dm_target_spec and the parameters for every
++ * target embedded at the end of struct dm_ioctl (as performed in a normal
++ * ioctl), pass them as arguments, so the caller doesn't need to serialize them.
++ * The size of the spec_array and target_params_array is given by
++ * @dmi->target_count.
++ * This function is supposed to be called in early boot, so locking mechanisms
++ * to protect against concurrent loads are not required.
++ */
++int __init dm_early_create(struct dm_ioctl *dmi,
++			   struct dm_target_spec **spec_array,
++			   char **target_params_array)
++{
++	int r, m = DM_ANY_MINOR;
++	struct dm_table *t, *old_map;
++	struct mapped_device *md;
++	unsigned int i;
++
++	if (!dmi->target_count)
++		return -EINVAL;
++
++	r = check_name(dmi->name);
++	if (r)
++		return r;
++
++	if (dmi->flags & DM_PERSISTENT_DEV_FLAG)
++		m = MINOR(huge_decode_dev(dmi->dev));
++
++	/* alloc dm device */
++	r = dm_create(m, &md);
++	if (r)
++		return r;
++
++	/* hash insert */
++	r = dm_hash_insert(dmi->name, *dmi->uuid ? dmi->uuid : NULL, md);
++	if (r)
++		goto err_destroy_dm;
++
++	/* alloc table */
++	r = dm_table_create(&t, get_mode(dmi), dmi->target_count, md);
++	if (r)
++		goto err_destroy_dm;
++
++	/* add targets */
++	for (i = 0; i < dmi->target_count; i++) {
++		r = dm_table_add_target(t, spec_array[i]->target_type,
++					(sector_t) spec_array[i]->sector_start,
++					(sector_t) spec_array[i]->length,
++					target_params_array[i]);
++		if (r) {
++			DMWARN("error adding target to table");
++			goto err_destroy_table;
++		}
++	}
++
++	/* finish table */
++	r = dm_table_complete(t);
++	if (r)
++		goto err_destroy_table;
++
++	md->type = dm_table_get_type(t);
++	/* setup md->queue to reflect md's type (may block) */
++	r = dm_setup_md_queue(md, t);
++	if (r) {
++		DMWARN("unable to set up device queue for new table.");
++		goto err_destroy_table;
++	}
++
++	/* Set new map */
++	dm_suspend(md, 0);
++	old_map = dm_swap_table(md, t);
++	if (IS_ERR(old_map)) {
++		r = PTR_ERR(old_map);
++		goto err_destroy_table;
++	}
++	set_disk_ro(dm_disk(md), !!(dmi->flags & DM_READONLY_FLAG));
++
++	/* resume device */
++	r = dm_resume(md);
++	if (r)
++		goto err_destroy_table;
++
++	DMINFO("%s (%s) is ready", md->disk->disk_name, dmi->name);
++	dm_put(md);
++	return 0;
++
++err_destroy_table:
++	dm_table_destroy(t);
++err_destroy_dm:
++	dm_put(md);
++	dm_destroy(md);
++	return r;
++}
+diff --git a/include/linux/device-mapper.h b/include/linux/device-mapper.h
+index a5538433c927..990e7c2f84b1 100644
+--- a/include/linux/device-mapper.h
++++ b/include/linux/device-mapper.h
+@@ -10,6 +10,7 @@
+ 
+ #include <linux/bio.h>
+ #include <linux/blkdev.h>
++#include <linux/dm-ioctl.h>
+ #include <linux/math64.h>
+ #include <linux/ratelimit.h>
+ 
+@@ -457,6 +458,14 @@ void dm_remap_zone_report(struct dm_target *ti, struct bio *bio,
+ 			  sector_t start);
+ union map_info *dm_get_rq_mapinfo(struct request *rq);
+ 
++/*
++ * Device mapper functions to parse and create devices specified by the
++ * parameter "dm-mod.create="
++ */
++int __init dm_early_create(struct dm_ioctl *dmi,
++			   struct dm_target_spec **spec_array,
++			   char **target_params_array);
++
+ struct queue_limits *dm_get_queue_limits(struct mapped_device *md);
+ 
+ /*
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.14/391-dm-init-fix-max-devices-targets-checks.patch b/target/linux/generic/backport-4.14/391-dm-init-fix-max-devices-targets-checks.patch
new file mode 100644
index 0000000000..59eb168b66
--- /dev/null
+++ b/target/linux/generic/backport-4.14/391-dm-init-fix-max-devices-targets-checks.patch
@@ -0,0 +1,48 @@
+From 4318792c96a76cf6ea2ae62afb1b045301d96a5c Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Fri, 26 Apr 2019 17:09:55 -0300
+Subject: [PATCH 2/4] dm init: fix max devices/targets checks
+
+dm-init should allow up to DM_MAX_{DEVICES,TARGETS} for devices/targets,
+and not DM_MAX_{DEVICES,TARGETS} - 1.
+
+Fix the checks and also fix the error message when the number of devices
+is surpassed.
+
+Fixes: 6bbc923dfcf57d ("dm: add support to directly boot to a mapped device")
+Cc: stable@vger.kernel.org
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Signed-off-by: Mike Snitzer <snitzer@redhat.com>
+---
+ drivers/md/dm-init.c | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/md/dm-init.c b/drivers/md/dm-init.c
+index b53f30f16b4d..2e791ee6779f 100644
+--- a/drivers/md/dm-init.c
++++ b/drivers/md/dm-init.c
+@@ -160,7 +160,7 @@ static int __init dm_parse_table(struct dm_device *dev, char *str)
+ 
+ 	while (table_entry) {
+ 		DMDEBUG("parsing table \"%s\"", str);
+-		if (++dev->dmi.target_count >= DM_MAX_TARGETS) {
++		if (++dev->dmi.target_count > DM_MAX_TARGETS) {
+ 			DMERR("too many targets %u > %d",
+ 			      dev->dmi.target_count, DM_MAX_TARGETS);
+ 			return -EINVAL;
+@@ -242,9 +242,9 @@ static int __init dm_parse_devices(struct list_head *devices, char *str)
+ 			return -ENOMEM;
+ 		list_add_tail(&dev->list, devices);
+ 
+-		if (++ndev >= DM_MAX_DEVICES) {
+-			DMERR("too many targets %u > %d",
+-			      dev->dmi.target_count, DM_MAX_TARGETS);
++		if (++ndev > DM_MAX_DEVICES) {
++			DMERR("too many devices %lu > %d",
++			      ndev, DM_MAX_DEVICES);
+ 			return -EINVAL;
+ 		}
+ 
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.14/392-dm-ioctl-fix-hang-in-early-create-error-condition.patch b/target/linux/generic/backport-4.14/392-dm-ioctl-fix-hang-in-early-create-error-condition.patch
new file mode 100644
index 0000000000..1a80b6d97d
--- /dev/null
+++ b/target/linux/generic/backport-4.14/392-dm-ioctl-fix-hang-in-early-create-error-condition.patch
@@ -0,0 +1,49 @@
+From c78ff5467e0f5c4d001b7ac80209441c6c107b26 Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Wed, 15 May 2019 13:50:54 -0300
+Subject: [PATCH 3/4] dm ioctl: fix hang in early create error condition
+
+The dm_early_create() function (which deals with "dm-mod.create=" kernel
+command line option) calls dm_hash_insert() who gets an extra reference
+to the md object.
+
+In case of failure, this reference wasn't being released, causing
+dm_destroy() to hang, thus hanging the whole boot process.
+
+Fix this by calling __hash_remove() in the error path.
+
+Fixes: 6bbc923dfcf57d ("dm: add support to directly boot to a mapped device")
+Cc: stable@vger.kernel.org
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Signed-off-by: Mike Snitzer <snitzer@redhat.com>
+---
+ drivers/md/dm-ioctl.c | 6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/drivers/md/dm-ioctl.c b/drivers/md/dm-ioctl.c
+index b7e6c7311a93..d7801688d7be 100644
+--- a/drivers/md/dm-ioctl.c
++++ b/drivers/md/dm-ioctl.c
+@@ -2068,7 +2068,7 @@ int __init dm_early_create(struct dm_ioctl *dmi,
+ 	/* alloc table */
+ 	r = dm_table_create(&t, get_mode(dmi), dmi->target_count, md);
+ 	if (r)
+-		goto err_destroy_dm;
++		goto err_hash_remove;
+ 
+ 	/* add targets */
+ 	for (i = 0; i < dmi->target_count; i++) {
+@@ -2115,6 +2115,10 @@ int __init dm_early_create(struct dm_ioctl *dmi,
+ 
+ err_destroy_table:
+ 	dm_table_destroy(t);
++err_hash_remove:
++	(void) __hash_remove(__get_name_cell(dmi->name));
++	/* release reference from __get_name_cell */
++	dm_put(md);
+ err_destroy_dm:
+ 	dm_put(md);
+ 	dm_destroy(md);
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.14/393-Documentation-dm-init-fix-multi-device-example.patch b/target/linux/generic/backport-4.14/393-Documentation-dm-init-fix-multi-device-example.patch
new file mode 100644
index 0000000000..7d0d1af13f
--- /dev/null
+++ b/target/linux/generic/backport-4.14/393-Documentation-dm-init-fix-multi-device-example.patch
@@ -0,0 +1,45 @@
+From 072ea8a94e81e9744d18034b3245ab530f8365fc Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Tue, 4 Jun 2019 15:27:19 -0300
+Subject: [PATCH 4/4] Documentation/dm-init: fix multi device example
+
+The example in the docs regarding multiple device-mappers is invalid (it
+has a wrong number of arguments), it's a left over from previous
+versions of the patch.
+Replace the example with an valid and tested one.
+
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Reviewed-by: Stephen Boyd <swboyd@chromium.org>
+Signed-off-by: Jonathan Corbet <corbet@lwn.net>
+---
+ Documentation/device-mapper/dm-init.txt | 14 +++++++-------
+ 1 file changed, 7 insertions(+), 7 deletions(-)
+
+diff --git a/Documentation/device-mapper/dm-init.txt b/Documentation/device-mapper/dm-init.txt
+index 8464ee7c01b8..130b3c3679c5 100644
+--- a/Documentation/device-mapper/dm-init.txt
++++ b/Documentation/device-mapper/dm-init.txt
+@@ -74,13 +74,13 @@ this target to /dev/mapper/lroot (depending on the rules). No uuid was assigned.
+ An example of multiple device-mappers, with the dm-mod.create="..." contents is shown here
+ split on multiple lines for readability:
+ 
+-  vroot,,,ro,
+-    0 1740800 verity 254:0 254:0 1740800 sha1
+-      76e9be054b15884a9fa85973e9cb274c93afadb6
+-      5b3549d54d6c7a3837b9b81ed72e49463a64c03680c47835bef94d768e5646fe;
+-  vram,,,rw,
+-    0 32768 linear 1:0 0,
+-    32768 32768 linear 1:1 0
++  dm-linear,,1,rw,
++    0 32768 linear 8:1 0,
++    32768 1024000 linear 8:2 0;
++  dm-verity,,3,ro,
++    0 1638400 verity 1 /dev/sdc1 /dev/sdc2 4096 4096 204800 1 sha256
++    ac87db56303c9c1da433d7209b5a6ef3e4779df141200cbd7c157dcb8dd89c42
++    5ebfe87f7df3235b80a117ebc4078e44f55045487ad4a96581d1adb564615b51
+ 
+ Other examples (per target):
+ 
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.19/400-dm-add-support-to-directly-boot-to-a-mapped-device.patch b/target/linux/generic/backport-4.19/400-dm-add-support-to-directly-boot-to-a-mapped-device.patch
new file mode 100644
index 0000000000..291dbd783d
--- /dev/null
+++ b/target/linux/generic/backport-4.19/400-dm-add-support-to-directly-boot-to-a-mapped-device.patch
@@ -0,0 +1,668 @@
+From d2f5bf5f2df9c9993564e4a03187f6aa79b58cc4 Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Thu, 21 Feb 2019 17:33:34 -0300
+Subject: [PATCH 1/4] dm: add support to directly boot to a mapped device
+
+Add a "create" module parameter, which allows device-mapper targets to
+be configured at boot time. This enables early use of DM targets in the
+boot process (as the root device or otherwise) without the need of an
+initramfs.
+
+The syntax used in the boot param is based on the concise format from
+the dmsetup tool to follow the rule of least surprise:
+
+	dmsetup table --concise /dev/mapper/lroot
+
+Which is:
+	dm-mod.create=<name>,<uuid>,<minor>,<flags>,<table>[,<table>+][;<name>,<uuid>,<minor>,<flags>,<table>[,<table>+]+]
+
+Where,
+	<name>		::= The device name.
+	<uuid>		::= xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx | ""
+	<minor>		::= The device minor number | ""
+	<flags>		::= "ro" | "rw"
+	<table>		::= <start_sector> <num_sectors> <target_type> <target_args>
+	<target_type>	::= "verity" | "linear" | ...
+
+For example, the following could be added in the boot parameters:
+dm-mod.create="lroot,,,rw, 0 4096 linear 98:16 0, 4096 4096 linear 98:32 0" root=/dev/dm-0
+
+Only the targets that were tested are allowed and the ones that don't
+change any block device when the device is create as read-only. For
+example, mirror and cache targets are not allowed. The rationale behind
+this is that if the user makes a mistake, choosing the wrong device to
+be the mirror or the cache can corrupt data.
+
+The only targets initially allowed are:
+* crypt
+* delay
+* linear
+* snapshot-origin
+* striped
+* verity
+
+Co-developed-by: Will Drewry <wad@chromium.org>
+Co-developed-by: Kees Cook <keescook@chromium.org>
+Co-developed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Reviewed-by: Kees Cook <keescook@chromium.org>
+Signed-off-by: Mike Snitzer <snitzer@redhat.com>
+---
+ Documentation/device-mapper/dm-init.txt | 114 +++++++++
+ drivers/md/Kconfig                      |  12 +
+ drivers/md/Makefile                     |   4 +
+ drivers/md/dm-init.c                    | 303 ++++++++++++++++++++++++
+ drivers/md/dm-ioctl.c                   | 103 ++++++++
+ include/linux/device-mapper.h           |   9 +
+ 6 files changed, 545 insertions(+)
+ create mode 100644 Documentation/device-mapper/dm-init.txt
+ create mode 100644 drivers/md/dm-init.c
+
+diff --git a/Documentation/device-mapper/dm-init.txt b/Documentation/device-mapper/dm-init.txt
+new file mode 100644
+index 000000000000..8464ee7c01b8
+--- /dev/null
++++ b/Documentation/device-mapper/dm-init.txt
+@@ -0,0 +1,114 @@
++Early creation of mapped devices
++====================================
++
++It is possible to configure a device-mapper device to act as the root device for
++your system in two ways.
++
++The first is to build an initial ramdisk which boots to a minimal userspace
++which configures the device, then pivot_root(8) in to it.
++
++The second is to create one or more device-mappers using the module parameter
++"dm-mod.create=" through the kernel boot command line argument.
++
++The format is specified as a string of data separated by commas and optionally
++semi-colons, where:
++ - a comma is used to separate fields like name, uuid, flags and table
++   (specifies one device)
++ - a semi-colon is used to separate devices.
++
++So the format will look like this:
++
++ dm-mod.create=<name>,<uuid>,<minor>,<flags>,<table>[,<table>+][;<name>,<uuid>,<minor>,<flags>,<table>[,<table>+]+]
++
++Where,
++	<name>		::= The device name.
++	<uuid>		::= xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx | ""
++	<minor>		::= The device minor number | ""
++	<flags>		::= "ro" | "rw"
++	<table>		::= <start_sector> <num_sectors> <target_type> <target_args>
++	<target_type>	::= "verity" | "linear" | ... (see list below)
++
++The dm line should be equivalent to the one used by the dmsetup tool with the
++--concise argument.
++
++Target types
++============
++
++Not all target types are available as there are serious risks in allowing
++activation of certain DM targets without first using userspace tools to check
++the validity of associated metadata.
++
++	"cache":		constrained, userspace should verify cache device
++	"crypt":		allowed
++	"delay":		allowed
++	"era":			constrained, userspace should verify metadata device
++	"flakey":		constrained, meant for test
++	"linear":		allowed
++	"log-writes":		constrained, userspace should verify metadata device
++	"mirror":		constrained, userspace should verify main/mirror device
++	"raid":			constrained, userspace should verify metadata device
++	"snapshot":		constrained, userspace should verify src/dst device
++	"snapshot-origin":	allowed
++	"snapshot-merge":	constrained, userspace should verify src/dst device
++	"striped":		allowed
++	"switch":		constrained, userspace should verify dev path
++	"thin":			constrained, requires dm target message from userspace
++	"thin-pool":		constrained, requires dm target message from userspace
++	"verity":		allowed
++	"writecache":		constrained, userspace should verify cache device
++	"zero":			constrained, not meant for rootfs
++
++If the target is not listed above, it is constrained by default (not tested).
++
++Examples
++========
++An example of booting to a linear array made up of user-mode linux block
++devices:
++
++  dm-mod.create="lroot,,,rw, 0 4096 linear 98:16 0, 4096 4096 linear 98:32 0" root=/dev/dm-0
++
++This will boot to a rw dm-linear target of 8192 sectors split across two block
++devices identified by their major:minor numbers.  After boot, udev will rename
++this target to /dev/mapper/lroot (depending on the rules). No uuid was assigned.
++
++An example of multiple device-mappers, with the dm-mod.create="..." contents is shown here
++split on multiple lines for readability:
++
++  vroot,,,ro,
++    0 1740800 verity 254:0 254:0 1740800 sha1
++      76e9be054b15884a9fa85973e9cb274c93afadb6
++      5b3549d54d6c7a3837b9b81ed72e49463a64c03680c47835bef94d768e5646fe;
++  vram,,,rw,
++    0 32768 linear 1:0 0,
++    32768 32768 linear 1:1 0
++
++Other examples (per target):
++
++"crypt":
++  dm-crypt,,8,ro,
++    0 1048576 crypt aes-xts-plain64
++    babebabebabebabebabebabebabebabebabebabebabebabebabebabebabebabe 0
++    /dev/sda 0 1 allow_discards
++
++"delay":
++  dm-delay,,4,ro,0 409600 delay /dev/sda1 0 500
++
++"linear":
++  dm-linear,,,rw,
++    0 32768 linear /dev/sda1 0,
++    32768 1024000 linear /dev/sda2 0,
++    1056768 204800 linear /dev/sda3 0,
++    1261568 512000 linear /dev/sda4 0
++
++"snapshot-origin":
++  dm-snap-orig,,4,ro,0 409600 snapshot-origin 8:2
++
++"striped":
++  dm-striped,,4,ro,0 1638400 striped 4 4096
++  /dev/sda1 0 /dev/sda2 0 /dev/sda3 0 /dev/sda4 0
++
++"verity":
++  dm-verity,,4,ro,
++    0 1638400 verity 1 8:1 8:2 4096 4096 204800 1 sha256
++    fb1a5a0f00deb908d8b53cb270858975e76cf64105d412ce764225d53b8f3cfd
++    51934789604d1b92399c52e7cb149d1b3a1b74bbbcb103b2a0aaacbed5c08584
+diff --git a/drivers/md/Kconfig b/drivers/md/Kconfig
+index 4a249ee86364..4ea706f7790b 100644
+--- a/drivers/md/Kconfig
++++ b/drivers/md/Kconfig
+@@ -428,6 +428,18 @@ config DM_DELAY
+ 
+ 	If unsure, say N.
+ 
++config DM_INIT
++	bool "DM \"dm-mod.create=\" parameter support"
++	depends on BLK_DEV_DM=y
++	---help---
++	Enable "dm-mod.create=" parameter to create mapped devices at init time.
++	This option is useful to allow mounting rootfs without requiring an
++	initramfs.
++	See Documentation/device-mapper/dm-init.txt for dm-mod.create="..."
++	format.
++
++	If unsure, say N.
++
+ config DM_UEVENT
+ 	bool "DM uevents"
+ 	depends on BLK_DEV_DM
+diff --git a/drivers/md/Makefile b/drivers/md/Makefile
+index e94b6f9be941..d56331fbd895 100644
+--- a/drivers/md/Makefile
++++ b/drivers/md/Makefile
+@@ -64,6 +64,10 @@ obj-$(CONFIG_DM_LOG_WRITES)	+= dm-log-writes.o
+ obj-$(CONFIG_DM_INTEGRITY)	+= dm-integrity.o
+ obj-$(CONFIG_DM_ZONED)		+= dm-zoned.o
+ 
++ifeq ($(CONFIG_DM_INIT),y)
++dm-mod-objs			+= dm-init.o
++endif
++
+ ifeq ($(CONFIG_DM_UEVENT),y)
+ dm-mod-objs			+= dm-uevent.o
+ endif
+diff --git a/drivers/md/dm-init.c b/drivers/md/dm-init.c
+new file mode 100644
+index 000000000000..b53f30f16b4d
+--- /dev/null
++++ b/drivers/md/dm-init.c
+@@ -0,0 +1,303 @@
++// SPDX-License-Identifier: GPL-2.0
++
++/*
++ * dm-init.c
++ * Copyright (C) 2017 The Chromium OS Authors <chromium-os-dev@chromium.org>
++ *
++ * This file is released under the GPLv2.
++ */
++
++#include <linux/ctype.h>
++#include <linux/device.h>
++#include <linux/device-mapper.h>
++#include <linux/init.h>
++#include <linux/list.h>
++#include <linux/moduleparam.h>
++
++#define DM_MSG_PREFIX "init"
++#define DM_MAX_DEVICES 256
++#define DM_MAX_TARGETS 256
++#define DM_MAX_STR_SIZE 4096
++
++static char *create;
++
++/*
++ * Format: dm-mod.create=<name>,<uuid>,<minor>,<flags>,<table>[,<table>+][;<name>,<uuid>,<minor>,<flags>,<table>[,<table>+]+]
++ * Table format: <start_sector> <num_sectors> <target_type> <target_args>
++ *
++ * See Documentation/device-mapper/dm-init.txt for dm-mod.create="..." format
++ * details.
++ */
++
++struct dm_device {
++	struct dm_ioctl dmi;
++	struct dm_target_spec *table[DM_MAX_TARGETS];
++	char *target_args_array[DM_MAX_TARGETS];
++	struct list_head list;
++};
++
++const char *dm_allowed_targets[] __initconst = {
++	"crypt",
++	"delay",
++	"linear",
++	"snapshot-origin",
++	"striped",
++	"verity",
++};
++
++static int __init dm_verify_target_type(const char *target)
++{
++	unsigned int i;
++
++	for (i = 0; i < ARRAY_SIZE(dm_allowed_targets); i++) {
++		if (!strcmp(dm_allowed_targets[i], target))
++			return 0;
++	}
++	return -EINVAL;
++}
++
++static void __init dm_setup_cleanup(struct list_head *devices)
++{
++	struct dm_device *dev, *tmp;
++	unsigned int i;
++
++	list_for_each_entry_safe(dev, tmp, devices, list) {
++		list_del(&dev->list);
++		for (i = 0; i < dev->dmi.target_count; i++) {
++			kfree(dev->table[i]);
++			kfree(dev->target_args_array[i]);
++		}
++		kfree(dev);
++	}
++}
++
++/**
++ * str_field_delimit - delimit a string based on a separator char.
++ * @str: the pointer to the string to delimit.
++ * @separator: char that delimits the field
++ *
++ * Find a @separator and replace it by '\0'.
++ * Remove leading and trailing spaces.
++ * Return the remainder string after the @separator.
++ */
++static char __init *str_field_delimit(char **str, char separator)
++{
++	char *s;
++
++	/* TODO: add support for escaped characters */
++	*str = skip_spaces(*str);
++	s = strchr(*str, separator);
++	/* Delimit the field and remove trailing spaces */
++	if (s)
++		*s = '\0';
++	*str = strim(*str);
++	return s ? ++s : NULL;
++}
++
++/**
++ * dm_parse_table_entry - parse a table entry
++ * @dev: device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	<start_sector> <num_sectors> <target_type> <target_args>[, ...]
++ *
++ * Return the remainder string after the table entry, i.e, after the comma which
++ * delimits the entry or NULL if reached the end of the string.
++ */
++static char __init *dm_parse_table_entry(struct dm_device *dev, char *str)
++{
++	const unsigned int n = dev->dmi.target_count - 1;
++	struct dm_target_spec *sp;
++	unsigned int i;
++	/* fields:  */
++	char *field[4];
++	char *next;
++
++	field[0] = str;
++	/* Delimit first 3 fields that are separated by space */
++	for (i = 0; i < ARRAY_SIZE(field) - 1; i++) {
++		field[i + 1] = str_field_delimit(&field[i], ' ');
++		if (!field[i + 1])
++			return ERR_PTR(-EINVAL);
++	}
++	/* Delimit last field that can be terminated by comma */
++	next = str_field_delimit(&field[i], ',');
++
++	sp = kzalloc(sizeof(*sp), GFP_KERNEL);
++	if (!sp)
++		return ERR_PTR(-ENOMEM);
++	dev->table[n] = sp;
++
++	/* start_sector */
++	if (kstrtoull(field[0], 0, &sp->sector_start))
++		return ERR_PTR(-EINVAL);
++	/* num_sector */
++	if (kstrtoull(field[1], 0, &sp->length))
++		return ERR_PTR(-EINVAL);
++	/* target_type */
++	strscpy(sp->target_type, field[2], sizeof(sp->target_type));
++	if (dm_verify_target_type(sp->target_type)) {
++		DMERR("invalid type \"%s\"", sp->target_type);
++		return ERR_PTR(-EINVAL);
++	}
++	/* target_args */
++	dev->target_args_array[n] = kstrndup(field[3], GFP_KERNEL,
++					     DM_MAX_STR_SIZE);
++	if (!dev->target_args_array[n])
++		return ERR_PTR(-ENOMEM);
++
++	return next;
++}
++
++/**
++ * dm_parse_table - parse "dm-mod.create=" table field
++ * @dev: device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	<table>[,<table>+]
++ */
++static int __init dm_parse_table(struct dm_device *dev, char *str)
++{
++	char *table_entry = str;
++
++	while (table_entry) {
++		DMDEBUG("parsing table \"%s\"", str);
++		if (++dev->dmi.target_count >= DM_MAX_TARGETS) {
++			DMERR("too many targets %u > %d",
++			      dev->dmi.target_count, DM_MAX_TARGETS);
++			return -EINVAL;
++		}
++		table_entry = dm_parse_table_entry(dev, table_entry);
++		if (IS_ERR(table_entry)) {
++			DMERR("couldn't parse table");
++			return PTR_ERR(table_entry);
++		}
++	}
++
++	return 0;
++}
++
++/**
++ * dm_parse_device_entry - parse a device entry
++ * @dev: device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	name,uuid,minor,flags,table[; ...]
++ *
++ * Return the remainder string after the table entry, i.e, after the semi-colon
++ * which delimits the entry or NULL if reached the end of the string.
++ */
++static char __init *dm_parse_device_entry(struct dm_device *dev, char *str)
++{
++	/* There are 5 fields: name,uuid,minor,flags,table; */
++	char *field[5];
++	unsigned int i;
++	char *next;
++
++	field[0] = str;
++	/* Delimit first 4 fields that are separated by comma */
++	for (i = 0; i < ARRAY_SIZE(field) - 1; i++) {
++		field[i+1] = str_field_delimit(&field[i], ',');
++		if (!field[i+1])
++			return ERR_PTR(-EINVAL);
++	}
++	/* Delimit last field that can be delimited by semi-colon */
++	next = str_field_delimit(&field[i], ';');
++
++	/* name */
++	strscpy(dev->dmi.name, field[0], sizeof(dev->dmi.name));
++	/* uuid */
++	strscpy(dev->dmi.uuid, field[1], sizeof(dev->dmi.uuid));
++	/* minor */
++	if (strlen(field[2])) {
++		if (kstrtoull(field[2], 0, &dev->dmi.dev))
++			return ERR_PTR(-EINVAL);
++		dev->dmi.flags |= DM_PERSISTENT_DEV_FLAG;
++	}
++	/* flags */
++	if (!strcmp(field[3], "ro"))
++		dev->dmi.flags |= DM_READONLY_FLAG;
++	else if (strcmp(field[3], "rw"))
++		return ERR_PTR(-EINVAL);
++	/* table */
++	if (dm_parse_table(dev, field[4]))
++		return ERR_PTR(-EINVAL);
++
++	return next;
++}
++
++/**
++ * dm_parse_devices - parse "dm-mod.create=" argument
++ * @devices: list of struct dm_device to store the parsed information.
++ * @str: the pointer to a string with the format:
++ *	<device>[;<device>+]
++ */
++static int __init dm_parse_devices(struct list_head *devices, char *str)
++{
++	unsigned long ndev = 0;
++	struct dm_device *dev;
++	char *device = str;
++
++	DMDEBUG("parsing \"%s\"", str);
++	while (device) {
++		dev = kzalloc(sizeof(*dev), GFP_KERNEL);
++		if (!dev)
++			return -ENOMEM;
++		list_add_tail(&dev->list, devices);
++
++		if (++ndev >= DM_MAX_DEVICES) {
++			DMERR("too many targets %u > %d",
++			      dev->dmi.target_count, DM_MAX_TARGETS);
++			return -EINVAL;
++		}
++
++		device = dm_parse_device_entry(dev, device);
++		if (IS_ERR(device)) {
++			DMERR("couldn't parse device");
++			return PTR_ERR(device);
++		}
++	}
++
++	return 0;
++}
++
++/**
++ * dm_init_init - parse "dm-mod.create=" argument and configure drivers
++ */
++static int __init dm_init_init(void)
++{
++	struct dm_device *dev;
++	LIST_HEAD(devices);
++	char *str;
++	int r;
++
++	if (!create)
++		return 0;
++
++	if (strlen(create) >= DM_MAX_STR_SIZE) {
++		DMERR("Argument is too big. Limit is %d\n", DM_MAX_STR_SIZE);
++		return -EINVAL;
++	}
++	str = kstrndup(create, GFP_KERNEL, DM_MAX_STR_SIZE);
++	if (!str)
++		return -ENOMEM;
++
++	r = dm_parse_devices(&devices, str);
++	if (r)
++		goto out;
++
++	DMINFO("waiting for all devices to be available before creating mapped devices\n");
++	wait_for_device_probe();
++
++	list_for_each_entry(dev, &devices, list) {
++		if (dm_early_create(&dev->dmi, dev->table,
++				    dev->target_args_array))
++			break;
++	}
++out:
++	kfree(str);
++	dm_setup_cleanup(&devices);
++	return r;
++}
++
++late_initcall(dm_init_init);
++
++module_param(create, charp, 0);
++MODULE_PARM_DESC(create, "Create a mapped device in early boot");
+diff --git a/drivers/md/dm-ioctl.c b/drivers/md/dm-ioctl.c
+index ca948155191a..b7e6c7311a93 100644
+--- a/drivers/md/dm-ioctl.c
++++ b/drivers/md/dm-ioctl.c
+@@ -2017,3 +2017,106 @@ int dm_copy_name_and_uuid(struct mapped_device *md, char *name, char *uuid)
+ 
+ 	return r;
+ }
++
++
++/**
++ * dm_early_create - create a mapped device in early boot.
++ *
++ * @dmi: Contains main information of the device mapping to be created.
++ * @spec_array: array of pointers to struct dm_target_spec. Describes the
++ * mapping table of the device.
++ * @target_params_array: array of strings with the parameters to a specific
++ * target.
++ *
++ * Instead of having the struct dm_target_spec and the parameters for every
++ * target embedded at the end of struct dm_ioctl (as performed in a normal
++ * ioctl), pass them as arguments, so the caller doesn't need to serialize them.
++ * The size of the spec_array and target_params_array is given by
++ * @dmi->target_count.
++ * This function is supposed to be called in early boot, so locking mechanisms
++ * to protect against concurrent loads are not required.
++ */
++int __init dm_early_create(struct dm_ioctl *dmi,
++			   struct dm_target_spec **spec_array,
++			   char **target_params_array)
++{
++	int r, m = DM_ANY_MINOR;
++	struct dm_table *t, *old_map;
++	struct mapped_device *md;
++	unsigned int i;
++
++	if (!dmi->target_count)
++		return -EINVAL;
++
++	r = check_name(dmi->name);
++	if (r)
++		return r;
++
++	if (dmi->flags & DM_PERSISTENT_DEV_FLAG)
++		m = MINOR(huge_decode_dev(dmi->dev));
++
++	/* alloc dm device */
++	r = dm_create(m, &md);
++	if (r)
++		return r;
++
++	/* hash insert */
++	r = dm_hash_insert(dmi->name, *dmi->uuid ? dmi->uuid : NULL, md);
++	if (r)
++		goto err_destroy_dm;
++
++	/* alloc table */
++	r = dm_table_create(&t, get_mode(dmi), dmi->target_count, md);
++	if (r)
++		goto err_destroy_dm;
++
++	/* add targets */
++	for (i = 0; i < dmi->target_count; i++) {
++		r = dm_table_add_target(t, spec_array[i]->target_type,
++					(sector_t) spec_array[i]->sector_start,
++					(sector_t) spec_array[i]->length,
++					target_params_array[i]);
++		if (r) {
++			DMWARN("error adding target to table");
++			goto err_destroy_table;
++		}
++	}
++
++	/* finish table */
++	r = dm_table_complete(t);
++	if (r)
++		goto err_destroy_table;
++
++	md->type = dm_table_get_type(t);
++	/* setup md->queue to reflect md's type (may block) */
++	r = dm_setup_md_queue(md, t);
++	if (r) {
++		DMWARN("unable to set up device queue for new table.");
++		goto err_destroy_table;
++	}
++
++	/* Set new map */
++	dm_suspend(md, 0);
++	old_map = dm_swap_table(md, t);
++	if (IS_ERR(old_map)) {
++		r = PTR_ERR(old_map);
++		goto err_destroy_table;
++	}
++	set_disk_ro(dm_disk(md), !!(dmi->flags & DM_READONLY_FLAG));
++
++	/* resume device */
++	r = dm_resume(md);
++	if (r)
++		goto err_destroy_table;
++
++	DMINFO("%s (%s) is ready", md->disk->disk_name, dmi->name);
++	dm_put(md);
++	return 0;
++
++err_destroy_table:
++	dm_table_destroy(t);
++err_destroy_dm:
++	dm_put(md);
++	dm_destroy(md);
++	return r;
++}
+diff --git a/include/linux/device-mapper.h b/include/linux/device-mapper.h
+index a5538433c927..990e7c2f84b1 100644
+--- a/include/linux/device-mapper.h
++++ b/include/linux/device-mapper.h
+@@ -10,6 +10,7 @@
+ 
+ #include <linux/bio.h>
+ #include <linux/blkdev.h>
++#include <linux/dm-ioctl.h>
+ #include <linux/math64.h>
+ #include <linux/ratelimit.h>
+ 
+@@ -457,6 +458,14 @@ void dm_remap_zone_report(struct dm_target *ti, struct bio *bio,
+ 			  sector_t start);
+ union map_info *dm_get_rq_mapinfo(struct request *rq);
+ 
++/*
++ * Device mapper functions to parse and create devices specified by the
++ * parameter "dm-mod.create="
++ */
++int __init dm_early_create(struct dm_ioctl *dmi,
++			   struct dm_target_spec **spec_array,
++			   char **target_params_array);
++
+ struct queue_limits *dm_get_queue_limits(struct mapped_device *md);
+ 
+ /*
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.19/401-dm-init-fix-max-devices-targets-checks.patch b/target/linux/generic/backport-4.19/401-dm-init-fix-max-devices-targets-checks.patch
new file mode 100644
index 0000000000..59eb168b66
--- /dev/null
+++ b/target/linux/generic/backport-4.19/401-dm-init-fix-max-devices-targets-checks.patch
@@ -0,0 +1,48 @@
+From 4318792c96a76cf6ea2ae62afb1b045301d96a5c Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Fri, 26 Apr 2019 17:09:55 -0300
+Subject: [PATCH 2/4] dm init: fix max devices/targets checks
+
+dm-init should allow up to DM_MAX_{DEVICES,TARGETS} for devices/targets,
+and not DM_MAX_{DEVICES,TARGETS} - 1.
+
+Fix the checks and also fix the error message when the number of devices
+is surpassed.
+
+Fixes: 6bbc923dfcf57d ("dm: add support to directly boot to a mapped device")
+Cc: stable@vger.kernel.org
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Signed-off-by: Mike Snitzer <snitzer@redhat.com>
+---
+ drivers/md/dm-init.c | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/md/dm-init.c b/drivers/md/dm-init.c
+index b53f30f16b4d..2e791ee6779f 100644
+--- a/drivers/md/dm-init.c
++++ b/drivers/md/dm-init.c
+@@ -160,7 +160,7 @@ static int __init dm_parse_table(struct dm_device *dev, char *str)
+ 
+ 	while (table_entry) {
+ 		DMDEBUG("parsing table \"%s\"", str);
+-		if (++dev->dmi.target_count >= DM_MAX_TARGETS) {
++		if (++dev->dmi.target_count > DM_MAX_TARGETS) {
+ 			DMERR("too many targets %u > %d",
+ 			      dev->dmi.target_count, DM_MAX_TARGETS);
+ 			return -EINVAL;
+@@ -242,9 +242,9 @@ static int __init dm_parse_devices(struct list_head *devices, char *str)
+ 			return -ENOMEM;
+ 		list_add_tail(&dev->list, devices);
+ 
+-		if (++ndev >= DM_MAX_DEVICES) {
+-			DMERR("too many targets %u > %d",
+-			      dev->dmi.target_count, DM_MAX_TARGETS);
++		if (++ndev > DM_MAX_DEVICES) {
++			DMERR("too many devices %lu > %d",
++			      ndev, DM_MAX_DEVICES);
+ 			return -EINVAL;
+ 		}
+ 
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.19/402-dm-ioctl-fix-hang-in-early-create-error-condition.patch b/target/linux/generic/backport-4.19/402-dm-ioctl-fix-hang-in-early-create-error-condition.patch
new file mode 100644
index 0000000000..1a80b6d97d
--- /dev/null
+++ b/target/linux/generic/backport-4.19/402-dm-ioctl-fix-hang-in-early-create-error-condition.patch
@@ -0,0 +1,49 @@
+From c78ff5467e0f5c4d001b7ac80209441c6c107b26 Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Wed, 15 May 2019 13:50:54 -0300
+Subject: [PATCH 3/4] dm ioctl: fix hang in early create error condition
+
+The dm_early_create() function (which deals with "dm-mod.create=" kernel
+command line option) calls dm_hash_insert() who gets an extra reference
+to the md object.
+
+In case of failure, this reference wasn't being released, causing
+dm_destroy() to hang, thus hanging the whole boot process.
+
+Fix this by calling __hash_remove() in the error path.
+
+Fixes: 6bbc923dfcf57d ("dm: add support to directly boot to a mapped device")
+Cc: stable@vger.kernel.org
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Signed-off-by: Mike Snitzer <snitzer@redhat.com>
+---
+ drivers/md/dm-ioctl.c | 6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/drivers/md/dm-ioctl.c b/drivers/md/dm-ioctl.c
+index b7e6c7311a93..d7801688d7be 100644
+--- a/drivers/md/dm-ioctl.c
++++ b/drivers/md/dm-ioctl.c
+@@ -2068,7 +2068,7 @@ int __init dm_early_create(struct dm_ioctl *dmi,
+ 	/* alloc table */
+ 	r = dm_table_create(&t, get_mode(dmi), dmi->target_count, md);
+ 	if (r)
+-		goto err_destroy_dm;
++		goto err_hash_remove;
+ 
+ 	/* add targets */
+ 	for (i = 0; i < dmi->target_count; i++) {
+@@ -2115,6 +2115,10 @@ int __init dm_early_create(struct dm_ioctl *dmi,
+ 
+ err_destroy_table:
+ 	dm_table_destroy(t);
++err_hash_remove:
++	(void) __hash_remove(__get_name_cell(dmi->name));
++	/* release reference from __get_name_cell */
++	dm_put(md);
+ err_destroy_dm:
+ 	dm_put(md);
+ 	dm_destroy(md);
+-- 
+2.21.0
+
diff --git a/target/linux/generic/backport-4.19/403-Documentation-dm-init-fix-multi-device-example.patch b/target/linux/generic/backport-4.19/403-Documentation-dm-init-fix-multi-device-example.patch
new file mode 100644
index 0000000000..7d0d1af13f
--- /dev/null
+++ b/target/linux/generic/backport-4.19/403-Documentation-dm-init-fix-multi-device-example.patch
@@ -0,0 +1,45 @@
+From 072ea8a94e81e9744d18034b3245ab530f8365fc Mon Sep 17 00:00:00 2001
+From: Helen Koike <helen.koike@collabora.com>
+Date: Tue, 4 Jun 2019 15:27:19 -0300
+Subject: [PATCH 4/4] Documentation/dm-init: fix multi device example
+
+The example in the docs regarding multiple device-mappers is invalid (it
+has a wrong number of arguments), it's a left over from previous
+versions of the patch.
+Replace the example with an valid and tested one.
+
+Signed-off-by: Helen Koike <helen.koike@collabora.com>
+Reviewed-by: Stephen Boyd <swboyd@chromium.org>
+Signed-off-by: Jonathan Corbet <corbet@lwn.net>
+---
+ Documentation/device-mapper/dm-init.txt | 14 +++++++-------
+ 1 file changed, 7 insertions(+), 7 deletions(-)
+
+diff --git a/Documentation/device-mapper/dm-init.txt b/Documentation/device-mapper/dm-init.txt
+index 8464ee7c01b8..130b3c3679c5 100644
+--- a/Documentation/device-mapper/dm-init.txt
++++ b/Documentation/device-mapper/dm-init.txt
+@@ -74,13 +74,13 @@ this target to /dev/mapper/lroot (depending on the rules). No uuid was assigned.
+ An example of multiple device-mappers, with the dm-mod.create="..." contents is shown here
+ split on multiple lines for readability:
+ 
+-  vroot,,,ro,
+-    0 1740800 verity 254:0 254:0 1740800 sha1
+-      76e9be054b15884a9fa85973e9cb274c93afadb6
+-      5b3549d54d6c7a3837b9b81ed72e49463a64c03680c47835bef94d768e5646fe;
+-  vram,,,rw,
+-    0 32768 linear 1:0 0,
+-    32768 32768 linear 1:1 0
++  dm-linear,,1,rw,
++    0 32768 linear 8:1 0,
++    32768 1024000 linear 8:2 0;
++  dm-verity,,3,ro,
++    0 1638400 verity 1 /dev/sdc1 /dev/sdc2 4096 4096 204800 1 sha256
++    ac87db56303c9c1da433d7209b5a6ef3e4779df141200cbd7c157dcb8dd89c42
++    5ebfe87f7df3235b80a117ebc4078e44f55045487ad4a96581d1adb564615b51
+ 
+ Other examples (per target):
+ 
+-- 
+2.21.0
+
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
