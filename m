Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57309F60BB
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 18:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siSbUl/aAGlgyKG9zcx8e5PVjPC/vtJgvhW0pTB80qY=; b=ZA7MtAjuh9gJBQ
	HPEm4LCZXkQnUM1v2jDRZT1hg55rTrWeTeYCBEWlZ4sXU+swmOZllIUtAO0mA/rdQq/YEFFEiqVx3
	HnlvLIobQgRLPxr6kxcgCi4S4lAsGSSZHVx6nci61lRGtFn6BGrCMrTCnN7pLMz69DGRrdYdo928Q
	GnMlDGpFTtdfcoEEn5BzqYC0hgJRcvxExFK2iYzZ/JIqZb2IRClSSGEdDN5ehOrndWraKCJnkQUbN
	/MNx4AVuIeewa5F4xUog4cRyiXbXzYYaUZNBuonYFovx9qyABNuG+OChmmW/SIyGlYY3bixStXSRY
	vdA9iz7ZxF9LnUEPLNkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUeg-0004Ad-7x; Sat, 09 Nov 2019 17:36:10 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUeW-00049u-Ct
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 17:36:01 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iTUeU-0002KH-QT; Sat, 09 Nov 2019 18:35:59 +0100
Date: Sat, 9 Nov 2019 18:35:45 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
Message-ID: <20191109173545.GA103328@makrotopia.org>
References: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <329489a2-3619-b0c6-3705-b10acbe69917@phrozen.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_093600_442850_1FBA231F 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 5/5] base-files: add 'wifi reconf'
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

Now that netifd and hostapd allow dynamic reconfiguration, add a
command to trigger it.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
v2: unchanged

 package/base-files/files/sbin/wifi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/package/base-files/files/sbin/wifi b/package/base-files/files/sbin/wifi
index f7a10de215..261d2fb500 100755
--- a/package/base-files/files/sbin/wifi
+++ b/package/base-files/files/sbin/wifi
@@ -130,6 +130,10 @@ wifi_updown() {
 		scan_wifi
 		cmd=up
 	}
+	[ reconf = "$1" ] && {
+		scan_wifi
+		cmd=reconf
+	}
 	ubus_wifi_cmd "$cmd" "$2"
 	_wifi_updown "$@"
 }
@@ -241,6 +245,7 @@ case "$1" in
 	reload) wifi_reload "$2";;
 	reload_legacy) wifi_reload_legacy "$2";;
 	--help|help) usage;;
+	reconf) ubus call network reload; wifi_updown "reconf" "$2";;
 	''|up) ubus call network reload; wifi_updown "enable" "$2";;
 	*) usage; exit 1;;
 esac
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
