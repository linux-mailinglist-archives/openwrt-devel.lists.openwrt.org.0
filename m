Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8187CEA0B2
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 17:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=etsCvDvcObhnfN3dvygVMQgKGIRPCqdHP9yO0yMDpu8=; b=t8Rctuhyeb/BqJ
	95fVuR0KTYpX+8ad8312m7hByLq5Hiso9BhT5P9ETBNZuwK3lL6aprVssuvCKp8q1F0SU2x5RSKAP
	NpNI/AtUpx49+za7p7tnxzSbnZGdyCdVqY/lmYLkFJHDPaOJ0C677j7SD4whkqTU8XgBOKdbmTwwQ
	1ren7MnckjiHYbTPAA96CUnLSukfqhYENq+m2QI82N3ni8AOnIEVNpZ+q4ApwcnUhAgv/F2BeW2Ob
	d9vT0anH/aEb1oBpMG71f2l1ds8ubsttGOH/8dYFWM0UmRKgIgmtvl6y1DrKiMMaZXJ4lpWLZWmFM
	UJD9H60xMjRqPzAAWjPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPqSs-0000zZ-DK; Wed, 30 Oct 2019 16:04:54 +0000
Received: from fudo.makrotopia.org ([185.142.180.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPqSj-0000z6-3h
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:04:46 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iPqNa-0001oN-TA
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 16:59:28 +0100
Date: Wed, 30 Oct 2019 16:59:14 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191030155914.GA139319@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_090445_153970_13313B11 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/5] base-files: add 'wifi reconf'
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
