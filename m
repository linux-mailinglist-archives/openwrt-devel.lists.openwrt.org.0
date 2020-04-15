Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF57D1A9040
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 03:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84y3d48BxK1p6gNt3Qirtz9x0HSl1ikLoM8WXqAGgRM=; b=TgITjO8S7X2vCr
	bLmg8qLWwFe7+9p+b2sZhihnm5HiWIOlNuxl/kXvSqm2T7a1gnuQaTfAzjtcHdyId1waMt6oimkby
	LABEZro/7ByHtxpR1mbFlsrNbwTgW0Mx2iyaR8/ZecHtiDWsi306+uRCulKmHcm92Et8htIbmKEKr
	Sjv2LQF1Ym5m9EOiCgqowMvWrsouAuvxMVpFTwqabAmblQOPu4UIU/KOv/hRgRYAlwzFx1wIHtu8I
	uRdNLeiFNZr2qwIr3T6PGO4zt1laN4rhjrNNIGj2Q9WwtHdqzX2642FK6HQCPAAYiRCQhkIjs/mVd
	iKSyHW0vT41B6LqOQQRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWex-00033G-Qp; Wed, 15 Apr 2020 01:16:11 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWer-00032h-Er
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 01:16:06 +0000
Received: by mail-ot1-x344.google.com with SMTP id g14so1763343otg.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 18:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x7AV1xU6mnDzvfoxoeQXqX39IdJx+PovPaAupwzNlRo=;
 b=CL6yhykrtaKG6+kRjylv1P6p5D/gKpeRg3J8ibr4SQN2O2RZByZ7I42tDbeyJDxa3Z
 +UE8J3lyKSvDGkZ6ZoiCfw6tkwHMN/J2aZ0GGXQ5K5W7RVJ2v1c5DXw6ak53x3kaq0st
 +ZsZg8c1oPw2TjwmRAhJKzJjo9ssRN3NM+lDGvWsrmhhbHV1JcQzi1oq0AMsHmK3RrVc
 6R7VJYfn19sqaGF6Kqu2FQK+6XwlSb9ObSPWwA0k6mkrQ94VHEdheyvVDny9giQieQXq
 EAAglYBR97DHoCG5e1OCl8NS003cplL+d1cYGv+Lf0lO/3nYlV6CTGqdZQf8FQn3IZVH
 p4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x7AV1xU6mnDzvfoxoeQXqX39IdJx+PovPaAupwzNlRo=;
 b=sRmwBwj5GdG7jVeGJoAqslm9Ed555+wPwMwpB6z+8SXJb4QgryXzdT58HwaG0q7bSf
 atzu11ycpwHuD13cf9z+TkmjIJfAF1XB4DGv+rjZjwQ4OYhlNUUfzXSFKo8+/gdkDbvf
 QBlObNU0UDX2reRAbOCt/3I0TUNSAGiFk19sCwSewk5o3zXRPYHPnhMRt6Yhm3ouVT6I
 iMPeNNeXPVav9gTcycpaDxtvSOmVrJi5ryf1XnM4ifRNYRqvSj9jOmkPs9ok7lLy2zTd
 wjgDdhLR0kZbYG4NytpBfuA+mIg5A/R7HeU65IvSbd1ILQpFa/oPpIgv2rtCKboHw5t/
 NtLw==
X-Gm-Message-State: AGi0PuZ5nHQD5GP81UrI8wvDlbBDJnBt6MhyAdEnA6o65dr57ia0lfHQ
 PrV9abS01GGx/G4ZMHkznY9PSD2y9D1bYaDJ0qp4qIHn
X-Google-Smtp-Source: APiQypLv/koMVQX2v63x26ZcoAdDr/b/6GTpv3zowWLIdSQ1DPU9n2bbqfyMYGJ3RzFUGCPMYdY4/AIJY69tsONNMVg=
X-Received: by 2002:a9d:7a45:: with SMTP id z5mr20127633otm.181.1586913363181; 
 Tue, 14 Apr 2020 18:16:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200414064438.1172618-1-gch981213@gmail.com>
 <f36a539b-2dd7-2556-bd86-e237b897c626@david-bauer.net>
In-Reply-To: <f36a539b-2dd7-2556-bd86-e237b897c626@david-bauer.net>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 15 Apr 2020 09:15:52 +0800
Message-ID: <CAJsYDVJ8G=ugvCO_c9Gzm6P_HmB5ARKp0P_vSJR1PYhsjbkcaA@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_181605_497146_4607B12A 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for
 all devices
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Wed, Apr 15, 2020 at 5:47 AM David Bauer <mail@david-bauer.net> wrote:
>
> Hi Guo,
>
> On 4/14/20 8:44 AM, Chuanhong Guo wrote:
> > D-Link DIR-860L B1 needs a different loader implementation and isn't
> > covered by this patch.
> > Please help testing this patch on top of current master:
> > 75f19deb3a ramips: define image recipe for uncompressed uimage with loader
> > 1. If your device fails to boot after 5.4 switch for mt7621:
> >      Is the problem fixed by this patch?
>
> As promised on IRC, i've tested this patch with a R6220 and can confirm it fixes the issue.
>
> > 2. Other devices:
> >      Does this patch break your router?
>
> Regarding the scope of the patch, i would propose to "play it safe" and only
> apply the fix to NAND and the (single?) known broken SPI-NOR boards.

Agree. I wasn't expecting anything to break but it actually breaks devices now.
I'll abandon this patch and use lzma loader for known affected devices instead.

Thanks for testing!

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
