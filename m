Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BC61E975F
	for <lists+openwrt-devel@lfdr.de>; Sun, 31 May 2020 13:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRwWsZLNZKMGG0frianyerMfi+F6ANS3g3UF7vsiFog=; b=Tg7WkfP+UyTV+u
	4pziHySlAm31lrcG2Erv9HJVPh2wWhKTA3BxeTeB9LWhTK+LJphVrQnz2Ha/OGZxbVq/gCmqkWl4i
	vJn00Ilf8pi9Rwc3bm5XUzoeCs08EGwjMPu5uvYoYvJrUrZu6jdxFhKvV1lIEQUKJPM/6+jEWfDJ1
	m66TKsJFhR9N2IKJdTGMPXBqWEBhqivOdeOShFVrcHqwu+/ptvF1tYj6Du79uDF49X1iI9zwDYyrY
	RMERfadvbw+rFLKItYYdHzjZm5e+LJsfG19UVX/x1PQibF+YCuwDoTcwRTBujlL6YCDzlTraCFezO
	jF8TMlNyPpYOBiVj1XTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfMWH-00084J-Ae; Sun, 31 May 2020 11:52:49 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfMWB-00083v-TA
 for openwrt-devel@lists.openwrt.org; Sun, 31 May 2020 11:52:45 +0000
Received: from acer ([188.192.133.27]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MCs9W-1joCDo3VFQ-008qIZ; Sun, 31
 May 2020 13:52:41 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200531104916.6041-1-foss@volatilesystems.org>
In-Reply-To: <20200531104916.6041-1-foss@volatilesystems.org>
Date: Sun, 31 May 2020 13:52:33 +0200
Message-ID: <007d01d63741$fce33940$f6a9abc0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGniImItAh6XjhEGa4kgT/WwlWSA6kfclYw
X-Provags-ID: V03:K1:An8lwSpQ7kXFanbTQ6ieP3r+f6LHwJzyL6v77Uj7lrO4jMlNKb0
 fTzyNEPruU7vn/2UzX133UtMpd94CaAY6Q3PvqeF60taw7SUwlh4IK16qmx/OdzLcu+GQ4R
 8uizyTNnTx35yi0NsffaoUYNFZNWk3kogGaczPdvw2loTxDku3WF4EFsiVnMX7viAptvNyV
 orSdh9UtkkWIQtJDqgxsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:skw+dg9KDdE=:5prry+I1fggT86CNz2MGiA
 sLv+NOaCha3pnag8oKH1FU1zu1db4RYA+Bcw8TjxgoB5RVjoPb6Br7sQBymcvGRzaZgBxDMSF
 RMrl/qgT22FFXgJTaS7WowC2Ts2ZwwIxrjE4HyxRHSJZaqQVnbfoZ3O8hwk1NAOMAjGqZ19rk
 0ulLmUdMEuYOBZOtiX31Zf+1VmlIVD3XCtqEhSNvVc3Vri+x5S3judETgLmdO0Ay6rISh6KDZ
 W3Xq8zQqk/f3GAE6OKPZJ7dS2+Do35jIBLEz39a8Bnh4U9hqzin+gJic9DnlVhSf2hmAeBQd2
 c6PZxHtpyyZ9JA2O08T5C8zuNqzMJBdrzlbV1gZvPEvCIeW43HDre7TZ6om7oDrJaeKv6pl6T
 jnHsRIUgiFNQs+Nt3zMWs81Lj5Fgoih7R5/QCmneEPqwUzmh53bReUYenJR7H6c/GWM9JRlIt
 ofm1yUeGZ9RT9060fU0yd7x/bnyorb4CkLzE5GztDfqp5239xtD6vHLVIvup9nYUptF4MWqP+
 f8OiHlQB3BnsZVIjijoeTC1rXd6hEWW1iid52YxP/TbIWZglRYDRmj2BdxbEFA+g/VXOqruYZ
 2ll1kb4hH6T78NI2Hl0wLigLQm30/+788nmAC+E3+flRdYC/LCg7aja95ZWBscEwmB6jtmah0
 +op0dx+/SJbD1kdLaZ5NW2qHOZL219z73WK65l7vLvVE9nLB/8VVRbB99jMUuHvqbDiDaEbxH
 v5p7OskY5n+mjfJioO/UbuMERrURr6Y1LhdZqCIo0yv5repJaYo37TeSiZMxXQyLo8IX5h93n
 DTDh+qMg3fBiTdeutwbKYKWXtdKW2uq9TMsW7uewkmAaKbitJ6kRbiS1Oy+12Ny+1fhRjRx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_045244_230710_96971318 
X-CRM114-Status: GOOD (  13.60  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: switch DIR-860L B1 DTS to
 generic wireless naming convention.
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

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Segers
> Sent: Sonntag, 31. Mai 2020 12:49
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: switch DIR-860L B1 DTS to generic
> wireless naming convention.
> 
> Switches the DIR-860L B1 DTS to the generic wifi naming convention.
> 
> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
> ---
>  target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> b/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> index ce747deb28..336e696fe9 100644
> --- a/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> +++ b/target/linux/ramips/dts/mt7621_dlink_dir-860l-b1.dts
> @@ -152,17 +152,19 @@
>  };
> 
>  &pcie0 {
> -	wifi0: mt76@0,0 {
> +	wifi@0,0 {
> +		compatible = "mediatek,mt76";
>  		reg = <0x0000 0 0 0 0>;
> -		mediatek,mtd-eeprom = <&radio 0x2000>;
> +		mediatek,mtd-eeprom = <&factory 0x2000>;

This changes the referenced partition node, so you are now reading from a
different location in flash.
I doubt that the calibration data is stored twice on this device? (And even
then, it would make more sense to read from radio ...)

Best

Adrian

>  		ieee80211-freq-limit = <5000000 6000000>;
>  	};
>  };
> 
>  &pcie1 {
> -	wifi1: mt76@0,0 {
> +	wifi@0,0 {
> +		compatible = "mediatek,mt76";
>  		reg = <0x0000 0 0 0 0>;
> -		mediatek,mtd-eeprom = <&radio 0x0>;
> +		mediatek,mtd-eeprom = <&factory 0x0000>;
>  		ieee80211-freq-limit = <2400000 2500000>;
>  	};
>  };
> --
> 2.20.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
