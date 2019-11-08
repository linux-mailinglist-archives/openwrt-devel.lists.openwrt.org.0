Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C6EF49B5
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 13:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qdvl5uRum2DLfYeUL5IpGDyAA4NBB5qQRn6d/ct/Mrg=; b=iqxuDTpfG6ttsLmFUK93nQi4WQ
	pR7YJzn0/x1Ds/pF5rhwTqmGEX6sDf5GGQ8I3wprye0qW0oayWUCTnsS3/oZ5i7LrJ39DpKuBsIWX
	i+R1UrBs0Xbdso2o3jLhBHT8YMDR3xfflM3Fby1iT9hBgrUQU8k+xnFQ1dXTSLR0r7IcyQrSiYpKN
	28KmpGfzy3PKFlHVnpFj+ZljRe/m5zyJpNBhCzmlErlelmihiHFcPMSDDS1WeDJ0tlPYDL0hJkF0V
	vPtY4dKjzXlbrgpupCxq7cv6+NOTWmmsmtVjk0In5a/cv9kXEFwSHCqav3myF25dZZNk1HlJmk6CC
	PpF+V5mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT31E-0007YJ-8n; Fri, 08 Nov 2019 12:05:36 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT315-0007XK-P0
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 12:05:29 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MkYHO-1i4Suh32Rq-00m56z for <openwrt-devel@lists.openwrt.org>; Fri, 08
 Nov 2019 13:05:25 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 13:05:20 +0100
Message-Id: <20191108120520.1966-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
References: <20191108120520.1966-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:uNUA8s0CtqMEA8/+BCP8ozWgJQh9qDwFQ3SvFJcEO9PL/dH1fwJ
 leavpHNZ3b63IgxdTNBf4Q5nUJealvn/2Cqfehgl1pr+MVroIIA/6lkA4dVTchc57CPhgP1
 BLCWrULIVVDha0twYV7eLq2SSEPZbNUcY0OJXo/fir9gFrAeLTTXdQI3jB1vlQvruUAgNVH
 hVExbT0Wac4cmpcSnUySA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0zYqH3lh9TE=:SuscYozGQ26OQRIDla5gfK
 NDaCTItyzEW+M4wJYCgogC+fuvOypzR06Jazl7NWL6q5quBYBbOrKqSr08LTnR3o8oU7J+y+h
 pAPxoRIOBfi/NpFmSrOG9gG7U5TwY5z/O5RN4sXEH9moyX0OujE/M2WxSgp45V1lFiN0bBwiD
 RdqY/n8FKKLLEDrJvjLXHY3o+vk4EUiaBGnnSX1OUgtqGXFF/KpwhBhe12GMg26qGdE/MJuao
 GW+KHQviTxzDDqgq9j5Kzfwq6E1WnehykrLmVIsiBRFUsTn+Vl32wEQnaMgOSsClza2LtL0qH
 40XRsw3NBrPtf+rIByq3o7HQv2Qm3BGcloEhnYKc52mX+pEAuTp0pR7O7VhH3kTuLZPepdvv7
 OfCWkbk1wNY+k87Dd9X+b+QexhUcgFpe5cdG9UZyGGH/DTsT2+MKBxmHK5uyFvS1WcGt5pndg
 3VH/KaAUTAjxgMZX0rcRM9wZQUeu2xMF0u+Kk9Jovo0SxxS83Cdhe4oydvWYhl7GnfNP1Mjc1
 c7mtJ7j1DGERJlRarTZewNBRthoqwiJPglM/WzN/O8DxI6wFnt5lIS2MywrBb4IvjT3Ief/QD
 Lsje8a1AR1Lv1onsxqapU7+5R5iP6dDHdfz/gC5um9Wfa5OkzMlPuitp1l7RrUOwbdrhb0wCp
 AhbjwBkONgRx9B2j38HNt2QHO0IxiBv2OiBgN4KlgAFemJ916Rg8r4pgRQ03y2Wgq+52dnnSk
 vx6qythYuSK7HZ5OubM9fFZ1wi5ydDtUipI1LfHMgJZddSYTLQByCd5UHVF96yshja1S3eGzq
 Bua17xG9NaLw3aacr5Ep7hfLxo/Xi99tQc1g7uvp1MQB4ZQmuOoh/Q5PAYvx1+gZFpht3gsX7
 oCTQbOyiMbkmesMcL2cHgsj2AERyzcOiP1tlQHiJw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_040528_464108_55888EAF 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: use initial_setup indicator
 to improve SSID setup
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

By exploiting the new initial_setup option, default SSID setup
can be improved so it does not have to rely on the previous SSID
value anymore.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This patch is a proof-of-concept based on the SSID EUI patch as
just submitted. It's mainly intended to show the use of the
initial_setup option.
---
 .../files/etc/uci-defaults/15_wifi-ssid-mac-address          | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
index aeb46e39c0..2ec66b52dd 100644
--- a/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
+++ b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
@@ -1,11 +1,12 @@
 . /lib/functions.sh
 . /lib/functions/system.sh
 
+[ "$(uci get "system.@system[0].initial_setup")" = "1" ] || exit 0
+
 set_wifi_ssid() {
 	local iface="$1"
 
-	[ "$(uci get "wireless.${iface}.ssid")" = "OpenWrt" ] && \
-		uci set "wireless.${iface}.ssid=$ssid"
+	uci set "wireless.${iface}.ssid=$ssid"
 }
 
 label_macaddr=$(get_mac_label)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
