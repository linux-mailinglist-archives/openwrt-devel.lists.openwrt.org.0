Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE52F60B3
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 18:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDAWRgR0iWgrEflat9kWFlCv1NFSupc0oBCfqe35o14=; b=QTpZ1qsrFj5Dn0
	f8odeqYeBmGD8/isYXWOgq9s24u16HdNJ/mBbAnihSXmIpWRK6upv4xik+LKlOyoBXDKnH2u23QlX
	rUOjfzx9RJw6uisEXQT/u9juuaBoaj6Nh+6wg5f8arbrxaFMnoa2gUv/0L7YzD279EbDHN9BOjxUE
	s2+GMCyamldVbQzt69aWIaQaDHdFGkSykwLW+uFiSOUAnguuCMnZ+c0oGgA+ED4dIn0vHGI2LWCxt
	P/Bh+gDCFUnWN637LoqmwcdgKpyJTi0hcNgdoLsekC0H9wWi9/03JvVjqpZ0FnQK3cZsDOIEW5iYs
	CJ1x1FzvwaE6TlOMhtyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUaC-0001jI-MU; Sat, 09 Nov 2019 17:31:32 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUZy-0001ih-IY
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 17:31:20 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iTUZt-0002HZ-7O; Sat, 09 Nov 2019 18:31:14 +0100
Date: Sat, 9 Nov 2019 18:31:00 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
Message-ID: <20191109173100.GA103290@makrotopia.org>
References: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_093118_610729_01B66D2A 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 netifd 1/5] wireless: add ubus method for
 reloading configuration
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
v2: unchanged
 ubus.c     | 23 +++++++++++++++++++++++
 wireless.c | 18 +++++++++++++-----
 wireless.h |  1 +
 3 files changed, 37 insertions(+), 5 deletions(-)

diff --git a/ubus.c b/ubus.c
index 150d818..5a2a339 100644
--- a/ubus.c
+++ b/ubus.c
@@ -1081,6 +1081,28 @@ get_wdev(struct blob_attr *msg, int *ret)
 	return wdev;
 }
 
+static int
+netifd_handle_wdev_reconf(struct ubus_context *ctx, struct ubus_object *obj,
+		          struct ubus_request_data *req, const char *method,
+		          struct blob_attr *msg)
+{
+	struct wireless_device *wdev;
+	int ret;
+
+	wdev = get_wdev(msg, &ret);
+	if (ret == UBUS_STATUS_NOT_FOUND)
+		return ret;
+
+	if (wdev) {
+		wireless_device_reconf(wdev);
+	} else {
+		vlist_for_each_element(&wireless_devices, wdev, node)
+			wireless_device_reconf(wdev);
+	}
+
+	return 0;
+}
+
 static int
 netifd_handle_wdev_up(struct ubus_context *ctx, struct ubus_object *obj,
 		      struct ubus_request_data *req, const char *method,
@@ -1189,6 +1211,7 @@ netifd_handle_wdev_notify(struct ubus_context *ctx, struct ubus_object *obj,
 static struct ubus_method wireless_object_methods[] = {
 	{ .name = "up", .handler = netifd_handle_wdev_up },
 	{ .name = "down", .handler = netifd_handle_wdev_down },
+	{ .name = "reconf", .handler = netifd_handle_wdev_reconf },
 	{ .name = "status", .handler = netifd_handle_wdev_status },
 	{ .name = "notify", .handler = netifd_handle_wdev_notify },
 	{ .name = "get_validate", .handler = netifd_handle_wdev_get_validate },
diff --git a/wireless.c b/wireless.c
index 387f4ba..9986e9a 100644
--- a/wireless.c
+++ b/wireless.c
@@ -282,7 +282,7 @@ wireless_device_run_handler(struct wireless_device *wdev, bool up)
 }
 
 static void
-__wireless_device_set_up(struct wireless_device *wdev)
+__wireless_device_set_up(struct wireless_device *wdev, int force)
 {
 	if (wdev->disabled)
 		return;
@@ -293,7 +293,7 @@ __wireless_device_set_up(struct wireless_device *wdev)
 	if (!wdev->autostart)
 		return;
 
-	if (wdev->state != IFS_DOWN || config_init)
+	if (!force && (wdev->state != IFS_DOWN || config_init))
 		return;
 
 	free(wdev->prev_config);
@@ -320,7 +320,7 @@ wdev_handle_config_change(struct wireless_device *wdev)
 	switch(state) {
 	case IFC_NORMAL:
 	case IFC_RELOAD:
-		__wireless_device_set_up(wdev);
+		__wireless_device_set_up(wdev, 0);
 
 		wdev->config_state = IFC_NORMAL;
 		break;
@@ -363,7 +363,15 @@ wireless_device_set_up(struct wireless_device *wdev)
 {
 	wdev->retry = WIRELESS_SETUP_RETRY;
 	wdev->autostart = true;
-	__wireless_device_set_up(wdev);
+	__wireless_device_set_up(wdev, 0);
+}
+
+void
+wireless_device_reconf(struct wireless_device *wdev)
+{
+	wdev->retry = WIRELESS_SETUP_RETRY;
+	wdev->autostart = true;
+	__wireless_device_set_up(wdev, 1);
 }
 
 static void
@@ -1001,5 +1009,5 @@ wireless_start_pending(void)
 	struct wireless_device *wdev;
 
 	vlist_for_each_element(&wireless_devices, wdev, node)
-		__wireless_device_set_up(wdev);
+		__wireless_device_set_up(wdev, 0);
 }
diff --git a/wireless.h b/wireless.h
index 3498bd8..bade738 100644
--- a/wireless.h
+++ b/wireless.h
@@ -93,6 +93,7 @@ struct wireless_process {
 void wireless_device_create(struct wireless_driver *drv, const char *name, struct blob_attr *data);
 void wireless_device_set_up(struct wireless_device *wdev);
 void wireless_device_set_down(struct wireless_device *wdev);
+void wireless_device_reconf(struct wireless_device *wdev);
 void wireless_device_status(struct wireless_device *wdev, struct blob_buf *b);
 void wireless_device_get_validate(struct wireless_device *wdev, struct blob_buf *b);
 void wireless_interface_create(struct wireless_device *wdev, struct blob_attr *data, const char *section);
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
