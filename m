Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462656EFD8
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jul 2019 17:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+TJ2+fnszpOmaq3gzUDLXgigGBuiALcXcB221SJOCE=; b=K5cmpZFRP8i167
	cWjHSOdvuOf//jwIt2N+uSlAXKM9HzCmsGwW1cPrew9fSWbR39JCHLyYG8mlJFQmHHaMZ5ugcog0e
	9vQxgkD/1vZtrWni9MkUXGwbEl4PrFf9i1RDOvVyL/nH1VofbxXmwJkoteqMxXQ6tc3emLxQJiGGi
	gfSHo91zdIqLWK3VZxLHdE4ieVYFOETT83WPkur0l0F6EhjE9azhSxfwJR/9aH7M9Axp/0xiCtXb5
	WoYVibp4R1+977MwY+Nx75lBwOQnxcskJHv9R38LwGiLeBALPHX6s7lXlIgwdeenn0SRaogKyLliF
	BtEOlAmBKgSccH/I44qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hor9p-0005Vs-5S; Sat, 20 Jul 2019 15:20:21 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hor9V-0004xp-QN
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jul 2019 15:20:03 +0000
Received: from p200300c5871ba600c4334eedf16ec09e.dip0.t-ipconnect.de
 ([2003:c5:871b:a600:c433:4eed:f16e:c09e]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hor9P-0005Nr-Hv; Sat, 20 Jul 2019 17:19:55 +0200
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <9e6069ea-1f8a-62b8-d25c-27f064ba7279@birger-koblitz.de>
 <002d01d53efe$4df69a80$e9e3cf80$@adrianschmutzler.de>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <7ef6bf3a-e2f1-b39d-4cc8-64cea531bb16@birger-koblitz.de>
Date: Sat, 20 Jul 2019 17:19:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <002d01d53efe$4df69a80$e9e3cf80$@adrianschmutzler.de>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1563636001;
 3c066157; 
X-HE-SMSGID: 1hor9P-0005Nr-Hv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_082002_001715_46C30FA4 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Edimax RG21S
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

Hi Adrian,

I'll submit a v3 with all your comments taken into account.

The sticker on the router states the MAC addresses for both 2.4GHz and 5GHz, e.g:

2.4GHz:74DAxxyyzz63    5GHz:74DAxxyyzz64
PIN CODE: 01234567     PIN CODE: 01234567
SSID: edimax.setup 63  SSID: edimax.setup5G 64

The MAC Adress for the LAN interface is identical to the one on 2.4GHz,
the WAN-MAC is LAN-MAC+2, i.e in the example above 74DAxxyyzz65

Birger

On 20.07.19 15:23, mail@adrianschmutzler.de wrote:
> Hi,
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Birger Koblitz
>> Sent: Samstag, 20. Juli 2019 12:49
>> To: openwrt-devel@lists.openwrt.org
>> Subject: [OpenWrt-Devel] [PATCH v2] ramips: add support for Edimax RG21S
>>
>> ramips: add Edimax RG21S
>>
> 
> Some comments:
> - You can remove the memory node since mt7621 has auto-detection now.
> - Please specify IMAGE_SIZE in kiB since the ralink...16M variable currently not matches your partition size
> 
>> +		wps {
>> +                        label = "wps";
>> +                        gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
>> +                        linux,code = <KEY_RESTART>;
>> +                };
>> +	};
> 
> Indentation is broken there for some lines.
> 
> Can you report which of the MAC addresses matches the one on the devices label/sticker/cover/box?
> 
> Best
> 
> Adrian
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
