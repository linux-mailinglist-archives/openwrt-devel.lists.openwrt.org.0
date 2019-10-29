Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316FAE886A
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfQTt4Vqygfq1S/hUaLqwyK2IalG5FUKAKjsFRLPdY0=; b=RLG+Frcwj+ZKr4
	/wF6B7YIszlqavEqvaQIJU27N/a2IyGUTVy5mILkO6qVN15z5QbZMTlb5kwwoVRV+c5FQO80XGPIn
	Yyn5FAiZEvmraaGt56osZIRaGO2bRpOtMl+QzRhqu9kZBAZE2mJ6DM85X3IuwtBeOjYmw3zbnEUyW
	onBeG9ISwrAtyDZ3zm4z4EnZ7ZNExL5LnLCIEzvQ8b2d/6tuVcgBSOxhhBjd4ZuYI7OakStsOcmqs
	Go6DUTlztzYxCOrzjS26AtPgdb6v3HaGYD2rTDzcF4INBGsGR6RQ7t0QfbfVHJp66pj9ByRgrqq+a
	uWUeaCeL07i8KfWtjnnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQnh-0002Qx-JK; Tue, 29 Oct 2019 12:40:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQnG-0002DV-US
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:40:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id c184so9515732pfb.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 05:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LuBKWYdqI83qUSwo6qPNNJD5CjVE+jF1ISzPRKycLLg=;
 b=LiPdNK3Ww0RixIeDgkEZENKDf6HVlLlbzfWpyTaKv6tWljw1Yn7RjytKu3So2h9ql1
 9Svjeq3w+jccYg4HTTK5f98sXXWxaYicqw2mBbESJxny5re4N4fjlbZBhs3CCkcP3l+O
 B2L3nlzsKY9/e7ASOtn0uDJIy04FnwXaTGieZasc2qdx8RN4zi7tZOmdm7lWjp2k8xnN
 0QK2BrkO9ugy4V0bPfOYbQWesYfv8eke6TUDbxxQZUzxJzmKlbj7SKLUqLiM4CAn0ytt
 hg2K3ueNAXcUbCtNbQhSbaVEjIChJrdQCG7H+iGyLD3pW35iqj1+3xSnq7ZhMAeryAq9
 zxOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LuBKWYdqI83qUSwo6qPNNJD5CjVE+jF1ISzPRKycLLg=;
 b=pIcs7qumvj2W0QN/DjX+IHA+z24vxzVGje2YKpJMHia5JB7A+omyb3FgspcVnfHxKL
 18PYY9jZP5Ed2gEbbDZL1zKS1gHwE86LI1DGL0SI7gMkLndfJYL1w6B8lgkee3nT2vEf
 cqRvh1riXz3EmXGM0j72jV3ZCt3OS+fWeVC5TcnrOKXPHatJFugm/EmQLpFUc+BJuSI2
 ccMh5EycWt12iSoEIteRKGT3RkH+JsMbXflRrLw6+U4rfQkK3Y5Wpzfl9AaD0nUO4o4i
 eaKn6wftiyx0tf3NJPy53dF1u/z5sExf47Z0N3Tk7XrS6TMoc7fGQTBTvovUAUaqkYf0
 TzVA==
X-Gm-Message-State: APjAAAVJgTasoTtW0WZrXp9asczuaNh0h24GagRGlXQ75lGv7jhCOENp
 x7x2pAKQab4xUhT1ClNya/c=
X-Google-Smtp-Source: APXvYqzUYiZskJ6e7xviVCa5guslmYJf5/F0vISd8ij9z9H2STDwZ3io9Lno4aRZyQ6ejwGnv8kXMg==
X-Received: by 2002:a65:41c5:: with SMTP id b5mr10367848pgq.78.1572352814161; 
 Tue, 29 Oct 2019 05:40:14 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id b26sm1090782pgs.93.2019.10.29.05.40.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 05:40:13 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: john@phrozen.org
Date: Tue, 29 Oct 2019 12:39:47 +0000
Message-Id: <20191029123950.40794-2-yszhou4tech@gmail.com>
In-Reply-To: <20191029123950.40794-1-yszhou4tech@gmail.com>
References: <20191029123950.40794-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054014_993907_042434B9 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools 2/5] block: support hierarchical
 mount/umount
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is needed when e.g. sda1 needs to be mounted to /mnt and sda2
/mnt/srv.  We need to make sure sda1 was mounted first.

"devices" is now an ordered list with elements pointing to both "struct
probe_info" and "struct mount".  The order is firstly on presence of
mount info, then strlen(mount.target), then strcmp(probe_info.dev)

Resolves FS#2214

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 block.c | 152 +++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 101 insertions(+), 51 deletions(-)

diff --git a/block.c b/block.c
index 99672fb..66dcf9c 100644
--- a/block.c
+++ b/block.c
@@ -82,9 +82,20 @@ struct mount {
 	unsigned int prio;
 };
 
-static struct vlist_tree mounts;
+struct device {
+	struct vlist_node node;
+
+	struct probe_info *pr;
+	struct mount *m;
+};
+
+static void vlist_nop_update(struct vlist_tree *tree, struct vlist_node *node_new,
+			  struct vlist_node *node_old);
+static int devices_cmp(const void *k1, const void *k2, void *ptr);
+
 static struct blob_buf b;
-static LIST_HEAD(devices);
+static VLIST_TREE(mounts, avl_strcmp, vlist_nop_update, false, false);
+static VLIST_TREE(devices, devices_cmp, vlist_nop_update, false, false);
 static int anon_mount, anon_swap, auto_mount, auto_swap, check_fs;
 static unsigned int delay_root;
 
@@ -409,9 +420,10 @@ static struct mount* find_block(const char *uuid, const char *label, const char
 	return NULL;
 }
 
-static void mounts_update(struct vlist_tree *tree, struct vlist_node *node_new,
+static void vlist_nop_update(struct vlist_tree *tree, struct vlist_node *node_new,
 			  struct vlist_node *node_old)
 {
+	// NOTE: free on delete skipped
 }
 
 static struct uci_package * config_try_load(struct uci_context *ctx, char *path)
@@ -442,8 +454,6 @@ static int config_load(char *cfg)
 	struct uci_element *e;
 	char path[64];
 
-	vlist_init(&mounts, avl_strcmp, mounts_update);
-
 	if (cfg) {
 		snprintf(path, sizeof(path), "%s/upper/etc/config/fstab", cfg);
 		pkg = config_try_load(ctx, path);
@@ -482,15 +492,15 @@ static int config_load(char *cfg)
 
 static struct probe_info* _probe_path(char *path)
 {
-	struct probe_info *pr;
+	struct device *dev;
 	char tmppath[64];
 
 	/* skip ubi device if ubiblock device is present */
 	if (path[5] == 'u' && path[6] == 'b' && path[7] == 'i' &&
 	    path[8] >= '0' && path[8] <= '9' ) {
 		snprintf(tmppath, sizeof(tmppath), "/dev/ubiblock%s", path + 8);
-		list_for_each_entry(pr, &devices, list)
-			if (!strcasecmp(pr->dev, tmppath))
+		vlist_for_each_element(&devices, dev, node)
+			if (!strcasecmp(dev->pr->dev, tmppath))
 				return NULL;
 	}
 
@@ -502,14 +512,20 @@ static int _cache_load(const char *path)
 	int gl_flags = GLOB_NOESCAPE | GLOB_MARK;
 	int j;
 	glob_t gl;
+	struct device *dev;
 
 	if (glob(path, gl_flags, NULL, &gl) < 0)
 		return -1;
 
 	for (j = 0; j < gl.gl_pathc; j++) {
 		struct probe_info *pr = _probe_path(gl.gl_pathv[j]);
-		if (pr)
-			list_add_tail(&pr->list, &devices);
+		if (pr) {
+			dev = malloc(sizeof(struct device));
+			dev->pr = pr;
+			dev->m = find_block(pr->uuid, pr->label,
+					basename(pr->dev), NULL);
+			vlist_add(&devices, &dev->node, dev);
+		}
 	}
 
 	globfree(&gl);
@@ -517,8 +533,30 @@ static int _cache_load(const char *path)
 	return 0;
 }
 
+static int devices_cmp(const void *k1, const void *k2, void *ptr)
+{
+	struct device *dev1 = (struct device *)k1;
+	struct device *dev2 = (struct device *)k2;
+
+	if (dev1->m) {
+		if (!dev2->m)
+			return -1;
+		if (dev1->m->type == TYPE_MOUNT && dev2->m->type == TYPE_MOUNT &&
+				dev1->m->target && dev2->m->target) {
+			int len1 = strlen(dev1->m->target);
+			int len2 = strlen(dev2->m->target);
+			if (len1 != len2)
+				return len1 - len2;
+		}
+	} else if (dev2->m) {
+		return 1;
+	}
+	return strcmp(dev1->pr->dev, dev2->pr->dev);
+}
+
 static void cache_load(int mtd)
 {
+	vlist_update(&devices);
 	if (mtd) {
 		_cache_load("/dev/mtdblock*");
 		_cache_load("/dev/ubiblock*");
@@ -533,6 +571,7 @@ static void cache_load(int mtd)
 	_cache_load("/dev/vd*");
 	_cache_load("/dev/xvd*");
 	_cache_load("/dev/mapper/*");
+	vlist_flush(&devices);
 }
 
 
@@ -553,24 +592,24 @@ static int print_block_uci(struct probe_info *pr)
 	return 0;
 }
 
-static struct probe_info* find_block_info(char *uuid, char *label, char *path)
+static struct device* find_block_device(char *uuid, char *label, char *path)
 {
-	struct probe_info *pr = NULL;
+	struct device *dev;
 
 	if (uuid)
-		list_for_each_entry(pr, &devices, list)
-			if (pr->uuid && !strcasecmp(pr->uuid, uuid))
-				return pr;
+		vlist_for_each_element(&devices, dev, node)
+			if (dev->pr->uuid && !strcasecmp(dev->pr->uuid, uuid))
+				return dev;
 
 	if (label)
-		list_for_each_entry(pr, &devices, list)
-			if (pr->label && !strcmp(pr->label, label))
-				return pr;
+		vlist_for_each_element(&devices, dev, node)
+			if (dev->pr->label && !strcmp(dev->pr->label, label))
+				return dev;
 
 	if (path)
-		list_for_each_entry(pr, &devices, list)
-			if (pr->dev && !strcmp(basename(pr->dev), basename(path)))
-				return pr;
+		vlist_for_each_element(&devices, dev, node)
+			if (dev->pr->dev && !strcmp(basename(dev->pr->dev), basename(path)))
+				return dev;
 
 	return NULL;
 }
@@ -1022,18 +1061,20 @@ static int blockd_notify(char *device, struct mount *m, struct probe_info *pr)
 	return err;
 }
 
-static int mount_device(struct probe_info *pr, int type)
+static int mount_device(struct device *dev, int type)
 {
 	struct mount *m;
+	struct probe_info *pr;
 	char _target[32];
 	char *target;
 	char *device;
 	char *mp;
 	int err;
 
-	if (!pr)
+	if (!dev)
 		return -1;
 
+	pr = dev->pr;
 	device = basename(pr->dev);
 
 	if (!strcmp(pr->type, "swap")) {
@@ -1053,7 +1094,7 @@ static int mount_device(struct probe_info *pr, int type)
 		return -1;
 	}
 
-	m = find_block(pr->uuid, pr->label, device, NULL);
+	m = dev->m;
 	if (m && m->extroot)
 		return -1;
 
@@ -1170,7 +1211,7 @@ static int mount_action(char *action, char *device, int type)
 		return -1;
 	cache_load(0);
 
-	return mount_device(find_block_info(NULL, NULL, path), type);
+	return mount_device(find_block_device(NULL, NULL, path), type);
 }
 
 static int main_hotplug(int argc, char **argv)
@@ -1186,19 +1227,21 @@ static int main_autofs(int argc, char **argv)
 		return -1;
 
 	if (!strcmp(argv[2], "start")) {
+		struct device *dev;
 		struct probe_info *pr;
 
 		if (config_load(NULL))
 			return -1;
 
 		cache_load(0);
-		list_for_each_entry(pr, &devices, list) {
+		vlist_for_each_element(&devices, dev, node) {
 			struct mount *m;
 
+			pr = dev->pr;
 			if (!strcmp(pr->type, "swap"))
 				continue;
 
-			m = find_block(pr->uuid, pr->label, NULL, NULL);
+			m = dev->m;
 			if (m && m->extroot)
 				continue;
 
@@ -1362,7 +1405,8 @@ static int test_fs_support(const char *name)
 
 static int check_extroot(char *path)
 {
-	struct probe_info *pr = NULL;
+	struct device *dev;
+	struct probe_info *pr;
 	char devpath[32];
 
 #ifdef UBIFS_EXTROOT
@@ -1385,7 +1429,8 @@ static int check_extroot(char *path)
 	}
 #endif
 
-	list_for_each_entry(pr, &devices, list) {
+	vlist_for_each_element(&devices, dev, node) {
+		pr = dev->pr;
 		if (!strcmp(pr->dev, devpath)) {
 			struct stat s;
 			FILE *fp = NULL;
@@ -1443,6 +1488,7 @@ static int mount_extroot(char *cfg)
 	char overlay[] = "/tmp/extroot/overlay";
 	char mnt[] = "/tmp/extroot/mnt";
 	char *path = mnt;
+	struct device *dev;
 	struct probe_info *pr;
 	struct mount *m;
 	int err = -1;
@@ -1463,16 +1509,17 @@ static int mount_extroot(char *cfg)
 	}
 
 	/* Find block device pointed by the mount config */
-	pr = find_block_info(m->uuid, m->label, m->device);
+	dev = find_block_device(m->uuid, m->label, m->device);
 
-	if (!pr && delay_root){
+	if (!dev && delay_root){
 		ULOG_INFO("extroot: device not present, retrying in %u seconds\n", delay_root);
 		sleep(delay_root);
 		make_devs();
 		cache_load(0);
-		pr = find_block_info(m->uuid, m->label, m->device);
+		dev = find_block_device(m->uuid, m->label, m->device);
 	}
-	if (pr) {
+	if (dev) {
+		pr = dev->pr;
 		if (strncmp(pr->type, "ext", 3) &&
 		    strncmp(pr->type, "f2fs", 4) &&
 		    strncmp(pr->type, "btrfs", 5) &&
@@ -1516,7 +1563,6 @@ static int mount_extroot(char *cfg)
 
 static int main_extroot(int argc, char **argv)
 {
-	struct probe_info *pr;
 	char blkdev_path[32] = { 0 };
 	int err = -1;
 #ifdef UBIFS_EXTROOT
@@ -1545,8 +1591,8 @@ static int main_extroot(int argc, char **argv)
 	/* Start with looking for MTD partition */
 	find_block_mtd("\"rootfs_data\"", blkdev_path, sizeof(blkdev_path));
 	if (blkdev_path[0]) {
-		pr = find_block_info(NULL, NULL, blkdev_path);
-		if (pr && !strcmp(pr->type, "jffs2")) {
+		struct device *dev = find_block_device(NULL, NULL, blkdev_path);
+		if (dev && !strcmp(dev->pr->type, "jffs2")) {
 			char cfg[] = "/tmp/jffs_cfg";
 
 			/*
@@ -1592,14 +1638,14 @@ static int main_extroot(int argc, char **argv)
 
 static int main_mount(int argc, char **argv)
 {
-	struct probe_info *pr;
+	struct device *dev;
 
 	if (config_load(NULL))
 		return -1;
 
 	cache_load(1);
-	list_for_each_entry(pr, &devices, list)
-		mount_device(pr, TYPE_DEV);
+	vlist_for_each_element(&devices, dev, node)
+		mount_device(dev, TYPE_DEV);
 
 	handle_swapfiles(true);
 
@@ -1608,6 +1654,7 @@ static int main_mount(int argc, char **argv)
 
 static int main_umount(int argc, char **argv)
 {
+	struct device *dev;
 	struct probe_info *pr;
 	bool all = false;
 
@@ -1621,13 +1668,14 @@ static int main_umount(int argc, char **argv)
 	if (argc == 3)
 		all = !strcmp(argv[2], "-a");
 
-	list_for_each_entry(pr, &devices, list) {
+	vlist_for_each_element_reverse(&devices, dev, node) {
 		struct mount *m;
 
+		pr = dev->pr;
 		if (!strcmp(pr->type, "swap"))
 			continue;
 
-		m = find_block(pr->uuid, pr->label, basename(pr->dev), NULL);
+		m = dev->m;
 		if (m && m->extroot)
 			continue;
 
@@ -1639,7 +1687,7 @@ static int main_umount(int argc, char **argv)
 
 static int main_detect(int argc, char **argv)
 {
-	struct probe_info *pr;
+	struct device *dev;
 
 	cache_load(0);
 	printf("config 'global'\n");
@@ -1649,8 +1697,8 @@ static int main_detect(int argc, char **argv)
 	printf("\toption\tauto_mount\t'1'\n");
 	printf("\toption\tdelay_root\t'5'\n");
 	printf("\toption\tcheck_fs\t'0'\n\n");
-	list_for_each_entry(pr, &devices, list)
-		print_block_uci(pr);
+	vlist_for_each_element(&devices, dev, node)
+		print_block_uci(dev->pr);
 
 	return 0;
 }
@@ -1658,12 +1706,12 @@ static int main_detect(int argc, char **argv)
 static int main_info(int argc, char **argv)
 {
 	int i;
-	struct probe_info *pr;
+	struct device *dev;
 
 	cache_load(1);
 	if (argc == 2) {
-		list_for_each_entry(pr, &devices, list)
-			print_block_info(pr);
+		vlist_for_each_element(&devices, dev, node)
+			print_block_info(dev->pr);
 
 		return 0;
 	};
@@ -1679,9 +1727,9 @@ static int main_info(int argc, char **argv)
 			ULOG_ERR("%s is not a block device\n", argv[i]);
 			continue;
 		}
-		pr = find_block_info(NULL, NULL, argv[i]);
-		if (pr)
-			print_block_info(pr);
+		dev = find_block_device(NULL, NULL, argv[i]);
+		if (dev)
+			print_block_info(dev->pr);
 	}
 
 	return 0;
@@ -1703,6 +1751,7 @@ static int main_swapon(int argc, char **argv)
 	FILE *fp;
 	char *lineptr;
 	size_t s;
+	struct device *dev;
 	struct probe_info *pr;
 	int flags = 0;
 	int pri;
@@ -1727,7 +1776,8 @@ static int main_swapon(int argc, char **argv)
 			return 0;
 		case 'a':
 			cache_load(0);
-			list_for_each_entry(pr, &devices, list) {
+			vlist_for_each_element(&devices, dev, node) {
+				pr = dev->pr;
 				if (strcmp(pr->type, "swap"))
 					continue;
 				if (swapon(pr->dev, 0))

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
