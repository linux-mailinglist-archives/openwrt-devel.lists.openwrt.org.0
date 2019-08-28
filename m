Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D077A008D
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 13:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LNXQ0yhlcPd9ugJlNkgK4H6WQfeds9rx09QsDxyIa/o=; b=qD5J+dhAPsic3wKM0rajY95Lu
	0upZeFk5YGUtLczkOIlk0IHcp/YlQuymoJIGtfW6pNdKsnBMCBgCFwgS9dYWFOU1jzGNbz0GpLn0z
	tasYMuUWdbFIn81L7LUQWQsUa6wkipUA334ueRF5ulia+/kPAxbcEgrRtuc7SfhGDAfoGUr6z0ZDr
	r6f+96PFacepx8VV1kkGoKxkWKZrvH8mN4m54oM1L31mHJ9iiti1U/T8HMIHKNkWZS5c1qpRxYr+b
	dU5f+6B/0OCUbyIQAgoIjtDzy09UH2nmKDYyrZd21wWDGBLmGbdfCAGhbIG83e51JdiBanmz7NMrb
	WmmDNpqCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vu6-0005hb-Af; Wed, 28 Aug 2019 11:14:18 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vti-0005hB-Su
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 11:13:56 +0000
Received: by mail-ed1-x534.google.com with SMTP id g24so2576220edu.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 04:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=w9geCyENgP/I3LswDjN+x8zXgCDO8gUVZ3SV9mxk1XY=;
 b=R2ijspdEuRNRnkBSpSNfhV4MkRAAp4iYJiw/o+gSTCosqsss/fSBigDdobz/WGz/Wz
 dY3tKfSLq3Cwj8O/c0uTzI6sU3BdmTbyA3COLlPddiS3d8Q4q6DWvwlSdc9FTwrsctTR
 OCJK4nGUW1+YK40F2vjwDSHJBirQTPmoJLgh/kBoe07Bwbd7pzD1q0iw1McRSueQT9Of
 jyfJ8rdA+xCMxeqyFqfyUmcHHhyqIkrfjB5egiruw8DYV5mepXm0zDpHcInnmnA116dG
 0c9ExnJ4+fQuGnRPI39jC4iBABKY0rfs4djBeWkMhiG2ruq3j71tB2OwlWVx2Kj1ZLGY
 Cw0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=w9geCyENgP/I3LswDjN+x8zXgCDO8gUVZ3SV9mxk1XY=;
 b=CahivbK/1gkI4e/wj7C0458FCNjC/1wWuMDlsDMTJZMm6Jzr4zrKjhO6Mhig2lbvba
 jD+P3x3v+YUXbxftZupC2VnzOMX2Wf13Mlh3/0T8vSsSBJpcu5MuqHA5rpw9/PQ0oCUf
 +BEQ7Wm+Zhufle2GS4426ebSV9LWuApgJ598Wnwi94u8zKWZno4rI9KDpC6VJ6VY1eEZ
 /JfuESAUNK6gJmLNx1O5vPeW+AIwQVBTClEmnaNnHNcCoKcPndMnu8fHC4cptmVz0jJT
 zJOowTRSIN6GY0OD8DgdDA6EiNxymGUaVX6JpZ6sUQyy6cpR1qJoE5paHBGudVd3UkvG
 0+6g==
X-Gm-Message-State: APjAAAUQirr9/J7hoQlopEdgz6HRql4HsmTx/3cB7xZS5ld7qJseF2HD
 lVg/FxRnzzseTx7kA3/3PkIi8w==
X-Google-Smtp-Source: APXvYqxvstN3FGaiuvs84OwwMwoX8N9xaSxF9vZ3ZUPD8hA2kHZtDO+ugy17v5AVYmkBnKv98cYpPw==
X-Received: by 2002:aa7:d799:: with SMTP id s25mr3418550edq.172.1566990832789; 
 Wed, 28 Aug 2019 04:13:52 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id w3sm391192edu.4.2019.08.28.04.13.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 04:13:51 -0700 (PDT)
To: Joe Ayers <joe@ayerscasa.com>, openwrt-devel@lists.openwrt.org
References: <CAJ0CqmXJj9tnN65b9MjeEtTBcYkPnQFcWXSHaPPLOP4dE=FsQg@mail.gmail.com>
 <CAALvt2Pb+is9LZzSqv5BmbH6G6A+_LxvpP16==2OsNwk5LT50w@mail.gmail.com>
 <CAJ0CqmXvn23AZy+ONQsvV-bDuLE1pr_=jcOsgcOc++hZ8jMuuw@mail.gmail.com>
 <CAALvt2MVpMh_899tPSTw96=MaZtaehXd3Of3HOEfSWuoQgDkAA@mail.gmail.com>
 <CAJ0CqmWwu-W=AaSrjhe+MNsMBpPj-pWxy0ua-jm=m85XtiEn9g@mail.gmail.com>
 <CAALvt2Pje6Vk3zPRi-o0JCHXf51Eo2YBPmjhMo7HdwQhDgeFUQ@mail.gmail.com>
 <CAJ0CqmUaeWXbFz0_0Jg0m+NGOPGm66WEGA_mHsSRb1dV3+PL_A@mail.gmail.com>
 <CAALvt2MHTuEt8Y_Uwxh6TS1M0y4AD2-iSSccNS1WTfdr1zjQ0g@mail.gmail.com>
 <20190404072034.GA4265@localhost.localdomain>
 <CAALvt2PtubH=5i_Q3afHaATm7HNK16=jH06yivf3tDdmftQ=YQ@mail.gmail.com>
 <20190604101827.GA6510@localhost.localdomain>
 <CAALvt2O8GYDkx9bTEq6D705B6gSD9Q2hC6BoS7BPqF10WacRPw@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <ddc36b74-f982-33ba-8aff-fbd67a80c738@ncentric.com>
Date: Wed, 28 Aug 2019 13:13:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAALvt2O8GYDkx9bTEq6D705B6gSD9Q2hC6BoS7BPqF10WacRPw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_041354_987657_A8394CA6 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath9k: fix dynack in IBSS mode
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
Cc: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


> initialized the ackto to max:
>
> A) avoidance of late-ack state
> B) not require wpa_supplicant  -- not in use by our community today
> C) Suspect some conditions, e.g. low SNR Neighbors, do not trigger
> "late ack" (consistent, with observation of low SNR Neighbors sticking
> at max ack_to with my changes )
>
> flip the algo off/on when new neighbor joins:
>
> Intended technique to reset ack_to to max.  If ack_to is set to 20km
> and then a new adhoc neighbor joins at 30km, this would be a late ack
> state, and unable to detect.    My early testing results showed the
> algo off/on would restart the ack_to to max and start the process over
> with the new neighbor.   I trust I got it right?
>
> There are 10s to 100s of users testing this bleeding edge change from
> nightly builds, and so far, I've not found a failure case.
> Although, the findings are showing the cases where static setting has
> better throughput.
>
> Joe AE6XE
>
>>>
Hi Joe,

Purely fyi

I just pushed dynack improvements to all openwrt branches.

I also noticed the issues you addressed above, and these patches fix 
them for me.

Regards,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
