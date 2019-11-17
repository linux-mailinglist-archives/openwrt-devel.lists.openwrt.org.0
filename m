Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21026FF9D5
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 14:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PGQHl2tnU0l0mfRrVYJNGO8RQHvIboAbwpi3N9pUgcc=; b=SF3GqC8a0gSwDBjBP3FlkAgFX
	HLzzdy6B0Y1Ugac0NxzBmO9e/dXwsBL9o7P4GRx+5WPApH5Dh6nCXHrKxrUDxoWRxZl2Sf1Y7uxlz
	ae6h+9ELczuDSt2nAUDt3Nv8Aa8F6w3istli6EsK5zSKyQbPrsPOUYNN38xNKTHWpcCjHCSuRug/z
	u3JvFMIP4E6klDAgCFfil37erPxRO4ZsWP3/japs1mWY24MpJIzBJxDuFplvc4XZchS76r64Bbkrc
	3sJ0HbNPhXl8Q34ZvfWEXJ8mh1pZuGDZlT2DYM6OzXXABiuxGm9Fhxk6vKtEqqj3vVY3uLGVMcGJC
	Vao5l1NTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWKSJ-00050g-Ok; Sun, 17 Nov 2019 13:19:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWKSC-000507-2f
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 13:19:01 +0000
Received: by mail-lf1-x142.google.com with SMTP id z188so11560385lfa.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 Nov 2019 05:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=BAzgIdq4YvUUY9VXBlOY/p/2f07LkWXU6yF8S9ERxpQ=;
 b=t5feVPiYwG1HHvJzd1rNTSrXqEuo1doic5objzlRHKsE0EdaNRiGTF2ptJ+/3R9rx3
 qaPy379hQX1BLFTmJ7rEz3pata/XLqIDU2sUEb0XxAJXexExv/Z4i8AyoGqANb5X9QKg
 fxCUdTYrACB3Dxf3Fsb4AZx66oWql+QykywBJ7ybCLyKuvNjYptgemq3xun0hgjFobKY
 K5KB8nWPQSMAwLpyC8kwkJRCXQFWrnpouiH1T/U83IHTke3UJ7vYpwxuzTpYPczX9Oc+
 +4IRxMYhvv5soMNXvjop0/nUgJDeSfrzoUJEocxiFGAsT2jTgO9EBtwhn6LiqRWQSOZ9
 I1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BAzgIdq4YvUUY9VXBlOY/p/2f07LkWXU6yF8S9ERxpQ=;
 b=a/pcGIFOV65/k7yYF+ARXuw5Tgla2OTKfdHDcwCvOpW7wiuE/UWmZhl1gDH6bpyXVL
 A7vG1RJjPqpoqOSb9pLXdzl5Ml74PzgXzkdUbx9z1ipfd4Z5kc/fCINgLVOpkDHskTj+
 Ok5ykFDXKorJ8dDEzat3HdjiBgaN7eUjPqn0AjFR+b4410el6l98lOD3hfOulekoBToN
 RoLBb4a10jPw1HupXj6zI0GpJSNtUg6MgR9jeQvo8RmFVwyIikhC1Qio+xSPG9ixsOYi
 xoG28dBOSiB1LJhIlX1OXOJoVUjv5K4NYH2V4dZjrZBHbUh+vO1JBGozsjXg1lEvF7GF
 Rs9Q==
X-Gm-Message-State: APjAAAUdYXY/B6zzaF9C79LsDgXEMNni5VRyCU1KRY4qiWWZxn7Ap7dX
 8sceqsPz7wa7sCnt4WAz0Rl/4QOq
X-Google-Smtp-Source: APXvYqyF3ippXNqXX/8lsWzJk0TbRURdYLh7OWof7apxVdUtpxHK42OwaMjRXDgeduKAA3RH9Wvmiw==
X-Received: by 2002:a19:4318:: with SMTP id q24mr8098223lfa.12.1573996737734; 
 Sun, 17 Nov 2019 05:18:57 -0800 (PST)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id g5sm2994863lfc.11.2019.11.17.05.18.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Nov 2019 05:18:56 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
 <005601d59cd4$df89af80$9e9d0e80$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <2465eaaa-d05a-197f-cdec-362b67ad7bc8@gmail.com>
Date: Sun, 17 Nov 2019 14:18:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <005601d59cd4$df89af80$9e9d0e80$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_051900_142988_BC28C274 
X-CRM114-Status: GOOD (  33.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname
 and SSID
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 17.11.2019 00:23, mail@adrianschmutzler.de wrote:
> Hi Piotr,
> 
> Thank you for providing extensive feedback on this topic.
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
>> On Behalf Of Piotr Dymacz
>> Sent: Samstag, 16. November 2019 16:32
>> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
>> devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into
>> hostname and SSID
>> 
>> Hi Adrian,
>> 
>> On 08.11.2019 12:48, Adrian Schmutzler wrote:
>> > This patchset will introduce the label MAC address into the _default_
>> > hostname and SSID of OpenWrt devices. Devices installed after these
>> > commits (or upgraded with sysupgrade -n) will have their hostname and
>> > SSID set to OpenWrt-ddeeff where "ddeeff" is the EUI of the label MAC
>> > address aa:bb:cc:dd:ee:ff.
>> 
>> As this is something which touches essential system setting (identification), I
>> would really like other team members to join the discussion before it sneaks
>> in again. Especially because this was already merged and reverted later, after
>> short discussion on IRC.
>> 
>>  From my point of view, I'm only worried about all the consequences we
>> don't know about, so I would prefer to have this one _optional_.
> 
> With the label MAC address being available already independent of this patch,
> it's relatively easy for someone building the image to create custom hostname
> and SSID in a uci-default script, achieving similar effects as in this patchset with
> about 10 lines of code.

That's correct.

> For that reason, I do not think that providing a _standardized optional_ rename
> is worth the effort of maintaining it, as the user could get a much more flexible
> alternative (manual uci-defaults file) with manageable amount of additional work.

Agree.

> In this context, let me point out that for me personally the important feature is
> having the label MAC address. What I do in this patchset (which isn't even from
> me originally) is a nice-to-have additional use of this feature, but I don't heavily
> insist on it. So, if feedback keeps to be mainly negative, I will bury it and still be
> fine (and will still be able to use the label MAC address in custom scripts).

OK.

I also think it would be good to document that new system function 
'get_mac_label' somewhere in the Wiki. I know that you worked on the 
topic already: [0].

>> On the other hand, I'm fine with the SSID change but I see it's not going to be
>> that straightforward to implement.
>> Also, what I'm thinking about here is which one MAC should be used for the
>> SSID name. The 'label' one which is not available on all devices or maybe the
>> 'phy' one?
> 
> We had this discussion very early when this was still a PR in GitHub, as initially
> it actually was using the phy addresses. The argument for using the label MAC
> was on the one hand that the label MAC address is apparent to the user on the case, while
> a +1/-1 of this number will be (a little bit) confusing. Secondly, only having
> the label MAC address would assure having the same SSID for more than
> one WiFi interface (as it's now the case with default 'OpenWrt'). This was
> explicitly requested by ynezz (as the only committer reviewing this) back then.

I believe SSID is probably first thing users change when they setup 
their device after installing OpenWrt. Given the fact we don't allow 
Wi-Fi to be enabled by default, this is more a matter of taste for me.

>> > For devices where no label MAC address has been specified, hostname
>> > and SSIDs will use the former default "OpenWrt".
>> 
>> And this is probably the biggest issue I have with the whole idea behind
>> 'label_mac'. As I understand the motivation, I don't like the fact it's not
>> specified (and probably would never be) for all devices so we will have here
>> inconsistency (in essential system settings!) and might end up with
>> confusion. Maybe that's something which should be handled by downstream
>> users/projects (and AFAIK, it is already).
> 
> Yes, I cannot discuss away this drawback, some devices will have OpenWrt_ddeeff
> and some will have just OpenWrt. I just never felt (and still feel) about that as being a practical
> problem. And from my personal experience with downstream projects, the SSID
> most probably gets overwritten with something completely different anyway,
> only the change in hostname might matter there.
> 
> So, I have lots of time to wait for further feedback on this, and I most probably
> will bury it without too bad feelings if negative feedback continues.
> At the end, this is just meant as an improvement for the uneducated end user,
> I will have zero benefit for my personal/downstream projects from this (unlike
> the label MAC address itself, which is extremely helpful).

I think we look at the project from slightly different perspectives. I 
have (still) a feeling that OpenWrt should be considered more as a 
platform, framework or kind of a 'base' for building something bigger on 
it. Just not a fully ready, polished distribution with fireworks where 
everything is already defined for users, out of the box.
Of course, we have releases with GUI included but everyone can expect 
that after installing OpenWrt, the box will be available under default 
project-wide, static hostname and IP address (not some vendor-specific 
settings), there might be a diag LED defined, there will be filesafe in 
case of an emergency plus some other _default_ things... and that's all. 
Everything else we leave (and I believe should be left) for users or 
downstream projects for customization as there is no way to satisfy 
everybody. One could prefer static hostname, someone else is asking for 
a different default IP or protocol on the LAN and there is still demand 
for unencrypted Wi-Fi enabled by default. We provide sane defaults 
_only_ which can be maintained without lot of troubles and burden.

[0] https://openwrt.org/docs/guide-developer/mac.address#label_mac_address

-- 
Cheers,
Piotr

> 
> Best
> 
> Adrian
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
