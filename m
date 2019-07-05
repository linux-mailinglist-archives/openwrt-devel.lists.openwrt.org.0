Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B745C60C63
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 22:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O0VZvubtz86C4aJ98BVShOl2NJnUv9/pPYIgijLN20s=; b=tG7YLqQ9+/RBxhtpt34XaRH3R
	kPOJ9a4GPhS6Uc8hVWP+lTudkgitHDtflXqAXJzSE0ZnkgWh/UpHjFmldMSm4AJIElG3OWTtFLqSt
	PRFlmqvQaTMyMBRlC7gzWHwQtyCDh/xAoH6r3M+xki7EbNClBkchrFOzUts0Y0XbtW4IvTuqjKTd8
	hGTrHpmzVnwmFwUUtIKL5iJwDafpO0uhso1wzkrX+BosgzxhLHUlRLHLUrFN2JPi5qGjQGqtIGWya
	b4EObbjFTA3hdpqv2D1zpPUcCIDZa0sebrkiospU2wT7VIoSHZh7TTAkB/h++sXtSe4Q4/ILThXOv
	8tyjZPdRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUsT-0004xk-7F; Fri, 05 Jul 2019 20:32:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUsI-0004xJ-Tj
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 20:32:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so361521plr.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 05 Jul 2019 13:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=iC0xhUMriKHU9Mh1TOa3uCmGm4sqztoG0HeZ+VyTqNI=;
 b=ky8EBK09TXOws3fJ4rk9ecODYWC93jHIupG4lxOwtT7Z/akhH1F28dVsDeN62nh/+R
 WIN8QufTmpxEbCKisdz6+4DgUVbhDy1Z6bobXf81N7S5zOXpQ3TwPokMM2XMoSF3c5GJ
 4yC/bzLAABZ7LjSMHGtQHMQLPeCYEqZPFy/heBPasSoDehpz7czMqP0OUrEOKPLwh6ak
 uyIDjMn1gwj6v9eq3DgTm6WdxHOep4117YpO2Wk7hcW9LhNc9fHoJ4MJerlAdP6aHCv+
 FmZgAiZj3hP000vpU56d4aWeFDYiwPW82P1i2jSJUBnTBJ/03BTrCZ6IMQP+EjQBGUE5
 Ottw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=iC0xhUMriKHU9Mh1TOa3uCmGm4sqztoG0HeZ+VyTqNI=;
 b=hSANNzQWl18FzlYTvEv3LdOGZf2zH582RooA0ovJMfNRzfN0nbSCLYzcfQ3l1iQVCc
 1wcYSYPd0zD5Cdd5hCZid2QUwYKGNXC4gzNLMvUtQDiOxmmxw3l8FaBwAapPsEwN8R2Y
 mxEMB8n4M4JYs4YKeWKzkEKyTPgkkg2WDakuYNxkwnEdxO1P3n1LaBj9E/Mpx/zbFZoW
 hrlrqcKtPf77ghMnYeBCniBAvvqqM1OxupQsE512wG4F3wikSkUHbVs65FrviqxZPl6c
 32IqNpQZQakGgyrdIiu5noavciT0kCXxthekPibQyz7HER/VyaxtNxHT9YoQ8PNCn4Ed
 X72g==
X-Gm-Message-State: APjAAAVlXO962/lAiaLfeWOFln8uVqwIB7zjLWYalyM/whiUwc5F+UMN
 bKpOYDpeFO3qH3/IRycQ7yTKX+aEsdI=
X-Google-Smtp-Source: APXvYqz+ba4fOTPU4EKG+G5jkR9sO9PoIWtR12f6olTOvkpoDA+6lYLDS9RdoPBeoCZWiNPlKwAq+Q==
X-Received: by 2002:a17:902:59c3:: with SMTP id d3mr486033plj.22.1562358725595; 
 Fri, 05 Jul 2019 13:32:05 -0700 (PDT)
Received: from [192.168.0.240] (76-14-106-55.rk.wavecable.com. [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id
 q1sm12803516pfg.84.2019.07.05.13.32.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 13:32:04 -0700 (PDT)
To: Christian Lamparter <chunkeey@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190703201651.164-1-rosenp@gmail.com>
 <21122158.nGdb3KtYbb@debian64>
From: Rosen Penev <rosenp@gmail.com>
Message-ID: <3f4cc63c-5f8a-b173-0b62-764f6e4a51be@gmail.com>
Date: Fri, 5 Jul 2019 13:32:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <21122158.nGdb3KtYbb@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_133206_965330_671B498E 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCHv2] toolchain: Don't force GCC8 on ARC
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


On 7/5/2019 1:08 PM, Christian Lamparter wrote:
> On Wednesday, July 3, 2019 10:16:51 PM CEST Rosen Penev wrote:
>> When selecting GCC9 under Advanced options, GCC8 still gets selected.
>>
>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> Looks like we came to the same conclusion (see date).
>
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=a03fe6d029d81c8ed6a5cd97603f975acf6731d5
Works for me
>
>
>> ---
>>   v2: Allow selecting GCC9 but not 7 and below
>>   toolchain/gcc/Config.version | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
>> index ef9bbb82e2..2a9dc289db 100644
>> --- a/toolchain/gcc/Config.version
>> +++ b/toolchain/gcc/Config.version
>> @@ -4,7 +4,7 @@ config GCC_VERSION_5
>>   
>>   config GCC_VERSION_8
>>   	default y if GCC_USE_VERSION_8
>> -	default y if arc
>> +	default y if arc && !GCC_USE_VERSION_9
>>   	bool
>>   
>>   config GCC_VERSION_9
>>
>
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
