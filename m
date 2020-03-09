Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139E217E8BB
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 20:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ciAc0YMM8vcAsjyKy7lR3rPjxY6XGMQDcimbcEFek2c=; b=ZNHy7IcpO/Of/Bx83tfnFbHib
	uCze/UPYfeunGeuSEaDa6uBf057hip1UUxKQS/D8VBpPr1eM5k+Weik9NkneFkGaoa7qnUb/boq2t
	yhD0NMPCiI2BfjxOlF4ekSaOlsk9pLDaeJvYFMe7c2p4cSFykQh7QfTYyP8KniQKFsV8+4qbmA+qD
	emtvqdN5bZGOeBaMVn3jXPACqT9EJWL4eiOIjB2I+/8jLB6ybtDLF5qTR2CxAxim3KkEO0OzJqMVx
	YtFcOvcSWTfH1nzgUYGPYfTKZ9AgMg0TVP35hkZivANxqOoG1dh7PInfTyZYqqSup4Fjf7ksw1Iud
	4mDsoYf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOD2-0002y2-FK; Mon, 09 Mar 2020 19:37:04 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOCv-0002xg-Lm
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 19:36:59 +0000
Received: by mail-wm1-x32d.google.com with SMTP id e26so330087wme.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 09 Mar 2020 12:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=F7WjOtfyP0+i7gpK/cY9f4eXGxaNeaL8BW2lksnGrts=;
 b=xqDLml0j64j62GUqLeUQtNEhST/rfCMoCM3YNsF4W28ti3Mc6xWCIcovC310ma4hJV
 4wwe8eBkdfvO6ov7LxRYXLSijYfqQOCrdZenxIdZ5oo3alCru2wAaXWnSz5mPp/+6O70
 YJeQOCeh6emOBpfb5MT0Zu+lsdexn+6EGTvTo47nyQIFmojiTnrton0BgEp3gHY0Eg4s
 YRdAv2ip07FXTFCUjaMjjWUuAwVqp/DstGicUxhxyU8zAVgmSPWCVnarYeWfbRl4G3C8
 MlLTd5FWSk23yoIIkFhmfCra7V6nb2qHEMkG5+8Ka+8gsy18992gznX1j/u9V1NH45lI
 VQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=F7WjOtfyP0+i7gpK/cY9f4eXGxaNeaL8BW2lksnGrts=;
 b=HKbD8X+PRFMjWwzARmH/UbgjK7Xesrt1aqlGbF8989Nlznp/40R2ghO7icIj4JdDlp
 SDjxEctTJgvEaD/LUXQHYNE0cKx8k8D8jGRhKT1vvjuTAcl8HEDvZN4m6aHK0eEXKVEM
 rdZntePZcTqAPWK2xHZF7F5kLd0rLDFzKXshh0ZDeZG+c/OmoLDe33/Mqm/8wst60q83
 eDuqSRajU6caGTX4rw627EMfkzIG9ghojgfz2YuvitN7h7csLPi8sBFclgdVGcb2kqAE
 kDJbc5YvHDrJ4Grvx/IFOyUQMl9xViBN1Pe9CPk6dQLSmZ+LqxwPW7wNwArGyVYQ6zMB
 wrgQ==
X-Gm-Message-State: ANhLgQ3voAMopATPGBX2s24MOTxSb1cv0WVFrGmYqhnt3tsqhqkJq7ng
 4Z3N9WvdXgxAXXhdIGJl+zi1OIkXMTEN5w==
X-Google-Smtp-Source: ADFU+vtRjDH0VqHpdyR6tQ3O2FhhTMUYQs9ZnwVJbSO9IGDFVgF7qbuhTR6CTtoDh9Lr6luDhpabdw==
X-Received: by 2002:a1c:f30d:: with SMTP id q13mr814202wmq.53.1583782615872;
 Mon, 09 Mar 2020 12:36:55 -0700 (PDT)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id u8sm16698320wrn.69.2020.03.09.12.36.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Mar 2020 12:36:55 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: Tim Harvey <tharvey@gateworks.com>
References: <d3d03c7b-97bf-b480-de09-91ce9a730a2e@ncentric.com>
Message-ID: <64c65b09-4aed-91ac-2c27-03c52c41429f@ncentric.com>
Date: Mon, 9 Mar 2020 20:36:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <d3d03c7b-97bf-b480-de09-91ce9a730a2e@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_123657_712240_E00E06D0 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Quick question regarding Octeon-tx
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


On 09.03.20 20:18, Koen Vandeputte wrote:
> Hi Tim,
>
> I was compile-testing the 5.4 bump on OcteonTx and found a missing 
> symbol for it:
>
>
> kvdp@kvdp-BRIX:~/git/openwrt_staging/target$ grep -r "CGROUP_HUGETLB"
> linux/generic/config-4.14:# CONFIG_CGROUP_HUGETLB is not set
> linux/octeontx/config-4.14:CONFIG_CGROUP_HUGETLB=y
>
> Looks like it was set enabled for OcteonTx in 4.14
>
> Is it still a requirement for this target in 5.4?
>
> Thanks,
>
> Koen
>

Please ignore.

It seems it was caused due to lack of disk space during compile testing.

Full download & re-compile didn't trigger it again.


Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
