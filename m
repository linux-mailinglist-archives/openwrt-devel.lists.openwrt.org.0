Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AD0EF50
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Apr 2019 06:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TAWhKLcWlWRzRpwoLfchpD1ejthPQfJqJdhsczXR3O4=; b=TlvkgQfKYjqzBo
	f6wyrgLyrWo+7WBc39Hy+BJok5eCSySyTmJdhGBEaDaQeHGLrkuYX7JvtXVQzKpW0x/QQQmL3EDS5
	Q3WYXtpYPeWgcgSg7zAVdbmuV8ckpjAZf6hQbf0MFoIUEncwP0sj6CMYffvsG7SnjhZiKc0U491H7
	ceXuO6W+zQh/jv6+HRKkuhklPL2OovNxVTb9Sq1v6ItRJrr8rwY5XBGBvzja/7h0+AM1MHl/GZVdg
	2aDWjaVc97TGsNCyda24gEE52MUT4aedzSmbGf8KZjst8DJFL2LsDMULRzb7uBtSQhKN/ttE/XNhu
	pI1I4p+3agzJ3TdfI9Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLK6a-0004AO-Hp; Tue, 30 Apr 2019 04:10:56 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLK6T-00049Z-Aa
 for openwrt-devel@lists.openwrt.org; Tue, 30 Apr 2019 04:10:51 +0000
Received: by mail-lj1-x244.google.com with SMTP id s7so8695755ljh.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Apr 2019 21:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=QI/lpX35+BmgYW9S56ugF3XnSjZOd7P6ovC5BDoxgP8=;
 b=XMWm7wEUjwLXjwz0xpD53OhXGsI8V+h6JZm2dGenIzufsYrMc/g9TBDRGucM41MOnB
 LWbQQRIZO1jvtcC73fgjaFAtpcBl6jAOqdVZqPSdZtGruujIb2UN89Ozcr+sIVQ4obAN
 REi8VtbuyAqrD2KPnZpfmPOT8KCY1M4DWsoNDdDz5Oym9Rtd39AnSst66MeTnnW3WdUx
 Ky2Dt+yq5YU3yYboKZR2MDzweJujHrPf9ZiRP5dSlrqktuxMTF0aMn5Jc23+23WR4L6Y
 XF9qY6VeikP8aaH8i7Dsdq6QbV9c666UxDa8tqRHkaK8O7agL3JIw+qHYBSubLFov7xy
 RnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=QI/lpX35+BmgYW9S56ugF3XnSjZOd7P6ovC5BDoxgP8=;
 b=AU6AueWSKdAnaIV1XBz5ofOcesd7BwFe9p5vwa2jPYaPHMZXLwsCCwYT1qkcn7HssH
 uX1lEf4f7PuVfncy3XFUf6IvHeA1v8ArsAt3NJ7J7M+s67L9qnzHUUWJ0ytAda6SIa9j
 1PJMOq78FBBrezZJp+BmJMe74a+EM1okRpa0ULLvAXPJd4+bLyUm57UzgORYq4W50+dq
 IIcvb1mMeR5NKg9iWybX9py8zhBMRhWu+93Zwjanuh1fYCono/n6L7JeVH00HRUUNit1
 6ObbwJrqU7U7DoiArfmNhxjdNgj5ddZ+wRVYHiN4ZJ5xHzW+L/mHulYI5iZ6TLMLG/1d
 ETwA==
X-Gm-Message-State: APjAAAX9fyLzYGpukBuiMqbFy0PN2RTJyDblvpLuZ/nS1zapD0RtbUHJ
 Bfl436DNUbdtQtIjjBJtrUDAH0vAR6V6unUXAYg+pyvUPUs=
X-Google-Smtp-Source: APXvYqyPrwDOXb4yZgE6JMop2WRsKC+qCFNQqtqUZssQI2N78VsbsrAa4H6bMcgoQr0ujEIoNSB2HSQ+X1gLunAaq1o=
X-Received: by 2002:a2e:99d2:: with SMTP id l18mr20191450ljj.27.1556597442775; 
 Mon, 29 Apr 2019 21:10:42 -0700 (PDT)
MIME-Version: 1.0
From: Joe Ayers <joe@ayerscasa.com>
Date: Mon, 29 Apr 2019 21:10:38 -0700
Message-ID: <CAALvt2OuLNqgFv91Oux3f6UYJaoM6O_1Mn0PbOUJ+XePvG5p=w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_211049_504945_EC0B1AA7 
X-CRM114-Status: GOOD (  26.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Fix TX power handling
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> I've stumbled across problems with the transmission output power of OpenWrt
> routers quite often.
> E.g. https://bugs.openwrt.org/index.php?do=details&task_id=1289&pagenum=4
> which I still have to look into in greater detail.
> OpenWrt's handling of TX power, antenna and PA gains needs to be revised
> thoroughly.

> There is a iw patch in OpenWrt that is being used for setting the antenna gain.
> There was one try of nbd to upstream this change in 2013:
> https://www.spinics.net/lists/linux-wireless/msg111944.html

> I'd like to make some things clear here and hope that there will be a new
> attempt to getting this upstreamed.
> First EIRP is by definition ERP + antenna gain - cable loss.
> And ERP is radio chip output + PA chip gain - (board's signal path loss which is likely
> irrelevant due to golden device calibration).

> If there is a regulatory limit of the antenna gain that (whyever) means that no antennas
> with a higher gain are allowed - this does not really make sense.
> It certainly does not mean that you can exceed the EIRP
> by the antenna gain as this would reduce the definition of EIRP to absurdity.
> If the regulatory domain values aren't plausible (because why in the world should
> there be a limit to the antenna gain when there is a EIRP limit already?),
> we should not work around that, because otherwise nobody will see the mistake -
> It is a problem of the regdb then, which likely needs to introduce a new regulatory
> definition for maximum ERP and maximum antenna gain for affected regions, which
> would still don't really make sense, but maybe laws are just weird in this regions.

> Second e.g. most TP-Link routers don't use the ART's antenna gain field.
> Instead they use the TX gain field (which should have been used for defining an
> external PA chip's gain instead). I assume that they did it to circumvent problems
> with the regdb...

> Finally some device's (Ubiquiti XM/XW) external PA chip gain is defined in stock
> firmware depending on the subvendor device ID of the radio chip.
> These definitions are being defined in:
> https://git.openwrt.org/?p=project/iwinfo.git;a=blob;f=hardware.txt
> I've filed a patch which adds all PA gains of Ubiquiti XM/XW devices to iwinfo which
> I've extracted from the stock firmware, but it seems to be ignored until now:
> https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg46175.html

> AFAIK OpenWrt does not make use of these values, yet leading to a much higher
> EIRP than allowed if these values are not manually adjusted.

> Thus to my best knowledge what has to be done is:
> 1. add options for external PA gain in iw and nl80211 code
> 2. display antenna gain and PA gain in iw
> 3. check if ath9k code sets PA gain and antenna gain correctly and
>   if not, fix it
> 4. for devices whose PA gain does not seem to be defined in ART like
>   Ubiquiti XM/XWs, add a hotplug script to OpenWrt that sets
>    the correct PA gains from iwinfo using iw.
> 5. for devices whose antenna gain neither seems to be defined in ART's
>    antenna gain nor it's TX gain field, add a hotplug script to OpenWrt
>    that sets the correct antenna gains manually on a model basis using iw.
> 6. take measurements to check if the ERP meets expectations
> 7. upstream all these changes and make regdb developers aware

> I'd like to do this by myself, but I don't have time for it.
> Still I can help with the measurements etc.
> If someone feels capable of doing this, this would be a great improvement
> and help OpenWrt to keep a stand against vendor locking.

> Regards,

> Vincent Wiemann

A few discussion points, although I would have to learn a lot to be
capable of  implementing.  Not going to happen anytime soon.

1)  Here is a chart of the max xmit power permissible with US FCC part
15 regulations by channel.  This chart assumes negligible internal
antenna feed line loss:
https://www.scc-ares-races.org/mesh/doc/WiFi_Part_15_Power_Limits_v150424.pdf

2) The antenna array gain seems to be the reverse perspective?   Isn't
the power split based on the count of physical antennas -- there isn't
a power setting per xmit chain, correct?      2 antennas, the power is
split on the 2.  3 antennas, the power is always split on the 3, ...
For  MCS0, all antennas transmit same signal and add up to total power
radiated.   If the specs of a 2 antenna device say the max xmit power
is 25dBm, we set 25dBm with iw, then 22dBm is transmitted going to
each antenna.   (-3dB is half power).  Each antenna chain has its own
Power Amp (PA)?

3) Reduced power with increased MCS rates?  An inspection of the UBNT
specs show a decline in max xmit power as MCS rates increase.   I
understand this is due to keeping linearity in the PA.   To contain
hardware costs there is a sacrifice of dynamic range of the signal the
PA can amplify.  As rates go up, it needs more dynamic range and when
going out of linearity, we start seeing increasing out of channel
energy, splatter.  Signal quality degrades.  Going from MCS0 to MCS7
(and also MCS8 to MCS15) rates, e.g. the Rocket M5 data sheet,  shows
a reduction of 6dB -- to keep the signal clean.  Possibility of
exceeding the limits on out of channel energy if not doing this.

4) Reduced power with reduced channel width?   Same issue of PA
linearity.  As the channel is cut in half with the same energy, the
signal gets taller and needs more PA range.  Thus another power
reduction to keep a clean signal. Probably need 3dB reduction of xmit
power to cut channel width in half.

Joe AE6XE
http://www.arednmesh.org

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
