Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5675D130920
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z2PeUi8UMLh8d2rM4SIKy8Dpwle64Bhj9AXyPwvQHIA=; b=BDx6HxKBogz2kI6kwTHuY0m//
	5wTh4/FWMizKKEyz39FJSDn5e3UXypCFyHCwUjfVbaEuqKQO5z+SgHxuizegLM3J7maX8EJY6+OCU
	QHqOkJEYQjmojv/GT1++l1jIVib+uIwuP3nlsYALGV5t8JGQ4Xx2kcwN/Wmj7875sSyAbWQ+x8te0
	1qvu8fW1ZSTN+4wFoit54VeRw1KncO8UJyh6euUp+qDIDtlJH+zoR3nNEL5jxybSfZPfVIt++hFNU
	NcH+8LYbXZbrfNPbAqUwhYYCzmVn93Ixcm2cOzab7jgm+Wak3sNWYqn+K9I0fqMUra3hZJcKrxHcE
	Z1FlkJgmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io8uD-0000Zx-44; Sun, 05 Jan 2020 16:37:33 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io8u6-0000YT-Nr
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:37:28 +0000
Received: by mail-lf1-x131.google.com with SMTP id i23so34883618lfo.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 08:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sFRgeVhRtG49OAgxEbpYSM2M9lS9km67EoMooFyFgwk=;
 b=tvyA7/h87bt2qZmjQvNLmnJtKC+4sqlKcoRqqKAEa1DRMVFg7amp7zpvYN0n8Nn3x9
 NeenwxI7zZ6MDbTfIwajZc5JhuBVU8juw+8dojt/SvBeT2936SGDWPA7Fz0c8pSy+sUS
 3lw2h+tmsXSuykBm8wmUcVaAhwpaTd5+OXCF4s0F2Wlz8LLFwz6bFLg8i0r0nMFo7uh0
 V+juo9/zSrxzhVCoLpWT0NJcRIqNjlKDxAx2iFcS250yQZ9TC2in+HDMy9eZ6n7ObwgG
 Q8kHNFDqjqnVDLwzszDcwi08vf52AP5TefVuN5tychqgebqtH2ThEB2oggNLFDUibomy
 Dffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sFRgeVhRtG49OAgxEbpYSM2M9lS9km67EoMooFyFgwk=;
 b=Z02JEFnjF0Z1L8yOC5c39mDFNaSifacMFW7A7bu290mLtUdUi010SD0JPaJW0FWfsD
 ZtFE/B2KvIFgCtk/pTXlPJOIfy08gCCvzGfm4LAI/UsHNci4tKQCg1m0HKRY+U8LNV26
 MsFiSvpgqToNrrq/rz0nsC+awgVW8dIz+J5au+Tj2qzBIGWlV9Luzd6koYyWN2xUBS7r
 yNDkjdnPQ0ozJB07CaCZxn4SJ/gI1UL1/OT+EE2gVrYV7kaHPheknLz9FI6PKBlSHLkZ
 BBWw/NMUfZuKaKQF12Zbl+G8gY4u5I2K8/7RqLUsybak0QUOTUrDWqyykFWmFHwGDpDm
 5S1Q==
X-Gm-Message-State: APjAAAXoSXZuLSggOSMQHYKeMDthbXsy7ZrGCSp1bzgNv3SziV7TBIQX
 pppEJNtz194JLO/WVXK/MIc=
X-Google-Smtp-Source: APXvYqz3nqi99L34UtgSrTH9zmSBcQxZ240xNEYDASXQYaq+sKM0WaRwun9NJT/UcCFsBFMqIZBtlg==
X-Received: by 2002:a19:c80a:: with SMTP id y10mr53418136lff.177.1578242244314; 
 Sun, 05 Jan 2020 08:37:24 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id f30sm23042283ljp.31.2020.01.05.08.37.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jan 2020 08:37:23 -0800 (PST)
To: mail@adrianschmutzler.de, 'Tom Psyborg' <pozega.tomislav@gmail.com>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
 <009201d5c234$d1045e30$730d1a90$@adrianschmutzler.de>
 <50e1561a-a48e-6b82-0b2f-52bfd90e747e@hauke-m.de>
 <005f01d5c3c5$d420a320$7c61e960$@adrianschmutzler.de>
 <CAKR_QVJiA+kwuENABz=QLjBxVui-mVRTdNXCR+GmaaMf1Q26aw@mail.gmail.com>
 <009501d5c3e0$d4951b90$7dbf52b0$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <e9c2738f-98a9-da78-5280-d09d08fa8e8f@gmail.com>
Date: Sun, 5 Jan 2020 17:37:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <009501d5c3e0$d4951b90$7dbf52b0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_083726_808712_B3327909 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Hauke Mehrtens' <hauke@hauke-m.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian, Tom,

On 05.01.2020 16:57, mail@adrianschmutzler.de wrote:
>> -----Original Message-----
>> From: Tom Psyborg [mailto:pozega.tomislav@gmail.com]
>> Sent: Sonntag, 5. Januar 2020 16:33
>> To: mail@adrianschmutzler.de
>> Cc: Hauke Mehrtens <hauke@hauke-m.de>; OpenWrt Development List
>> <openwrt-devel@lists.openwrt.org>; Koen Vandeputte
>> <koen.vandeputte@ncentric.com>
>> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>> 
>> On 05/01/2020, mail@adrianschmutzler.de <mail@adrianschmutzler.de>
>> wrote:
>> > Hi,
>> >
>> >> -----Original Message-----
>> >> From: openwrt-devel [mailto:openwrt-devel-
>> bounces@lists.openwrt.org]
>> >> On Behalf Of Hauke Mehrtens
>> >> Sent: Samstag, 4. Januar 2020 18:26
>> >> To: mail@adrianschmutzler.de; 'OpenWrt Development List' <openwrt-
>> >> devel@lists.openwrt.org>
>> >> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
>> >> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>> >>
>> >> On 1/3/20 1:53 PM, mail@adrianschmutzler.de wrote:
>> >> > Hi Hauke,
>> >> >
>> >> >> -----Original Message-----
>> >> >> From: openwrt-devel [mailto:openwrt-devel-
>> >> bounces@lists.openwrt.org]
>> >> >> On Behalf Of Hauke Mehrtens
>> >> >> Sent: Donnerstag, 28. November 2019 19:42
>> >> >> To: Adrian Schmutzler <mail@adrianschmutzler.de>; 'OpenWrt
>> >> >> Development List' <openwrt-devel@lists.openwrt.org>
>> >> >> Cc: 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
>> >> >> Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
>> >> >>
>> >> >> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
>> >> >>> Hi Hauke,
>> >> >>>
>> >> >>>> The following are still on kernel 4.9:
>> >> >>>>  * ar7
>> >> >>>>  * ixp4xx
>> >> >>>>  * orion
>> >> >>>
>> >> >>> There are patches (actually from you, May 2019) on the list which
>> >> >>> claim to bump ar7 and orion to 4.14:
>> >> >>>
>> >> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=107337
>> >> >>> https://patchwork.ozlabs.org/project/openwrt/list/?series=107339
>> >> >>>
>> >> >>> I haven't looked closer, just in case you forgot about them ;-)
>> >> >>
>> >> >> Nobody reported that they are working so I never applied them. I
>> >> >> do not have the hardware, I just made them compile.
>> >> >
>> >> > Since there was no response of any kind from a third party, I've
>> >> > just
>> >> marked the two patchsets as "Deferred" in the patchwork, so we get a
>> >> little more overview there. I hope that's okay for you.
>> >>
>> >> Yes fine with me, we should probably drop these targets soon.
>> >>
>> >> Hauke
>> >
>> > I think it's time to remove the three targets and kernel 4.9 support
>> > as well after the release has been made. Or does keeping kernel 4.9 in
>> > master (even without targets) make it easier to support 18.06 branch?
>> >
>> > Best
>> >
>> > Adrian
>> >
>> 
>> This LTS version will receive updates for another 3 years, why do you want to
>> remove it?
> 
> Next release will be kernel 4.19 or 5.4 only, and the respective targets are still at 4.9. So, they haven't been included in 19.07 (4.14 only) and won't be included in future releases unless someone updates them. At the moment, it looks like nobody will update them.
> 
> So, we plan to remove these targets now, as they are effectively unmaintained. Those who still want to use them can have the 4.9 version in 18.06 stable branch until that one is EOL.
> 
> In both cases, updating or removing the targets, there will be no need to keep kernel support if no targets are left. Thus, we can save time for maintaining that kernel version.

They can also be moved here:
https://github.com/openwrt/targets

-- 
Cheers,
Piotr

> 
> Best
> 
> Adrian
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
