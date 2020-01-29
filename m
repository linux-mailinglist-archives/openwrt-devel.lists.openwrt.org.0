Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D4A14CC81
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 15:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XvvkNylKV+ySPovPiDhCd+PJZ6gSLTgAy+qHq45m0hE=; b=oyHgnNZEoOA+7M3PKlUor2odw
	d1QuPSazl8uLw5NhrAnHSVXVfmqO8esiPcdffjG6GYSWukwbvxdhstYgxheOUkqc0yIhOMTCGKzFY
	buMTKEtLGiNJj0iHmstLP86iCFu+EqO2epqUQZF4XTWOXZik/B9PgXq/g6QBKYiF81+lYMIkepmu9
	Rl9qK5Rb3M9wSynUUzkpz237Xjqr9gsCzsMCBn4oQxQ+SNgj9jbXkxsc0Kh09cvBwYtQWgSjI3Hdf
	6wmHhZJ56233kZMT2bas0uFT7tWmxyMtkM266bI6WEgGDWyXqPVRkUPixJbvxJHAyH+wygiwqS6Rb
	JVNsMUE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwoP6-0006w9-Hi; Wed, 29 Jan 2020 14:33:16 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwoOz-0006ve-6f
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 14:33:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so18702639ljg.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 06:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0DfbhzmLhrlORrwkyIAw5FgaMu1D6Sf981uTF3HT6gg=;
 b=VCZnZrhDrmpF1KKsPByfbdL6yoTe9Lru3/8cm2UsmUfXbgRaV3uxpILWXDgDwZqYHU
 fEgnqw4LEIMjmgzsBIcg+LsGo5a+umrRIApMTbDjCgWzp6rl8Y0TOoqjWq/f/2MRKjQd
 yfwHow7boXeUQWOUotJWOrktg8EUHt5A6H6AeF23Ug+jSf44Loom77lWwxfCDdNvBE1g
 nAjn76VZ29SO0yDTg3XJ/f3QR2CHOPwNIdL/lKtUK7uKvwvL9YgO+qhJQ+2EkN67DItN
 KImF8KFFpjRpsBMeV3p2oer2WPRinRTxuZfd+LRxibLBkwFNNpilt+1knPt8Kp/J5BjR
 EUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0DfbhzmLhrlORrwkyIAw5FgaMu1D6Sf981uTF3HT6gg=;
 b=m4p8mvKPEegLHUZ3xri2itni7xOmm1iDL4keR0mfBobYXPVYgHKH2RK91pYniktuQ0
 EvlPPylvL6NIq9kInv3jdCbFmkBNeZCu9J0QtNdDYhFgjPJjBn7IwbAt4zpvZPMiZEZS
 5zuUobGoanXS7pddm9VfLzaTJcOKos1zmkmeZsdOhSiPj30gD6COfyeQpVDSedsqjqZ0
 9GNJEMtdenrcG5y2PoyDLChP7/enlbd4FH3ZHCnuX7+KDAhg5/S6qTnA51mPqYfKxtiY
 Eh95fJ69qhNS20zLKEI+eJOukVZmoCkmLdxHxOiNmpxcqPz+lnhE5RHyaWIs+2KbFoXF
 zfwA==
X-Gm-Message-State: APjAAAW+HR9btIJdu1d9OfcxUI/Ev1+mIQ4Wfq61GLbACEUnhbIa5iDI
 5TT25sL4fgsjm8rojsBSAezqUGF5
X-Google-Smtp-Source: APXvYqx496qNtNfPWFVWbdh8JezaCPocMNSJBezcWxfFTAZMdg7wN8QlBxZGSou86l/95v0y2/pNPA==
X-Received: by 2002:a2e:8758:: with SMTP id q24mr16943084ljj.157.1580308026655; 
 Wed, 29 Jan 2020 06:27:06 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id q17sm1067831ljg.23.2020.01.29.06.27.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 06:27:05 -0800 (PST)
To: Peter Geis <pgwipeout@gmail.com>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <CAMdYzYrWaxjP_UMASDjw1Y-PbdHgVzWWfRc9o3cBiiOLWa=+5w@mail.gmail.com>
 <d963c081-fd20-db13-09db-434c30404389@gmail.com>
 <CAMdYzYoeXOunh+QmG_CY-DyBXHQhoW9D0MZqcw9DyJGad_AP5A@mail.gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <4809893f-8ec4-5961-c68d-643d468b4347@gmail.com>
Date: Wed, 29 Jan 2020 15:27:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYoeXOunh+QmG_CY-DyBXHQhoW9D0MZqcw9DyJGad_AP5A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_063309_241434_7E760AF4 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 gch981213@gmail.com, ansuelsmth@gmail.com, David Bauer <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Peter,

On 27.01.2020 22:05, Peter Geis wrote:
> On Mon, Jan 27, 2020 at 4:00 PM Piotr Dymacz <pepe2k@gmail.com> wrote:

[...]

>> But it's not a general rule and, at least in case of generic/basic
>> settings, user shouldn't be worried about upgrading between major
>> versions with preserving settings. Otherwise, the whole idea doesn't
>> make much sense and we should just prevent settings backup during major
>> versions switch.
> 
> Excellent point!
> Here's an odd possibility, just to throw at the wall.
> What about building a special transition image, specifically for
> moving from ar71xx to ath79.
> If you want to retain the ability to return to ar71xx have an image to
> go the opposite way.

Simply, no.
Please don't make it way more complicated that it truly is.

> Or a metadata package to do the conversion post flash.

My goal is to solve the problem without re-inventing the wheel. I prefer 
to solve the problem with what we already have.

> Because the option (which seems pretty drastic, unless the size could
> be minimized) of having a near permanent conversion script built into
> the firmware seems rather costly.

Conversion scripts would be my last solution. I prefer to deal with the 
problem without too much overhead.

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
