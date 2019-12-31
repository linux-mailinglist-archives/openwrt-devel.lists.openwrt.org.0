Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925C512D97E
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 15:31:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z/zT0/xVGXkRQyMOSQ6xi5rDVjljr3NAXxc41lqNes4=; b=ItlfbZzw0fMDd0
	K3yIxEt8iFOqNXIlslCu/2xN56kpweo7OqLh0XuRgiRB9pTog4N1LuEGfdqiH1CynznHZZ2hJdflz
	InA3O2ZxZQr19MG+q9mL6x2p/A+3NN7zop5Imx3+ATunU1klWkyEGXULFGHwRzuFBK6JLh+TcTnbx
	TqJdSJZG/MXG04796CAg5F+Was2I4gLtlcJbDo6KrbRk3Vkl4Tt2+wKO4LjGfOI/EWSf+vfpzh/p9
	AGV7PVImy/4hqFSGTYCeMvCGHpAosQXkwVZhj73tFbkksXMwKgAQZ1jXoh9bFpJFz/HVjMXxKZTgt
	I1kRGNRB14PBhyzt6UEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imIYa-0002YA-UM; Tue, 31 Dec 2019 14:31:36 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imIYO-0002W4-PM
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 14:31:28 +0000
X-QQ-mid: bizesmtp21t1577802652tn2p2q1m
Received: from P65xSA.lan (unknown [112.94.100.15])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 22:30:51 +0800 (CST)
X-QQ-SSF: 0140000000200060E3F0B00A0000000
X-QQ-FEAT: Me8y4DzRu2SAIUbWbA5f7+nnZr7FK3xNqicFxz1+SxC+67rjukHVswdGfzW/t
 UnJSWkZ72R9DdMlxdKJYzm0nWsEq/nboxMCtQ3dv5jwSKk9Yz66SpViKBE8tatxSwy1Gg7I
 zcoIL/ahv6e+zfbM0kIzYUldc0ZKqbczsZCsUweIlcrMzywwpa2ITlLEqIAhBclbTIEEWvz
 C4MIsX6CR0e7Bn8bqexyFyWNF4xeGxqAGrIsNjp1xXevsEUA91Ip5VdbQGRp3XzckeRHMnC
 s1OJSDSc3mDW60RI7iax9h7Z1D4YnVn9TUhF22yjPj8nyo3pmmajgbBAot6pY+iUejNJey8
 Aohihda
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 22:30:44 +0800
Message-Id: <20191231143044.17304-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_063124_951006_7A6FB6CB 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: remove HiWiFi HC5661 non-existent
 5GHz LED
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

HC5661 does not have 5GHz WiFi or LED
Fixes: e6e373d3480e ("ramips: Add DTS files for HiWiFi HC5x61 models")

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts b/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
index 185e045de1..074257ab86 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts
@@ -30,10 +30,5 @@
 			label = "hc5661:blue:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
 		};
-
-		wlan5g {
-			label = "hc5661:blue:wlan5g";
-			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
-		};
 	};
 };
-- 
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
