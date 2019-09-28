Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570BBC11CD
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 20:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hk4T7QXLFHEaAmwNEpFf7jSHTGKpVcBaPYWRkPMusoo=; b=VTdIiJhkYneQ3BTfyGWmCT43k
	P7wBJwFAcy/i8GMnjuPSNm7whynYoGKGf75QegbhiTlYbJa0ydmObAA5sVmhX//bTQRE06RkXjPCZ
	QvDH5zl09Vo5LtWzoJNgXsCTii0YBzQryGZdfSTc9KsP2q6CyiEw3ZN5AxR0YzFdrZHlYE8jM0XIy
	6P1NGqzekzUtrqkiISlTgZIcdk+daGhY7JfuwbXY4l1d5tWHoyi/A8fYTO+rhm1LPz/xq4+VEe7J8
	gwI/IRfSu5ElexzXs5/AhzBahXLHIJHQVuxyigmJEb4EvhfqvuEMkP2jsYpxs/XbRCFSjlcC9QYGc
	m8xUszwKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEHfI-0002x7-BI; Sat, 28 Sep 2019 18:41:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEHfC-0002wm-5a
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 18:41:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id y135so10938926wmc.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Sep 2019 11:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=cfI1l5HlhxQGRyv4RTwL/TryixJfRJO6E8bncoDrojQ=;
 b=dsb8cJUM3NZTfYr67gQ1i25MYm9rbrOqHdNVMatqCh6fdADAvgxeA7N4fax0rIPq9M
 l4x08oBiq80P65lC6X2y2wBXPSuwOeHjq9Rlq8l98gd8i3uOJryTB5VjDqQNDfIWStt3
 ZZF7UMm5mzxMiAP85D6IllwwW2sUpxjYboeNz8MAvfZbzidGjSU78CuC4BB6os6bpmGd
 WHA4+gmvdDXuuIAlVm2i+qYIduofLUPjgNh/tix51t/C2wxVI/OStMc1SnMEwMjQcTte
 oY06WSAZlXTm/ZK9bvsJSKH/XjLAlo2stU7QDw01seZd9O8EfLa3NSXYgJ8sGO/0WdCW
 cbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=cfI1l5HlhxQGRyv4RTwL/TryixJfRJO6E8bncoDrojQ=;
 b=TD7pL0fYGk6z47Tei0Qju3C97jEcEakrnkAZs9c9Bls0Dbn4GJiYBdwSwTbWzYdml4
 WgxO7iN7KDd4FVWZWkg8IAwrmq7qvUQyiifJIsmZJr1LJhcJjLGXAxPICzeWRAu3nJk6
 fqnqhlm1CttEiYSjQ5lDrZt4ZSTYYXQeGi6CBCwu7l/5M6FMW2/qIvPxRUb17gOYQbZK
 7fGmLaW/QHzni96jCo2wVDwlePjcCxDs5MRGeTlm+QzzRUwSXg7Y3R2owREHJlFviHV4
 oaLmxgZcOzYva6ZEuxdjR/l0OLII2c+2m+SMwdenG+T9SbXiE+QS5rPcCXAH1YgqgWhT
 /EPA==
X-Gm-Message-State: APjAAAUfV2+TtDKbFvY+4ePfvREI7hT1ddzqCT3u9DfOA7F4u5Uche+h
 bFAHhZWRxzsrz6hDPO+85T1I8Y6b
X-Google-Smtp-Source: APXvYqxAHvZE9HSSwNk6st+8D0bQvxfJaNQB9EMD0id88MmUIqz2xMMRlKF/P4Lt0UFs8MDJcuIHUg==
X-Received: by 2002:a1c:a74f:: with SMTP id q76mr11869031wme.16.1569696108061; 
 Sat, 28 Sep 2019 11:41:48 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id o188sm15850397wma.14.2019.09.28.11.41.46
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Sep 2019 11:41:47 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20190928173958.20199-1-lede@allycomm.com>
 <20190928173958.20199-2-lede@allycomm.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <d6875a72-c77a-34df-4f38-31022df5573c@gmail.com>
Date: Sat, 28 Sep 2019 20:41:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190928173958.20199-2-lede@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_114150_210140_7F9D9190 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ath79: Restore GL.iNet
 GL-AR300M-Lite first-boot connectivity
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


On 28/09/19 19:39, Jeff Kletsky wrote:
> From: Jeff Kletsky <git-commits@allycomm.com>
>
> The relationship between GMAC0 and GMAC1 and the kernel devices
> eth0 and eth1 was reversed for many ath79 devices by commit 8dde11d521
> ath79: dts: drop "simple-mfd" for gmacs in SoC dtsi
>
> The GL-AR300M-Lite is a single-port device, with the "LAN" port of the
> GL-AR300M board unpopulated and its sole port now referenced as eth1,
> as a result of commit 8dde11d521. The device was unreachable on
> first boot or fresh config.
>
> By changing &eth1 (GMAC1) to an MFD, GMAC0 is able to associate with
> the phy and is known by the kernel as "eth0".
>
> Thanks to Chuanhong Guo for the suggestion of "simple-mfd"
>
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> ---
>   target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
> index fba08e4295..e29af5411d 100644
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
> @@ -7,7 +7,11 @@
>   	model = "GL.iNet GL-AR300M-Lite";
>   };
>   
> -// GL-AR300M-Lite has different LED colors than the non-Lite version
> +// "Disable" unpopulated GMAC1
> +
> +&eth1 {
> +	compatible = "syscon", "simple-mfd";
> +};
>   
>   &led_status {
>   	label = "gl-ar300m-lite:red:status";


Both these should be cherry picked to 19.07 branch too

as the swap of ethernet interfaces commit is also in 19.07.

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
