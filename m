Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2737A1D29B4
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 10:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jy6UWX2UipowEX8rPryrwlLiSaYBR9YszY0f77PXISo=; b=QbRroRwSgjybcd2/CuR1mT2T1
	pzYbxzfyuhYrnWG0Yix1bDiLnQIVmjxBQJDVNjESLK4ekfjSJwaob3Wi8vbbQ1uBjW7bTNXiV8KWG
	YoEPN1U+/KKF2dcBulg3OHQjcvOx+JdfW1F9w64cCpllYo/yLSxwXNthknz8swmd9LAbG7Q25uZv6
	0Dmg01g86bkPfTBpTsitZYXEu1k1rEPvoUGTCgmKl0WqHsEiAM6eLc+rY3L0CcwYLnlas0p827hma
	uqkmVNe0Q0WK+Qsx05tmgHPjRPXB6+FHsTuGmOZgRfBRuG7cvNzw8z1TOdtDjqtv4Kc/fEGEJ5vRO
	UgPBNDHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8vM-0003qc-Ea; Thu, 14 May 2020 08:09:00 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8vE-0003pz-PE
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 08:08:54 +0000
Received: by mail-wm1-x32e.google.com with SMTP id y24so31377217wma.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 14 May 2020 01:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=TqNpVR2IgmfVlBvcvHcd8KBkiZjEkMjszcZJN0uCffY=;
 b=tGIIw/dx+QHY512/ydCs9xrUtm2fhfYtnMOyqNn6tJ7DDNIWG8MX0hj00xWHXyEwD9
 6lnm/GlceteVZ76dLxtVLpnzhOH6pN46rl2Sp84kSs313CFWRN518ITmBzVOGfLVZDAd
 whrTC23+KBR/3j64Do1Q7fr8QoXg039U9YVLCDf2hcbT1Ah9wvpQbhqn0MQNMm+s4lhS
 aw+CY99O8AGDeNv0LjlZc2g3BQBec9/3NYCuKld9CEb81bqo4TayZotEmxZe4eNuObmi
 JYCZxeXPkqRuuUiLYmNnI+xB7nkHEw2+SP0WXmEECdyLeyWDpfPAuHTgTKS5DxAftPs/
 O7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TqNpVR2IgmfVlBvcvHcd8KBkiZjEkMjszcZJN0uCffY=;
 b=duztP3RTtdWncDpx61TD7QneQiLXvMojPM3mntSNrIhcrRjJnUx/RRLLZx/yGWXhXU
 RV/8luEou6qAnVL7vXmqZvkprxCG81QYpT2mQKHX8mPCCBE6cCBAhQHfUviYpCwpePiC
 j1LoSxNW1LeVGT87cU+WwJ8dgf+LrBeHzGxyKLcrisoSXGJmSEz2ZRP9am2k1lQECRO6
 6l5BQH0v03+3g+0YUBwexVsqnT5isxZp61zydMeQ5gHD3WG9rccZvtitEWwoOYNDSbmX
 lWt3/vKrxcr0dnNKwS9ByCouIjaWtcpCW8plJU15kcLrzdrOVvZMIgyG043koWJfb38N
 Qybg==
X-Gm-Message-State: AGi0PuY8tAIlaHYc/OjNUVtXMLaBn4eYomZNicrvbqv7jLQSO7NqP3nA
 bjt45Jj7NcV0KbMlfKfZjdFVAuV3kVI=
X-Google-Smtp-Source: APiQypK5pvuUJ4qmR1QPn69vkfQaQao+gRJ2SKddr2SOCUzEF749c9FMVKhhWcsQ73i1nflFz+Sebg==
X-Received: by 2002:a1c:46c2:: with SMTP id t185mr26523833wma.99.1589443730114; 
 Thu, 14 May 2020 01:08:50 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id l13sm2813245wrm.55.2020.05.14.01.08.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 01:08:49 -0700 (PDT)
To: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <871e3d9b-46b4-9058-ee4a-60f1a46bc9b2@ncentric.com>
Date: Thu, 14 May 2020 10:08:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010852_881940_6320F0CE 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 07.05.20 13:46, Luochongjun wrote:
> The gl-e750 is a portable travel router that gives you safe access to
> the internet while traveling.
>
> Specifications:
> - SoC: Qualcomm Atheros AR9531 (650MHz)
> - RAM: 128 MB DDR2
> - Flash: 16 MB SPI NOR (W25Q128FVSG) + 128 MB SPI NAND (GD5F1GQ4UFYIG)
> - Ethernet: 10/100: 1xLAN
> - Wireless: QCA9531 2.4GHz (bgn) + QCA9887 5GHz (ac)
> - USB: 1x USB 2.0 port
> - Switch: 1x switch
> - Button: 1x reset button
> - OLED Screen: 128*64 px
- Serial: TX pin marked as UART-SOUT, located near the switch (115200 
8N1, 3V3 level)

- Mobile: Quectel EP06-E in mini pci-e slot, USB 2.0 connected


Correct?


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
