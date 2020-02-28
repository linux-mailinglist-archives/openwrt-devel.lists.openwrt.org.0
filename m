Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057D2173E58
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 18:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Blhl0cLuE1Kp/hklhKx491d8yMd8j9x0eab+Hslu8Qw=; b=A1rFlOV4AM1Y43N4AZBbNP5C0
	rBgSk2I9Il6dLBFGJu4wtRSgTu8AjyUemY8ewcDJU9y3SQ4uA+tnYlySRkgCCSHTMp9VfqSzXlGU/
	Zi9MxTClBwtI4YShsX+kVY9PVho6Pu46V8ydPGYybm2ac5vOOxmcvXYtq7uS856JwdQbwZz4Iz0WU
	LpDNg7yb6wNBRceeNz1WZBGcoRKReWNcJkyCHeCcnXqTsOKHsACDStkbLM3VKEoI0r7MR2NAhYk6h
	k6dtc4svYmqGywnndEr+rXzyHiKhaxNtTSfu1pW87yVLIyL+XOiVyN0JSOUkNnFPF3WmXEgMhG6eF
	TQP4ekzfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jMm-0007A2-50; Fri, 28 Feb 2020 17:24:00 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jMe-00079a-B3
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 17:23:53 +0000
Received: by mail-wr1-x431.google.com with SMTP id l5so3860327wrx.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Feb 2020 09:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=m2SFTgjoSDXkfGmpYnHclw5ptOeasq0f1LxbdTpR7Us=;
 b=KpRgfdpLQbhgSMDDeCDTNRkTbmPBWl0XkCzp0ZyLWpIgrvREV0H0fUUOkTYYpslnh/
 8q6Ds4bdBFZMj3SIyBgWaIyS6lxqlPAhAIx/BoOXN4HsmxyqbbxxcORn/kytsUvYtMOl
 7ngoTGmj7iGexUquXD/ikE5ta6DGX2KIFHV68aBFsha6BXVB5hL4NBHkmdpGdac7JNAd
 D+oUtmUJ2cKBgpr4bEKSiIIjl4ek8q1ms1QGLZXrJGR3ri+GEwYbF7c5nqLh81dv0q3X
 /lRbK6TWtqqxZqXgd4ulcVh+hIgLJgHyimVsBdqaCYEnNMwoHJ59mc0jTQAgVrWa62F+
 hqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=m2SFTgjoSDXkfGmpYnHclw5ptOeasq0f1LxbdTpR7Us=;
 b=M/p7YqE9APU5Ad9JSdtEGRithPO9YmwvfSIVh5c975Gwkcu/1czQztdvBeItSRlqYM
 lHbrHT1LFidoW7GYUfFcgdShjpXcLk4sjkd3NZ9hURtYuOC+CZ2o8bZxHhx/tNtcc6Kh
 s8UGfjgfYoNj8R9NRCtnAn6B/c7aeBRR+EXnE8g6CDCg1SkSowDpprWhQDDdCq9zAodE
 +/JoDhuEugEWLfp36fq0devvI5b+FCAyjhGTntH+eD0b2vE61H6kfS440mzRbZTXnMdU
 uRJ9KFfz/ISQCM5kMCqSYN/xvPLO/e0+ys5tlcwVsoiMWCexCaE6Xj/Hrzh0pYUFojSj
 AnDg==
X-Gm-Message-State: APjAAAWHEDK0Lodo5iB9q6bI6FCWYsfhce3M8m3yUSLRKG5F8CFO5Bas
 zec4wXqrOhCzrJKHzmC+IxNzggHfHv8=
X-Google-Smtp-Source: APXvYqyss1tEFXAGxa+1fub1OSyYjfQJCh6jaXLaLPvPtBDHAsiGBPvNaHF5U+T4e0ZHv3JHfoRBww==
X-Received: by 2002:adf:fc85:: with SMTP id g5mr5726983wrr.52.1582910630649;
 Fri, 28 Feb 2020 09:23:50 -0800 (PST)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id v16sm3105561wml.11.2020.02.28.09.23.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 09:23:50 -0800 (PST)
To: Ansuel Smith <ansuelsmth@gmail.com>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
 <CA+_ehUwLrf539FPz8iWbb-k6An1b0YNd6HW1zpR86waiX=00NA@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <8b90ac50-b090-6d89-7e8e-86c35fb7bd56@ncentric.com>
Date: Fri, 28 Feb 2020 18:23:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CA+_ehUwLrf539FPz8iWbb-k6An1b0YNd6HW1zpR86waiX=00NA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_092352_381151_45557EAF 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 28.02.20 18:22, Ansuel Smith wrote:
>
>     Hi All,
>
>     After a lot of hard work from many people involved, I'm very
>     pleased to
>     announce
>     initial support for kernel 5.4 has been pushed to master with
>     already a
>     nice amount
>     of available targets.
>
>     If you are interested, feel free to test, send fixes or send
>     patches for
>     supporting 5.4 on other targets besides the ones mentioned below.
>
>     All supported targets have been provided with kernel 5.4 as the
>     "Testing
>     kernel".
>     This means you can enable 5.4 by selecting "Global --> use the
>     testing
>     kernel version" within menuconfig.
>
>
>     *Big fat warning*
>
>     While a ton of effort has been conducted, trying to prevent mayhem
>     and
>     fixing as many bugs as possible,
>     support for 5.4 is still considered to be experimental at this point
>     until extended testing has been conducted.
>
>     If you would like to try it, please make sure you are able to debrick
>     your device if required.
>     If you still try it without any way of debricking it, you are
>     doing so
>     *at your own risk*
>
>
>     Following targets are currently available and have been runtime
>     tested:
>
>     - apm821xx
>     - ath79
>     - bcm53xx
>     - imx6
>     - ipq40xx
>     - mediatek
>     - mpc85xx
>     - x86_64
>
>     Completely untested but provided as a baseline:
>
>     - ipq807x
>
>
>     Following targets are near completion and should be added
>     hopefully next
>     week:
>
>     - cns3xxx
>     - octeontx
>
>
>     Kind Regards,
>
>     Koen
>
>
>     _______________________________________________
>     openwrt-devel mailing list
>     openwrt-devel@lists.openwrt.org
>     <mailto:openwrt-devel@lists.openwrt.org>
>     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>
> Ipq806x is pretty much done and I think can be pushed as a testing 
> kernel, should I create a PR on GitHub?


Yes please.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
