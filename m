Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B586BEE84
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 11:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOjQW8d0o5cF1YoVbBP5rqykUFBkfI7z5M+r+FpVuG8=; b=XygpBZv5X3phRe
	AIpt5OpehxInkHpFiGjn++BwEPgh4eyPiY4qMPxbe231xli/FlWhvlWOBJr/AwV6CtWjDu42tnzPu
	yVRNk/Eof5ZLpNVCPGIQQAtnLsWGJOPiNG+7si5eRG8CL48PHFIGEcUeCYBfE8PsMzXwPWEAsJovl
	NnG39x4Ea+JcnBIF0RsfO6PdGtqJ8l3Kbx7IQSsW/7ZDXoQySOa3G9CupPexy8LOpDKocGjfFGPo6
	LghtBX8jchAO/opNksJOV2NvOSNPy50qnI68RnaLy56Kh+Atdfpt+uAtG7GXecGfBkAh4LfwpTaLQ
	U4etLGk3zvk/ADcaXyhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQCR-0004Na-A8; Thu, 26 Sep 2019 09:36:35 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQCF-0004N8-Fe
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 09:36:24 +0000
Received: by mail-io1-xd44.google.com with SMTP id b19so4785442iob.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 02:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7F71cQTguvnAMT3YEhEYctfxeDKA+81HNS9CVx89WAA=;
 b=VbxNlhzpW3Ovv9daWJpP+czn6rZ1sTxWkRfcNSXXMhGivSW5ZIUymbN1ZSC7aLlf9K
 g1GtZjZRV6fpz+WnT/Bc9IJooMvjG2PEb4CHqIXAv9qLA4QJdeXrfYbgaISP3g07rdYg
 BbUZSEjj7e4Si4S2fkmuKKhjW6SkqhUWdFgaeDyumAesaga01oDhU7kE1WhX3tEvbcCG
 iaqo5W4+M+gUU11V1PL3IC3H05J031p3sfgZRo1MtahFlBObZd1t+JPMVZyL18Ug/dA7
 4UxFcs7XqTXRPqIs246N//cGEVkjK253vzqVQog5hnJivvb98RUKdlcTlZKymswC8R4p
 QAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7F71cQTguvnAMT3YEhEYctfxeDKA+81HNS9CVx89WAA=;
 b=fznDjlCP1k0LFNxoPO2tPXRaRr0xHgJVzxwNaVhaMaO4tFKkAVD+yrYGW0fjmBrqXa
 mWv2vtryzm3nYoOdZ3g7Wfjx/6Z8vi4Rqetgks6iuxDeMO66RobRt6wv+h4SDcc/nMvu
 HpGCVnIjod6gLhjK6AtV9qejezHOu+tdZfZTqL9DYEVRTgOrLhrIKlXQTaQ0lYCbJPVh
 gF7kuAymgOQdVzczF9MJ7UIEbhxHejPkhWpmZs9FpTzSDgjIv4n5YHGO0YUUtva7LcRW
 /JZG0AIjbOAaNGJUZ9bA1q9R+oCW2Z3XZDOAKNusWmpeDB1Ef2QtaSB758zft2UObDSS
 hF3w==
X-Gm-Message-State: APjAAAXcu59Y8ksBcirzVuC56thq9xiIVAtFH5KPltH7bhBIkP1XQubR
 PN5vh9N3kWq44iX/9xvvDeFgaross1MAb74xLmk=
X-Google-Smtp-Source: APXvYqxl+aAoMJ8+uHProEqj+9YZpaTHyk6KM/8rTskNq3TKpdg9ddjT2BVTV+aE58mt+0OwH1Obndo8+bh5Iq1tono=
X-Received: by 2002:a5d:8919:: with SMTP id b25mr2323882ion.123.1569490582169; 
 Thu, 26 Sep 2019 02:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
 <20190924104712.19812-3-kristian.evensen@gmail.com>
 <00b801d572cb$2755f550$7601dff0$@adrianschmutzler.de>
 <CAKfDRXhp++naehcrx2wXCLr7o20K3vUpLsJB2vk95f_CW8J-1g@mail.gmail.com>
 <003e01d572f4$1adc4e90$5094ebb0$@adrianschmutzler.de>
In-Reply-To: <003e01d572f4$1adc4e90$5094ebb0$@adrianschmutzler.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Thu, 26 Sep 2019 11:36:10 +0200
Message-ID: <CAKfDRXgDxOZK7_NrFkWS+aAYdY61ZjGmLb=iH0NipOXpZJY9dw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_023623_518270_91B4A9DD 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT
 WE1026-H
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
Cc: Alex Maclean <monkeh@monkeh.net>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Mathias Kresin <dev@kresin.me>, musashino.open@gmail.com,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On Tue, Sep 24, 2019 at 6:22 PM <mail@adrianschmutzler.de> wrote:
> I'm all about consistency. I just scanned the image definitions in ramips:
>
> ...
>
> The only device deviating from the pattern "zbtlink_zbt-something" is zbtlink_we1026-5g-16m.
>
> So, IMO the correct solution _in terms of consistency_ would be to rename zbtlink_we1026-5g-16m to zbtlink_zbt-we1026-5g-16m and then adjust your device support for the -H to that scheme.
>
> Do you agree? If yes, you could either implement all changes within or before your patch 1/2. Or I could send a patch for that and you rebase on it.
>
> What do you think?

I am fine with either approach. I will not have time to look at this
device again before the weekend, so I will take whatever is in the
tree then and rebase + apply fixes. If you patch has not been
accepted/merged, I will change the naming of the 1026-devices.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
