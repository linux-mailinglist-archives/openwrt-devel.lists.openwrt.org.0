Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0C72026D5
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jun 2020 23:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y3mz4xH01G5bHOgtOKYKxaiThHRa9Vd8q7ZrZzwQ/Q=; b=OLPapyYDV5mIXp
	ajcdGYILxZvvSRrFmUdaACKL246vw4teZGRtWz8FMRnQvB+1gkMJtiRQ0/IuImv3pyi1p8UwdQFDZ
	GJWRBnmZUro+i2lmYBzPz0vZUDIR6yc7j+tzvOPf5y4IbFHaJ7jWDVA/yt2TjberxNLh7VL+nu74C
	7FJXPtBWiupQWugESFsScWEHiy4nkIW53f7xXTs+gahXSBQ/WMRDFeSaqM9JvobQEl4RhH2UU/Bbf
	MSDVIYRyhZbPITweO9WqKFTwVnTLXSyeHMK4HCe6/7vldyKWjqyZ/Xt85r+hYClWICq9cp569g3ZW
	uxXyK/daz+FWvIhr9q7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jml0Z-00015e-G7; Sat, 20 Jun 2020 21:26:39 +0000
Received: from achernar.uberspace.de ([95.143.172.237])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jml0Q-000155-D6
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jun 2020 21:26:32 +0000
Received: (qmail 19069 invoked from network); 20 Jun 2020 21:26:24 -0000
Received: from localhost (HELO ?IPv6:2a02:790:ff:1021:3259:ee65:3494:259a?)
 (127.0.0.1)
 by achernar.uberspace.de with SMTP; 20 Jun 2020 21:26:24 -0000
To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20200620210322.GA686@metropolis.localdomain>
From: Vincent Wiemann <vincent.wiemann@ironai.com>
Openpgp: preference=signencrypt
Autocrypt: addr=vincent.wiemann@ironai.com; prefer-encrypt=mutual; keydata=
 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
 sFWRrW2QGIhjT+Y4XMq8yZQ=
Message-ID: <b9bdc3ce-1e34-420d-8f0a-fbf64f3fc6cd@ironai.com>
Date: Sat, 20 Jun 2020 23:26:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200620210322.GA686@metropolis.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_142630_728805_7F278D28 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.143.172.237 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [95.143.172.237 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] Dumb Wi-Fi client
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
Cc: =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Enrico,

On 20.06.20 23:03, Enrico Mioso wrote:
> hello Bjorn,
> hello all!!
> 
> I would like to use an Archer C60 as a dumb Wi-Fi client. In particular, I would like to:
> - be able to connect to the WAN port of tthe ethernet switch to access the LAN network to which the router is connectes as a client, directly
> 	e.g.: when I do dhcp o n WAN, the oruter does DHCP on the wlan network
> - connect to the LAN ports of the device to talk to the device itself.

This is not a dumb WLAN client. A WLAN client does ordinarily just have one MAC address (the address of the WLAN interface).
Thus you can't just bridge the WAN port with the WLAN client network. You either have to NAT the traffic or use WDS (3-address-mode) or
ARPNAT. Both WDS and ARPNAT are not standard-compliant and the access point needs to support it. Have a look at the Wiki for that.

> The router has both 2.4 GHZ and 5 GHZ radios, and I would like to be able to use both transparently (e.g.: it should just work, connecting with the right one, or both).
> 
> If possible then, i would like to be able to connect to multiple known networks, but this is optional.
> 
> Can you give me some hints on a good setup? Or may I just use wireless client and let the device do the NAT?

If that's okay for you that's the easiest way to go. Use Multiwan if you want to use multiple networks.

> 
> Sorry Bjorn for the direct CC but I know you experienced with ath79 snapshots.... and maybe DS, if applicable in this case...
> 


Best,

Vincent

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
