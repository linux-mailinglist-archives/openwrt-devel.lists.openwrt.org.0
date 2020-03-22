Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE00E18E938
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 14:48:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0sGjaPGy1mKZPljmNb014KcG53A9VZiUGWMSMse0no=; b=CRVO6PAZOtD+yw
	mlO0NPsgL4swFJBLIsOgiSN5MSe+iqPph8Vz+SMtCE9m9c47HGw/a0ZO2fWKmZx3TFpc0ROeEMFwp
	8DADoPA1utp40vUyoA9qOmbwHqeaDsxD0iL8T4fOQxqg3SkEFpPzdl+Zip9oLasY1Yt/7Oh81kXGm
	9GUCmyDXiazndbc7h8R74MwE155H8I0lwGiuBTM5rwAioE6vWC89b8zpNPfWQblvDbRB7f60bEcy3
	vEErV3edaTok2Zzzn1SuYYn/XI64S7xPO/UHDJwjdc2GYE0NbzwMAWW+WMcer7phUOnstk1lFf9hE
	PgRF9eVipibZsYz5s9/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG0yD-0007cL-5U; Sun, 22 Mar 2020 13:48:53 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG0y1-0007IN-PV
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 13:48:43 +0000
Received: by mail-ot1-x344.google.com with SMTP id 22so5266761otf.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Mar 2020 06:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L4h4CG4yJghNvWrBl6drEfCdwp8WYSpnoX4BvXEFP84=;
 b=n08XSPaqBifY813gTQTdFM0bgK476tQbBiqt4Fj5hRLaY+ZvdhbHwZG78f9P4W67dc
 +ZwEYx1HW7Sf45mUdJXxEy7XKVfvVKCXtmHrW8jLCcMF8jaN6JalAoBXv6LFCdDwbRx+
 FHQQXFr3RoKuHTP1buMY9VMWe28KyoFc7dQxQ/MK34gfIzO8HAhGcr4NQXSfGXGZr32H
 fIugOfIE3YLt+2SMWn03/kEtWkKFvfv0Wqb1YbVBek1KKvsHeC0Hmv0V+POvlZy7anuH
 ajacemFKidHeiPynXUea++Y3od3/Ud3Gb6zbuFFhqelxSn6ufHt9VG62zQSrzCozMVhR
 9dFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L4h4CG4yJghNvWrBl6drEfCdwp8WYSpnoX4BvXEFP84=;
 b=tyfXsizhxOe36ctAVT7fFsrsuW/9QVgMXoJoAIkKcDvc1u3J842eCbcZhsAMs8bFjR
 LoVd+uvMuzonskBQ8NK4Me60uiB5OvM5UETbNsUHK8zDfntYYvpG4KimJpwgWA6hzdYD
 3Z7xNpH1RxqmlJU+Pr6SNBTir7I4ZspVwISduowQrSzwDsi4QhsW6BiMO0CpKLP8R6vQ
 sfuB7zpZnOuZOwCSu19lfdT/raxWCLt3dMFPaJHa6/FtFdEp+f6yj297uMapK1SPIPmw
 KB4s3a+EtnpdkrMskQHQe9n/3ZrOrQyGmlJmMG/4cr+bJQwK9dyS9O8I6GtHne1AyJh9
 PXmA==
X-Gm-Message-State: ANhLgQ2BFuY3XvijE1hznsoD/Qg4MwQiI+U7BIV0Zqn/N4+OjHwbkHNn
 BjJSvlRw9akHrSdNwH+madOH32u5Gy7iik6ELhmIlSZQA9k=
X-Google-Smtp-Source: ADFU+vu2wFCEWwFUKuOexXgmFUfQRez/6NZA4Jez9dMNnQsDD/5KVF3I94Pr3TSXXcBURjZpv4htVxzm910/gcfHN14=
X-Received: by 2002:a9d:4798:: with SMTP id b24mr14506460otf.243.1584884920273; 
 Sun, 22 Mar 2020 06:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200319112206.620246-1-robimarko@gmail.com>
 <C1FYY4LQF4LT.2MRJ5HFOPNKY7@tb>
 <CA+HBbNGAeQJVzUr=Ou+APF9NqJ20f9HOs5mRaYQq46t2kGfEHw@mail.gmail.com>
 <20200321154149.1d47e581@lazus.yip>
In-Reply-To: <20200321154149.1d47e581@lazus.yip>
From: Robert Marko <robert.marko@sartura.hr>
Date: Sun, 22 Mar 2020 14:48:29 +0100
Message-ID: <CA+HBbNGx--f6d_jeYTju5XbeniBWdqKN7xUqjMr=HnVXS4rZ9w@mail.gmail.com>
To: "Alexander 'lynxis' Couzens" <lynxis@fe80.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_064841_886861_7230919C 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] tools: squashfskit4: fix build with
 GCC10
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Mar 21, 2020 at 3:41 PM Alexander 'lynxis' Couzens
<lynxis@fe80.eu> wrote:
>
> Hi Paul,
> Hi Robert,
>
> > Sorry, I did not know about that situation but after a look it seems
> > that squashfs-tools is more up to date that the fork.
> > There has been a 4.4 release and couple of patches each month to it.
>
> you're right! I would like to discontinue squashfskit. It had it's
> reason, but there are now 2 options:
>
> a) the upstream is more active and even made it reproducible
> b) there is a full rewrite squashfs-ng
>
> For now, I'll test the patch und merge it later. Maybe I'll also have
> the time evaluate the upstream and squashfs-ng.
>
> Best Regards,
> lynxis
Thanks, is there a chance for you to take a look at GCC10 detection patch too?
https://patchwork.ozlabs.org/patch/1257707/

Robert
>
>
> --
> Alexander Couzens
>
> mail: lynxis@fe80.eu
> jabber: lynxis@fe80.eu
> gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
