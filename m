Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAC1A86B2
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 18:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OlshJpXuoG1z14PmbhVciyGaxfOEHEZuuq2K8EjIuew=; b=foZpjAepZHyoZTE1c8lSmU+Hz
	dpgPEwM5/Hz1RxxM35ohHXMPZtKRdxRTeQiyWnsz7tar207JcVKnINJMrbVAnxPgy60voXK+nHMLG
	a4dLE4oLMsT11LDjOQcQvc0W6Ox8RgGMV3+jzQ0J762PwHDNrm3Ys9LLz3B9ADxfaS+uvy4DL0+zj
	hVec2lMyPHYG/0OCzCdYKO5qGV7FJPcSpRNsLbwVjYV6eTFlMdPLcy5VH5jR5dLNRHDgV7yPsK2Nk
	0bfd01qdKMamekqdko8fOuCgNBi0ZApHTX5+ERFd9VdnXpc8lsqDP0doF4QiXfNam7cZvFUYkLOyJ
	M1fTfaSsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YSm-0008Uw-Kg; Wed, 04 Sep 2019 16:48:56 +0000
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de>
 <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
Date: Wed, 4 Sep 2019 18:48:33 +0200
To: Enrico Mioso <mrkiko.rs@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.22503.1567615728.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on
 AR10 platform)
Content-Type: multipart/mixed; boundary="===============1736372197108143117=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1736372197108143117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1736372197108143117==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YSb-0008UP-K1
	for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 16:48:47 +0000
Received: by mail-oi1-x244.google.com with SMTP id h4so13012449oih.8
        for <openwrt-devel@lists.openwrt.org>; Wed, 04 Sep 2019 09:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=boWnuJPwwzsfwj6VFUfPaO28/0mtpHrR9anNcV271RM=;
        b=Emjc9EIW+3T519pw3aQliJh5Pd6B76mcd+uisBPkxn88sh0uDR/YX3sdFiWzjLlYFL
         XOpeUcltllgx9hN+w/13xBnf9GkApuuZsWboOCoC6JWMSwJyP2L5qkF+JYS6a9NQBKxo
         YeOmUKPhmO1jre4f87y/d+CmcdeijveRas8+3JPIF0wRxupG8o/91cAGUk8G0AAivb3u
         NYC1eONrI2V29Gc1vK/Xr+uNbKboS40Q09TVKUghzNxZZZQIkdVzr/uf3Y/oIBlLlh+r
         SWkxwbsEwGNQ+d9mzs+H0foK+LGTlpoOxgG9xrjrJCeYfjcLxm31Ar8Fr9E4s1KSGios
         XwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=boWnuJPwwzsfwj6VFUfPaO28/0mtpHrR9anNcV271RM=;
        b=CUV1asxfx3jqfbx37QP2wtiKuZJJH63HprRzeI2njCgdCWXPlWjIiDvl2NqiShKM1Z
         u3bVUIIymij/zqYRm+s5GU8zdLzRV17sEbQLGmIa53H1GmbmrmnVSJM0+Pxod6Q5u8Ep
         CB/yLwxU+tL20VtXh11ekuuv0kxFlEYTdxlNh35DJ5Bt/c3HQ4OnCfAsn04B22YLv+TT
         VStcKW/ZOn3tJpbJD0GP83bUE6WLys7SUEO6DuITIVkUNpIlzQT0mmc79reuKs039DA6
         sKSfySH1dRoWm6YUVQ20zME9wl3JLcCFtWFwJUZ4OUBhG1/HuTS+c3l5VHe7ZXccQIGh
         otdA==
X-Gm-Message-State: APjAAAVxydM2ZkdF99PIC8gpOie6SQeZejtxoPl86NpYSU+Ns39wYcGl
	ef+saxH51TR8t5yHPP1bHcudJjjJ1oYyaGVKYbw=
X-Google-Smtp-Source: APXvYqwIhW2NXzroIR3aP2pQBBlLVoJ7DCXDqx9jbinP4ned1D7PVLRUtk3bbxGgEI6hNuwOsMxFlqKXz2gQLqc4lkQ=
X-Received: by 2002:a05:6808:b14:: with SMTP id s20mr4118244oij.15.1567615724064;
 Wed, 04 Sep 2019 09:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
 <919fe9ff-bdf6-e3a4-1dfc-ca53284b5986@hauke-m.de> <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1909041159540.3532@localhost.localdomain>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 4 Sep 2019 18:48:33 +0200
Message-ID: <CAFBinCD1ttRRxw0NBcGyk0TzJxuPH+o3fh=sqMgjO9STbXx6HA@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] AR10 GPHYs (WAS: Re: [lantiq] general help on
 AR10 platform)
To: Enrico Mioso <mrkiko.rs@gmail.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_094845_687066_71D112AC 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:244 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

Hi Enrico,

On Wed, Sep 4, 2019 at 12:07 PM Enrico Mioso <mrkiko.rs@gmail.com> wrote:
>
> Hi there!
>
> So I am trying to get ethernet working on this AR10 device.
> It has 3 GPHYs:
>
>                         gphy0: gphy@20 {
>                                 compatible = "lantiq,xrx300-gphy";
>                                 reg = <0x20 0x4>;
>
>                                 resets = <&reset0 31 30>, <&reset1 7 7>;
>                                 reset-names = "gphy", "gphy2";
>                         };
>
>                         gphy1: gphy@58 {
>                                 compatible = "lantiq,xrx300-gphy";
>                                 reg = <0x58 0x4>;
>
>                                 resets = <&reset0 29 28>, <&reset1 6 6>;
>                                 reset-names = "gphy", "gphy2";
>                         };
>
>                         gphy2: gphy@ac {
>                                 compatible = "lantiq,xrx300-gphy";
>                                 reg = <0xac 0x4>;
>                                 resets = <&reset0 27 26>, <&reset1 5 5>;
>                                 reset-names = "gphy", "gphy2";
>                         };
>
> And firmware load addresses for GPHYs are correct as per the vendor code:
> #define IFX_RCU_GPHY0_FW_ADDR                   ((volatile u32*)(IFX_RCU + 0x0020))
> #define IFX_RCU_GPHY1_FW_ADDR                   ((volatile u32*)(IFX_RCU + 0x0058))
> #define IFX_RCU_GPHY2_FW_ADDR                   ((volatile u32*)(IFX_RCU + 0x00AC))
the register part of your .dts looks fine based on this

> But driver was failing to initialize due to missing clock gates.
> In sysctrl.c, we have:
> clkdev_add_pmu("1f203020.gphy", NULL, 1, 0, PMU_GPHY); // OK for GPHY0
> clkdev_add_pmu("1f203068.gphy", NULL, 1, 0, PMU_GPHY); //problem for GPHY1
>
> And GPHY2?
the UGW kernel documents all the PMUs in
drivers/char/ifxmips_pmu_SOC.h, in your case that is:
drivers/char/ifxmips_pmu_ar10.h [0]
I don't remember how to translate that file to an English sentence but
you can figure it out on your own (for example by comparing the vr9
sysctrl.c code with

resets are found in the same directory but a different file: ifxmips_rcu_ar10.h

(sorry for the short answer but I have to leave in a few minutes)


happy hacking!
Martin


[0] https://github.com/uwehermann/easybox-904-xdsl-firmware/blob/master/linux/linux-2.6.32.32/drivers/char/ifxmips_pmu_ar10.h


--===============1736372197108143117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1736372197108143117==--
