Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7149114DA3F
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 12:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B5cRH70KRzije64tnUw55JGFC2TI+PnRZNw6OOjBNDU=; b=tyMwdEbKLbnkltdm/MaPfJ9qH
	98hxKltBP7nXEylQ5u3GNdNMraWI+66vlancZNLXWk1IXwuc3Mo/s4Zsc0Ji+msnxswfNVip6ugZA
	ePACjfjlr4EJWfo5WzrXd4y0wonpRs6xpnPE76A3cyGHw4fwt2yPjVS8g1uXX/go9o8GHPEXkuAxJ
	4GazFHrWyd4+UI6tcRAYV4AmiSJSyQp/0l/JF485wW2i6BvDVPNrNug29R2QOT0VEHweKtEIuW63R
	GZImYR3MPqTwX+7wNCkW3wlgeuT1qvS6Rq1mF/XlDp1XxIoVWlOEkdTsqafewKmFdFp7MUpu/2Kln
	Xs8mO943Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix8SR-0007qA-3n; Thu, 30 Jan 2020 11:58:03 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix8SE-0007o3-O2
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 11:57:52 +0000
Received: by mail-lj1-x236.google.com with SMTP id w1so3027266ljh.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 30 Jan 2020 03:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eeKDSZtmfPgn4lTt5RMO+dwHQvbolYvZ5yysKOuKxeE=;
 b=sj5GqHGifF9BWSLAxKXIV5srK4kwcOmZTz+gaM8AGNahGVgxrPXXrqf0V4k8jWZMy3
 T8KBDK9mFw6MCECxIsV1r+IR9b068nOIHJB5Ol7QUbp1QjCq4Z9etRe8sk1D/bwou1mr
 +9Rg2PSE7gpv4XsNgxHgFlvOpdEg/xhwWyqwKq02vevrJ0dgO7i5mfWMOENMaL8x1qIA
 bEIGPrDLQisnXVDVbD1CzpsypvjY97Q2pyMKG8njj/JHvpbwTFrvGAqck67Bd1G4l+Ar
 W8unzoZiddkM7JMHTfEFfPWiq6SGNk0sz0GTu3tL8qB1pHkLG8oPm7hwRHE3hKwpAhB0
 lfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eeKDSZtmfPgn4lTt5RMO+dwHQvbolYvZ5yysKOuKxeE=;
 b=fSR9Nw30t4XZhUlJHtQyIi8Y66FyrhqJdB4L0n0Z9GNp46YSREfj6cyTPzSYIXSPsy
 93VDHmT7gtLyh6jIBhwCZ4KVpFiQS3Mud73AQ7yfOS5BZE2XL1KkyO3hFUmHdRwHuvtQ
 t/IKFL4x61UXGxynkmhX4fZbdlAO2O+jZxPDJ3+bO8+Zr5xRGDPt+Bc+LQA6iSOADOw+
 XkH4L8Hjjdkq/v5FUMnw+bJBlFKdBNS6GTJvYkDFG28fWT/OiXLcS7zH/ksaMkCyNjKd
 j3iYNSK14U0tLw5uWKmmB1ipfBZXvgRIHzx5NYgIfiNmRFBfxwHUnxIppehedqgcH/rx
 oFRg==
X-Gm-Message-State: APjAAAUzitvVd7LtoeSdhqfy5reMjGGOSz+7MFkfDjSKfOux/ZedeVJ1
 JnXnf3nqOuV73uwmMXW9CG0=
X-Google-Smtp-Source: APXvYqyWGfaKUcSWctC2x5Ge6MdrUR06WxEr6qB2K2+sn1hvSl5k66YfB8iIt7XZeG7JKYtxmr/ZUg==
X-Received: by 2002:a2e:a37c:: with SMTP id i28mr2553607ljn.118.1580385468674; 
 Thu, 30 Jan 2020 03:57:48 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id h10sm2730235ljc.39.2020.01.30.03.57.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jan 2020 03:57:47 -0800 (PST)
To: David Bauer <mail@david-bauer.net>
References: <ff0f9266-0fa9-1bf5-66f3-dfd76699a136@david-bauer.net>
 <003401d5d6ab$fd4532e0$f7cf98a0$@adrianschmutzler.de>
 <9c9d3030-6cf1-3107-3de0-9adb920e75d0@david-bauer.net>
 <cb333805-1ef0-dcb5-7345-d4e2325c7118@david-bauer.net>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <07a233ae-5c76-8319-1b1b-9dde65f23ef0@gmail.com>
Date: Thu, 30 Jan 2020 12:57:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <cb333805-1ef0-dcb5-7345-d4e2325c7118@david-bauer.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_035750_820657_8B697DEA 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Netgear R6260 EEPROM location
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
Cc: achterin@googlemail.com, drvlabo@gmail.com,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Robert <piotr_pan@o2.pl>,
 Mathias Kresin <dev@kresin.me>,
 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,

On 30.01.2020 12:36, David Bauer wrote:
> Hello again,

[...]

>> So I'm waiting on feedback from other owners of these boards and using this
>> (more or less) strange fix in the meantime.
> 
> Robert complained in the meantime, that my fix broke his R6260. He also sent me
> the partition map of the stock firmware and it differs from mine (see below).

[...]

> I'm still waiting for him to send ma a photo of the routers backside, but it seems
> we have to dynamically detect the partition map of the devices. I'll look into the
> SC_PART_MAP partition and the routers GPL code to find a possible solution for this
> problem.

There was some work with custom 'SC_PART_MAP' mtd parser back in 2018 
but mapping used in vendor firmware didn't match what was in flash, see: 
[0] and also [1] about 'different' R6220 models.

Added also Mathias and Chuanhong to the loop.

[0] https://github.com/openwrt/openwrt/pull/1318#issuecomment-419628452
[1] https://github.com/openwrt/openwrt/pull/1304

-- 
Cheers,
Piotr

> 
> In the meantime, I'll revert my "fix" to not break existing boards.
> 
> For the record: I assume this bug has nothing to do with the partition shifting
> seen on the R6220, as the offending "feature" of the mtknand driver was disabled
> in the meantime (and the partition map differs in the stock firmware). [0]
> 
> [0] https://github.com/openwrt/openwrt/pull/1304
> 
> Best wishes
> David
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
