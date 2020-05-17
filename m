Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45291D685A
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 16:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2nYzSibS967JjYz3PCiiDNj/XdyGGVWUQNpHcMQXip0=; b=c3j768hnTQwfLkZpiHyRJXFlk
	RinYluaLrm/eztyVFTxaupTTt9o1eQwOnWy/oqVH0iVlsySV8f8H+Aw//4xG3Sr+J4SUO6r0h1wjJ
	RQSESywKJwbuYNYhqSvMGo5xqxE5UImVJ96ksUaqqzvF3Ve6uwY8sKyIEvJW6HbvZ4AgrcbyXeOo7
	V+15aN9PA2G9LfgFuisVrD9yf7VXaEfkproSfjdDaE2FAM2HIqpw0ZHzK0NMUx2vMJbKke/PF4nxv
	rGQp1AMPjURXL7ve33TG1E+KwUivcTH6+4PwylxD0FOx5uq6vZznY83mNCQDp/0QJyvuCnxM4jSm6
	aAnR8GzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaJtY-00044F-69; Sun, 17 May 2020 14:04:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaJtR-00043l-9x
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 14:03:54 +0000
Received: by mail-lj1-x242.google.com with SMTP id d21so7002270ljg.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 07:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ydGS9sROpnubPt7rsENMDh5IZhJwSQhlqk9OlsYF+iw=;
 b=lsXGmyibIToVxCDjMY89+924aYO8jA5IkWhdnZwKuY7Zo+lw2RqLG0WVOE8unraG6z
 W11bP9AJnZao1PwBH3y0/YeOS3fVCKu3oSn8ZQwxW1flVR/yszyoguIborFTiN5MpQhX
 mfBI5cEqId03bItjSTPdN1HtuqK1s6xqZbtJ/x21icEBG408BetvNXFoAcpnLDNEENgq
 zuDOFw5CvGBjCQ70hDYeBXQ3qEcM3GFq4Pl05Q+9ViYuyU1My9goCD+zopSUaNbGEeDs
 MhaMntS2KIMgk/HkgxsUyV8xbSlO9p/Otj2p4VD4B/9kIU9Fh+VmrSAKLuqgKxsq0k9Q
 LHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ydGS9sROpnubPt7rsENMDh5IZhJwSQhlqk9OlsYF+iw=;
 b=K95kwTOM7mOetYopimkzGz5l5A2vZmxpuLTNCf3zJUyF/fuAd51ikbMOefv4hCPxyE
 /682A5iqh6eB76057rcBHOzMbThN+RyCFAy1rHQVaVk5l0xK0pGvEUN3Ucxg4HNiYxiu
 gICgwyqj770Bp4YracbxQnSpcbRxMjK+Uk8CpBe976UahxoZIacvV+HjeBiDXRGPf8Oc
 NqG7WRq6U++3AaYSoxxdkUlm0H5QP0foB7bySBwYlXPa9othwxgX4HceVkp0yATh1wEE
 Iqw9DjLlMftCkjsDFSBRRXr6L1A3SHkAQxa8WefCxLN5joKgoEmhbnZA03XoaA+eZXwM
 fwoQ==
X-Gm-Message-State: AOAM532s9gHdDoJldZmICPkNLuK7SjJu/3vGDLa+gw/W8m9gKgcbQds5
 dsycV4FBnzzbvqgdVe5SwFmJQyl9
X-Google-Smtp-Source: ABdhPJzzKniMMjLwkOMN9RymiEWUVb98IYK5nl4Tnk+nKchXaRS1EtSYq7AyOIQKbFE4K8HfBDduTg==
X-Received: by 2002:a2e:b609:: with SMTP id r9mr7565471ljn.125.1589724230587; 
 Sun, 17 May 2020 07:03:50 -0700 (PDT)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id 6sm4835591lju.54.2020.05.17.07.03.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 May 2020 07:03:49 -0700 (PDT)
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20200514140252.42880-1-freifunk@adrianschmutzler.de>
 <20200514140252.42880-2-freifunk@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <e91cb9f9-748f-36bb-315c-936ae78d6ed6@gmail.com>
Date: Sun, 17 May 2020 16:03:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200514140252.42880-2-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_070353_362904_C821EDD8 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: drop non-existant ralink,
 port-map for Ravpower WD03
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

Hi Adrian,

On 14.05.2020 16:02, Adrian Schmutzler wrote:
> The property "ralink,port-map" never existed, and the device is a
> one-port anyway. Just remove it.

Never? Did you check d57223259b?

-- 
Cheers,
Piotr

> 
> Fixes: 5ef79af4f80f ("ramips: add support for Ravpower WD03")
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>   target/linux/ramips/dts/mt7620n_ravpower_wd03.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> index 6d734bb836..f67f186be1 100644
> --- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> +++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> @@ -100,7 +100,6 @@
>   
>   &ethernet {
>   	mtd-mac-address = <&factory 0x4000>;
> -	ralink,port-map = "wllll";
>   };
>   
>   &wmac {
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
