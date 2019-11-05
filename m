Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19984F0948
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 23:25:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IMSYDnbjuqNkg5TWDfvRsNx/dKzsmExx0+5vomnGQ+0=; b=tIKyFj5j3+Ax1H/ghNPUJtmAk
	PjQ/GelHRNbP3esyfPscJO1Mg1gKLxNTihRpIXUtIz/EI0IBVhMT4Wg+WwJp0k98Tma/osJcUs2km
	Mx888QPZkaVfOzDcbHX3rcVrA49v8DvhkcetgApudjr8m8PjZ3EjPGzawCCYTUren3pm+k/ByXpRg
	UlA4FG6odm6+bgg2MnNLlQ5uV1qkVaBkBldK53M4BXbMdsvxiGTXIx+1IPOjZnE/P15Ux+icC2Be9
	Is4KX2MQy2twzlCIiGYNtsH3JzJwUqE7yQMXADcKrzQDA84o+eWEBmneoDnxYxXI+2hFnl9weEzCC
	SbCjQHVHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7G0-000217-Qe; Tue, 05 Nov 2019 22:25:00 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7Fp-0001uR-GM
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 22:24:50 +0000
Received: by mail-wr1-x433.google.com with SMTP id t1so17440829wrv.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 05 Nov 2019 14:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=/v98huxn/RMOREtHriycsGvJQxfUGkL/ERGKDIkXO3k=;
 b=NUYM6l+2nx9nN86QGJW7aEBUSVraBzJgb+CrW2I7giDoDKdUSvH5BM6A+y5CTBx5/0
 r/X9csAg0PhMNPwpuPlEqFrlwUPxzbniBsTMz8jZUa9eFu5ah3d4lHsRLahutPfLRV7k
 jMVhfKJRdEvMddPlgWPMkwU4pIuQ2YF70VryAvdxJUQK7pV7S6e0rBY9SoIR7N+c7dPb
 53bEB19Du5MOwhnP8OHIvsAln/mi0yIeuFrAyuFAV50ah/F62/ucDQJq6VP2f9rzsvuB
 5Q+H3HPODLOzCr80tujdz0pEgOidL49p3SU595tNDZ0OgWEqs5VJnPf65W60sw5Wpic4
 kgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=/v98huxn/RMOREtHriycsGvJQxfUGkL/ERGKDIkXO3k=;
 b=IEkugxVGq2U44fIZOmVGts9WB18/gWxtMY+CLCFriENzDZhDrW1p3v3Na83UsdYbgY
 CHNykXhQimWpZNYmisiNB3p/MJHgfx2MXSMbQusF7xXABBZotBDgz4bvdpw0F3Z4uX/z
 PfxPKL609HT5QL/FdsFe14NvBlhmuK3dVOzxsmAI40VWmpkHUUrOVmguke54TuimuFy/
 5aXjmjICjrHdwANkLeATwRoPDWOl+XJIwzpPY5b2IAAE+JMvsrkRZjmZjR0ayP5i2sny
 oZKoh7jB1AuX+qaotf7Fb/abQ/b3UBE+if8lhpKVK8JJ5NNpBvA1Obn7b6ho+lgvqZvs
 jelQ==
X-Gm-Message-State: APjAAAU8DJD8fkboTpghha2LkuUX1YUfIwFJivPXwMfcRHgXMehKJ89t
 0asAYUpigj1h1E1GZludJAo=
X-Google-Smtp-Source: APXvYqx3GD1QJ32vOr8lv4tChgK6u55+VvxtDyfz/S+Lj1IdKhqHuwRFo5V6VvQksI886SJ+7MJPtA==
X-Received: by 2002:a05:6000:10cb:: with SMTP id
 b11mr5419833wrx.172.1572992687954; 
 Tue, 05 Nov 2019 14:24:47 -0800 (PST)
Received: from mStation (host120-32-dynamic.15-87-r.retail.telecomitalia.it.
 [87.15.32.120])
 by smtp.gmail.com with ESMTPSA id m3sm17225879wrw.20.2019.11.05.14.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 14:24:47 -0800 (PST)
Date: Tue, 5 Nov 2019 23:24:45 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: mail@adrianschmutzler.de
In-Reply-To: <010201d59425$ec8f1b00$c5ad5100$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.21.99999.353.1911052322080.2458485@mStation.localdomain>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
 <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
 <F45BEDCE-561C-497C-95A5-099BB15DFF6C@gmail.com>
 <010201d59425$ec8f1b00$c5ad5100$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1271653314-1572992687=:2458485"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_142449_553059_47436EFD 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: openwrt-devel@lists.openwrt.org, Birger Koblitz <mail@birger-koblitz.de>,
 =?ISO-8859-15?Q?Bj=F8rn_Mork?= <bjorn@mork.no>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1271653314-1572992687=:2458485
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello Adrian, and all.

thank you for your work, again.

So, the TP-Link TL-MR6400 uses USB power for this. But in general, where there is a port and you can plug a {3,4}G Gadget, the need of "resetting" the device via USB power removal arises.
I know I am being pedantic here, and I am sorry for that, butjust wanted to point this out.
I think there are other devices using USB power for this purpose, even tough I don't know if they are supported by OpenWRt or not.
Here I am not proposing to hold your patch, just wondering what we can do about this use-case. I think it's an important use case BTW.

Thanks again,

Enrico


On Tue, 5 Nov 2019, mail@adrianschmutzler.de wrote:

> Date: Tue, 5 Nov 2019 23:11:07
> From: mail@adrianschmutzler.de
> To: Enrico Mioso <mrkiko.rs@gmail.com>
> Cc: Bjørn Mork <bjorn@mork.no>, openwrt-devel@lists.openwrt.org,
>     Birger Koblitz <mail@birger-koblitz.de>
> Subject: RE: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
>     gpio-export
> 
> Hi,
>
>> -----Original Message-----
>> From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
>> Sent: Dienstag, 5. November 2019 23:07
>> To: Adrian Schmutzler <mail@adrianschmutzler.de>
>> Cc: Bjørn Mork <bjorn@mork.no>; openwrt-devel@lists.openwrt.org; Birger
>> Koblitz <mail@birger-koblitz.de>
>> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
>> gpio-export
>>
>> BTW, being able to toggle on and off USB power is essential in some cases.
>> Can this be done with hog? Thanks!
>> E
>
> with hogs, you cannot enable/disable. This is the reason why this topic got stuck in the first place.
>
> On ath79, it seems that usb_power is only used for external USB ports so far. So I felt that the discussion led about toggling USB on ramips would not apply here, and that choosing gpio_hogs over a user-space solution would be preferable for this case. With any new device support for the last 6 months, USB ports were set up with gpio_hogs IIRC.
>
> Best
>
> Adrian
>
--8323329-1271653314-1572992687=:2458485
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323329-1271653314-1572992687=:2458485--

