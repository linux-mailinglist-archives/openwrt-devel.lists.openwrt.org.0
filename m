Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15955465B2
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 19:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjBO3oTHZcZ8rFTCmRvZMsfsGzOR97oAZ0Q8wLk3c/I=; b=IkGRxltoleCKcc
	SpTaJ6m0A1wNH4e8T43m+Ds6GpW3peDPyFTgGprgImFYunORDmYdH/TT3vkQ+C8/wX8YPtrAXb4Jc
	e4xLwFdzIIlDsahqm7bZgc4peRJBXIcEMPNTs03sPsZbEPv3l/MJiXUKlcgtr5CyBKBJM9Ifw/iET
	yTPie/t48ZN+TChttaGeyhwQziwWR6Jfjha2j8N9gGBUm3rHgcM5B/oxNOzFgX+1OF4G/M/17qoC7
	OZB+QlmF+hMt+t+Wreatkt3XVetAOBJMwF+um52PFl6V22CeGHAFSb4FhdAj1aQfjcfAQ8myeQe4D
	HqOD/xhWb4WFef5EuTOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpvs-0004AH-Pq; Fri, 14 Jun 2019 17:24:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpvl-00049k-Op
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 17:24:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so563788wme.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 10:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ngFLtSzr2MN0oISQe8Rjljge9PfXuFdHGDzwMCg/tI=;
 b=JreBTfQHOUUqlbVcnwcHkBvit9yqCFOwLsn7g3Picy1EhuSglfv1Ib3i5fx/geQjHt
 0wqlhp1lFQfhYz6+tQKSaKNPLUlM5n61aktSfHWYD/FtArPiPZhliuyA+o8gciLf98eo
 FQTyHhcyYrZJZ4vIx7SRtHLgugFJIrRRMTc29S1FWsbTpPy0UpV8Qe7ScbHWoFKnqxkd
 5NCCUNE7Q1n6OXFma9ozyBUWwmJLkilItnUkVRG4BivTA31f23bp7BG1oilONydAjVKd
 I8KuOEeio2XrTJYxAC3ezr9yFEzJolZECAMlCbQr+77g1Fe8ug0g3MiIVZqzkeYsvcw7
 89Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ngFLtSzr2MN0oISQe8Rjljge9PfXuFdHGDzwMCg/tI=;
 b=pQNLz4rCJ2WUqfB1wN9JzImRPHWhvC6rS0A+ioAbHDYTHvvVPH8GnfhVPkajv/23W3
 MIpKpI5jLgTbdvXlbzsv3Rof8GkRt/b7q6inaMg6ztpMmqSU5l3mIBEADfxSrrimVgmB
 KriC0d9PBRrc5e9XWS+pahbS8+YRx8Km7VYdlL/y881rTsb86iPl6h/JEnYUNkFCp/Mg
 g6qJchRDl0nEkmwLNNVvNDbgAMRJuU4vZRoOFlFN3KAYegxrRT8eUM2NgTgA4FV35ldT
 VjTaYmHgbOJxuDxqj1wTIMt+gpWb+sAyRH+Xh2wQBNfuSgAAJmgctP9QNoxY8zR0FdN0
 +Jcw==
X-Gm-Message-State: APjAAAUADJZtfNCz9cnzUmm9oWYGFwnxDchT1AV2krL0d912Jqx6wLCo
 9SHx/2d61TVZHuWJVw00GtU=
X-Google-Smtp-Source: APXvYqwFx/CXqEjZ0rJ0b909QFErzj8tmrCIrX9+AbY26vPJVWTAI4frfQTi9oda3lENe/63k5w3TA==
X-Received: by 2002:a1c:f21a:: with SMTP id s26mr8544265wmc.163.1560533039683; 
 Fri, 14 Jun 2019 10:23:59 -0700 (PDT)
Received: from debian64.daheim (pD9E29824.dip0.t-ipconnect.de.
 [217.226.152.36])
 by smtp.gmail.com with ESMTPSA id y184sm2808652wmg.14.2019.06.14.10.23.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 10:23:58 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hbpvi-0004aj-22; Fri, 14 Jun 2019 19:23:58 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Jun 2019 19:23:56 +0200
Message-ID: <2404813.1C8haVOXpY@debian64>
In-Reply-To: <CACRpkdag__7EeFKq=FJOFfJ+HQFi2qvW1UijEVkCyBiGj_-AAQ@mail.gmail.com>
References: <20190524212719.30694-1-linus.walleij@linaro.org>
 <2143459.csVk10Y2R9@debian64>
 <CACRpkdag__7EeFKq=FJOFfJ+HQFi2qvW1UijEVkCyBiGj_-AAQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_102401_817732_E44D00E6 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] gemini: Make a per-board case for
 ethernet MAC
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Linus,

On Tuesday, June 11, 2019 4:40:12 PM CEST Linus Walleij wrote:
> Hi Christian,
> 
> I worked in all the changes you requested until I got to this:
> 
> On Thu, May 30, 2019 at 12:46 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> 
> > > +                             ifconfig eth0 hw ether $MAC1 2>/dev/null
> >
> > I guess while we are at it, why not change it to
> > "ip link set dev eth0 address $MAC1"
> 
> Testing this:
> 
> ip link set eth0 address 00:50:c2:11:11:11
> ip: socket(AF_PACKET,2,0): Address family not supported by protocol
> 
> Any hints? According to the help it should work ...
Yeah, now that I'm home (I'm away pretty much "away" during the workdays
of the week) I did take a quick look.

target/linux/gemini/config-4.14 and target/linux/gemini/config-4.19
both have
# CONFIG_PACKET is not set

I think these should be removed (so CONFIG_PACKET is enabled because
target/linux/generic/config-4.1X sets it to =y)? Because otherwise
other helpful tools like tcpdump won't work either.

I put together a patchset in my staging tree starting from 

https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=620462e09afc40602110b82caeb2858903709567
https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=bbde89504fb6124da5a3f0014025753db4d6ec67
https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=6096e5208373822d123b8fe4f848b8612f3d04c8
https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=1d8ddcfc7a00701ab73d7dd06cf5fa420c1a5882
https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=b106a522001e970378c38279fe598acbc867d0f4

Let me know if this works now with the ip tool.

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
