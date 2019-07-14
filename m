Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954A267FB5
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 17:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AAFCR+BizpJWE4NZQoQBde1+U8o5yrqmethsKg4dfq8=; b=MNRhB8PkRtyfVdkJKjABglX0O
	ZfDZ0lA5125drsaR61OXRM/MKXH/wql+6ycrWAwdZabGtGAcFOMJq25N9tOzA9ivjNXP8WHd1qxV5
	pgvOCJaMY3Pf3m6gtvIXWXm1EKuNThCqO/Uo7orbie6DzTj2FztXPf3hj4Yl/rRQshR7+ikuRekvU
	CBjfFKwR+J9e+L08YYY040dBVBqs1SKNjaSrKLHJIu4jeTRHZV6QbR8W+GCGWZlojhUvdYsAluzvr
	iXfwRC6KF7CsWH1kdsO879eFc9sQvU8JWam74q9mV4sE24ZneXNlt58ycdZJgkNDDZkB0P40JWjOm
	/eI6q7VlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmgEP-0006M2-Gx; Sun, 14 Jul 2019 15:16:05 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmgEE-0006LQ-Gx
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 15:15:55 +0000
Received: by mail-lf1-x142.google.com with SMTP id v85so9324823lfa.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 08:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jbSm+Ws6u+43ShVGxeTZDBEcQOpLKbuGhatRvPVLjTA=;
 b=f3mPYvujNKy88v7QkY5evwhYP8kg90D802EPbRP8pNYAMr5GVNpJtTS/byjXTPUMUr
 367XED7xMW3MaA8iYoG21ZIDxzh1xnqgLrgCUeuTFyPR3oL4+Dm0Be2oXZCNNdb1EseD
 WimXS4O0mHKmZuylUpC9RqOW09gcnT0mPI+2aQPTurIAA7HXHj3k3NSAjVdM+LT2lJ19
 l8oJt7t5N6ygtlA7woluG73sy8tog+0X5cA2FtuQBRKDfqlXIfmLcLXL/C86FSQpq6ht
 VRmrRJ1gCAFFiXRY/RDovZbV5rI2finCNTaKMz4kAfqaVRrL6X8DH/xTRnOufyKp+Gwv
 tfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jbSm+Ws6u+43ShVGxeTZDBEcQOpLKbuGhatRvPVLjTA=;
 b=c7ecrSU/u3LYzqRa8RW1zt4kmJG7kP4mlNxI22WknD+cwUKrK9flOYXG1bBA8WNEBj
 tGpKG/dYQLfA4KcVk9u5Q8HTtrUs95oJiwCLxui5BRG1H+6HO5sNPgQVrugJWbU31PvN
 Jzkt8C6dp6fzG5R2oJRxNvJMB9NoIcRI3LJp48d1hSc9N3VCxFdggzm0dVB38II5Q/iQ
 BthIJCi3SKSDT1wH9M5g42oOSa7qjFkxHs7bFMhM2rLdLlbhrdE2PyU1BL+yc9ijdNBP
 FIGU6RDmP3+gjaqoGDIEmssW7jVzNmHWUJLW/THMPs3aTyuy01PoKff2Jh30jnEt+hXR
 rl9g==
X-Gm-Message-State: APjAAAUYxrPRokLV99hTQByTp4/y8Eh+vmfWDo2Fg47hnGnsyeIrYNQ+
 c+6Cf1q6WDEyzBsir6u1IgGAnKmScEo=
X-Google-Smtp-Source: APXvYqx8jT/vGfH3b06p5Wm1K3UW7DZ2PT4AEEP0IYrvAyWMMuXys+34eN+2sbv2hG+hwCZHeeiqaQ==
X-Received: by 2002:a05:6512:484:: with SMTP id
 v4mr9748878lfq.66.1563117352093; 
 Sun, 14 Jul 2019 08:15:52 -0700 (PDT)
Received: from [192.168.211.2] ([91.238.216.4])
 by smtp.gmail.com with ESMTPSA id p87sm2575010ljp.50.2019.07.14.08.15.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 08:15:51 -0700 (PDT)
To: Linus Walleij <linus.walleij@linaro.org>, Roman Yeryomin
 <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
References: <20190714135037.18471-1-linus.walleij@linaro.org>
From: Pawel Dembicki <paweldembicki@gmail.com>
Message-ID: <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
Date: Sun, 14 Jul 2019 17:15:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190714135037.18471-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_081554_591897_F7E67EF1 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [91.238.216.4 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (paweldembicki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 14.07.2019 15:50, Linus Walleij wrote:

> +storlink,gemini324)
> +	# These are all connected to eth1 thru VSC7385
> +	ucidef_set_interface "eth" ifname "eth1" protocol "none"
> +	ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
> +	;;

and:

> +itian,sq201)
> +	# These are all connected to eth1 thru VSC7395
> +	ucidef_set_interface "eth" ifname "eth1" protocol "none"
> +	ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4" "eth0"
> +	;;

Hi Linus,

I can't reproduce working state on P2020RDB with this two methods.
In my device work this sequence:

ip link set eth0 up
ip link set lan1 up
ip link set lan2 up
ip link set lan3 up
ip link set lan4 up
ip link add name br-lan type bridge
ip link set dev lan1 master br-lan
ip link set dev lan2 master br-lan
ip link set dev lan3 master br-lan
ip link set dev lan4 master br-lan
ip addr add 192.168.1.1/24 dev br-lan
ip link set dev br-lan up
ip link set dev eth0 master br-lan

I think, vsc73xx without vlan filtering is very tricky now.

Best Regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
