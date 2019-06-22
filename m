Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B954E4F63E
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 16:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqlr193rWKHUFqets5uaIfTNToRK/sfwUGSdOimyc2k=; b=hezeho3A4r1BIA
	4PlqGwCmNx8JRp5VpRXnusJGQj583yzl3+TvUt/q6L8k9BpFNrNumfO9GD67M+6aDcWhqJLk7EVdQ
	aqvm1v0lasQW1OcwUJiZ5UsEDeQBowt1wtgATmzsboTOZzK0QPNJCU2M+FFs/i1cHZouFj1QlLrVl
	aYkpQ0HOb9YLCxVGfMrBiiveRCU1FbJVYvIk71/6uc7M78X5zeCAU+sVykNCtBkw3sabBF/QDJvpy
	2EkrTsc+x4oQqAi7jxleLCDZmB2yrOYu4FNM82TX321SPScrTTHURVmylo+lTQLjzfMDnnFDlJVgo
	h3pZziYLcOdth/ialdcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heh8r-000476-Mk; Sat, 22 Jun 2019 14:37:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heh8l-00046m-Ce
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 14:37:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so11018489wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Jun 2019 07:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rdpk8G4FeOZIw/ROe7JpTDzL9p+5cMJcc1Fn6wqvnho=;
 b=bRPL3wdSSTwXgzH7/ScbIqTyflC4fkNxqADEbUpje573Jv+Fum9IZhfaY4Kmd76mlM
 MT/yE2Az1fzGpjeZUh1yQ0kD3aVDX046dBvNxM63+X5kcSOQTzfn/yfFQvFgRxHIdP0J
 OGfMCFzMxcbGqioPlsz3/Dm/E9wPpk3tLmnor3oDZvb7k6QwmZV66wMSkx8t3hH3AayY
 Fds8Zu38JfR3+ZiEebRAPK8PwdjxbbVMdXgdGq6dnGIQebuGP28NZ5WD6HZW8LCzJfXH
 Nc3aqSljqBUqKUhJ7jTTQPXrFG/QbaQ3SZPYevRGGl23mneQcgV5YWwZG56EmjjFaJBY
 WgNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rdpk8G4FeOZIw/ROe7JpTDzL9p+5cMJcc1Fn6wqvnho=;
 b=S5fhQ5gq4460QtIG6szpuU+3z++88RMUsIuULk12BYAv72z2iIlYArJse2SXoG4rZl
 HKNrp6V/TWD5l7z/DWZXqGjWVCaEpjPvEnWOLij8gqNbuRvOFyGbFuyyyijQiAZDHfa+
 nmtQeogorjPKC6frlzLTVFx6nKtac+sB89xwBBbnwGdJhGL7rdjgslLccSFKzatt/T1+
 6yVO2jZYgZuU/dFn2CJlu7aCrwn0OZoTA1HMS9d13d0HFzvXfw7Haq5U2+QoqBPHRg8j
 QMLBPn15g1aVDwoE9dr9HlKuUgAnmwZUbJQqpEBJ2D8j+Kxs+06T3fNO1kY7gfj6d1Ic
 +pQw==
X-Gm-Message-State: APjAAAX7fFmpnoh4wI/yIXk0T/t8v/hL06Vpc6Nucg5SdvI1HVXT1Nom
 8EbUsEd+WncgQ6QPqfUdxM2/uFOA
X-Google-Smtp-Source: APXvYqwk4h/iR5JWqqurEFfF9A61EZtPb5wlrCg73Ks9nXCYrzsIbKH3v82M00vJASxuJ98Euk+3oA==
X-Received: by 2002:a7b:cc97:: with SMTP id p23mr8684007wma.120.1561214232926; 
 Sat, 22 Jun 2019 07:37:12 -0700 (PDT)
Received: from debian64.daheim (pD9E29CEE.dip0.t-ipconnect.de.
 [217.226.156.238])
 by smtp.gmail.com with ESMTPSA id i188sm7249501wma.27.2019.06.22.07.37.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 22 Jun 2019 07:37:12 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1heh8h-00057x-9O; Sat, 22 Jun 2019 16:37:11 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Jun 2019 16:37:11 +0200
Message-ID: <1894667.KyhJTWUrd9@debian64>
In-Reply-To: <20190620193304.30303-1-rosenp@gmail.com>
References: <20190620193304.30303-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_073715_431511_69B7F122 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain: Don't force GCC8 on ARC
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
Cc: Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thursday, June 20, 2019 9:33:04 PM CEST Rosen Penev wrote:
> This prevents overriding it to use GCC9.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  toolchain/gcc/Config.version | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> index ef9bbb82e2..e635244827 100644
> --- a/toolchain/gcc/Config.version
> +++ b/toolchain/gcc/Config.version
> @@ -4,7 +4,6 @@ config GCC_VERSION_5
>  
>  config GCC_VERSION_8
>  	default y if GCC_USE_VERSION_8
> -	default y if arc
>  	bool
>  
>  config GCC_VERSION_9
> 
From what I know this would select the default GCC 7.4.
Do you know if the special ARC patches got into the 7.x branch?
Because from what I can tell (from 7.1) this was a problem and
the reason why GCC 8 was selected since it had the patches from
the beginning.

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
