Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73611B8882
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QcyVjmndMlVuPzoDbYoDywqxDkEwFc1sMmfnMCX6Z5I=; b=t5IZfo42/0oR1NmlI+Naqmgpn
	SM/NZoshHcYscAfmT/79KBSqMwEW7kMiMscMUWWSaIeWpFEA+9XqDURcxh2uClTETwXRiF/udK7Ls
	J26+srytR82AiYsEkVG40jtB4n5Edd9rFj4WUkZz6ZuQEXvPAKFHN7N8e3AnseWNylU1cdetNE0yO
	c48TO+gFQHkUfMbvLK88PDhSaKs+73d+eBoQirMcu08pQI95I4PnAjwfFo+ag5Rz6f2jK+wpQlDua
	zHGVVk53JqVoKb1sxdfLXBVMRlS/SEQgP9SNwIL1Hl7NGlTUaLkP+Xz6CL6EcBK+ceYm3ASEhL2cP
	Gc+9LCfgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPWT-0004xA-Fq; Sat, 25 Apr 2020 18:27:29 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPWM-0004wF-4O
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:27:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id x18so15529555wrq.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 11:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=NrgcvMnys+LCxshQY6DursGoPqlVTr+3LsOiibPqT/E=;
 b=X+nIJ0HCU71ISIRHnC3xE+4vqkzVkBlLaHDWaRXpYHTY0+2/ltXHzYKPFU6QamG13X
 cunVcUSU1QjZ5RfE6+2ZKxql10/XYoxczVgiBc1YVLkKcp6kCsCsXuprGz5whKAOWdlY
 cLzUttFPrmG/k9mKZg+XuKClM05iqXjuP+LcHOlG/GleuyubtFY8BP7H4+X9pxefvqIz
 6COAKHC89qYh1SP7GJGddMblgePkPvpKCVb7VmeXp1QqSQFmVt+XgeiwnB9qbVgxqH3C
 AEZXPUv4gc+uyGwMBh/QK7GScczLxUW08LpmNo1njJB/pFSJ2+p0ZwqZ+sxg4Hidm4K8
 xEPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NrgcvMnys+LCxshQY6DursGoPqlVTr+3LsOiibPqT/E=;
 b=MG+hiVqAIGwM3+zlFe4V6o10tKE/RT03JPAybH+EW1g8/cV9V5jLoon/v0kD0iKB2I
 PjUeJinxME0WxYWk+hNRZYLMNtfI14HBbf0b8cCSxCQ0Kwmk645ErBFDzzyDlnL+v+ye
 4Tmpq2eum/2keWWZZvPgfFR6P24WwSqm7tmxzSAVOkRESi3xJJlP8xZQqbBQOYlsigTf
 KiKMSCdOKe70ZAlyWmW4pk+SzTVvNFYHB6bFWgYG4q9VpSbO8C9uGpGTOGcNRv2fGc/C
 hlooEJ0owQuROqim0hkIcWeSKSgG170n9kfpsNsvd0OQTWTqdHuFb1UzWTvMOctnH8aw
 QsDA==
X-Gm-Message-State: AGi0PuamKgm2oCMaNjbXsxc4hpk8wYUiOKZUdxzidmSrTTkgPgjNyLp6
 56uE+HkfLPF+Qv+uhg6z6yUwxjd9
X-Google-Smtp-Source: APiQypLqlPK2W0RLOfAmTN4mTmBDO9/19I0QdZ0U52XeC8MAvl9bO8kY+VPWRILAaiYmd2L6NXomfg==
X-Received: by 2002:a5d:6091:: with SMTP id w17mr17492715wrt.382.1587839240147; 
 Sat, 25 Apr 2020 11:27:20 -0700 (PDT)
Received: from [192.168.1.230] ([151.68.10.90])
 by smtp.gmail.com with ESMTPSA id u127sm8191181wme.8.2020.04.25.11.27.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 11:27:19 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
 <bd261d22-6ad4-a018-63c0-c2e5ad9b90de@gmail.com>
 <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <ebe5b5ca-67d4-a1f5-b5c6-756f99c1f5e3@gmail.com>
Date: Sat, 25 Apr 2020 20:27:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_112722_170886_49C171DE 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bobafetthotmail[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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



On 25/04/20 20:16, Luca Bertoncello wrote:
> Am 25.04.2020 um 20:12 schrieb Alberto Bursi:
> 
>>> If I undestand correct, I can upgrade to 19.07, but it will be the last
>>> version I can get, is it right?
>>
>> The main issue is the warning about 32MB of RAM you see on the top of
>> that page.
> 
> I read it...
> LUCI says, my device has 60664KB RAM, and I can see the same value
> checking /proc/meminfo
> 
>> If your device is HW Version 1 (white case, black antennas) then it
>> might not have enough RAM to run OpenWrt.
> 
> I have this device, white cas and three black antennas...
> But, as I sayd, it seems to have ~60MB RAM...
> 

that's weird, that's 64MB. Maybe a V2 in an older box?
What is the CPU?
check cat /proc/cpuinfo
The V1 has Atheros AR9103.

> 
> Could you suggest me a better place to ask this question?
> I really think, this list is not the appropriate place...
> 

openwrt forum https://forum.openwrt.org/

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
