Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10B3B53AD
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 19:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zyKoUPSSKZlZfL+3g2xMIIbo9izeErnpCBG5VhStQAw=; b=oaC05ZXe8hSdfd6Ok7f69W7W6
	5zgA6k7LQoBeA6mh1rCJ3l0Gx4MUGYEKd+rhcvyrEmpfEEGpddtB5KuSQU7EWJ7Ubt2LIPj44sXUa
	CcHEPhoj/WYrar1WWoICMVVnMGhPQab1BbH+jhPhEsFYJlDm+vVw4EGj0LXW3aS+nB1QvP+mjZmW7
	rwiN9Q0kjhAvpMuoP02++wBuZw5te5rkBSqjnkrI2erWwRyV0NUmAKoyPY5jGvhk61oy31KFaApck
	aWm8papZfbi28a8XpE+IU7ogtxSrc+4QUseNvyb6/uuvw4yK1Waov2iPN8qzYRh76Zaquvi4tL7PG
	aeg/B8PGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGyw-0004Vf-Cs; Tue, 17 Sep 2019 17:09:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGyN-0004VC-Tl
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 17:09:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id x2so4417791wmj.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 10:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=g3P/ouXMmnyFISnzdocNr0gR3Ydi8lNCUo1MX/tUwf0=;
 b=Yk7qArQw2say6Y4h1RZepMbI2SxNZop9hZfESYTdujWP3PNU3AWlV+aRIvbOtjHPad
 AYongk2Qmw+F1ME7TRR9GyM5BpsLiSkOFDx8MnMNyBVQuegxeOKwvbfM/sF3cf1DBHZk
 cQkn62XyhNAz/6wfH0B0w9HwD0vG2zRlaZLker+mdZgjN7P7RJulm7bzue0pbr1t9n/t
 o/x7QPJaxh7V4qxuFB4ExOVVQ88zn7jzGuPM1MT/Y7/OUZFeNm/hb8LVsCeOa7Cmn3aQ
 M4hA1lpedWodYzWV09H1BRekG/BkVy0ZWFVBKHHPb2vHqnjflcvutSzKdJ2UMkuOwLyw
 Sycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=g3P/ouXMmnyFISnzdocNr0gR3Ydi8lNCUo1MX/tUwf0=;
 b=XSWp7a6hMs7d7N8j22hP3hHCp0wFj1XHvsq7iU4/RPhS7MOcv+MaLDzoCKNUxx0d4V
 3CofaTltYVio1J1hPr8HWFEY6ERKCqFjtl3AaKPRiJ/XU2q6+XgbjeeJb9NM3HankYhd
 MeTvK3P307Zb0m0dirFPXuSIT+0whfe+LsISy0bR2U3FVoaBIjs4CyqmE1mQjoOd6Kxs
 1hn0yPsmMAv+BHlFmejb0H4rEUr5NlzRsKWBWAUAHnH26fX43gBDo1UHoYEm/oqnoV5n
 lHc+Cmj3V4DFWsPBvG4/l6DzPuD6LnKAD37dCZ50l7hxtI+cCyLb87BH2pAgHVwSPa7j
 7x9w==
X-Gm-Message-State: APjAAAWCsjf/DYspEm639gGNal2N71aKeSPthQNkIb10VnvEP4QNyGPt
 3yJnL/LePSZrmwUiR1EVjq4=
X-Google-Smtp-Source: APXvYqzIcAqC2G4z2T59gO5t3fL9S+U7BbsrjsAcnEmxgbBuUCNbBYc7WM5Ylb8enuqdzv2OP9T7ig==
X-Received: by 2002:a05:600c:141:: with SMTP id
 w1mr4372080wmm.75.1568740141692; 
 Tue, 17 Sep 2019 10:09:01 -0700 (PDT)
Received: from mStation (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id e6sm3479316wrp.91.2019.09.17.10.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 10:09:01 -0700 (PDT)
Date: Tue, 17 Sep 2019 19:08:58 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Adrian Schmutzler <mail@adrianschmutzler.de>
In-Reply-To: <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_100904_228740_BD208A7B 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Filip Moc <lede@moc6.cz>, openwrt-devel@lists.openwrt.org,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I am investigating it.
Still, something is wrong if I don't see interface events when unplugging the cable, right?



On Tue, 17 Sep 2019, Adrian Schmutzler wrote:

> Date: Tue, 17 Sep 2019 19:02:12
> From: Adrian Schmutzler <mail@adrianschmutzler.de>
> To: Enrico Mioso <mrkiko.rs@gmail.com>, Filip Moc <lede@moc6.cz>
> Cc: openwrt-devel@lists.openwrt.org, Piotr Dymacz <pepe2k@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
> 
> Hi,
>
>> -----Original Message-----
>> From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
>> Sent: Dienstag, 17. September 2019 18:57
>> To: Filip Moc <lede@moc6.cz>
>> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-devel@lists.openwrt.org; Piotr Dymacz <pepe2k@gmail.com>
>> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
>>
>> BTW I can see the code for setting up network interfaces in mach-tl-mr6400.c is identical to the one in mach-fritz4020.c for which we
>> have ath79 support.
>> Hence, I copied the setup from there:
>>
>> &eth0 {
>>    status = "okay";
>>    phy-mode = "mii";
>>    phy-handle = <&swphy0>;
>>
>>    mtd-mac-address = <&uboot 0x1fc00>;
>>    mtd-mac-address-increment = <1>;
>>
>>    gmac-config {
>>      device = <&gmac>;
>>      switch-phy-addr-swap = <1>;
>>      switch-phy-swap = <1>;
>
> That's the phy-swap I was referring to in the other mail.
> Using that will change the ports in 02_network, so you will have to re-evaluate the connection status with swconfig.
>
> I do not remember what switch-phy-addr-swap does.
>
> Best
>
> Adrian
>
>>    };
>> };
>>
>> &eth1 {
>>    status = "okay";
>>    mtd-mac-address = <&uboot 0x1fc00>;
>>    mtd-mac-address-increment = <(-1)>;
>> };
>>
>> yeah, here I am using spaces but the original code has tabs. :)
>>
>> Am I overlooking something?
>>
>> Second question - I got the LTe module working with gpio-hog. How can now I turn off the LTE module, writing a value to the GPIO?
>> Thanks!!
>> Enrico
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
