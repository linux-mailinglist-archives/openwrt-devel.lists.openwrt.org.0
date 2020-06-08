Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C791F1C6E
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 17:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:To:References:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r7tXqpU+zarbu04j/k2E4AHUOklYiX0Js/F1Pl+msDo=; b=qG2fQjLm99LTqZhfG/oxtFjFx
	Em7FnID7noRtk73AUiajympZb7zNltjYrA/Wp/G9DU5zcA19RuAM/reorTO9qPUDNpR/V4w+LWLuA
	u4ESGJCBvI8D4DjnF2Q3r7iZGRr2WGV9qfJe7luFxpibVJDCnYzDTDb0B2jLVmAxTgtW6clfpBzNg
	kPNQ6v++w9cgyyfM7EFKl5lxgAHAZEG2M0k9xqbmhS5VUxBS1MSoE+bXw+966Do6JXBvlBL0/dPF3
	3PDGhm+8sGPky+07nQ4wnMwMXIUWzDGpFYF7s8dTTTsJVJR6H7EayYA0MX21vpeUV6Z8l4XQbMeMX
	nCgShuUhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiK4N-0005Hp-8Z; Mon, 08 Jun 2020 15:52:15 +0000
Received: from email6.maximasystems.com ([109.70.45.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiK4F-0005H1-Fh
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 15:52:09 +0000
Received: from Michaels-MBP.lan ([109.70.45.213]) (authenticated bits=0)
 by email6.maximasystems.com (8.14.4/8.14.4) with ESMTP id 058Fq4Wg011741
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO);
 Mon, 8 Jun 2020 16:52:05 +0100
References: <d8af0738-1249-0365-5fc2-e41f6d33a093@turf.org>
To: openwrt-devel@lists.openwrt.org
From: Michael T Farnworth <michael@turf.org>
X-Forwarded-Message-Id: <d8af0738-1249-0365-5fc2-e41f6d33a093@turf.org>
Message-ID: <b1c2298d-8d2f-e8e1-b72c-6990f10c9fe1@turf.org>
Date: Mon, 8 Jun 2020 16:52:01 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <d8af0738-1249-0365-5fc2-e41f6d33a093@turf.org>
Content-Language: en-GB
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.1
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on
 email6.maximasystems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_085207_797376_694A5906 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Fwd: [PATCH] hostapd: wpad init script renamed
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
Cc: michael@turf.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When hostapd is launched as /etc/init.d/wpad it appears in a different
location under "ubus call service list" presenting problems with scripts
/lib/netifd/hostapd.sh and /lib/netifd/wireless/mac80211.sh.  Either
these scripts need to be patched to recognise the move, or the
init.d script needs to be renamed to hostapd.  This patch renames the
init.d script as unidentified things may also depend upon the placement
of entries within ubus output.  This ubus change only came about on the
8 April 2020 and it is unlikely that very much code has been written or
re-written to support the renaming.  Problem is manifested in log files
as "/usr/sbin/wpad does not match process  path (/proc/exe)"

Signed-off-by: Michael T Farnworth <michael@turf.org>

diff --git a/package/network/services/hostapd/Makefile 
b/package/network/services/hostapd/Makefile
index 66560d5d41..b8b7c2b315 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -533,7 +533,7 @@ endef
  define Package/hostapd-common/install
         $(INSTALL_DIR) $(1)/lib/netifd $(1)/etc/rc.button 
$(1)/etc/hotplug.d/ieee80211 $(1)/etc/init.d
         $(INSTALL_DATA) ./files/hostapd.sh $(1)/lib/netifd/hostapd.sh
-       $(INSTALL_BIN) ./files/wpad.init $(1)/etc/init.d/wpad
+       $(INSTALL_BIN) ./files/hostapd.init $(1)/etc/init.d/hostapd
         $(INSTALL_BIN) ./files/wps-hotplug.sh $(1)/etc/rc.button/wps
  endef

diff --git a/package/network/services/hostapd/files/wpad.init 
b/package/network/services/hostapd/files/hostapd.init
similarity index 97%
rename from package/network/services/hostapd/files/wpad.init
rename to package/network/services/hostapd/files/hostapd.init
index 3198e9801f..b9494b6bf5 100644
--- a/package/network/services/hostapd/files/wpad.init
+++ b/package/network/services/hostapd/files/hostapd.init
@@ -4,7 +4,7 @@ START=19
  STOP=21

  USE_PROCD=1
-NAME=wpad
+NAME=hostapd

  start_service() {
         if [ -x "/usr/sbin/hostapd" ]; then

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
