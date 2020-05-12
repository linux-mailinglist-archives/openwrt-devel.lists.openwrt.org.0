Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E348C1CFB6D
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 18:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DaW2d90F2Bw8QE1Ee+3u7j9VKzsVREXo5JzjVf48SZU=; b=l26orhuz098QZsrHjKNTuVH3w
	Q8098lelu3dh3qasNUoONoF5LSn3tbwxDAcfjL3LD1aYY9wyQnZ2EZ8pDRVpRpteFUUNgvWLyxMCl
	/mhhMEmvEJ7lcK5yHpAZqcOMesBrRPsXkk7rYrcbrAhwKTp4TgdY5agSzgo9NYOAIbYpkr0OnCXf7
	qpzkKjCTibcpN80PYQCkvCvfRhaUp/rNHqn2SCQ2PHJxa9xmqvtB7CqB7gPnCUAqqkkSLO1naHd9r
	L8zUxLvSfBzh1fU5nl/R+wr3CWSQdvw8brDeyn23gBrPoTwGQxHdJedSqVIjhm+b0c7kDct3noA6g
	HDxk3hEQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYEL-0006rQ-3f; Tue, 12 May 2020 16:58:09 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYE9-0006qp-3P
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 16:57:59 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 5EE96FCBCA; Tue, 12 May 2020 18:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1589302661;
 bh=mJxSL8RHHzyLPSXpIrjt9sJ13O2nrN5VpSHPI3nsbRI=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=hlRkTfT8+sEdtmFC//4d4FpP7MZFSL8t4mwtFIEQIsvL4BQtz0uNxHbk5TiSO+As8
 6sSRsZQPjzY4gALfrIPqRaD3UE5std0VHclaYbGwrCbnfySwbGP+Q07u7E4rYgRWJ3
 gnfXVgla1DOCYswBZHkkw6AUudos8rSMdOMRCrM4=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (213.219.166.32.adsl.dyn.edpnet.net [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 22A1DFBD83;
 Tue, 12 May 2020 18:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1589302660;
 bh=mJxSL8RHHzyLPSXpIrjt9sJ13O2nrN5VpSHPI3nsbRI=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=CvveI46meZ5Y7L1+lg3hs7A4a9fe6zN5/d2ORrFx303nxccTw1b+XNqP7pHCAzavo
 BhAF+x6B+fbewufIFMQj/4l7txjlZ/q4sWkKRJboMQ5s1cZSsRXgL1pqzLs6wUX0ao
 pz0wMTpvQ0/ELLpm3oN4ChNRhgNxR2ZE9t7BoSSI=
Date: Tue, 12 May 2020 18:57:34 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Enrico Mioso <mrkiko.rs@gmail.com>
Message-Id: <YR98AQ.20GEA1Q4DAD62@volatilesystems.org>
In-Reply-To: <alpine.LNX.2.22.419.2005121544390.322033@mStation.localdomain>
References: <20200512100520.3150-1-foss@volatilesystems.org>
 <RGY7AQ.6L62V3KCGE1C@volatilesystems.org>
 <alpine.LNX.2.22.419.2005121544390.322033@mStation.localdomain>
X-Mailer: geary/3.36.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_095757_287990_8FE51320 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to DIR-860L B1
 DEVICE_PACKAGES
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op dinsdag 12 mei 2020 om 15u44 schreef Enrico Mioso 
<mrkiko.rs@gmail.com>:
> Out of curiosity, is MT7602 supported?
> 
> thanks!!
> Enrico
> 
> 

It is and has been for a while. 2,4 GHz on MT7621 (especially the older 
2,4 GHz radios) isn't the best though.

Cheers

Stijn

> On Tue, 12 May 2020, Stijn Segers wrote:
> 
>> Date: Tue, 12 May 2020 14:53:15
>> From: Stijn Segers <foss@volatilesystems.org>
>> To: openwrt-devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to 
>> DIR-860L B1
>>     DEVICE_PACKAGES
>> 
>> 
>> 
>> Op dinsdag 12 mei 2020 om 12u05 schreef Stijn Segers 
>> <foss@volatilesystems.org>:
>>> The DIR-860L B1 has an MT7603 radio but was missing the 
>>> corresponding kmod-mt7603 module in DEVICE_PACKAGES.
>>> Add this so it gets included by default, even when the kmod gets 
>>> set to [m].
>>> 
>> 
>> Nevermind me... This device has an MT7602 radio, not MT7603...
>> 
>> Stijn
>> 
>>> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
>>> ---
>>>  target/linux/ramips/image/mt7621.mk | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> 
>>> diff --git a/target/linux/ramips/image/mt7621.mk 
>>> b/target/linux/ramips/image/mt7621.mk
>>> index 082bb31b79..f16bf2a5bd 100644
>>> --- a/target/linux/ramips/image/mt7621.mk
>>> +++ b/target/linux/ramips/image/mt7621.mk
>>> @@ -227,7 +227,7 @@ define Device/dlink_dir-860l-b1
>>>    DEVICE_VENDOR := D-Link
>>>    DEVICE_MODEL := DIR-860L
>>>    DEVICE_VARIANT := B1
>>> -  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 
>>> kmod-usb-ledtrig-usbport wpad-basic
>>> +  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 
>>> kmod-usb-ledtrig-usbport wpad-basic
>>>    SUPPORTED_DEVICES += dir-860l-b1
>>>  endef
>>>  TARGET_DEVICES += dlink_dir-860l-b1
>>> --
>>> 2.20.1
>>> 
>>> 
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> 
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
