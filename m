Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F2D1FED10
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 09:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ivWE0czoTJnAuhcjrGcj6KNcvdIKMbGeBi+VSSGdoLQ=; b=ZRU3qdeJzOw4RwaJ4SN6/GjyK
	Vcr2C4MEJfCObHXsZfGmloqxjCk8yYrPL7SSvnevlf1X9vHGxLzJyt9JvBTbmG0BfH6Ml/GjU9EOH
	vwwjNV1XA45Zd61CNQvmF3pIw8TL2jmYbylNTGHSS6tmTwKbrkRdSeJDLh5yZlLoVrzebvZuIn+FO
	Vxx4goPu8st1bQMNolSrXcBDXqzDgxW1y+2CrXKV5CJHQtFutq7luj0oewDNTr0o7UHBxl6pcxaAR
	G75j+aBpuXA5zot+c++gmoaXdHwpS8fIcBLUxiRO9l7wC44U4UlIQd6GXn6BwFIoLc0FysI0qcdUk
	kZfyYZTvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpRE-0000n8-GT; Thu, 18 Jun 2020 07:58:20 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpR7-0000mo-IO
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 07:58:14 +0000
Received: by mail-ed1-x541.google.com with SMTP id t21so4083213edr.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 00:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=LY29wqxk42A/Be5qYBGkQo0RQNZnoqKHiye9zVbPLAo=;
 b=qBiWUpWgOQN0HzeMu8ZXZjuWBq2iA7zdemlaKHl5SWk36qp3OHIxGkhzs5h6ozfoSx
 BGEu5oIuUrUwTt+fVnld7iSlX5jvXZB6MDlHyloL8Uo4Omgzdc1ilAJ8Mhs05k2BeW5Z
 XqbjGjtRWdAySkawvDLuVZZlU04+HqmRTzPkfRNqgQDv7dDSZ1NmpXWufXqAF69qIvL/
 KiDLP08lvtAbglGTgJahSwl5hQq6Kqs8wOz52OZRwdsMUWBtkPD6WKpF8j5xLonZs1xF
 EgMqJSuWCa9U6Vntyv3h7+8Xy+TlliW/KDRZEzw948iZZZn9DkNbxPJ87N7fe60VIOIo
 Gpnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LY29wqxk42A/Be5qYBGkQo0RQNZnoqKHiye9zVbPLAo=;
 b=eHSHL5/7C0Vs/0g8mk12uKqWXdWwJ46CyjU9eaefeWxYs0xCcvr2ncPD+V3D3Cuq16
 PWM6pRgC/NjRWlDQmDXTRfV3zd5J99UDLCPBKJfq7QZZeYUNrcHOVVNRLqbsiMeDhBU/
 M2krFtH5/N9ABbOL3FXqP6p0pT2ZJ4CNz1Qr4vjhS8h08ceFVx/ereRTWOtChMVXQTHZ
 1NIT63I+CeZ2ae2PMfpSZjmX+bK//ESIJTO34xXYo6kwdyB5JCaYYI7oI93xBpirLY8b
 bTXXviiGfoxVmA8e/NuPVMi1hq0K+3pwAvmnhJYZC5Go2uEb352fc4Fc2K9N/zM7u+rh
 gvIQ==
X-Gm-Message-State: AOAM5324OLXKrxfXed6ITxT85HsLm7JQfcDIQhcau61t6BEFYRhaVm1f
 xVhlqUkIRMe8DjhR+Iv4QUkfP3sBfJY=
X-Google-Smtp-Source: ABdhPJxXlzqaxXRwhuxWJcCMZ1OIleWFdTJFmMgLQMmeSkm+/WycFXMwvvWrDyHMMXWpjMaJaJ6bJA==
X-Received: by 2002:aa7:d64e:: with SMTP id v14mr2929380edr.103.1592467091213; 
 Thu, 18 Jun 2020 00:58:11 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id m30sm1531532eda.16.2020.06.18.00.58.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 00:58:10 -0700 (PDT)
To: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 openwrt-devel@lists.openwrt.org
References: <20200618065015.73096-1-ldir@darbyshire-bryant.me.uk>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <9c5c159c-7638-5fdb-027c-39f8d9b2a9e8@ncentric.com>
Date: Thu, 18 Jun 2020 09:58:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200618065015.73096-1-ldir@darbyshire-bryant.me.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_005813_655965_E89EEF49 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: bump 5.4 to 5.4.47
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


On 18.06.20 08:50, Kevin Darbyshire-Bryant wrote:
> Refreshed patches.
>
> Run tested: x86/64 (apu2)
>
> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
> ---


I've got the bumps in my staging already sinds a day or 2 :-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
