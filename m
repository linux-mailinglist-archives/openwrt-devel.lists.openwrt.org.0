Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E418E82F
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 11:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tb04KP+gH2yCUO3dj3TYeNplwQQUd/k1q9fCIaiSGlA=; b=kqRdqyU+igRYeE
	IxMOa7Xp0uSHvbZrHkxKogWyye5liaGJCTe2ohYnMc1J0mT49HcyUeeCou6b4h+ygZ6lrsNHDjOIv
	us9oE5J9hyHlkTsITej6lgE5mxtJnZExxDRc0MLoFjtZUwCG7Ykhnxq+VV5KUdidQzQf1hWgVRZiP
	mpqpqWCWHgH4zyn1wrqfWSNp3IJyxKXOBSXU+QUnRv3hhbGdI0nmTFBUcXAf9N19yNRDr/gsVip1h
	dAQduCU+bUcsoWOTbxIyz2xkJxIoqoxGYlpXsfaVEw/eKGPpwNLQbeq/bn5Z82KpcIwCwLrcWf+mp
	G43dzBg+iOJNFzHT0HgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFyIO-00056B-Ca; Sun, 22 Mar 2020 10:57:32 +0000
Received: from mail1.systemli.org ([198.167.223.214])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFyI4-00051A-DV
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 10:57:15 +0000
From: Nick Hainke <vincent@systemli.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=systemli.org;
 s=default; t=1584874613;
 bh=0e9pQBSJy712xCwWFB18m32dExhINOkFUWtfnhYvkKo=;
 h=From:To:Cc:Subject:Date:From;
 b=Qe7H9t2V1180LgWOKc4Zyj/T8HbrFF+PXfCPSm3fPLooqtk606+WKe5nNYpAPBuc4
 zPHiqhjbf65PeMSPL7HRxSOzHeDBoSQEddWzc003CzYv3OiTb/5RtIKJUuoScjaMpJ
 UWaEnynst6g8I/Uwv0nbxy1RIhp6XcAsUjdOpT8kiPJ+deg97kEyh3UkgJcGVCNArU
 WFDiYNrGb8l3hAzHtU4YmZ1BlSroevxgJG8MOaonLqCn2MUT425D5awkN4gUBxrBj9
 2X3anxsTiSk0JBIPj07Z5vZ/n/M51aVj7xl7fswVOak0N5/YosGzPfTR6TVaUTeETg
 qaf2FyWQylyLQ==
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Mar 2020 11:56:40 +0100
Message-Id: <20200322105640.13705-1-vincent@systemli.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_035712_949779_1EF67A6B 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.167.223.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] hostapd: expose beacon reports through ubus
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
Cc: Nick Hainke <vincent@systemli.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Subscribe to beacon reports through ubus.
Can be used for hearing map and client steering purposes.

First enable rrm:
    ubus call hostapd.wlan0 bss_mgmt_enable '{"beacon_report":True}'

Subscribe to the hostapd notifications via ubus.

Request beacon report:
    ubus call hostapd.wlan0 rrm_beacon_req '{"addr":"00:xx:xx:xx:xx:xx", "op_class":0, "channel":1,"duration":1,"mode":2,"bssid":"ff:ff:ff:ff:ff:ff", "ssid":""}'

Signed-off-by: Nick Hainke <vincent@systemli.org>
---
 .../hostapd/patches/600-ubus_support.patch    | 12 ++++++++++
 .../services/hostapd/src/src/ap/ubus.c        | 24 +++++++++++++++++++
 .../services/hostapd/src/src/ap/ubus.h        |  6 +++++
 3 files changed, 42 insertions(+)

diff --git a/package/network/services/hostapd/patches/600-ubus_support.patch b/package/network/services/hostapd/patches/600-ubus_support.patch
index 6842c0e63e..b2860780eb 100644
--- a/package/network/services/hostapd/patches/600-ubus_support.patch
+++ b/package/network/services/hostapd/patches/600-ubus_support.patch
@@ -458,3 +458,15 @@
  		case 'o':
  			params.override_driver = optarg;
  			break;
+--- a/src/ap/rrm.c
++++ b/src/ap/rrm.c
+@@ -89,6 +89,9 @@ static void hostapd_handle_beacon_report
+ 		return;
+ 	wpa_msg(hapd->msg_ctx, MSG_INFO, BEACON_RESP_RX MACSTR " %u %02x %s",
+ 		MAC2STR(addr), token, rep_mode, report);
++	if (len < sizeof(struct rrm_measurement_beacon_report))
++		return;
++	hostapd_ubus_notify_beacon_report(hapd, addr, token, rep_mode, (struct rrm_measurement_beacon_report*) pos, len);
+ }
+ 
+ 
diff --git a/package/network/services/hostapd/src/src/ap/ubus.c b/package/network/services/hostapd/src/src/ap/ubus.c
index e25c3294ee..eb26c14972 100644
--- a/package/network/services/hostapd/src/src/ap/ubus.c
+++ b/package/network/services/hostapd/src/src/ap/ubus.c
@@ -1269,3 +1269,27 @@ void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *
 
 	ubus_notify(ctx, &hapd->ubus.obj, type, b.head, -1);
 }
+
+void hostapd_ubus_notify_beacon_report(struct hostapd_data *hapd, const u8 *addr, u8 token, u8 rep_mode, struct rrm_measurement_beacon_report *rep, size_t len)
+{
+	if (!hapd->ubus.obj.has_subscribers)
+		return;
+
+	if (!addr)
+		return;
+
+	blob_buf_init(&b, 0);
+	blobmsg_add_macaddr(&b, "address", addr);
+	blobmsg_add_u16(&b, "op-class", rep->op_class);
+	blobmsg_add_u16(&b, "channel", rep->channel);
+	blobmsg_add_u64(&b, "start-time", rep->start_time);
+	blobmsg_add_u16(&b, "duration", rep->duration);
+	blobmsg_add_u16(&b, "report-info", rep->report_info);
+	blobmsg_add_u16(&b, "rcpi", rep->rcpi);
+	blobmsg_add_u16(&b, "rsni", rep->rsni);
+	blobmsg_add_macaddr(&b, "bssid", rep->bssid);
+	blobmsg_add_u16(&b, "atenna-id", rep->antenna_id);
+	blobmsg_add_u16(&b, "parent-tsf", rep->parent_tsf);
+
+	ubus_notify(ctx, &hapd->ubus.obj, "beacon-report", b.head, -1);
+}
diff --git a/package/network/services/hostapd/src/src/ap/ubus.h b/package/network/services/hostapd/src/src/ap/ubus.h
index 27acd32659..64ff7f5787 100644
--- a/package/network/services/hostapd/src/src/ap/ubus.h
+++ b/package/network/services/hostapd/src/src/ap/ubus.h
@@ -26,6 +26,7 @@ struct hostapd_ubus_request {
 struct hostapd_iface;
 struct hostapd_data;
 struct hapd_interfaces;
+struct rrm_measurement_beacon_report;
 
 #ifdef UBUS_SUPPORT
 
@@ -45,6 +46,7 @@ void hostapd_ubus_free_bss(struct hostapd_data *hapd);
 
 int hostapd_ubus_handle_event(struct hostapd_data *hapd, struct hostapd_ubus_request *req);
 void hostapd_ubus_notify(struct hostapd_data *hapd, const char *type, const u8 *mac);
+void hostapd_ubus_notify_beacon_report(struct hostapd_data *hapd, const u8 *addr, u8 token, u8 rep_mode, struct rrm_measurement_beacon_report *rep, size_t len);
 
 void hostapd_ubus_add(struct hapd_interfaces *interfaces);
 void hostapd_ubus_free(struct hapd_interfaces *interfaces);
@@ -78,6 +80,10 @@ static inline void hostapd_ubus_notify(struct hostapd_data *hapd, const char *ty
 {
 }
 
+static inline void hostapd_ubus_notify_beacon_report(struct hostapd_data *hapd, const u8 *addr, u8 token, u8 rep_mode, struct rrm_measurement_beacon_report *rep, size_t len)
+{
+}
+
 static inline void hostapd_ubus_add(struct hapd_interfaces *interfaces)
 {
 }
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
