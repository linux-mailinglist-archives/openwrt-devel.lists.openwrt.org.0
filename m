Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA5514F605
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 04:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9myMn08BKdOUoanzWjYlK9hAIEK9OxeXDZzqdRmaHM=; b=LQk6VF8v1HVt2O
	Q71ykClk+pZIeATxAPMSk0QvJLedeo0pDDq1FtXu8ogEp5wbWJahUj1X5dt7jKBcMwO/Av/kdzDxy
	WWE0JQ7lzUPG/mLEu8P0XHP1lHhbOSt4kkdfTgXqSLAoZMTcFzEdD51dN5fMnY4Clgx9SZbpgYX6j
	C+0CogFPjnYRucrLnJOHOTPkIC0D42zaIyIOv/RSb0AUCWn4l44neEUyeT7/blu5s2QFLLNMo3DI3
	vY0jWRAg/+m0TPfu4NDDf2Oxw/bTRyYg9DHb/3flvWlpwYiK14YVDiztm7H4SF6WSzMy1o4ODZjXN
	VfmRoVWbYo8VN9MiNBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixjQK-0008O6-Lm; Sat, 01 Feb 2020 03:26:20 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixjQE-0008NF-La
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 03:26:16 +0000
Received: by mail-io1-xd33.google.com with SMTP id z16so5817530iod.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 19:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mvlEPbtLyXcxzLNRAFsoyW2/cQt1OSKclCOj3pY3FDY=;
 b=oiWOL+YycuHFy34bgZWP5F5GMxgfFA71ZiFKQoq5biIP4lpcVkw3we2GF6VJSwZHbQ
 RnP1CLYgW4fOee+pshEz4DdSDXTolO0d2wA3V7rWlkrLR/TP7olHmUz+5ytgWEjUFa63
 voCwTHGdDIgnuy+p19whDBsAdE5eVwobjKOsm/9OtmauWQWyH9kdWgE2bOWH7NiSS/TK
 cxYnvkCHA36BvFthb6RkbsEG/5aby4t/bL5w0gDMyxhMkfwvHMthzh/XS6P95Z+Qtt51
 Kcvssj7N5rKdjY5QGfOwxROU4I5WZ6YUXOkCfYKuO1jVqUEGCdU9ExRA7YernzzD4N88
 FbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvlEPbtLyXcxzLNRAFsoyW2/cQt1OSKclCOj3pY3FDY=;
 b=s9Y+tR69ce1hu161RiFRAsH7RSBIE9aDBki4/kR4M37h8MPz8o9dgoDLmz85K7BpD3
 fVKPyQpNi0Jv57aq+Vb7UYLFFnHTcJRh+OQBSmC+m4jQBzdQEwV91DRYdiI46GXTr5FF
 I6bw1DYv4rzu0+dK5ideoQmDq9XO+Yk7sENQMlHrOQd1kF81m9Y0aak3fGZJfxjKSSku
 hv50ATs+yhSjJhRlpK2tNdMxcaMHEuYxXVQbUhot4SUikmPpET1d3QssvONqhL3gLOwN
 xbvdN5Ial9C9eubIBuQyD1QsjTyRqvY9zTLyiOlkAuwHvIfyjXS0OP1NBD2NUV4f5QrB
 ijag==
X-Gm-Message-State: APjAAAWVXQcj92MtHXbriEawvsnG7gH/EwEhBGuTm4Ir0dEYGHn1Q2Du
 u/G0k7dGAt28iOHhKC1Imq9ZHxZGpRgSujX5PNX+OEl5T1U=
X-Google-Smtp-Source: APXvYqwCcL892E0dUlrsVL+TuEC/cQ9NzTYsOALz7xiAwigbYaD8VMcAmgrouoyEf1HaZIxa5aKlmZyN8fBW90IVVPM=
X-Received: by 2002:a05:6638:34e:: with SMTP id
 x14mr11379526jap.38.1580527571156; 
 Fri, 31 Jan 2020 19:26:11 -0800 (PST)
MIME-Version: 1.0
References: <mailman.27960.1580495880.2486.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.27960.1580495880.2486.openwrt-devel@lists.openwrt.org>
From: Joe Ayers <joe@ayerscasa.com>
Date: Fri, 31 Jan 2020 19:26:03 -0800
Message-ID: <CAALvt2OQerzujxD-Ynw8j8+bKdZO6hX3DKQSYPPV64Q5Rz-jwQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_192614_844756_03670187 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ar71xx/ath79: at803x_platform_data: reset_gpio
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
Cc: mail@adrianschmutzler.de, mail@david-bauer.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> > during support of the Ubiquiti Nanostation Loco XW, we encountered the following
> > blocks in ar71xx which are only present for devices not migrated to ath79 yet:
> >
> > static struct mdio_board_info ubnt_loco_m_xw_mdio_info[] = {
> >       {
> >               [...]
> >               .platform_data = &ubnt_loco_m_xw_at803x_data,
> >       },
> > };
> > static struct at803x_platform_data ubnt_loco_m_xw_at803x_data = {
> >       .has_reset_gpio = 1,
> >       .reset_gpio = 0,
> > };
> >
> > How is this translated into ath79? The Loco XW (just merged to master [1]) seems
> > to work well with the setup we have right now, other devices with reset_gpio are
> > few:
>
> AFAIR this is due to a hardware bug, which sometimes leads to the PHY ending up in
> an unrecoverable state when the link-state changes. I assume, the person who did
> the device integration simply did not encounter the bug.
>

The GPIO PHY reset was used, from Chaos Calmer timeframe.    Many
users were plagued with this issue originally, and devices were
unusable.   Symptoms would occur after hours or days after boot, like
clockwork.

Ubiquiti uses an external 803x PHY chip with a SOC GPIO pin over to
reset.  The onboard PHY of the AR93xx was not used, so only know to be
an ubnt issue.

If the Bullet XW in ath79 target has this hardware architecture, and
there hasn't been a reported PHY lock up, then I would wonder if the
root cause is something else and otherwise resolved.

AFAIR, these are some of the devices impacted in ar71xx:

NBE/PBE-M5-300 XW: ag71xx ag71xx.0: connected to PHY at
ag71xx-mdio.0:01 [uid=004dd023, driver=Generic PHY]
NSM5-loco-XW:  ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:01
[uid=004dd023, driver=Generic PHY]
Airgrid M5 XW:  ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:01
[uid=004dd023, driver=Generic PHY]
NBM5/16 XW:  ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:01
[uid=004dd023, driver=Generic PHY]
NBM5/19 XW: ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:01
[uid=004dd023, driver=Generic PHY]

PBE-M2-400 XW: ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:04
[uid=004dd072, driver=Atheros 8035 ethernet]
PBE-M5-400 XW: ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:04
[uid=004dd072, driver=Atheros 8035 ethernet]
PBE-M5-620 XW:  ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:04
[uid=004dd072, driver=Atheros 8035 ethernet]
Rocket M5 XW: ag71xx ag71xx.0: connected to PHY at ag71xx-mdio.0:04
[uid=004dd072, driver=Atheros 8035 ethernet]

Joe AE6XE

> Usage of reset GPIOs is documented here. [0]
>
> > adsc@buildfff:/data/openwrt$ grep -rn "reset_gpio"
> > target/linux/ar71xx/files/arch/
> > target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:35:   .has_reset_gpio
> > = 1,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:36:   .reset_gpio =
> > 17,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:48:   .has_reset_gpio
> > = 1,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c:50:   .reset_gpio =
> > 23,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c:485:   .has_reset_gpio
> > = 1,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c:486:   .reset_gpio = 0,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c:124: .has_reset_gpio
> > = 1,
> > target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c:126: .reset_gpio =
> > FRITZ450E_GPIO_PHY_RESET,
>
> At least for the AVM Repeater 450E, the reason is simple: EVA puts the PHY in reset.
> As the subsystem can handle reset-gpio handling, this is the preferred way of
> pulling the device out of reset.
>
> Can't speak about the other boards though. The bug on the Nanostation is not quite common,
> as only the AR8030 (a FE-PHY) is affected.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
