Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B541BD0BB
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 01:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YFmBOKzR4UIyQowmw5RzX0NB5ATo0ecKYmbSElEALck=; b=CHEGgUc0i7mBvf
	IfzwwTzdp/9/ImKm2gaEOyoUkleQ7U5opSkgcxVgy75GklCZOEcNW9xA4Qv5ZGSkigs46lmp5K2If
	1b66BZcdlUjUDH+0L31hnuwBg3BnFvzH2dNbtQMgMzLLK3aHawCu8LV3lYyadqhNyXHVJcrKJWcWZ
	d0MYh6uhQFT6i2VH1T7a1rBtqlB4FXu4zJUw4XyzqETNkNKhD1yYOqwdZdzcZMUZDXuAXwdXMHKgn
	ewcAH3u9dY4wFiW94bY7rKpmslmKw85W8KpUz2EMa3ngk5uhZusafIsIFMyBPq4w9UnI4C7JG6CBB
	fris7UpnnA6vVYesU03A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZzo-0005mj-Bi; Tue, 28 Apr 2020 23:50:36 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZzU-00054S-Kw
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 23:50:25 +0000
Received: by mail-pg1-x535.google.com with SMTP id x26so106000pgc.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 16:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SrHTavjfafQMDsDn3UWyC3xwhQ4n0WyXeDJd5QHCjEA=;
 b=cOxiJ8O7FiMbpIuRrBTtLMC5iwRZDJCCq8mRAsF+jK3yZeav0arvS9zOxymICRGXxw
 3DhK/I4h7DASN+81BV9ld/ctH3aCB4SRNTbFPxD1vOtMbzokSVDoSKX1PNuHw+hpYDhZ
 Gzk1p4kH64dQmZiy8Cdb6u+UNsnP09b52POeZijY+wYmlHehk9zYnWVwXDjxgaDbrwl2
 bcxrxYJJpRqDaQfyx6/BDmXod2XqeUcFJg+ikD7ZrZ82Us+iC812Y8b0sELOBhI/qNLq
 3xJqqRZJn8dXkjuVf+onbsYriKNdsRRIpxvoOxwtBjU3fp/OukmgOrdlHg5xojqHSIfc
 qp7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SrHTavjfafQMDsDn3UWyC3xwhQ4n0WyXeDJd5QHCjEA=;
 b=uEatOIxIjoJcVt0+g0Hj1+Ja0H8Gnd5OUK50Hwjc5mBVZAChncID3A+JhL2NvBmOit
 CzOauLE0dnYI4/+ss8uQK0jTKLsBO9ZuSEQVMhFZ5Lgjq66T36Pq/sCNEbA1Chu93fgY
 FqS1bmgJbkyAkqihMGy6WzKqClkd3y3yhhTwnp78X4AWShbLVjQnxnwgjiRi0LjzuxfQ
 Ewbc60E+m9unI4Ofh6x6jdsaZ/UlkASZdk28P31WarPJGCH9WrUnsY2xIUfOmaBPlC6j
 FMkx549WCZs01BEeq2wi5eHQI1wh9W2qt3Oa1m4EIvxkIPeNFGT/u8b/+EwJa3lFalxO
 L76A==
X-Gm-Message-State: AGi0PuZ4oWQRWcjIhrh9SLIlhqeP/v3wRPr9IBLlLpaiWuli9vu0SuNp
 UcshTIwTeM950p68pw/U/DU31YTz
X-Google-Smtp-Source: APiQypJObyJ8dNoRYCah6kcctwQgTDEWipeunFOLDlzWzfXEPb2EUa2GYh8QkxrUtXXTnKTBEnOnhQ==
X-Received: by 2002:a63:b954:: with SMTP id v20mr29131696pgo.100.1588117813554; 
 Tue, 28 Apr 2020 16:50:13 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:945:de10:84a9:8887:9761:d310])
 by smtp.gmail.com with ESMTPSA id x66sm16043637pfb.173.2020.04.28.16.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 16:50:13 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Apr 2020 07:49:48 +0800
Message-Id: <20200428234948.896922-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_165016_922994_2A1D4262 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: remove default switch setup in
 02_network
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ramips images now relies on explicit switch setup for proper failsafe
functionality. Remove default cases where it relies on vlan setup in
dts and add switch setup for devices affected.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../mt7620/base-files/etc/board.d/02_network  |  20 +--
 .../mt76x8/base-files/etc/board.d/02_network  |   3 -
 .../rt288x/base-files/etc/board.d/02_network  |   3 -
 .../rt305x/base-files/etc/board.d/02_network  | 139 ++++++++++--------
 .../rt3883/base-files/etc/board.d/02_network  |   3 -
 5 files changed, 85 insertions(+), 83 deletions(-)

diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
index 8ae50b3df5..fe78bcd252 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
@@ -16,11 +16,15 @@ ramips_setup_interfaces()
 	dlink,dwr-116-a1|\
 	dlink,dwr-921-c1|\
 	dlink,dwr-922-e2|\
+	dovado,tiny-ac|\
 	ohyeah,oy-0001|\
 	phicomm,psg1208|\
 	phicomm,psg1218a|\
 	planex,db-wrt01|\
 	planex,mzk-750dhp|\
+	ralink,mt7620a-evb|\
+	ralink,mt7620a-mt7610e-evb|\
+	ralink,mt7620a-v22sg-evb|\
 	sanlinking,d240|\
 	youku,yk1|\
 	zbtlink,zbt-ape522ii|\
@@ -70,18 +74,17 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
 		;;
-	asus,rt-ac51u)
-		ucidef_add_switch "switch0" \
-			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
-		;;
+	asus,rt-ac51u|\
 	asus,rt-n14u|\
 	bdcom,wap2100-sk|\
+	edimax,ew-7478apc|\
 	glinet,gl-mt300a|\
 	glinet,gl-mt300n|\
 	glinet,gl-mt750|\
 	hiwifi,hc5661|\
 	wrtnode,wrtnode|\
-	zbtlink,zbt-wa05)
+	zbtlink,zbt-wa05|\
+	zyxel,keenetic-omni-ii)
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
 		;;
@@ -210,17 +213,10 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
 		;;
-	zyxel,keenetic-omni-ii)
-		ucidef_add_switch "switch0" \
-			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6@eth0"
-		;;
 	zyxel,keenetic-viva)
 		ucidef_add_switch "switch1" \
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "7t@eth0"
 		;;
-	*)
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		;;
 	esac
 }
 
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index a6543fd38f..d758fe5543 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -122,9 +122,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan:2" "1:lan:1" "4:wan" "6@eth0"
 		;;
-	*)
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		;;
 	esac
 }
 
diff --git a/target/linux/ramips/rt288x/base-files/etc/board.d/02_network b/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
index 0cc0e0b28b..134ac879cd 100755
--- a/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
@@ -28,9 +28,6 @@ ramips_setup_interfaces()
 	dlink,dap-1522-a1)
 		ucidef_set_interface_lan "eth0"
 		;;
-	*)
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		;;
 	esac
 }
 
diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
index 5f18aa98f5..ae456077fa 100755
--- a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
@@ -4,47 +4,22 @@
 . /lib/functions/uci-defaults.sh
 . /lib/functions/system.sh
 
-ramips_setup_rt3x5x_vlans()
-{
-	if [ ! -x /sbin/swconfig ]; then
-		# legacy default
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		return
-	fi
-	local wanports=""
-	local lanports=""
-	for port in 5 4 3 2 1 0; do
-		if [ "$(swconfig dev rt305x port $port get disable)" = "1" ]; then
-			continue
-		fi
-		if [ "$(swconfig dev rt305x port $port get lan)" = "0" ]; then
-			wanports="$port:wan $wanports"
-		else
-			lanports="$port:lan $lanports"
-		fi
-	done
-	ucidef_add_switch "rt305x" $lanports $wanports "6t@eth0"
-}
-
 ramips_setup_interfaces()
 {
 	local board="$1"
 
 	case $board in
-	accton,wr6202|\
-	alfa-network,w502u|\
-	netcore,nw718|\
-	petatel,psr-680w|\
-	skyline,sl-r7205|\
-	upvel,ur-336un)
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		;;
+	7links,px-4885-4m|\
+	7links,px-4885-8m|\
 	allnet,all0256n-4m|\
 	allnet,all0256n-8m|\
 	allnet,all5002|\
 	allnet,all5003|\
+	belkin,f7c027|\
 	dlink,dcs-930l-b1|\
 	dlink,dcs-930|\
+	edimax,3g-6200nl|\
+	hame,mpr-a1|\
 	hame,mpr-a2|\
 	hauppauge,broadway|\
 	hootoo,ht-tm02|\
@@ -54,6 +29,7 @@ ramips_setup_interfaces()
 	tenda,3g150b|\
 	tenda,3g300m|\
 	tenda,w150m|\
+	trendnet,tew-714tru|\
 	unbranded,a5-v11|\
 	wansview,ncs601w|\
 	zorlik,zl5900v2)
@@ -61,51 +37,102 @@ ramips_setup_interfaces()
 		ucidef_add_switch_attr "switch0" "enable" "false"
 		ucidef_set_interface_lan "eth0"
 		;;
-	alphanetworks,asl26555-8m|\
-	alphanetworks,asl26555-16m)
+	8devices,carambola)
 		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+			"0:lan" "1:lan" "6@eth0"
 		;;
+	accton,wr6202|\
+	alfa-network,w502u|\
 	argus,atp-52b|\
 	asiarf,awm002-evb-4m|\
 	asiarf,awm002-evb-8m|\
+	asus,rt-n10-plus|\
+	asus,wl-330n|\
+	asus,wl-330n3g|\
+	aztech,hw550-3g|\
+	engenius,esr-9753|\
 	jcg,jhr-n805r|\
 	jcg,jhr-n825r|\
 	jcg,jhr-n926r|\
+	petatel,psr-680w|\
 	planex,mzk-wdpr|\
+	skyline,sl-r7205|\
+	teltonika,rut5xx|\
+	tenda,w306r-v2|\
+	unbranded,xdx-rn502j|\
 	upvel,ur-326n4g)
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
 		;;
-	asiarf,awapn2403)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:wan" "6@eth0"
-		;;
-	asus,wl-330n|\
-	easyacc,wizard-8800)
-		ucidef_set_interface_lan "eth0.1"
-		;;
-	aximcom,mr-102n)
-		ucidef_set_interface_lan "eth0.2"
-		;;
-	belkin,f5d8235-v2|\
-	trendnet,tew-714tru)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
-		;;
+	airlive,air3gii|\
+	asus,rt-g32-b1|\
+	asus,rt-n13u|\
+	aximcom,mr-102n|\
 	buffalo,whr-g300n|\
+	dlink,dap-1350|\
+	dlink,dir-300-b1|\
 	dlink,dir-300-b7|\
 	dlink,dir-320-b1|\
+	dlink,dir-600-b1|\
 	dlink,dir-610-a1|\
+	dlink,dir-615-d|\
+	dlink,dir-620-a1|\
+	dlink,dir-620-d1|\
+	dlink,dwr-512-b|\
+	easyacc,wizard-8800|\
 	edimax,3g-6200n|\
+	fon,fonera-20n|\
 	hilink,hlk-rm04|\
+	mofinetwork,mofi3500-3gn|\
+	netcore,nw718|\
+	nexaira,bc2|\
 	nixcore,x1-16m|\
 	nixcore,x1-8m|\
+	olimex,rt5350f-olinuxino|\
+	olimex,rt5350f-olinuxino-evb|\
+	omnima,miniembplug|\
+	omnima,miniembwifi|\
 	planex,mzk-w300nh2|\
-	zyxel,keenetic)
+	poray,ip2202|\
+	poray,m3|\
+	poray,m4-4m|\
+	poray,m4-8m|\
+	poray,x5|\
+	poray,x8|\
+	prolink,pwh2004|\
+	ralink,v22rw-2x2|\
+	unbranded,wr512-3gn-4m|\
+	unbranded,wr512-3gn-8m|\
+	upvel,ur-336un|\
+	zyxel,keenetic|\
+	zyxel,nbg-419n|\
+	zyxel,nbg-419n-v2)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
 		;;
+	alphanetworks,asl26555-8m|\
+	alphanetworks,asl26555-16m)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+		;;
+	arcwireless,freestation5)
+		# FIXME: Which is the actual wan port?
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:wan" "2:wan" "3:wan" "4:wan" "6@eth0"
+		;;
+	asiarf,awapn2403)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:wan" "6@eth0"
+		;;
+	aximcom,mr-102n|\
+	trendnet,tew-638apb-v2)
+		ucidef_add_switch "switch0" \
+			"4:lan" "6@eth0"
+		;;
+	belkin,f5d8235-v2)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
+		;;
 	dlink,dir-615-h1)
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
@@ -133,10 +160,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan" "6t@eth0"
 		;;
-	trendnet,tew-638apb-v2)
-		ucidef_add_switch "switch0" \
-			"4:lan" "6@eth0"
-		;;
 	wiznet,wizfi630a)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "2:wan" "6@eth0"
@@ -145,14 +168,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan:3" "1:lan:2" "2:lan:1" "3:lan:0" "4:wan" "6@eth0"
 		;;
-	*)
-		RT3X5X=$(grep -E "(RT3.5|RT5350)" /proc/cpuinfo)
-		if [ -n "${RT3X5X}" ]; then
-			ramips_setup_rt3x5x_vlans
-		else
-			ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		fi
-		;;
 	esac
 }
 
diff --git a/target/linux/ramips/rt3883/base-files/etc/board.d/02_network b/target/linux/ramips/rt3883/base-files/etc/board.d/02_network
index 873c72cea3..7b73f93944 100755
--- a/target/linux/ramips/rt3883/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/rt3883/base-files/etc/board.d/02_network
@@ -39,9 +39,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "0@eth0"
 		;;
-	*)
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		;;
 	esac
 }
 
-- 
2.26.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
