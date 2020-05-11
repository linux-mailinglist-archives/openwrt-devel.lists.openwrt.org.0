Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2483E1CD64D
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 12:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z8U5Y0gXgZIU6y9YkX/6Vty814tkmjed5wzb9sPKL+Q=; b=fGj+JT4OG7VW2P
	yD5Kt92Jb5DBUpe8aco3o0WUEyewpXAtM86OiKhMorWe0SJDKbTftqVkjUL9unWk+njtSkNf5nzub
	k1vU5ocZrcgdo3AOFU7t970jJCQqokeRq+VRWjln9uDB5fXWjDTlljgkMpwm6mEtWFQHUM4P0m5tk
	wIIpNJBvAp+s7hkxyr2ze2BTeKu2prY5r7z6ARi0dQfQnpzDAdkyvXgAj5pTxnM8AQKlCbMZ5ULnm
	67xyy3MTwo0IgSdy1LbIL2KhcrQu77P4/SJoJx82705EZhPDSoxXSVKQk5Zci4MsBpEoWS/hkTjab
	ZOMK7LNyG74IGX3N7ndA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5WK-0001Eb-FT; Mon, 11 May 2020 10:18:48 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5W2-00014b-E8
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 10:18:35 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MGz9p-1jL94U2AGx-00E3MZ for <openwrt-devel@lists.openwrt.org>; Mon, 11
 May 2020 12:18:25 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 May 2020 12:17:34 +0200
Message-Id: <20200511101735.40453-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:E2MUoX+IVyx0t1CZlsfQFDv2IDQtMjfwXTu212E9q7aiXpZiKE9
 gYgzpW5wtldGjy8tbe3Y/zvdipn4bSNt2w45O32Qy00NkLSdJ6jdyb0g2D/P8555KEQzHfC
 Z4w4WAFQR8v8dXMCIV4CChjbscgsIGjdBO7zVMtilKCg6ROCuxJROgwKJBJQGlpmjV1f26o
 uhoN7u8YiNOcMdc0qgiyQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JcBCpO/gXB0=:sNsY655myLDOTm9S5bFSkL
 mMzuAzLOr5BYRds3NuWsbg+7vajh0V3xGAk29bW0MoWwr6UtIlG8ikW236vkKgCt8QSmuNxXs
 mTQT/RkFqIF2FvUQDmqhWe+Pi6FK+E0cqoPCZ/dO0YUSf+GED89jkKQbgipGII9yYz9BMk1Mi
 WifxHOsn4G2SrqkzEMvWcFepgmDkLVCQoCR1x7N+3qEz8hZ+GzzuOFqF7dHUBZhvyUp/KYQll
 b8Mpw5Eu0pXAwlfUbF0kWwbqOQki1V+tjwQmXYVgappyVFTP/b5mckOug4t9oZrHpQxwYwR3t
 3qae5p+6ayt9Q6qVAobBbpEm9T8ey8TjUIRev2H8QHa5UVUbpiFESxdvmqQhK+GXw8CzmT1Q6
 aYYIjCBJ0fFjQCyl7nYudzL7XevmaBrHhJRmXqkT53iw0TMu78FtFNRChW8QEJA5f6aGSdNZg
 HiG9dcJ8pWVrrScXkrNPuSJK0m7MmVAJyXv5PHtrs/kFrrS88hjCZPVsW/g5UokTw3Lab3e1e
 exHEU+4eqU2EIitvFFKkI81TQ3ePaLeh++fkNaxVNl15sFNvAyFdV75B8V2AIIOjkPnLyp7gx
 ssedvPzPEML5IMyBEhHzmxb6WiBbC0Mc5F6vvO8g06x6fXpnT4JuwKfaR5BExmkAcTGv/tovO
 cBOSaPVe+9h8KhdZK1cr9LjHemR4/XoUy3eIUN+t37b0uD5pmS5MgU+0FxN9XWnWq77XfqJsf
 ZA3M917O/yPdOcZBwz2VkKXHWtCN+qOqmh3NWcgt5pMGxEAIuqJJaOAz7MfREpzs9ljZfp7ap
 CliHKz+1kZAxt/gfdxXwxLE1UVMIK07G9HNUAiaFyrlip3zzzjYvnKQUDThEzrFxqso9kx8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_031831_081010_E3135200 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 1/2] bcm63xx: replace "ok" with "okay" for
 status in DTS files
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

While "ok" is recognized in DT parsing, only "okay" is actually
mentioned as valid value. Replace it accordingly.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts        | 6 +++---
 target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts             | 4 ++--
 target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts  | 4 ++--
 target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts | 4 ++--
 target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts           | 4 ++--
 target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts             | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts            | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts     | 6 +++---
 target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts         | 4 ++--
 target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts         | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts         | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts         | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts           | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts           | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts           | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts         | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts        | 6 +++---
 target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts       | 6 +++---
 target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts  | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts  | 4 ++--
 .../linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts  | 4 ++--
 .../linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts  | 4 ++--
 .../linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts  | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts          | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts          | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts        | 4 ++--
 .../linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts  | 6 +++---
 .../linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts  | 6 +++---
 target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts | 4 ++--
 target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts         | 4 ++--
 target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts | 4 ++--
 .../linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts  | 4 ++--
 target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts       | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts       | 6 +++---
 target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts            | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts      | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts  | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts        | 4 ++--
 target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts    | 4 ++--
 target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts     | 4 ++--
 target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts        | 4 ++--
 89 files changed, 185 insertions(+), 185 deletions(-)

diff --git a/target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts b/target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts
index 2b25d009b3..7caa09b0dd 100644
--- a/target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts
+++ b/target/linux/bcm63xx/dts/bcm3368-netgear-cvg834g.dts
@@ -25,7 +25,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -52,9 +52,9 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &uart1 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts b/target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts
index e47822af89..32144b91f2 100644
--- a/target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts
+++ b/target/linux/bcm63xx/dts/bcm63168-sky-sr102.dts
@@ -95,7 +95,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -114,5 +114,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts b/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts
index 4edab6418c..92db7c83ad 100644
--- a/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts
+++ b/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref-p300.dts
@@ -61,7 +61,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -85,5 +85,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts b/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts
index f6136b5886..4884760abb 100644
--- a/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts
+++ b/target/linux/bcm63xx/dts/bcm6318-brcm-bcm96318ref.dts
@@ -55,7 +55,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -79,5 +79,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts b/target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts
index d1085e7eed..02c3d735da 100644
--- a/target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts
+++ b/target/linux/bcm63xx/dts/bcm6318-comtrend-ar-5315u.dts
@@ -70,7 +70,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -114,5 +114,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts b/target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts
index cf5b296cb7..0a64cadaf1 100644
--- a/target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts
+++ b/target/linux/bcm63xx/dts/bcm6318-d-link-dsl-275xb-d1.dts
@@ -84,7 +84,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -129,5 +129,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts b/target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts
index f09310e2bb..f43a9a5bc6 100644
--- a/target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts
+++ b/target/linux/bcm63xx/dts/bcm6318-sagem-fast-2704n.dts
@@ -93,7 +93,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -131,5 +131,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts b/target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts
index b4176885ed..2e3a1afa5a 100644
--- a/target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts
+++ b/target/linux/bcm63xx/dts/bcm63268-brcm-bcm963268bu-p300.dts
@@ -36,7 +36,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -55,5 +55,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts b/target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts
index dbbea13f1b..80d5727bc2 100644
--- a/target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts
+++ b/target/linux/bcm63xx/dts/bcm63268-inteno-vg50.dts
@@ -36,7 +36,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -55,5 +55,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts b/target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts
index bcd2286cf9..e3135151c7 100644
--- a/target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts
+++ b/target/linux/bcm63xx/dts/bcm63269-brcm-bcm963269bhr.dts
@@ -43,7 +43,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -62,5 +62,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts b/target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts
index 814274b611..316edd9798 100644
--- a/target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-adb-a4001n.dts
@@ -62,7 +62,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -97,5 +97,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts b/target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts
index e58f865589..0e4bacdaba 100644
--- a/target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-adb-a4001n1.dts
@@ -90,7 +90,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -128,5 +128,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts b/target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts
index 6fbac7d461..8600ddf4bb 100644
--- a/target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-brcm-bcm963281tan.dts
@@ -45,7 +45,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -64,5 +64,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts b/target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts
index a0a6c9ec54..e8f7b7d2d2 100644
--- a/target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-brcm-bcm96328avng.dts
@@ -45,7 +45,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -69,5 +69,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts b/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts
index e336024913..c085aa6770 100644
--- a/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5381u.dts
@@ -47,7 +47,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -85,5 +85,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts b/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts
index 209eda37f4..47af8b360a 100644
--- a/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-comtrend-ar-5387un.dts
@@ -55,7 +55,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -93,5 +93,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts b/target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts
index f3fab05062..8ff5b42de2 100644
--- a/target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-d-link-dsl-274xb-f1.dts
@@ -73,7 +73,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -117,5 +117,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts b/target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts
index 5084bd8877..612bef24a5 100644
--- a/target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-nucom-r5010un-v2.dts
@@ -71,7 +71,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -109,5 +109,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts b/target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts
index d00d8fb4e5..1d3005cb04 100644
--- a/target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-sagem-fast-2704-v2.dts
@@ -77,7 +77,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -115,5 +115,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts b/target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts
index 36899a4cc0..94484a2e76 100644
--- a/target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts
+++ b/target/linux/bcm63xx/dts/bcm6328-sercomm-ad1018-nor.dts
@@ -50,7 +50,7 @@
 };
 
 &leds {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_leds &pinctrl_serial_led
@@ -123,7 +123,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -142,5 +142,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts b/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts
index 92363ec3a1..cc9be3fce4 100644
--- a/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts
+++ b/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338gw.dts
@@ -41,7 +41,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -49,5 +49,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts b/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts
index 3f6e8c0686..e5aa4e67f4 100644
--- a/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts
+++ b/target/linux/bcm63xx/dts/bcm6338-brcm-bcm96338w.dts
@@ -41,7 +41,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -49,5 +49,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts b/target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts
index 8cf96a3a5c..9d7448e09b 100644
--- a/target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts
+++ b/target/linux/bcm63xx/dts/bcm6338-d-link-dsl-2640u.dts
@@ -35,7 +35,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -62,5 +62,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts b/target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts
index bac605651f..39ce0f3591 100644
--- a/target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts
+++ b/target/linux/bcm63xx/dts/bcm6338-dynalink-rta1320.dts
@@ -37,7 +37,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -64,5 +64,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts b/target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts
index 5aea2ddc8d..1a86007290 100644
--- a/target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts
+++ b/target/linux/bcm63xx/dts/bcm6345-brcm-bcm96345gw2.dts
@@ -15,7 +15,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -23,5 +23,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts b/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts
index f678762c86..1146217041 100644
--- a/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts
+++ b/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770bw.dts
@@ -53,7 +53,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -80,5 +80,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts b/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts
index ad0e7ce27d..2b63b3f93f 100644
--- a/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts
+++ b/target/linux/bcm63xx/dts/bcm6345-dynalink-rta770w.dts
@@ -53,7 +53,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -80,5 +80,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts b/target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts
index bf7b4a3ec4..6d678a0a8d 100644
--- a/target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-asmax-ar-1004g.dts
@@ -47,7 +47,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -79,5 +79,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts b/target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts
index c39247d405..fd4cece3fb 100644
--- a/target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-belkin-f5d7633.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -87,5 +87,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts
index 014fd3fb9d..d63af96ac2 100644
--- a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-10.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -68,5 +68,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts
index aeda3c2659..08396004e9 100644
--- a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw-11.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -68,5 +68,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts
index 61a0a3dd5c..5a8bc34f6f 100644
--- a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348gw.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -68,5 +68,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts
index 20c88c48fc..04516e20cc 100644
--- a/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-brcm-bcm96348r.dts
@@ -41,7 +41,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -54,5 +54,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts b/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts
index 1eac7e3745..3e80db4ff9 100644
--- a/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2110.dts
@@ -54,7 +54,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -86,5 +86,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts b/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts
index 0975cffd65..7076bad65c 100644
--- a/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-bt-voyager-2500v-bb.dts
@@ -54,7 +54,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -86,5 +86,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts b/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts
index 0d36aa21e0..75c0817b20 100644
--- a/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-5365.dts
@@ -61,7 +61,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -93,5 +93,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts b/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts
index ead9bc3a20..8480dbeb27 100644
--- a/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-comtrend-ct-536plus.dts
@@ -43,7 +43,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -75,5 +75,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts b/target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts
index 4213822a3e..deeb234d15 100644
--- a/target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-d-link-dsl-2640b-b.dts
@@ -51,7 +51,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -83,5 +83,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts b/target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts
index 6cafc891aa..59a1b7b5e3 100644
--- a/target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-davolink-dv-201amr.dts
@@ -15,7 +15,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -47,5 +47,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts b/target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts
index 122e049b3c..76af7b4147 100644
--- a/target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-dynalink-rta1025w.dts
@@ -15,7 +15,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -47,5 +47,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts b/target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts
index 6e80675ff7..5a466b4e74 100644
--- a/target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-inventel-livebox-1.dts
@@ -67,7 +67,7 @@
 
 &pflash {
 	reg = <0x1e400000 0x800000>;
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "ecoscentric,redboot-fis-partitions";
@@ -80,5 +80,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts b/target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts
index 4ea096e81a..65a2ac7587 100644
--- a/target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-netgear-dg834g-v4.dts
@@ -51,7 +51,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -83,5 +83,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts b/target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts
index f7e203227c..3e4b2812ef 100644
--- a/target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-netgear-dg834gt-pn.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -87,5 +87,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts b/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts
index 945fcc1f18..d3c0859a65 100644
--- a/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2404.dts
@@ -15,7 +15,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -47,5 +47,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts b/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts
index a2d2717575..3aa03b3e04 100644
--- a/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-sagem-fast-2604.dts
@@ -51,7 +51,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -83,5 +83,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts b/target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts
index 8b0d1cacfd..20a4a395f6 100644
--- a/target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-t-com-speedport-w-500v.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -87,5 +87,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts b/target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts
index 4822b04926..e3876e1366 100644
--- a/target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-tecom-gw6000.dts
@@ -29,7 +29,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -61,5 +61,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts b/target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts
index c86cbf9203..20f5b0cb3c 100644
--- a/target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-tecom-gw6200.dts
@@ -50,7 +50,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -82,5 +82,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts b/target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts
index 71620bc655..f0024ae22d 100644
--- a/target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-telsey-cpva502plus.dts
@@ -43,7 +43,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -75,5 +75,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts b/target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts
index 1358ebe99f..a058736dbd 100644
--- a/target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-telsey-magic.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -87,5 +87,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts b/target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts
index be111edd40..0d79b40d22 100644
--- a/target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-tp-link-td-w8900gb.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -87,5 +87,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts b/target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts
index 366eaf3bcd..4ce7fbce23 100644
--- a/target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts
+++ b/target/linux/bcm63xx/dts/bcm6348-usrobotics-usr9108.dts
@@ -28,7 +28,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -60,5 +60,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts b/target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts
index 22f50d5ada..e7367b07a3 100644
--- a/target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-alcatel-rg100a.dts
@@ -37,7 +37,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -64,5 +64,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts b/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts
index 669d1943f4..fc38c6e51a 100644
--- a/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw.dts
@@ -41,7 +41,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -49,5 +49,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts b/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts
index a4a977e73d..0248f41597 100644
--- a/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-brcm-bcm96358vw2.dts
@@ -37,7 +37,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -45,5 +45,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts b/target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts
index 351b2945d3..af6821d9e5 100644
--- a/target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-bt-home-hub-2-a.dts
@@ -43,7 +43,7 @@
 };
 
 &leds {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_serial_led>;
@@ -141,7 +141,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -167,5 +167,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts b/target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts
index c5e38ba6f6..9c990eeb73 100644
--- a/target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-comtrend-ct-6373.dts
@@ -47,7 +47,7 @@
 };
 
 &leds {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_serial_led>;
@@ -78,7 +78,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -105,5 +105,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts b/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts
index c2dad26b12..caa6d3f4b4 100644
--- a/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-2650u.dts
@@ -37,7 +37,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -64,5 +64,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts b/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts
index 6897378fe8..bd94e80046 100644
--- a/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-d-link-dsl-274xb-c2.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -82,5 +82,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts b/target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts
index fcf112a7e0..71c8f53676 100644
--- a/target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-d-link-dva-g3810bn-tl.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -82,5 +82,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts
index d23066866e..d7e4722c9d 100644
--- a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg553.dts
@@ -78,7 +78,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -105,5 +105,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts
index 1827e8e235..20253fc8e6 100644
--- a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-a.dts
@@ -109,7 +109,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -142,5 +142,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts
index fa804bef9e..b11ea6ce19 100644
--- a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-b.dts
@@ -109,7 +109,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -142,5 +142,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts
index 5ed847baab..bb1f626ab1 100644
--- a/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-huawei-echolife-hg556a-c.dts
@@ -104,7 +104,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -137,5 +137,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts
index 44e297c08a..9ff56f0611 100644
--- a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226g.dts
@@ -94,7 +94,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -121,5 +121,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
index bb1cd29359..d0b1e55213 100644
--- a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
@@ -94,7 +94,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -121,5 +121,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts
index e0a6b07697..8642d9d76a 100644
--- a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m.dts
@@ -94,7 +94,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -121,5 +121,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts b/target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts
index 0b9c397719..3e020ea010 100644
--- a/target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-pirelli-agpf-s0.dts
@@ -98,7 +98,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -125,5 +125,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts b/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts
index de22658843..fc15291563 100644
--- a/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-foxconn-r1.dts
@@ -75,7 +75,7 @@
 };
 
 &leds {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_serial_led>;
@@ -106,7 +106,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -114,5 +114,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts b/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts
index db6c5f3306..2889324672 100644
--- a/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-sfr-neufbox-4-sercomm-r0.dts
@@ -75,7 +75,7 @@
 };
 
 &leds {
-	status = "ok";
+	status = "okay";
 
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_serial_led>;
@@ -106,7 +106,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -114,5 +114,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts b/target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts
index 4aed5f0eb6..11c618e55d 100644
--- a/target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-t-com-speedport-w-303v.dts
@@ -66,7 +66,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -93,5 +93,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts b/target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts
index e422912297..cbf35bb011 100644
--- a/target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts
+++ b/target/linux/bcm63xx/dts/bcm6358-telsey-cpva642.dts
@@ -82,7 +82,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -109,5 +109,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts b/target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts
index 5809b6da4e..4b082af491 100644
--- a/target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts
+++ b/target/linux/bcm63xx/dts/bcm6359-huawei-echolife-hg520v.dts
@@ -38,7 +38,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -65,5 +65,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts b/target/linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts
index 4498272887..af172564a2 100644
--- a/target/linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts
+++ b/target/linux/bcm63xx/dts/bcm6361-sfr-neufbox-6-sercomm-r0.dts
@@ -58,7 +58,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -96,5 +96,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts b/target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts
index db8ce7318f..afb8a8f3dc 100644
--- a/target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts
+++ b/target/linux/bcm63xx/dts/bcm6362-sagem-fast-2504n.dts
@@ -66,7 +66,7 @@
 };
 
 &hsspi {
-	status = "ok";
+	status = "okay";
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
@@ -104,5 +104,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts b/target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts
index 05198a1c9a..d9152045a7 100644
--- a/target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-actiontec-r1000h.dts
@@ -76,7 +76,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -100,9 +100,9 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &uart1 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts b/target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts
index df9dc718e1..3fba8320d1 100644
--- a/target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-adb-av4202n.dts
@@ -71,7 +71,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -98,5 +98,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts b/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts
index 3df15144e4..757009fde6 100644
--- a/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvngr.dts
@@ -41,7 +41,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -54,5 +54,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts b/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts
index 1004f88396..ba9fcbe12a 100644
--- a/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-brcm-bcm96368mvwg.dts
@@ -41,7 +41,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "brcm,bcm963xx-cfe-nor-partitions";
@@ -54,5 +54,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts
index 248ec1d73d..6377aba282 100644
--- a/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025u.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -88,5 +88,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts
index ac1f896434..bb0126e30e 100644
--- a/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3025un.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -88,5 +88,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts
index 8048d131a2..0a53175321 100644
--- a/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-comtrend-vr-3026e.dts
@@ -55,7 +55,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -88,5 +88,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts b/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts
index 77ecc62abd..e220909aeb 100644
--- a/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg622.dts
@@ -52,7 +52,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -92,5 +92,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts b/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts
index 3f855bf0c9..3ac2f77b41 100644
--- a/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-huawei-echolife-hg655b.dts
@@ -74,7 +74,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -117,5 +117,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
index 0354d8eddd..599d8a25d2 100644
--- a/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-netgear-dgnd3700-v1.dts
@@ -93,7 +93,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -181,5 +181,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts b/target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts
index 48f35b16e7..e9b7e33ccb 100644
--- a/target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-observa-vh4032n.dts
@@ -87,7 +87,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -114,5 +114,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts b/target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts
index c123832803..1b2321d215 100644
--- a/target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts
+++ b/target/linux/bcm63xx/dts/bcm6368-zyxel-p870hw-51a-v2.dts
@@ -62,7 +62,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -94,5 +94,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts b/target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts
index c6db2721de..09e5deaa42 100644
--- a/target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts
+++ b/target/linux/bcm63xx/dts/bcm6369-comtrend-wap-5813n.dts
@@ -69,7 +69,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -153,5 +153,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts b/target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts
index 93d4792740..165eb6dcea 100644
--- a/target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts
+++ b/target/linux/bcm63xx/dts/bcm6369-netgear-evg2000.dts
@@ -82,7 +82,7 @@
 };
 
 &pflash {
-	status = "ok";
+	status = "okay";
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -120,5 +120,5 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
