Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DD2187874
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 05:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s3x1bCIoNG09tuz7sGvFfKz4pcOSlaaHd+G46tXV4Vg=; b=I7QT6AaA+DWb0Q
	shx0m1+N8IaGw5hsbOe3KWd3YsQxT+CsD6paCbCopw7n9vmXtkrJAJQerJsdo+Dgd+ST4sx8otLA/
	qL6E11fJsDHS4EZ0JhptxPo9E0TYUve/knu5wqh1qs0Jd5fno7Ru3I4l6L21fl97sZNrSiCkAU3uj
	JPOGgkXeVoB/rhaxjpl+fZwmlIhyxncRpMLlcvgJuuq3zq3EkDNFnAlPoBUOG7PjOVDFnfHms8T7M
	Sjxi62AcMhWPXwqCiD059DkMhj0BxOSP+4iV2sdsbHtHgu9kXZWeNl/7P41zUBqtYbTBkUefTgqdp
	vqWWCrOQFS4nzsPuyYHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE3o1-0007i6-9D; Tue, 17 Mar 2020 04:26:17 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE3nv-0007hj-Ep
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 04:26:13 +0000
Received: by mail-io1-xd42.google.com with SMTP id v3so9447009iot.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Mar 2020 21:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenotec-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=CBqv4ZWFVViEOkRpqKlFnx2RK4dWUbTiCg1hCkV3/Bc=;
 b=RWmjlOd+oTs2vMCQt/Pl3rDGg7xXizAJvcJvGSWdyZ01GwxTRmVhU0OIZLUrPi3mIs
 qvg+WhN9G2wHSQf3K3DRDLVQ4jkg2jM08n3eWLOHcVllfesfaeFLy6sSoq8Hwr2B5VHR
 IqePiSNctzJxxkpL4oSWdu2TmH1VLW1JgZe90NjGy8TtmLc63zcLDPetRJ2zU5crc4y3
 t8Wtd4G2cMc8qxTycMcqQ8AusZh9u3B17V09f9jO75LPl8jIeJsSC56IEPOJpeJpCV5B
 8wvu04Wr6la/IU/aO81lGTP9okVAisey6zCr3CjYA+zWbb2/7lES6qYMWHP1AGGkYARQ
 1Wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=CBqv4ZWFVViEOkRpqKlFnx2RK4dWUbTiCg1hCkV3/Bc=;
 b=gfRj3xt2p6e72zZMPaBAcxLKR3JeGJzTHjwuFjC1GAQGQo+w9l2G159Sqtbv019SzM
 LXrdA79dLy9AZbRIjGRd/U0QvFCxTk2C0snzrjuqd5u/RdhwhulZbqCdhQyak1XeG5yO
 F/czW0oLiy2qS1x4KiRCMyr/QEOVa578bYSrPphei/iDj9E6WQAKXwmI0oNW2eGEA1vS
 Qh+X1e+4mHh4KVOfO9Gv53c68RQb58cs+VlggPf7cspWnTnI/giinx5rFwDyBJSwcBmi
 E2R84c0g6vKzEjgy1E0YAYjQgdDn0YbLH1yC2xk4Magd7a9tFkO6n4FekJ2oMbZAZiQu
 O9wA==
X-Gm-Message-State: ANhLgQ1Erx9SuBDXmhbp81hnCcIpLz3U/uz8+NpGT6Ge7aEGHY0tWIdA
 VDIeo3adWFRo3K6aQixQD4CxDv7AAgL3u6f/HihYjUwwdX8=
X-Google-Smtp-Source: ADFU+vux2/BltxYENxpjpzWBeyCW5h8gC4X18qaK/09m/AI8eVb7IHZvtM0cd62UXM40ZRGQZAcgDv87W/OmjpJXLeY=
X-Received: by 2002:a02:dc6:: with SMTP id 189mr3277320jax.100.1584419168921; 
 Mon, 16 Mar 2020 21:26:08 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Mahoney <kevin.mahoney@zenotec.net>
Date: Mon, 16 Mar 2020 22:25:58 -0600
Message-ID: <CAEKKVUhWBs1ukFgHOHsN-rZ7Q+XJOXJFOML7Cui7wrb6h4v-dw@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_212611_640533_97B24B80 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] hostapd: Moved all hostapd variants to
 submenu 'Hostapd'
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It seemed very confusing when trying to select the different variants
of hostapd which are somewhat scattered about under the menu
'Network'. Moving all hostapd variants under a common submenu helps
avoid confusion.

diff --git a/package/network/services/hostapd/Makefile
b/package/network/services/hostapd/Makefile
index 48dff34942..1a6d79bdca 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -129,6 +129,7 @@ DRV_DEPENDS:=+PACKAGE_kmod-cfg80211:libnl-tiny
 define Package/hostapd/Default
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   TITLE:=IEEE 802.1x Authenticator
   URL:=http://hostap.epitest.fi/
   DEPENDS:=$(DRV_DEPENDS) +hostapd-common +libubus
@@ -190,6 +191,7 @@ endef
 define Package/wpad/Default
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   TITLE:=IEEE 802.1x Authenticator/Supplicant
   DEPENDS:=$(DRV_DEPENDS) +hostapd-common +libubus
   URL:=http://hostap.epitest.fi/
@@ -279,6 +281,7 @@ Package/wpad-mesh-wolfssl/description =
$(Package/wpad-mesh/description)
 define Package/wpa-supplicant/Default
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   TITLE:=WPA Supplicant
   URL:=http://hostap.epitest.fi/wpa_supplicant/
   DEPENDS:=$(DRV_DEPENDS) +hostapd-common +libubus
@@ -351,11 +354,13 @@ define Package/hostapd-common
   TITLE:=hostapd/wpa_supplicant common support files
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
 endef

 define Package/hostapd-utils
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   TITLE:=IEEE 802.1x Authenticator (utils)
   URL:=http://hostap.epitest.fi/
   DEPENDS:=@$(subst $(space),||,$(foreach
pkg,$(HOSTAPD_PROVIDERS),PACKAGE_$(pkg)))
@@ -369,6 +374,7 @@ endef
 define Package/wpa-cli
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   DEPENDS:=@$(subst $(space),||,$(foreach
pkg,$(SUPPLICANT_PROVIDERS),PACKAGE_$(pkg)))
   TITLE:=WPA Supplicant command line control utility
 endef
@@ -377,6 +383,7 @@ define Package/eapol-test
   TITLE:=802.1x authentication test utility
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   VARIANT:=supplicant-full-internal
   DEPENDS:=$(DRV_DEPENDS) +libubus
 endef
@@ -385,6 +392,7 @@ define Package/eapol-test-openssl
   TITLE:=802.1x authentication test utility
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   VARIANT:=supplicant-full-openssl
   CONFLICTS:=$(filter-out eapol-test-openssl ,$(EAPOL_TEST_PROVIDERS))
   DEPENDS:=$(DRV_DEPENDS) +libubus +libopenssl
@@ -395,6 +403,7 @@ define Package/eapol-test-wolfssl
   TITLE:=802.1x authentication test utility
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=Hostapd
   VARIANT:=supplicant-full-wolfssl
   CONFLICTS:=$(filter-out eapol-test-openssl ,$(filter-out
eapol-test-wolfssl ,$(EAPOL_TEST_PROVIDERS)))
   DEPENDS:=$(DRV_DEPENDS) +libubus +libwolfssl



Kevin Mahoney

ZenoTec LLC
720-864-4320
kevin.mahoney@zenotec.net
www.zenotec.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
