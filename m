Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900DB1146B4
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Dec 2019 19:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaDGUqgFGZxFDpxmHeWWtD2M5XpvVVvrxB5ZivvVV8Q=; b=hnTHRUC9Rc/307
	7geUeUrsjvgehee5246lRmydOz8sc5b7qmBNnjK/T5BZxA4zfql5AZ48m6DMLLNPlwu0Y/3YvCPIb
	S5agYSO0aHrTXLrX2+XnjXaiIDbyvP43exU7TOZmHUC2ApYS0OQzQRx64Q5GZmUOC9M9BcSj4nvQq
	RFSBzmD3kmxie0cGHMrUCtLAQMev/YvOTA7zN+fTuEKffShchXak0BfmwYyh/N2CFM8yCIl73AtZ/
	hFZgRzj6I2wh5qtPZUVMt4NGQgO34JA+UgUIf8voofjJJ8XNvaBsE6oejsJIqFmP5I/nUU4DrkspO
	SnoXLbSIf1PrIQtf3xBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvh9-0000c3-L3; Thu, 05 Dec 2019 18:17:43 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvh1-0000bH-Kg
 for openwrt-devel@lists.openwrt.org; Thu, 05 Dec 2019 18:17:37 +0000
Received: by mail-io1-xd32.google.com with SMTP id z23so4552207iog.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Dec 2019 10:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ldJeten/ixSgQdHt6dYFNltg0nGjgiR4xH23A3FBaP4=;
 b=HOhJ61NlbS2G9YVeAYNmPzOiSBI9sO342Xc3e+0RiXz3MS6upK+ixaItZxuT7OIVnM
 rVaLJOd5TIRIcmlQdGQP3zdBKQnPeAJcmKKa8hpe+Vwr7W2z6DRs/zlr81jKT/Yr1kPZ
 vgtk72vIvvuMgm+S1nJrhfh4F4HA8KwPxc/hvXx5/6lHLIHOaqnInMQwCOF6njqGLNHz
 eFyMi4TdxXo2+RPfr1ZKrt4fLMHsuyvld9SfIFmJWMphjz++CsCCw5XLoO4HxWk8GSzs
 W5I+unovMJZje/BOrHRvZyHAT4aYSxNxLQSms3mSe3UC4etiykhN4yqVD893knf6i029
 +SuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ldJeten/ixSgQdHt6dYFNltg0nGjgiR4xH23A3FBaP4=;
 b=JtPKYRrh8Udsj6wRjmfxSKcbnWg1LToSZ6ZAhWbi81EiYj1ydandeKNknTQitBcdzc
 p94xZ8Levbk5TW9kPLX7ipXe97OQuQkZj7LzGQHmtiWyuTvpNXzgbgLIoAyWN2GUxRUb
 hagklUFPfKeHie6qQzqf4i2KqnCVbmXP+h7/cHMsWYSvt2BSlmPuO8UV/mMgf1eWOzha
 It2USB83MU2pCXIGu9lsZMjCjw8VXqv2u82tySWOhLqqOyh+rPr/AXLI8kWQirhtnkhK
 PoEZ6WYouaeC5I6NYK4u7SRM3vkRK7iB1p2gHIXe8dMdSJ9jEnL648KkdUckb1m4Rd2p
 vuwQ==
X-Gm-Message-State: APjAAAVYCz57Jq2SGCz1qJONPb18TZwWvdEvnRkM2Np80nPhvl+YVLfB
 uGuEUPlf67iVFcq4l+TD52o7w+2UTv45nnfWxzeOjIhLEQc=
X-Google-Smtp-Source: APXvYqwRglBeD9qDaA0mX7LirPoIhXc+N2Z/jRnymUV5CM8JUUCPy0hTGUAOmt8F6DyJNpc0t61rnDweyTu9CCDTGrU=
X-Received: by 2002:a02:c9c6:: with SMTP id c6mr9569248jap.133.1575569852786; 
 Thu, 05 Dec 2019 10:17:32 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
In-Reply-To: <20191203143434.GF8181@meh.true.cz>
From: Joe Ayers <joe@ayerscasa.com>
Date: Thu, 5 Dec 2019 10:17:22 -0800
Message-ID: <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_101735_707628_E98C7A53 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> I'm not able to reproduce it on TP-Link Archer C7 v5.
>
> > Attempting to use the hAP ac lite model RB952Ui-5ac2nD with the 5GHz
> > radio0 802.11ac seems to be unstable and consume available memory.
> > This is only enabling radio0 with no other changes and bringing wifi
> > up/down to reproduce.   Am I doing something silly, or should I submit
> > a bug?
>
> uptime > /tmp/wifi.log && \
> cat /etc/openwrt_release >> /tmp/wifi.log && \
> uci set wireless.radio0.disabled=0 && \
> uci commit wireless && \
> wifi up && \
> echo "up: $(free | grep Mem:)" >> /tmp/wifi.log && \
> sleep 120 && \
> wifi down && sleep 1 && \
> echo "dn: $(free | grep Mem:)" >> /tmp/wifi.log && \
> for i in $(seq 1 10); do \
>         wifi up; sleep 15; echo "up: $(free | grep Mem:)" >> /tmp/wifi.log; \
>         wifi down; sleep 15; wifi down; sleep 1; wifi down; sleep 1; \
>         wifi down; sleep 1; echo "dn: $(free | grep Mem:)" >> /tmp/wifi.log; \
> done; cat /tmp/wifi.log
>
>  14:06:05 up 2 min,  load average: 0.24, 0.19, 0.08
> DISTRIB_ID='OpenWrt'
> DISTRIB_RELEASE='19.07.0-rc2'
> DISTRIB_REVISION='r10775-db8345d8e4'
> DISTRIB_TARGET='ath79/generic'
> DISTRIB_ARCH='mips_24kc'
> DISTRIB_DESCRIPTION='OpenWrt 19.07.0-rc2 r10775-db8345d8e4'
> DISTRIB_TAINTS=''
> up: Mem:         124528       15128       99536          76        9864       80684
> dn: Mem:         124528       14860       99076          84       10592       80596
> up: Mem:         124528       22592       91340          84       10596       72872
> dn: Mem:         124528       14884       99048          84       10596       80580
> up: Mem:         124528       22848       91084          84       10596       72616
> dn: Mem:         124528       14884       99048          84       10596       80576
> up: Mem:         124528       22848       91084          84       10596       72612
> dn: Mem:         124528       14884       99048          84       10596       80576
> up: Mem:         124528       22848       91084          84       10596       72612
> dn: Mem:         124528       14884       99048          84       10596       80576
> up: Mem:         124528       22940       90992          84       10596       72520
> dn: Mem:         124528       14916       99016          84       10596       80544
> up: Mem:         124528       22808       91124          84       10596       72652
> dn: Mem:         124528       14868       99064          84       10596       80592
> up: Mem:         124528       22900       91032          84       10596       72560
> dn: Mem:         124528       14876       99056          84       10596       80584
> up: Mem:         124528       22676       91256          84       10596       72784
> dn: Mem:         124528       14904       99028          84       10596       80556
> up: Mem:         124528       22712       91220          84       10596       72748
> dn: Mem:         124528       14936       98996          84       10596       80524
> up: Mem:         124528       22708       91224          84       10596       72752
> dn: Mem:         124528       14936       98996          84       10596       80524
>
>  15:53:35 up 1 min,  load average: 1.35, 0.41, 0.14
> DISTRIB_ID='OpenWrt'
> DISTRIB_RELEASE='19.07.0-rc2'
> DISTRIB_REVISION='r10775-db8345d8e4'
> DISTRIB_TARGET='ar71xx/generic'
> DISTRIB_ARCH='mips_24kc'
> DISTRIB_DESCRIPTION='OpenWrt 19.07.0-rc2 r10775-db8345d8e4'
> DISTRIB_TAINTS=''
> up: Mem:         124624       14068      100680         120        9876       81760
> dn: Mem:         124624       14368       99524         140       10732       80996
> up: Mem:         124624       22072       91816         140       10736       73296
> dn: Mem:         124624       14360       99528         140       10736       81004
> up: Mem:         124624       22072       91816         140       10736       73292
> dn: Mem:         124624       14360       99528         140       10736       81004
> up: Mem:         124624       22068       91820         140       10736       73296
> dn: Mem:         124624       14360       99528         140       10736       81004
> up: Mem:         124624       22196       91692         140       10736       73168
> dn: Mem:         124624       14360       99528         140       10736       81004
> up: Mem:         124624       22356       91532         140       10736       73008
> dn: Mem:         124624       14392       99496         140       10736       80972
> up: Mem:         124624       22164       91724         140       10736       73200
> dn: Mem:         124624       14344       99544         140       10736       81020
> up: Mem:         124624       22956       90932         140       10736       72408
> dn: Mem:         124624       14352       99536         140       10736       81012
> up: Mem:         124624       22924       90964         140       10736       72440
> dn: Mem:         124624       14352       99536         140       10736       81012
> up: Mem:         124624       22444       91444         140       10736       72920
> dn: Mem:         124624       14384       99504         140       10736       80980
> up: Mem:         124624       22188       91700         140       10736       73176
> dn: Mem:         124624       14352       99536         140       10736       81012
>

Possibly the same symptoms don't exist on 128MB RAM devices.   Also,
I'm not seeing a consistent result on the 64MB device I'm testing.

Multiple reports of 64MB RAM devices being mostly unusable:
Ref:   https://github.com/openwrt/openwrt/pull/1077
"The default setup of the OpenWrt snapshots is more or less unusable
on ath10k devices with 64MB RAM (which is a common configuration for
cheap ath79 dual-band devices). How do you suggest we proceed?"

Comparable results between above and my 64MB device.   However, if the
sleep time is extended the consumption is more--but doesn't seem to be
predictable.   In the original post of this thread, free went down
below 8M, consuming almost 30M of RAM.      I suspect this is not the
intended behavior.

 19:54:32 up 33 min,  load average: 0.00, 0.00, 0.00
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='19.07-SNAPSHOT'
DISTRIB_REVISION='r10779-d2d12346e8'
DISTRIB_TARGET='ar71xx/mikrotik'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt 19.07-SNAPSHOT r10779-d2d12346e8'
DISTRIB_TAINTS='no-all'
up: Mem:          59264       14844       35240         108
9180       28124
dn: Mem:          59264       14672       34696         116
9896       27964
up: Mem:          59264       22564       26800         116
9900       20072
dn: Mem:          59264       14720       34644         116
9900       27916
up: Mem:          59264       22500       26864         116
9900       20136
dn: Mem:          59264       14688       34676         116
9900       27948
up: Mem:          59264       21964       27400         116
9900       20672
dn: Mem:          59264       14688       34676         116
9900       27948
up: Mem:          59264       22328       27036         116
9900       20308
dn: Mem:          59264       14688       34676         116
9900       27948
up: Mem:          59264       22444       26920         116
9900       20192
dn: Mem:          59264       14688       34676         116
9900       27948
up: Mem:          59264       22552       26812         116
9900       20084
dn: Mem:          59264       14684       34680         116
9900       27952
up: Mem:          59264       22512       26852         116
9900       20124
dn: Mem:          59264       14680       34684         116
9900       27956
up: Mem:          59264       22480       26884         116
9900       20156
dn: Mem:          59264       14704       34660         116
9900       27932
up: Mem:          59264       22556       26808         116
9900       20080
dn: Mem:          59264       14692       34672         116
9900       27944
up: Mem:          59264       22588       26776         116
9900       20048
dn: Mem:          59264       14704       34660         116
9900       27932

Consuming ~23MB (~35M starting point):

root@OpenWrt:~# wifi up;  for i in $(seq 1 100); do   free | grep Mem
; sleep 20; done
'radio1' is disabled
'radio1' is disabled
Mem:          59264       21568       27784         116        9912       21064
Mem:          59264       23216       26136         116        9912       19420
Mem:          59264       27664       21688         116        9912       14972
Mem:          59264       32112       17240         116        9912       10524
Mem:          59264       32112       17240         116        9912       10524
Mem:          59264       32164       17188         116        9912       10472
Mem:          59264       32208       17144         116        9912       10428
Mem:          59264       32240       17112         116        9912       10396
Mem:          59264       33456       15896         116        9912        9180
Mem:          59264       35144       14208         116        9912        7492
Mem:          59264       36680       12672         116        9912        5956
Mem:          59264       38024       11328         116        9912        4612
Mem:          59264       39276       13796         116        6192        5196
Mem:          59264       40600       12472         116        6192        3872
Mem:          59264       40612       12460         116        6192        3860
Mem:          59264       40408       12664         116        6192        4064
Mem:          59264       40260       12812         116        6192        4212
Mem:          59264       40372       12700         116        6192        4100
Mem:          59264       40664       12408         116        6192        3808
Mem:          59264       40516       12556         116        6192        3956
Mem:          59264       40440       12632         116        6192        4032
Mem:          59264       40580       12492         116        6192        3892
Mem:          59264       40664       12408         116        6192        3808
Mem:          59264       40760       12312         116        6192        3712
...

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
