Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F361E5A37
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 10:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JcpeCupkM/z+IyCZtcRuUnkqKpPQoQn+LGPIAcqvYw0=; b=rqU5NWdt1+yM0AONRBqKvT9gW
	Xmr7W+i/AVKVWr3z5XXc7Lf2h1Jbso0IDi16sLSARukPZEeQ0LDC/msN5X/eFzw3s6BtYp7+9vrJM
	v/gr83qvGKkC4CfpU4B37jAB7u3N0iHVjUV8+vsKDCAstrY859Wz7zBU9mW6CLlZdw6WT08WUS8R8
	Ou9sYueY/Goas1zXRSOwbF9w8/IpIfjyxgZDA/h1ZLnOB7HPTvJSkIVd9LAua9+1P0OFV6tB9TuYv
	uHws16GwXU7Gyw5HqtPiQD4XKIVIp6PdXK+l4xlVStoHnyDag1fTevd2/TJkiP1NFMdgYfXmr7dLC
	z87eMKM/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDWU-0005VK-NQ; Thu, 28 May 2020 08:04:18 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDWL-0005Up-PH
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 08:04:11 +0000
Received: by mail-ej1-x634.google.com with SMTP id n24so31058401ejd.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 May 2020 01:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=EA4hBbJLXEcBM/FSr4mDouAZCDGt4Lj8OtC8LuROmMg=;
 b=LzJkGG1v9vXHK5Jn27Cmkf7OBEmVe4tVTVmG1tte3D4ieivHaopfYxjnOXaYIIQh8k
 a1Hg3sZjEjO1jKuN6R9RqHT5wcnGWm/6EC9O4XV2Xw0xhCpdxFhN+upYYKKWZ5KPOiX+
 +EQxzG4uFNCWCQdzi+MtoiEhuasr09TzysMcv+9cNBVxMHqO75WJjQc/4JSM7vf7KKsf
 Obk8qtytQwJd13uG+U5y0Ip4pM2L5/6lPDBV75/q0LCJBE5IqzpCQfm8My8JZIP2nXP0
 vvsjkpbWIZ2CeqB//xN43/6hBCJEBw7fjZE/W0nNZtY5sRIrsFiRBwZyGaXEj9M2Tt62
 a35g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=EA4hBbJLXEcBM/FSr4mDouAZCDGt4Lj8OtC8LuROmMg=;
 b=U2uCPuZvkJAvJA5tAeEj54gU9wcwrj2o1p+fJZ+x9rHlXLxsmHYFPNZWSiYGal3xNZ
 EdJf8WWujldXpRadxabJLzLRUss/TyrofWBnD5PLaxnZoNbDIsKxoB5lZ7u5lkZU/twJ
 +qfsK8opLqo/sjEFy/64/wgsrTQM7jfZ2liP3GyGA/uXBkS2aNMurA9EdJVzNmreWR/R
 hTLz/craOYIHKGYcpJJNdOMjYvIeRGDDhesl38kxdbOkGd9W91iDc77wh/rOVbCIUcAf
 L+km3Z8bGpHRTiy2vifPpNnwJ+u5BuAA9G8Zq1TekGrtQztUpMIj0XBIDDue3sATacJm
 PC7A==
X-Gm-Message-State: AOAM530Nrkzb6uwz+XGfo6pJW7AdqkIYu7syWz1URhgWUnWMaWG+9fZI
 XC3i1J5zXBhIJsX6OQ8CCJWA1g==
X-Google-Smtp-Source: ABdhPJynlcsggn5gn13x6U3r9tflR6dYjGraUrkZab8qmmtwUI0VAC7JVeS0wB9VnricZ9FhzKXpQg==
X-Received: by 2002:a17:906:63c9:: with SMTP id
 u9mr1912714ejk.439.1590653048122; 
 Thu, 28 May 2020 01:04:08 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id fi9sm4793738ejb.5.2020.05.28.01.04.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 01:04:07 -0700 (PDT)
To: "luochongjun@gl-inet.com" <luochongjun@gl-inet.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
 <332ee2d2-3a6d-3607-a472-7a7667bb3e5c@ncentric.com>
 <0c828486-4933-e7a7-bb58-469a73245ffe@ncentric.com>
 <5ecf2549.1c69fb81.3a0e3.008eSMTPIN_ADDED_BROKEN@mx.google.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <246e2c2b-9f4c-59b1-c8cf-1ea8e38d7adf@ncentric.com>
Date: Thu, 28 May 2020 10:04:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5ecf2549.1c69fb81.3a0e3.008eSMTPIN_ADDED_BROKEN@mx.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_010409_883632_BA207E39 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Cc: Gianni Stubbe <gianni.stubbe@citymesh.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 28.05.20 04:42, luochongjun@gl-inet.com wrote:
> Hi Koen,
>
> I'm really sorry that I missed your previous email.
>
> Tried sysupgrade --> results in platform_check failure.
> In the original device naming convention, E750 was named glinet,gl-e750
> However, in today's openwrt, the name of the device is glinet_gl-e750, 
> so platform_check failure is prompted.
> You'd better use uboot to upgrade your firmware, follow the link below 
> for the uboot upgrade steps
> https://docs.gl-inet.com/en/3/troubleshooting/debrick/
>
> this device also only has 1 ethernet port exposed on the board.
> Yes, the E750 has only one ethernet port,
> In E750, we only use GMAC0, but in ATH79 target, I had to initialize 
> P4 via GMAC1 connected to the Ethernet switch, so you'll see eth0 and 
> eth1 on your system.
> I have tried to use GMAC0 to initialize P4 directly, but after 
> initializing P4 in this way, the speed of P4 can only be 100M, not 
> 100M/10M.
>
> ------------------------------------------------------------------------
>
> */Best Regards/*
>

Hi Chongjun,


Thanks for the details.


Could you send a V3 to ensure ethernet is working?

Currently, there seems to be a mismatch and I suspect the wrong eth is 
being assigned with an IP.


Basically, the device is totally unreachable with the current patchset.


Thanks for your efforts,


Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
