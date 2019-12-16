Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32391203DB
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 12:27:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kzorXH5l8iAG4Y5cTQHAN6kqn7iYx8Vl7vmaPG7IdKE=; b=ZOS3T/0lDP0PrmC3n5zA5ahu7
	LDN7v9zblilH7egn94KkFXFamyc9kfOHUreHDFOLh0dbYgrt3Z5Wzh8WYP2v11G3hbu3QEDQKK8w9
	k8PtWQ7SpdIIZSiMy6IRRwCeUC0DE4zyFtzGOWHNoNZH6TAGJtl1MATjY7HttGL/AWE0grijV60lU
	VtFSaLe99nd8tvWZ5f/YMUaF4KnuBml95JT73JyyLaYEidupXFKWWojZg1Js01dw9A9z9zjU0+oaS
	uAexu+Hp3Thn+bWl5GryqLOmW22F1NuS3lLpZj07UvTpCxR/kH+tru+sdV+Yx/CDVZeQuUOwA7yp7
	kcgljmWug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoWv-0001ra-EQ; Mon, 16 Dec 2019 11:27:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoWo-0001rB-RG
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 11:27:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so6803616wro.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 03:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=BtMO/sGJzKRbjfkIe0booNVK9M8tU5DPIv+pk+s61Yw=;
 b=Yj8Mj7xNjE68mQIGAUBSZXYb7m1//cmLFiHxwoLNN955lZ/YyCLc0mzyiavsljvk0M
 0v+5rNuu0tHDZXUBfEtLi1OtHAfYIHyL00+HUBKrm+j8otNRBMIUKH4VZjqsz6sug9+7
 HucQ6d9zTGEdSbrnMbJ002H7TyG+rVluVdXTgpItGDSoXCQt8OcDZ2YaLXcbCRiOIjSQ
 a5DdPSuYRFIDb0Rfk/tsAhfhgf5nCom1Zl54UrtAwfNE2w+vnRb4PM7Qpy4EWv/ywDbJ
 8HlZ1pELMiwSPoZiWmZ7dRz0lXFasjYbvNNtWQDYtWRnsmsYgJGUQkmHdGaPnlyeOTun
 IGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BtMO/sGJzKRbjfkIe0booNVK9M8tU5DPIv+pk+s61Yw=;
 b=UF+p/Jft49uDflnD1QdaUdrvzo5MqEvUQN9bJszMHJi9DVay1WObtwJEytaIIxtOLe
 l1Gf6Opv6eYr96BRurN6KFYUxaaw1A6LnfukBKs6Qv5kruPPd1oturUfsyxnn/sOUEll
 rmqh4Wja0FZNPEvV9xedOcQAePvIIhzGFF8DJ2x6wFahJSS91dpbFZTpIPM0ka+NE1Uq
 u5PEdKWyYFGjsy9pzCSq8LXa4B2NEp6swEbWfZzMRx/0+T9H2cKCdyoD9tYhVSdJXD0R
 YPIeB6SWzprluTshY4/49CKtHVs/hjnqr2ntR14IrzmJ8+m6V7U/NfIHlp1W+mM6hC1d
 AjAw==
X-Gm-Message-State: APjAAAXpSAGjEXRUp4LGcPIyYmARtaqbin7YV2hCwI0Wob6zTJ2k2nZt
 YXzRnGQrMjfxNWP84sn1Pv0ILLtgl3LNVQ==
X-Google-Smtp-Source: APXvYqzGP4HNw+tos+7gQnxeKP6j4nj5sSM6Cbysrx2r94rboAIjV+O2MdfyaEt+y5u0DCzvkpTICw==
X-Received: by 2002:adf:ee88:: with SMTP id b8mr31069945wro.249.1576495624841; 
 Mon, 16 Dec 2019 03:27:04 -0800 (PST)
Received: from [192.168.111.145] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id k16sm22308134wru.0.2019.12.16.03.27.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 03:27:04 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <5675304.dXXkMWVoIb@debian64> <20191215120114.GD11070@home.paul.comp>
 <4186246.Rc2P9gcx8s@debian64>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <a8f56a23-108f-3f76-2ea3-a904726ed224@gmail.com>
Date: Mon, 16 Dec 2019 12:26:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <4186246.Rc2P9gcx8s@debian64>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032706_886672_5A7E48FB 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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


On 15/12/19 14:09, Christian Lamparter wrote:
>
> But it seems that Ben had a change of heart in this regard. I don't know the
> details or why, But it makes sense because it would enable his company to save
> some money for the systems his company sells:
>   <https://www.candelatech.com/lf_systems.php> so there is some value
> in supporting these devices, especially if someone else does all the work
> for it.

These are wifi/network testing equipment, not network devices.

Also I don't see the value in "saving some money" by using a bit less RAM

when the cheaper system is sold for 3k, and most stuff is above 10k.

You could use standard whitebox x86 stuff at that price point.

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
