Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A9F46F90
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 12:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JLJpuq7dNWDePXn8pekkHypwMx+V9iD+ErxTpAB+jI=; b=qP6cVQP8SSjS+D
	ND+YTR0U8QWvJ3JA6ybe6yIo+1ZWNLRn8B5U9FBsatnwPvtfwZklACBXBPLBtcNSzdWTYVZe6hr3X
	5EmRDjAaOHjkJ6UM3fEkgOih2PVlrdGHQOwqFKGRRKasPeQM5gk/hcd1z2i50v1MhjXa1ssEU6dYP
	DQJMQjWNh8IlEQv2r6ryoG3AVskRHQbehZti+qnZHG7fU9h3LX0snEzPM24YwSREStTg9XzZgO1Nw
	/kwCGAbYPoS+uw0aDzJNoLfBY7sVDHfBIvb3r1TJmlh4pnrPlNaQzc6CsVgT3lB31o5XmAuy/+Nix
	mvn0R8GqNcuIGcrJzjog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc65K-000818-Vf; Sat, 15 Jun 2019 10:38:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc65D-00080d-VO
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 10:38:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id s15so4588008wmj.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun 2019 03:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DTZ0uGAtLh2Kd6WDX2M4jdhJiDiw+aIAK6Ke8IVBJ9c=;
 b=l6mo45ckAWdNqAaUMwIEHlCL+KanJ8tyTvUJbYXtIdvjw/bUg8NVvCJ95B73Heors6
 EDpCZCi48NPBB/V/cye/dmx55LngehOEhT7cXEpTnfsw8PIsgzYb4C4UvJ1e+hEL+fIv
 7kmISUgumQpPg6YNZRkDVEam5GPl44y7LlJ/Oc/XpjzPVJcQ4CRglPKP3Zu5FvzERhRn
 Y5+K7SoMp+MHgU2ygfQrzTtfr2YIHyRX98/Sr5Kf5QGN1ko3lQBlKQmPwWBVWSbOE9Rr
 mRN1yed0jfSKUFWUrdgl+Y1foepXnQ/0O+KIiOK4frxiX+bJhyBAqbrn0a6a52OX/8ju
 ECCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DTZ0uGAtLh2Kd6WDX2M4jdhJiDiw+aIAK6Ke8IVBJ9c=;
 b=prQNz2N2XC5+kHwDqAqM5e2evhEohf6jtRvqYp3/7OzoEh4pjLHmOovqUB4aWStgSM
 20sbB5PjAYj3HpRVaRe1ToWcbm16HvKfIATXzRF6GFdzB6xz3KL1qhGizh1YsNX0EFyi
 m0lA8JRH0RTZ3tKKT3oxuYMxyLUSiPTrM3HoDlTNLFJI+fBoswxhUVBwLLtBVBa5r6Sg
 JyaVxWEVPHPpmZmxpxhr8vP5Kxs8R+K8b4Fg7GkM5K4Qi9AT5lgBnMfCF82LJVNtIFp3
 Yi77NN9iNVdRj5C9YrIPi4x1nBbjPGw12GrxLnjqbHKb0HZxaU++UMSaaZM5P3ktbAuo
 QKbQ==
X-Gm-Message-State: APjAAAXWaUi0t19Kqc20711uGEwPnhAoW6oIFSyO3liUDHaGR54gkPlY
 kthqlSMKVd4ZxDtOk2E/PllYrAvDTmw=
X-Google-Smtp-Source: APXvYqxobrnJgfsP8NrRMokx+MOgSBNtmTdS8Q+BLbp7zBO7SL65saGMPAeHTcqMLBl/GJ0fcZG5TQ==
X-Received: by 2002:a7b:cf32:: with SMTP id m18mr11580876wmg.27.1560595130351; 
 Sat, 15 Jun 2019 03:38:50 -0700 (PDT)
Received: from debian64.daheim (pD9E2960F.dip0.t-ipconnect.de.
 [217.226.150.15])
 by smtp.gmail.com with ESMTPSA id h1sm3926820wrt.20.2019.06.15.03.38.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:38:49 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hc65A-0004KG-Ma; Sat, 15 Jun 2019 12:38:48 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 12:38:48 +0200
Message-ID: <2139352.pfxfOn4buR@debian64>
In-Reply-To: <1559618019-5561-1-git-send-email-wurobinson@qq.com>
References: <1559618019-5561-1-git-send-email-wurobinson@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_033852_037834_55F6C098 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] base-files:fix a bug when add led
 timer trigger
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
Cc: robinson wu <wurobinson@qq.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tuesday, June 4, 2019 5:13:39 AM CEST robinson wu wrote:
> When I tried to add a led timer tirgger in "target/linux/ramips/base-files/
> etc/board.d/01_leds" like below
> ucidef_set_led_timer "system" "system" "zhuotk:green:system" "1000" "1000"
> it will be failed to add value to "delayon" and "delayoff". This commit fix this
> bug.
> 
> Signed-off-by: robinson wu <wurobinson@qq.com>
> ---
>  package/base-files/files/lib/functions/uci-defaults.sh | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/package/base-files/files/lib/functions/uci-defaults.sh b/package/base-files/files/lib/functions/uci-defaults.sh
> index 315df7b..23bde9a 100755
> --- a/package/base-files/files/lib/functions/uci-defaults.sh
> +++ b/package/base-files/files/lib/functions/uci-defaults.sh
> @@ -463,6 +463,7 @@ _ucidef_set_led_timer() {
>  
>  	_ucidef_set_led_common "$1" "$2" "$3"
>  
> +	json_add_string type timer
Hm, I think I see what's going on. Thank you for noticing this.

I see that _ucidef_set_led_timer is also used by ucidef_set_led_oneshot
which has a different type/trigger.
But package/base-files/files/bin/config_generate's
generate_led() routine's timer|oneshot type case does this:

   set system.$cfg.trigger='$type'

So in a way, for oneshot and timer the type and trigger are the same thing.
(which begs the question if we really need both or not.). But let's worry
about this some other time.

In the mean time, I think this would be a better fit and also fix
the oneshot type in the process. 

json_add_string type "$trigger_name"

>  	json_add_string trigger "$trigger_name"
>  	json_add_int delayon "$delayon"
>  	json_add_int delayoff "$delayoff"
> 

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
