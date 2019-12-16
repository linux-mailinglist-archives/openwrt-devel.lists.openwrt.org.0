Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4307A121A7E
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 21:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuTfGH46x1gyqs4joxoZaBUiItW512oSzl04B1Fh2MY=; b=gx5cHkZt8sf3TE
	hDm9rrdIGzZGpwEjld/m9p5dpwkUR3gnxJmlNXKSbS0RmlogORkzQ7R6sa8bB6grOooBD8vX+TYJ3
	DLw9Zxgy5WJwB4rRkd9pEtv+vIaX3yhUydk78sIrRfPxIEAzKMf9z5P8BqLcNn5SeV4eyTUY25nuj
	84oVonwdIANvAjUJ0C+nTmS7IU7B0kINl2cl4peoKKl2bClWlw6YV9e3bcQ+H10/phw5rwQQHfUFf
	CgE5kN1/gQv2OkZ90zk08MEix6uGhpavFIeDitc2WQofOdmYfabmbMPY9oTCtgSfec0GDdldzHpYA
	EtHlY8vk4OMaCBZ6X6lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwcF-00040l-Lz; Mon, 16 Dec 2019 20:05:15 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwc0-0003t8-1o
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 20:05:01 +0000
Received: by mail-oi1-x243.google.com with SMTP id b8so4326829oiy.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 12:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5SGUDQ8y2uyVOHswrQfnkm8uSIKBeCLVN/loDS3044s=;
 b=uGmKrkABXStVFuZ0CnCMl2sifC41KEVbEXgFqnnuriF38oFGmgKtjabGR7Xfd6zVDw
 hgNFbl1WVwp5VPS9A9Ka3N81LrMJ4Xkf0nCML2i9DQsvY+6RdulcUIVt8FEZrCqzeHUr
 +x3bcAe7LIz8amVhuL1iJoP8bM/Ockw9dtGGBMNzr+50bGco1SjJuRS8AIBAQkesTBU5
 DT14dRsU+u6qB9DvGjyCE4CLwlIaTAeH0R8FeX6lw1dqQZiYcO3tOCiiywV6llSaBvbv
 x9m3qyTpIuKXLGjc97Hgdl4iHDp4sFA7biU2IC9qUp40g3YWvaDi0L0Z4SfBIt08jFTz
 DQvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5SGUDQ8y2uyVOHswrQfnkm8uSIKBeCLVN/loDS3044s=;
 b=Zdt5qbZ92gZR+ALnH3sgWxZ9E+YseZHNiORud/+th9QxThTCjc1wa3CSwhcviWBkwu
 41fS5fMmTPWOHD+LTagN7Y1exwtpqBktuOwSCva3oLVMLsFwbKmA/uzDMBUIXtQp2/5b
 21cqvPyr25kdZMfUSiIlqwXFu5j3D8RjuRowCZ8wwVHbSkOD+CCefmcvNUmSdmXD6Vd5
 CqB3tiPg7efg0Fqild/wXxFLx4ENI60Cp3gUja48AMqKiWYWG4F/Ay07s9hT3LKhpLPQ
 xD+ltG8Vkh36/tECipLsWC/albj55VWMGZwJIL93n0T9Z5AuVTzfPuRaOzpFW57/wghV
 joqQ==
X-Gm-Message-State: APjAAAXnh+0Zbf6FCFc/d6XA8/XEbDHSCQCp6/X0zR4UYFHTFEGSyuYb
 NTIHwKwlQktYYvPpiJ1x0UKWMFLuOveoz0GE4i4=
X-Google-Smtp-Source: APXvYqyWMrqQS/3xOx4JnWpIFOn4nw4iUjqok/XySrzUUDKCLUM8HL2wIxx1L2mxFs/9cFkBofU42Ewxs0bf8eV5OHY=
X-Received: by 2002:aca:1b08:: with SMTP id b8mr491051oib.106.1576526697695;
 Mon, 16 Dec 2019 12:04:57 -0800 (PST)
MIME-Version: 1.0
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <5675304.dXXkMWVoIb@debian64> <20191215120114.GD11070@home.paul.comp>
 <4186246.Rc2P9gcx8s@debian64> <a8f56a23-108f-3f76-2ea3-a904726ed224@gmail.com>
In-Reply-To: <a8f56a23-108f-3f76-2ea3-a904726ed224@gmail.com>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 16 Dec 2019 21:04:44 +0100
Message-ID: <CAAd0S9BT1y2F7tEXp720u4xx_3Xry0uZnyvaOExH-85X7ctyjg@mail.gmail.com>
To: Alberto Bursi <bobafetthotmail@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_120500_114556_332D61D1 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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

Hello,

On Mon, Dec 16, 2019 at 12:27 PM Alberto Bursi
<bobafetthotmail@gmail.com> wrote:
>
>
> On 15/12/19 14:09, Christian Lamparter wrote:
> >
> > But it seems that Ben had a change of heart in this regard. I don't know the
> > details or why, But it makes sense because it would enable his company to save
> > some money for the systems his company sells:
> >   <https://www.candelatech.com/lf_systems.php> so there is some value
> > in supporting these devices, especially if someone else does all the work
> > for it.
>
> These are wifi/network testing equipment, not network devices.
>
> Also I don't see the value in "saving some money" by using a bit less RAM
>
> when the cheaper system is sold for 3k, and most stuff is above 10k.
>
> You could use standard whitebox x86 stuff at that price point.

I'm glad this is getting some attention and others are chiming in. But
let me tell
you first, that I'm not an opponent of the "American way", I'm trying
to make sense
of it though and also what would happen to the ath10k GPIO patches that got
quietly dropped from your reply there...

As for the "These are wifi/network testing equipment, not network devices."
True and If you are interested you can buy cheaper devices like
<https://www.candelatech.com/ct314_product.php> from the company as well:

"The CT314 is a low-power and affordable applicance with a single 10/100
Ethernet port and one Broadcome 802.11b/g/n Wireless interface. It is targeted
at users who wish to have an inexpensive appliance that can be left at remote
sites for network monitoring and lower speed testing. The maximum throughput
is about 90Mbps bi-directional wired. Wireless throughput is steady at 38Mbps
and can peak at 48Mpbs. The CT314 is based on the Raspberry PI B version 3
platform, running the Ubuntu Server OS. [...]".

I know these have not much to do with the issue at hand ("low-memory system"
support in ath10k(-ct) with OpenWrt). But as Ben explained in the follow-up that
he has a keen interest for supporting the ath10k-ct driver+firmware
and he's doing
a great job with the ath10k-ct issue tracker.

Cheers,
Christian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
