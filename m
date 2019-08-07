Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE39885509
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 23:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFimJsIDvpLcWHXOhEKYDukZ+fa+ZzRLMjSFap8AjMs=; b=aMyyFIa1j/R/w0
	wSLfByrjYC1L7YxNWTZcamBF0OBSZS/HE8IDeLv0M5ONh4kPAY5mHVa0iuRx2oFs0UmIxOMt9/nJy
	Fr5EFSZ40Yxsr7WQpb0JmaUCn75rtlr+YD7mMS3JkAx/nTkXrRGycrA/9ENTm6wJJtcGRqXw9afEu
	8blSjaIfmpi3M6Oln1PyVQQz8hPxdvzQpoW7i3RgQqbmXCQcObbwzpIqrKgLNMdPA1K8uUy9gClcs
	sEzuT/GhNafBYum1UNfagoEeRXDzjSOAvv5FAZKwaPyBQ12oGvu3BHNv+2+WTK/HX9OVU2Ab7ODhl
	UTy9QLjxpjx8fHdeSzPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvTL1-0007U2-1T; Wed, 07 Aug 2019 21:19:15 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvTKs-0007Ti-O9
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 21:19:08 +0000
Received: by mail-ot1-x344.google.com with SMTP id z23so1853208ote.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 14:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=Nohi04j+X5yFYm82fSP35BbwRkjKhA+I8StOBPOFlpg=;
 b=JJu4g3YncTqWrP+4Kb7y674nASciyHMyPKOKPxlxABs5DiF9LFW/307Q/cbYuG64FZ
 +efThtfwwfrJh8jhyEHq0SsspBUBgIgbTFoG5lRmdPSOk3bc6heVJkq2OwhPf6IDaH2L
 6VEU5Ts1f+ALBYOglLTH1Doj4vn0BziKr7k4SSF8RhksM8F+RDMQRiZkMMw4cPgRmPnq
 HOkxhm7opc8LVGFbD7WhIhvydK7oHMfPhTYlwfloOKjDLafWLQ8fS+FhHmv00Abc8ype
 iiCuAm835Pdip2qI6+xXNk5dJy0mVyQNbPx3HgxRRQsz3QSeJv8hDZPmFHULp/73YkD0
 5CrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=Nohi04j+X5yFYm82fSP35BbwRkjKhA+I8StOBPOFlpg=;
 b=pB1LNnyZzzaMOXat5KPyas2AsRMRFVfGoE4kaPtu6DHPRYnq0ADWhessz9VU2N8eBv
 W5OnOGAT5f4hj06wgouGuDjP/Y0oZbkHX5+gOY2JUypS90wTU8b9nyWwf9713LXObELk
 1oOL2acU+CJUtQ759UwHuF+p/LLIipuJmpIyXRpuj4xLun00EZQ33PzYW2Ph+ZZsRLKd
 WKNCQ2kYD8kRjpr+d8VY/V2CZ61cdrtyvmxZXMSEhZU/YOIR+wRi/UEvo7mrOnY7k5/K
 MZcx40ZmMbQLt+wEtGfZIycYR8BZj9Bs/hb2s1o6DaFYBaFXCffiCoRmjry0r7HvTHVP
 vQWA==
X-Gm-Message-State: APjAAAUJvvJ0k3t0ra8yCeP5MG21D1vaWRelSPX5OJ/xX/SV3Wot/lwK
 GSokx4i50vJjbMeDhwZkZzHdGUSOKOho++hK7uYLZw==
X-Google-Smtp-Source: APXvYqzlBybRSGrJd+hcUv3Dn2qRzCzT0B+L+feikE4UP74EaajmftHPw8UUCFpXsdwVhewYD21SjERedikLdD2zC7M=
X-Received: by 2002:a9d:5510:: with SMTP id l16mr9938398oth.63.1565212745445; 
 Wed, 07 Aug 2019 14:19:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:2015:0:0:0:0 with HTTP; Wed, 7 Aug 2019 14:19:04
 -0700 (PDT)
In-Reply-To: <022201d54d3b$90d19080$b274b180$@adrianschmutzler.de>
References: <20190806131039.51484-1-freifunk@adrianschmutzler.de>
 <20190806131039.51484-2-freifunk@adrianschmutzler.de>
 <CAKR_QVJo-ooRvEi=ODftEsrr0avW3_5TUcMO9eSud5EpOTtfZA@mail.gmail.com>
 <022201d54d3b$90d19080$b274b180$@adrianschmutzler.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 7 Aug 2019 23:19:04 +0200
Message-ID: <CAKR_QVJbDBvNhon0UgHLMO+SkG5zu5iFsLcY-iD=aaJcFme2Tg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_141906_813806_F5656B75 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
 TP-Link definitions
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Correct me if I'm wrong but I thought all the data beyond IMAGE_SIZE
remain intact by OpenWrt on firstboot. Experimenting with Archer C7 v1
recently I was able to flash OpenWrt image (ar71xx) and after
reflashing tplink fw previous settings were still valid indicating
config partition hasn't been overwritten.
At least TL-MR22U has config partition of 64KB and Archer C7 has 128KB
- I've gone through GPL sources of Archer and it seems between two
firmware versions this partition was increased from 64 to 128KB,
actually I discovered this by hexdiff-ing u-boot versions from each
firmware version

On 07/08/2019, Adrian Schmutzler <mail@adrianschmutzler.de> wrote:
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Tom Psyborg
>> Sent: Mittwoch, 7. August 2019 17:58
>> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>> Cc: openwrt-devel@lists.openwrt.org
>> Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: fix IMAGE_SIZE for common
>> TP-Link definitions
>>
>> Hi
>>
>> Looks like there were many doubts about image size over the years.
>>
>> One thing that should be considered is use of OEM firmware, either in
>> case of just a single revert after OpenWrt flashing, or multiple
>> reverts/switching between OEM/OpenWrt firmwares.
>>
>> Relevant in this case is config partition within OEM fw, and by
>> specifying OpenWrt image size to occupy all available flash space
>> between u-boot and art partitions destroys config contents which may
>> turn up very impractical for those that do frequent switching between
>> the two.
>>
>> Further, config partition size also varies from device to device, some
>> have it 64KB others 128KB in size, at least what I observed with my
>> devices.
>>
>> So, the correct image size for Archer C7 v1 turned out to be 0x7b0000
>
> But wouldn't this call for introducing a config partition for the C7 v1?
> I'm not sure how your analysis is affecting the IMAGE_SIZE discussion
> (unless you say TP-Link devices generally have this config partition with
> different sizes, and thus the whole concept of including IMAGE_SIZE in
> common definitions is "wrong")...
>
> Best
>
> Adrian
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
