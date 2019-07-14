Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7C167E71
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 12:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDP4eDJstvBC3F5ZJIi5B3CuPK0Jbvg8FFITok5yibk=; b=pHDY8EUi4rnWYf
	qvduaUoy6LM6TJFMp/yThb75Erksb/MdXW5/Zypv6p1Uf870+UFAWPwIBGfghK2IJarErcluV4wXJ
	P+ZlQPf/KPvy+5TsSJAFI6Ie7JavscoPra2CPYEF1Qo800GjoPiN+eV0odlgzcuB1Kn37WWxVJNc9
	qrDlo4Q/dy/Ro0WE/SXGSFty4KRGzJEcqx0BPMSglwcEMiQpB0Z3ey2gQjuouArk3r6MmYgdj1gUo
	OQ00F5du67uCvW3YRfbAsXGZllJvzcwN9fTrIQaSYobmFVupvc6Ijo+In8i25wRagehOnS4Q5PJ3F
	CBdRUq4+PBbUNMIX8VEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmbNj-0006uT-Kj; Sun, 14 Jul 2019 10:05:24 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmbNS-0005iU-W3
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 10:05:08 +0000
Received: by mail-lf1-x143.google.com with SMTP id z15so4791676lfh.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 03:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rdmYyLvbRIHsxbd01ERfJzGwzyMyA+2nh9enUtMLe6U=;
 b=gJG6Zj/tRoUJb7QCQFtRh5W9LcbUTWbOHbffVXkXB5GK+PmqQPN5ntgdIS60N6dCTA
 0f+n/Kd3LIZc80f0lyNSFqQSq9wMQjF3MqbitK5AawYmniSzadG5lcezelHYls49SE2x
 fMw9074X9Q847erIT+L6ozbUZ+qZXh3lPBhaFMPVk7HlpjjcAU8F/ccsgJfuTWygbg25
 aOBbrUkostQJAz6oYIjw3lnEzgNcFv7Slp3bXabEukj5gfSCbzTDlczaRWCnC+WxW9YK
 CD0+fhlqCQMVoDAgq+VBBM05EyErjNamMN9v4GkTv66IX6WVz0iRLBE51ybeUuAMEaRz
 aguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rdmYyLvbRIHsxbd01ERfJzGwzyMyA+2nh9enUtMLe6U=;
 b=loL90sVNw+krS99koTyYgwOnq2YYHVBP1gqsaqS2hB0nJQr7HSXsdGxM5MXMi52xUQ
 nokaa/AlEIlCusojALKQaRqGDiIEVbwNgZ39nQwg/d5r+6riB132GIlykrOKUxdVsynJ
 RWfo8cgoP6WqLBD2KcW6NZgyb7Q1yEAsCubbapwCys2z8+YDM+z2B8Qd0kmw28zkTIr9
 8p6z0RKWfxTyTNNJt6hODRx/x6rroch5T8f2sUCCNDeCRAVgKDk1b9mFWv3iH9SgYs4t
 /wfNEpaPtPscSjxDe57LOcfHSEqgfqI3/69VLseLjzYtRErxSLjdI1V4134lU5Ou6+mg
 E04w==
X-Gm-Message-State: APjAAAUztWdtahYCUh221uhRn/us3D+lWhlMjOgiYWVFiYs47nSANobQ
 bHkLFAy3QQcWPNaO2Fcm8A8xXMElIWkA9Sllq9whMw==
X-Google-Smtp-Source: APXvYqzFwjny1dDy0cRhxFOND4Rg2kr/qG9ucxMFfcj2d8Z1dLy505Wdt5gHjpav0zuU1zaZh3pANqoKl55RwqvEEpA=
X-Received: by 2002:a19:e006:: with SMTP id x6mr8643530lfg.165.1563098697409; 
 Sun, 14 Jul 2019 03:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190712060734.9824-1-linus.walleij@linaro.org>
 <0fec8249-aae5-55b3-4bb7-4b83d829842d@hauke-m.de>
 <CACRpkdYWfrcAAvzOMvN6gq5rp6vE-Ot3RvwDJ3LPyHGs5zeCMw@mail.gmail.com>
 <c6151d84-a5c0-805e-c02c-6b0fa3f9a25f@gmail.com>
In-Reply-To: <c6151d84-a5c0-805e-c02c-6b0fa3f9a25f@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 14 Jul 2019 12:04:44 +0200
Message-ID: <CACRpkdZnupszv8kSZD015KxGayF1W+zC0s2jNPXQKVp4O4LP3g@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_030507_058278_06E0A569 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Bring up DSA switches
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
Cc: Adrian Alonso <aalonso@freescale.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Jul 13, 2019 at 10:38 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> drivers/net/dsa/vitesse-vsc73xx.c returns DSA_TAG_PROTO_NONE for the
> tagging protocol, which means that the DSA slave devices are only
> control devices they are not used by the data-path (which requires an
> appropriate tagging protocol to allow differentiating the Ethernet
> frames on a per-port basis). If you supported a different tagging
> protocol, then you would not be able to enslave the DSA master device
> (eth1) into the bridge, because that would conflict with the bridge's
> rx_handler, see 8db0a2ee2c6302a1dcbcdb93cb731dfc6c0cdb5e ("net: bridge:
> reject DSA-enabled master netdevices as bridge members")

Ah it's because of this! I try to figure it out. Thanks Florian!

I really tried to figure out a way to get both the Vitesse and Realtek
switches to do internal tagging but they just don't.

The Vitesse switches can do VLAN but I just haven't implemented
it yet, but now that Adrian is using it on a Freescale board as well
I might get to it as we have some more users.

There are some patches to the kernel do do port separation using
only VLAN (by Vladimir Oltean) but of course I have to implement
VLAN first if I want to try to use that.

> Your second sequence is more in line with what you should do, see the
> recent documentation examples from Benedikt:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/networking/dsa/configuration.rst

Oh that is really good documentation. I linked it in the Ethernet switch
page in the OpenWrt wiki.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
