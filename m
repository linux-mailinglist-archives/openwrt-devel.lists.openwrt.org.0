Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B494F0B98
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 02:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dSF4Oja9fdoi66beG/lRTtBKxJSZrLkL6cMuKVEK9eg=; b=rNYp/H1hRqaGQyKw58y9qsJ7T
	xiuzfs0kY58vzRKQZ/zQOsoccxKXZ+X5LmFMZJImR1GOX4YRsnESHzIexcUEvGgz5AFYYhqkwVei4
	WdoiRSIHl9AuyGO70cN6XXXu66WvI0F10N9wnSGGKmXyr+XlAQ04mCA4AWwzLsUMG72M6OwEpjeVO
	zZX1UoEcfYoQX8yQogyfHqB24YUj0p2S1Jx7LvtM3wPQvwesBZqib4/5WhZCsgDjid1noaNzzt3pI
	o08h1NPdIcRDSrVhgB9oyPkdJx+3hvzfbX0Hqxlz6phgm0p94Axki97DRWlGp/JRevuXv+eHvH7o2
	vAYLMgjXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSA0V-0000Jf-JW; Wed, 06 Nov 2019 01:21:11 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSA0O-0000J5-Px
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 01:21:06 +0000
Received: by mail-lf1-x130.google.com with SMTP id z12so16637334lfj.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 Nov 2019 17:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eBVIGkpVCD4Tfdu7e5zSnHVHKkH7tinsiQSJG71L7T8=;
 b=ucRBbdJMSn6T8VNplMJXpYHAJW2c1W5+hywXMGDiDJTklC75314kAhJ/K1IK7yTgLA
 mrOkXkSYKMFV2K8cC2Wr7HscREcZwgiY+NSDtjNpPQYkvr+IQcwa5299PPBkPH71jWVH
 fBWI1PP2XmAF2A6ImagtbS0xNzw5meHI85ui9+w3xx3RHAALdi7EgGPT/lA0d8HS7/fn
 efFXaXw2AOsE4+DHGbLT+kJgMCpxpFWOxnF/HSR8nGm8cfayQpz+5D/4+ey7EGTtSpKj
 cifwQT+6XNceQlyWfGcuYqp4rUlDcmAV9gtsWy6tyFGVbTkhJHR9jejDSCVGbpeq0kJP
 lQpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eBVIGkpVCD4Tfdu7e5zSnHVHKkH7tinsiQSJG71L7T8=;
 b=QQs2Q54Yz+x2FdHQ5ePQZUUJus+48qu9uwPdluoGC44WNHEeYTuwIwEZ9+poNa+wmU
 ls+cI9Px4WhgbWboH3piiwWU7PIadE5/HcCSsoSQiYcJYrHDZAOzwvrUuntqEguo4C9w
 ln2g6kOx+vj8RXSsqaKLiUjBam74Vfyw5wrdwU2n08LCHws7aBtAH1cmQRixmrF9vv3P
 uFCR5dcaR/fNhCPfee7c9nTbBfZlxWoVtrBFy0KUAI1UvNEAqX7p1NLyeLLfsLFVLh+7
 toQjsijnpqQgspqF0AxM1mgmbCx9AQAFxal+hbIicsfqlz89kzVPiwjOuDZuc1MbdPfI
 c8DA==
X-Gm-Message-State: APjAAAVkT7Ap66rO2URtmvw3fL8pOSjc7FbCO67wXdVROiI96l6pXMd6
 /WrkALuwyjeDR1KLc70znOs=
X-Google-Smtp-Source: APXvYqwdbeZRNSTPibrlj0LIn2qEznRMBTIYcS6qSLO9U/UkjW/l3bvWadk1ITvKqh5BMtlBgQUg0A==
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr18621104lfp.23.1573003262492; 
 Tue, 05 Nov 2019 17:21:02 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id 190sm11295518ljj.72.2019.11.05.17.21.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 17:21:01 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
 <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <eadbf51f-6c46-8d2b-673a-87cce7b360f0@gmail.com>
Date: Wed, 6 Nov 2019 02:21:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_172104_867506_1204C9C0 
X-CRM114-Status: GOOD (  29.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: 'Mathias Kresin' <dev@kresin.me>, 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 bjorn@mork.no, 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 06.11.2019 00:14, mail@adrianschmutzler.de wrote:
> Hi,
> 
> TL;DR:
> 1. We should find an agreement that can be used coherently at least for new device support submissions.

I believe the major issue here is that there is no 'in place' 
replacement for 'gpio-export' (or I'm just not aware of it).

> 2. Everyone (and particular committers) feel invited to add your view.
> 
>> > I've just had a look at the openmesh_om5p-ac-v2, and it seems as if the
>> gpio-exports there are just voltage changes for a power amplifier. To me this
>> looks like those can be dealt with by a gpio-hog, too:
>> 
>> What if someone would like to lower TX power on this board? With gpio-hog
>> that wouldn't be possible anymore. I would personally consider that change
>> as a user experience limitation or even a regression.
> 
> Well, normally I'd say to lower the TX power you would use the user-space txpower setting and not change voltages of an amplifier.

It seems this one has two levels of amplification, depending on the 
supply voltage (3.3V vs. up to 5V). And based on the GPIO names and 
comments in code, this can be controlled with GPIOs.

Another question here is 'should we allow user to change such 
settings?'. I'm not that strict and I believe user is owner of the 
hardware and should be able to do with it whatever is possible but I 
know there are developers with different opinions on the subject.

> Nevertheless, I'm not religious about the gpio-hogs, I just want to get the gpio-exports off the table. If the majority thinks everything should rely on 03_gpio_switches, I will happily implement it (though this might be a problem for people updating into it.).

Are there any other reasons to get rid of 'gpio-export' _now_, other 
than the fact upstream rejected this approach?

Wouldn't it make more sense to spend time now on implementing 
future-proof solution and switch to it when it's ready?

>> I had this discussion many, many... many times before with Mathias (and I
>> believe we still agree to disagree on this topic). Until there is a dedicated
>> driver for such features controlled by GPIOs (lets say, SIM switching, driving
>> relays, enabling higher power output in ext PA, etc.), switching from gpio-
>> export to gpio-hog only limits user control on the hardware they own and in
>> fact doesn't get us closer to something which could make the gpio-export
>> finally go away (libgpiod).
> 
> Yes, I read the old discussion before I asked for closing it. Despite my desire to get rid of the "old" gpio-exports, note that we currently do not accept gpio-exports for new device support (for several months already). So there is no "keep gpio-exports until we have something better", unless we start accepting it for submissions again.

Even if there is no alternative?

We should really make such decision more transparent, public and give 
users and downstream projects time to adopt for the change.

>> I'm always on the end user side here. If the hardware is capable of switching
>> something with GPIO, user should have a way to make use of that. Even if
>> current solution was rejected in upstream.
> 
> So, that would mean that we use 03_gpio_switches from now on, at least for new submissions. This would be a change of what mostly has been done so far (reviewers suggesting to use gpio_hog).

'03_gpio_switches' doesn't handle inputs.

Of course, it has advantages, like the fact it makes the GPIO setup 
uci-based but on the other hand... it does its job fairly late during 
bootup. In some cases, you might want to, for example, enable power for 
3/4G modem as early as possible, to give it time to register in network.

Anyway, under the hood, it's the same approach, export named GPIO using 
_deprecated_ sysfs. Excluding uci and place in boot time where it 
happens, the difference is where the GPIOs are defined, DTS vs. 
user-space scripts.

> The big majority of what we deal with is USB power. I've read Enrico's arguments, but I'm not really convinced that resetting an USB device by toggling its power really is a feature, and not just a workaround for a faulty USB device. That's why I personally can well live with having USB power for external ports set by hogs, and anything else converted to user space switches. But I also admit that you (Piotr) are right that this is a reduction of user power over the device (I suspect it would be the same with the fixed regulator?).

I suppose you don't have much experience with USB based 3/4G modules :)
Faulty or not, workaround or just user's need, people are using them and 
we shouldn't make it hard for them. I definitely wouldn't want OpenWrt 
to become a platform where user is... just a user of 'rented' hardware, 
like many vendors are trying to achieve.

In case of VBUS I'm pretty sure 'regulator' is a better approach than 
'gpio-hog'. At least in that case there is a way to disable VBUS by 
unloading host driver (see for example 'mt7621_xiaomi_mir3g.dts' under 
ramips). But still, there are corner cases (based on a real device) - 
this won't work if device has two USB ports (under the same HUB on 
single bus), with separated GPIO-controlled VBUS supply.

> At the end, I'm fine with gpio_hogs, 03_gpio_switches or a mixed solution, but I think it's time to have a decision on that topic, instead of determining the correct solution based on who is reviewing a patch.

I believe it's time to think about future-proof solution first.

> So please, share your views on this topic, so we might extract a path to go ahead.

IMHO, 'gpio-hog' should replace 'gpio-export' where there is no other, 
more suitable solution (dedicated driver, like 'regulator') but not 
before we can offer users replacement for deprecated sysfs approach. 
Thus, personally I would prefer to start discussion about our 'version' 
of libgpiod instead. That's my view.

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
