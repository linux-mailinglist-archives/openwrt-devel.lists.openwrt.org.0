Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0304769B
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 21:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+pvvgeyVBylOG/5HOyy+ys4JJoLf/6nMHTeujwc7zt8=; b=U6nkLPo4rASDpteFz7tMcjad5
	Y/vK5QJYLYGWTYw9qKb+6S9n+NLMEwNV+FERVyZUmQiZJq1JR5NUupJ5r4pCZVUah1YaWADs7lIaX
	ky9tHXoiBbeanBdaZjYHpn76V9nRw0+1gqDx+2rxYJHpRa3GZP0hrVSGlq8PZa2WSvapUS49Z88M0
	O2WWyHfTV1IeDLfEwgkvsSbMi3zdvSwIHDDg/Zm+V/EMP8IsnY+2L8LzVaySBKeZ6cpnl9ZFidp0I
	QRL56KSUvnSIJ+myzPRFy0xkzmmb1n14QYr2d3gpifCRXBIHFBkTNGuvXvWfeENfQauUV5czatrIq
	qREaySU4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcb4q-0006dH-0p; Sun, 16 Jun 2019 19:44:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcb4g-0006cw-3b
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 19:44:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so7195064ljc.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 12:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g2FvrKWDK8sCrJ3B3Y+jmK5xCi1WauugdGXEgzaHlfE=;
 b=DpL65hr688AQ9geN653dXWJZEsYgbG3NtFAv3wqIS0rhKfakVG6YmrAiqiXdOrUM26
 09HaH3i0qk96llqG+TOVK15qOmbYS/m6d2PMcr5FziYivx4sCHVd7cnkWyMGbKPTxQzJ
 q9oCZr0An7KX5sSVvBX/7pAQ6ymDsRqzhH4+gP8j2NN289+4Qo7nh+u1/51ea0q5pd6v
 NdvNqhwo5LDMZu/kC0X7Qq4wouTQe2MBPS7VjUEkuKGKzSBZJCcE1oyJLlwdpxeWXTaI
 nKzk0cSAdIXA6uNyaHxBRSAJtvNuHfff1JlQLg+MoTedaWUqBD3DfRN9ERam9oXoYZD+
 3fJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g2FvrKWDK8sCrJ3B3Y+jmK5xCi1WauugdGXEgzaHlfE=;
 b=q+9pumTkI2juccNIgzvSzpHTHFYEAxzWlkowJQ3gjFQbRvuX7zyNs6BHEx0lwOZUbk
 qf4ovh28KX3WjYCe9/S8f+gBi/NmlXWolZBNfZ+5/5cK0qTK5GUFLtXbQwH8sXSVQ/sb
 7cjwGE6pvHHshy9lT2bDPu+unlezZegWj5g/QZQuA7gI2h7nb4XvQ4wtBNVeQQCy9kSs
 gy+bTEuMnX5G5Yqx01g3GqACNip+SD2B5J1iOMSFdkWDUGCO58eriZpFoUCQq9Rm4DpJ
 OmMz9Vi72ojW+cGPSeZCMbFzM5Q9mPgFPiN12O1yh2G7ZuxoH6thgVJirbP4HAcYahwR
 dYqA==
X-Gm-Message-State: APjAAAVaWQ81k/hgJ+sv6/3p/3QQhgFsq6mQ9v5dDwoOnDC5Syrpo3BD
 EX+xsNiscbt3gIUgHcJkq7M=
X-Google-Smtp-Source: APXvYqx/dXvMG11a9v3Mr0P4tzPJ+tOjpK3hvPUpPvrMUKi+idNVz+d8V3FR2Sa1S8Pzc6eJxWhF3Q==
X-Received: by 2002:a2e:8756:: with SMTP id q22mr26767842ljj.108.1560714257470; 
 Sun, 16 Jun 2019 12:44:17 -0700 (PDT)
Received: from [192.168.55.103] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id s66sm1742059lje.102.2019.06.16.12.44.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Jun 2019 12:44:16 -0700 (PDT)
To: Christian Lamparter <chunkeey@gmail.com>
References: <20190616115605.6992-1-chunkeey@gmail.com>
 <83436d3e-5ddc-e8da-9f05-86f6e7829ccf@gmail.com>
 <CAAd0S9AMcg0qAyMNipj_zfnVcZ=EEsRP5_astyaJGw+pSrkyjg@mail.gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <b9d1b6af-bb16-37ed-f3f1-f05d6d467e41@gmail.com>
Date: Sun, 16 Jun 2019 21:44:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAAd0S9AMcg0qAyMNipj_zfnVcZ=EEsRP5_astyaJGw+pSrkyjg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_124422_178594_A805FB01 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] phytool: add phytool utility
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Alexander Couzens <lynxis@fe80.eu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Christian,

On 16.06.2019 20:50, Christian Lamparter wrote:
> Hello Piotr,
> 
> 
> On Sun, Jun 16, 2019 at 7:08 PM Piotr Dymacz <pepe2k@gmail.com> wrote:
>>
>> Hi Christian,
>>
>> On 16.06.2019 13:56, Christian Lamparter wrote:
>> >  From the README.md:
>> >
>> > phytool is a Linux MDIO register access utility.
>>
>> Is there any reason to keep it inside the main code base rather than in
>> packages feed?
> K, I rejected it on patchwork.
> 

Just a side note here. During the meetup in Hamburg we discussed about 
having only the required and actually "basic" packages inside the master 
tree and move everything else to packages feed (after reviewing what's 
there). I believe this will be also included in the official summary 
from the meetup and discussed further afterwards.

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
