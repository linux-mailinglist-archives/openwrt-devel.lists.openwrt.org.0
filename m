Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8709310CEAA
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 19:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ikp8ahoGCm/wz3J6HDCdCMuTK3g4HGU8L2m+nZClZdo=; b=PL2nnua+zprZ7LaB2bPNSKxKF
	99iLiXTM7bbOEBI5CJWFCYm2iWg+XQHXc80NIVesfoVizhiLpIpwV2wqWK3IWZ7qPP0X0iSnfmpE9
	34aV4727o6AK/6+FK/HIhYXWv1e0iv5icB1eig7TKdI3Devdjozyl7Kkhf+1cwQFJvep4QEXYqVDH
	uVA3Y/O/U4+EOCTaDK8SeSSLGH4GLQJY6jTcXLgJlhUeBY6m5u6ajLV0H5FO8nyxFP9bgqj8CR3hF
	M0UBcJTxtz3Zn93EBOpsPZmN8WITzhqgg4ewBYAmMi7yKO5UOesaDoD3edeVRZ8tCOu0cPAZ9hOVi
	1UUxXCztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaOvA-0005fZ-HR; Thu, 28 Nov 2019 18:53:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaOv3-0005eq-6Y
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 18:53:38 +0000
Received: by mail-lf1-x142.google.com with SMTP id 203so20720927lfa.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 10:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hk/uqhCYP+H5mmhgTNuoR/bc9Eo7//6LHDR/DVfs3gs=;
 b=E4pEXBV8bXvex3wi0liM99gP3ssuPlAv2UUdZ1N+I83QofoJS+yUnHfwSbPX1f0dHS
 Y/15Zas5N5AICxmm7IQsyq2Xs3v8UFUes6s+8rqoDf70wtThGNCcJZzpV9R4Sr7+iS9z
 /jjiZ1K9K4VLDP/NggP2c9oQNs3Q9etjPwqF7eYPLjYjjCD+B913uz7b+lPH63ZDjhvH
 5gBJkHLluT5kYMoB5zDJqfEX3G00NRGtCIpteISjFG9q20XtOLrgNA0CymnDyOczjsXI
 5p+yikbiQ/LhaBVWIHcl/6bv60hlkDgUK5vjzVrCuEfeoY3HlbuxhvMhTKY09jdtev/y
 ACkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hk/uqhCYP+H5mmhgTNuoR/bc9Eo7//6LHDR/DVfs3gs=;
 b=HjFd31LFWC964fw1bFalzjnSYXXYIfbiVnJ9f4JZ/FJ3QsDqSZIRHKLKM/mlt/JKEI
 5nbzQgaAPwj1gYNgUzCA7XL9WNnOVvXpZ2cNA197MVyvV9rhXl8kMgDJ9xa9WExoMELA
 zjsI+/SLbD0l0BlYz0nnbVJv1+saNQUaiZRgiVsg3L0VgZeBnb4BORNEucS2d3E0/krv
 +ic4l0nM8H4bPbCsO/JHcRHdfVHgDsjBV8bTZFbIyviCfS+n1RpYdkoZ8XSLh6QJhg+8
 QnfVdRM3I5O7iuAdMgQ9jxeXU9GBDBIrC91/Y+a/795Zk33zEX7Ww8OiTi3ljTVriCvh
 Jm4w==
X-Gm-Message-State: APjAAAW4ceu3Bmiv464rxuEvFkb76OXwpUzznqWsK903JQiqOBxto13x
 /yco5x7klqE8v3hxPbU2QD/9DgH7
X-Google-Smtp-Source: APXvYqycbSNcPEtazyeFrAqY0qUglUrLRhTPmPIdqYXrT//zBjLF34hFC5X3fZEiBrNj76asNyDkaQ==
X-Received: by 2002:ac2:483c:: with SMTP id 28mr932460lft.14.1574967212954;
 Thu, 28 Nov 2019 10:53:32 -0800 (PST)
Received: from [192.168.55.98] (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id j19sm503167lja.100.2019.11.28.10.53.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Nov 2019 10:53:31 -0800 (PST)
To: Hauke Mehrtens <hauke@hauke-m.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <019d01d5a617$53e76570$fbb63050$@adrianschmutzler.de>
 <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <d5d51e39-3d57-4585-07a6-9388628ec300@gmail.com>
Date: Thu, 28 Nov 2019 19:53:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <9ab7f0b2-d122-222a-6d8b-4c330fe3935b@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_105337_265599_92411AE5 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Hauke,

On 28.11.2019 19:41, Hauke Mehrtens wrote:
> On 11/28/19 7:11 PM, Adrian Schmutzler wrote:
>> Hi Hauke,
>> 
>>> The following are still on kernel 4.9:
>>>  * ar7
>>>  * ixp4xx
>>>  * orion
>> 
>> There are patches (actually from you, May 2019) on the list which claim to bump ar7 and orion to 4.14:
>> 
>> https://patchwork.ozlabs.org/project/openwrt/list/?series=107337
>> https://patchwork.ozlabs.org/project/openwrt/list/?series=107339
>> 
>> I haven't looked closer, just in case you forgot about them ;-)
> 
> Nobody reported that they are working so I never applied them. I do not
> have the hardware, I just made them compile.
> 
> I would just remove these 3 targets soon.

Wouldn't be better to move them to 'targets' feed?

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
