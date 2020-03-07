Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B7917C9FB
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 01:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob2yQj3ZMNnMALRCcZrBJL8AwcwCHZCFdF9lpPtA4qo=; b=Hfb9QDhtwFaBzJ
	t7marnekv8NedH0nh+O+pACE6m2+feYaxGu5klPuaNuv3pruPmB8EDmr9s82zNQA9pzURSO28HeNx
	88MY1ZLZR8xinou7nAvCvNJMsw/Pvrhq8p+zsDdS05/ljikXaKM4BFEcTgNW2dUiT59L0ZNWveAlC
	XvdyZynoMX1+8cpuoAfqrKu3kZeaBKOGEEOLrriVBFQ6cnhgQpLQcG9uKfQCPkxdelU7yKFMbe4vO
	/k9kpoIvHFhMtoqTkNtcSsuiy/a+KVDEPA1VdPpGsLN+PScTWc5DbAThpjTfVzzmtRvCrVI+HQf4p
	WMLfJSPx6TwWY2rUWruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANmL-0004F2-4w; Sat, 07 Mar 2020 00:57:21 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANlw-000405-MN
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 00:56:58 +0000
Received: by mail-ot1-x341.google.com with SMTP id x19so4302218otp.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 06 Mar 2020 16:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xjAyXIEsbP3UIEdrEVjvAtz8hDdGPRNLllPpTsmb3ok=;
 b=bitYgKfgOeg4XBrYsl2bU4+PZs3q6ugFev0LnAixjgiEC+uhY1pHcjlyXrlP3n6aAW
 OQ8r1+Kbc8jInT0CV4shfdL+jfzes4CWOcMCYFE3Ir22Fa5hnQmAwXePkBag+aUNurgM
 r2cZOxO7FfLEjuFCBLZO1XmEtVCnVNWNVZVlhsXFTXCbuBHdDJZ0LkbZtoYyyQV2JbUe
 ZcqKmuesO68N1C0sU1bIhqJ5HMsihPpXwFfSqmjIcIn9MnylJf04hV3/E06dozg/MkV5
 JoDrNlOsBYFLaMJoPuP1x8/SWea7KU13+qJVFou7Q0cKyEaE2nIfhRVfbtZb/hUerd73
 sPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xjAyXIEsbP3UIEdrEVjvAtz8hDdGPRNLllPpTsmb3ok=;
 b=te0epdh3y2WevZJbuZ79Tyo1WKjf3KTRRWcMiDljexbQmoxFw+Aeb1ZwwjgGuNfjMG
 nBzHAHCN/5WQZ2oX927mea92mfMVQCobwVwTFvSLiDofDF2SjkGkCr0+Mr+q7mfe5v1T
 u7STRRO/8U34jTHaP9Abf/MRMfdtJSb+xX/SestPfvr13ztSc1h8j4sMriOSVeHBZnBD
 LdQBUaPtK/2cYHzKCtBVrWqQK+uIiguokFpfwGaveSI6PMtL2IxxiS7LOVhE+bOPcFHX
 BlfLFQp9xIJqFiTvIFZHKl2D4lqFSweVbCmdzTnxBaTJsrxehHABJzdX/qAUk2e9NrN3
 Cj/w==
X-Gm-Message-State: ANhLgQ0GBlZ3700VJ3XjkBarxuB/vQu+6/yDdZHvGdVakI8nSdOmZ/kA
 o+vpE1VY3U12IyJAaiA0nB2DqffVKnfxhb+/SqU=
X-Google-Smtp-Source: ADFU+vvj3NMepp4+W+Ht+TpbHNu7HfOuwZurBarhZ1ea41FEx8bY+MD8XoxABaGD6fX9r2nmOPfbw/IaUPmXXxxFlkM=
X-Received: by 2002:a05:6830:3154:: with SMTP id
 c20mr4561305ots.279.1583542614712; 
 Fri, 06 Mar 2020 16:56:54 -0800 (PST)
MIME-Version: 1.0
References: <20200305211643.25830-1-paulb@blazebox.homeip.net>
 <CAKxU2N9=pe0RM55CV=YNQYr1jXVDQqH+DzN1+v36cP7s-TmLwQ@mail.gmail.com>
 <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
 <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
 <20200307013138.05d8a8fe@mir>
In-Reply-To: <20200307013138.05d8a8fe@mir>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 6 Mar 2020 16:56:43 -0800
Message-ID: <CAKxU2N920_4r1OATB9TCFpoUDBjtvoWFf+N3LFwUCR9_SdEibw@mail.gmail.com>
To: Stefan Lippers-Hollmann <s.l-h@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_165656_775099_0BF94942 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4
 compilation issue
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
Cc: Paul Blazejowski <paulb@blazebox.homeip.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Mar 6, 2020 at 4:31 PM Stefan Lippers-Hollmann <s.l-h@gmx.de> wrote:
>
> Hi
>
> On 2020-03-06, Rosen Penev wrote:
> > On Fri, Mar 6, 2020 at 11:38 AM Paul Blazejowski
> > <paulb@blazebox.homeip.net> wrote:
> [...]
> > > -   DEPENDS:=+kmod-nls-base
> > > +   DEPENDS:=+kmod-nls-base @(LINUX_4_14||LINUX_4_19)
> > I prefer @!LINUX_5_4
>
> Using @!LINUX_5_4 would break, once the next kernel after 5.4 comes
> around (be it in semi-private testing or officially with the next LTS
> kernel), while it's safe to assume that no older kernels will be merged
> back into master. It's usually a better strategy to test for known old
> kernels/ features, than to consider the new approach as an exception.
Hrm OK. I assume the next release will be only 5.4 which would mean
it's a moot point.
>
> > I also want an exfat package for 5.4. As it stands even though it is
> > in the staging directory, I don't think a package is available.
>
> https://github.com/openwrt/openwrt/pull/2807
Great!
>
> [...]
>
> Regards
>         Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
