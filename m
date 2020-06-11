Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F731F64C1
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 11:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p9D8vQKPo4LVmdj9mZ70G6G+Mi+ZiDjAXhpCCoNzf4E=; b=U03OVpXieRhV0o
	Yoqg8yWjLaa8VyucWr0CkQkclMeHbI/tIIHTYL6STeLWI4s3NdXRzAwvmSoRHD1orA7vpUD96t3Zm
	JIIGc4iAvRTNqtP5dVJJq4/03vieOfdTj5Ij0KO5QKhYx5EVib9gKM0aBB9OMEQ1kdtkDQ3KKdcuT
	n9l6Zd2RO+/ikVZLtom/aup6maX+yDho5EUxEIv5CIUIKaW2Kn3yCWuVu0gj4B0Af4Z89UBj0Raeh
	dWh6nv+BuqGyH2sxLxvgu3N6YIuq+61rzDEuSRfIftYZZvQyxVfLPu3T9CPMjAPmsjwVm92ZH6Uhh
	LgXs4sj7oRsMtncYG9IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJXQ-00025c-QJ; Thu, 11 Jun 2020 09:30:20 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJX3-000247-Q4
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 09:29:59 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MaIrN-1jO1Wm1a3p-00WBWG for <openwrt-devel@lists.openwrt.org>; Thu, 11
 Jun 2020 11:29:53 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 11 Jun 2020 11:28:59 +0200
Message-Id: <20200611092859.2254-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:sE1Ne+RdAefmJ0JPASNVDKQfSnxqW2PRS81K/qLkmwOaRj95gmh
 1cVa5AmDYe8MttPA0thQX0IsPBxNSLsy2jZmfvIA8ronrkTEpyP00Rn/twbcAyHGzOEJC/Q
 U9YUVxHpr0gAXiErOnEl1fO66q7ayANBD3sR+IPAe3ZNJZfGL9ab1cfR8oYT9mL46ty6kMN
 F8ap7xnF7JNVMaqOIke1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zx7nbDpEUbw=:pdDtYluYT9/NTaQC/aYjcy
 1+Dyw8KCBXGxkorJyMiCIqCbKlYIFou5VLvQGlVCave9xRbYS3d8hOMPCDUANnCOp8PzlkYoa
 BmNSYotuhbMR5W/rs2NLg5AE+5PoqG4YoYDoG9HGh5AC+pP813kapwn1h/Y71QAr6ziT6yq32
 lq50DQkkoxzv9QSySz+pzAaK0xYN2AP5DPUPKraDGhwQNjmtYp+AwdZJx8poE22OSu241dT3a
 MB3P7FN3ZDUdlS9DneaEwdGDZuYfVj5qICLEeum2L5q7A8GZ65GK4WJU+Slr8FGqz2AR5A1/A
 zrOlXPGTbMRsI2510xCQPKed4hi2Rx3GITxn1NayaQwvCsLfKNWUdaraZjQJCfL3fo7IzaxC7
 n7kVlv+kONsq1N2vsZdBwuZ4vG+dT0xBamKvuVNd3kTPUuS/yl+W4aqyZdOCV1mH0EOWMg3Jk
 OAYE33+UCH2dtT5anc92P/aeiU/7krk1wJ0fE1Vi9Z5hqb2TNAM18Lz0589ANN1n/G5lLIHyC
 2w1RtH1iAovZwMTtnm0JR5xrQbJ5Z+twlWB8Ki1mIJ9hG9+SsilxqPPR9xHR+0IADBJYM/gFC
 jBcUnSWgksvjCJRHT0gP+kAHRR1i4bn2e/z81TKYfXxEJ8SL4OZeYphJSjGt2DsDjkrScSLXr
 h+d7P5LhCqaCp/MHVUJ8eBQEkhaen5Uly6gJjrRsizKK6nAiEC0c9BCSwO7GtGKAhJDFPJ66s
 GRn8COOw7gf+ELVbPHTZXKI9ZuKU00X2k8sxRzjvHevVgGNXhCmMlyppe/yY32uuq6ZwPd9VK
 6gi75YuqUGyKkZT2ogtSK43osHsT/4js7aNt39/ON8zkdFEpDIxGwHr8JrBjAK8Iz/5cMq+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_022958_136082_02CDDDED 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: fix IPv4-only corner case in
 01_enable_packet_steering
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

The uci config section network.globals set up in /bin/config_generate
will only be created if /proc/sys/net/ipv6 exists.

Correspondingly, lacking IPv6 support, the command
uci set network.globals.packet_steering=1
will fail with "uci: Invalid argument" as the network.globals config
has not been set up.

Fix that by adding the setup there as well.

Fixes: dfd62e575c6c ("ramips: enable packet steering by default on mt7621")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../mt7621/base-files/etc/uci-defaults/01_enable_packet_steering | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/01_enable_packet_steering b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/01_enable_packet_steering
index 6a77229f29..114c7e1a46 100644
--- a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/01_enable_packet_steering
+++ b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/01_enable_packet_steering
@@ -1,4 +1,5 @@
 uci -q get network.globals.packet_steering > /dev/null || {
+	uci set network.globals='globals'
 	uci set network.globals.packet_steering=1
 	uci commit network
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
