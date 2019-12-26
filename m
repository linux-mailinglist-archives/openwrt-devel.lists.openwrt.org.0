Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C834312AE9D
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 21:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CGKtSom0cx3Nk8pY5zDL2AXJIeKDKiKLuFAqaUld3Xg=; b=ba48fve6XFMdqieIxzEx+teBn
	/HuqO3Z+NzLOgL5sjwXoNhv7LmpwCPsxJpq1pdSNFUl9PpeeyzbxwvBjtThgsGC+Nngbv6FQgB8HN
	47s5T3COqNfhKq2N5XrI/Y4BDdBpZIngw3ubuVnujMp9wM5f2keHhxjCGTIkYB0Kcy7aM9LWzQDbo
	1WuA4GigvpuRN/2bnVHDOISej4ph9uFI/gJcLRucO0GqD5AawunSQDVrJPK8YBLt7uzRHgPHl8a2n
	QNuN6R15Z3HFftZc2Jel9jNc4lvmzd2epvgeKHKMMb+r2QCK/91gINZ8iOWpQdkvmde3xbgTf0bvj
	PcRuTqdEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ika4q-0000fT-A4; Thu, 26 Dec 2019 20:49:48 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ika4f-0000fB-Hu
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 20:49:39 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 690FDFA68F; Thu, 26 Dec 2019 21:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577393369;
 bh=cf3LnaHNlw3KQs2cGggt8MiwyaIIvpvhL6aT8S6yLdY=;
 h=Date:In-Reply-To:References:Subject:To:From:From;
 b=oi/dA2i8h8ItznnrDLjR3phUAVrWjhbxKdOsZ+LPP5IpLsgnROFvY8ZNkJllkxw7F
 Xk8dBDEJ/adn9E+jiFTacrCSWtePgYS625OYM0m1va6tLnP+YGtymUd8jp1m/7sNgT
 jbXulkA5j3JV23b3eknSHMtXiJSOb3ceBbLA6TZk=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from [10.0.0.6] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 22646FA687
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 21:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1577393367;
 bh=cf3LnaHNlw3KQs2cGggt8MiwyaIIvpvhL6aT8S6yLdY=;
 h=Date:In-Reply-To:References:Subject:To:From:From;
 b=SdwkuxGjWieoyu1w1rI51Sd9NzojHoQQ/c6/nZGxqTe/5PM+ULPYR75YqPa5EqQzT
 Le0pSJmqfydWL0MOxTkL1jETI/jJoOmlDlUaX7pRcBXUhj1jg2D3JnVgFLQIlSLcKx
 Mds19bzIayKLxx9xmkJA4M716ggdfzQyWwhg27a8=
Date: Thu, 26 Dec 2019 21:49:25 +0100
In-Reply-To: <20191226191211.5262-1-foss@volatilesystems.org>
References: <20191226191211.5262-1-foss@volatilesystems.org>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org
From: Stijn Segers <foss@volatilesystems.org>
Message-ID: <D9524DBE-985B-4A1B-95A3-6B5657A177A9@volatilesystems.org>
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_124937_877369_B409C7D9 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: rename DIR-860L entries
 according to the new manufacturer / device spec
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
Content-Type: multipart/mixed; boundary="===============0734257221738912995=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0734257221738912995==
Content-Type: multipart/alternative; boundary="----YCKHWGQ39VP40GOOHE1ZWWAGR38H5P"
Content-Transfer-Encoding: 7bit

------YCKHWGQ39VP40GOOHE1ZWWAGR38H5P
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Stijn Segers <foss@volatilesystems=2Eorg> schreef op 26 december 2019 20:12=
:11 CET:
>Most images follow the openwrt-target-subtarget-manufacturer-device
>naming specification, but the D-Link DIR-860L rev B1 does not=2E This
>patch brings it in line=2E
>
>Master had this updated a while ago, it's okay there=2E
>
>Signed-off-by: Stijn Segers <foss@volatilesystems=2Eorg>
>---
> target/linux/ramips/base-files/etc/board=2Ed/01_leds            | 2 +-
> target/linux/ramips/base-files/etc/board=2Ed/02_network         | 4 ++--
> =2E=2E=2E/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum  | 2 =
+-
> target/linux/ramips/image/mt7621=2Emk                           | 4 ++--
> 4 files changed, 6 insertions(+), 6 deletions(-)
>
>diff --git a/target/linux/ramips/base-files/etc/board=2Ed/01_leds
>b/target/linux/ramips/base-files/etc/board=2Ed/01_leds
>index fb74a2c87b=2E=2Ef08f6d7b1d 100755
>--- a/target/linux/ramips/base-files/etc/board=2Ed/01_leds
>+++ b/target/linux/ramips/base-files/etc/board=2Ed/01_leds
>@@ -160,7 +160,7 @@ dlink,dwr-922-e2)
>	ucidef_set_led_netdev "signalstrength" "signalstrength"
>"$boardname:green:sigstrength" "wwan0" "link"
> 	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" "tx rx"
> 	;;
>-dir-860l-b1)
>+dlink,dir-860l-b1)
> 	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "eth0=2E2"
> 	;;
> ex2700|\
>diff --git a/target/linux/ramips/base-files/etc/board=2Ed/02_network
>b/target/linux/ramips/base-files/etc/board=2Ed/02_network
>index 77cc8d63f9=2E=2E38d2d38c2b 100755
>--- a/target/linux/ramips/base-files/etc/board=2Ed/02_network
>+++ b/target/linux/ramips/base-files/etc/board=2Ed/02_network
>@@ -271,7 +271,7 @@ ramips_setup_interfaces()
> 		ucidef_add_switch "switch0" \
> 			"1:lan:3" "2:lan:4" "3:lan:1" "4:lan:2" "0:wan" "6@eth0"
> 		;;
>-	dir-860l-b1|\
>+	dlink,dir-860l-b1|\
> 	elecom,wrc-1167ghbk2-s|\
> 	elecom,wrc-2533gst|\
> 	elecom,wrc-1900gst|\
>@@ -553,7 +553,7 @@ ramips_setup_macs()
> 	dch-m225)
> 		lan_mac=3D$(mtd_get_mac_ascii factory lanmac)
> 		;;
>-	dir-860l-b1)
>+	dlink,dir-860l-b1)
> 		lan_mac=3D$(mtd_get_mac_ascii factory lanmac)
> 		wan_mac=3D$(mtd_get_mac_ascii factory wanmac)
> 		;;
>diff --git
>a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
>b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
>index 54deb5b2e0=2E=2E40746c6af4 100644
>--- a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
>+++ b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
>@@ -17,7 +17,7 @@ case "$board" in
> cy-swr1100 | \
> dch-m225 | \
> dir-645 | \
>-dir-860l-b1)
>+dlink,dir-860l-b1)
> 	fix_checksum seama
> 	;;
> dlink,dap-1522-a1)
>diff --git a/target/linux/ramips/image/mt7621=2Emk
>b/target/linux/ramips/image/mt7621=2Emk
>index 7eb59188fb=2E=2E6507e40f86 100644
>--- a/target/linux/ramips/image/mt7621=2Emk
>+++ b/target/linux/ramips/image/mt7621=2Emk
>@@ -110,7 +110,7 @@ define Device/asus_rt-ac57u
> endef
> TARGET_DEVICES +=3D asus_rt-ac57u
>=20
>-define Device/dir-860l-b1
>+define Device/dlink_dir-860l-b1
>   $(Device/seama)
>   DTS :=3D DIR-860L-B1
>   BLOCKSIZE :=3D 64k
>@@ -120,7 +120,7 @@ define Device/dir-860l-b1
>   DEVICE_TITLE :=3D D-Link DIR-860L B1
>DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport
>wpad-basic
> endef
>-TARGET_DEVICES +=3D dir-860l-b1
>+TARGET_DEVICES +=3D dlink_dir-860l-b1
>=20
> define Device/mediatek_ap-mt7621a-v60
>   DTS :=3D AP-MT7621A-V60
>--=20
>2=2E20=2E1
>
>
>_______________________________________________
>openwrt-devel mailing list
>openwrt-devel@lists=2Eopenwrt=2Eorg
>https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel

Sorry guys=2E=2E=2E A v2 for my previous patch, still for 19=2E07=2E
------YCKHWGQ39VP40GOOHE1ZWWAGR38H5P
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"gmail_quote">Stijn Segers &lt;foss@v=
olatilesystems=2Eorg&gt; schreef op 26 december 2019 20:12:11 CET:<blockquo=
te class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left:=
 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Most images follow the openwrt-target-subtarget-manu=
facturer-device<br>naming specification, but the D-Link DIR-860L rev B1 doe=
s not=2E This<br>patch brings it in line=2E<br><br>Master had this updated =
a while ago, it's okay there=2E<br><br>Signed-off-by: Stijn Segers &lt;foss=
@volatilesystems=2Eorg&gt;<hr> target/linux/ramips/base-files/etc/board=2Ed=
/01_leds            | 2 +-<br> target/linux/ramips/base-files/etc/board=2Ed=
/02_network         | 4 ++--<br> =2E=2E=2E/linux/ramips/base-files/etc/uci-=
defaults/09_fix-checksum  | 2 +-<br> target/linux/ramips/image/mt7621=2Emk =
                          | 4 ++--<br> 4 files changed, 6 insertions(+), 6 =
deletions(-)<br><br>diff --git a/target/linux/ramips/base-files/etc/board=
=2Ed/01_leds b/target/linux/ramips/base-files/etc/board=2Ed/01_leds<br>inde=
x fb74a2c87b=2E=2Ef08f6d7b1d 100755<br>--- a/target/linux/ramips/base-files=
/etc/board=2Ed/01_leds<br>+++ b/target/linux/ramips/base-files/etc/board=2E=
d/01_leds<br>@@ -160,7 +160,7 @@ dlink,dwr-922-e2)<br> 	ucidef_set_led_netd=
ev "signalstrength" "signalstrength" "$boardname:green:sigstrength" "wwan0"=
 "link"<br> 	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" =
"tx rx"<br> 	;;<br>-dir-860l-b1)<br>+dlink,dir-860l-b1)<br> 	ucidef_set_led=
_netdev "wan" "wan" "$boardname:green:net" "eth0=2E2"<br> 	;;<br> ex2700|\<=
br>diff --git a/target/linux/ramips/base-files/etc/board=2Ed/02_network b/t=
arget/linux/ramips/base-files/etc/board=2Ed/02_network<br>index 77cc8d63f9=
=2E=2E38d2d38c2b 100755<br>--- a/target/linux/ramips/base-files/etc/board=
=2Ed/02_network<br>+++ b/target/linux/ramips/base-files/etc/board=2Ed/02_ne=
twork<br>@@ -271,7 +271,7 @@ ramips_setup_interfaces()<br> 		ucidef_add_swi=
tch "switch0" \<br> 			"1:lan:3" "2:lan:4" "3:lan:1" "4:lan:2" "0:wan" "6@e=
th0"<br> 		;;<br>-	dir-860l-b1|\<br>+	dlink,dir-860l-b1|\<br> 	elecom,wrc-1=
167ghbk2-s|\<br> 	elecom,wrc-2533gst|\<br> 	elecom,wrc-1900gst|\<br>@@ -553=
,7 +553,7 @@ ramips_setup_macs()<br> 	dch-m225)<br> 		lan_mac=3D$(mtd_get_m=
ac_ascii factory lanmac)<br> 		;;<br>-	dir-860l-b1)<br>+	dlink,dir-860l-b1)=
<br> 		lan_mac=3D$(mtd_get_mac_ascii factory lanmac)<br> 		wan_mac=3D$(mtd_=
get_mac_ascii factory wanmac)<br> 		;;<br>diff --git a/target/linux/ramips/=
base-files/etc/uci-defaults/09_fix-checksum b/target/linux/ramips/base-file=
s/etc/uci-defaults/09_fix-checksum<br>index 54deb5b2e0=2E=2E40746c6af4 1006=
44<br>--- a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum=
<br>+++ b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum<b=
r>@@ -17,7 +17,7 @@ case "$board" in<br> cy-swr1100 | \<br> dch-m225 | \<br=
> dir-645 | \<br>-dir-860l-b1)<br>+dlink,dir-860l-b1)<br> 	fix_checksum sea=
ma<br> 	;;<br> dlink,dap-1522-a1)<br>diff --git a/target/linux/ramips/image=
/mt7621=2Emk b/target/linux/ramips/image/mt7621=2Emk<br>index 7eb59188fb=2E=
=2E6507e40f86 100644<br>--- a/target/linux/ramips/image/mt7621=2Emk<br>+++ =
b/target/linux/ramips/image/mt7621=2Emk<br>@@ -110,7 +110,7 @@ define Devic=
e/asus_rt-ac57u<br> endef<br> TARGET_DEVICES +=3D asus_rt-ac57u<br> <br>-de=
fine Device/dir-860l-b1<br>+define Device/dlink_dir-860l-b1<br>   $(Device/=
seama)<br>   DTS :=3D DIR-860L-B1<br>   BLOCKSIZE :=3D 64k<br>@@ -120,7 +12=
0,7 @@ define Device/dir-860l-b1<br>   DEVICE_TITLE :=3D D-Link DIR-860L B1=
<br>   DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport =
wpad-basic<br> endef<br>-TARGET_DEVICES +=3D dir-860l-b1<br>+TARGET_DEVICES=
 +=3D dlink_dir-860l-b1<br> <br> define Device/mediatek_ap-mt7621a-v60<br> =
  DTS :=3D AP-MT7621A-V60</pre></blockquote></div><br clear=3D"all">Sorry g=
uys=2E=2E=2E A v2 for my previous patch, still for 19=2E07=2E</body></html>
------YCKHWGQ39VP40GOOHE1ZWWAGR38H5P--


--===============0734257221738912995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0734257221738912995==--

