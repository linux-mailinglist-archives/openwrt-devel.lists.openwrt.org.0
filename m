Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406BD98B60
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 08:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMa20dHmvRJOfAVx1JcBICUvSoDpqFpoPwFpn0FXfE8=; b=JM63CPr8unWS88
	2AfqTheawXiV6YH8xGlu0Joft02zq2jGQ8937vRDn94H5c6mfDdyjx4Zd70kA/B70Y8qA7PEN+DuF
	T+mHDb1A7qBbDfZLB8IpgNFVpuUagMzL1TAvFzkEznXSaAtgBPBuKPwUedjNwIJoDeBKerA5CvOvu
	HOzZdwSnbHd2CxwkMzcJ36eC34gQc1pLWxGcKDFNAcHqpZxDshdTPxMWunUb8hqfaEV/0JehEIvHs
	GUaA+PGAYGj8+oQGX5EoCm5oqUhexq87iO4ScVsWrtR/DwtavQUTgOtSbi+GmI/vKgh39HPCXMmen
	pQwEtfKtkNgM7iWdZyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gZJ-0000MK-P9; Thu, 22 Aug 2019 06:27:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gYy-0000Lx-Ot
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 06:27:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id l14so4449822lje.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 21 Aug 2019 23:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=j5f32QEajFPpwfc083kGtezqymplrswiNLOXF3eAcEk=;
 b=u9YGsS5cOF+8WkIgePCoQ//LILzfImWJ37FkZ/UzqV6n8fmBeHrvpCgMxs+exjKFEa
 zbYzI6D3g0WOvv8W00SoSmdEpTO4+SGIif2oBEZcWNhFdAetJzu7pWwgm9A624Epthf2
 Ey+9yOwPJn4+WN4Bur9yElk6Nk/cWIQmXHmAsAujBuF6dQq97n4FhGsimztV+eMC5TIS
 9vEZIVFaNX6c87B9NAU762z3jd+9ngLpSPGPwEXIkli8i1jKHSIXavwdorwr6rXdlG1d
 NitAdDqFdCdqiRZXwcnHjvj4l3Tc+IIl6jXq+Rr7pc4EQKQo0fcL/n1BRcEWAQ6P5ZIG
 HIOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=j5f32QEajFPpwfc083kGtezqymplrswiNLOXF3eAcEk=;
 b=KBPNGq5IrDZaTD/oUmaZmp3RrDValN0q35WodQ4GgE8knxizRnJiipBRclUKc640As
 yKDtWRQb78vKvS4rjlSGKiFKatTGr5oCPfDaCxbJYITuGZmvVqbUnsWktNk5ZLVKnQ15
 Q067LqVBVq71X/vXbfbMka1XAuOdIvzs2gNy0sK/bvbZ5WV2AyAFNV47ywZaIUjzNXzc
 yVgZfmXv9UAeownrwd9ZTrfjEQdU4qXprDbgQSEl5oX7NOCsplWERjMtB3OT3KZ2Zx4h
 HPDHbtvIIxF2nFZi+ISEmcAjywHtQAs5O+MOb/7dTH1NDyDTUd/WkiVj0kwIjzLl+0Dw
 e4Tg==
X-Gm-Message-State: APjAAAVzgjSqyEXlecjD7divmvA0gsyjq5yprHa0jnFwSFDDXo0YC5/v
 2auDlFgIDQbswC6MnOl3s8s=
X-Google-Smtp-Source: APXvYqz2cjjAVK7rwoHr1oZOywp3Q2uzFjJJ2ZC/D5uuOO9k5va29KoxNWUGoJBWKlFv7WEk2OrH/g==
X-Received: by 2002:a2e:5c8:: with SMTP id 191mr21142606ljf.241.1566455230670; 
 Wed, 21 Aug 2019 23:27:10 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id l23sm3664377lje.106.2019.08.21.23.27.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 23:27:09 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7M6R7DC030035;
 Thu, 22 Aug 2019 09:27:07 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7M6R7N2030034;
 Thu, 22 Aug 2019 09:27:07 +0300
Date: Thu, 22 Aug 2019 09:27:06 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20190822062706.dmpis5iu2uhp4zmq@home.paul.comp>
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_232712_809837_E35AC692 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Wi-Fi
 Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

New question surfaced, please see inline.

On Tue, Aug 13, 2019 at 07:20:57PM +0200, Adrian Schmutzler wrote:
> > +define Device/xiaomi_mir3gv2
> > +  MTK_SOC := mt7621
> > +  IMAGE_SIZE := 14848k
> > +  DEVICE_VENDOR := Xiaomi
> > +  DEVICE_MODEL := Mi router 3G v2
> 
> Capitalize "router". Despite, use DEVICE_VARIANT, so:
> 
> +  DEVICE_MODEL := Mi Router 3G
> +  DEVICE_VARIANT := v2
> 
> > +  SUPPORTED_DEVICES += mir3gv2
> 
> Drop this line.

So apparently this "v2" is in fact an _officially_ relabled "Xiaomi Mi
Router 4A Gigabit Edition (R4AG/R4A Gigabit)", according to the
reports from [1] and the related thread on "4pda.ru" forum. Insane,
yes.

What course of actions would you recommend in this case?

TIA

[1] https://forum.openwrt.org/t/xiaomi-mi-router-4a-gigabit-edition-r4ag-r4a-gigabit-fully-supported-but-requires-overwriting-spi-flash-with-programmer/36685/41

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
