Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6042039
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 11:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FBl1GU45v9pIRGjcExrGseqxFk6r6NRu9ythNlhdpsE=; b=I8yzOf5zsBslqzRjnSuPylKwN
	bEO8CcVtBeZN6z+wrraUXirATLoSKgW3stZ37VeMyVb7U0UUg99os6tA83lF++57rLKXK+BC8HFAk
	DSh3wNAcvZ6yRaNJTaITmK4SSdvczO8nZsKv0aq6H3jJur3y4zfky8vNm/un8jVpvv2m3jcQCntan
	zW5MiDP74N0X81PFpk42yKoCp0bIL980pgc0AVT4p1SNmfLbuagt7/ilkLiOeMhhIWNhCp2dKrWjn
	++vzPxHhvpm8VuxNiIenoruMc6i8Yp/0KNl1O67nnBd18K7+W7vq5Mcs2mhGKNc1+tnCvS3h8bgpo
	SJpCXlsRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haz9z-0004z3-0a; Wed, 12 Jun 2019 09:03:11 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haz9g-0004yK-Ul
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 09:02:54 +0000
Received: by mail-ed1-x52e.google.com with SMTP id k21so21204400edq.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 02:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=/uMADnZCbkBLGbvfAzETFPuI6IKtXIvlwPFqiKw/Cfs=;
 b=nP1BS07h4qBT4KrZQmlrsrfxn9AC8qIPkzggkdL/cnQF3Jh9kxr+KvJThA5tSqCLAM
 qAZ31FMbP+SwZ+0CyUpmg24lN/8UKs9PZM89efxLHVKYWJ+PJWGtUeoA4+xCk4OOqjlk
 WmC0ZiW+zFbw712oeyOWQlDCSxQaJoYmvjXnH8LWI+LYOTJOEzGcHVQB3pfUmjDCQUUW
 Tykw8l/BktDywlF9SwCC4MOwSclGkHsSrWneXCSOEEAWipfGbhq4F2fY4a3DKfnVEyJ0
 Tg2kBDcx5/n+SVVozP641d5dHpJAIM7+TAFfGRj7cwIB5I7OltTOerG2IneC0D48M++R
 FTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/uMADnZCbkBLGbvfAzETFPuI6IKtXIvlwPFqiKw/Cfs=;
 b=WLk886COL51FovmLHHYgXscIiS7/JP08M8qs2L2zsB3H+FziwA0oCGkRi73xT/uQpR
 Bm0MJxNwB+YXv4Os+c3tgvwqq58yBH+FXvsyjoExMni/etfXmU1jAwk25BezOh+0MqUi
 G8aPGtHeK1//dW7yjA/CIab02ISy74If4F699BJu79Pxw2qgZGBEnFnxtq40hllAMiLW
 X7Q3zGj5lCh0137xz2I2yOP0lSbgbaura3jGW0zVKRCAKt7rKyXKuJac41jG49lnMGUu
 w10ZDHVqwXwmUIV6KtLJUKaKQEQIkvFvyhYuRJVOilgQV2dyiz0NnrKxzQNguoWS1MrT
 RBIg==
X-Gm-Message-State: APjAAAXZURqJ68lb8TaSpr/aPVczUiJZFXek5NBMWmRNveNE/hAWNFlL
 zKavzyiSlCOSghCT4u2nvPbpjlRi+84=
X-Google-Smtp-Source: APXvYqxYsbimk/pMwobbcfuNIxbJMfwLeO8fCaDWLh71FQtk0Ex9eAaXE+KAFaQq7ybbIRgdkLYi+Q==
X-Received: by 2002:a50:a941:: with SMTP id m1mr88242028edc.157.1560330169436; 
 Wed, 12 Jun 2019 02:02:49 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id w18sm2689617eji.44.2019.06.12.02.02.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 02:02:49 -0700 (PDT)
To: Jonas Gorski <jonas.gorski@gmail.com>, Stijn Tintel <stijn@linux-ipv6.be>
References: <f81aabc8-e8e5-42ea-37ab-2adeb4728896@linux-ipv6.be>
 <CAOiHx=mbuuiL5G1Ay8oedPMhRFsLJZKOP06ZNfxT1ocmyrU3ZQ@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <6a97128f-4c5a-da4f-3964-0a0fcc20f05b@ncentric.com>
Date: Wed, 12 Jun 2019 11:02:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAOiHx=mbuuiL5G1Ay8oedPMhRFsLJZKOP06ZNfxT1ocmyrU3ZQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_020253_134902_32D01EDC 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] KERNEL_PATCHVER in master
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


On 11.06.19 23:12, Jonas Gorski wrote:
> Hi,
>
> On Tue, 11 Jun 2019 at 23:08, Stijn Tintel <stijn@linux-ipv6.be> wrote:
>> Hi,
>>
>> Since we now have a 19.07 branch, is it OK to switch KERNEL_PATCHVER for
>> targets in master that have 4.19 support to 4.19?
> Fine by me. The earlier we start testing 4.19, the faster we can iron
> out the kinks, hopefully reducing the maturation phase of the next
> release.
>
Fine for me, but please hold off a little bit until I pushed my kernel 
bump later today. (already in staging)

Otherwise there's a chance I need to redo it ;-)

Thanks,

Koen

> Regards
> Jonas
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
