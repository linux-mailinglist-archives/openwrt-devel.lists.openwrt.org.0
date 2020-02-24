Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0754916A720
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 14:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fvj5Dp3FG6WF8q+uhHcfIR3Om0Z/HG9QsbRXJUQlSw8=; b=TFefcmJO30gQ+yTs8uJMLxovf
	eTKxcuObs10OtN4CQFzAmb4179U1TvdAZX/1OkoiKiZgX6hGGmBsKImkQUIHHqjz/p6Lk7/6R/jNf
	zRFZvI++/HqXjcwL14s/BiXGRg9XsOZHlpu76BwovbExDLzvw8BDU6W/xCIKTrzr36Gia/ZZ6T1Di
	pvmOaEcbC+7YxlYhUTBGRtOkXa35pID25l9URILQl4B4/ErfovKSl/+qyWRIoYULANXfUWFOwa5xz
	VlTRm1GRNouRrzfqgSLnqv7HJcOlqezdMpLVld4OJEpqd50amjIIoPUuNXSZdeJFZqOKXHP+Qtj69
	HdohcP7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Dbx-00009G-7M; Mon, 24 Feb 2020 13:17:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Dbq-00008s-Vs
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 13:17:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id l18so6806147lfc.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Feb 2020 05:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dZqWk3qEf1zS+o4TzJNptukOTWKFljxdZlOCbMQgJmg=;
 b=sVVLa9C9QToOBYLGn6OtN/PheO7fPr5wfed0TFKfCCUUtA+UHMYZNTlLW1hqgbGeMW
 JrzjQlc3S9N2MztS7hgq6VAFUybw0LAjh5CHdJ+GN86C9MoKnjQOrlrjNQUBIuZvwmyd
 no/EO6x5oWVHwoLyeLUEEMhKYyZ8JvA+5sU/4nGig9+VyNmMEVRtn4aiw9mgSbrbvZpH
 8l7sT60jPSighg5PURneU7hiQcySZuRf3Hc1Zci8SsNIArsJ/t+Op/P95BzZ6iD9C+s8
 Nx5YLYpXlvXXb7/nsLfAY0pM9qkxAeRkq7nDcV3h315iF4+JvE/iW+DDlpHV9tiqebXt
 ENyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dZqWk3qEf1zS+o4TzJNptukOTWKFljxdZlOCbMQgJmg=;
 b=JLnrdRM12Wwswyz+5Z6ZUyowS2bfONfw0dAaVq+d/1FhgJy3wNGJNKXQTUH/9Ke87g
 TeLSd3RZKsyFxMzGwa4gryua5fVrc5WDbCn0dIBbjmsQBXsb3XwLM1KY7hBmAWiNVY9k
 ZXf2nLJv6jW7dxgDCrZJcq7qD1+w5w/P62727zV+CBO7Cwl5WwMQfTOhl7LQy3d5saJ4
 u09y2F4GXmiNpFvLkgjXWoUbt6e+pY0Ix4Ig+FSqkK1mqYjLRq38p3eVVWXkm/shb1xG
 f66SxeA78UfPnw7dpom+esCflLmaEwH+Jph/zYOjENB3XV4X025nIs/cWSAlg0BBemWI
 51lw==
X-Gm-Message-State: APjAAAUG8DZh6WwNKfLWTzRwLOJzZVTX7HapSqU4LwXOyPyTiUycLLfV
 5eUNU4NihEdPxNDSclJ67T4=
X-Google-Smtp-Source: APXvYqysBXnBaR5agLyuOkNAnlO4jJoZWlIHcHr4+Xzo+A/BVtzMGfgevdkW5/E8KxLr0Gv14AWvtw==
X-Received: by 2002:ac2:5b1e:: with SMTP id v30mr2861605lfn.186.1582550236951; 
 Mon, 24 Feb 2020 05:17:16 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id m16sm6270924ljb.47.2020.02.24.05.17.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 05:17:16 -0800 (PST)
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <3237023e-9edb-00d8-a6fc-3a5e20f82e35@gmail.com>
Date: Mon, 24 Feb 2020 14:17:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_051719_026223_69677248 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] gpio-export,output and GPIO_ACTIVE_*
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
Cc: martin.blumenstingl@googlemail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 23.02.2020 20:51, mail@adrianschmutzler.de wrote:
> Hi,
> 
> when defining gpio-export nodes, I'm never really sure about how the
> values for "gpio-export,output" and GPIO_ACTIVE_HIGH/LOW in gpios
> have to be set up correctly in relation to each other.
> 
> I also was not able to retrieve a particular system in how this is
> set up currently (for different devices).
> 
> It would be nice if somebody could elaborate this to me (I've found
> several shorter explanations in the PR comments throughout GitHub,
> but they unfortunately were never comprehensive.)
> 
> (And I assume the same logic will apply to gpio-hogs with
> output-low/high and gpios parameter?)

I think it's more about semantics, relationship between value in 
user-space (0, 1) and actual value output by hardware (some voltage vs. 
no voltage, for this discussion purposed, forget about open drain, etc.) 
and (inverted) binary logic.

Assume we have a GPIO line which controls some kind of reset line (for 
example, PCIe PERSTn signal, used by WiFi cards, GSM/GPS modules, etc.):

- if GPIO is set to 0 (0 V), the card is in reset state
- if GPIO is set to 1 (3.3 V), the card is in operational state

Sounds simple until you start considering user-space name for it. If we 
use 'pcie-reset' then 'GPIO_ACTIVE_LOW' should be used (if line is set 
to '1' in user-space it will means '0 V' in hardware, putting the card 
in reset state -> so logic is inverted here).
On the other hand, we can also name the line as 'pcie-enable', which 
with '1' in user-space gives also '1' in hardware (3.3 V) - in this case 
the line should use 'GPIO_ACTIVE_HIGH'.

I don't think there is a general accepted approach here, at least for 
the naming. Maybe only in case of GPIO lines which controls some power 
we usually try to match user-space value with actual voltage/power ('1' 
in system should mean controlled power/voltage is enabled). But this 
also means that the contributor has to check what GPIO value gives the 
'active' state in hardware.

Regarding the upstream 'output-{high,low}' property - it's used to set 
line as output with initial, default value (low/high).

In our case, the 'gpio-export,output = <X>' property is used for that 
and sets selected line as output (with default value '1' or '0'). If 
this property is missing, then the line will be used as input, see [0].

Hope this helps.

[0] 
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/patches-4.19/0036-GPIO-add-named-gpio-exports.patch#L65

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
