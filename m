Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812B61FF2C4
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 15:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCz3Ghx2TdQ9mJ+oCXrHlJDHEGMYU6b1POnZ6prsk7c=; b=bMKmQl2TKKIzsq
	fbhDHJGpNqAM1tVHJLCaMUeRigezRmCg7nD5SEaBvq1Bk4fQSV2tCqqIR2vywfOuNd4CqOurWca7a
	dOBQT8yV9cZG06UnBE36+3FsEerbr4Vhi2pdJSKPxqsZytjJnmmxZBTeX813nk4aAxbv0CzDHbUhM
	ERaDwQoyP8Yx2p0sSw9KJoK3gl1+Bq8T9BBAM5xvG/5lHC/SY5TPXMrp83Ef3GUwhemlYzJpYAE6a
	7Co2Gzhv48P1oda0l8HQPoUmKv3QjGM4EAIh2y3AT0bQrOeVJ50jYAkgw1PVvkiNaz9TYPekz7bOr
	mAX6lICO3Oq85NEod4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluOJ-0001vJ-08; Thu, 18 Jun 2020 13:15:39 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluOB-0001v0-In
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 13:15:33 +0000
Received: by mail-vs1-xe43.google.com with SMTP id t132so3486562vst.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 06:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aKJfia8NORKGDp/UFi2KpLmTy626MO/bKm4uuYhVOW0=;
 b=n//MQUJs9Ag9HcngJA77lnJWse4F3aS0UavjWci2udQfsUnD0kSxvSq5pHMs9j6q80
 l+VXINHm0cNdmiFFOY64ypUj7ubJ5rft9CzN6nmOEhTEyIizS0VyFcGgLbKjszU/NiI3
 qxD5FFLAlDiqKx1bOak2CkDvpBna3eSL7l3HjbvisLOeSx5Rwq2AfmB7GHlORUJrubMj
 XF8mXWfo5sM8jt6Eml/nHOeX6w4DdJ5xlUs44J6NlVu6KkdizjjmDZJgWRtrgqq8ehBN
 gdfy8KcpDFpjhyQYSOFOKAYxyG8Pixwvlxl8l2D/nwkGyWJhU1mwxvsj8NdE9x9R4jlr
 DkOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aKJfia8NORKGDp/UFi2KpLmTy626MO/bKm4uuYhVOW0=;
 b=sfhUfZZl+Cv2iPAZMg19KB8s9JzRtrB9wYxWggVMrFSJXLPQcR8odYPW/HNlfdQESK
 fn5gPBMAWmytZl/WycNRnuEHZMeU3QtbnVY7rajTyc/iYXerLtvE+dSp8kLoc1GGbc2A
 K6F1ONraX44SwfAzfo/Fb2V9LkgsgRT9NMgxqhKXZYFlMI+/rdg3ktJ/vQcNTVpuiIzD
 MYQnF6/065RRaVxupsKITCXysI3i1R0EWba2S3LPj2jbeMZ5z+fGlHWU+2KcBLYjhXgA
 qhqATmFAQPoXEYuAoQNnJkX5+A9vGq4xKMNKf1nqber7FvZvWF5HIZ/jNzmwjyeXh3nS
 iS2A==
X-Gm-Message-State: AOAM530kEFvgknRgTzx3CV7WktbQYnj/QYHlGLCyuuQfUoCbFyPBD+Cb
 CtkhyrtGcuybl5sq1+k+x+mjTUfBDkR43Tm8wigysKmejg==
X-Google-Smtp-Source: ABdhPJwTksZRGW6NxeX9QqC4cDfblnZ1wKT77HQDQJFmlfDcL96Q9oreamtVjYaSCut6WtThE742+BhUS4dK5b67o+Y=
X-Received: by 2002:a05:6102:215:: with SMTP id
 z21mr3074262vsp.172.1592486129937; 
 Thu, 18 Jun 2020 06:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200617173510.124628-1-rsalvaterra@gmail.com>
In-Reply-To: <20200617173510.124628-1-rsalvaterra@gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 18 Jun 2020 14:15:18 +0100
Message-ID: <CALjTZvZYincrpn4ROejz=sMoryT4Y0DmSGxa9zY+5N0seVrKcw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_061531_636462_0E235153 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC PATCH] mvebu: compile the kernel in
 Thumb-2 mode for ARMv7 targets
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
Cc: freifunk@adrianschmutzler.de, hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Please ignore this one, I'll send an updated patch shortly (only for
5.4, which I've tested).

On Wed, 17 Jun 2020 at 18:37, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> (Sending as RFC due to the note below.)
>
> The Thumb-2 instruction set generates denser code, allowing for more efficient
> use of the cache and consequently higher execution performance.
>
> NOTE: This requires enabling a linker workaround to avoid the emission of
> R_ARM_THM_JUMP11 relocations [1] in modules, which the kernel doesn't support.
> Since this effectively implies -fno-optimize-sibling-calls [2], we're generating
> suboptimal code. While compat modules load and run correctly without this
> workaround, WireGuard fails to load with an unknown relocation 102 error.
>
> [1] https://static.docs.arm.com/ihi0044/e/IHI0044E_aaelf.pdf (page 28)
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm/Makefile?h=linux-5.4.y#n129
>
> Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
> ---
>  target/linux/mvebu/cortexa9/config-default | 2 ++
>  1 file changed, 2 insertions(+)
>  create mode 100644 target/linux/mvebu/cortexa9/config-default
>
> diff --git a/target/linux/mvebu/cortexa9/config-default b/target/linux/mvebu/cortexa9/config-default
> new file mode 100644
> index 0000000000..6aff77fda7
> --- /dev/null
> +++ b/target/linux/mvebu/cortexa9/config-default
> @@ -0,0 +1,2 @@
> +CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y
> +CONFIG_THUMB2_KERNEL=y
> --
> 2.27.0
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
