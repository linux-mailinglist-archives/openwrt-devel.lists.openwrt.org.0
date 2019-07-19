Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055D56E35A
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 11:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+Pm/GYOuVpEf1k7UtFoZatfmQ72F8fVL97P+CWxRco=; b=YE4q8Y4We5Zwzw
	BPmzuBG8CDcaeJSYj6lcXreGUKNHuKNMzXmlAhQu/9oL45ea5NkEU1PcngHMWv4vP/NAAswpWY1oL
	mDj8hfnDTFGViNbGoOFmcR3addqAYnmtMAG35saYuRlV6+kDGv668A8EnbaXK+42g03ggYq+mzCuZ
	keSA4qEvb/TqS/o4sh6wbJp5i/uz5Gw8g7XUAK1rYYRgAOQG/dbhkWctNK+R+3AfbCMvKRjG3IZJp
	62rn1Fxrwda0kVp864a1kv6NIPgXbmCoTOI1iNJuGrLGqJbiywm43aZMK/hq7jq8XkajHTUUInU+V
	KKAGi5QQLPtaOfYTvA6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoP6Z-0005HS-9i; Fri, 19 Jul 2019 09:23:07 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoP6G-0005H8-80
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jul 2019 09:22:49 +0000
Received: by mail-io1-xd42.google.com with SMTP id z3so57068502iog.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 19 Jul 2019 02:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DtB6ppXnZkwfMCTqjAvnu6fMBeRrcPr+1Aw1/SAL5Qc=;
 b=ovM0w+3RCaFBB1gexRn5PCK6SY5rDXR0tcrrH9xz2Xqiqukc80vA4VsbUQcM9pF/JJ
 V1G3LFLV8PZB6S2gkNnA+teGXtI+960cIDNOFNEh10YjS/4NixVZYDFoRFeF4o2c2RHi
 D6dRpjj6AIqQoyC2Vw7JGpxtwrU0ZCjwHvjk7eH76veb9QGtY9DG9f2ZtLxX/3vEjZnA
 FI///RqZoomyqRfmQ7vKmBlKndz1Pu3C1R3KJCBIrkJWAOzV7LcKdOtbmNqOoP1ubZD0
 ok94MrDUrfU/90EEDoLazP4F7Hi5q4Aph/PBKdXwUevnEXz278LBSKfRyIrNt27LTLMm
 Ekxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DtB6ppXnZkwfMCTqjAvnu6fMBeRrcPr+1Aw1/SAL5Qc=;
 b=KvW4lMyNjo84diBR/bEmcuw1rLrW+Qey2ZW/IFoyYHrYPlIp0rIaWp0e/8LskBFaDJ
 gQbcS2/R9m8e9HiRlaj7adw1UeioklqCF0OGIlnlO/+xUNtyrAMG0OZe1Ao93vfMgoE5
 +TBBQMjhET2wPwetV7SxcZvvirCvNj3rR2bbqFsWuJns7vwtFQgBbitYFKKLzov6zuOV
 nOy+7JHyW8gQ8AUos+ZRHpjLywlHKnM9nhAGl2qkLoVXJ3fpfuhSWTSqKG8uwOq8r5Yt
 MjWF4yny1RhfaesnJRwTZ1Ue3YR7yMit5miNA0ZEXSA9paMEih/fPiI4MA0CE9kaHYpi
 q3fA==
X-Gm-Message-State: APjAAAWqo+S0PSA3hz4wFTcw5jDDyBNQT1odPYypk3wJD86+WaM+IsKH
 tggtNJa1ZqdZyygiSbr6yxo1qGxNH+gHKkE3q5g=
X-Google-Smtp-Source: APXvYqx5DPC7NrJSDfnf4rL7I0ir53sJTY8a6kP+qooc/ubWPYpK2IJwhMrYIB/3U59lXeURJOG9rc2HmqPqYSRmTA8=
X-Received: by 2002:a5d:8c87:: with SMTP id g7mr45193886ion.85.1563528167318; 
 Fri, 19 Jul 2019 02:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190714135037.18471-1-linus.walleij@linaro.org>
 <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
 <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
 <CACRpkdZTtpP5bxnpGOQPvLUwVYT69bp_-_E9dZLCoV3wKsu6ow@mail.gmail.com>
 <CAJN1KkyEE8NTBWY_+SVQg9sH60ZNxNKFDsZaQ7Mt88PQ+1H3Ow@mail.gmail.com>
 <CACRpkdbYzSPA9BcxThjL8NrHRoo07tdvVmaqLn4BQPw1Jfr=Yg@mail.gmail.com>
In-Reply-To: <CACRpkdbYzSPA9BcxThjL8NrHRoo07tdvVmaqLn4BQPw1Jfr=Yg@mail.gmail.com>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Fri, 19 Jul 2019 11:22:32 +0200
Message-ID: <CAJN1KkxehcQcY7u6DqLwjRaNm-GzMO_om-0v_4+GY6w+3ZGTbw@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_022248_312229_6634248A 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (paweldembicki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>, Vladimir Oltean <olteanv@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> On Fri, Jul 19, 2019 at 09:51 Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > I think, that the best approach is vlan filtering. I started some work:
> > https://github.com/CHKDSK88/linux/commit/38b62482d9f828b5720db11145fa474e368b248c
>
> Hey! I wanted to do that but never had time,
>  so very happy that you're fixing it up! :)
>

It would be great if You found some time to test it. :)

> > At this moment it works (I used ip-full and ip-bridge packets). But I
> > have no idea how to integrate dsa vlan filtering with OpenWRT
> > configuration.
> > This is first dsa switch with DSA_TAG_PROTO_NONE in OpenWRT.
>
> I think in the upstream kernel look at
> commit f9bbe4477c30ece44296437ee26142b42ef8070b
> "net: dsa: Optional VLAN-based port separation for switches without tagging"
> by Vladimir Oltean.
>
> I intuitively think this is what we want to do in the end is use
> DSA_TAG_PROTO_8021Q but admittedly I don't think I
> understand VLANs well enough for enabling this.
>

This is the question for OpenWRT core developers. What is the best
approach for DSA_TAG_PROTO_NONE switches?

DSA_TAG_PROTO_8021Q or just vlan filtering and configuration without
tagging support? Both solutions can give You port separation.

Personally I prefer simple vlan separation. This method was used in
OpenWRT for many non-dsa switches. But it need to create API for dsa
devices.

> For OpenWrt using kernel v4.19 I have no idea what the best would
> be. I don't think Vladimir's work can be easily backported.
> I suppose some special hack to just bring up the DSA with
> a custom script is the best compromise for the time being.
>

I agree with You. At this moment only hack could work.


> FYI this board supported by OpenWrt also has this switch:
> https://openwrt.org/toh/evaluation.boards/pb44
> with a custom driver:
> https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/drivers/spi/spi-vsc7385.c
> It's a MIPS device though, and I don't know if anyone is
> actively maintaining it and could test to migrate it to this
> new driver and help out?

Pb44 isn't ported to ath79 yet. I think, it is abandoned at this moment.

Best Regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
