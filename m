Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 880E5BEFE8
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 12:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CW3UyGNiW7hBCz3ZRYklVyWKNlPJg3BWN45BQABdkF8=; b=u2sG3pb/YQ8d+EikvmLbFXpXG
	UT311M7tBwp2B8REhcMEBT84WRn8fpjrMONJf4GiUl3gma9tvILBBEF/N/ub+dopCWlwZw7l46tPX
	hfDULcKS7kItfGQovMOXWbIBoKIymvmTBKhRWz96J+kSmWAD+xQGfSoVU75yEgBcxvMPeLIC0H/eS
	1kz4OMCE7k/gftjjBQYNJ74jBPcx2yO/mQ3VyYQD0/Rs0nqiZfq/2GdkxNIE2fWkaxZWVg8hcnmqp
	w/8j6oPFEPCb6ERG8ydU06arsDvzFRVqW2k2yNOb/ogOJz5f4osWybGili+6YfAmJa+xAjdvfKiOD
	28saATIYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRGE-0002sX-17; Thu, 26 Sep 2019 10:44:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRG4-0002rA-7j
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 10:44:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id 7so2172695wme.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 03:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FBzP2GIlqiqf5qd3DgySoO1DNETMyXC/go12vMmEbS8=;
 b=Bg8UHTTE4wqQOjcguPxRn5zO5X5zs0iZMtwrSVLmnNW1D2dsY9SCrrS0KFnLXjaIYN
 0l7nXCSCKZmYGLaALuhz3d6+4+qAVAs9OOsFYcvJ8gktCKfUojYe3tEL1Qwx7ORRJh7l
 /GB47jQSJ7bSdBQu34kzaKirmh9h10RFC1GCITdDAKA7fJWrCYiAKviHPaoRV1LAkeWO
 Vu5QybC2xs1W6AMqxgMpSqQm2d949T+U1bwc9z0Vft0+E3wRwEMM6PIgao2PA1Yk6XH/
 zSTiXNeUVikPafcCbvhwZm701ASD8bUoeEJB3Tce7kPjd9pSMv5WJ+nDxr3sDbvFskX3
 O//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FBzP2GIlqiqf5qd3DgySoO1DNETMyXC/go12vMmEbS8=;
 b=du+Pu4GsImOwDF+ZnmnZ9s8IpvljIJ7IOlDBWGb9Upu5rnhSbDzsHGVu5qGntXAzbO
 vw1zPoeKvQhTzeDyW4S2WCWHGBQ2vvWhMmE+S+1tmTKTf0whNjMj2nDuB0uaL/7v9ivg
 X9KzhaNGxxHvcPUjUJ7ootIi2R7xeDuVvTowYXDtc4Fa3+sexpnFXM30HkT/KFogYbFk
 bD+qlry8DNkAS9d+dhfcna+3+e2/bjStx1+lUhaUDhBowt1fjEYccZeW/PeFlf3bR1eV
 S10klxHIcukg2ZLkE3ZAIxd+fdTZIIHMdpYZXZTiPj1bkgPnaiZ4nPWEko5izddbw887
 Txfw==
X-Gm-Message-State: APjAAAVigw1I3P1bg7toG46sQJIxY5sUeKFnKuY6eIyRluioA+vh3Ufi
 LtfbTMBGdbbyEciHN1Y1/LM=
X-Google-Smtp-Source: APXvYqzY2vFheXjDFLBe/0fWELMyEYB3cxcvnn1zs1YkAYGQq4DXMKOu7CAsxTdEFUk+deWn4ki0yw==
X-Received: by 2002:a1c:7704:: with SMTP id t4mr2460845wmi.133.1569494662424; 
 Thu, 26 Sep 2019 03:44:22 -0700 (PDT)
Received: from mamamia.internal (a89-182-91-3.net-htp.de. [89.182.91.3])
 by smtp.gmail.com with ESMTPSA id v4sm2843109wrg.56.2019.09.26.03.44.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 03:44:21 -0700 (PDT)
To: Yousong Zhou <yszhou4tech@gmail.com>
References: <20190923140053.14738-1-a.heider@gmail.com>
 <20190923140053.14738-2-a.heider@gmail.com>
 <CAECwjAhNMJi1g6EtE7Ndfe+F+Ys8wm5FOSAymqDb9Bz09G_=rQ@mail.gmail.com>
From: Andre Heider <a.heider@gmail.com>
Message-ID: <60caa4fc-b9e0-255a-baf2-a58221fb005d@gmail.com>
Date: Thu, 26 Sep 2019 12:44:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAECwjAhNMJi1g6EtE7Ndfe+F+Ys8wm5FOSAymqDb9Bz09G_=rQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_034424_296669_D2C12F8B 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] sunxi: enable audio for sun4i
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
 Zoltan HERPAI <wigyori@uid0.hu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 26/09/2019 11:55, Yousong Zhou wrote:
> On Mon, 23 Sep 2019 at 22:01, Andre Heider <a.heider@gmail.com> wrote:
>>
>> Enable SND_SUN4I_CODEC and SND_SUN4I_SPDIF.
>>
>> Tested on cubieboard2.
>>
>> Signed-off-by: Andre Heider <a.heider@gmail.com>
> 
> The module should be available as package kmod-sound-soc-sunxi.  See
> target/linux/sunxi/modules.mk .  Does this work for you?
> 
>                  yousong
> 

D'oh, I was looking for such a kmod package, but obviously missed it.
Yes, that works too, thanks!

Feel free to decide if patch 1/2 should be applied or not.

Regards,
Andre

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
