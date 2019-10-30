Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DF8EA0B4
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JEMWWncNb1PhUtsx4gtE1+WhIyzmM22qYbBWDknckjk=; b=PL+SUg5e7t3qVa
	76lmE4GOshpHls+ZcgDeorXGvjzZbh0JNC2UAzrdjBsj3cQ1W+rhDOkWL5aTwO3rbZ/DiIHaZvjkD
	VfOpWxO0rGLjotbH8IPrcte3aTAgMOpMtfNaxaJC0BXezYbE4jwqCHzsUF/mbc3jvzJmuUsbTlBv2
	O+ZKmTmm9e4h7GXj7TiMOycvsrIi2CxIZIOa/Gw+r8SLvq6LoNjWpJEwu64ks08d6R/RHA/UY0wpZ
	kPS6kg2WbgC1KZIVlYKBcAcy1ahLoi2Al3pQkkvgJ+kM6b8y+cJef8FKypHTMc5k9k4ASCSjAxix1
	Z9uTR/WAjPYKsJvefuNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqUu-0002lQ-3n; Wed, 30 Oct 2019 16:07:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqUn-0002lI-MR
 for openwrt-devel@bombadil.infradead.org; Wed, 30 Oct 2019 16:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qYsZeNvGR5in5PCPSd3sIqlWEpK7V0BJNsAS2xvTLaw=; b=iS3cBIHgQ0He6ejHuShl8bt1qK
 GskM7xgIBcaN+ZNtU9l0qEBGyP0/OJtbgAY/hHmNSoq5mtRBUMuMuI1G5gVgRMuS+kwDshT+17XJ8
 aDI0dMcQRClUvCFn2XnqV01CGbt/vtI1mWcTSJ8TgWujnwLNeBfqq0WV84ftnHn+NGoeZhQajTR0m
 fx/BcEdYwr61cYUSfJXO+R0fNiqkSaW7xrgu63gSFVwY7KrfN90ua6yYsLAfViij6JmbJBKDkd8gZ
 Nb+T+eqLg6Yo66BNts++66xe3d7QDqPc2qRHYdQXK/1hrAp4JdcKB3qgSFVy33nOdvVs7YRHdSB3O
 WjZsfwMQ==;
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqVD-0003fs-UQ
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:07:22 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iPqKs-0001mk-Ml
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:56:40 +0100
Date: Wed, 30 Oct 2019 16:56:27 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191030155627.GA139299@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_160720_021082_5EDF504A 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH netifd 2/5] wireless: serialize wireless
 interface configuration
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

From: John Crispin <john@phrozen.org>

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 wireless.c | 57 ++++++++++++++++++++++++++++++++++++++++++++++++++++--
 wireless.h |  7 +++++++
 2 files changed, 62 insertions(+), 2 deletions(-)

diff --git a/wireless.c b/wireless.c
index 9986e9a..06afea3 100644
--- a/wireless.c
+++ b/wireless.c
@@ -23,6 +23,8 @@ struct vlist_tree wireless_devices;
 struct avl_tree wireless_drivers;
 static struct blob_buf b;
 static int drv_fd;
+static LIST_HEAD(handlers);
+static bool handler_pending;
 
 static const struct blobmsg_policy wdev_policy =
 	{ .name = "disabled", .type = BLOBMSG_TYPE_BOOL };
@@ -52,6 +54,15 @@ static const struct uci_blob_param_list vif_param = {
 	.params = vif_policy,
 };
 
+static void
+wireless_handler_stop(struct wireless_device *wdev)
+{
+	if (wdev->handler_pending) {
+		wdev->handler_pending = false;
+		list_del(&wdev->handler);
+	}
+}
+
 static void
 put_container(struct blob_buf *buf, struct blob_attr *attr, const char *name)
 {
@@ -188,6 +199,7 @@ wireless_device_free_state(struct wireless_device *wdev)
 {
 	struct wireless_interface *vif;
 
+	wireless_handler_stop(wdev);
 	uloop_timeout_cancel(&wdev->script_check);
 	uloop_timeout_cancel(&wdev->timeout);
 	wireless_complete_kill_request(wdev);
@@ -236,6 +248,7 @@ wireless_device_setup_cancel(struct wireless_device *wdev)
 	if (wdev->cancel)
 		return;
 
+	wireless_handler_stop(wdev);
 	D(WIRELESS, "Cancel wireless device '%s' setup\n", wdev->name);
 	wdev->cancel = true;
 	uloop_timeout_set(&wdev->timeout, 10 * 1000);
@@ -250,6 +263,17 @@ wireless_device_run_handler(struct wireless_device *wdev, bool up)
 	int i = 0;
 	int fds[2] = { -1, -1 };
 
+	wireless_handler_stop(wdev);
+
+	if (handler_pending && wdev->serialize) {
+		wdev->handler_action = up;
+		wdev->handler_pending = true;
+		list_add_tail(&wdev->handler, &handlers);
+		return;
+	}
+	if (wdev->serialize)
+		handler_pending = true;
+
 	D(WIRELESS, "Wireless device '%s' run %s handler\n", wdev->name, action);
 	if (!up && wdev->prev_config) {
 		config = blobmsg_format_json(wdev->prev_config, true);
@@ -281,6 +305,21 @@ wireless_device_run_handler(struct wireless_device *wdev, bool up)
 	free(config);
 }
 
+static void
+wireless_handler_next(void)
+{
+	struct wireless_device *wdev;
+
+	if (handler_pending)
+		return;
+	if (list_empty(&handlers))
+		return;
+	wdev = list_first_entry(&handlers, struct wireless_device, handler);
+	list_del(&wdev->handler);
+	wdev->handler_pending = false;
+	wireless_device_run_handler(wdev, wdev->handler_action);
+}
+
 static void
 __wireless_device_set_up(struct wireless_device *wdev, int force)
 {
@@ -305,6 +344,7 @@ __wireless_device_set_up(struct wireless_device *wdev, int force)
 static void
 wireless_device_free(struct wireless_device *wdev)
 {
+	wireless_handler_stop(wdev);
 	vlist_flush_all(&wdev->interfaces);
 	avl_delete(&wireless_devices.avl, &wdev->node.avl);
 	free(wdev->config);
@@ -353,6 +393,10 @@ wireless_device_setup_timeout(struct uloop_timeout *timeout)
 {
 	struct wireless_device *wdev = container_of(timeout, struct wireless_device, timeout);
 
+	if (wdev->handler_pending) {
+		wdev->handler_pending = false;
+		list_del(&wdev->handler);
+	}
 	netifd_kill_process(&wdev->script_task);
 	wdev->script_task.cb(&wdev->script_task, -1);
 	wireless_device_mark_down(wdev);
@@ -371,7 +415,7 @@ wireless_device_reconf(struct wireless_device *wdev)
 {
 	wdev->retry = WIRELESS_SETUP_RETRY;
 	wdev->autostart = true;
-	__wireless_device_set_up(wdev, 1);
+	__wireless_device_set_up(wdev, wdev->reconf && (wdev->state == IFS_UP));
 }
 
 static void
@@ -433,6 +477,11 @@ wireless_device_script_task_cb(struct netifd_process *proc, int ret)
 	default:
 		break;
 	}
+
+	if (wdev->serialize) {
+		handler_pending = false;
+		wireless_handler_next();
+	}
 }
 
 void
@@ -452,7 +501,7 @@ wdev_set_config_state(struct wireless_device *wdev, enum interface_config_state
 	wdev->config_state = s;
 	if (wdev->state == IFS_DOWN)
 		wdev_handle_config_change(wdev);
-	else
+	else if (!wdev->reconf || wdev->state != IFS_UP)
 		__wireless_device_set_down(wdev);
 }
 
@@ -501,6 +550,7 @@ wdev_update(struct vlist_tree *tree, struct vlist_node *node_new,
 	struct wireless_device *wd_new = container_of(node_new, struct wireless_device, node);
 
 	if (wd_old && wd_new) {
+		D(WIRELESS, "Update wireless device '%s'\n", wd_old->name);
 		wdev_change_config(wd_old, wd_new);
 	} else if (wd_old) {
 		D(WIRELESS, "Delete wireless device '%s'\n", wd_old->name);
@@ -698,6 +748,9 @@ wireless_device_create(struct wireless_driver *drv, const char *name, struct blo
 	wdev->config_state = IFC_NORMAL;
 	wdev->name = strcpy(name_buf, name);
 	wdev->config = data;
+	wdev->handler_pending = false;
+	wdev->serialize = true;
+	wdev->reconf = true;
 	wdev->retry_setup_failed = false;
 	wdev->autostart = true;
 	INIT_LIST_HEAD(&wdev->script_proc);
diff --git a/wireless.h b/wireless.h
index bade738..f734770 100644
--- a/wireless.h
+++ b/wireless.h
@@ -15,6 +15,7 @@
 #define __NETIFD_WIRELESS_H
 
 #include <libubox/utils.h>
+#include <libubox/list.h>
 #include "interface.h"
 
 extern struct vlist_tree wireless_devices;
@@ -35,6 +36,11 @@ struct wireless_driver {
 struct wireless_device {
 	struct vlist_node node;
 
+	struct list_head handler;
+	bool handler_action;
+	bool handler_pending;
+	bool serialize;
+
 	struct wireless_driver *drv;
 	struct vlist_tree interfaces;
 	char *name;
@@ -59,6 +65,7 @@ struct wireless_device {
 
 	enum interface_state state;
 	enum interface_config_state config_state;
+	bool reconf;
 	bool cancel;
 	int retry;
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
