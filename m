Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2924F7DE
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 20:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyOBg8fZwaeBaao0Bgv0Qbb+dR3rxAYrtc3uIneZBSw=; b=VsYm7LwkDrGpKf
	fXQ4GpyTPvwVWWpoTgeDYqEt4rHWo6OvNbxvtzO4jBHpPIPvlgnFypiy1wQcZNOgmNd6PYM88AB+T
	qzDEsLLOwdbJraP0jkT+lj25b9iNIL/mKhlq4bht9+bgr37cL0vShYpJFtd38n3B/oEx/SmwY7f/T
	9pGlvC1kW8nLSYvaQ06HQpDJan3ZnxYNYTmRj7vbw1Ft4r13MIWslMsik59uw0FBQ7EMHN8SZVAJz
	ME4rvPmDv2LCUYTIgCQXPf7CPah9GzskBACcfgJVMK4ET1sihxFpR7LeDtsQ+k0ofRzdyHz9VWQW5
	gb6GWkp6cIw8wVQ9kPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1helD1-0002aH-C3; Sat, 22 Jun 2019 18:57:55 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1helCr-0002Zq-KR
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 18:57:46 +0000
Received: by mail-ot1-x343.google.com with SMTP id n5so9620113otk.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 11:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jejI8FClvAz2+9R/6lGBGkTlpnr85aQO0SSD111mnlI=;
 b=k6tXkpBXZ/JP2jWjoPIrOvFOyU2cL4PS+bQiG7SItZIWNNqefLoDfSK5AU3upv4mPy
 nuN6LIze2RnbtHy6IIX9vyKBz9YgtBFWxKVZqHIw+U4ITFEJy7zLpwSe0bWLPCiX7xA3
 HsWRXUHEoffAYbZojrVLEFkGuoAwg9+3bmkhB4FRn4SZBX0NT5uciEuhckmQHwPHGMGG
 g3jGANtHzetiJFWwsYe73SVeM0jC4QibzAiCqI2K1RbSAs1upnpWMe2ONpeWqNf8UYMs
 +nAuT+2ZqMz1kFIC9RNTW1hIJ1GUT+EcACjRHGVpYDG+T5QOG5C30IlG2dLnUahJn0mH
 A9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jejI8FClvAz2+9R/6lGBGkTlpnr85aQO0SSD111mnlI=;
 b=peSKrSkv1vyXnYpbLHcCT20CA70yaBKGMDE3gw+nBp+Dk9jHBhcG+ldVvLdrvAb10r
 /EzBAFifMbnBA1pNT6q7EOtqUTgzXI4aBtgHHGsShPJXlP2qKIwkaPtRatTMPX3r2Jq6
 KK1x/sJuJPOs1EKNn/pBXzpMkHv4ZnP/omWN+MjE56mq7VbVYJl6j98s8Xnbd7LWwM9F
 wi1NqJ+e9Hr2wgmXXgyh5IycSx/xdHXbJdp+gWW1w/eB/wiNIRKS0wfENOH2vJc/oFyY
 LWK7UFulN9OUBvj3z9Q9B2vjh2bqcPoGpGFE7OWjkbTT4zcMIVTkVdBGEGBWT1DqCDQQ
 HVhA==
X-Gm-Message-State: APjAAAUb0OtXsnZRHoejkDhmnthbHV/uoPFnD8i16J6C6YDel+ZbVfe8
 d3+1lChzG7wCtmJHxsT3gTxz9+4/AsUzWUQPvE8=
X-Google-Smtp-Source: APXvYqyBgivyE6r6TJq2eGu8Spwh/HV5qY144eoABOx1/TdLNtPWVKIkHqX7jaQIinYTCq9dU5YP1AwFgqGkzncr7CU=
X-Received: by 2002:a9d:4b95:: with SMTP id k21mr11229250otf.281.1561229864159; 
 Sat, 22 Jun 2019 11:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190620193304.30303-1-rosenp@gmail.com>
 <1894667.KyhJTWUrd9@debian64>
In-Reply-To: <1894667.KyhJTWUrd9@debian64>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 22 Jun 2019 11:57:32 -0700
Message-ID: <CAKxU2N-=TpN594wD8f4CAksFbGXVtNno=VfT49VRAKb2wO0wrA@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_115745_699280_1F63FBC8 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain: Don't force GCC8 on ARC
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

On Sat, Jun 22, 2019 at 7:37 AM Christian Lamparter <chunkeey@gmail.com> wrote:
>
> On Thursday, June 20, 2019 9:33:04 PM CEST Rosen Penev wrote:
> > This prevents overriding it to use GCC9.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  toolchain/gcc/Config.version | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > index ef9bbb82e2..e635244827 100644
> > --- a/toolchain/gcc/Config.version
> > +++ b/toolchain/gcc/Config.version
> > @@ -4,7 +4,6 @@ config GCC_VERSION_5
> >
> >  config GCC_VERSION_8
> >       default y if GCC_USE_VERSION_8
> > -     default y if arc
> >       bool
> >
> >  config GCC_VERSION_9
> >
> From what I know this would select the default GCC 7.4.
It does. On the other hand, if you select Advanced options and select
to build GCC9, it still builds GCC8.
> Do you know if the special ARC patches got into the 7.x branch?
They did not. GCC8 is definitely a minimum. But there's the problem above.
> Because from what I can tell (from 7.1) this was a problem and
> the reason why GCC 8 was selected since it had the patches from
> the beginning.
>
> Regards,
> Christian
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
