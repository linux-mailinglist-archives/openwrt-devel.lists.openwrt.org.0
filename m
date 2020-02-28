Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2226173DA8
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 17:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eERqqYfXg2ZJGmoMja/lIC0ScFUpbHp3Y/OkvDID5Sw=; b=lKBasxq+YYeuDm
	jKzYA01VwErZvaE/IsdVDAucv+0pABR4hawZwpHY0oZE0FN1bMUM9IXOGtvblQQyJ/Wl0D4bX30ni
	KoP7j6YMPdUM9Qc/i7lCJjnqqPvAqHErXG5+ESLjUL/+QalIKSBIRTsnh837HzQVZQ/9Y3eLxC+Zi
	iC1Rfvt3mFOIh7xqA1BFYtofpVrY+ScMSMVneRa/S0RwFjc3gUOXNGmpURYze/1ug7QX2fZNRtTOq
	8KuKbZGxIk0oT33ChSo7gkoTIkNMmtA1W+3rkvOiYuFWJXimUrFZqgxN6+RytYNZgh3uvwI47LtsA
	cgru0rHdToIH6761VNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iuR-0003Q1-Vm; Fri, 28 Feb 2020 16:54:44 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iuB-0003H2-A6
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 16:54:29 +0000
Received: by mail-wm1-x32d.google.com with SMTP id f15so3891598wml.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Feb 2020 08:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=nZ4siWHV40KiwJtV5j4sRtxVnsyTtEF3irqZ1VtE4qc=;
 b=FWJifsiF9u/5O2s6DtJOwTSV9xgu2JT0LhgbyYY5JJukFZ8OIwiA73SH9YxW7FeW6W
 bpvmpzor36b8IiUPvnmSwKVrd5Hvr0S70hxgZXU+LhQJoYjXZDaMflmCJNBBHeCa2m8H
 SBzBk6e5boTnTzf3wEyFrLEeuxlcgpOiQ9z082LYnIfmcKXpcV/29+ZdCtD92ej23tq9
 2BoBEtjEDLEpJR2R84DRezDqLLrtB+GoGtmg9khBcbjVU8kHCVVpMhOsuLs8ASqMhDLo
 yOoJW3sTdspib1WATZx5USeOj8+WbfSpyM3zuMvN0UaRKpSJtyR02pGtpoR+AfA1i/Z9
 8uSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=nZ4siWHV40KiwJtV5j4sRtxVnsyTtEF3irqZ1VtE4qc=;
 b=fUU3I5gN/yp8oWc1IxSMt+urkkhMqYmE6XoDrJ1uN7gvMBaC5kChAT07N9fCK7elAz
 5bdiBVzQcMLw/HgvrULrkpFNUWRu52URnc7DVCgNxoDCoBha2A5+zSdF5C0h/8c/unx5
 UDgDMwhx8eaXLShoyjqbPtjrXCGRzAIdvmXxdmDfMdqULZVyknlfj8Dk0OEIRBWsDI3M
 m2zupeHWukq7P9Zi3UZsyMVafkPoyX3aCWEXT4MPIDbzijoa/5qMUEeWBHwoRpCPKyCa
 dPjnnLLPk9quLLN2au0ewQkN84bEawO4nheeipOnK6ovnoFuYv27vKk8g7zXlrK3SS/h
 zyUw==
X-Gm-Message-State: APjAAAWjjUCo5lBEq8KcJD5KaeBwTIltGCNpnDj+U361fSsEjtcd1QiH
 DkPBgaC+cZUmGRVOv5M8jHVRtgjzgsQ=
X-Google-Smtp-Source: APXvYqy8GK77dLjUGiM3HF1jmAKFrxD4er+DEqKqQlp0Yo5hq3r/nGHY3zfC139Qplc89PkjyU2Wiw==
X-Received: by 2002:a1c:a789:: with SMTP id q131mr5804193wme.127.1582908864475; 
 Fri, 28 Feb 2020 08:54:24 -0800 (PST)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id g25sm18521877wmh.3.2020.02.28.08.54.23
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 08:54:24 -0800 (PST)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
Date: Fri, 28 Feb 2020 17:54:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_085427_389402_4FDF2B66 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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

Hi All,

After a lot of hard work from many people involved, I'm very pleased to 
announce
initial support for kernel 5.4 has been pushed to master with already a 
nice amount
of available targets.

If you are interested, feel free to test, send fixes or send patches for 
supporting 5.4 on other targets besides the ones mentioned below.

All supported targets have been provided with kernel 5.4 as the "Testing 
kernel".
This means you can enable 5.4 by selecting "Global --> use the testing 
kernel version" within menuconfig.


*Big fat warning*

While a ton of effort has been conducted, trying to prevent mayhem and 
fixing as many bugs as possible,
support for 5.4 is still considered to be experimental at this point 
until extended testing has been conducted.

If you would like to try it, please make sure you are able to debrick 
your device if required.
If you still try it without any way of debricking it, you are doing so 
*at your own risk*


Following targets are currently available and have been runtime tested:

- apm821xx
- ath79
- bcm53xx
- imx6
- ipq40xx
- mediatek
- mpc85xx
- x86_64

Completely untested but provided as a baseline:

- ipq807x


Following targets are near completion and should be added hopefully next 
week:

- cns3xxx
- octeontx


Kind Regards,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
