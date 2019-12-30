Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9419612D067
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 14:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B8FDb0SGqwBxBRgMdLZ5yDKQuRWZEMW8fBkRDtREXFc=; b=ICxfzIPushaiQ1Sl6HRzJsbSu
	E582Qomi9snXHVE41NEvq2hjb9+QTFuNMb5UyiJ5LZsAEZoZR5Km1KD4837gx/3q0COsshrSq0Lna
	tG3+XRFsMiSYm+NDHEJCbnn6OKZVfunrqbnMXONV5qVTSkZtEMsO/HxYROXUxboAgj/mFfq4TWfOJ
	hcRrD/cEJ2B0jpCuROgxNWnRLs0nGlFgrcTPDFjURs8aI9Oko2ZYQIBKaarVImYNPUcD6VjDUxZlf
	U9VP152g1cSKJsVUuZOP7AQgSR4sn5Xd14DvKkrzTaAQbwmNvC3LVbAUuOF+F/Djz0ajwkIQXP8SQ
	XI90gLPqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilvIT-00075I-Sl; Mon, 30 Dec 2019 13:41:25 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilvIL-00074n-Ki
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 13:41:19 +0000
Received: by mail-lj1-x231.google.com with SMTP id y6so25322356lji.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 05:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0Euw7ASKA2ma71PJCy4yVqj5UwHUF6CvUWL5uTjljZA=;
 b=fPuuCnmg5rMb3BQP9Wn4iNlWKg5ISXvEX7Tv4YswNFzMpFRQZi2t+UiWDM0ry9DZmc
 CwhDIXdnodMoULYedZmeLHBoDlwI/Eaq+srIreVf8fKBTCCiaIuFWp9wGix82YJZudMJ
 ioYw+g0ScJda+a48cLy8rhE8IaKYGnJ/z9jfm75ApC3MOVCGoMOiE0WwZZZj30wSSKDX
 9TALIp1ve1rF+XnS9cFvBd9nUTvpUJshyASZRp3O3ZVX8AijMKKBc8VdaohgTVkEvYQ1
 c1FS5Fn53BHGxf+TNnMRJV438zXmRfaUE2BmfQAV2NQx9yVXarApKvDOPPUVlRuwYYM7
 NNtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0Euw7ASKA2ma71PJCy4yVqj5UwHUF6CvUWL5uTjljZA=;
 b=J98NTuJjvHvna+FGAKmoBNsitGXNSjE4We3Tfj5UIEcIvK3U+VaDezQ/lmfwDAmyOW
 oNN5YmdXgec4JG/3xPyOhqFzn9p0jIkS7tpGoVsSaFxETvFikiHCpI9Y/sjP5jwlV0pi
 WH03PXSb3w2MnZ/lEbCcWGuxLIEM5hR8ZQHAMfjJqUcQwCWzGGWsfyPdU9NAaRVi1PLy
 fF/cwX+NTROjK5/0PwIJsTC9Hx2NHwhMuR7KmoHYpLI67rJhifH1OtsFCnzqBo9gyZ+S
 Urgr3kdKR37uxjGLd1Of/DRXbC1Qjkb5/u/PR9RFjnIc9HsjYtWZw12lgxVLjJVHS05v
 RSrw==
X-Gm-Message-State: APjAAAW921UC6ysAyrEDFKjbjLdnYWZEOAdUscykNnkSDAQDaWgjEeyz
 3F2k0m8haYzfAMznWKtSeM8=
X-Google-Smtp-Source: APXvYqzbqa7vCrKRuWacEiFK7ETzCK+BHrw2py/RNWmZ+i7jqL21H+BeH1Gi+xsiSpTgF+jjrVmdBA==
X-Received: by 2002:a05:651c:1a8:: with SMTP id
 c8mr26970338ljn.207.1577713274895; 
 Mon, 30 Dec 2019 05:41:14 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id b22sm8120058lji.99.2019.12.30.05.41.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Dec 2019 05:41:13 -0800 (PST)
To: David Bauer <mail@david-bauer.net>, Jo-Philipp Wich <jo@mein.io>,
 openwrt-devel@lists.openwrt.org
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
Date: Mon, 30 Dec 2019 14:41:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_054117_682776_95997267 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Cc: Paul Fertser <fercerpav@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David, Jo,

On 30.12.2019 14:22, David Bauer wrote:
> Hello,
> 
> On 12/30/19 12:42 PM, Jo-Philipp Wich wrote:
>> Hi,
>> 
>> given that (binary release) support for 4MB devices will end with 19.07,
>> I'd vote for reverting the 4K sector change in ath79 and stick with 64K
>> ones as common denominator across the entire target. That will be the
>> least invasive and most robust fix.
> 
> +1
> 
> IMHO this change is way to crucial to have it introduced this short before
> the release is built. People who built images for their devices can introduce
> 4K sectors to their own images. This way, we do't risk breaking boards.

+1

-- 
Cheers,
Piotr

> 
> Best wishes
> David
> 
>> 
>> Regards,
>> Jo
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
