Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CAFB51A0
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 17:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3V/a8NMI978NT7chwPmpaJ+in6lPV8plp3yPyKWB4iw=; b=us7Hua5uUA9FOwL4qsxrRQlIC
	b6QqLPUNbFzCthcpLFXgcttom7Al+Q35vv253l4ECQv2Sb4dTtkjBggdM2fFQZGyxvjtNR2vtrdyt
	KpW0ZUnTXl7oviapWlAOTV/1cbEVBeeABrehMk0NedgHmplLmY5h/a/mzR5zQ2ENd46bS7yPoAjTx
	5UOtrWVDuNzj1jO3QWoJxOLfMcPbAl24+3gZvrCm8WnGW1XRePxCFzbGeNcz4HmsWgO6bb+d7GBtr
	8Ozqro4CcK5Y5C0mywhnLu4KKrnBas7xvA14YrNg6+r0v/z6ga7scXGweVxeW8L40fAw1UtM6EqqN
	6lxAR26WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFVc-0001Vl-95; Tue, 17 Sep 2019 15:35:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFVS-0000y7-Tb
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 15:35:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id a11so3709963wrx.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 08:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=0Z6g8k5xqWGoLitgy0Yje7Puj25p2/+ruUWh4bAjh9o=;
 b=GLwzB/Az1+BSQISUjWPH3tSMA8A4PBxXCnsOevQfDp5vkk0bRA7OOkIpux9dCr4gLw
 WOgCSv4ymvSAsFUtzdkB1rovIAC+jeTPCOnkYpgWVvDkaEwIIAwfL3HvJJL28AZX5Tjw
 4Q02msNjSndwOyHg7Y9KCL5WE0FEcGQhcFdGyIuIYIbAVerM+BmeZEw9M22/VM7rKFUg
 kMtBS+tOGcaX3sULYdttOYUsUFP4kklwbSzSwTyn3UaKJX0s6o75zWYikLXrlTI6HZ1R
 Dr0Ic066LIsNzhyE6EkpvHyl/U14SHm/Zx7DBmDplNAEtR674ttId7tPToRjrrOokgyX
 B8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=0Z6g8k5xqWGoLitgy0Yje7Puj25p2/+ruUWh4bAjh9o=;
 b=oMHVSfWkRLVd5WNtVzzLKehynGDs1/zjuRAaRPWlJiAHab42E1ntlS3/awAEGu3mq+
 rfJzGyheOrT1XcqrQW8HiHqJe2gh0vR+PeXa3HdEVmYdjB5xaJLvg81ujv5DTXZJCUE1
 De1OonbXpeY94KNU5lJOoHzoWmwcCku/c2vQ0ZD2rmZPCKDW1X/+UTby//WwskKUoGrz
 davxQFNWyBhncUQBNXauDuZJWFVy/EGprG2mCWKFdzum3Yjc1KBzGgvZP8TrXVB9QKMx
 j990Uw0iUNNDJrVCC8zb2bOQr3bqwvOQqBFlJNj2R4Dw77+ApMkN7H7BDhilk3ebkc7Q
 v13w==
X-Gm-Message-State: APjAAAXoy0u47ksow7X/m1mmVnaYTvd6XwDplUfNQClrZzNPJVKWhmzy
 ofuXHOYMpbU6X2Rr8yGmlCQ=
X-Google-Smtp-Source: APXvYqznfN5FjZVzi16Znr5YKOJO/Vp19TbCOshf5Ml5a2joFqGCxZ8+9iIDVIesj2sHC0o16gqnSg==
X-Received: by 2002:adf:e392:: with SMTP id e18mr304172wrm.87.1568734505113;
 Tue, 17 Sep 2019 08:35:05 -0700 (PDT)
Received: from mStation (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id b62sm4713907wmc.13.2019.09.17.08.35.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 08:35:04 -0700 (PDT)
Date: Tue, 17 Sep 2019 17:35:01 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Filip Moc <lede@moc6.cz>
In-Reply-To: <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.353.1909171734110.1098889@mStation.localdomain>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_083506_988463_CCE076E8 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Piotr Dymacz <pepe2k@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello all,
thand thank you very very much for your kind help, and patience.
Adrian, you're a tireless reviewer, and to you my gratitude.
To you filip as well - very much thank you for your insight, I'll do the testing of the different ports ASAP!! :)
Dear Piotr,
I added you in CC since you developed the U-Boot replacement for this device, so I would like you to test the final patch to be sure we don't break things!

I am composing this message from scratch, since excessive quoting doesn't help readability for me. Sorry for the confusion.


Adrian wrote:
> Here, you assign eth1 to the "wan" LED, but in 02_network you assign eth1 to "lan".
...

Maybe I am introducing an isse I am overlooking here, but I would like to point out that in ar71xx the setup is as follows:

root@OpenWrt:~# brctl show
bridge name     bridge id               STP enabled     interfaces
br-lan          7fff.18d6c796aaed       no              eth1
                                                         eth0.1

And personally I would not like to change how things work.

Adrian:
> phy0tpt trigger can be moved to DTS, just have a look at other devices recently added to ath79
I will, thank you! But if this is going to disallow users from easily changing how the LED is used, I would rather avoid that.
Let me try this out!

Adrian said:
> I would remove the ".0" here, as with TP-Link the sub-revisions typically refer only to their firmware. So just "v1" should be better.
Thanks!

Adrian:
> What's that?
I copied those from ar71xx C implementation, since I tought there was a reason why Filip put them here.
And, in general, I tought they may aid debugging / help newcomers to explore the device further.

Adrian:
> IMO those labels only make sense if you use them, as for led_power. I would remove all of the other ones, i.e. only "wan {" here instead of "led_wan: wan {" ...
Thanks!

Adrian:
> Sure about the 0?
Ok, I'll transition to gpio-hogg. My intention is to leave this available in user-space.
I used the .0 here due to the following line in the C implementation file:
gpio_request_one(TL_MR6400_GPIO_LTE_POWER,
 	GPIOF_OUT_INIT_LOW | GPIOF_EXPORT_DIR_FIXED | GPIOF_ACTIVE_LOW,
 	"LTE power");

and in particular the GPIOF_OUT_INIT_LOW; with this setup the device powers on the LTE modem at startup.
Any particular advice when using gpio-hogg?

Adrian:
> There is a tab between uboot and partition. Replace by space ...
Thanks!

> You can remove kmod-usb-core, kmod-usb-net and kmod-usb-serial, as those are dependencies of the other packages.
Thank you very much.

Filip:
> Anyway good job Enrico.
Thanks man!!!!! And thank you again for your work in supporting this nice device!

Filip:
> When you face MR6400's ethernet ports to you the port order is from left to right:

Thank you very very much! I'll test ASAP.

Thank you also for the testing you plan to do.
I plan to sort out ethernet issues, then address all the other problems (e.g.: switch to gpio-hog and so on).
When I'll have sighted assistance I'll check LEDs and recovery as well. :)

Adrian:
> Maybe you need phy-swap? I try to have a look later during the week.
Precious hint! Thanks!!



Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
