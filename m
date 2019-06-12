Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC0424FD
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 14:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdhLvE39ydJui06cLGEQ9oak/vOR+8NjarAzk76Qmnc=; b=P8rryW9UfTgJgV
	trwuqj4kMJ4UgyojeyF2J2rKuQQ8ErIve0Hcd8eAtjW/A9dUQQVnoYc8Tn2igk1HRAi4zbyvdO4xs
	GsWD/nU8zGzMALxMHUex6a4RhatexJdKv5rhT8XjgVP5NVBKT5c1jh9zJFT3hCPFZaepzwEWj9L7M
	s3HJIswMW/jqkLPigVRsmRoMrvinTvS7D9pCqrDf/omcHWdgov0yofuIdUtey/8Ph33a+htXFo01f
	gFqu8R9HdusvHhriBnKCzarRCE3Xf+yIDdNdGmHCVRaRKAW1h66yLMy+QafDcKnG0JwyH3Ed2euAF
	mZx72JO16lOBVV01egMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb21F-0005uv-12; Wed, 12 Jun 2019 12:06:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb215-0005u0-BR
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 12:06:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so6516467wru.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 05:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QIxwceklyqj4BU24BwQ26kAwC21gcHJNc7y6nwkeMUU=;
 b=n6iMCIIzJtF1m05gDhNqFPJwA2ipfeoHSJSlv2iv0b6AMqNYkH5RJ9LwJFXOHkPJ6r
 QqHmjL3XN8EN8Tq4m+kK0lYe0HOASMD9v55Dhkb+3Bgz+5ZQ0BMIpm9QYZ0LaQ2qViw2
 dbJzRGSoIxCI03NMYD/j382WwA7uGwlBbAx1pPeCxZ9sRXwYjmHAOGnICLd1Q/biDdPp
 dAUeQ4jIofqw9Oztbf2Bs2nl49lq3tUleGM3EuQ+sP/tw5TI3cZ0d0orxpLAj6FvIMy6
 hmc4bh+CGDGqfKlzyeBd1niFy7Acm1ddXJ0Cc5TiR0IF+ZEzrgkaiOcWT5ju03UuArH9
 jOVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QIxwceklyqj4BU24BwQ26kAwC21gcHJNc7y6nwkeMUU=;
 b=HF+71NvEOi7BfNOA2srS13eDVb74utH8Yj6ldl9dRlv9gKke/pc7c2StTXgjEB8xnj
 OKxdDT1ukcIWRs0EqtBbpeD3BUVLim6G/Qy4vPqxSRAfJ/LCYqNpHOo598um01ExoO0z
 3VptT/v5GRnCRubJABWQ26DW3+cyGl0M1j/u59WMVuIPm6QOuWIZayXbY+veyatVPMDS
 YNhUZqT6IEX2RviU3lCq4pONlsegq3lQsaIyFlC/SzL0Otvps5jje0XZPumhfrCdzHpO
 ngxfqXC1l/A/W3kuIfauI1OWFCY1BrKX2HglFdKDvvz0Z+B7SFmSUpPmMdQfkrmcNLja
 Y/Ww==
X-Gm-Message-State: APjAAAWL0fDdrk4lB8ziWmoiXWnQV5B/ylzmioGOxItdoDq5cNCFuWmP
 17aGnB+LNph31IPmslekNDlFcNDCfcWnJyt0J6s=
X-Google-Smtp-Source: APXvYqyqW+fvqcSmEXEkKrriJdDoxJT4Nssti859OFZo3PxpPNlg6fhym+SKTP4tS0zw6F7mXan+nd1c76epcEA1+mY=
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr5765628wrr.56.1560341169343; 
 Wed, 12 Jun 2019 05:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <f81aabc8-e8e5-42ea-37ab-2adeb4728896@linux-ipv6.be>
 <CAOiHx=mbuuiL5G1Ay8oedPMhRFsLJZKOP06ZNfxT1ocmyrU3ZQ@mail.gmail.com>
 <6a97128f-4c5a-da4f-3964-0a0fcc20f05b@ncentric.com>
In-Reply-To: <6a97128f-4c5a-da4f-3964-0a0fcc20f05b@ncentric.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 12 Jun 2019 14:06:02 +0200
Message-ID: <CAOiHx=n__bzrdR9PxLj5_hDYkdQST6C8u3ngKFZzmUxuB72gJQ@mail.gmail.com>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_050611_395358_2805E0A8 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] KERNEL_PATCHVER in master
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, 12 Jun 2019 at 11:02, Koen Vandeputte
<koen.vandeputte@ncentric.com> wrote:
>
>
> On 11.06.19 23:12, Jonas Gorski wrote:
> > Hi,
> >
> > On Tue, 11 Jun 2019 at 23:08, Stijn Tintel <stijn@linux-ipv6.be> wrote:
> >> Hi,
> >>
> >> Since we now have a 19.07 branch, is it OK to switch KERNEL_PATCHVER for
> >> targets in master that have 4.19 support to 4.19?
> > Fine by me. The earlier we start testing 4.19, the faster we can iron
> > out the kinks, hopefully reducing the maturation phase of the next
> > release.
> >
> Fine for me, but please hold off a little bit until I pushed my kernel
> bump later today. (already in staging)
>
> Otherwise there's a chance I need to redo it ;-)

This is only about enabling 4.19 by default if supported, not adding
4.19 support where missing. So shouldn't affect any kernel bumps.

Regards

Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
