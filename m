Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F4F1DBBE5
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 19:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eLm1Q0fv9GLQrOjj03iQJ4uGe/DYOw2UTRZFOrJ0dI0=; b=Fjz4rTYj0nY5FC
	3sNIpBB3mqP2yc9bjXwmpuoqP8NwhuL5C9pF6ZvNXKcllSj7FV/8EGHH/qWaPKIR4wlNKyHDMRUFj
	sSAfFDyaz+LFZfnxb3DE2eXJ0NlTDs38ULRz+4HnZ8e7P5SbGJrB7beoHy+nMkY+1gt/NI63GBgPU
	tjixLkhbzfy9cyTNs0uz4JGM7Umi0AXL/b4DN3xav/mRjocnhJd88xtHQJo8PatyAGJkSt+8EFzvp
	MzWXJbtnPsEfTANx+8IMJBIDWhYJ7rflOQZAf6FPp4Xm+U+0vJtspdeh6pw4hfUJEQd83l/EfICq9
	XIIG6wESslkgHJUhj5Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSqU-0003lA-PX; Wed, 20 May 2020 17:49:34 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSqN-0003kk-BS
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 17:49:28 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cx22so1660869pjb.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 10:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FuVMdTGXLEL+jVqwP7SbqOHen6tJYjJIDUCQerOzwwk=;
 b=RNs0HX70YeHBVjbGAbNqrzmpdavY9nUdpBSnIZKJ+PG26hlFKxshPzymAwT5sOVDwG
 P7oc9dDHt6XMOG4N55Hy7fa5kV2KsyT9p7ZxF+Pt/ku8Nm+xEEo4qF+bxBddoaUUVxgS
 cGG//F6r7PhJyG9zcFsdbCWyC8Cd9DaRvgo0c1Ly6sndeGW+K22mqsWLzJwCzfJ9xd3n
 9sdKvl5JyKizf84MJCPlFmnHjV2iitl2swHCAB5Us4l/iaxrlchKZqqK+DEUSFlo0+NI
 K62jtPi5kONCdZhAySMKWVpc8ZpwUSjRU6jN+1kF8KCpynxGDYlTTDyhl1AWJRqTYP9A
 7ySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FuVMdTGXLEL+jVqwP7SbqOHen6tJYjJIDUCQerOzwwk=;
 b=WiS1QQ1NFGQ5jBagkzTKLrI0eIF0DbBuvjADaxpF0PzY+3oXdGHUTnoIbVYXGmnmvv
 3m78ySLR72g2t5RSm+kPrW/9ZEv4d4xmKvo5/Kg90lidUqyAiCH0lUyW4fwdNA/n+aaW
 kiluc6SuXLA416gQOiv3jV+eVa+hPfDHubv0bVz9CLsP/4Kmb9jVC+s4nMUE72KByA57
 /wfwrNARRRoHLwvBWXN20dX1lZVh239+OSUJqyq2c4SKlG+laBgd3pxdqacUGz6YdWWy
 LDw9Nezh+7q4OW++jA0e9cJ+fGRnVwAGwe1A3V5dRgF7HoFLE5Gun/7UA+bzw290iu/J
 2VPA==
X-Gm-Message-State: AOAM533nBg5egxk4mZF4/Y9mFzUKGk0r9KiFqxalYgRF0uyv9y8UEO+9
 haoJW9o3OOFLRZjaHVr8mYDbA4HnH0k=
X-Google-Smtp-Source: ABdhPJwA3l3GLl08pfJsV2mxcbs99uI6jjxj5UmLUGghQXjDsNVQZP77lQfVe0wRfwGEq1StMspbgg==
X-Received: by 2002:a17:902:26f:: with SMTP id
 102mr5144076plc.209.1589996966150; 
 Wed, 20 May 2020 10:49:26 -0700 (PDT)
Received: from localhost.localdomain (c-71-198-190-32.hsd1.ca.comcast.net.
 [71.198.190.32])
 by smtp.gmail.com with ESMTPSA id 7sm2647585pfc.203.2020.05.20.10.49.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 10:49:25 -0700 (PDT)
From: sean-m-miller <seanmmiller.business@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 May 2020 10:49:21 -0700
Message-Id: <20200520174921.61505-1-seanmmiller.business@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_104927_395990_5B46FBC1 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanmmiller.business[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] fstools: fix mount_root overlay comments
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
Cc: sean-m-miller <seanmmiller.business@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sysupgrades that preserve volatile files ('sysupgrade -c ...') replace
the 0xDEADCODE marker at the rootfs/rootfs_data boundary with the tar
bundle of preserved files. The 0xDEADCODE marker is moved to the start
of the next erase block.

Upon the subsequent first boot, the mount_root utility reads a valid
jffs2 file in the first block of rootfs_data, concludes that the
partition has already been formatted, and summons the jffs2 driver.
The jffs2 driver finds the 0xDEADCODE marker after the tar file
and assumes that now is a safe time to format the rootfs_data
partition and launch the jffs2 overlay.

This is a bug, since preinit_main hangs while the jffs2 driver
formats the partition, which can cause fatal soft lockups on systems
with weak cpu and large rootfs_data partitions. The intended behavior
for a first boot is to have mount_root kick off an intermediate tmpfs
overlay, deferring the jffs2 switch until the /etc/init.d/done call.

Patching this bug would lead to the preserved files being lost
during upgrades or downgrades to or from the fixed build, so it is
probably best to leave it as is. Fortunately, the preinit_main hang
is survivable on most current systems. This bug should be described in
comments for the sake of maintaining accurate descriptions of the system.

Signed-off-by: Sean Miller <seanmmiller.business@gmail.com>
---
 .../patches/010-mount_root-overlay-bug.patch     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 package/system/fstools/patches/010-mount_root-overlay-bug.patch

diff --git a/package/system/fstools/patches/010-mount_root-overlay-bug.patch b/package/system/fstools/patches/010-mount_root-overlay-bug.patch
new file mode 100644
index 0000000000..c2d72e3d9b
--- /dev/null
+++ b/package/system/fstools/patches/010-mount_root-overlay-bug.patch
@@ -0,0 +1,16 @@
+--- a/mount_root.c
++++ b/mount_root.c
+@@ -75,6 +75,13 @@ start(int argc, char *argv[1])
+ 	case FS_F2FS:
+ 	case FS_JFFS2:
+ 	case FS_UBIFS:
++		/*
++		 * Filesystem is in a valid state so we can go ahead and mount
++		 * the target overlay, or this is the first boot after an upgrade
++		 * that preserved files, so we hang preinit_main while we format
++		 * the partition (oops... this is undesired) and then launch the
++		 * target overlay (skip the intermediate tmpfs step).
++		 */
+ 		mount_overlay(data);
+ 		break;
+ 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
