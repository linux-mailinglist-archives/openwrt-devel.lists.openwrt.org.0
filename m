Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A455B15584D
	for <lists+openwrt-devel@lfdr.de>; Fri,  7 Feb 2020 14:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/pDmn+I8jrfc5Oo93G6MX2LBUAyYEfJrdI+JWYGGjEQ=; b=WxQcFq4/3tpDnF
	lpx0VPoT0dis9gTmm6VfhiW+CrrCoATWRhqQzIlY21jKlQ6Q4I3AJcWWJtcd6+ly0N+LpkjfXkfYm
	yjhZJZNQPE+ANrFRsPd4gw7GUhKXX4or7UaEySjoMrwBfUTjwEiLhiyHk1ynTu/a2Rtx1nUaiIjd+
	vIPC8EB0h4qqNpeOIK33XrPlRnHz/g1SvFvrm3R3j+tj/Fe+LkI31fEgFiiVqsi2GezJ+xOlt4rtt
	Ns+7XicT4eG2AKSXdRxvrs10FUMUZoTHUsl6JAFqIyNXIzHc6sKLaQnxXZOxpzjNZ32gwKw8OK9IL
	c7db3AAgJdlAUguIcBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03Zd-0007Yz-Qz; Fri, 07 Feb 2020 13:21:33 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03ZW-0007YP-Gd
 for openwrt-devel@lists.openwrt.org; Fri, 07 Feb 2020 13:21:28 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MPGFZ-1j9dOz2Ort-00PfQ3 for <openwrt-devel@lists.openwrt.org>; Fri, 07
 Feb 2020 14:21:17 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  7 Feb 2020 14:19:51 +0100
Message-Id: <20200207131951.2429-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:d1q11aXGOVqrXMdTixfDcszE5lwZlNJwG3J96VnFwZRbCSavEZV
 ErgApcXzcjdonwZlDedYH2cTEfl2XB7nwecKCtiHfVIoBSSe+7aHTrykhzy0xj0YjTQw4cP
 XtAUZLD8S1ftGUgW50fdYxuZ4OT/gAREdGFGZ6YRwWxviQUy3Or9YufYx2OskFXgpYv1p/L
 SfiHA2np4AIfjDX3RO9KA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jMniiZXdnc4=:FO+JwXZivIQZS2i2aemr23
 +8lnSdcv5VBT3+5fxrKsSPziMmXNBhTY/BgAakU/fMf/6zEFL0hC/vwysQOJKQ1E+Sumfo1sz
 a7L2yPRahhP2mj7NXSjeR0oBhMz9Y1srT0e0QnpBu5rK4Dk5ix0W5WQN1pHvEf0FT0GWMOruy
 xpFyQxVoDWaqn/+M0lp2+KIYu9IYlpgecATb9TzWO/9LN0aE9KHrADHIKax1ilLFWg12unJwG
 8B3Qf4plLzV5Cpp+5AUDpmMORKpfLFF8gtpHRElvSlbIT4pIvEo0n2qobStBuEen7mNvZkE7Y
 dqvXd2OQPASCHBJsPTXTc9MAHNJXs6FwfYbSmN17BTJsSBT5fXoMCiYZ+WvLtSonmbQDeao/T
 3splINGmCT8BtWUTBZo3qD/nUo2NKI6uRc2sCMQJEvuIA/4zv0h/p/MFwirdbNroqykxeSQ8k
 Y0YUzBCeBxfWOP4eHRV9R5lS3NYZQ4qMazo1nR0LRGDJTDw8KHG6vt1fdoiOG7AKetKHHZ2n3
 ZcajZ6RDddn2e1ZUPGrP1hMvis3gRxDcyNClvtQlFTp+2woiPNjzYgMZeldozUYwo8bvJKwWF
 Nnaap4z9+nLJwS6YWfMqzoBeuqT0L+1dSRS4FarcoUw1Odv05YUuJWcn+r4Slnv9OuohMoEPK
 iPP81dfPx4ix5lcR4fU/Sgd8a5lfxVnbiJmfDKo3gtxBo1TSGlwuBQ3DryOrnPKETs0oES9mu
 FmU+viIvTe0XfFQN9G/7JL17KSSfYGz2gz81PBTo9GmOleyyti9G35a0PBhVicE77K1vhQZHy
 nla/NPldrYMFNQvWx7Y5Xrpx6xS9LKKaSjr1dvuBiYs3IfB25nN/SP0exIONOqjfFcCLZQ6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_052126_846771_F62055BB 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: add gpio4 pinmux on TL-WR841N/ND
 v8/TL-WR842N v2/TL-MR3420 v2
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

This has been created based on a bug report:
https://bugs.openwrt.org/index.php?do=details&task_id=2753

There has been no feedback, so I need somebody to verify whether this is
working.

I will also open a PR in GitHub to increase the audience.

 target/linux/ath79/dts/ar9341_tplink.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/ar9341_tplink.dtsi b/target/linux/ath79/dts/ar9341_tplink.dtsi
index 0a950bd1a6..92ffffbc60 100644
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
@@ -85,7 +82,13 @@
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
 };
 
 &eth0 {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
