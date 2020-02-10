Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273F0157B20
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 14:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BxSGkuPCl5O2uO/ApBC5y14U/1vHfUC0zgLMlxIf7M0=; b=WWqe4gy0bheVRUssz8z0aG9JB
	0eOKxPu3idamM4u+c5Gp1/4nz6I4X/FHE5obpWWAFYrC7IQLNT3I+61t4JRBdLj2sC0gln9dN6jhq
	pNj7OQuSKrxR04YRBlqqDNX6siAzU0kCnrNmg5gAYFKiT02eP7qeVOLI/n2xGJC5mkn+RTuprdp0d
	VkUwHFvmtBbr9V01dHRHg7nV8fe5yiq+lLqhyLEy1LhgN6iWYwCIn9PyUUCNHhKp7YhDewkma6niT
	JFoI2Tm+DJNyL7rNXUyxkQ2CUTXsAk+zmR/FQZmdUm7IK82JMpqIyDogHkBKNacVgtUqG2k52ckO6
	4DkuN5FLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j196Z-0005pb-1N; Mon, 10 Feb 2020 13:28:03 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j196O-0005VJ-Kq
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 13:27:54 +0000
Received: by mail-lf1-x134.google.com with SMTP id c23so4189338lfi.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 05:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4Kdf4QbYiRvQqp9NoHn4eRNmnImfg93h/t4ytDS48L0=;
 b=qi+deXmey2mtbnYYsGgDMQfxvNezrxPwqfjDDEY+iYTpiGHp8m0WwLJCZ3YifDhGJu
 5mCdIA1ZimukfiM/PnXmG6M2j/ordUyp2xJHIpUGjtUDV+AYmLycQ8ZQXKvshMPJGx3I
 WpkBHLFq6eHzLpAUm9m5ThBXZJ/elBXNv3KPwwb5nSV4d6LXw4jTgi/LYzRAMi9sdjXh
 rPmV4fIzOj1zJ+vUz0xb3Iv2lV7hFkjuPT3ND0L+EwExAWlYo7hi2s/18H05hpfeIqE9
 x/XQhG8ZMZ1zCMyiLumFnLd/imwMeh0qXBy4kZtBLVSqyaSeBJGZUIVm2E3JPQJcE23r
 MbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4Kdf4QbYiRvQqp9NoHn4eRNmnImfg93h/t4ytDS48L0=;
 b=Mc/REc1AKj3/XZhJbku1QRcI3WyopLRJt3CkeeU3Q0Yewt9PUpGccW2FUpYcKO7i0L
 sv06Iv9OE3usbq83Q8iRnKlCVaKLPmDtoyp//b5LfV0sk3V6AaYLfpU1KzEmm3cqfpCr
 NLiUeMxzQ0M+cQ6ICVNNSPon78YkJWFE1NBXaAdHgMqa3xIXNcvD/Xzga8144GgarDWL
 OkFczKe7XmJnLFAJGUTGmafapPkrqjLF99hUFaFOBhWmKMfqRapoGPfAujueDJ1qUGBJ
 OZGUfdyP2sV4K4jyWLclRL4H1NBji96rYlmR7pHsBCX27Fq91VVFMvPqvUvcN+Zr1gAM
 tZlA==
X-Gm-Message-State: APjAAAUmvBFPMC1vJqToVU2PBVSp7fxDW5SXP3OSElkSXe2tqMwap/Yx
 EyVigoqiu1tZXL1qG7IZDbI=
X-Google-Smtp-Source: APXvYqzAvz/mSRNOARFD8UVbgKNJdkYfp+C2GPFCBRLhFQxZytggtonAGxNKC9kyqK8E4FwvFA2jJg==
X-Received: by 2002:ac2:43a7:: with SMTP id t7mr785301lfl.125.1581341268006;
 Mon, 10 Feb 2020 05:27:48 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id e8sm315611ljb.45.2020.02.10.05.27.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Feb 2020 05:27:46 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <8291035e-8bd4-c723-5ab7-7c42851f59ff@gmail.com>
Date: Mon, 10 Feb 2020 14:27:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_052752_712494_FDCBB4E2 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
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
Subject: Re: [OpenWrt-Devel] SPI 104 MHz on ar7240/Spansion S25FL032P
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 10.02.2020 12:25, Adrian Schmutzler wrote:
> Hi,
> 
> while reviewing the PR for the TL-WA830REv1 [1], I was wondered about the
> unusually high
> spi-max-frequency = <104000000>;
> 
> The author states it's running stable, the datasheet tells
> 
> Normal READ (Serial): 40-MHz clock rate
> FAST_READ (Serial): 104-MHz clock rate (maximum)
> DUAL I/O FAST_READ: 80-MHz clock rate or 20 MB/s effective data rate
> QUAD I/O FAST_READ: 80 MHz clock rate or 40 MB/s effective data rate
> 
> and according to the author, there are other boards with the same chip and this
> frequency, e.g.
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar9331_tpl
> ink_tl-mr3020-v1.dts#L123
> 
> So, can somebody lend me some expertise whether the value is okay?

The 'spi-max-frequency' property applies to the SPI slave node and the 
device it represents, thus if this flash IC can run with 104 MHz clock, 
then (according to the standard) it's correct (see also note: [0]).

But, a totally different story is:
- max. frequency of SPI clock for this platform
- real max. frequency on this particular PCB (it's serial, so length of 
traces, crosstalk and many other factors have to be considered)

Based only on formula from datasheet(s) [1], on ath79 WiSOCs SPI clock 
could go (in theory) up to ~100 MHz (with AHB bus clocked at 200 MHz).

I suppose if the spi_clk is set to the maximum possible value, it gets 
limited anyway by some 'internals' (hardware capabilities). For example, 
if you check 'SPI Timing' section in QCA9563 datasheet, you will see 
that min. SPI clock period is 40 ns which gives 25 MHz clock. On the 
other hand, in AR9331 min. period is 20 ns, so 50 MHz clock (based on my 
experience, running it with 35+ MHz always caused problems with data 
integrity on various boards).

Even more information on this subject gives QCA9531 v2 datasheet 
(minimum TDS for QCA9531 v2 is 11 ns):

"Actual SPI operating frequency is dependent on the CLK-to-SO flash 
delay and the CLK/MISO signals propagation delay in the board. The 
minimum SPI_CLK period is 2 * (TDS + (CK-to-SO flash delay) + (board 
propagation delay of CLK + board propagation delay of MISO signals)."

So, setting 104 MHz in DTS on that particular platform means the SPI 
flash will operate on max. hardware possible clock (which of course 
would never reach 104 MHz). Is this safe for that board? I don't know 
and I don't know how fast SPI clock can actually run on AR7240.

[0] 104 MHz applies for all single SPI mode instructions excluding 
'normal READ' (opcode 0x3) thus in this case, this value can be set only 
together with 'm25p,fast-read' property. Otherwise, according to SPI 
flash IC datasheet, it should be set to 40 MHz.

[1] spi_clk = ahb_clk/((clk_div + 1) * 2), where clk_div >= 0 and <= 63.

-- 
Cheers,
Piotr

> 
> Best
> 
> Adrian Schmutzler
> 
> [1] https://github.com/openwrt/openwrt/pull/2752#discussion_r375829096
> 
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
