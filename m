Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17951B395F
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 09:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vifslEDQOeVzdxv1MGgzgZrZym/3gJErPfuzPGk3EMs=; b=Sml2dC+pq8KqiFv6Jcw+wgINv
	pW2sQJKSgzxKbHm4ijbWYg1O2ZKBVfNCfttFPeG1q7M3ppC20aECAOEROfNpyGrI3nc/OHxikPgAP
	72EIkDMJmxBSIUbNDUxK22REvcPLYdiCb6OGQ1Awhvwo2VnV8dQ4JEfhDGADYFYu86oKoKuQCKvuU
	6P0gi8eu+LNmIBIXJf8tfDLIm8iOEai03mTK4Qr/tBynwPelvagktaEMoEKBNUBN3U2RB+OGNwMGO
	sqXCFYJo6OgJmS9jOo4rgGfpJgvKsZ8NYpbclCUMXU9SNsX07KYo7hzXcWrxaT6PBeqLf+K/4IVdU
	7kQsAZ4eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRA8D-0007kT-JQ; Wed, 22 Apr 2020 07:49:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRA87-0007jQ-K2
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 07:49:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id k1so1180311wrx.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Apr 2020 00:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=42OqPOdTQ5cA63XchMl/nHzTijDmMW0Z7gSAImHgxB0=;
 b=yfbEsQeCZBRmuBkX/Kk68AoW9vbs6kbv7zo7Ftp5yAdoxZJor4yU8YKPSoTsYTbEUf
 WBwS6SMTPSnFzt/EmXo2TdJvkgyax4vY9+YA0FQZeAJgvPePndv8ZrgvUlgtcmzJdqLl
 q8eijCx5QfRfdvkTQZs1gRX/xLD956UVmR3WMWXT0NBSIuHwAU2HJridQHFE0xY0fXiF
 lh/muPoVZj17rPdrxpviOg8Qr5mIvAb5hYSIjHYEoJZaNQJ6CrWkYVx6/2dVoXP7NlBc
 tNxhtG5YiQz5tqgppX+Ka+tD3iwghlEME4ONt9N5oEhb/m74MDWaroRt4/4e7lqRiMkY
 1YBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=42OqPOdTQ5cA63XchMl/nHzTijDmMW0Z7gSAImHgxB0=;
 b=jXquIrtVyDgCuWdAk0on5cSHr7Urexqo5LpvngNNb9CSDXU4AKpu0W2cM79QJbnUE6
 z6ToF1aZHq9xuSBEbziKd45A22lw3uU1t2Bhvy1GDXAsysNJk8CEEqwqHT/tM+vuJhXh
 ptg9JYPPdU+94R0a3I99mVSu5O+EWyJ9MuHPxI/mo3i5t8j02Kd1WojX0rCsQXlCuhO+
 avBAEaTwqpn//9KrQ+gOweAEtPJxh4yPPGYKHRYaKmZ1P78IhrgFrOmZNXE776IohBcZ
 BCmXzsY+/S7mUYfn8H63l+ld11PPFtytxl8wb07AvtgEqnB2PKLzIDwTklJSETh4caL1
 PodQ==
X-Gm-Message-State: AGi0PuaS122n9fjYPfoJWoCGzxnghjRtof6xNUgBMmMwN/Li/qURWyba
 +clp1wzayo+CidgfaEx2zmpw5BVGS6o=
X-Google-Smtp-Source: APiQypI/8YyUqGsylH9UJ5N4Z4GS0CnfncG6P1GXKkdPk2U8Xv/Ldiz6GL9uh4tDIZg8jSUuwbEl0A==
X-Received: by 2002:a5d:5646:: with SMTP id j6mr29943539wrw.207.1587541748759; 
 Wed, 22 Apr 2020 00:49:08 -0700 (PDT)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id q187sm6422517wma.41.2020.04.22.00.49.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 00:49:08 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <20200421212207.8482-1-hauke@hauke-m.de>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <55944072-3a51-1011-72ef-2357ea3921af@ncentric.com>
Date: Wed, 22 Apr 2020 09:49:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421212207.8482-1-hauke@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_004911_736072_24B18F74 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] mac80211: Update to version 5.7-rc2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 21.04.20 23:22, Hauke Mehrtens wrote:
> This updates mac80211 in OpenWrt to version 5.7-rc2.
> This update contains ath11k and many other ieee80211ax updates.
> ath11k only works on the ipq807x devices.
>
> I tried to start a discussion how we want to go forward with the
> wireless subsystem we ship in the next OpenWrt release:
> https://lists.infradead.org/pipermail/openwrt-devel/2020-March/022198.html
>
> I would prefer if we apply this to master and then continuously update
> to match more recent kernel versions till we are at an LTS kernel
> version. I assume that the kernel 5.9 or 5.10 will be the next LTS
> version. Using a normal kernel release as a base will make providing
> (security) updates much harder.
>
Hi Hauke,

It seems I missed that one.

+1 for option 4
I'm also in favor of avoiding non-LTS stuff as it puts pressure on 
timely updates.
It allows bleeding edge stuff while being still (more easily) 
maintainable when a release moves to maintenance.

Regards,

Koen



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
