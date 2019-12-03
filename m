Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33033110038
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 15:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7OJktdlPB6IV1qfbsjvBHWurkG4/7TPCYc4Ct08xzDY=; b=dGfoKe/foSrgJ4ODsUC/lESnpw
	SgJifPTIGW6MgEA1ROFgA05tvtfBx5k9WrMBppg7RkaPUBfPL5ahkcxZXrpPowz/ZYFhPIT/nsnra
	uMZOdbFgCzL63b815VZ2JEIoNKgZIexY0M1ovuwbAVdT0ncxWC4P1xgttlAoR4rRZ3aLF8B97psKQ
	t+QsX9XRv2Wntba6jN50DFArPm8qzN5kbxC6P1Tk28TD+BsWH67aasCV6ADxzzFT/ihw0n+i2W5Ig
	pZkz/3zfafZ25qfxv9QdMXidM72MhMeZdqdMYA1S1USkQlWDVlYb2t82AW2YnufbLKHaMde32WJjm
	YACNRPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9GS-0002nE-8U; Tue, 03 Dec 2019 14:34:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9GJ-0002bg-Nt
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 14:34:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3008439DD;
 Tue,  3 Dec 2019 15:34:44 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5a846660;
 Tue, 3 Dec 2019 15:34:34 +0100 (CET)
Date: Tue, 3 Dec 2019 15:34:34 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Joe Ayers <joe@ayerscasa.com>
Message-ID: <20191203143434.GF8181@meh.true.cz>
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063447_945470_C8E49B8F 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: ayerscasa.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: ayerscasa.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Joe Ayers <joe@ayerscasa.com> [2019-11-28 18:40:23]:

Hi,

I'm not able to reproduce it on TP-Link Archer C7 v5.

> Attempting to use the hAP ac lite model RB952Ui-5ac2nD with the 5GHz
> radio0 802.11ac seems to be unstable and consume available memory.
> This is only enabling radio0 with no other changes and bringing wifi
> up/down to reproduce.   Am I doing something silly, or should I submit
> a bug?

uptime > /tmp/wifi.log && \
cat /etc/openwrt_release >> /tmp/wifi.log && \
uci set wireless.radio0.disabled=0 && \
uci commit wireless && \
wifi up && \
echo "up: $(free | grep Mem:)" >> /tmp/wifi.log && \
sleep 120 && \
wifi down && sleep 1 && \
echo "dn: $(free | grep Mem:)" >> /tmp/wifi.log && \
for i in $(seq 1 10); do \
	wifi up; sleep 15; echo "up: $(free | grep Mem:)" >> /tmp/wifi.log; \
	wifi down; sleep 15; wifi down; sleep 1; wifi down; sleep 1; \
	wifi down; sleep 1; echo "dn: $(free | grep Mem:)" >> /tmp/wifi.log; \
done; cat /tmp/wifi.log

 14:06:05 up 2 min,  load average: 0.24, 0.19, 0.08
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='19.07.0-rc2'
DISTRIB_REVISION='r10775-db8345d8e4'
DISTRIB_TARGET='ath79/generic'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt 19.07.0-rc2 r10775-db8345d8e4'
DISTRIB_TAINTS=''
up: Mem:         124528       15128       99536          76        9864       80684
dn: Mem:         124528       14860       99076          84       10592       80596
up: Mem:         124528       22592       91340          84       10596       72872
dn: Mem:         124528       14884       99048          84       10596       80580
up: Mem:         124528       22848       91084          84       10596       72616
dn: Mem:         124528       14884       99048          84       10596       80576
up: Mem:         124528       22848       91084          84       10596       72612
dn: Mem:         124528       14884       99048          84       10596       80576
up: Mem:         124528       22848       91084          84       10596       72612
dn: Mem:         124528       14884       99048          84       10596       80576
up: Mem:         124528       22940       90992          84       10596       72520
dn: Mem:         124528       14916       99016          84       10596       80544
up: Mem:         124528       22808       91124          84       10596       72652
dn: Mem:         124528       14868       99064          84       10596       80592
up: Mem:         124528       22900       91032          84       10596       72560
dn: Mem:         124528       14876       99056          84       10596       80584
up: Mem:         124528       22676       91256          84       10596       72784
dn: Mem:         124528       14904       99028          84       10596       80556
up: Mem:         124528       22712       91220          84       10596       72748
dn: Mem:         124528       14936       98996          84       10596       80524
up: Mem:         124528       22708       91224          84       10596       72752
dn: Mem:         124528       14936       98996          84       10596       80524

 15:53:35 up 1 min,  load average: 1.35, 0.41, 0.14
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='19.07.0-rc2'
DISTRIB_REVISION='r10775-db8345d8e4'
DISTRIB_TARGET='ar71xx/generic'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt 19.07.0-rc2 r10775-db8345d8e4'
DISTRIB_TAINTS=''
up: Mem:         124624       14068      100680         120        9876       81760
dn: Mem:         124624       14368       99524         140       10732       80996
up: Mem:         124624       22072       91816         140       10736       73296
dn: Mem:         124624       14360       99528         140       10736       81004
up: Mem:         124624       22072       91816         140       10736       73292
dn: Mem:         124624       14360       99528         140       10736       81004
up: Mem:         124624       22068       91820         140       10736       73296
dn: Mem:         124624       14360       99528         140       10736       81004
up: Mem:         124624       22196       91692         140       10736       73168
dn: Mem:         124624       14360       99528         140       10736       81004
up: Mem:         124624       22356       91532         140       10736       73008
dn: Mem:         124624       14392       99496         140       10736       80972
up: Mem:         124624       22164       91724         140       10736       73200
dn: Mem:         124624       14344       99544         140       10736       81020
up: Mem:         124624       22956       90932         140       10736       72408
dn: Mem:         124624       14352       99536         140       10736       81012
up: Mem:         124624       22924       90964         140       10736       72440
dn: Mem:         124624       14352       99536         140       10736       81012
up: Mem:         124624       22444       91444         140       10736       72920
dn: Mem:         124624       14384       99504         140       10736       80980
up: Mem:         124624       22188       91700         140       10736       73176
dn: Mem:         124624       14352       99536         140       10736       81012

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
