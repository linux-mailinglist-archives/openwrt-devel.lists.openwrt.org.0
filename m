Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF761E8516
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 19:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd9goXSu9j4WAkD11m9Sy/qShRUvorJ+IICl9bSKnDY=; b=Hj7SSmGJCgwG+o
	P0yiF0dEE3XhMBBlyIstcKH2zlXPr5cr/2vS90jtocd9MKIcVVr6VWv9BFY5i71GuMKNv9fGRmpuH
	ThFb12J97kz/HCui9olcpr0Ewiplvr+fbWun0PIpDUWaeGTXk8eriMa9+UIgov2MHw+H+IjkuQXcC
	i9V+yijRywY8izDyGPZbgUzSlKlsSM6sTM/x+z99hhi9OS/lwuC0STXMy3g8sxMbeciDMxISz0k7z
	jv7xf7bqHhjNCsWf9HuswWSv+TDKlX7pXDAY9UPOLoRfSO3rgT8wslEC0tYDJqcvAaHmjKHQTUDJt
	R2dqK6+B3H1Lbm1T8pQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiwL-0005jw-7y; Fri, 29 May 2020 17:37:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiwF-0005jC-OS
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 17:37:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id u13so4384018wml.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 29 May 2020 10:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GGZXNSVaofWwdORkGPa0Hl+kyqlp6V0MpK/00X4qlT0=;
 b=Bc4U6E6LUxWiVlsyqO6/MRTW3UhLOuH0SlEx+fpJoysRzC7P0v7igsiy8tXxWZmvtI
 V8QjLTjHqA2wzH0aqJbGyE3n3Zv4P6g2RSGEnJpf5FdFrBVBHf96pt3BMn8ZoWRcknLB
 z2mIWPi3lBVhQO4ueOEVzlu00PndxWGSpaK7Hiyij1ICG1BCloj4X5xDrnxp8SVUezHG
 y1Hz+WMehPM/XpKs6CQD77oeNcWIhHolWJCHK5bH7MfcdIq5XaLvduYD9g/racDUpB1k
 WBXnH80m0n3vrzWjusNyqf6zbIDz29csWPlc9z90k0abXmU8YNNaBzVtBV60NKjvSOXo
 v2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GGZXNSVaofWwdORkGPa0Hl+kyqlp6V0MpK/00X4qlT0=;
 b=cpOo8DNwRr2J2L1Ab1ZVShtO8jFZkzHDaojolP1LyAOgo1aKdC672tgHIZfRiHDHxl
 2dK60wpt6oBRTu1M5zGHGT3nfM/wanrzoYUF0ejEjNCPxEYxXzXlmPO/gthPPAaq80Eg
 ZZbeDPVxMm82XpgV++LK4QSCmdgMxop5pdUqC6gdNZgiuJUbcmORpy6jytxa/xJ/FoNe
 9d6KpGIW8cbd4n5FMHPhqQiEaqt445jt0xESISclnsekzIzbPGGneJTLJn45EW46rIwm
 j+vLTuksUrmPc5qJ/pY5ZdP3v+yWDtUSleU+BH+5Ergj9hCFe69tEiDANEo5mm6tpcD4
 iBog==
X-Gm-Message-State: AOAM532wZQrLDDvOfSeBVUbWJk8h4v8bFrfsQlalXrkNYdlpAm35vCBt
 ZhpxOO7iD5qZb81NHwe7lRA=
X-Google-Smtp-Source: ABdhPJwjyC8Zf4X4ULiTPITO9F/OHaLZWFEC1QPkYfvrhVNR2oTRZpiqRO2Lz7qYSh3WZxBcf1wmYA==
X-Received: by 2002:a1c:35c4:: with SMTP id c187mr9862853wma.45.1590773816005; 
 Fri, 29 May 2020 10:36:56 -0700 (PDT)
Received: from debian64.daheim (pd9e29533.dip0.t-ipconnect.de.
 [217.226.149.51])
 by smtp.gmail.com with ESMTPSA id f9sm10531123wre.65.2020.05.29.10.36.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 10:36:55 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.93)
 (envelope-from <chunkeey@gmail.com>)
 id 1jeiwA-000HfC-JY; Fri, 29 May 2020 19:36:54 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Date: Fri, 29 May 2020 19:36:53 +0200
Message-ID: <3547903.KlJ2vqsxt8@debian64>
In-Reply-To: <20200529172238.43399-2-freifunk@adrianschmutzler.de>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <20200529172238.43399-2-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_103659_794219_23CA400E 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chunkeey[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when
 used as device variable
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
Cc: Linus Walleij <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, 29 May 2020 19:22:36 CEST Adrian Schmutzler wrote:
> DEVICE_TYPE is a target/subtarget variable, and it does not have
> any effect when set in a device definition. It can only be set
> in a target's or subtarget's Makefile.
> 
> Consequently, having it set anyway is misleading, so this drops
> all cases.

Well, I can tell you where it matters for devices.

You'll have to look at this:

<https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=include/target.mk;h=9bd4c14936c1438df2be87e5697f5f5568699d2b;hb=HEAD#l54>

|# Add device specific packages (here below to allow device type set from subtarget)
|DEFAULT_PACKAGES += $(DEFAULT_PACKAGES.$(DEVICE_TYPE))

So, the MBL gets "DEFAULT_PACKAGES.nas" (block-mount fdisk lsblk mdadm) over
"DEFAULT_PACKAGES.router" (dnsmasq iptables ip6tables ppp ppp-mod-pppoe firewall odhcpd-ipv6only odhcp6c kmod-ipt-offload)
which makes much more sense for other devices as well.

If you want to revert these changes and make this transparent,
you'll probably want to amend each device package list
with the appropriate -package (i.e -ppp -firewall -dnsmasq ...)
all around.

Cheers,
Christian 




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
