Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD5E1B8892
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BV+2Fxe+S+NTgwLvSZj7FD+tViL91aQ3GPoXLlF2Qvk=; b=N3SNjOuoL+vWvBBlICwlIXdvm
	Bles32k/MTLtm5/eJkW0ZIy2nCLn945BXLSF6Slo8T6TAYS0rRk3Wcxvxcjp5XdlhSYDXKtgI32NT
	/L3jqGhxtPvaBQff/LSfGZKPUkSrUioCXcBlk1udoULcJtUp0Q5vukKxuyuky0NMlx7/vPFGYjdVv
	meiAY/aUfF+4MDPLFqJnua5IeY+5RuLKycOd1wBYVzMt7wkTOmgP4U+SmCY4WU03pPgNvYJKzaebp
	a8hMmWqFo1FulEwdfnWKSGYhgcbCdH2hZ335pt42XBFMDujugL2k9vSYrs+QX5w6FnXv9IcYjDrE3
	JBP1tJedg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPp8-0002kU-Ny; Sat, 25 Apr 2020 18:46:46 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPoz-0002iD-DZ
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:46:38 +0000
Received: by mail-wm1-x32a.google.com with SMTP id v4so12593063wme.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 11:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=4+xWL/IC0klXQdR9yJYEBs+QvthXdHe7eO/J5f5wXmU=;
 b=BNLAYA56t1i+EW2fSVaqiE55SMZY+7J4+F9ck+jNf7VFqmGCaxx+CnzVgFffM+9oDF
 6uI7+mO5F+t8p8lDiE2oN881rsqj1uGbP5MExRUJ+Ls9LUUtvLACwWy2DAUD2U1DKPsI
 JnVQxVwntOKGeGU/duDzCYqBdOJvYBthfSz1T7OzAA/uuwrnDbsABQm3p14Ki0ROjyAT
 Ftdz/N/jjYRx9ElkJCcGQ0eo50+rlIUJdy+cBn0XTrMX/KzwjCr5lLK3UvbU9nM9Yf4m
 IrYRShSwuYnm1nwMeYTtrBOnBpGAmDCo16aBhVX6tr9zVDduQqY12gm1s1eI04G2CXAW
 r1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4+xWL/IC0klXQdR9yJYEBs+QvthXdHe7eO/J5f5wXmU=;
 b=KX1F6a3fIX0a0uop4UWAQCF/a0Gt5hYU5dXCA85dl0dTyNV6aRJpPuYw9LHNwRmHB/
 akdIrTa+yF0dF0Qh4B9JxcTZWjomv6SznpQSUXzJb2oDt71fsji1u7Pr3K6cOezqNkMS
 tB7HDI3+U4GQd0JIGfiTQ591EoHnDm+6eWGP3spIIFrO9elC9ceIdgPJ5CNbykZCAeUE
 e0/wzYiR0QiW6Ksf/7bfUAWAPWRnIis09258K6Rp0ACu4X5HRTtpLy1VN5qeU8NzXSm3
 BzLXQ3KHwY90xpDe0NVO81zBU09qrkTYoovNZxaOVB57AI4aC7wp5wrxgnUA+ji6ius+
 qGAg==
X-Gm-Message-State: AGi0PuaaIxvqxeKN3tdHKW3b47Qmo5HZWYiqDJlRhlxcAW+OrPIuDFnB
 xs7rtlgBslX4wEu1GaFLXMsWKcRA
X-Google-Smtp-Source: APiQypIP2oBr8+VUEyVOKT/GWEOHCzeu1CTj2tg5lCR2mmsn/PJzil0QqnzJ0YkUn8pcRzhBgITH1A==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr18368296wmc.83.1587840394893; 
 Sat, 25 Apr 2020 11:46:34 -0700 (PDT)
Received: from [192.168.1.230] ([151.68.10.90])
 by smtp.gmail.com with ESMTPSA id s14sm8523049wme.33.2020.04.25.11.46.34
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 11:46:34 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
 <bd261d22-6ad4-a018-63c0-c2e5ad9b90de@gmail.com>
 <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
 <ebe5b5ca-67d4-a1f5-b5c6-756f99c1f5e3@gmail.com>
 <06e362cc-08be-6092-3286-ab1c23df1c31@lucabert.de>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <9607da97-c364-c33d-5d37-b537b03f362e@gmail.com>
Date: Sat, 25 Apr 2020 20:46:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <06e362cc-08be-6092-3286-ab1c23df1c31@lucabert.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_114637_462421_22FB8423 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
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



On 25/04/20 20:30, Luca Bertoncello wrote:
> Am 25.04.2020 um 20:27 schrieb Alberto Bursi:
> 
> Hi
> 
>> that's weird, that's 64MB. Maybe a V2 in an older box?
>> What is the CPU?
>> check cat /proc/cpuinfo
>> The V1 has Atheros AR9103.
> 
> root@OpenWrt:~# cat /proc/cpuinfo
> system type             : Atheros AR9132 rev 2
> machine                 : TP-LINK TL-WR1043ND
> processor               : 0
> cpu model               : MIPS 24Kc V7.4
> BogoMIPS                : 265.42
> wait instruction        : yes
> microsecond timers      : yes
> tlb_entries             : 16
> extra interrupt vector  : yes
> hardware watchpoint     : yes, count: 4, address/irw mask: [0x0ffc,
> 0x0ffc, 0x0ffb, 0x0ffb]
> isa                     : mips1 mips2 mips32r1 mips32r2
> ASEs implemented        : mips16
> shadow register sets    : 1
> kscratch registers      : 0
> package                 : 0
> core                    : 0
> VCED exceptions         : not available
> VCEI exceptions         : not available
> 
> It is definitivly NOT a AR9103...
> Any idea?
> 

Sorry I wrote the CPU name wrong. AR9132 is the right CPU for V1 so this 
is a weird V1.x where they added more RAM for some reason.
Afaik this CPU does support 64MB (it's the max for it), so it's possible.

Also AFAIK on this target the RAM size was autodetected, so that's why 
OpenWrt is detecting 64MB even if the device is supposed to have less.

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
