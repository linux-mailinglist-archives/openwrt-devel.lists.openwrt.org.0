Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860AA73014
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 15:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iBL0m4LbNyRluCWxbaQcLAdgIqb7IFhTQWQdz1dJ4ns=; b=EtQC4TPt/TzaTb
	QnVpTz9M6MFJk27Qb97d7pqw+plqGTLsfTUgGpz1s/nu2orwO8FYZzjMa+wDMu0PDfqdjfoz6I4sH
	sCj1sDqaZaF8nNegcxC/GMgX6EtXlQF3O0AEp5QY71Kt1y/zvBfvjv3gygt9xTa18aliRIJ7q6Kl4
	shnusDFPaLXcCiA2HuURhtMS4bnzZEG4JOaunZp2ivrLVzAOS0363qvgfyVNUNBq8TUTtq3RpHoOv
	bZHsY8okLN+ZGn3TqFreqxob5s5lxSItnb1w3XspSYtWZt5wmdHMRA1U3CjP0Z/i9i+6vmsK+Rga9
	Tw/GOCFP6NsGL81tA+gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHV8-0002rg-28; Wed, 24 Jul 2019 13:40:14 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHUv-0002S3-2K
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 13:40:02 +0000
Received: from buildfff.adridolf.com ([188.194.32.21]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N9dkD-1iVKl11wjl-015ccU for <openwrt-devel@lists.openwrt.org>; Wed, 24
 Jul 2019 15:39:58 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 15:39:32 +0200
Message-Id: <20190724133932.2873-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:F+4JsKND3EJbrYLKIRzSfh6i+7OAyMWtH0DbaCBtXZfArCHXxC8
 Wz/FQ4gbKwEsNVhVxslwVBla0pZMi5pFXEKCCZWoI9VLNVq05BDGpnl0+qxj4clKpkYZGHL
 SRtQSGQFF7g3LWYeLg0d2SW28wL/2o5oYdb46dWQnXkUXAYIX6lMMcIm9EELRn6tdeXNExk
 0D94nPTqXU/X+6u/XuVqQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RKAyfhNoVMA=:ufObdMQK2dj0sv2g/XAQiT
 ogP96xqIs2TiC052MQd2sy9yA8an+AhuAItXkOMBEsuQNiE7KSJaszskdsYlq040yPz3h+Uju
 ms2YIlh923loa9riu3VlLrgYdO7NilV/y2wBwDX0W1gwWvNjukEkE7cvRJo4GK32Y1+ZbBqTh
 gqaM7TobBfzlJ8LAyMd8J4AVmHFDcMDmDDR/b545xy5Y59VzhLOL54Ts1Me/uhstUWFZRjG2r
 A0VujegdXkJ1FnXZ1KRADi9+e40uH6hs+2nTazDr0xFLrWnyFDzi/koz7Jw5q9LSuN3f/VyP0
 IIjqtpOvU4IeSmNXCVsCV8dx+gC7QMCpjVkMjAsLEXQiqDKtuIutjDnNYiT2xdpBiCKoWIyR7
 dC4tMEVKdJnHtlf7wREgwwNrxDG+h/TVjHIDA1OBxCkAwjZCWelb1LL6B1Rnge/MTXZTmA556
 ur4UMm1/R/UUUnqCkKZ0TsiM5mcmeiA+V64x5yfkKydMnpiVWZ8pL79P5QkXEJbIcVfgo3GbB
 fZXzriR7CB/KM7xHqYaTafZjgtgX55D/aRRIA/gUtCwo852AWbyhivs46v2gK4FnYmXfyRo4P
 JLPMNdyo3sZvu40zIUa6P4Pquy1I6Kqw8KhJcFVtdA7wAmagZgkXk7Yl1aX/JfNWtbnBUqeFe
 NMib5LZdzLO+8QwcLf8E5xe4nMfVf6OB1LnKR01foa8Vjfqo3Yx9gwjOKJDJJBHRzfeY8P8Lf
 3ybH8C6wFgGfqWgZH/mb8k7GeIIakvH7k1qZojwFAN7yHLCD4p6PYrejsTU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_064001_402321_F27D04ED 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] lantiq: Replace backticks by $(...) and
 remove useless echo
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh | 2 +-
 .../linux/lantiq/base-files/lib/functions/lantiq_dsl.sh   | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh b/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh
index b9a3313c83..4506737672 100755
--- a/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/dsl/pppoa.sh
@@ -8,7 +8,7 @@
 include /lib/network
 scan_interfaces
 
-interfaces=`ubus list network.interface.\* | cut -d"." -f3`
+interfaces=$(ubus list network.interface.\* | cut -d"." -f3)
 for ifc in $interfaces; do
 
 	json_load "$(ifstatus $ifc)"
diff --git a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
index 8665240da4..bd01339fff 100755
--- a/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
+++ b/target/linux/lantiq/base-files/lib/functions/lantiq_dsl.sh
@@ -290,8 +290,8 @@ xtse() {
 		annex_s="$annex_s M,"
 	fi
 
-	annex_s=`echo ${annex_s:1}`
-	annex_s=`echo ${annex_s%?}`
+	annex_s=${annex_s:1}
+	annex_s=${annex_s%?}
 
 	# Evaluate Line Mode (according to G.997.1, 7.3.1.1.1)
 
@@ -346,8 +346,8 @@ xtse() {
 		line_mode_s="$line_mode_s G.993.1 (VDSL),"
 	fi
 
-	line_mode_s=`echo ${line_mode_s:1}`
-	line_mode_s=`echo ${line_mode_s%?}`
+	line_mode_s=${line_mode_s:1}
+	line_mode_s=${line_mode_s%?}
 
 	xtse_s="${xtse1}, ${xtse2}, ${xtse3}, ${xtse4}, ${xtse5}, ${xtse6}, ${xtse7}, ${xtse8}"
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
