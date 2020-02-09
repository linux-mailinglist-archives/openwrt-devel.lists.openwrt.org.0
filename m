Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4F3156B0F
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Feb 2020 16:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7AMxGHp0sQO66GtqoBtuYycP5M2IOM86Syh8bj3uLJQ=; b=uEnIoE8SRBU+EC
	MYKgobAziWZL2ENKx1+6YsjK83iM0ySZ7F71gduS2c9371n8r+rkWjdOObk2tOtj1a59YfoC6FT/1
	qHQHvqIskNlnw58jXnaICn+pqwDu+WqNOhU3AmSuJEgbhWUPzCChaqaauAAFYHJcLI9jFCBx4ofNc
	HZsgwsYbcFaO33E9czTb+iyGSuRjgPLS1sl8HSQKAt7kVvzK1FnXyGq9UC1JREvajQJypVfHBloue
	0ZYe1oH7OONx8mQERmeiO9AGma+DWEuGx2YmM2p31cDdD/q8zbrmDAavTvvLI4r5RhQJ6WYQ9wapX
	aVO8X8m/FmpooIq5bc+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0og0-0004QK-1v; Sun, 09 Feb 2020 15:39:16 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0ofv-0004Q1-0v
 for openwrt-devel@lists.openwrt.org; Sun, 09 Feb 2020 15:39:12 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Ma1D8-1ixZ2V2pRk-00Vwnl for <openwrt-devel@lists.openwrt.org>; Sun, 09
 Feb 2020 16:39:07 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  9 Feb 2020 16:38:13 +0100
Message-Id: <20200209153813.19904-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:niQGrJci+xh47ogy9HwMAqrohTl+qiEyiooxeM5UmNoUa4tK1tY
 kM3tsxjVLi9OWs4jjKYz5PhcnbdDgJ3vGus8a9qWj5XAAMpNbPMYC1JRzh7Y7HCgPxKVKdu
 jzRh4BzKOpjk7APTJq3P+NP6ZtCFU2tFI8Td7PKtHzBk27umPZTPwBUk0Kk1aybypHKpwbp
 WBA8GUFQWJyZpVu/KLrRw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xy8B8GLTB0Y=:ed6yQf0kklPR5c+pR9p30a
 geXjcJTGM5SemoATwQWGFtpzSgwpn0BCRhvkXUSnhsiP/31KsJyhoUgnQH0kw6OJXWcG+CTcl
 0u+CKH4c/mxpsf477xKsFmEQkIW2qCVU8xq/NVDXHk+n+Am/lX2sTj+kDV+SWBsvFfGlVVtEd
 rWlqkDOErp9LTajkOMuVhI/ZMvFD+bsXZxZIJ9grTtDde0JaWtT4jLQ6/XmvNAGYNpu9Oy2kg
 IFim3zwTOB2Pa7+tvrGk95n0BAELsm7BZV89GC98WEK6L1svXg7/pV3GwBn0egvP1QXqs3qNO
 7tfwTwe7s6WiqdDTmYm2QDVkLRYG6rWgIa4ElwTzbV9ewto2nAGmWifDfj9dvU3oR0nVj3yk2
 elq5Om4ICHFP1GZauv262PlocFZdNeafbUV9NxbNx2GeV2qDl0/BVUy3Ma5nNLT+bjftqa7od
 VG+p7H1wBMVKYOSvxDOveVk2h7PicglEebmHzWel9kQjyAn2GhLpxOk5kd5j9snnVBXqEHBYc
 5M4LZx29GGHvS4EMyScPRMCjQ2C1gK2sw7i8Yl6KFcvFdr/LqUi3GJceJRkDBCVtiAoYzDVPg
 Z0cF2EacGP9n1aumDNIaVAv2VmYzHL0zMmVSKS8kU0umLFOpjipdCxY5/bQ/A0BAQcxbSRV1X
 bXkjVwGA/Aobd9FPpfolSTpbyfRMzAkjqa3u28dGxp+3NBAQcrlWNRzqjNAL2cdBxWgITIS8V
 YVjywdpz6kLtYJKbjC2Erlo08lg4pbxdgyL6WzVkFbx3vE5d4RmlyEaabEpvP7OfjxzVYNIWd
 /BAenHCCfFQThftXGEtbWpTjdlsoiflm9qsOBX4vlAWKFFQ6wXmNd4ekC410U5WlfFdYCJG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_073911_357532_8C985E2E 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ath79: add gpio4 pinmux on TL-WR841N/ND
 v8, WR842N v2, MR3420 v2
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

This adds a pinmux to the shared DTSI for TP-Link TL-WR841N/ND v8,
TL-WR842N v2 and TL-MR3420 v2. It is supposed to be the equivalent
of:

/* config gpio4 as normal gpio function */
ath79_gpio_output_select(TL_MR3420V2_GPIO_USB_POWER,AR934X_GPIO_OUT_GPIO);

While at it, move the jtag_disable_pins to &gpio node and remove the
redundant status=okay there.

This should allow to enable USB power on these devices.

Fixes: FS#2753

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar9341_tplink.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/ar9341_tplink.dtsi b/target/linux/ath79/dts/ar9341_tplink.dtsi
index 0a950bd1a6..7c3dc6be96 100644
--- a/target/linux/ath79/dts/ar9341_tplink.dtsi
+++ b/target/linux/ath79/dts/ar9341_tplink.dtsi
@@ -18,9 +18,6 @@
 	keys: keys {
 		compatible = "gpio-keys";
 
-		pinctrl-names = "default";
-		pinctrl-0 = <&jtag_disable_pins>;
-
 		rfkill {
 			label = "WiFi";
 			linux,code = <KEY_RFKILL>;
@@ -85,7 +82,14 @@
 };
 
 &gpio {
-	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&jtag_disable_pins &pmx_usb_power>;
+};
+
+&pinmux {
+	pmx_usb_power: pinmux_usb_power {
+		pinctrl-single,bits = <0x4 0x0 0xff>;
+	};
 };
 
 &eth0 {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
