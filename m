Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B1D15496B
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 17:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2H4aky5VeomsyvT5DbmtGrDzT8UFSGXGog9hEw2wMJ4=; b=u+Xl/88tn3fCs2kYTfIPSH4ov
	Wrd2v+mEMtea5gtCXGr8yxaWPhr19AACVGuQ8ZUp/BnRNk+Hl1/7+qXKRAVdTkajxxKwGUyLUSpiQ
	4MleVB0J8RZO8OsAp3HZVtDZClMUC1CxiWmkRG5ZTDDK+B+c0FbvmM99yOdgQEsdaW6UdNH7XTmK4
	offSMOW68brxQnCjGsnk7RvHcZSVoXVy+iM5ugyd8Q3MER4XFmu6SVB9nai+GyDkNe27tCUbDnuGy
	7wr6THbyEjrGkssy5Zq9bCJ8F8Viy80NsuX46UM9MsnsILU90Y1JiNLVJmO1qt8wRkVllpfB6UVt7
	R9ym00tRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izkD0-0003yJ-DM; Thu, 06 Feb 2020 16:40:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izkCs-0003xO-9B
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 16:40:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so6771887ljj.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 08:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0rv5nUs2qOre7I6O6eHpZTD0AwGsC3crDE/Hjpq+4Dg=;
 b=gY5aIDES7WTyd3rb5m5DDwZT5MWxQ72mSc2tS4+DDqJ9SS4nZXv9aaP3YWn9gIScUq
 Rcaa9l5CcJbspXUQVY4RRMuh9v9GDK22F7ahSJAZXzLuWVUYDTxklvPW88P9FC5t7sQu
 KSbQZNLkA/RHvvrtqRvxbFn3F1LvOPHwB2l4s6C3TukybxqrgOsEeflO/0ApEio4lxIU
 5HJQdiB/o+qjzF6SekC7CwB5RSlqqdQcGbcUQuQQPYygTh0lxaPlB6myrWwuWd+YZmnz
 Pa1PUDakAJLUMtsPJ9+M2hICeFPC5MqUSPZJGPZ4uP8NqFA7+ZNHXzVdlSL1Cc7EW12l
 vn/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0rv5nUs2qOre7I6O6eHpZTD0AwGsC3crDE/Hjpq+4Dg=;
 b=JHjEobjL8jLxXnCLHd28i4ZUZkKYhPb1ANlJ41fm6JmBPcneirrsSHiJx47g9GPRS0
 g7W2yarjIGAjMwq/weHyhsw5r9adDfJ9CcveTvaYUZ5wdKzkzY8S761reL0hFO6AasWn
 NUwcv5pwzSLUYzL9Kiw7ywXq5wpz/apdbkllscxIjWFPwtryKdRp1xg/PKKz/nimq0NA
 AooI1QGuCnx5g1tJtGH7qC3j3OVQUsASiDuxXkOs1K1C7DTI6j+1GspIVVwzhqENGPss
 8S9NkoGapQjIg2SHkCRu1t98FvuuRZXjGDiKqVdfaa2Oxp0HvuzV3GKLWTDSQ/JAlqMr
 vGyw==
X-Gm-Message-State: APjAAAWDUu5c5SsIIKNrxbBvW1HpF/v9y4m4aBwSfN+g/H97IxL7dUxL
 xaxzLr9iq2rnx7dQ7chGIXYoWLsw
X-Google-Smtp-Source: APXvYqxuCUM7geSnd31YdoJ694pDHsoqm/4gAhrIupsqRM7oLilCK4SAC0is3HRuxshp2JJ8WqVbbw==
X-Received: by 2002:a2e:90c6:: with SMTP id o6mr2592766ljg.129.1581007243885; 
 Thu, 06 Feb 2020 08:40:43 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id 3sm1663449lja.65.2020.02.06.08.40.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 08:40:43 -0800 (PST)
To: Chuanhong Guo <gch981213@gmail.com>
References: <20200205144418.1859901-1-gch981213@gmail.com>
 <c56df957-d2bb-0065-76cd-749cf5063401@gmail.com>
 <CAJsYDVJSgW7wn=KFTiV8AuVPZSKZ437gNoqqNTBXabfi64xXew@mail.gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <250ff760-7706-331b-3ac7-6d91d8eea1dd@gmail.com>
Date: Thu, 6 Feb 2020 17:40:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAJsYDVJSgW7wn=KFTiV8AuVPZSKZ437gNoqqNTBXabfi64xXew@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_084046_345258_68A79AFE 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add new ar934x spi driver
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Chuanhong,

On 06.02.2020 17:01, Chuanhong Guo wrote:
> Hi!
> 
> On Thu, Feb 6, 2020 at 11:29 PM Piotr Dymacz <pepe2k@gmail.com> wrote:
>> Don't you think that ~24h for review this kind of patch wasn't enough?
> 
> I've sent the patch upstream and got positive review there.[0] two
> minor comments there are already addressed in my final commit.

That was quick, great!

> And I've done flash reading and sysupgrade tests on
> ar933x/ar934x/qca955x including cs1 test on ar9344.

I remember having problems with all 3 CS in use on AR933x but can't find 
now what exactly it was (IIRC, could be related with too small TSHSL_CNT 
on higher clocks). But as CS1 and CS2 are muxed there with UART and it's 
(almost) dead hardware I doubt we would ever see device with such 
configuration.

> But I agree that I'm too impatient this time. Sorry.

No problem, maybe I'm just too slow ;) I remember some initial work on 
that done by you in GH PR but... not every dev looks around there.

-- 
Cheers,
Piotr

> 
> Regards,
> Chuanhong Guo
> 
> [0] https://patchwork.kernel.org/patch/11367973/
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
